import CPP.Absyn.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Iterator;
import java.util.Set;

public class TypeChecker {
        public class Sigma{
            private AType[] arguments;
            private AType returnType;
            public AType[] getArgs(){
                return arguments;
            }
            public AType getReturnType(){
                return returnType;
            }
            public Sigma(ListArg args, Type type){
                arguments = new AType[args.length];
                for (int i =0; i<args.length; i++){
                    arguments[i] = setType(args[i]);
                }
                returnType=setType(type);
            }

        }
        public enum AType{INT,DOUBLE, BOOL, VOID; };
        public HashMap<String,Sigma> symbolTable = new HashMap<String,Sigma>();

        public AType setType(Type type){
            if (type instanceof Type_int)  return AType.INT;
            else if(type instanceof Type_double) return AType.DOUBLE;
            else if(type instanceof Type_bool) return AType.BOOL;
            else if(type instanceof Type_void) return AType.VOID;
            else throw new TypeException("Not yet a typechecker");

            }


        public void typecheck(Program p) {

        PDefs defs = (PDefs)p;
        ListDef listOfDefs = defs.listdef_;

        for (Def def : listOfDefs) {
            DFun function = (DFun)def;

            symbolTable.put(function.id_, new Sigma(function.listarg_, function.type_));

        }

        throw new TypeException("Not yet a typechecker");
    }

}
