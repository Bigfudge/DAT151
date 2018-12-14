.class public return_in_while
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

  invokestatic return_in_while/main()I
  pop
  return

.end method

.method public static rRrrrRrrrReturn()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

<<<<<<< HEAD
label_61c05fad-8cd3-4640-b59f-ad4b1da77936:
=======
<<<<<<< Updated upstream
label_9ff373c3-c174-480b-9305-1b9fdf5c9535
=======
label_829b837d-da26-4bd8-ab20-077abd86b7b2
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 5
<<<<<<< HEAD
if_icmplt label_1705e281-5f90-4280-aedc-3d0934ecf6fe:
=======
<<<<<<< Updated upstream
if_icmplt label_9e9116ef-187a-445f-9a87-50a780932c08
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_a1925e80-8103-4a56-b610-1164cb884562:
label_1705e281-5f90-4280-aedc-3d0934ecf6fe:
iconst_1
label_a1925e80-8103-4a56-b610-1164cb884562:
iconst_0
if_icmpeq label_d2d4fa17-fe55-4976-aff9-1257c3b233fa:
ldc 71
ireturn
<<<<<<< HEAD
goto label_61c05fad-8cd3-4640-b59f-ad4b1da77936:
label_d2d4fa17-fe55-4976-aff9-1257c3b233fa:
=======
pop
goto label_9ff373c3-c174-480b-9305-1b9fdf5c9535
=======
if_icmplt label_0f6ca4a3-d816-45cc-a4e2-5da4fc12f155
iconst_0
goto label_31f50935-834d-4b8f-b44a-fa99d844f148
label_0f6ca4a3-d816-45cc-a4e2-5da4fc12f155
iconst_1
label_31f50935-834d-4b8f-b44a-fa99d844f148
iconst_0
if icmpeq label_f3de8925-ebe9-4297-b5c0-bde03faf48da
ldc 71
ireturn
pop
goto label_829b837d-da26-4bd8-ab20-077abd86b7b2
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a

ldc 52
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticrRrrrRrrrReturn()I
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
