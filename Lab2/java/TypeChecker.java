import CPP.Absyn.*;
import java.util.*;
//import CPP.PrettyPrinter;

public class TypeChecker {
    public static enum TypeCode { CInt, CDouble, CBool, CVoid } ;
    public static class Sigma{
        public LinkedList<TypeCode> arguments;
        public TypeCode returnType;

    }
    public static class Env {
        public HashMap<String,Sigma> signature ;
        public static LinkedList<HashMap<String,Type>> contexts ;
        public static Type lookupVar(String id) {
            for(HashMap<String,Type> context : contexts) {
                Type storedValue = context.get(id);
                if(storedValue != null) {
                    return storedValue;
                }
            }
            throw new TypeException("The variable " + id + " is not defined");
        } ;
        public static TypeCode lookupFun(String id) {
            //Test
            //Also fett oklart vad som ska ske har
            return TypeCode.CInt;
        } ;
        public static void updateVar (String id, Type ty) {} ;
        // ...
    }
        
    public HashMap<String,Sigma> symbolTable = new HashMap<String,Sigma>();

    public void typecheck(Program p) {
        //PrettyPrinter pp = new PrettyPrinter();
        PDefs defs = (PDefs)p;
        ListDef listOfDefs = defs.listdef_;

        //Add built-in fnctions
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
        
//        for (Def def : listOfDefs) {
//            DFun function = (DFun)def;
//            symbolTable.put(function.id_, new Sigma(function.listarg_, function.type_));
//            CheckFuncion(function);

//        }
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
            //This method should be here.
            return env;
        }
        public Env visit(SExp p, Env env) {
            //This method should be here.
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
    
    
}
