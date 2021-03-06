package main.Absyn; // Java Package generated by the BNF Converter.

public abstract class Def implements java.io.Serializable {
  public abstract <R,A> R accept(Def.Visitor<R,A> v, A arg);
  public interface Visitor <R,A> {
    public R visit(main.Absyn.DFun p, A arg);
    public R visit(main.Absyn.DStm p, A arg);
    public R visit(main.Absyn.DTypedef p, A arg);

  }

}
