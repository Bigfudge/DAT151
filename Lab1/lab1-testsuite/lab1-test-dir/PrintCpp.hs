{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}
module PrintCpp where

-- pretty-printer generated by the BNF converter

import AbsCpp
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . new i . rend i ts
    t  : ts@(p:_) | closingOrPunctuation p -> showString t . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else ' ':s)
  closingOrPunctuation [c] = c `elem` ")],;"
  closingOrPunctuation _   = False

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)

-- the printer class does the job
class Print a where
  prt :: Int -> a -> Doc
  prtList :: Int -> [a] -> Doc
  prtList i = concatD . map (prt i)

instance Print a => Print [a] where
  prt = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList _ s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j<i then parenth else id


instance Print Integer where
  prt _ x = doc (shows x)


instance Print Double where
  prt _ x = doc (shows x)



instance Print QuaConstId where
  prt _ (QuaConstId i) = doc (showString ( i))
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString "::"), prt 0 xs])


instance Print Program where
  prt i e = case e of
    PDefs defs -> prPrec i 0 (concatD [prt 0 defs])

instance Print Def where
  prt i e = case e of
    DFunStm type_ id args stms -> prPrec i 0 (concatD [prt 0 type_, prt 0 id, doc (showString "("), prt 0 args, doc (showString ")"), doc (showString "{"), prt 1 stms, doc (showString "}")])
    DFun type_ id args -> prPrec i 0 (concatD [prt 0 type_, prt 0 id, doc (showString "("), prt 0 args, doc (showString ")"), doc (showString ";")])
    DDecl stm -> prPrec i 0 (concatD [prt 3 stm])
    DUsing id -> prPrec i 0 (concatD [doc (showString "using"), prt 0 id, doc (showString ";")])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print Arg where
  prt i e = case e of
    AType type_ -> prPrec i 0 (concatD [prt 0 type_])
    ATypeConst type_ -> prPrec i 0 (concatD [doc (showString "const"), prt 0 type_])
    ATypeId type_ id -> prPrec i 0 (concatD [prt 0 type_, prt 0 id])
    AExp type_ id exp -> prPrec i 0 (concatD [prt 0 type_, prt 0 id, doc (showString "="), prt 0 exp])
    AConst type_ id -> prPrec i 0 (concatD [doc (showString "const"), prt 0 type_, prt 0 id])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print Decl where
  prt i e = case e of
    Decl id -> prPrec i 0 (concatD [prt 0 id])
    DeclExp id exp -> prPrec i 0 (concatD [prt 0 id, doc (showString "="), prt 0 exp])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print Stm where
  prt i e = case e of
    SDeclConst type_ decls -> prPrec i 3 (concatD [doc (showString "const"), prt 0 type_, prt 0 decls, doc (showString ";")])
    STypedef type_ id -> prPrec i 3 (concatD [doc (showString "typedef"), prt 0 type_, prt 0 id, doc (showString ";")])
    SDecl type_ decls -> prPrec i 3 (concatD [prt 0 type_, prt 0 decls, doc (showString ";")])
    SExp exp -> prPrec i 2 (concatD [prt 0 exp, doc (showString ";")])
    SReturn exp -> prPrec i 1 (concatD [doc (showString "return"), prt 0 exp, doc (showString ";")])
    SWhile exp stm -> prPrec i 1 (concatD [doc (showString "while"), doc (showString "("), prt 0 exp, doc (showString ")"), prt 0 stm])
    SDoWhile stm1 exp stm2 -> prPrec i 1 (concatD [doc (showString "do"), prt 0 stm1, doc (showString "while"), doc (showString "("), prt 0 exp, doc (showString ")"), prt 0 stm2])
    SFor stm1 exp1 exp2 stm2 -> prPrec i 1 (concatD [doc (showString "for"), doc (showString "("), prt 3 stm1, prt 0 exp1, doc (showString ";"), prt 0 exp2, doc (showString ")"), prt 0 stm2])
    SIf exp stm -> prPrec i 1 (concatD [doc (showString "if"), doc (showString "("), prt 0 exp, doc (showString ")"), prt 0 stm])
    SIfElse exp stm1 stm2 -> prPrec i 1 (concatD [doc (showString "if"), doc (showString "("), prt 0 exp, doc (showString ")"), prt 0 stm1, doc (showString "else"), prt 0 stm2])
    SBlock stms -> prPrec i 0 (concatD [doc (showString "{"), prt 1 stms, doc (showString "}")])
    SEnd -> prPrec i 0 (concatD [doc (showString ";")])
  prtList 1 [] = (concatD [])
  prtList 1 (x:xs) = (concatD [prt 1 x, prt 1 xs])
