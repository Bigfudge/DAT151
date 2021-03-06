package main;
import main.Absyn.*;
/** BNFC-Generated Composition Visitor
*/

public class ComposVisitor<A> implements
  main.Absyn.Program.Visitor<main.Absyn.Program,A>,
  main.Absyn.Def.Visitor<main.Absyn.Def,A>,
  main.Absyn.Arg.Visitor<main.Absyn.Arg,A>,
  main.Absyn.Stm.Visitor<main.Absyn.Stm,A>,
  main.Absyn.Exp.Visitor<main.Absyn.Exp,A>,
  main.Absyn.Type.Visitor<main.Absyn.Type,A>
{
/* Program */
    public Program visit(main.Absyn.PDefs p, A arg)
    {
      ListDef listdef_ = new ListDef();
      for (Def x : p.listdef_)
      {
        listdef_.add(x.accept(this,arg));
      }
      return new main.Absyn.PDefs(listdef_);
    }
/* Def */
    public Def visit(main.Absyn.DFun p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      String id_ = p.id_;
      ListArg listarg_ = new ListArg();
      for (Arg x : p.listarg_)
      {
        listarg_.add(x.accept(this,arg));
      }
      ListStm liststm_ = new ListStm();
      for (Stm x : p.liststm_)
      {
        liststm_.add(x.accept(this,arg));
      }
      return new main.Absyn.DFun(type_, id_, listarg_, liststm_);
    }    public Def visit(main.Absyn.DStm p, A arg)
    {
      Stm stm_ = p.stm_.accept(this, arg);
      return new main.Absyn.DStm(stm_);
    }    public Def visit(main.Absyn.DTypedef p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.DTypedef(type_, exp_);
    }
/* Arg */
    public Arg visit(main.Absyn.AType p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      return new main.Absyn.AType(type_);
    }    public Arg visit(main.Absyn.ATypeId p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      String id_ = p.id_;
      return new main.Absyn.ATypeId(type_, id_);
    }    public Arg visit(main.Absyn.AExp p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      String id_ = p.id_;
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.AExp(type_, id_, exp_);
    }    public Arg visit(main.Absyn.AConst p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      String id_ = p.id_;
      return new main.Absyn.AConst(type_, id_);
    }
/* Stm */
    public Stm visit(main.Absyn.SExp p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.SExp(exp_);
    }    public Stm visit(main.Absyn.SReturn p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.SReturn(exp_);
    }    public Stm visit(main.Absyn.SWhile p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      Stm stm_ = p.stm_.accept(this, arg);
      return new main.Absyn.SWhile(exp_, stm_);
    }    public Stm visit(main.Absyn.SBlock p, A arg)
    {
      ListStm liststm_ = new ListStm();
      for (Stm x : p.liststm_)
      {
        liststm_.add(x.accept(this,arg));
      }
      return new main.Absyn.SBlock(liststm_);
    }    public Stm visit(main.Absyn.SIfElse p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      Stm stm_1 = p.stm_1.accept(this, arg);
      Stm stm_2 = p.stm_2.accept(this, arg);
      return new main.Absyn.SIfElse(exp_, stm_1, stm_2);
    }    public Stm visit(main.Absyn.SDecl p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      String id_ = p.id_;
      return new main.Absyn.SDecl(type_, id_);
    }    public Stm visit(main.Absyn.SDecls p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      String id_ = p.id_;
      ListId listid_ = p.listid_;
      return new main.Absyn.SDecls(type_, id_, listid_);
    }    public Stm visit(main.Absyn.SInit p, A arg)
    {
      Type type_ = p.type_.accept(this, arg);
      String id_ = p.id_;
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.SInit(type_, id_, exp_);
    }
/* Exp */
    public Exp visit(main.Absyn.EInt p, A arg)
    {
      Integer integer_ = p.integer_;
      return new main.Absyn.EInt(integer_);
    }    public Exp visit(main.Absyn.EDouble p, A arg)
    {
      Double double_ = p.double_;
      return new main.Absyn.EDouble(double_);
    }    public Exp visit(main.Absyn.EString p, A arg)
    {
      String string_ = p.string_;
      return new main.Absyn.EString(string_);
    }    public Exp visit(main.Absyn.ETrue p, A arg)
    {
      return new main.Absyn.ETrue();
    }    public Exp visit(main.Absyn.EFalse p, A arg)
    {
      return new main.Absyn.EFalse();
    }    public Exp visit(main.Absyn.EId p, A arg)
    {
      String id_ = p.id_;
      return new main.Absyn.EId(id_);
    }    public Exp visit(main.Absyn.ECall p, A arg)
    {
      String id_ = p.id_;
      ListExp listexp_ = new ListExp();
      for (Exp x : p.listexp_)
      {
        listexp_.add(x.accept(this,arg));
      }
      return new main.Absyn.ECall(id_, listexp_);
    }    public Exp visit(main.Absyn.EPIncr p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.EPIncr(exp_);
    }    public Exp visit(main.Absyn.EPDecr p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.EPDecr(exp_);
    }    public Exp visit(main.Absyn.EIncr p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.EIncr(exp_);
    }    public Exp visit(main.Absyn.EDecr p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.EDecr(exp_);
    }    public Exp visit(main.Absyn.ENeg p, A arg)
    {
      Exp exp_ = p.exp_.accept(this, arg);
      return new main.Absyn.ENeg(exp_);
    }    public Exp visit(main.Absyn.EMul p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EMul(exp_1, exp_2);
    }    public Exp visit(main.Absyn.EDiv p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EDiv(exp_1, exp_2);
    }    public Exp visit(main.Absyn.EAdd p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EAdd(exp_1, exp_2);
    }    public Exp visit(main.Absyn.ESub p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.ESub(exp_1, exp_2);
    }    public Exp visit(main.Absyn.ELt p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.ELt(exp_1, exp_2);
    }    public Exp visit(main.Absyn.EGt p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EGt(exp_1, exp_2);
    }    public Exp visit(main.Absyn.ELEq p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.ELEq(exp_1, exp_2);
    }    public Exp visit(main.Absyn.EGEq p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EGEq(exp_1, exp_2);
    }    public Exp visit(main.Absyn.EEq p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EEq(exp_1, exp_2);
    }    public Exp visit(main.Absyn.ENEq p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.ENEq(exp_1, exp_2);
    }    public Exp visit(main.Absyn.EAnd p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EAnd(exp_1, exp_2);
    }    public Exp visit(main.Absyn.EOr p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EOr(exp_1, exp_2);
    }    public Exp visit(main.Absyn.EAss p, A arg)
    {
      Exp exp_1 = p.exp_1.accept(this, arg);
      Exp exp_2 = p.exp_2.accept(this, arg);
      return new main.Absyn.EAss(exp_1, exp_2);
    }
/* Type */
    public Type visit(main.Absyn.Tbool p, A arg)
    {
      return new main.Absyn.Tbool();
    }    public Type visit(main.Absyn.Tdouble p, A arg)
    {
      return new main.Absyn.Tdouble();
    }    public Type visit(main.Absyn.Tint p, A arg)
    {
      return new main.Absyn.Tint();
    }    public Type visit(main.Absyn.Tstring p, A arg)
    {
      return new main.Absyn.Tstring();
    }    public Type visit(main.Absyn.Tvoid p, A arg)
    {
      return new main.Absyn.Tvoid();
    }
}