.class public good17
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

  invokestatic good17/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 6
istore_0
iload_0


iload_0
ldc 7
iadd
istore_1
iload_1

iload_1
invokestatic Runtime/printInt(I)V

ldc 4
istore_2
iload_2
iload_2
invokestatic Runtime/printInt(I)V
iload_2
istore_0
iload_0
iload_0
invokestatic Runtime/printInt(I)V

iload_0
invokestatic Runtime/printInt(I)V

iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
