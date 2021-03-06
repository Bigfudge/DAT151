package main.Absyn; // Java Package generated by the BNF Converter.

public class EGEq extends Exp {
  public final Exp exp_1, exp_2;
  public EGEq(Exp p1, Exp p2) { exp_1 = p1; exp_2 = p2; }

  public <R,A> R accept(main.Absyn.Exp.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof main.Absyn.EGEq) {
      main.Absyn.EGEq x = (main.Absyn.EGEq)o;
      return this.exp_1.equals(x.exp_1) && this.exp_2.equals(x.exp_2);
    }
    return false;
  }

  public int hashCode() {
    return 37*(this.exp_1.hashCode())+this.exp_2.hashCode();
  }


}
