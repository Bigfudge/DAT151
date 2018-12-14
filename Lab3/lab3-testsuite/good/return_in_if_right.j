.class public return_in_if_right
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

  invokestatic return_in_if_right/main()I
  pop
  return

.end method

.method public static g()I
.limit locals 3
.limit stack 3
iconst_0
if_icmpeq label_f1d7bec0-3c2e-4959-ba75-1c2dc8bb2ca6
ldc 11
ireturn
goto label_4647e5c0-15c3-4c2e-82e2-eee6d6fa0f34
label_f1d7bec0-3c2e-4959-ba75-1c2dc8bb2ca6
ldc 12
ireturn
label_4647e5c0-15c3-4c2e-82e2-eee6d6fa0f34

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
