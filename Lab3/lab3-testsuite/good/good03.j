.class public good03
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

  invokestatic good03/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestatic Runtime/readInt()I
istore_0

iconst_1
istore_1

iconst_1
istore_2

<<<<<<< HEAD
label_545c4b0e-3f52-44e4-ad64-ae8de6437fc9
iload_2
iload_0
iconst_1
iadd
if_icmplt label_826ba856-d1dd-4b52-8625-da7b9f1f582b
=======
<<<<<<< HEAD
label_dd9f8c3d-1f4b-4c1e-8d10-056e77830297:
=======
<<<<<<< Updated upstream
label_727d5fd4-11e7-427c-b205-2c515aac52f8
=======
label_d244aec5-4219-4d85-b98e-19a006010b79
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_2
iload_0
ldc 1
iadd
<<<<<<< HEAD
if_icmplt label_424e896c-862d-4638-b295-4c04ab2375df:
=======
<<<<<<< Updated upstream
if_icmplt label_d5ea73a6-04e6-4088-b475-4a5002304041
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_c6530007-81c4-4048-902e-f57a4451019d:
label_424e896c-862d-4638-b295-4c04ab2375df:
iconst_1
label_c6530007-81c4-4048-902e-f57a4451019d:
iconst_0
<<<<<<< HEAD
if_icmpeq label_ddc5245d-8135-4309-9d64-c552380bb2aa:
=======
if icmpeq label_a4d4ee4c-2048-4548-99b0-f6419bc4b465
=======
if_icmplt label_588054dc-8cfe-4963-9e90-d9ab90a59c35
>>>>>>> master
iconst_0
goto label_fb2838cf-091c-4614-8c6e-edfa23c43066
label_826ba856-d1dd-4b52-8625-da7b9f1f582b
iconst_1
label_fb2838cf-091c-4614-8c6e-edfa23c43066
iconst_0
<<<<<<< HEAD
if icmpeq label_9195ca94-14b9-4daa-b772-8a21b365526f
=======
if icmpeq label_7077ec75-ff5c-4b8c-877d-8339a1062399
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master
iload_2
iload_1
imul
istore_1
iload_1
iload_2
iconst_1
iadd
istore_2
iload_2
<<<<<<< HEAD
goto label_dd9f8c3d-1f4b-4c1e-8d10-056e77830297:
label_ddc5245d-8135-4309-9d64-c552380bb2aa:
=======
pop
<<<<<<< HEAD
goto label_545c4b0e-3f52-44e4-ad64-ae8de6437fc9
label_9195ca94-14b9-4daa-b772-8a21b365526f
=======
<<<<<<< Updated upstream
goto label_727d5fd4-11e7-427c-b205-2c515aac52f8
=======
goto label_d244aec5-4219-4d85-b98e-19a006010b79
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master

iload_1
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
