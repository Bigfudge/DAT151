.class public ass_in_cmp
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

  invokestatic ass_in_cmp/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 1000
.limit stack 1000
iconst_5
istore 0
iload 0

iload 0
iconst_1
iadd
istore 0
iload 0
iload 0
iload 0
iconst_1
iadd
istore 0
if_icmpeq L3
iconst_0
goto L4
L3:
iconst_1
L4:
iconst_0
if_icmpeq L1
iconst_0
invokestatic Runtime/printInt(I)V
goto L2
L1:
iload 0
invokestatic Runtime/printInt(I)V
L2:

iconst_0
ireturn
iconst_0
areturn

.end method
