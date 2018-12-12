.class public return_in_while
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

  invokestatic return_in_while/main()I
  pop
  return

.end method

.method public static rRrrrRrrrReturn()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

label_bb0c6095-9d8e-4051-a47c-771e83e09e3b
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 5
if_icmplt label_10857e37-7acb-4bed-a89b-5855f58a3b00
iconst_0
goto label_ead369cf-43b9-42e3-b0a5-8a79abb408b2
label_10857e37-7acb-4bed-a89b-5855f58a3b00
iconst_1
label_ead369cf-43b9-42e3-b0a5-8a79abb408b2
iconst_0
if icmpeq label_412625ca-739d-425e-a777-26246b528328
ldc 71
ireturn
pop
goto label_bb0c6095-9d8e-4051-a47c-771e83e09e3b

ldc 52
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticrRrrrRrrrReturn()I
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
