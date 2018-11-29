import CPP.Absyn.*;
import java.util.*;
//import CPP.PrettyPrinter;

public class TypeChecker {
    public static enum TypeCode { CInt, CDouble, CBool, CVoid } ;
    //Maybe types and not typecodes?
    public static class Sigma{
        public LinkedList<TypeCode> arguments;
        public TypeCode returnType;

        public Sigma(){
            arguments = new LinkedList<>();
        }
        public Sigma(ListArg a, TypeCode t){
            LinkedList<TypeCode> tempList = new LinkedList<>();
            for (Arg arg : a) {
                ADecl tempDecl = (ADecl)arg;
                tempList.add(typeCode(tempDecl.type_));
            }
            arguments = tempList;
            returnType = t;
        }

    }
    //Should be rewritten with visitors.
    public static TypeCode typeCode(Type type) {
        if(type instanceof Type_bool) {
            return TypeCode.CBool;
        }
        else if(type instanceof Type_int) {
            return TypeCode.CInt;
        }
        else if(type instanceof Type_double) {
            return TypeCode.CDouble;
        }
        else if(type instanceof Type_void) {
            return TypeCode.CVoid;
        }
        else throw new TypeException("That type does not exist");

    }


    private class Env {
        public HashMap<String,Sigma> signature ;
        public LinkedList<HashMap<String,TypeCode>> contexts ;
        public boolean returnExist;

        public Env(){
            signature = new HashMap<>();
            contexts = new LinkedList<>();
        }

        //Returns Type with id if it exist in any constext, otherwise Exception
        public TypeCode getVar(String id) {
            for(HashMap<String,TypeCode> context : contexts) {
                TypeCode storedValue = context.get(id);
                if(storedValue != null) {
                    return storedValue;
                }
            }
            throw new TypeException("The variable " + id + " is not defined");
        }

        //Updates variable id with type ty. Throws exception if id does not exist.
        public void updateVar(String id, TypeCode ty) { ;
            for(HashMap<String,TypeCode> context : contexts) {
                TypeCode storedValue = context.get(id);
                if (storedValue != null) {
                    context.put(id, ty);
                    break;
                }
            }
            throw new TypeException ("The variable " + id + " does not exist");
        }

        //Adds variable to current context. Throws exception if already defined
        public void addVar(String id, TypeCode ty) {
            HashMap<String,TypeCode> context = contexts.peek();
            if (context.get(id) != null) {
                throw new TypeException("The variable " + id + " is already defined.");
            }
            if(ty == TypeCode.CVoid && id != "returnType")
                throw new TypeException("Invalid type void");
            context.put(id, ty);
        }
        //Returns TypeCode of function id if it exist in signature, otherwise Exception
        public TypeCode getFun(String id) {
            Sigma storedFunction = signature.get(id);
            if(storedFunction != null) {
                return storedFunction.returnType;
            }
            throw new TypeException("The function " + id + " is not defined.");
        }

        //Adds function to signatures if id does not already exist, otherwise Exception
        public void addFun (String id, Sigma functionDef){
            if (signature.get(id) != null) {
                throw new TypeException ("The function " +id+ " is already defined.");
            }
            signature.put(id, functionDef);
        }

        //Adds new scope
        public void newScope() {
            HashMap<String,TypeCode> context = new HashMap<>();
            contexts.addFirst(context);
        }

        //Removes latest scope
        public void deleteScope() {
            contexts.removeFirst();
        }

        //Checks main declaration, throws exception if faulty
        public void checkMain(DFun main){
            if (typeCode(main.type_) != TypeCode.CInt || main.listarg_.size() != 0)
                throw new TypeException("Error in main-function declaration");
        }
    }


    public void typecheck(Program p) {
        Env env = new Env();
        env.newScope();

        //Add built-in functions
        Sigma printInt = new Sigma();
        printInt.arguments = new LinkedList<TypeCode>();
        printInt.returnType = TypeCode.CVoid;

        Sigma printDbl = new Sigma();
        printDbl.arguments = new LinkedList<TypeCode>();
        printDbl.returnType = TypeCode.CVoid;

        Sigma readInt = new Sigma();
        readInt.arguments = new LinkedList<TypeCode>();
        readInt.returnType = TypeCode.CInt;

        Sigma readDbl = new Sigma();
        readDbl.arguments = new LinkedList<TypeCode>();
        readDbl.returnType = TypeCode.CDouble;

        env.signature.put("printInt", printInt);
        env.signature.put("printDouble", printDbl);
        env.signature.put("readInt", readInt);
        env.signature.put("readDouble", readDbl);



        PDefs defs = (PDefs)p;
        ListDef listOfDefs = defs.listdef_;

        //Checks if program is empty
        if (listOfDefs.size() == 0) {
            throw new TypeException("Program empty");
        }

        //Building the symbol table.
        for (Def def : listOfDefs) {
            def.accept(new SetupSymbolTable(), env);
        }

        //Typechecking by using the symbol table.
        for(Def def : listOfDefs) {
            def.accept(new CheckTypes(), env);
        }
    }

