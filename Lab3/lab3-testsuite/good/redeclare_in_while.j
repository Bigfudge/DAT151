.class public redeclare_in_while
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

  invokestatic redeclare_in_while/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

label_9087ed38-6e2c-4940-8acf-57076ecfc62a
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
if_icmplt label_0b2179f1-e711-478f-9766-feadff7966a8
iconst_0
goto label_0f1c8a71-a24f-4f81-b6e2-033cba2ec411
label_0b2179f1-e711-478f-9766-feadff7966a8
iconst_1
label_0f1c8a71-a24f-4f81-b6e2-033cba2ec411
iconst_0
if icmpeq label_9e622c27-1e01-4119-b716-79ee8cfc9860
ldc 100
istore_1
goto label_9087ed38-6e2c-4940-8acf-57076ecfc62a

iload_1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
