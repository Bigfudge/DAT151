.class public void_expr_as_stmt
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

  invokestatic void_expr_as_stmt/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestaticfoo()V

ldc 0
ireturn

.end method
.method public static foo()V
.limit locals 3
.limit stack 3
ldc 1
invokestatic Runtime/printInt(I)V

.end method
