.class public core015
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

  invokestatic core015/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestaticev(I)I
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
.method public static ev(I)I
.limit locals 3
.limit stack 3


iload_0
ireturn

.end method
