import CPP.Absyn.*;
import java.util.*;
public class Interpreter {
    
    private abstract class Val {
        
    }
    
    private class VInt extends Val {
        public Integer integer_;
        public VInt() {integer_ = null;}
        public VInt(Integer i) {integer_ = i;}
    }
    private class VDouble extends Val {
        public Double double_;
        public VDouble() {double_ = null;}
        public VDouble(Double i) {double_ = i;}
        
    }
    private class VBool extends Val {
        public Boolean bool_;
        public VBool() {bool_ = null;}
        public VBool(Boolean b) {bool_ = b;}
        
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


    
    //Basically copied from typechecker.
    private class Env {
        public LinkedList<HashMap<String,Val>> contexts ;
        
        public Env(){
            contexts = new LinkedList<>();
        }
        
        public Val lookupValue(String id) {
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
                    break;
                }
            }
            throw new TypeException ("The variable " + id + " does not exist");
        }
        
        public void putVar(String id, Val value) {
            HashMap<String,Val> context = contexts.peek();
            if (context.get(id) != null) {
                throw new TypeException("The variable " + id + " is already defined.");
            }
            context.put(id,value);
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
            
            
            def.accept(new FunctionExecuter(), env);
        }
        
        //Only for main()?
        for (Def def : listOfDefs) {
            //def.accept(new ExpEvaluator(), env); 
            
        }
        
    }
    
    private class FunctionExecuter implements Def.Visitor<Env, Env> {
        public Env visit(DFun fun, Env env) {
            //Do some checks most likely
            Type funType = fun.type_;
            String funName = fun.id_;
            ListArg funArgs = fun.listarg_;
            
            Val functionValue = toVal(funType);
            
            for(Stm stm : fun.liststm_){
                stm.accept(new StmExecuter(), env);
            }
            return env;
        }
    }
    
    
    
    private class StmExecuter implements Stm.Visitor<Object,Env> {
        public Env visit(SDecls p, Env env) {
            for (String id : p.listid_){
                env.contexts.peek().put(id, toVal(p.type_));
            }
            return env;
        }
        
        public Env visit(SExp p, Env env) {
            p.exp_.accept(new ExpEvaluator(), env);
            return env;
        }
        
        public Env visit(SIfElse p, Env env) {
            Val value = p.exp_.accept(new ExpEvaluator(), env);
            if (!(value instanceof VBool)) {
                throw new TypeException("Wrong shit");
                
            }
            VBool temp = (VBool) value;
            if (temp.bool_ == false) {
                p.stm_1.accept(new StmExecuter(), env);
            }
            else {
                p.stm_2.accept(new StmExecuter(), env);
            }
            return env;
        }
        public Env visit(SBlock p, Env env) {
            env.newScope();
            for (Stm stm : p.liststm_){
                stm.accept(new StmExecuter(), env);
            }
            env.deleteScope();
            return env;
        }
        public Env visit(SInit p, Env env) {
            //type, exp, id
            env.contexts.peek().put(p.id_, toVal(p.type_));
            p.exp_.accept(new ExpEvaluator(), env);
            return env;
        }
        public Env visit(SReturn p, Env env) {
            p.exp_.accept(new ExpEvaluator(), env);
            return env;
        }
        public Env visit(SWhile p , Env env) {
            Val value = p.exp_.accept(new ExpEvaluator(), env);
            if (!(value instanceof VBool)) {
                throw new TypeException("Wrong shit");
            }
            VBool temp = (VBool) value;
            while(temp.bool_ == true) {
                p.stm_.accept(new StmExecuter(), env);
            }
            return env;
        }
    }
    
    
    private class ExpEvaluator implements Exp.Visitor<Val, Env> {
        public Val visit(EPlus p, Env env) {
         
            return null;
        }
        
        public Val visit(EAnd p, Env env) {
            
            return null;
        }
        
        public Val visit(EApp p, Env env) {
            
            return null;
        }
        public Val visit(EAss p, Env env) {
            
            return null;
        }
        public Val visit(EDiv p, Env env) {
            
            return null;
        }
        public Val visit(EDouble p, Env env) {
            
            return null;
        }
        public Val visit(EEq p , Env env) {
            return null;
        }
        public Val visit(EFalse p, Env env) {
            
            return null;
        }
        
        public Val visit(EGt p, Env env) {
            
            return null;
        }
        public Val visit(EGtEq p, Env env) {
            
            return null;
        }
        public Val visit(EId p, Env env) {
            
            return null;
        }
        public Val visit(EInt p, Env env) {
            
            return null;
        }
        public Val visit(ELt p, Env env) {
            
            return null;
        }
        public Val visit(ELtEq p, Env env) {
            
            return null;
        }
        public Val visit(EMinus p , Env env) {
            return null;
        }
        public Val visit(ENEq p, Env env) {
            
            return null;
        }
        public Val visit(EOr p , Env env) {
            return null;
        }
        public Val visit(EPostDecr p, Env env) {
            
            return null;
        }
        
        public Val visit(EPostIncr p, Env env) {
            
            return null;
        }
        public Val visit(EPreIncr p, Env env) {
            
            return null;
        }
        public Val visit(EPreDecr p, Env env) {
            
            return null;
        }
        public Val visit(ETimes p, Env env) {
            
            return null;
        }
        public Val visit(ETrue p , Env env) {
            return null;
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
