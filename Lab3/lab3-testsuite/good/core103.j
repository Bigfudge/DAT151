.class public core103
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

  invokestatic core103/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 4
istore_0

<<<<<<< HEAD
label_235447ce-9d31-41c2-aa7e-2aeb0a51eedd:
=======
<<<<<<< Updated upstream
label_f693a358-f6b0-44be-a775-7e0c534c5c72
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_0
ldc 6
if_icmplt label_bc9a9cb5-8f10-45eb-a268-c62492c3528f:
iconst_0
goto label_8031cbd9-b09b-45db-8dba-9e072ad9f2ac:
label_bc9a9cb5-8f10-45eb-a268-c62492c3528f:
iconst_1
label_8031cbd9-b09b-45db-8dba-9e072ad9f2ac:
iconst_0
<<<<<<< HEAD
if_icmpeq label_37125078-17e0-4244-8719-0798be7928c2:
=======
if icmpeq label_7d8ede39-bf4c-488c-b2b5-e21e5d008b85
=======
label_af8d4ea2-e756-40fe-aece-1d0e754c722d
iload_0
ldc 6
if_icmplt label_16a0f847-2ed9-4d63-909d-082d002ddb8b
iconst_0
goto label_62e6f711-3c81-4e0e-9f51-c3fd6fdbd374
label_16a0f847-2ed9-4d63-909d-082d002ddb8b
iconst_1
label_62e6f711-3c81-4e0e-9f51-c3fd6fdbd374
iconst_0
if icmpeq label_2e9ff9ee-7881-4236-b891-409bc6fc1f86
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
ldc 0
istore_1
iload_1
iload_1
iconst_1
iadd
istore_1
iload_1
invokestatic Runtime/printInt(I)V
iload_0
iload_0
iconst_1
iadd
istore_0
<<<<<<< HEAD
goto label_235447ce-9d31-41c2-aa7e-2aeb0a51eedd:
label_37125078-17e0-4244-8719-0798be7928c2:
=======
pop
<<<<<<< Updated upstream
goto label_f693a358-f6b0-44be-a775-7e0c534c5c72
=======
goto label_af8d4ea2-e756-40fe-aece-1d0e754c722d
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a

iload_0
ldc 7
if_icmplt label_8a958cc0-4ff6-40ab-b861-9224bf7e3234:
iconst_0
goto label_3dc909fe-5d59-42e3-8835-8024c1bed32f:
label_8a958cc0-4ff6-40ab-b861-9224bf7e3234:
iconst_1
label_3dc909fe-5d59-42e3-8835-8024c1bed32f:
iconst_0
if_icmpne label_46828f3d-c679-4351-83cb-4eb791f297e8:
iload_0
iload_0
iconst_1
iadd
istore_0
goto label_5a60ff36-492f-41b0-b51b-d15c933100ec:
label_46828f3d-c679-4351-83cb-4eb791f297e8:
iload_0
iload_0
iconst_1
iadd
istore_0
label_5a60ff36-492f-41b0-b51b-d15c933100ec:

iload_0
invokestatic Runtime/printInt(I)V

iload_0
ireturn

.end method
