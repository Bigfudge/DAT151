package main;
import main.Absyn.*;
/** BNFC-Generated Abstract Visitor */
public class AbstractVisitor<R,A> implements AllVisitor<R,A> {
/* Program */
    public R visit(main.Absyn.PDefs p, A arg) { return visitDefault(p, arg); }
    public R visitDefault(main.Absyn.Program p, A arg) {
      throw new IllegalArgumentException(this.getClass().getName() + ": " + p);
    }
/* Def */
    public R visit(main.Absyn.DFun p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.DStm p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.DTypedef p, A arg) { return visitDefault(p, arg); }
    public R visitDefault(main.Absyn.Def p, A arg) {
      throw new IllegalArgumentException(this.getClass().getName() + ": " + p);
    }
/* Arg */
    public R visit(main.Absyn.AType p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.ATypeId p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.AExp p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.AConst p, A arg) { return visitDefault(p, arg); }
    public R visitDefault(main.Absyn.Arg p, A arg) {
      throw new IllegalArgumentException(this.getClass().getName() + ": " + p);
    }
/* Stm */
    public R visit(main.Absyn.SExp p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.SReturn p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.SWhile p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.SBlock p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.SIfElse p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.SDecl p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.SDecls p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.SInit p, A arg) { return visitDefault(p, arg); }
    public R visitDefault(main.Absyn.Stm p, A arg) {
      throw new IllegalArgumentException(this.getClass().getName() + ": " + p);
    }
/* Exp */
    public R visit(main.Absyn.EInt p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EDouble p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EString p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.ETrue p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EFalse p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EId p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.ECall p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.EPIncr p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EPDecr p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.EIncr p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EDecr p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.ENeg p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.EMul p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EDiv p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.EAdd p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.ESub p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.ELt p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EGt p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.ELEq p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.EGEq p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.EEq p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.ENEq p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.EAnd p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.EOr p, A arg) { return visitDefault(p, arg); }

    public R visit(main.Absyn.EAss p, A arg) { return visitDefault(p, arg); }







    public R visitDefault(main.Absyn.Exp p, A arg) {
      throw new IllegalArgumentException(this.getClass().getName() + ": " + p);
    }
/* Type */
    public R visit(main.Absyn.Tbool p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.Tdouble p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.Tint p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.Tstring p, A arg) { return visitDefault(p, arg); }
    public R visit(main.Absyn.Tvoid p, A arg) { return visitDefault(p, arg); }
    public R visitDefault(main.Absyn.Type p, A arg) {
      throw new IllegalArgumentException(this.getClass().getName() + ": " + p);
    }

}
