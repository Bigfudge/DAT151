package Fun.Absyn; // Java Package generated by the BNF Converter.

public class Prog  extends Program {
  public final ListDef listdef_;
  public final Main main_;
  public Prog(ListDef p1, Main p2) { listdef_ = p1; main_ = p2; }

  public <R,A> R accept(Fun.Absyn.Program.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof Fun.Absyn.Prog) {
      Fun.Absyn.Prog x = (Fun.Absyn.Prog)o;
      return this.listdef_.equals(x.listdef_) && this.main_.equals(x.main_);
    }
    return false;
  }

  public int hashCode() {
    return 37*(this.listdef_.hashCode())+this.main_.hashCode();
  }


}
