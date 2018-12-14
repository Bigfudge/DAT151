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

label_235447ce-9d31-41c2-aa7e-2aeb0a51eedd:
iload_0
ldc 6
if_icmplt label_bc9a9cb5-8f10-45eb-a268-c62492c3528f:
iconst_0
goto label_8031cbd9-b09b-45db-8dba-9e072ad9f2ac:
label_bc9a9cb5-8f10-45eb-a268-c62492c3528f:
iconst_1
label_8031cbd9-b09b-45db-8dba-9e072ad9f2ac:
iconst_0
if_icmpeq label_37125078-17e0-4244-8719-0798be7928c2:
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
goto label_235447ce-9d31-41c2-aa7e-2aeb0a51eedd:
label_37125078-17e0-4244-8719-0798be7928c2:

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
