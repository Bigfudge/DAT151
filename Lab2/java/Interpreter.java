import CPP.Absyn.*;
import java.util.*;
public class Interpreter {

    private abstract class Val {
        public Boolean isInt(){return false;}
        public Boolean isDouble(){return false;}
        public Boolean isBool(){return false;}
        public Boolean isVoid(){return false;}
        public Integer getInt(){
            throw new RuntimeException("getInt: dont have int value");
        }
        public Double getDouble(){
            throw new RuntimeException("getDouble: dont have int value");
        }
        public Boolean getBool(){
            throw new RuntimeException("getBool: dont have int value");
        }
    }

    private class VInt extends Val {
        public Integer integer_;
        public VInt() {integer_ = null;}
        public VInt(Integer i) {integer_ = i;}
        public Boolean isInt(){return true;}
        public Integer getInt(){return integer_;}
    }
    private class VDouble extends Val {
        public Double double_;
        public VDouble() {double_ = null;}
        public VDouble(Double i) {double_ = i;}
        public Boolean isDouble(){return true;}
        public Double getDouble(){return double_;}

    }
    private class VBool extends Val {
        public Boolean bool_;
        public VBool() {bool_ = null;}
        public VBool(Boolean b) {bool_ = b;}
        public Boolean isBool(){return true;}
        public Boolean getBool(){return bool_;}

    }
    private class VVoid extends Val {

    }
    private class VUndefined extends Val {

    }

    private Val toVal(Type t) {
        return t.accept(new TypeToVal(), null);
    }

    private class TypeToVal implements Type.Visitor <Val, Object> {
        public Val visit(Type_bool t, Object arg)
        {
            return new VBool();
        }
        public Val visit(Type_int t, Object arg)
        {
            return new VInt();
        }
        public Val visit(Type_double t, Object arg)
        {
            return new VDouble();
        }
        public Val visit(Type_void t, Object arg)
        {
            return new VVoid();
        }
    }




    private class Func {
        public LinkedList<String> args = new LinkedList<>();
        public LinkedList<Stm> statements = new LinkedList<>();
        public Val returnValue;

        public Func(LinkedList<Arg> inArgs, LinkedList<Stm> inStms, Type inType) {
            LinkedList<String> stringArgs = new LinkedList<>();
            for (Arg arg : inArgs) {
                ADecl tempArg = (ADecl) arg;
                stringArgs.addFirst(tempArg.id_);
            }
            args = stringArgs;
            statements = inStms;
            returnValue = toVal(inType);
        }
    }



    private class Env {
        public HashMap <String, Func> signature;
        public LinkedList<HashMap<String,Val>> contexts;

        public Env(){
            signature = new HashMap<>();
            contexts = new LinkedList<>();
        }

        public Val getVal(String id) {
            for(HashMap<String,Val> context : contexts) {
                Val storedValue = context.get(id);
                if(storedValue != null) {
                    return storedValue;
                }
            }
            throw new TypeException("The variable " + id + " is not defined");
        }

        public void updateVar(String id, Val value) {
            for(HashMap<String,Val> context : contexts) {
                Val storedValue = context.get(id);
                if (storedValue != null) {
                    context.put(id, value);
                    return;
                }
            }
            throw new TypeException ("updateVar variable " + id + " does not exist");
        }

        public void putVar(String id, Val value) {
            HashMap<String,Val> context = contexts.peek();
            if (context.get(id) != null) {
                throw new TypeException("putVarThe variable " + id + " is already defined.");
            }
            context.put(id,value);
        }

        public Func getFun(String id) {
            if (signature.get(id) != null) {
                return signature.get(id);
            }
            else throw new TypeException("No function with that name is defined");
        }

        public void putFun(String id, Func function){
            if (signature.get(id) != null) {
                throw new TypeException("A function with that name is already defined");
            }
            signature.put(id, function);

        }
        public void updateFunReturn(String id, Val value){
            if(signature.get(id) != null){
                Func function = signature.get(id);
                function.returnValue= value;
                signature.put(id, function);
                return;
            }
            throw new RuntimeException("updateFunReturn: Error");
        }

