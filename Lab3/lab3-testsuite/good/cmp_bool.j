.class public cmp_bool
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

  invokestatic cmp_bool/main()I
  pop
  return

.end method

.method public static printBool(Z)V
.limit locals 3
.limit stack 3

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticprintBool(Z)V

invokestaticprintBool(Z)V

invokestaticprintBool(Z)V

ldc 0
ireturn

.end method
