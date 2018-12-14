.class public good05
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

  invokestatic good05/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 1
istore_0
iload_0

iload_0
istore_1
iload_1

invokestatic Runtime/readInt()I
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

<<<<<<< HEAD
label_b238d0cf-78f1-4b04-a214-dd19994e5572:
=======
<<<<<<< Updated upstream
label_af428db1-14af-4a75-8cf3-1f7855d82185
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_1
iload_2
if_icmplt label_bbc168a2-e6a2-4d79-827a-8dc558384f5d:
iconst_0
goto label_7af7df00-f595-4483-9cab-333aecc2cd87:
label_bbc168a2-e6a2-4d79-827a-8dc558384f5d:
iconst_1
label_7af7df00-f595-4483-9cab-333aecc2cd87:
iconst_0
<<<<<<< HEAD
if_icmpeq label_0d94b2d5-f289-4d2a-8247-bc7edb75a1a4:
=======
if icmpeq label_4e6bb9ee-bee2-46d5-bb48-f6e6031c32a4
=======
label_0c190928-985c-4509-9ac7-fb19935ba81b
iload_1
iload_2
if_icmplt label_67514498-e8c1-4985-958b-3bda0dd89cd9
iconst_0
goto label_1341c4a4-6e3a-447e-b397-375a54bd75ad
label_67514498-e8c1-4985-958b-3bda0dd89cd9
iconst_1
label_1341c4a4-6e3a-447e-b397-375a54bd75ad
iconst_0
if icmpeq label_6fd7f201-e979-4d0a-b42d-86b70e7e62e8
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
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
goto label_b238d0cf-78f1-4b04-a214-dd19994e5572:
label_0d94b2d5-f289-4d2a-8247-bc7edb75a1a4:
=======
pop
<<<<<<< Updated upstream
goto label_af428db1-14af-4a75-8cf3-1f7855d82185
=======
goto label_0c190928-985c-4509-9ac7-fb19935ba81b
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a

ldc 0
ireturn

.end method
