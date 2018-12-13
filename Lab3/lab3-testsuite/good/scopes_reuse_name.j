.class public scopes_reuse_name
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

  invokestatic scopes_reuse_name/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0


iload_0
invokestatic Runtime/printInt(I)V


iload_0
invokestatic Runtime/printInt(I)V


iload_0
invokestatic Runtime/printInt(I)V


iload_0
invokestatic Runtime/printInt(I)V

ldc 0
istore_1
pop
label_0acf5b6f-f2ab-4e85-aa40-bbb1f3ce3efc
iload_1
iload_1
iconst_1
iadd
istore_1
ldc 1
if_icmplt label_07bd8d30-0023-43af-9d4c-a9677f8c7038
iconst_0
goto label_e1e27a59-5503-43a5-87ab-86a26b7cfcea
label_07bd8d30-0023-43af-9d4c-a9677f8c7038
iconst_1
label_e1e27a59-5503-43a5-87ab-86a26b7cfcea
iconst_0
if icmpeq label_df0483de-386e-4caf-b03c-850fed494531
ldc 5
istore_2
pop
goto label_0acf5b6f-f2ab-4e85-aa40-bbb1f3ce3efc
pop
iload_2
invokestatic Runtime/printInt(I)V
pop

ldc 0
istore_3
pop
label_257e0b09-8144-473d-88f9-6b0afb135f59
iload_3
iload_3
iconst_1
iadd
istore_3
ldc 1
if_icmplt label_750acdb8-e6df-4f6e-8cdb-9efa9e51b824
iconst_0
goto label_d8bf1ee7-430a-4b54-b501-97de20f311fc
label_750acdb8-e6df-4f6e-8cdb-9efa9e51b824
iconst_1
label_d8bf1ee7-430a-4b54-b501-97de20f311fc
iconst_0
if icmpeq label_27e5cf04-c1bd-4a2d-8316-8955b34e0736
pop
ldc 6
istore_4
iload_4
pop
goto label_257e0b09-8144-473d-88f9-6b0afb135f59
pop
iload_4
invokestatic Runtime/printInt(I)V
pop

ldc 7
istore_5
pop

iload_5
invokestatic Runtime/printInt(I)V

pop
ldc 8
istore_6
iload_6
pop

iload_6
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
