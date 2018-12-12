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
if_icmpne label_d35897bd-c92d-4a5c-9981-aa5056f4d74a
iconst_0
goto label_1a40a09a-f428-4fab-ad0f-364ce5d28c77
label_d35897bd-c92d-4a5c-9981-aa5056f4d74a
iconst_1
label_1a40a09a-f428-4fab-ad0f-364ce5d28c77
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
if_icmpge label_7e1a3693-e8c5-4cfc-a6ae-dc3e37146629
iconst_0
goto label_ef1d0bbd-f176-498b-aec6-0b9b83085663
label_7e1a3693-e8c5-4cfc-a6ae-dc3e37146629
iconst_1
label_ef1d0bbd-f176-498b-aec6-0b9b83085663
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
if_icmplt label_99265af1-9b71-480e-a0b3-71c25571fd5a
iconst_0
goto label_6c14b0b6-7051-4483-a6d2-e56438f5ddea
label_99265af1-9b71-480e-a0b3-71c25571fd5a
iconst_1
label_6c14b0b6-7051-4483-a6d2-e56438f5ddea
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
if_icmpgt label_label_e49bb562-8bbe-42a1-a831-c50a5c84614e
iconst_0
goto label_52cc2da6-33a3-4760-9b16-96c499678ec7
label_e49bb562-8bbe-42a1-a831-c50a5c84614e
iconst_1
label_52cc2da6-33a3-4760-9b16-96c499678ec7
iconst_0
iand

iload_0
invokestatic Runtime/printInt(I)V

ldc 0
istore_1


ldc 0
ireturn

.end method
