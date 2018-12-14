.class public branch_value_leaks
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

  invokestatic branch_value_leaks/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
istore_0

iconst_0
if_icmpeq label_1b9fe117-551f-4416-997c-4220437765e4
iconst_1
istore_0
goto label_ef41fc61-9cba-4b2a-acad-0d7819f139dd
label_1b9fe117-551f-4416-997c-4220437765e4
iconst_0
label_ef41fc61-9cba-4b2a-acad-0d7819f139dd

iload_0
iload_0
iconst_1
iadd
istore_0
istore_2

iconst_0
ireturn

.end method
