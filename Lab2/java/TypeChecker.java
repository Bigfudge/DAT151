import CPP.Absyn.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Iterator;
import java.util.Set;
import CPP.PrettyPrinter;

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
        public HashMap<String,Sigma> symbolTable = new HashMap<String,Sigma>();

        public void typecheck(Program p) {
        PrettyPrinter pp = new PrettyPrinter();
        PDefs defs = (PDefs)p;
        ListDef listOfDefs = defs.listdef_;

        //Add built-in fnctions
        Sigma printInt = new Sigma(new ListArg(), new Type_void());

        symbolTable.put("printInt", printInt);

        for (Def def : listOfDefs) {
            DFun function = (DFun)def;
            symbolTable.put(function.id_, new Sigma(function.listarg_, function.type_));
            CheckFuncion(function);

        }
        System.out.println(symbolTable);
        throw new TypeException("Not yet a typechecker");



    }
    public void CheckFuncion(DFun fun){
        //Lägg till argument i var-lista


        //Gå alla statements och type-checka
    }

}
