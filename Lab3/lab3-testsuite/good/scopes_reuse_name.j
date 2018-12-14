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
<<<<<<< Updated upstream
label_0acf5b6f-f2ab-4e85-aa40-bbb1f3ce3efc
=======
label_8ba81861-a470-4a70-b745-082553628cbe
>>>>>>> Stashed changes
iload_1
iload_1
iconst_1
iadd
istore_1
ldc 1
<<<<<<< Updated upstream
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
invokestatic Runtime/printInt(I)V
pop

ldc 0
istore_3
pop
<<<<<<< Updated upstream
label_257e0b09-8144-473d-88f9-6b0afb135f59
=======
label_919bc55f-3f6c-440c-8573-1765e9256363
>>>>>>> Stashed changes
iload_3
iload_3
iconst_1
iadd
istore_3
ldc 1
<<<<<<< Updated upstream
if_icmplt label_750acdb8-e6df-4f6e-8cdb-9efa9e51b824
iconst_0
goto label_d8bf1ee7-430a-4b54-b501-97de20f311fc
label_750acdb8-e6df-4f6e-8cdb-9efa9e51b824
iconst_1
label_d8bf1ee7-430a-4b54-b501-97de20f311fc
iconst_0
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