        public void newScope() {
            HashMap<String,Val> context = new HashMap<>();
            contexts.addFirst(context);
        }

        public void deleteScope() {
            contexts.remove();
        }
    }


    public void interpret(Program p) {
        Env env = new Env();
        ///1.
        // build a symbol table that provides for every function its source code syntax tree; the built-in functions can be left out and treated separately in the rule for evaluating function calls;

        ///2.
        //interpret the program by evaluating the expression main().
        PDefs defs = (PDefs)p;
        ListDef listOfDefs = defs.listdef_;
        //1.
        env.newScope();
        for (Def def : listOfDefs) {
            def.accept(new FunctionPutter(), env);
           // def.accept(new FunctionExecuter(), env);
        }
        //Only for main()?
        for (Def def : listOfDefs) {
            DFun function = (DFun) def;
            if(function.id_ == "main") {
                function.accept(new FunctionExecuter(), env);
            }

        }

    }
    private class FunctionPutter implements Def.Visitor<Object, Env> {
        public Object visit (DFun fun, Env env) {
            Func function = new Func (fun.listarg_, fun.liststm_, fun.type_);
            env.putFun(fun.id_, function);
            return null;
        }

    }

    private class FunctionExecuter implements Def.Visitor<Env, Env> {
        public Env visit(DFun fun, Env env) {

            Val functionValue = toVal(fun.type_);

            for(Stm stm : fun.liststm_){
                if(stm instanceof SReturn) {
                    //System.out.println("hello return");
                    env.updateFunReturn(fun.id_, (Val)stm.accept(new StmExecuter(), env));
                    return env;
                }
                stm.accept(new StmExecuter(), env);

            }
            return env;
        }
    }



    private class StmExecuter implements Stm.Visitor<Object,Env> {
        public Object visit(SDecls p, Env env) {
            for (String id : p.listid_){
                env.putVar(id, toVal(p.type_));
            }
            return null;
        }

        public Object visit(SExp p, Env env) {
            p.exp_.accept(new ExpEvaluator(), env);
            return null;
        }

        public Object visit(SIfElse p, Env env) {
            env.newScope();
            Val value = p.exp_.accept(new ExpEvaluator(), env);
            if (!value.isBool()) {
                throw new TypeException("Wrong shit");

            }
            if (value.getBool()==true) {
                p.stm_1.accept(new StmExecuter(), env);
            }
            else if(value.getBool()==false) {
                p.stm_2.accept(new StmExecuter(), env);
            }
            env.deleteScope();
            return null;
        }
        public Object visit(SBlock p, Env env) {
            env.newScope();
            for (Stm stm : p.liststm_){
                if (stm instanceof SReturn) {
                    env.deleteScope();
                    SReturn tempRet = (SReturn) stm;
                    return tempRet.exp_.accept(new ExpEvaluator(), env);
                }
                stm.accept(new StmExecuter(), env);
            }
            env.deleteScope();
            return null;
        }
        public Object visit(SInit p, Env env) {
            //type, exp, id
            env.putVar(p.id_, toVal(p.type_));
            Val val = p.exp_.accept(new ExpEvaluator(), env);
            env.updateVar(p.id_, val);
            return null;
        }
        public Object visit(SReturn p, Env env) {
            //System.out.println(p.exp_.accept(new ExpEvaluator(), env));
            return p.exp_.accept(new ExpEvaluator(), env);

        }
        public Object visit(SWhile p , Env env) {
            Val value = p.exp_.accept(new ExpEvaluator(), env);
            while(value.isBool() && value.getBool()) {

                env.newScope();
                p.stm_.accept(new StmExecuter(), env);
                env.deleteScope();
                value=p.exp_.accept(new ExpEvaluator(), env);

            }
            return null;
        }
    }


