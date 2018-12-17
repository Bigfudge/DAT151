.class public ass_in_arith
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

  invokestatic ass_in_arith/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 500
.limit stack 500
ldc 50
istore 0
iload 0
iload 0
iload 0
iconst_1
iadd
istore 0
iload 0
iload 0
iconst_1
isub
istore 0
iadd
istore 1
iload 1
iload 1
invokestatic Runtime/printInt(I)V
iload 0
invokestatic Runtime/printInt(I)V
ldc 10
istore 0
iload 0
iload 0
iload 0
iconst_1
iadd
istore 0
iadd
iload 0
iadd
invokestatic Runtime/printInt(I)V
iload 0
invokestatic Runtime/printInt(I)V
iconst_0
ireturn
nop
.end method
