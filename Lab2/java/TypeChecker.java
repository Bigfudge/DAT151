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
        public LinkedList<HashMap<String,Type>> contexts ;
        
        public Env(){
            signature = new HashMap<>();
            contexts = new LinkedList<>();
        }
        
        public Type lookupVar(String id) {
            for(HashMap<String,Type> context : contexts) {
                Type storedValue = context.get(id);
                if(storedValue != null) {
                    return storedValue;
                }
            }
            throw new TypeException("The variable " + id + " is not defined");
        } 
        
        public TypeCode lookupFun(String id) {
            Sigma storedFunction = signature.get(id);
            if(storedFunction != null) {
                return storedFunction.returnType;
            }
            throw new TypeException("The function " + id + " is not defined.");
        }
        
        public void putFun (String id, Sigma functionDef){
            if (signature.get(id) != null) {
                throw new TypeException ("The function " +id+ " is already defined.");
            }
            signature.put(id, functionDef);
        }
        
        public void updateVar(String id, Type ty) { ;
            for(HashMap<String,Type> context : contexts) {
                Type storedValue = context.get(id);
                if (storedValue != null) {
                    context.put(id, ty);
                    break;
                }
            }
            throw new TypeException ("The variable " + id + " does not exist");
        }
        
        public void putVar(String id, Type ty) {
            HashMap<String,Type> context = contexts.peek();
            if (context.get(id) != null) {
                throw new TypeException("The variable " + id + " is already defined.");
            }
            context.put(id, ty);
        }
        
        public void newScope() {
            HashMap<String,Type> context = new HashMap<>();
            contexts.addFirst(context);
        }
    }
    
    
    public void typecheck(Program p) {
        Env env = new Env();
        env.newScope();
        
        //Add built-in functions, fix without symbolTable
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
        
        //Building the symbol table.
        for (Def def : listOfDefs) {
            def.accept(new SetupSymbolTable(), env);
        }
        
        //Typechecking by using the symbol table.
        for(Def def : listOfDefs) {
            def.accept(new CheckTypes(), env);
        }
    //throw new TypeException("Not yet a typechecker");



    }
    //Why do we need this?

    private class CheckTypes implements Def.Visitor<Env, Env> {
        public Env visit (DFun fun, Env env) {
            Type functionType = fun.type_;
            String functionName = fun.id_;
            ListArg functionArgs = fun.listarg_;
            ListStm functionStms = fun.liststm_;
            for (Stm statement : functionStms) {
                checkStm(statement, env);
            }
            return env;
        }
    }
    
    private class SetupSymbolTable implements Def.Visitor<Env,Env> {
        public Env visit(DFun fun, Env env) {
            Type functionType = fun.type_;
            String functionName = fun.id_;
            ListArg functionArgs = fun.listarg_;
            ListStm functionStms = fun.liststm_;
            Sigma function = new Sigma(functionArgs, typeCode(functionType));
            env.signature.put(functionName, function);
            HashMap<String,Type> context = env.contexts.peek();
            context.put(functionName, functionType);
            return env;   
        }
    }
    
    
    
    
    
    private void checkStm (Stm st , Env ev){
        st.accept(new CheckStm() , ev);
    }
    
    private class CheckStm implements Stm.Visitor<Env,Env>{
       
       public Env visit(SDecls p, Env env) {
            Type declType = p.type_;
            LinkedList<String> declIds = p.listid_;
            for (String declId : declIds) {
                env.putVar(declId, declType);
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
            TypeCode type = typeCode(inferExp(p.exp_, env));
            if (type != TypeCode.CBool) {
                throw new TypeException("IfElse block has wrong type.");
            }
            checkStm(s1, env);
            checkStm(s2, env);
            return env;
        }
        public Env visit(SBlock p, Env env) {
            ListStm statements = p.liststm_;
            for (Stm statement : statements) {
                checkStm(statement, env);
            }
            return env;
        }
        public Env visit(SInit p, Env env) {
            //type_, id_, exp_
            TypeCode expType = typeCode(inferExp(p.exp_, env));
            if (typeCode(p.type_) != expType) {
                throw new TypeException("Wrong type at initialization.");
            }
            env.putVar(p.id_, p.type_);
            return env;
        }
        public Env visit(SReturn p, Env env) {
            TypeCode returnType = typeCode(inferExp(p.exp_, env));
            HashMap<String,Type> context = env.contexts.peek();
            if (typeCode(context.get("return")) != returnType) {
                throw new TypeException("Reteurn type does not match.");
            }
            
            return env;
        }
        public Env visit(SWhile p , Env env) {
            //exp_, stm_
            TypeCode expType = typeCode(inferExp(p.exp_, env));
                if(expType != TypeCode.CBool) {
                    throw new TypeException("Statement in while loop must have type boolean.");
                }
                checkStm(p.stm_, env);
            return env;
        }
        
        
    }
    
    private Type inferExp (Exp exp, Env env) {
        return exp.accept(new InferExp(), env);
    }
    
    
    private class InferExp implements Exp.Visitor<Type,Env> {
       
       public Type visit(EInt p, Env env) {
            return new Type_int();
            
        }
        
        public Type visit(EPlus p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == TypeCode.CInt && typeCode(t2) == TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(t1) == TypeCode.CDouble && typeCode(t2) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to add two unmatching types.");
            
        }
        public Type visit(EAnd p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == TypeCode.CBool && typeCode(t2) == TypeCode.CBool) {
                return new Type_bool();
            }
            else throw new TypeException("Exception.");
        }
        public Type visit(EApp p, Env env) {
            ListExp listExp = p.listexp_;
            for(Exp exp : listExp) {
                inferExp(exp, env);
            }
            return env.contexts.peek().get(p.id_);
            
        }
        public Type visit(EAss p, Env env) {
            String name = p.id_;
            Type assignedType = p.exp_.accept(this, env);
            env.contexts.peek().put(name, assignedType);
            return assignedType;
        }
        public Type visit(EDiv p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == TypeCode.CInt && typeCode(t2) == TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(t1) == TypeCode.CDouble && typeCode(t2) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to divide two unmatching types.");
        }
        
        public Type visit(EDouble p, Env env) {
            return new Type_double();
        }
        
        public Type visit(EEq p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == TypeCode.CInt && typeCode(t2) ==    TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(t1) == TypeCode.CDouble && typeCode(t2) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to equal two unmatching types.");
        }
        public Type visit(EFalse p, Env env) {
            return new Type_bool();
        }
        public Type visit(EGt p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == typeCode(t2)) {
                return t1;
            }
            else throw new TypeException("Trying to commpare two elements of unmatching types.");
        }
        
        public Type visit(EGtEq p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == typeCode(t2)) {
                return t1;
            }
            else throw new TypeException("Trying to commpare two elements of unmatching types.");
        }
        public Type visit(EId p, Env env) {
            return env.lookupVar(p.id_);
        }
        public Type visit(ELt p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == typeCode(t2)) {
                return t1;
            }
            else throw new TypeException("Trying to commpare two elements of unmatching types.");
        }
        public Type visit(ELtEq p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == typeCode(t2)) {
                return t1;
            }
            else throw new TypeException("Trying to commpare two elements of unmatching types.");
        }
        public Type visit(EMinus p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == TypeCode.CInt && typeCode(t2) == TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(t1) == TypeCode.CDouble && typeCode(t2) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to subtract two unmatching types.");
        }
        public Type visit(ENEq p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == typeCode(t2)) {
                return t1;
            }
            else throw new TypeException("Trying to commpare two elements of unmatching types.");
        }
        public Type visit(EOr p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == TypeCode.CBool && typeCode(t2) == TypeCode.CBool) {
                return new Type_bool();
            }
            else throw new TypeException("Exception.");
        }
        public Type visit(EPostDecr p, Env env) {
            String name = p.id_;
            Type type = env.contexts.peek().get(name);
            if (typeCode(type) == TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(type) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to decrement something that is not int or double.");
        }
        public Type visit(EPostIncr p, Env env) {
              String name = p.id_;
            Type type = env.contexts.peek().get(name);
            if (typeCode(type) == TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(type) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to increment something that is not int or double.");
        }
        public Type visit(EPreDecr p, Env env) {
              String name = p.id_;
            Type type = env.contexts.peek().get(name);
            if (typeCode(type) == TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(type) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to decrement something that is not int or double.");
        }
        public Type visit(EPreIncr p, Env env) {
              String name = p.id_;
            Type type = env.contexts.peek().get(name);
            if (typeCode(type) == TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(type) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to increment something that is not int or double.");
        }
        public Type visit(ETimes p, Env env) {
            Type t1 = p.exp_1.accept(this, env);
            Type t2 = p.exp_2.accept(this, env);
            if (typeCode(t1) == TypeCode.CInt && typeCode(t2) == TypeCode.CInt) {
                return new Type_int();
            }
            else if (typeCode(t1) == TypeCode.CDouble && typeCode(t2) == TypeCode.CDouble) {
                return new Type_double();
            }
            else throw new TypeException("Trying to multiply two unmatching types.");
        }
        public Type visit(ETrue p, Env env) {
            return new Type_bool();
        }
        
        // ... inferring types of different expressions
    }
    
    
}