    private class ExpEvaluator implements Exp.Visitor<Val, Env> {
        public Val visit(EPlus p, Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);
            if (u.isInt() && v.isInt()) {
                return new VInt(u.getInt() + v.getInt());
            }
            else if (u.isDouble() && v.isDouble()) {
                return new VDouble(u.getDouble() + v.getDouble());
            }
            else throw new TypeException("Things got broken");
        }

        public Val visit(EAnd p, Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);
            if (u.isBool() && v.isBool()) {
                return new VBool(u.getBool() && v.getBool());
            }
            else throw new TypeException("Things got broken");
        }

        public Val visit(EApp p, Env env) {
            if (p.id_ == "printInt") {
                Val value = p.listexp_.getFirst().accept(new ExpEvaluator(), env);
                if (value.isInt()) {

                    System.out.println(value.getInt());
                    return new VVoid();
                }
                else throw new TypeException("Trying to call printInt on something that is not an int.");

            }
            else if (p.id_ == "printDouble") {
                Val value = p.listexp_.getFirst().accept(new ExpEvaluator(), env);
                if (value.isDouble()) {
                    System.out.println(value.getDouble());
                    return new VVoid();
                }
                else throw new TypeException("Trying to call printDouble on something that is not double.");
            }
            else if (p.id_ == "readInt") {
                Scanner sc = new Scanner(System.in);
                Integer i = sc.nextInt();
                sc.close();
                return new VInt(i);
            }
            else if (p.id_ == "readDouble") {
                Scanner sc = new Scanner(System.in);
                Double d = sc.nextDouble();
                sc.close();
                return new VDouble(d);
            }
            else {
                env.newScope();
                LinkedList<Val> expList = new LinkedList<>();
                for (Exp exp : p.listexp_) {
                    expList.add(exp.accept(new ExpEvaluator(), env));
                }
                Func function = env.getFun(p.id_);
                for (String arg : function.args){
                    env.putVar(arg, expList.remove());
                }

                for (Stm stm : function.statements) {
                    if (stm instanceof SReturn) {
                        Val val = (Val) stm.accept(new StmExecuter(), env);
                        //System.out.println(val);
                        env.updateFunReturn(p.id_, val);
                        function.returnValue = val;
                    }
                    else {
                        stm.accept(new StmExecuter(), env);
                    }

                }
                env.deleteScope();
                return function.returnValue;


            }

        }
        public Val visit(EAss p, Env env) {
            Val value = p.exp_.accept(new ExpEvaluator(), env);
            env.updateVar(p.id_, value);
            return new VVoid();
        }
        public Val visit(EDiv p, Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);

            if (u.isInt() && v.isInt()) {
                return new VInt(u.getInt() / v.getInt());
            }
            else if (u.isDouble() && v.isDouble()) {
                return new VDouble(u.getDouble() / v.getDouble());
            }
            else throw new TypeException("Things got broken");
        }
        public Val visit(EDouble p, Env env) {
            return new VDouble(p.double_);
        }
        public Val visit(EEq p , Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);

            return new VBool (u == v);
        }
        public Val visit(EFalse p, Env env) {
            return new VBool(false);
        }

        public Val visit(EGt p, Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);

            if (u.isInt() && v.isInt()) {
                return new VBool(u.getInt() > v.getInt());
            }
            else if (u.isDouble() && v.isDouble()) {
                return new VBool(u.getDouble() > v.getDouble());
            }
            else throw new TypeException("Things got broken");
        }
        public Val visit(EGtEq p, Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);

            if (u.isInt() && v.isInt()) {
                return new VBool(u.getInt() >= v.getInt());
            }
            else if (u.isDouble() && v.isDouble()) {
                return new VBool(u.getDouble() >= v.getDouble());
            }
            else throw new TypeException("Things got broken");
        }
        public Val visit(EId p, Env env) {
            return env.getVal(p.id_);

        }
        public Val visit(EInt p, Env env) {
            return new VInt(p.integer_);
        }
        public Val visit(ELt p, Env env) {
             Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);

            if (u.isInt() && v.isInt()) {
                return new VBool(u.getInt() < v.getInt());
            }
            else if (u.isDouble() && v.isDouble()) {
                return new VBool(u.getDouble() < v.getDouble());
            }
            else throw new TypeException("Things got broken");
        }
        public Val visit(ELtEq p, Env env) {
             Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);

            if (u.isInt() && v.isInt()) {
                return new VBool(u.getInt() <= v.getInt());
            }
            else if (u.isDouble() && v.isDouble()) {
                return new VBool(u.getDouble() <= v.getDouble());
            }
            else throw new TypeException("Things got broken");
        }
        public Val visit(EMinus p , Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);

            if (u.isInt() && v.isInt()) {
                return new VInt(u.getInt() - v.getInt());
            }
            else if (u.isDouble() && v.isDouble()) {
                return new VDouble(u.getDouble() - v.getDouble());
            }
            else throw new TypeException("Things got broken");
        }

        public Val visit(ENEq p, Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);
            return new VBool (u != v);
        }

        public Val visit(EOr p , Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);
            if (u.isBool() && v.isBool()) {
                return new VBool(u.getBool() || v.getBool());
            }
            else throw new TypeException("Things got broken");
        }
        public Val visit(EPostDecr p, Env env) {
            Val val = env.getVal(p.id_);
            if (val.isInt()) {
                Val res = new VInt(val.getInt() - 1);
                env.updateVar(p.id_, res);
                return val;
            }
            else if(val.isDouble()){
                Val res =new VDouble(val.getDouble() - 1.0);
                env.updateVar(p.id_, res);
                return val;
            }
            else throw new TypeException("Things got broken");
        }

        public Val visit(EPostIncr p, Env env) {
            Val val = env.getVal(p.id_);
            if (val.isInt()) {
                Val res =new VInt(val.getInt() + 1);
                env.updateVar(p.id_, res);
                return val;
            }
            else if(val.isDouble()){
                Val res =new VDouble(val.getDouble() + 1.0);
                env.updateVar(p.id_, res);
                return val;
            }
            else throw new TypeException("Things got broken");
        }
        public Val visit(EPreIncr p, Env env) {
            Val val = env.getVal(p.id_);
            if (val.isInt()) {
                env.updateVar(p.id_, new VInt(val.getInt()+1));
            }
            else if(val.isDouble()){
                env.updateVar(p.id_, new VDouble(val.getDouble()+1));
            }
            else{
                throw new TypeException("Preincr exception");
            }
            val = env.getVal(p.id_);
            return val;
        }
        public Val visit(EPreDecr p, Env env) {
            Val val = env.getVal(p.id_);
            if (val.isInt()) {
                env.updateVar(p.id_, new VInt(val.getInt()-1));
            }
            else if(val.isDouble()){
                env.updateVar(p.id_, new VDouble(val.getDouble() - 1.0));
            }
            else{
                throw new TypeException("Predecr exception");
            }
            val = env.getVal(p.id_);
            return val;
        }
        public Val visit(ETimes p, Env env) {
            Val u = p.exp_1.accept(new ExpEvaluator(), env);
            Val v = p.exp_2.accept(new ExpEvaluator(), env);

            if (u.isInt() && v.isInt()) {
                return new VInt(u.getInt() * v.getInt());
            }
            else if (u.isDouble() && v.isDouble()) {
                return new VDouble(u.getDouble() * v.getDouble());
            }
            else throw new TypeException("Things got broken");

        }
        public Val visit(ETrue p , Env env) {
            return new VBool(true);
        }
    }



    //
    // private class StmExecuter implements Stm.Visitor<Object,Env> {
    //
    // }
    //
    //
    // private class ExpEvaluator implements Stm.Visitor<Val, Env> {
    //
    // }


}
