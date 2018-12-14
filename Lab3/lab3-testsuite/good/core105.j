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

<<<<<<< Updated upstream
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
=======
label_ac7d6153-fb52-45a9-8014-7221e211824c
iload_0
ldc 3
if_icmpgt label_label_f10635bf-9987-4836-9762-4423810ace5f
iconst_0
goto label_8188707a-b626-452f-86d0-79f0e846f563
label_f10635bf-9987-4836-9762-4423810ace5f
iconst_1
label_8188707a-b626-452f-86d0-79f0e846f563
iconst_0
if icmpeq label_cbffc3b1-a5d7-4eda-bd23-ab36be4500bb
>>>>>>> Stashed changes
iload_0
iload_0
iconst_1
iadd
istore_0
invokestatic Runtime/printInt(I)V
<<<<<<< Updated upstream
goto label_57a149ae-61df-4161-8933-cca8867e59fa
=======
goto label_ac7d6153-fb52-45a9-8014-7221e211824c
>>>>>>> Stashed changes

iload_0
ireturn

.end method
