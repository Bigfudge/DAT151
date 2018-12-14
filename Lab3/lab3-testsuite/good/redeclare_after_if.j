.class public redeclare_after_if
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

  invokestatic redeclare_after_if/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
ldc 2
if_icmple label_7d74b5e9-bee3-42b8-96a1-f840e5281841:
iconst_0
goto label_254a0595-340f-4d23-b0ce-bbcb6c4a0199:
label_7d74b5e9-bee3-42b8-96a1-f840e5281841:
iconst_1
label_254a0595-340f-4d23-b0ce-bbcb6c4a0199:
iconst_0
if_icmpne label_2172abc4-4d75-4b7d-aefd-2665cce19421:
iconst_1
istore_0
goto label_0e1c7cb6-f427-4f17-8f8f-9ee3b146fac3:
label_2172abc4-4d75-4b7d-aefd-2665cce19421:
ldc 0
label_0e1c7cb6-f427-4f17-8f8f-9ee3b146fac3:

ldc 0
istore_1

ldc 1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
