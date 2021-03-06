package main.Absyn; // Java Package generated by the BNF Converter.

public abstract class Exp implements java.io.Serializable {
  public abstract <R,A> R accept(Exp.Visitor<R,A> v, A arg);
  public interface Visitor <R,A> {
    public R visit(main.Absyn.EInt p, A arg);
    public R visit(main.Absyn.EDouble p, A arg);
    public R visit(main.Absyn.EString p, A arg);
    public R visit(main.Absyn.ETrue p, A arg);
    public R visit(main.Absyn.EFalse p, A arg);
    public R visit(main.Absyn.EId p, A arg);
    public R visit(main.Absyn.ECall p, A arg);
    public R visit(main.Absyn.EPIncr p, A arg);
    public R visit(main.Absyn.EPDecr p, A arg);
    public R visit(main.Absyn.EIncr p, A arg);
    public R visit(main.Absyn.EDecr p, A arg);
    public R visit(main.Absyn.ENeg p, A arg);
    public R visit(main.Absyn.EMul p, A arg);
    public R visit(main.Absyn.EDiv p, A arg);
    public R visit(main.Absyn.EAdd p, A arg);
    public R visit(main.Absyn.ESub p, A arg);
    public R visit(main.Absyn.ELt p, A arg);
    public R visit(main.Absyn.EGt p, A arg);
    public R visit(main.Absyn.ELEq p, A arg);
    public R visit(main.Absyn.EGEq p, A arg);
    public R visit(main.Absyn.EEq p, A arg);
    public R visit(main.Absyn.ENEq p, A arg);
    public R visit(main.Absyn.EAnd p, A arg);
    public R visit(main.Absyn.EOr p, A arg);
    public R visit(main.Absyn.EAss p, A arg);

  }

}
