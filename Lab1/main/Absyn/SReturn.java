package main.Absyn; // Java Package generated by the BNF Converter.

public class SReturn extends Stm {
  public final Exp exp_;
  public SReturn(Exp p1) { exp_ = p1; }

  public <R,A> R accept(main.Absyn.Stm.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof main.Absyn.SReturn) {
      main.Absyn.SReturn x = (main.Absyn.SReturn)o;
      return this.exp_.equals(x.exp_);
    }
    return false;
  }

  public int hashCode() {
    return this.exp_.hashCode();
  }


}
