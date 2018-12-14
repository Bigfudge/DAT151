.class public scopes_reuse_name
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

  invokestatic scopes_reuse_name/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

iconst_1
if_icmpne label_60089c03-c2d8-4286-a4f2-1e1f96fc7f4f:
ldc 1
istore_1
goto label_32814549-7e43-4a08-a24d-2ca1ee4d7f7a:
label_60089c03-c2d8-4286-a4f2-1e1f96fc7f4f:
label_32814549-7e43-4a08-a24d-2ca1ee4d7f7a:

iload_1
invokestatic Runtime/printInt(I)V

iconst_1
if_icmpne label_16cb7101-9165-4833-8713-692b5f08801b:
ldc 2
istore_2
iload_2
goto label_b4f9b9ea-05e9-4960-92f3-302e10422c5e:
label_16cb7101-9165-4833-8713-692b5f08801b:
label_b4f9b9ea-05e9-4960-92f3-302e10422c5e:

iload_2
invokestatic Runtime/printInt(I)V

iconst_0
if_icmpne label_cdbfbc12-f38f-4afd-a1bb-e6f71a299e0d:
goto label_aec38d64-f57e-4e16-b94b-2f7a3b1faef2:
label_cdbfbc12-f38f-4afd-a1bb-e6f71a299e0d:
ldc 3
istore_3
label_aec38d64-f57e-4e16-b94b-2f7a3b1faef2:

iload_3
invokestatic Runtime/printInt(I)V

iconst_0
if_icmpne label_98691694-43b5-49c6-83bf-041efbc2d53b:
goto label_483c50f2-75d4-49b0-aa2c-442b8b8f769a:
label_98691694-43b5-49c6-83bf-041efbc2d53b:
ldc 4
istore_4
iload_4
label_483c50f2-75d4-49b0-aa2c-442b8b8f769a:

iload_4
invokestatic Runtime/printInt(I)V

ldc 0
<<<<<<< HEAD
istore_5
label_d5ecb04c-d657-47db-a378-8261f2123541:
iload_5
iload_5
=======
istore_1
pop
<<<<<<< Updated upstream
label_0acf5b6f-f2ab-4e85-aa40-bbb1f3ce3efc
=======
label_8ba81861-a470-4a70-b745-082553628cbe
>>>>>>> Stashed changes
iload_1
iload_1
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_1
iadd
istore_5
ldc 1
<<<<<<< HEAD
if_icmplt label_00ca116b-2e3c-4dd2-807b-ddc904ae70dd:
=======
<<<<<<< Updated upstream
if_icmplt label_07bd8d30-0023-43af-9d4c-a9677f8c7038
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_1a3250df-2b8e-4d92-905f-930d8a0aa2a1:
label_00ca116b-2e3c-4dd2-807b-ddc904ae70dd:
iconst_1
label_1a3250df-2b8e-4d92-905f-930d8a0aa2a1:
iconst_0
if_icmpeq label_538f1b67-bf81-4b38-9437-c225acf91267:
ldc 5
<<<<<<< HEAD
istore_6
goto label_d5ecb04c-d657-47db-a378-8261f2123541:
label_538f1b67-bf81-4b38-9437-c225acf91267:
iload_6
=======
istore_2
pop
goto label_0acf5b6f-f2ab-4e85-aa40-bbb1f3ce3efc
=======
if_icmplt label_c43cadb7-34b9-459b-b81f-6fcf01ba592d
iconst_0
goto label_3e5750fe-a494-45d0-b1cc-445e1f30f78e
label_c43cadb7-34b9-459b-b81f-6fcf01ba592d
iconst_1
label_3e5750fe-a494-45d0-b1cc-445e1f30f78e
iconst_0
if icmpeq label_10513637-99a0-4609-bde5-8dd90be16d6b
ldc 5
istore_2
pop
goto label_8ba81861-a470-4a70-b745-082553628cbe
>>>>>>> Stashed changes
pop
iload_2
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
invokestatic Runtime/printInt(I)V

ldc 0
<<<<<<< HEAD
istore_7
label_e1b1f82e-8218-447b-90a6-8b0cd0e73101:
iload_7
iload_7
=======
istore_3
pop
<<<<<<< Updated upstream
label_257e0b09-8144-473d-88f9-6b0afb135f59
=======
label_919bc55f-3f6c-440c-8573-1765e9256363
>>>>>>> Stashed changes
iload_3
iload_3
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_1
iadd
istore_7
ldc 1
<<<<<<< HEAD
if_icmplt label_743a4b90-5194-4f91-bc25-dd19057ba5f1:
=======
<<<<<<< Updated upstream
if_icmplt label_750acdb8-e6df-4f6e-8cdb-9efa9e51b824
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_cf1b7dc3-21f0-4184-baff-fa109e68ac91:
label_743a4b90-5194-4f91-bc25-dd19057ba5f1:
iconst_1
label_cf1b7dc3-21f0-4184-baff-fa109e68ac91:
iconst_0
<<<<<<< HEAD
if_icmpeq label_e7fef9ff-e0eb-486c-88fd-75cb6b1d4360:
ldc 6
istore_8
iload_8
goto label_e1b1f82e-8218-447b-90a6-8b0cd0e73101:
label_e7fef9ff-e0eb-486c-88fd-75cb6b1d4360:
iload_8
=======
if icmpeq label_27e5cf04-c1bd-4a2d-8316-8955b34e0736
=======
if_icmplt label_0e7b79da-8d8d-467d-950c-24470ac66050
iconst_0
goto label_14a49864-cfd5-4b8c-9911-2dfe2572907b
label_0e7b79da-8d8d-467d-950c-24470ac66050
iconst_1
label_14a49864-cfd5-4b8c-9911-2dfe2572907b
iconst_0
if icmpeq label_c6f09268-6de3-42f8-a9ec-8eac9182c88a
>>>>>>> Stashed changes
pop
ldc 6
istore_4
iload_4
pop
<<<<<<< Updated upstream
goto label_257e0b09-8144-473d-88f9-6b0afb135f59
=======
goto label_919bc55f-3f6c-440c-8573-1765e9256363
>>>>>>> Stashed changes
pop
iload_4
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
invokestatic Runtime/printInt(I)V

ldc 7
istore_9

iload_9
invokestatic Runtime/printInt(I)V

ldc 8
istore_10
iload_10

iload_10
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
