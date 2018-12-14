.class public core102
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

  invokestatic core102/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
label_86ed41d2-f47c-4838-823c-fb864d32ac46:
ldc 2
ldc 5
ldc 6
imul
ldc 5
idiv
iadd
ldc 67
isub
ldc 5
if_icmpgt label_label_e08af777-abcf-40a0-96d9-921306b6b458:
iconst_0
goto label_8f37588b-5328-4c48-a7ab-e379cb4da982:
label_e08af777-abcf-40a0-96d9-921306b6b458:
iconst_1
label_8f37588b-5328-4c48-a7ab-e379cb4da982:
iconst_0
if_icmpeq label_d99d06bc-911e-4c2a-95b9-4310e1e57319:
goto label_86ed41d2-f47c-4838-823c-fb864d32ac46:
label_d99d06bc-911e-4c2a-95b9-4310e1e57319:

ldc 0
ireturn

.end method
