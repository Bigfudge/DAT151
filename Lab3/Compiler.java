import java.util.*;
import CPP.Absyn.*;

public class Compiler
{
  public static enum TypeCode { CInt, CBool, CVoid } ;

  // The output of the compiler is a list of strings.
  LinkedList<String> output;
  private class Env{
      public HashMap<String,TypeCode> signature ;
      public HashMap<String, Integer> variables;
      Integer variableCount = 0;

      public Env(){
          signature = new HashMap<>();
          variables = new HashMap<>();
      }

      //Adds function to signatures if id does not already exist, otherwise Exception
      public void addFun (String id, TypeCode functionDef){
          if (signature.get(id) != null) {
              throw new TypeException ("The function " +id+ " is already defined.");
          }
          signature.put(id, functionDef);
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
    output.add(".class public " + name + "\n");
    output.add(".super java/lang/Object\n");
    output.add("\n");
    output.add(".method public <init>()V\n");
    output.add("  .limit locals 1\n");
    output.add("\n");
    output.add("  aload_0\n");
    output.add("  invokespecial java/lang/Object/<init>()V\n");
    output.add("  return\n");
    output.add("\n");
    output.add(".end method\n");
    output.add("\n");
    output.add(".method public static main([Ljava/lang/String;)V\n");
    output.add("  .limit locals 1\n");
    output.add("  .limit stack  1\n");
    output.add("\n");
    output.add("  invokestatic " + name + "/main()I\n");
    output.add("  pop\n");
    output.add("  return\n");
    output.add("\n");
    output.add(".end method\n");
    output.add("\n");

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
      jtext.append(s);
    }
    return jtext.toString();
  }
  private class SetupSymbolTable implements Def.Visitor<Env,Env> {
      public Env visit(DFun fun, Env env) {

          env.addFun(fun.id_, typeCode(fun.type_));
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
          if(functionName == "main"){
              //Checks all statement in the function
              for (Stm st : functionStms) {
                  st.accept(new compileStm() , env);
              }
          }


          //env.deleteScope();

          return env;
      }
  }
  private class compileStm implements Stm.Visitor<Env, Env>{
        public Env visit(SDecls p, Env env) {
            return null;
        }
        public Env visit(SExp p, Env env) {
            return null;
        }
        public Env visit(SIfElse p, Env env) {
            return null;
        }
        public Env visit(SBlock p, Env env) {
            return null;
        }
        public Env visit(SInit p, Env env) {
            return null;
        }
        public Env visit(SReturn p, Env env) {
            return null;
        }
        public Env visit(SWhile p , Env env) {
            return null;
        }
  }
  private class CompileExp implements Exp.Visitor<Void,Env> {

     public Void visit(EInt p, Env env) {
         output.add("istore_"+p.integer_.toString()+"\n");
         return null;
      }

      public Void visit(EDouble p, Env env) {
          return null;
      }

      public Void visit(EFalse p, Env env) {
          output.add("iconst_0\n");

          return null;
      }

      public Void visit(EId p, Env env) {
          Integer register = env.variables.get(p.id_);
          output.add("iload_"+register.toString()+"\n");

          return null;
      }

      public Void visit(ETrue p, Env env) {
          output.add("iconst_1\n");
          return null;
      }

      public Void visit(EPlus p, Env env){
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("iadd\n");
          return null;
      }

      public Void visit(EAnd p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("iand\n");
          return null;
      }

      public Void visit(EApp p, Env env) {

          return null;
      }

      public Void visit(EAss p, Env env) {
          Integer reg = env.variables.get(p.id_);
          p.exp_.accept(new CompileExp(), env);
          output.add("istore_" +reg+"\n");
          return null;

      }

      public Void visit(EDiv p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("idiv\n");
          return null;

      }

      public Void visit(EEq p, Env env) {


          return null;

      }

      public Void visit(EGt p, Env env) {
          return null;

      }

      public Void visit(EGtEq p, Env env) {
          return null;

      }

      public Void visit(ELt p, Env env) {
          return null;

      }

      public Void visit(ELtEq p, Env env) {
          return null;

      }

      public Void visit(EMinus p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("isub\n");

          return null;

      }

      public Void visit(ENEq p, Env env) {
          return null;

      }

      public Void visit(EOr p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("ior\n");

          return null;

      }

      public Void visit(EPostDecr p, Env env) {
          Integer reg = env.variables.get(p.id_);
          output.add("iinc " + reg + "iconst_m1");
          output.add("iload_" + reg);

          return null;

      }

      public Void visit(EPostIncr p, Env env) {
          Integer reg = env.variables.get(p.id_);
          output.add("iinc " + reg + "iconst_1");
          output.add("iload_" + reg);
          return null;

      }

      public Void visit(EPreDecr p, Env env) {
          Integer reg = env.variables.get(p.id_);
          output.add("iload_" + reg);
          output.add("iinc " + reg + "iconst_m1");
          return null;

      }

      public Void visit(EPreIncr p, Env env) {
          Integer reg = env.variables.get(p.id_);
          output.add("iload_" + reg);
          output.add("iinc " + reg + "iconst_1");
          return null;

      }

      public Void visit(ETimes p, Env env) {
          p.exp_1.accept(new CompileExp(), env);
          p.exp_2.accept(new CompileExp(), env);
          output.add("imul\n");

          return null;

      }
  }
}