    private class SetupSymbolTable implements Def.Visitor<Env,Env> {
        public Env visit(DFun fun, Env env) {

            Sigma function = new Sigma(fun.listarg_, typeCode(fun.type_));
            env.addFun(fun.id_, function);
            //HashMap<String,TypeCode> context = env.contexts.peek();
            return env;
        }
    }

    private class CheckTypes implements Def.Visitor<Env, Env> {
        public Env visit (DFun fun, Env env) {
            env.newScope();
            Type functionType = fun.type_;
            String functionName = fun.id_;
            ListArg functionArgs = fun.listarg_;
            ListStm functionStms = fun.liststm_;

            //Checks the deklaration of main
            if(functionName == "main")
                env.checkMain(fun);

            //Adds the returnType to the context in order to typecheck
            // a potential 'return'-statement
            env.addVar("returnType",typeCode(fun.type_));

            //Adds the arguments to the current context
            for(Arg argument: functionArgs){
                ADecl argDecl = (ADecl)argument;
                env.addVar(argDecl.id_, typeCode(argDecl.type_));
            }

            //Checks all statement in the function
            for (Stm statement : functionStms) {
                checkStm(statement, env);
            }

            env.deleteScope();

            return env;
        }
    }


    private void checkStm (Stm st , Env ev){
        st.accept(new CheckStm() , ev);

    }

    private class CheckStm implements Stm.Visitor<Env,Env>{

       public Env visit(SDecls p, Env env) {
            TypeCode type = typeCode(p.type_);
            LinkedList<String> ids = p.listid_;
            for (String id : ids) {
                env.addVar(id, type);
            }

            return env;
        }

        public Env visit(SExp p, Env env) {
            Exp exp = p.exp_;
            inferExp(exp, env);
            return env;
        }

        public Env visit(SIfElse p, Env env) {
            Stm s1 = p.stm_1;
            Stm s2 = p.stm_2;
            TypeCode type = inferExp(p.exp_, env);
            if (type != TypeCode.CBool)
                throw new TypeException("SIfElse: Expression is not bool");
            env.newScope();
            checkStm(s1, env);
            env.deleteScope();
            env.newScope();
            checkStm(s2, env);
            env.deleteScope();
            return env;
        }

        public Env visit(SBlock p, Env env) {
            env.newScope();
            ListStm statements = p.liststm_;
            for (Stm statement : statements) {
                checkStm(statement, env);
            }
            env.deleteScope();
            return env;
        }

        public Env visit(SInit p, Env env) {
            TypeCode expType = inferExp(p.exp_, env);
            if (typeCode(p.type_) != expType)
                throw new TypeException("SInit: Types do not match");

            env.addVar(p.id_, typeCode(p.type_));
            return env;
        }

        public Env visit(SReturn p, Env env) {
            TypeCode returnType = inferExp(p.exp_, env);
            if (env.getVar("returnType") != returnType)
                throw new TypeException("SReturn: Types does not match.");

            return env;
        }

        public Env visit(SWhile p , Env env) {
            TypeCode expType = inferExp(p.exp_, env);
            if(expType != TypeCode.CBool)
                throw new TypeException("SWhile: Expression is not bool.");

            env.newScope();
            checkStm(p.stm_, env);
            env.deleteScope();
            return env;
        }
    }

    private TypeCode inferExp (Exp exp, Env env) {
        return exp.accept(new InferExp(), env);
    }

    private class InferExp implements Exp.Visitor<TypeCode,Env> {

       public TypeCode visit(EInt p, Env env) {
            return TypeCode.CInt;
        }

        public TypeCode visit(EDouble p, Env env) {
            return TypeCode.CDouble;
        }

        public TypeCode visit(EFalse p, Env env) {
            return TypeCode.CBool;
        }

        public TypeCode visit(EId p, Env env) {
            return env.getVar(p.id_);
        }

        public TypeCode visit(ETrue p, Env env) {
            return TypeCode.CBool;
        }

        public TypeCode visit(EPlus p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2 && (t1 == TypeCode.CInt || t1 == TypeCode.CDouble)) {
                return t1;
            }
            throw new TypeException("EPlus: Wrong types");
        }

