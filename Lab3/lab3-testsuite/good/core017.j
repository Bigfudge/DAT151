.class public core017
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

  invokestatic core017/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 4
istore_0


invokestaticprintBool(Z)V

invokestaticprintBool(Z)V

invokestaticprintBool(Z)V

invokestaticprintBool(Z)V

invokestaticprintBool(Z)V

invokestaticprintBool(Z)V

invokestaticprintBool(Z)V

ldc 0
ireturn

.end method
.method public static dontCallMe(I)Z
.limit locals 3
.limit stack 3
iload_0
invokestatic Runtime/printInt(I)V

iconst_1
ireturn

.end method
.method public static printBool(Z)V
.limit locals 3
.limit stack 3

.end method
.method public static implies(ZZ)Z
.limit locals 3
.limit stack 3
invokestaticnot(Z)Z
invokestaticeq_bool(ZZ)Z
ior
ireturn

.end method
.method public static not(Z)Z
.limit locals 3
.limit stack 3


iload_1
ireturn

.end method
.method public static eq_bool(ZZ)Z
.limit locals 3
.limit stack 3


iload_2
ireturn

.end method
