.class public fibonacci
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

  invokestatic fibonacci/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

iconst_1
istore_0
iload_0

iload_0
istore_1
iload_1

ldc 5000000
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

<<<<<<< HEAD
label_47b135ff-3782-45dd-94bc-b75065216a48
iload_1
iload_2
if_icmplt label_ce14664d-0cbd-4750-a9b1-d324854a7d53
iconst_0
goto label_ab4ba199-5761-42b5-925e-07f8f68bed7b
label_ce14664d-0cbd-4750-a9b1-d324854a7d53
iconst_1
label_ab4ba199-5761-42b5-925e-07f8f68bed7b
iconst_0
if icmpeq label_4c0c8d5e-4b51-49e9-b34f-81ecac14b8c8
=======
<<<<<<< HEAD
label_1b36ff65-9812-460b-9b74-3f6a1d8668a9:
=======
<<<<<<< Updated upstream
label_38d7b0a7-7d84-444b-b1f8-bd5dae73cbf3
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_1
iload_2
if_icmplt label_0787240e-255c-476f-85f8-175756a4f587:
iconst_0
goto label_a6f7b537-afe1-42b2-b3c2-8262afa1993f:
label_0787240e-255c-476f-85f8-175756a4f587:
iconst_1
label_a6f7b537-afe1-42b2-b3c2-8262afa1993f:
iconst_0
<<<<<<< HEAD
if_icmpeq label_6ffecb5b-69ba-4c26-b55c-28885c25c1f7:
=======
if icmpeq label_ee3ffdb0-434f-4f8d-a5f7-d6f3d15ad312
=======
label_bd15ab10-9f4d-4bb9-8a31-b355ede231ad
iload_1
iload_2
if_icmplt label_58fd5c3a-fbda-4134-9f63-4bbadb50c8c4
iconst_0
goto label_2e5fb57f-749b-401a-91f4-beb1177494c7
label_58fd5c3a-fbda-4134-9f63-4bbadb50c8c4
iconst_1
label_2e5fb57f-749b-401a-91f4-beb1177494c7
iconst_0
if icmpeq label_9e5f397e-91a2-4406-a183-0a56e0a62c7c
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master
iload_1
invokestatic Runtime/printInt(I)V
iload_0
iload_1
iadd
istore_1
iload_1
iload_1
iload_0
isub
istore_0
iload_0
<<<<<<< HEAD
goto label_1b36ff65-9812-460b-9b74-3f6a1d8668a9:
label_6ffecb5b-69ba-4c26-b55c-28885c25c1f7:
=======
pop
<<<<<<< HEAD
goto label_47b135ff-3782-45dd-94bc-b75065216a48
label_4c0c8d5e-4b51-49e9-b34f-81ecac14b8c8
=======
<<<<<<< Updated upstream
goto label_38d7b0a7-7d84-444b-b1f8-bd5dae73cbf3
=======
goto label_bd15ab10-9f4d-4bb9-8a31-b355ede231ad
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master

iconst_0
ireturn

.end method