        public TypeCode visit(EAnd p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == TypeCode.CBool && t2 == TypeCode.CBool) {
                return t1;
            }
            throw new TypeException("EAnd: Both expression is not bool");
        }

        public TypeCode visit(EApp p, Env env) {
            ListExp listExp = p.listexp_;
            Sigma function = env.signature.get(p.id_);
            if(function==null)
                throw new TypeException("EApp: Function did not exist");

            if (function.arguments.size() != listExp.size())
                throw new TypeException("EApp: Number of arguments do not match");

            for (int i =0; i<listExp.size(); i++) {
                Exp e = listExp.get(i);
                TypeCode t1 = inferExp(e,env);
                TypeCode t2 = function.arguments.get(i);
                if (t1 != t2) {
                    throw new TypeException("EApp: Types of arguments do not match");
                }
            }
            return env.getFun(p.id_);
        }

        public TypeCode visit(EAss p, Env env) {
            String name = p.id_;
            TypeCode t1 = p.exp_.accept(this, env);
            TypeCode t2 = env.getVar(name);
            if (t1 != t2) {
                throw new TypeException("EAss: Types do not match");
            }
            env.addVar(name, t1);

            return t1;
        }

        public TypeCode visit(EDiv p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2 && (t1 == TypeCode.CInt || t1 == TypeCode.CDouble)) {
                return t1;
            }
            throw new TypeException("EDiv: Types do not match.");
        }

        public TypeCode visit(EEq p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2 && (t1 == TypeCode.CInt || t1 ==TypeCode.CDouble)) {
                return t1;
            }
            throw new TypeException("EEq: Types do not match.");
        }

        public TypeCode visit(EGt p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2 && (t1 == TypeCode.CInt || t1 ==TypeCode.CDouble)) {
                return t1;
            }
            throw new TypeException("EGt: Types do not match.");
        }

        public TypeCode visit(EGtEq p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2 && (t1 == TypeCode.CInt || t1 ==TypeCode.CDouble)) {
                return t1;
            }
            throw new TypeException("EGtEq: Types do not match.");
        }

        public TypeCode visit(ELt p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2 && (t1 == TypeCode.CInt || t1 ==TypeCode.CDouble)) {
                return t1;
            }
            throw new TypeException("ELt: Types do not match.");
        }

        public TypeCode visit(ELtEq p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2) {
                return t1;
            }
            throw new TypeException("ELtEq: Types do not match.");
        }

        public TypeCode visit(EMinus p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2 &&( t1==TypeCode.CInt || t1 == TypeCode.CDouble)) {
                return t1;
            }
            throw new TypeException("EMinus: Types do not match.");
        }

        public TypeCode visit(ENEq p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2) {
                return t1;
            }
            throw new TypeException("ENEq: Types do not match.");
        }

        public TypeCode visit(EOr p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == TypeCode.CBool && t2 == TypeCode.CBool) {
                return t1;
            }
            throw new TypeException("EOr: Types not bool");
        }

        public TypeCode visit(EPostDecr p, Env env) {
            String name = p.id_;
            TypeCode type = env.contexts.peek().get(name);
            if (type == TypeCode.CInt || type == TypeCode.CDouble) {
                return type;
            }
            throw new TypeException("EPostDecr: Type not int or double");
        }

        public TypeCode visit(EPostIncr p, Env env) {
            String name = p.id_;
            TypeCode type = env.contexts.peek().get(name);
            if (type == TypeCode.CInt || type == TypeCode.CDouble) {
                return type;
            }
            throw new TypeException("EPostIncr: Type not int or double");
        }

        public TypeCode visit(EPreDecr p, Env env) {
            String name = p.id_;
            TypeCode type = env.contexts.peek().get(name);
            if (type == TypeCode.CInt || type == TypeCode.CDouble) {
                return type;
            }
            throw new TypeException("EPreDecr: Type not int or double");
        }

        public TypeCode visit(EPreIncr p, Env env) {
            String name = p.id_;
            TypeCode type = env.contexts.peek().get(name);
            if (type == TypeCode.CInt || type == TypeCode.CDouble) {
                return type;
            }
            throw new TypeException("EPreIncr: Type not int or double");
        }

        public TypeCode visit(ETimes p, Env env) {
            TypeCode t1 = p.exp_1.accept(this, env);
            TypeCode t2 = p.exp_2.accept(this, env);
            if (t1 == t2 && (t1== TypeCode.CInt || t1 == TypeCode.CDouble)) {
                return t1;
            }
            throw new TypeException("ETimes: Types do not match");
        }
    }
}
