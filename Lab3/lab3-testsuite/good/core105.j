.class public core105
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

  invokestatic core105/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 5
istore_0

<<<<<<< HEAD
label_2e353daa-aca3-4757-afd4-462b87b88d5d:
=======
<<<<<<< Updated upstream
label_57a149ae-61df-4161-8933-cca8867e59fa
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_0
ldc 3
if_icmpgt label_label_909510a2-89c4-40f0-ad27-7cf7c666fa6c:
iconst_0
goto label_e6229ac0-2e98-403e-a0f0-fa4a3da29664:
label_909510a2-89c4-40f0-ad27-7cf7c666fa6c:
iconst_1
label_e6229ac0-2e98-403e-a0f0-fa4a3da29664:
iconst_0
<<<<<<< HEAD
if_icmpeq label_c4cd91b8-0f67-4654-a3ff-78e41ad84ffc:
=======
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
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_0
iload_0
iconst_1
iadd
istore_0
invokestatic Runtime/printInt(I)V
<<<<<<< HEAD
goto label_2e353daa-aca3-4757-afd4-462b87b88d5d:
label_c4cd91b8-0f67-4654-a3ff-78e41ad84ffc:
=======
<<<<<<< Updated upstream
goto label_57a149ae-61df-4161-8933-cca8867e59fa
=======
goto label_ac7d6153-fb52-45a9-8014-7221e211824c
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a

iload_0
ireturn

.end method
