.class public core012
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

  invokestatic core012/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 56
istore_0

ldc 23
istore_1

iload_0
iload_1
iadd
invokestatic Runtime/printInt(I)V

iload_0
iload_1
isub
invokestatic Runtime/printInt(I)V

iload_0
iload_1
imul
invokestatic Runtime/printInt(I)V

ldc 45
ldc 2
idiv
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method