.class public branch_value_leaks
.super java/lang/Object

.method public <init>()V
  .limit locals 1
  .limit stack  1

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
if_icmpeq label_8755c648-ee5d-429e-9fc1-ab7d9ff078aa:
iconst_1
istore_0
goto label_453786db-870f-4284-a35c-68c3404ba5b1:
label_8755c648-ee5d-429e-9fc1-ab7d9ff078aa:
iconst_0
label_453786db-870f-4284-a35c-68c3404ba5b1:

iload_0
iload_0
iconst_1
iadd
istore_0
istore_2

iconst_0
ireturn

.end method
