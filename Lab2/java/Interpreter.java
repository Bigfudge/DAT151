import CPP.Absyn.*;

public class Interpreter {

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
        
        public void deleteScope() {
            contexts.remove();
        }
    }


    public void interpret(Program p) {
            
    }
    
    
    
    private class StmExecuter implements Stm.Visitor<Object,Env> {
    
    }
    
    
    private class ExpEvaluator implements Stm.Visitor<Val, Env> {
    
    }
    

}
