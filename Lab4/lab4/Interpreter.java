import java.util.*;
import Fun.Absyn.*;

public class Interpreter {

    final Strategy strategy;

    private class Env {
        public HashMap <String, Func> signature;
        public HashMap <String, Exp> abstractions;

        public Env(){
            signature = new HashMap<>();
            abstractions = new HashMap<>();
        }
        
        public Exp getAbstract (String id) {
            return abstractions.get(id);
        }
        
        public void putAbstract (String id, Exp exp) {
            abstractions.put(id, exp);
        }
        
        public Func getFun(String id) {
            if (signature.get(id) != null) {
                return signature.get(id);
            }
            else throw new RuntimeException("getFun: No function with that name is defined");
        }

        public void putFun(String id, Func function){
            if (signature.get(id) != null) {
                throw new RuntimeException("putFun: A function with that name is already defined");
            }
            signature.put(id, function);

        }

    }

    private class Func {
        public String name;
        public Exp expression;
        public LinkedList<String> args = new LinkedList<>();
    
        public Func(String inName, Exp inExp, LinkedList<String> inArgs) {
            name = inName;
            expression = inExp;
            args = inArgs;
        }
    }
  
    public Interpreter(Strategy strategy) {
        this.strategy = strategy;
    }

    public void interpret(Program p) {
        Env env = new Env();
        Prog prog = (Prog) p;
        for(Def def : prog.listdef_){
            def.accept(new FunctionPutter() , env);
        }
        //Put main?
    
        //Execute interpreter from main.
        Integer result = prog.main_.accept(new ExecuteInterpreter(), env);
        System.out.println(result);
    
    }
  
    private class FunctionPutter implements Def.Visitor<Object, Env> {
        public Object visit (DDef fun, Env env) {
            Func function = new Func (fun.ident_, fun.exp_, fun.listident_);
            env.putFun(fun.ident_, function);
            return null;
        }
    }
    
    private class ExecuteInterpreter implements Main.Visitor<Integer, Env> {
        public Integer visit (DMain mainFun, Env env) {
            return mainFun.exp_.accept(new ExpEvaluator(), env);
        }
    }
    
    private class ExpEvaluator implements Exp.Visitor<Integer, Env> {
        public Integer visit(EAbs p, Env env) {
            String id = p.ident_;
            env.putAbstract(id, p.exp_);
            return null;
        }
        
        public Integer visit(EAdd p, Env env) {
            Integer u = p.exp_1.accept(new ExpEvaluator(), env);
            Integer v = p.exp_2.accept(new ExpEvaluator(), env);
            return u+v;
        }
        
        public Integer visit(EApp p, Env env) {
            return null;
        }
        
        public Integer visit(EIf p, Env env) {
            if (p.exp_1.accept(new ExpEvaluator(), env) == 1) {
                return p.exp_2.accept(new ExpEvaluator(), env);
            }
            else {
                return p.exp_3.accept(new ExpEvaluator(), env);
            }
        }
        
        public Integer visit(EInt p, Env env) {
            return p.integer_;
        }
        
        public Integer visit(ELt p, Env env) {
            Integer u = p.exp_1.accept(new ExpEvaluator(), env);
            Integer v = p.exp_2.accept(new ExpEvaluator(), env);
            if(u < v) {
                return 1;
            }
            return 0;
        }
        
        public Integer visit(ESub p, Env env) {
            Integer u = p.exp_1.accept(new ExpEvaluator(), env);
            Integer v = p.exp_2.accept(new ExpEvaluator(), env);
            
            return u-v;
        }
        
        public Integer visit(EVar p, Env env) {
            return null;
        }
    }
    

}
