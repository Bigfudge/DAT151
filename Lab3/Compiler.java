import java.util.*;
import CPP.Absyn.*;

public class Compiler
{
  public static enum TypeCode { CInt, CBool, CVoid } ;

  // The output of the compiler is a list of strings.
  LinkedList<String> output;
  private class Env{
      public HashMap<String,String> signature ;
      public HashMap<String, Integer> variables;
      Integer variableCount = 0;
      Integer loopCount = 0;

      public Env(){
          signature = new HashMap<>();
          variables = new HashMap<>();
      }

      //Adds function to signatures if id does not already exist, otherwise Exception
      public void addFun (DFun function){
          Type functionType = function.type_;
          String functionName = function.id_;
          ListArg functionArgs = function.listarg_;

          String type="(";
          for (Arg arg : functionArgs) {
              ADecl tmp = (ADecl)arg;
              if (tmp.type_ instanceof Type_int) {
                  type = type + "I";
              }
              else if (tmp.type_ instanceof Type_bool) {
                  type = type + "Z";
              }
              else if (tmp.type_ instanceof Type_void) {
                  type = type + "V";
              }

          }
          type= type + ")";

          if (functionType instanceof Type_int) {
              type = type + "I";
          }
          else if (functionType instanceof Type_bool) {
              type = type + "Z";
          }
          else if (functionType instanceof Type_void) {
              type = type + "V";
          }
          signature.put(functionName, type);


      }

      public String getSignature (String id) {
          if (signature.containsKey(id)){
              return signature.get(id);
          }
          throw new RuntimeException("No such function is defined.");
      }

      public void addVar (String id){
          variables.put(id, variableCount++);
      }

      public String getLabel(){
          return "label_"+UUID.randomUUID().toString();

      }
      public Integer getReg(String id){
          if (variables.containsKey(id)) {
              return variables.get(id);
          }
          throw new RuntimeException("getReg: No such variable");
      }

  }
  public static TypeCode typeCode(Type type) {
      if(type instanceof Type_bool) {
          return TypeCode.CBool;
      }
      else if(type instanceof Type_int) {
          return TypeCode.CInt;
      }
      else if(type instanceof Type_void) {
          return TypeCode.CVoid;
      }
      else throw new TypeException("That type does not exist");

  }

  // Compile C-- AST to a .j source file (returned as String).
  // name should be just the class name without file extension.
  public String compile(String name, CPP.Absyn.Program p) {
    // Initialize output
    output = new LinkedList();
    Env env = new Env();
    // Output boilerplate
    output.add(".class public " + name);
    output.add(".super java/lang/Object");
    output.add("");
    output.add(".method public <init>()V");
    output.add("  .limit locals 1");
    output.add("");
    output.add("  aload_0");
    output.add("  invokespecial java/lang/Object/<init>()V");
    output.add("  return");
    output.add("");
    output.add(".end method");
    output.add("");
    output.add(".method public static main([Ljava/lang/String;)V");
    output.add("  .limit locals 1");
    output.add("  .limit stack  1");
    output.add("");
    output.add("  invokestatic " + name + "/main()I");
    output.add("  pop");
    output.add("  return");
    output.add("");
    output.add(".end method");
    output.add("");

    PDefs defs = (PDefs)p;
    ListDef listOfDefs = defs.listdef_;
    //Build symbol-table for all functions and their types

    //Building the symbol table.
    for (Def def : listOfDefs) {
        def.accept(new SetupSymbolTable(), env);
    }

    for(Def def : listOfDefs) {
        def.accept(new Compile(), env);
    }

    // TODO: compile AST, appending to output.

    // Concatenate strings in output to .j file content.
    StringBuilder jtext = new StringBuilder();
    for (String s: output) {
      jtext.append(s+"\n");
    }
    return jtext.toString();
  }
  private class SetupSymbolTable implements Def.Visitor<Env,Env> {
      public Env visit(DFun fun, Env env) {

          env.addFun(fun);
          return env;
      }
  }
  private class Compile implements Def.Visitor<Env, Env>{
      public Env visit (DFun fun, Env env) {
          //env.newScope();
          Type functionType = fun.type_;
          String functionName = fun.id_;
          ListArg functionArgs = fun.listarg_;
          ListStm functionStms = fun.liststm_;

          //Checks the deklaration of main
        String signature =env.getSignature(functionName);

          output.add(".method public static "+functionName+signature);
          output.add(".limit locals 3");
          output.add(".limit stack 3");

          //Checks all statement in the function
          for (Stm st : functionStms) {

              st.accept(new CompileStm() , env);
              output.add("");
          }
          output.add(".end method");



          //env.deleteScope();

          return env;
      }
  }
  private class CompileStm implements Stm.Visitor<Env, Env>{
        public Env visit(SDecls p, Env env) {
            for(String id : p.listid_){
                    env.addVar(id);
            }
            return null;
        }
        public Env visit(SExp p, Env env) {
            p.exp_.accept(new CompileExp(), env);
            return null;
        }
        public Env visit(SIfElse p, Env env) {
            return null;
        }
        public Env visit(SBlock p, Env env) {
            for (Stm stm : p.liststm_){
                stm.accept(new CompileStm(), env);
                output.add("pop");
            }

            return null;
        }
        public Env visit(SInit p, Env env) {
            env.addVar(p.id_);
            p.exp_.accept(new CompileExp(), env);
            output.add("istore_"+env.getReg(p.id_));
            return null;
        }
        public Env visit(SReturn p, Env env) {
            p.exp_.accept(new CompileExp(), env);
            output.add("ireturn");
            return null;
        }
        public Env visit(SWhile p , Env env) {
            String startLabel =  env.getLabel();
            String endLabel = env.getLabel();
            output.add(startLabel);
            p.exp_.accept(new CompileExp(), env);
            output.add("if icmpeq "+endLabel);
            p.stm_.accept(new CompileStm(), env);
            output.add("goto "+startLabel);

            return null;
        }
  }
  private class CompileExp implements Exp.Visitor<Void,Env> {

