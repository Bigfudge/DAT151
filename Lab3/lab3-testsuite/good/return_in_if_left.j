.class public return_in_if_left
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

  invokestatic return_in_if_left/main()I
  pop
  return

.end method

.method public static g()I
.limit locals 3
.limit stack 3
iconst_1
if_icmpne label_b9c74124-7a06-48ff-9c36-4704229ac276:
ldc 12
ireturn
goto label_bc99dc5f-b56d-455b-9c07-28d162df1cee:
label_b9c74124-7a06-48ff-9c36-4704229ac276:
ldc 11
ireturn
label_bc99dc5f-b56d-455b-9c07-28d162df1cee:

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
