.class public return_in_if_right
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

  invokestatic return_in_if_right/main()I
  pop
  return

.end method

.method public static g()I
.limit locals 3
.limit stack 3
iconst_0
if_icmpne label_a382aba0-110b-42c1-8ab4-b0f339e56451:
ldc 12
ireturn
goto label_a9c1b916-b94f-4fb9-becb-27564dfa96fe:
label_a382aba0-110b-42c1-8ab4-b0f339e56451:
ldc 11
ireturn
label_a9c1b916-b94f-4fb9-becb-27564dfa96fe:

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