     public Void visit(EInt p, Env env) {
         output.add("ldc "+p.integer_.toString());
         return null;
      }

      public Void visit(EDouble p, Env env) {
          return null;
      }

      public Void visit(EFalse p, Env env) {
          output.add("iconst_0");

          return null;
      }

      public Void visit(EId p, Env env) {
          Integer register = env.variables.get(p.id_);
          output.add("iload_"+register.toString());

          return null;
      }

      public Void visit(ETrue p, Env env) {
          output.add("iconst_1");
          return null;
      }

      public Void visit(EPlus p, Env env){
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("iadd");
          return null;
      }

      public Void visit(EAnd p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("iand");
          return null;
      }

      public Void visit(EApp p, Env env) {
          if (p.id_=="readInt") {
              output.add("invokestatic Runtime/readInt()I");
          }
          else if (p.id_=="printInt") {
              for(Exp exp: p.listexp_){
                  exp.accept(new CompileExp(), env);
              }
              output.add("invokestatic Runtime/printInt(I)V");
          }
          else{
              output.add("invokestatic"+p.id_+env.getSignature(p.id_));
          }
          return null;
      }

      public Void visit(EAss p, Env env) {
          Integer reg = env.getReg(p.id_);
          p.exp_.accept(new CompileExp(), env);
          output.add("istore_" +reg);
          output.add("iload_" +reg);
          return null;

      }

      public Void visit(EDiv p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("idiv");
          return null;

      }

      public Void visit(EEq p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);

          String label1 = env.getLabel();
          String label2 = env.getLabel();
          output.add("if_icmpeq "+label1);
          output.add("iconst_0");
          output.add("goto "+label2);
          output.add(label1);
          output.add("iconst_1");
          output.add(label2);
          output.add("iconst_0");

          return null;

      }

      public Void visit(EGt p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);

          String label1 = env.getLabel();
          String label2 = env.getLabel();
          output.add("if_icmpgt label_"+label1);
          output.add("iconst_0");
          output.add("goto "+label2);
          output.add(label1);
          output.add("iconst_1");
          output.add(label2);
          output.add("iconst_0");

          return null;

      }

      public Void visit(EGtEq p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);

          String label1 = env.getLabel();
          String label2 = env.getLabel();
          output.add("if_icmpge "+label1);
          output.add("iconst_0");
          output.add("goto "+label2);
          output.add(label1);
          output.add("iconst_1");
          output.add(label2);
          output.add("iconst_0");

          return null;
      }

      public Void visit(ELt p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);

          String label1 = env.getLabel();
          String label2 = env.getLabel();
          output.add("if_icmplt "+label1);
          output.add("iconst_0");
          output.add("goto "+label2);
          output.add(label1);
          output.add("iconst_1");
          output.add(label2);
          output.add("iconst_0");

          return null;

      }

      public Void visit(ELtEq p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);

          String label1 = env.getLabel();
          String label2 = env.getLabel();
          output.add("if_icmple "+label1);
          output.add("iconst_0");
          output.add("goto "+label2);
          output.add(label1);
          output.add("iconst_1");
          output.add(label2);
          output.add("iconst_0");

          return null;

      }

      public Void visit(EMinus p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("isub");

          return null;

      }

      public Void visit(ENEq p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);

          String label1 = env.getLabel();
          String label2 = env.getLabel();
          output.add("if_icmpne "+label1);
          output.add("iconst_0");
          output.add("goto "+label2);
          output.add(label1);
          output.add("iconst_1");
          output.add(label2);
          output.add("iconst_0");

          return null;

      }

      public Void visit(EOr p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("ior");

          return null;

      }

      public Void visit(EPostDecr p, Env env) {
          Integer reg = env.variables.get(p.id_);

          output.add("iload_" + reg);
          output.add("iload_" + reg);
          output.add("iconst_1");
          output.add("iadd");
          output.add("istore_"+reg);

          return null;

      }

      public Void visit(EPostIncr p, Env env) {
          Integer reg = env.variables.get(p.id_);

          output.add("iload_" + reg);
          output.add("iload_" + reg);
          output.add("iconst_1");
          output.add("iadd");
          output.add("istore_" + reg);

          return null;

      }

      public Void visit(EPreDecr p, Env env) {
          Integer reg = env.variables.get(p.id_);

          output.add("iload_" + reg);
          output.add("iconst_1");
          output.add("isub");
          output.add("istore_"+reg);
          output.add("iload_" + reg);

          return null;

      }

      public Void visit(EPreIncr p, Env env) {
          Integer reg = env.variables.get(p.id_);

          output.add("iload_" + reg);
          output.add("iconst_1");
          output.add("iadd");
          output.add("istore_"+reg);
          output.add("iload_" + reg);

          return null;

      }

      public Void visit(ETimes p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("imul");

          return null;

      }
  }
}
