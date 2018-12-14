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
.limit locals 1000
.limit stack 1000
iconst_0
istore 0
iload 0

iconst_0
if_icmpeq L1
iconst_1
istore 1
iload 1
goto L2
L1:
iconst_0
L2:

iload 1
iload 1
iconst_1
iadd
istore 1
istore 2
iload 2

iconst_0
ireturn
iconst_0
areturn

.end method
