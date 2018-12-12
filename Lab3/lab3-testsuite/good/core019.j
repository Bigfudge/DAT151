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

ldc 1
istore_1
pop
iload_1
invokestatic Runtime/printInt(I)V
pop

iload_1
invokestatic Runtime/printInt(I)V

label_6ec63865-88f6-4fce-bc40-0aa898a4abbc
iload_1
ldc 76
if_icmpgt label_label_c57edced-2a68-4e90-92ab-08a5ad518b26
iconst_0
goto label_fb75aaa0-6c2e-45cb-878a-2adf5b94ca49
label_c57edced-2a68-4e90-92ab-08a5ad518b26
iconst_1
label_fb75aaa0-6c2e-45cb-878a-2adf5b94ca49
iconst_0
if icmpeq label_bff85d40-3e9b-4a37-b68c-577aea83adef
iload_1
iload_1
iconst_1
iadd
istore_1
pop
iload_1
invokestatic Runtime/printInt(I)V
pop
ldc 7
istore_2
pop
iload_2
invokestatic Runtime/printInt(I)V
pop
goto label_6ec63865-88f6-4fce-bc40-0aa898a4abbc

iload_2
invokestatic Runtime/printInt(I)V


iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
