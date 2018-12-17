.class public ass_in_cmp
.super java/lang/Object

.method public <init>()V
  .limit locals 500
  .limit stack  500

  aload_0
  invokespecial java/lang/Object/<init>()V
  return

.end method

.method public static main([Ljava/lang/String;)V
  .limit locals 500
  .limit stack  500

  invokestatic ass_in_cmp/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 500
.limit stack 500
iconst_5
istore 0
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
iconst_1
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
nop
.end method
