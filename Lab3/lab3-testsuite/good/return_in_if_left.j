.class public return_in_if_left
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

  invokestatic return_in_if_left/main()I
  pop
  return

.end method

.method public static g()I
.limit locals 3
.limit stack 3

ldc 10
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticg()I
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
