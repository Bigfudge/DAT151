.class public core019
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

  invokestatic core019/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 78
istore_0

iconst_1
istore_0
pop
iload_0
invokestatic Runtime/printInt(I)V
pop

iload_0
invokestatic Runtime/printInt(I)V

label_b0f82d99-4d73-4a27-92c9-f3552a2337b6
iload_0
ldc 76
if_icmpgt label_label_aabdfed4-93a0-4b18-bc6a-6ef20bd6f6b2
iconst_0
goto label_bb3a0417-3c09-4ed9-afe1-d3a7768ebb9d
label_aabdfed4-93a0-4b18-bc6a-6ef20bd6f6b2
iconst_1
label_bb3a0417-3c09-4ed9-afe1-d3a7768ebb9d
iconst_0
if icmpeq label_cc4d306c-082e-49e1-b7af-406c22e4d3e9
iload_0
iload_0
iconst_1
iadd
istore_0
pop
iload_0
invokestatic Runtime/printInt(I)V
pop
ldc 7
istore_0
pop
iload_0
invokestatic Runtime/printInt(I)V
pop
goto label_b0f82d99-4d73-4a27-92c9-f3552a2337b6
label_cc4d306c-082e-49e1-b7af-406c22e4d3e9

iload_0
invokestatic Runtime/printInt(I)V

iload_0
iconst_4
if_icmpgt label_label_387b5f06-d308-4234-8a0d-3b3a75ceb022
iconst_0
goto label_a2677ee0-e42e-409a-8968-9f1a010d7d1e
label_387b5f06-d308-4234-8a0d-3b3a75ceb022
iconst_1
label_a2677ee0-e42e-409a-8968-9f1a010d7d1e
iconst_0
if_icmpeq label_66e39081-da5e-4428-b73c-39f996c20664
goto label_b6b12574-fbc2-485a-bee4-8ca281c13b9c
label_66e39081-da5e-4428-b73c-39f996c20664
iconst_4
istore_0
pop
iload_0
invokestatic Runtime/printInt(I)V
pop
label_b6b12574-fbc2-485a-bee4-8ca281c13b9c

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
