.class public core006
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

  invokestatic core006/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 45
istore_0
iload_0

ldc 36
ldc 67
iadd
istore_1
iload_1

iload_0
invokestatic Runtime/printInt(I)V

iload_1
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
