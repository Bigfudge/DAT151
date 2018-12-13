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

label_b9c23bb6-7850-490b-8e2d-0adb2f72256a
iload_1
ldc 76
if_icmpgt label_label_fde7c4e9-160c-4ced-bad2-a491f13afd96
iconst_0
goto label_1da9d6b6-d475-48b2-8985-27235c8d877d
label_fde7c4e9-160c-4ced-bad2-a491f13afd96
iconst_1
label_1da9d6b6-d475-48b2-8985-27235c8d877d
iconst_0
if icmpeq label_7ed6f5d6-7030-4717-b60d-4acf6322fbc2
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
goto label_b9c23bb6-7850-490b-8e2d-0adb2f72256a

iload_2
invokestatic Runtime/printInt(I)V


iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
