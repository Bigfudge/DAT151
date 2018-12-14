.class public core103
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

  invokestatic core103/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_4
istore_0

label_a5aecd58-14ac-48c5-9885-0e47a6549707
iload_0
ldc 6
if_icmplt label_088fb54b-b665-4903-b11f-a35d003565f2
iconst_0
goto label_6f5de7b2-5d89-4437-8060-40ee04b7a0bb
label_088fb54b-b665-4903-b11f-a35d003565f2
iconst_1
label_6f5de7b2-5d89-4437-8060-40ee04b7a0bb
iconst_0
if icmpeq label_bd7ccfa2-f649-4c31-b36a-aa1de30c5849
iconst_0
istore_1
pop
iload_1
iload_1
iconst_1
iadd
istore_1
pop
iload_1
invokestatic Runtime/printInt(I)V
pop
iload_0
iload_0
iconst_1
iadd
istore_0
pop
goto label_a5aecd58-14ac-48c5-9885-0e47a6549707
label_bd7ccfa2-f649-4c31-b36a-aa1de30c5849

iload_0
ldc 7
if_icmplt label_8054e06a-da7f-4a2b-9b63-7ce74670a122
iconst_0
goto label_45c72c31-5b1a-47db-92b3-31042c26a9c7
label_8054e06a-da7f-4a2b-9b63-7ce74670a122
iconst_1
label_45c72c31-5b1a-47db-92b3-31042c26a9c7
iconst_0
if_icmpeq label_4150f448-2bc1-4cdb-88b0-875655e789cf
iload_0
iload_0
iconst_1
iadd
istore_0
pop
goto label_40a5ed52-1a70-46de-a457-9425d9cf4d82
label_4150f448-2bc1-4cdb-88b0-875655e789cf
iload_0
iload_0
iconst_1
iadd
istore_0
label_40a5ed52-1a70-46de-a457-9425d9cf4d82

iload_0
invokestatic Runtime/printInt(I)V

iload_0
ireturn

.end method
