.class public ass_in_arith
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

  invokestatic ass_in_arith/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 50
istore_0

iload_0
iload_0
iconst_1
iadd
istore_0
iload_0
iload_0
iconst_1
iadd
istore_0
iadd
istore_1

iload_1
invokestatic Runtime/printInt(I)V

iload_0
invokestatic Runtime/printInt(I)V

ldc 10
istore_0
iload_0
iload_0
iload_0
iconst_1
iadd
istore_0
iadd
iload_0
iadd
invokestatic Runtime/printInt(I)V

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
