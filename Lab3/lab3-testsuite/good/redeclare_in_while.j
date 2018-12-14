.class public redeclare_in_while
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

  invokestatic redeclare_in_while/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
istore_0

<<<<<<< HEAD
label_ac72f73f-8275-4698-ab2d-38256d8918eb
=======
<<<<<<< HEAD
label_fcc12ca2-26ff-4996-ab4a-f10ddef22989:
=======
<<<<<<< Updated upstream
label_555e9df9-0e66-4117-b87e-31328b55f40b
=======
label_dc20ad6c-1247-4d9b-afcb-203023edd53e
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
<<<<<<< HEAD
if_icmplt label_8d0bdf49-67c0-4f46-b783-10c9498f59dc
=======
<<<<<<< HEAD
if_icmplt label_a0fc8d16-33bf-4488-9442-31dd4609454a:
=======
<<<<<<< Updated upstream
if_icmplt label_941baa9f-e59a-4cae-9c8c-13550beea2d6
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_ea5376b5-b4e7-4b51-b753-4706e67b62bd:
label_a0fc8d16-33bf-4488-9442-31dd4609454a:
iconst_1
label_ea5376b5-b4e7-4b51-b753-4706e67b62bd:
iconst_0
if_icmpeq label_5a20fbf0-7e60-4fca-bb24-1f97971e5394:
ldc 100
istore_1
<<<<<<< HEAD
goto label_fcc12ca2-26ff-4996-ab4a-f10ddef22989:
label_5a20fbf0-7e60-4fca-bb24-1f97971e5394:
=======
goto label_555e9df9-0e66-4117-b87e-31328b55f40b
=======
if_icmplt label_36ba6ff8-8a67-4c09-9ad3-c593dac6441a
>>>>>>> master
iconst_0
goto label_0893bea5-91cb-40fd-bf95-3e63d20ffd82
label_8d0bdf49-67c0-4f46-b783-10c9498f59dc
iconst_1
label_0893bea5-91cb-40fd-bf95-3e63d20ffd82
iconst_0
if icmpeq label_a49e9466-c280-448c-9ae3-1070fe8f771a
ldc 100
<<<<<<< HEAD
istore_0
goto label_ac72f73f-8275-4698-ab2d-38256d8918eb
label_a49e9466-c280-448c-9ae3-1070fe8f771a
=======
istore_1
goto label_dc20ad6c-1247-4d9b-afcb-203023edd53e
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
