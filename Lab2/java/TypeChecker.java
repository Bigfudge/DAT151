import CPP.Absyn.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Iterator;
import java.util.Set;

public class TypeChecker {
        public class Sigma{
            public ADecl[] arguments;
            public Type returnType;

            public Sigma(ListArg args, Type type){
                arguments = new ADecl[args.size()];
                for (int i =0; i<args.size(); i++){
                    arguments[i]= (ADecl)args.get(i);
                }
                returnType=type;
            }

        }
        public enum AType{INT,DOUBLE, BOOL, VOID; };
        public HashMap<String,Sigma> symbolTable = new HashMap<String,Sigma>();



        public void typecheck(Program p) {

        PDefs defs = (PDefs)p;
        ListDef listOfDefs = defs.listdef_;

        for (Def def : listOfDefs) {
            DFun function = (DFun)def;

            symbolTable.put(function.id_, new Sigma(function.listarg_, function.type_));
            System.out.println(symbolTable);
            System.out.println(symbolTable.get("main"));

        }

        throw new TypeException("Not yet a typechecker");
    }

}
