package main.Absyn; // Java Package generated by the BNF Converter.

public class EIncr extends Exp {
  public final Exp exp_;
  public EIncr(Exp p1) { exp_ = p1; }

  public <R,A> R accept(main.Absyn.Exp.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof main.Absyn.EIncr) {
      main.Absyn.EIncr x = (main.Absyn.EIncr)o;
      return this.exp_.equals(x.exp_);
    }
    return false;
  }

  public int hashCode() {
    return this.exp_.hashCode();
  }


}
