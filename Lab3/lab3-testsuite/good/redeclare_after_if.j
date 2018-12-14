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
<<<<<<< HEAD
iconst_0
iconst_2
if_icmple label_9c238f5d-5b0e-42e2-88b9-090541d9c164
iconst_0
goto label_6e274e4c-b607-4128-bc6d-0d476368a2d5
label_9c238f5d-5b0e-42e2-88b9-090541d9c164
iconst_1
label_6e274e4c-b607-4128-bc6d-0d476368a2d5
iconst_0
if_icmpeq label_98a9967b-cfe0-48ca-90ec-2f3fa4204364
iconst_0
goto label_c3cfcf63-7c9c-4151-bff6-3b2203257eb1
label_98a9967b-cfe0-48ca-90ec-2f3fa4204364
iconst_1
istore_0
label_c3cfcf63-7c9c-4151-bff6-3b2203257eb1

iconst_0
=======
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
>>>>>>> master
istore_0
goto label_0e1c7cb6-f427-4f17-8f8f-9ee3b146fac3:
label_2172abc4-4d75-4b7d-aefd-2665cce19421:
ldc 0
label_0e1c7cb6-f427-4f17-8f8f-9ee3b146fac3:

ldc 0
istore_1

iconst_1
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
