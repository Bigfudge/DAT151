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
<<<<<<< HEAD
if_icmpeq label_6cd74f2b-725b-4e12-9ab1-1e3f5cc78b37
ldc 11
ireturn
goto label_c20e6327-aed1-4af4-9454-54579d50c956
label_6cd74f2b-725b-4e12-9ab1-1e3f5cc78b37
ldc 12
ireturn
label_c20e6327-aed1-4af4-9454-54579d50c956
=======
if_icmpne label_b9c74124-7a06-48ff-9c36-4704229ac276:
ldc 12
ireturn
goto label_bc99dc5f-b56d-455b-9c07-28d162df1cee:
label_b9c74124-7a06-48ff-9c36-4704229ac276:
ldc 11
ireturn
label_bc99dc5f-b56d-455b-9c07-28d162df1cee:
>>>>>>> master

ldc 10
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticg()I
nop
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