instance Print Associative where
  prt i e = case e of
    PFun exps -> prPrec i 0 (concatD [doc (showString "("), prt 0 exps, doc (showString ")")])
    PIndex exp -> prPrec i 0 (concatD [doc (showString "["), prt 0 exp, doc (showString "]")])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print Type where
  prt i e = case e of
    TAddr type_ -> prPrec i 0 (concatD [prt 1 type_, doc (showString "&")])
    TBool -> prPrec i 1 (concatD [doc (showString "bool")])
    TDouble -> prPrec i 1 (concatD [doc (showString "double")])
    TInt -> prPrec i 1 (concatD [doc (showString "int")])
    TVoid -> prPrec i 1 (concatD [doc (showString "void")])
    TChar -> prPrec i 1 (concatD [doc (showString "char")])
    TId id -> prPrec i 1 (concatD [prt 0 id])

instance Print Id where
  prt i e = case e of
    IId quaconstids -> prPrec i 0 (concatD [prt 0 quaconstids])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print Exp where
  prt i e = case e of
    EInt n -> prPrec i 16 (concatD [prt 0 n])
    EDouble d -> prPrec i 16 (concatD [prt 0 d])
    EString strs -> prPrec i 16 (concatD [prt 0 strs])
    EChar c -> prPrec i 16 (concatD [prt 0 c])
    ETrue -> prPrec i 16 (concatD [doc (showString "true")])
    EFalse -> prPrec i 16 (concatD [doc (showString "false")])
    EId id -> prPrec i 16 (concatD [prt 0 id])
    ECall id associatives -> prPrec i 16 (concatD [prt 0 id, prt 0 associatives])
    EStut exp1 exp2 -> prPrec i 15 (concatD [prt 15 exp1, doc (showString "."), prt 16 exp2])
    EPro exp1 exp2 -> prPrec i 15 (concatD [prt 15 exp1, doc (showString "->"), prt 16 exp2])
    EPIncr exp -> prPrec i 14 (concatD [prt 14 exp, doc (showString "++")])
    EPDecr exp -> prPrec i 14 (concatD [prt 14 exp, doc (showString "--")])
    EIncr exp -> prPrec i 13 (concatD [doc (showString "++"), prt 13 exp])
    EDecr exp -> prPrec i 13 (concatD [doc (showString "--"), prt 13 exp])
    EDere exp -> prPrec i 13 (concatD [doc (showString "*"), prt 13 exp])
    ENege exp -> prPrec i 13 (concatD [doc (showString "!"), prt 13 exp])
    EMul exp1 exp2 -> prPrec i 12 (concatD [prt 12 exp1, doc (showString "*"), prt 13 exp2])
    EDiv exp1 exp2 -> prPrec i 12 (concatD [prt 12 exp1, doc (showString "/"), prt 13 exp2])
    EMod exp1 exp2 -> prPrec i 12 (concatD [prt 12 exp1, doc (showString "%"), prt 13 exp2])
    EAdd exp1 exp2 -> prPrec i 11 (concatD [prt 11 exp1, doc (showString "+"), prt 12 exp2])
    ESub exp1 exp2 -> prPrec i 11 (concatD [prt 11 exp1, doc (showString "-"), prt 12 exp2])
    ELShift exp1 exp2 -> prPrec i 10 (concatD [prt 10 exp1, doc (showString "<<"), prt 11 exp2])
    ERShift exp1 exp2 -> prPrec i 10 (concatD [prt 10 exp1, doc (showString ">>"), prt 11 exp2])
    ELt exp1 exp2 -> prPrec i 9 (concatD [prt 9 exp1, doc (showString "<"), prt 10 exp2])
    EGt exp1 exp2 -> prPrec i 9 (concatD [prt 9 exp1, doc (showString ">"), prt 10 exp2])
    ELEq exp1 exp2 -> prPrec i 9 (concatD [prt 9 exp1, doc (showString "<="), prt 10 exp2])
    EGEq exp1 exp2 -> prPrec i 9 (concatD [prt 9 exp1, doc (showString ">="), prt 10 exp2])
    EEq exp1 exp2 -> prPrec i 8 (concatD [prt 8 exp1, doc (showString "=="), prt 9 exp2])
    ENEq exp1 exp2 -> prPrec i 8 (concatD [prt 8 exp1, doc (showString "!="), prt 9 exp2])
    EAnd exp1 exp2 -> prPrec i 4 (concatD [prt 4 exp1, doc (showString "&&"), prt 5 exp2])
    EOr exp1 exp2 -> prPrec i 3 (concatD [prt 3 exp1, doc (showString "||"), prt 4 exp2])
    EAss exp1 exp2 -> prPrec i 2 (concatD [prt 3 exp1, doc (showString "="), prt 2 exp2])
    EAssDec exp1 exp2 -> prPrec i 2 (concatD [prt 3 exp1, doc (showString "-="), prt 2 exp2])
    EAssInc exp1 exp2 -> prPrec i 2 (concatD [prt 3 exp1, doc (showString "+="), prt 2 exp2])
    ECond exp1 exp2 exp3 -> prPrec i 2 (concatD [prt 3 exp1, doc (showString "?"), prt 3 exp2, doc (showString ":"), prt 3 exp3])
    EThrow exp -> prPrec i 1 (concatD [doc (showString "throw"), prt 1 exp])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])

