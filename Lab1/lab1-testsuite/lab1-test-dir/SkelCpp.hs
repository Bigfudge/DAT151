module SkelCpp where

-- Haskell module generated by the BNF converter

import AbsCpp
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transId :: Id -> Result
transId x = case x of
  Id string -> failure x
transProgram :: Program -> Result
transProgram x = case x of
  PDefs defs -> failure x
transDef :: Def -> Result
transDef x = case x of
  DFun type_ id args stms -> failure x
  DFunn type_ id args -> failure x
  DDecl decl -> failure x
  DTypedef type_ id -> failure x
  DUsing id -> failure x
transArg :: Arg -> Result
transArg x = case x of
  AType type_ -> failure x
  ATypeId type_ id -> failure x
  AExp type_ id exp -> failure x
  AConst type_ id -> failure x
transDecl :: Decl -> Result
transDecl x = case x of
  Test type_ id -> failure x
  Test2 type_ id exp -> failure x
transStm :: Stm -> Result
transStm x = case x of
  SExp exp -> failure x
  SReturn exp -> failure x
  SWhile exp stm -> failure x
  SDoWhile stm1 exp stm2 -> failure x
  SBlock stms -> failure x
  SFor decl exp1 exp2 stm -> failure x
  SIfElse exp stm1 stm2 -> failure x
  SDecl decl -> failure x
  SDecls type_ id ids -> failure x
  SInit type_ id exp -> failure x
  SExps type_ exps -> failure x
transExp :: Exp -> Result
transExp x = case x of
  EInt integer -> failure x
  EDouble double -> failure x
  EString string -> failure x
  ETrue -> failure x
  EFalse -> failure x
  EId id -> failure x
  EQuaConst id ids -> failure x
  EIndex exp1 exp2 -> failure x
  ECall id exps -> failure x
  EStut exp1 exp2 -> failure x
  EPro exp1 exp2 -> failure x
  EPIncr exp -> failure x
  EPDecr exp -> failure x
  EIncr exp -> failure x
  EDecr exp -> failure x
  EDere exp -> failure x
  ENege exp -> failure x
  ENeg exp -> failure x
  EMul exp1 exp2 -> failure x
  EDiv exp1 exp2 -> failure x
  EAdd exp1 exp2 -> failure x
  ESub exp1 exp2 -> failure x
  ELShift exp1 exp2 -> failure x
  ERShift exp1 exp2 -> failure x
  ELt exp1 exp2 -> failure x
  EGt exp1 exp2 -> failure x
  ELEq exp1 exp2 -> failure x
  EGEq exp1 exp2 -> failure x
  EEq exp1 exp2 -> failure x
  ENEq exp1 exp2 -> failure x
  EAnd exp1 exp2 -> failure x
  EOr exp1 exp2 -> failure x
  EAss exp1 exp2 -> failure x
  EAssDec exp1 exp2 -> failure x
  EAssInc exp1 exp2 -> failure x
  ECond exp1 exp2 exp3 -> failure x
  EThrow exp -> failure x
transType :: Type -> Result
transType x = case x of
  Tbool -> failure x
  Tdouble -> failure x
  Tint -> failure x
  Tstring -> failure x
  Tvoid -> failure x

