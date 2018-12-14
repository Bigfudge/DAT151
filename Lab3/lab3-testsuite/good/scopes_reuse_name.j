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
istore_5
label_d5ecb04c-d657-47db-a378-8261f2123541:
iload_5
iload_5
iconst_1
iadd
istore_5
ldc 1
if_icmplt label_00ca116b-2e3c-4dd2-807b-ddc904ae70dd:
iconst_0
goto label_1a3250df-2b8e-4d92-905f-930d8a0aa2a1:
label_00ca116b-2e3c-4dd2-807b-ddc904ae70dd:
iconst_1
label_1a3250df-2b8e-4d92-905f-930d8a0aa2a1:
iconst_0
if_icmpeq label_538f1b67-bf81-4b38-9437-c225acf91267:
ldc 5
istore_6
goto label_d5ecb04c-d657-47db-a378-8261f2123541:
label_538f1b67-bf81-4b38-9437-c225acf91267:
iload_6
invokestatic Runtime/printInt(I)V

ldc 0
istore_7
label_e1b1f82e-8218-447b-90a6-8b0cd0e73101:
iload_7
iload_7
iconst_1
iadd
istore_7
ldc 1
if_icmplt label_743a4b90-5194-4f91-bc25-dd19057ba5f1:
iconst_0
goto label_cf1b7dc3-21f0-4184-baff-fa109e68ac91:
label_743a4b90-5194-4f91-bc25-dd19057ba5f1:
iconst_1
label_cf1b7dc3-21f0-4184-baff-fa109e68ac91:
iconst_0
if_icmpeq label_e7fef9ff-e0eb-486c-88fd-75cb6b1d4360:
ldc 6
istore_8
iload_8
goto label_e1b1f82e-8218-447b-90a6-8b0cd0e73101:
label_e7fef9ff-e0eb-486c-88fd-75cb6b1d4360:
iload_8
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
