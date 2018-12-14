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
<<<<<<< Updated upstream
if_icmpne label_06f93766-020f-4fcd-b91d-e40af82290c9
iconst_0
goto label_1224da06-8d3c-4289-9db1-d89cff4a59a3
label_06f93766-020f-4fcd-b91d-e40af82290c9
iconst_1
label_1224da06-8d3c-4289-9db1-d89cff4a59a3
=======
if_icmpne label_46ddce52-10fb-429e-a50b-5bdb9318ced1
iconst_0
goto label_c1134846-b133-44a3-8057-3c0968a3ef04
label_46ddce52-10fb-429e-a50b-5bdb9318ced1
iconst_1
label_c1134846-b133-44a3-8057-3c0968a3ef04
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
if_icmpge label_212244dd-6abf-4b3d-99be-3770555cf1c1
iconst_0
goto label_e7d576c6-d1a6-4696-bbf4-cadaf91c2f89
label_212244dd-6abf-4b3d-99be-3770555cf1c1
iconst_1
label_e7d576c6-d1a6-4696-bbf4-cadaf91c2f89
=======
if_icmpge label_52378b7e-be85-4b76-9bf8-8e69eb1353f5
iconst_0
goto label_81aaff9f-ef8a-4e0f-b9c5-b0be596e2b51
label_52378b7e-be85-4b76-9bf8-8e69eb1353f5
iconst_1
label_81aaff9f-ef8a-4e0f-b9c5-b0be596e2b51
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
if_icmplt label_97de2674-cf67-4844-a436-e8c09b3644b2
iconst_0
goto label_9e1746c1-5352-4d30-b914-baa3d9ef8f5c
label_97de2674-cf67-4844-a436-e8c09b3644b2
iconst_1
label_9e1746c1-5352-4d30-b914-baa3d9ef8f5c
=======
if_icmplt label_34a0d6d8-2e8b-43dc-b242-f9c819974142
iconst_0
goto label_f4a03681-6c7d-47b0-a625-c7410e6f1aac
label_34a0d6d8-2e8b-43dc-b242-f9c819974142
iconst_1
label_f4a03681-6c7d-47b0-a625-c7410e6f1aac
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
if_icmpgt label_label_35a8a4ae-491a-476a-a0fb-b2eebed5eccb
iconst_0
goto label_82c5a631-898b-4676-a224-f5ec6439477b
label_35a8a4ae-491a-476a-a0fb-b2eebed5eccb
iconst_1
label_82c5a631-898b-4676-a224-f5ec6439477b
=======
if_icmpgt label_label_77eebcfc-5884-49b9-917f-0cbe21282867
iconst_0
goto label_9f8eb283-0e15-4592-a2d3-286643a76795
label_77eebcfc-5884-49b9-917f-0cbe21282867
iconst_1
label_9f8eb283-0e15-4592-a2d3-286643a76795
>>>>>>> Stashed changes
iconst_0
iand

iload_0
invokestatic Runtime/printInt(I)V

ldc 0
istore_1


ldc 0
ireturn

.end method
