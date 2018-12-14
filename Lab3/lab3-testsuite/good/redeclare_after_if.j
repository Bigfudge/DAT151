.class public redeclare_after_if
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

  invokestatic redeclare_after_if/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
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
istore_0

iconst_1
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
