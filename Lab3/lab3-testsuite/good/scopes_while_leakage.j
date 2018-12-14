.class public scopes_while_leakage
.super java/lang/Object

.method public <init>()V
  .limit locals 1

  aload_0
  invokespecial java/lang/Object/<init>()V
  return

.end method

.method public static main([Ljava/lang/String;)V
  .limit locals 1
  .limit stack  1

  invokestatic scopes_while_leakage/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0

iconst_0
istore_1

label_0f2ebe9f-db9f-44c4-b488-676257ccfad3
iload_1
iload_1
iconst_1
iadd
istore_1
iconst_1
if_icmplt label_eefeebc5-9715-4cf4-8c63-4ae1d0244296
iconst_0
goto label_4b6c4aae-434f-4e15-ab17-e9fd114cd4b6
label_eefeebc5-9715-4cf4-8c63-4ae1d0244296
iconst_1
label_4b6c4aae-434f-4e15-ab17-e9fd114cd4b6
iconst_0
if icmpeq label_089fd9ac-94e2-4733-ba9a-c1fcff57d3b8
iconst_1
istore_0
goto label_0f2ebe9f-db9f-44c4-b488-676257ccfad3
label_089fd9ac-94e2-4733-ba9a-c1fcff57d3b8

iload_0
iconst_1
if_icmpeq label_69a34cdb-1dec-4e92-bc55-cad96119199f
iconst_0
goto label_bbb58cb3-f64b-4aca-b8be-19a809f12428
label_69a34cdb-1dec-4e92-bc55-cad96119199f
iconst_1
label_bbb58cb3-f64b-4aca-b8be-19a809f12428
iconst_0

iload_0
istore_3

iconst_0
ireturn

.end method
