.class public good03
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

  invokestatic good03/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestatic Runtime/readInt()I
istore_0

ldc 1
istore_1

ldc 1
istore_2

label_ed9e1544-2efd-41df-9ab6-ce611a68d4ea
iload_2
iload_0
ldc 1
iadd
if_icmplt label_cc245b87-b08a-4af4-8e99-68846a1fe929
iconst_0
goto label_79a2e7d1-e71b-4808-bbd7-7ef209c630d8
label_cc245b87-b08a-4af4-8e99-68846a1fe929
iconst_1
label_79a2e7d1-e71b-4808-bbd7-7ef209c630d8
iconst_0
if icmpeq label_58ee4dae-7c1e-40a3-8783-8bc66d3dd7fa
iload_2
iload_1
imul
istore_1
iload_1
pop
iload_2
iconst_1
iadd
istore_2
iload_2
pop
goto label_ed9e1544-2efd-41df-9ab6-ce611a68d4ea

iload_1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
