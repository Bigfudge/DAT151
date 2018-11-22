import CPP.Absyn.*;

public class TypeChecker {
    public interface Visitor <R,A> {
      public R visit(CPP.Absyn.Program p, A arg);

    }

    public void typecheck(Program p) {
        PDefs test = (PDefs)p;
        ListDef hej = test.listdef_;

        // p.accept(Visitor <R,A>);
        // PDefs test = p.accept();
        // ListDef test2 = test.listdef_;
        for (Def def : hej) {
            System.out.println("Död");
            System.out.println(hej.size());
        }
        // for (int i =0;i<p.length() ; i++ ) {
        //     System.out.println("PLT SUGER");
        //
        // }
        throw new TypeException("Not yet a typechecker");
    }

}
