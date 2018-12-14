.class public return_fun_val
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

  invokestatic return_fun_val/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestatictest()I
nop
ireturn

.end method
.method public static test()I
.limit locals 3
.limit stack 3
ldc 32
ireturn

.end method
