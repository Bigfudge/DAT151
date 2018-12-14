.class public good07
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

  invokestatic good07/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestatic Runtime/readInt()I
istore_0

iload_0
iconst_2
idiv
istore_1

<<<<<<< HEAD
label_b7fb7ac7-0ec6-415e-b8ae-2ad61ae85ef3
iload_1
iconst_1
if_icmpgt label_label_763c826c-8564-4b77-a9da-7ab37aaf3d60
iconst_0
goto label_597f64a8-6acb-443e-a7d2-b31a7f27b93d
label_763c826c-8564-4b77-a9da-7ab37aaf3d60
iconst_1
label_597f64a8-6acb-443e-a7d2-b31a7f27b93d
iconst_0
if icmpeq label_04970788-05fb-42d6-8560-55b143a633bf
iload_1
iload_0
=======
<<<<<<< HEAD
label_dbbe5c19-b2c7-4df8-8256-3b2231490880:
=======
<<<<<<< Updated upstream
label_0ea6a4a5-0e4b-4163-9121-88c6d99e1abf
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_1
ldc 1
if_icmpgt label_label_1648e305-0b1b-4e22-ae53-187bd02ab673:
iconst_0
goto label_a15adcff-fde3-4722-97f9-88f705bbcef7:
label_1648e305-0b1b-4e22-ae53-187bd02ab673:
iconst_1
label_a15adcff-fde3-4722-97f9-88f705bbcef7:
iconst_0
if_icmpeq label_799b3182-229f-431b-9a83-895101379f0f:
iload_1
iload_0
iload_1
idiv
imul
iload_0
if_icmpeq label_22c41b0f-5407-44ba-8814-ba0ef4e0bc53:
iconst_0
goto label_255c73a6-2094-4c17-a495-28e150245be5:
label_22c41b0f-5407-44ba-8814-ba0ef4e0bc53:
iconst_1
label_255c73a6-2094-4c17-a495-28e150245be5:
iconst_0
<<<<<<< HEAD
if_icmpne label_6851af2c-8318-44af-98ed-421b8da3ff4c:
iload_1
invokestatic Runtime/printInt(I)V
goto label_67220bbb-2894-4f3b-b46b-20ce2adc4ef1:
label_6851af2c-8318-44af-98ed-421b8da3ff4c:
label_67220bbb-2894-4f3b-b46b-20ce2adc4ef1:
=======
if icmpeq label_607a6609-6fb7-488d-8431-327859fcb351
=======
label_6de8b932-c165-4ebf-b696-66d934429c95
>>>>>>> master
iload_1
idiv
imul
iload_0
if_icmpeq label_73d1e7ef-2328-4169-b8ea-b67cf6eaefc4
iconst_0
goto label_4ffee5ea-4ebe-4c7a-9a35-b17313dc3483
label_73d1e7ef-2328-4169-b8ea-b67cf6eaefc4
iconst_1
label_4ffee5ea-4ebe-4c7a-9a35-b17313dc3483
iconst_0
if_icmpeq label_6e05548c-f4c7-4295-b123-20cc70e01c4d
goto label_e14faef4-62f5-476f-84b7-78c45497425d
label_6e05548c-f4c7-4295-b123-20cc70e01c4d
iload_1
invokestatic Runtime/printInt(I)V
label_e14faef4-62f5-476f-84b7-78c45497425d
pop
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_1
iload_1
iconst_1
iadd
istore_1
<<<<<<< HEAD
goto label_dbbe5c19-b2c7-4df8-8256-3b2231490880:
label_799b3182-229f-431b-9a83-895101379f0f:
=======
pop
<<<<<<< HEAD
goto label_b7fb7ac7-0ec6-415e-b8ae-2ad61ae85ef3
label_04970788-05fb-42d6-8560-55b143a633bf
=======
<<<<<<< Updated upstream
goto label_0ea6a4a5-0e4b-4163-9121-88c6d99e1abf
=======
goto label_6de8b932-c165-4ebf-b696-66d934429c95
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master

iconst_0
ireturn

.end method
