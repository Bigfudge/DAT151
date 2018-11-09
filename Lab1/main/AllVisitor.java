package main;

import main.Absyn.*;

/** BNFC-Generated All Visitor */
public interface AllVisitor<R,A> extends
  main.Absyn.Program.Visitor<R,A>,
  main.Absyn.Def.Visitor<R,A>,
  main.Absyn.Arg.Visitor<R,A>,
  main.Absyn.Stm.Visitor<R,A>,
  main.Absyn.Exp.Visitor<R,A>,
  main.Absyn.Type.Visitor<R,A>
{}
