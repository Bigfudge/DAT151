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
iconst_0
istore_0

<<<<<<< HEAD
label_9e1e209a-9ff7-4f89-b3c8-fb367cfa605e
=======
<<<<<<< HEAD
label_61c05fad-8cd3-4640-b59f-ad4b1da77936:
=======
<<<<<<< Updated upstream
label_9ff373c3-c174-480b-9305-1b9fdf5c9535
=======
label_829b837d-da26-4bd8-ab20-077abd86b7b2
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master
iload_0
iload_0
iconst_1
iadd
istore_0
<<<<<<< HEAD
iconst_5
if_icmplt label_dafff777-74e4-4145-9c5f-ebb602f6a50f
=======
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
>>>>>>> master
iconst_0
goto label_39238b51-ec25-4270-9363-16d031cae0ba
label_dafff777-74e4-4145-9c5f-ebb602f6a50f
iconst_1
label_39238b51-ec25-4270-9363-16d031cae0ba
iconst_0
if icmpeq label_375f3bfa-96c6-4e8a-bddc-75a9ac56c432
ldc 71
ireturn
pop
<<<<<<< HEAD
goto label_9e1e209a-9ff7-4f89-b3c8-fb367cfa605e
label_375f3bfa-96c6-4e8a-bddc-75a9ac56c432
=======
goto label_829b837d-da26-4bd8-ab20-077abd86b7b2
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master

ldc 52
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticrRrrrRrrrReturn()I
nop
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
