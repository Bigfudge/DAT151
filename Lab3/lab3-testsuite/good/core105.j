.class public core105
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

  invokestatic core105/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 5
istore_0

label_57a149ae-61df-4161-8933-cca8867e59fa
iload_0
ldc 3
if_icmpgt label_label_6fdd0ea0-7ec6-432f-a8f7-40e1a2423c5e
iconst_0
goto label_5300d7f1-fa07-4f12-be84-869c5bb2a36c
label_6fdd0ea0-7ec6-432f-a8f7-40e1a2423c5e
iconst_1
label_5300d7f1-fa07-4f12-be84-869c5bb2a36c
iconst_0
if icmpeq label_c4886626-e815-4356-8c9a-5beead9c07a1
iload_0
iload_0
iconst_1
iadd
istore_0
invokestatic Runtime/printInt(I)V
goto label_57a149ae-61df-4161-8933-cca8867e59fa

iload_0
ireturn

.end method
