JAVAC=javac
JAVAC_FLAGS=-sourcepath .
JAVA=java
JAVA_FLAGS=
PARSER=${JAVA} ${JAVA_FLAGS} java_cup.Main
PARSER_FLAGS=-nopositions -expect 100
LEXER=${JAVA} ${JAVA_FLAGS} JLex.Main
LEXER_FLAGS=
all: test

test: absyn main/Yylex.class main/PrettyPrinter.class main/Test.class main/ComposVisitor.class main/AbstractVisitor.class main/FoldVisitor.class main/AllVisitor.class main/parser.class main/sym.class main/Test.class

.PHONY: absyn

%.class: %.java
	${JAVAC} ${JAVAC_FLAGS} $^

absyn: main/Absyn/Program.java main/Absyn/PDefs.java main/Absyn/Def.java main/Absyn/DFun.java main/Absyn/DStm.java main/Absyn/DTypedef.java main/Absyn/Arg.java main/Absyn/AType.java main/Absyn/ATypeId.java main/Absyn/AExp.java main/Absyn/AConst.java main/Absyn/Stm.java main/Absyn/SExp.java main/Absyn/SReturn.java main/Absyn/SWhile.java main/Absyn/SBlock.java main/Absyn/SIfElse.java main/Absyn/SDecl.java main/Absyn/SDecls.java main/Absyn/SInit.java main/Absyn/Exp.java main/Absyn/EInt.java main/Absyn/EDouble.java main/Absyn/EString.java main/Absyn/ETrue.java main/Absyn/EFalse.java main/Absyn/EId.java main/Absyn/ECall.java main/Absyn/EPIncr.java main/Absyn/EPDecr.java main/Absyn/EIncr.java main/Absyn/EDecr.java main/Absyn/ENeg.java main/Absyn/EMul.java main/Absyn/EDiv.java main/Absyn/EAdd.java main/Absyn/ESub.java main/Absyn/ELt.java main/Absyn/EGt.java main/Absyn/ELEq.java main/Absyn/EGEq.java main/Absyn/EEq.java main/Absyn/ENEq.java main/Absyn/EAnd.java main/Absyn/EOr.java main/Absyn/EAss.java main/Absyn/ListExp.java main/Absyn/ListDef.java main/Absyn/ListArg.java main/Absyn/ListId.java main/Absyn/ListStm.java main/Absyn/Type.java main/Absyn/Tbool.java main/Absyn/Tdouble.java main/Absyn/Tint.java main/Absyn/Tstring.java main/Absyn/Tvoid.java
	${JAVAC} ${JAVAC_FLAGS} $^

main/Yylex.java: main/Yylex
	${LEXER} ${LEXER_FLAGS} main/Yylex

main/parser.java main/sym.java: main/_cup.cup
	${PARSER} ${PARSER_FLAGS} main/_cup.cup
	mv parser.java sym.java main/

main/Yylex.class: main/Yylex.java main/parser.java main/sym.java

main/sym.class: main/sym.java

main/parser.class: main/parser.java main/sym.java

main/PrettyPrinter.class: main/PrettyPrinter.java

clean:
	rm -f main/Absyn/*.class main/*.class

distclean: vclean

vclean:
	 rm -f main/Absyn/Program.java main/Absyn/PDefs.java main/Absyn/Def.java main/Absyn/DFun.java main/Absyn/DStm.java main/Absyn/DTypedef.java main/Absyn/Arg.java main/Absyn/AType.java main/Absyn/ATypeId.java main/Absyn/AExp.java main/Absyn/AConst.java main/Absyn/Stm.java main/Absyn/SExp.java main/Absyn/SReturn.java main/Absyn/SWhile.java main/Absyn/SBlock.java main/Absyn/SIfElse.java main/Absyn/SDecl.java main/Absyn/SDecls.java main/Absyn/SInit.java main/Absyn/Exp.java main/Absyn/EInt.java main/Absyn/EDouble.java main/Absyn/EString.java main/Absyn/ETrue.java main/Absyn/EFalse.java main/Absyn/EId.java main/Absyn/ECall.java main/Absyn/EPIncr.java main/Absyn/EPDecr.java main/Absyn/EIncr.java main/Absyn/EDecr.java main/Absyn/ENeg.java main/Absyn/EMul.java main/Absyn/EDiv.java main/Absyn/EAdd.java main/Absyn/ESub.java main/Absyn/ELt.java main/Absyn/EGt.java main/Absyn/ELEq.java main/Absyn/EGEq.java main/Absyn/EEq.java main/Absyn/ENEq.java main/Absyn/EAnd.java main/Absyn/EOr.java main/Absyn/EAss.java main/Absyn/ListExp.java main/Absyn/ListDef.java main/Absyn/ListArg.java main/Absyn/ListId.java main/Absyn/ListStm.java main/Absyn/Type.java main/Absyn/Tbool.java main/Absyn/Tdouble.java main/Absyn/Tint.java main/Absyn/Tstring.java main/Absyn/Tvoid.java main/Absyn/Program.class main/Absyn/PDefs.class main/Absyn/Def.class main/Absyn/DFun.class main/Absyn/DStm.class main/Absyn/DTypedef.class main/Absyn/Arg.class main/Absyn/AType.class main/Absyn/ATypeId.class main/Absyn/AExp.class main/Absyn/AConst.class main/Absyn/Stm.class main/Absyn/SExp.class main/Absyn/SReturn.class main/Absyn/SWhile.class main/Absyn/SBlock.class main/Absyn/SIfElse.class main/Absyn/SDecl.class main/Absyn/SDecls.class main/Absyn/SInit.class main/Absyn/Exp.class main/Absyn/EInt.class main/Absyn/EDouble.class main/Absyn/EString.class main/Absyn/ETrue.class main/Absyn/EFalse.class main/Absyn/EId.class main/Absyn/ECall.class main/Absyn/EPIncr.class main/Absyn/EPDecr.class main/Absyn/EIncr.class main/Absyn/EDecr.class main/Absyn/ENeg.class main/Absyn/EMul.class main/Absyn/EDiv.class main/Absyn/EAdd.class main/Absyn/ESub.class main/Absyn/ELt.class main/Absyn/EGt.class main/Absyn/ELEq.class main/Absyn/EGEq.class main/Absyn/EEq.class main/Absyn/ENEq.class main/Absyn/EAnd.class main/Absyn/EOr.class main/Absyn/EAss.class main/Absyn/ListExp.class main/Absyn/ListDef.class main/Absyn/ListArg.class main/Absyn/ListId.class main/Absyn/ListStm.class main/Absyn/Type.class main/Absyn/Tbool.class main/Absyn/Tdouble.class main/Absyn/Tint.class main/Absyn/Tstring.class main/Absyn/Tvoid.class
	 rm -f main/Absyn/*.class
	 rmdir main/Absyn/
	 rm -f main/Yylex main/_cup.cup main/Yylex.java main/VisitSkel.java main/ComposVisitor.java main/AbstractVisitor.java main/FoldVisitor.java main/AllVisitor.java main/PrettyPrinter.java main/Skeleton.java main/Test.java main/parser.java main/sym.java main/*.class
	 rm -f Makefile
	 rmdir -p main/
