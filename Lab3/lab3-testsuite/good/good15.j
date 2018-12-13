.class public good15
.super java/lang/Object

.method public <init>()V
  .limit locals 1

  aload_0
  invokespecial java/lang/Object/<init>()V
  return

.end method

.method public static main([Ljava/lang/String;)V
  .limit locals 1
  .limit stack  1

  invokestatic good15/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 1
istore_0

iload_0
invokestatic Runtime/printInt(I)V

iconst_1
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 45
if_icmpne label_06f93766-020f-4fcd-b91d-e40af82290c9
iconst_0
goto label_1224da06-8d3c-4289-9db1-d89cff4a59a3
label_06f93766-020f-4fcd-b91d-e40af82290c9
iconst_1
label_1224da06-8d3c-4289-9db1-d89cff4a59a3
iconst_0
ior

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 0
if_icmpge label_212244dd-6abf-4b3d-99be-3770555cf1c1
iconst_0
goto label_e7d576c6-d1a6-4696-bbf4-cadaf91c2f89
label_212244dd-6abf-4b3d-99be-3770555cf1c1
iconst_1
label_e7d576c6-d1a6-4696-bbf4-cadaf91c2f89
iconst_0
ior

iload_0
invokestatic Runtime/printInt(I)V

iconst_1
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 0
if_icmplt label_97de2674-cf67-4844-a436-e8c09b3644b2
iconst_0
goto label_9e1746c1-5352-4d30-b914-baa3d9ef8f5c
label_97de2674-cf67-4844-a436-e8c09b3644b2
iconst_1
label_9e1746c1-5352-4d30-b914-baa3d9ef8f5c
iconst_0
iand

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 0
if_icmpgt label_label_35a8a4ae-491a-476a-a0fb-b2eebed5eccb
iconst_0
goto label_82c5a631-898b-4676-a224-f5ec6439477b
label_35a8a4ae-491a-476a-a0fb-b2eebed5eccb
iconst_1
label_82c5a631-898b-4676-a224-f5ec6439477b
iconst_0
iand

iload_0
invokestatic Runtime/printInt(I)V

ldc 0
istore_1


ldc 0
ireturn

.end method
