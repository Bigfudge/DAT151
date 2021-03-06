import java.util.*;
import Fun.Absyn.*;

public class Interpreter {

    final Strategy strategy;
    final TreeMap<String,Exp> sig  = new TreeMap();

// Environment ///////////////////////////////////////////////////////

 abstract class Environment {
   abstract Value lookup (String x);
 }

 class Empty extends Environment {
   Value lookup (String x) {
     return null;
     //throw new RuntimeException ("Unbound variable: " + x);
   }
 }

 class Extend extends Environment {
   final Environment env;
   final String y;
   final Entry entry;

   Extend (String y, Entry entry, Environment env) {
     this.env = env;
     this.y = y;
     this.entry = entry;
   }
   Value lookup (String x) {
     if (x.equals(y)) return entry.value();
     else return env.lookup(x);
   }
 }

 // Environment entries ////////////////////////////////////////////////

 abstract class Entry {
   abstract Value value();
 }

 class ValueEntry extends Entry {
   final Value v;
   ValueEntry (Value v) {
     this.v = v;
   }
   Value value() { return v; }
 }

 class ClosEntry extends Entry {
   final Exp exp;
   final Environment env;
   ClosEntry (Exp exp, Environment env) {
     this.exp = exp;
     this.env = env;
   }
   Value value() { return exp.accept (new ExpEvaluator(), env); }
 }

 // Value /////////////////////////////////////////////////////////////

    abstract class Value {
        abstract public int intValue();
        abstract public Value apply(Entry e);
    }

    private class VInt extends Value {
        final int val;
        public VInt (int i) {val = i;}

        public int intValue() {
            return val;
        }

        public Value apply (Entry e) {
            throw new RuntimeException ("cannot apply integer value to argument");
        }
    }


    private class VFunc extends Value {
        final String name;
        final Exp expression;
        final Environment env;


        public VFunc(String inName, Exp inExp, Environment inEnv) {
            name = inName;
            expression = inExp;
            env = inEnv;
        }

        public int intValue() {
            throw new RuntimeException("Fun.intValue() is not possible");
        }

        public Value apply (Entry e) {
            return expression.accept(new ExpEvaluator(), new Extend(name, e, env));
        }
    }

    public Interpreter(Strategy strategy) {
        this.strategy = strategy;
    }

    public void interpret(Program p) {
        System.out.println(p.accept(new ProgramVisitor(), null).intValue());
      }

      public class ProgramVisitor implements Program.Visitor<Value,Void>
      {
        public Value visit(Fun.Absyn.Prog p, Void arg)
        {
          // build signature
          for (Def d: p.listdef_){
            d.accept(new DefVisitor(), null);
          }
          // execute main expression
          //return new VInt(0);
          Value result = p.main_.accept(new MainVisitor(), null);
          if (!(result instanceof VInt)) 
            throw new RuntimeException("Main does not return an int");
          return result;
        }
      }

      public class MainVisitor implements Main.Visitor<Value,Void>
      {
        public Value visit(Fun.Absyn.DMain p, Void arg)
        {
          return p.exp_.accept(new ExpEvaluator(), new Empty());
        }
      }

      // visit defs only to build the signature.
      public class DefVisitor implements Def.Visitor<Void,Void>
      {
        public Void visit(Fun.Absyn.DDef p, Void arg)
        {
          // abstract over arguments from right to left
          Exp e = p.exp_;

          Collections.reverse(p.listident_);
          for (String x: p.listident_) e = new EAbs(x, e);

          // Add to signature
          sig.put(p.ident_, e);
          return null;
        }
      }

    private class ExpEvaluator implements Exp.Visitor<Value, Environment> {
        public Value visit(EAbs p, Environment env) {
            String id = p.ident_;
            ClosEntry entry = new ClosEntry(p.exp_, env);
            Environment newEnv = new Extend(id, new ClosEntry(p.exp_, env), env);
            
          //  Value val = env.lookup(id);
          //  if (val == null) {
          //      throw new RuntimeException("hejhej");
          //  }
            return new VFunc(id, p.exp_, newEnv);
            //return p.exp_.accept(new ExpEvaluator(), newEnv);
            //return val;
            //Entry tempVal = new ClosEntry(e, env);
            //return new VFunc(id, e, new Extend(id, tempVal, env));
            //return e.accept(new ExpEvaluator(), new Extend(id, tempVal, env));


            //return e.accept(new ExpEvaluator(), new Extend(id, new ClosEntry(e, env), env));
        }

        public Value visit(EAdd p, Environment env) {
            Value u = p.exp_1.accept(new ExpEvaluator(), env);
            Value v = p.exp_2.accept(new ExpEvaluator(), env);

            return new VInt(u.intValue()+v.intValue());
        }

        public Value visit(EApp p, Environment env) {
            //throw new RuntimeException(sig.lastKey());
            Entry test = new ValueEntry(new VInt(0));
            
            Value function = p.exp_1.accept(new ExpEvaluator(), env);
            
            if (strategy == Strategy.CallByName) {
               
                
                test = new ClosEntry(p.exp_2, env);
                //return function.apply(test);
            }
            else if (strategy == Strategy.CallByValue) {
                //throw new RuntimeException("CallByValue");

                Value exp2Val = p.exp_2.accept(new ExpEvaluator(), env);
                test = new ValueEntry(exp2Val);
                //return function.apply(test);
            }
            

            return function.apply(test);
            //else throw new RuntimeException("Something wrong with the strategy variable");
            

        }

        public Value visit(EIf p, Environment env) {
            if (p.exp_1.accept(new ExpEvaluator(), env).intValue() == 1) {
                return p.exp_2.accept(new ExpEvaluator(), env);
            }
            else {
                return p.exp_3.accept(new ExpEvaluator(), env);
            }
        }

        public Value visit(EInt p, Environment env) {
            return new VInt(p.integer_);
        }

        public Value visit(ELt p, Environment env) {
            Value u = p.exp_1.accept(new ExpEvaluator(), env);
            Value v = p.exp_2.accept(new ExpEvaluator(), env);
            if(u.intValue() < v.intValue()) {
                return new VInt(1);
            }
            return new VInt(0);
        }

        public Value visit(ESub p, Environment env) {
            Value u = p.exp_1.accept(new ExpEvaluator(), env);
            Value v = p.exp_2.accept(new ExpEvaluator(), env);

            return new VInt(u.intValue()-v.intValue());
        }

        public Value visit(EVar p, Environment env) {
            Value value = env.lookup(p.ident_);
            
            if (value != null) {
                return value;
            }
            
            else {
                Exp exp = sig.get(p.ident_);
                if (exp == null) {
                    throw new RuntimeException("Unbound variable: " + p.ident_);
                }
                return exp.accept(new ExpEvaluator(), new Empty());
            }
        }
 
    }


}
