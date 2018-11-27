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
    }
    
    public TypeCode typeCode(Type type) {
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
    
    
    public class Env {
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
    
    //Detta ska bort
    public HashMap<String,Sigma> symbolTable = new HashMap<String,Sigma>();

    public void typecheck(Program p) {
        Env env = new Env();
        //PrettyPrinter pp = new PrettyPrinter();
        PDefs defs = (PDefs)p;
        ListDef listOfDefs = defs.listdef_;
        
        for (Def def : listOfDefs) {
            Sigma tempFunc = new Sigma();
            DFun definedF = (DFun) def;
            //tempFunc.arguments = definedF.listarg_;
            //tempFunc.returnType = TypeCode(definedF.type_);
            //env.putFun(definedF.id_, tempFunc);
        }
        
        
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
        
        symbolTable.put("printInt", printInt);
        symbolTable.put("printDouble", printDbl);
        symbolTable.put("readInt", readInt);
        symbolTable.put("readDouble", readDbl);
        
        
    System.out.println(symbolTable);
    throw new TypeException("Not yet a typechecker");



    }
    //Why do we need this?
      private void checkStm (Stm st , Env ev)
    {
        st.accept(new CheckStm() , ev);
    }
    
    public class CheckStm implements Stm.Visitor<Env,Env>{
       
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
            //This method should be here.
            return env;
        }
        public Env visit(SBlock p, Env env) {
            //This method should be here.
            return env;
        }
        public Env visit(SInit p, Env env) {
            //This method should be here.
            return env;
        }
        public Env visit(SReturn p, Env env) {
            //This method should be here.
            return env;
        }
        public Env visit(SWhile p , Env env) {
            //This method should be here.
            return env;
        }
        
        
    }
    
    private void inferExp (Exp exp, Env env) {
        exp.accept(new InferExp(), env);
    }
    
    
    public class InferExp implements Exp.Visitor<Type,Env> {
       
       public Type visit(EInt p, Env env) {
            Type t1 = p.accept(this, env);
            if (typeCode(t1) == TypeCode.CInt){
                return t1;
            }
            else throw new TypeException("Something is declared as an int but is not");
            
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
        return null;
        }
        public Type visit(EAss p, Env env) {
        return null;
        }
        public Type visit(EDiv p, Env env) {
        return null;
        }
        public Type visit(EDouble p, Env env) {
            Type t1 = p.accept(this, env);
            if (typeCode(t1) == TypeCode.CDouble){
                return t1;
            }
            else throw new TypeException("Something is declared as a double but is not");
         
        }
        public Type visit(EEq p, Env env) {
        return null;
        }
        public Type visit(EFalse p, Env env) {
        return null;
        }
        public Type visit(EGt p, Env env) {
        return null;
        }
        public Type visit(EGtEq p, Env env) {
        return null;
        }
        public Type visit(EId p, Env env) {
            return env.lookupVar(p.id_);
        }
        public Type visit(ELt p, Env env) {
        return null;
        }
        public Type visit(ELtEq p, Env env) {
        return null;
        }
        public Type visit(EMinus p, Env env) {
        return null;
        }
        public Type visit(ENEq p, Env env) {
        return null;
        }
        public Type visit(EOr p, Env env) {
        return null;
        }
        public Type visit(EPostDecr p, Env env) {
        return null;
        }
        public Type visit(EPostIncr p, Env env) {
        return null;
        }
        public Type visit(EPreDecr p, Env env) {
        return null;
        }
        public Type visit(EPreIncr p, Env env) {
        return null;
        }
        public Type visit(ETimes p, Env env) {
        return null;
        }
        public Type visit(ETrue p, Env env) {
        return null;
        }
        
        // ... inferring types of different expressions
    }
    
    
}
