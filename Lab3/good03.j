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

label_58b40af6-e6e4-4593-a8c9-327ea7b845ed
iload_2
iload_0
ldc 1
iadd
if_icmplt label_4e60735b-32fe-4f94-adbd-bb0e2026d43a
iconst_0
goto label_3d365fd4-1e66-4dc1-986e-4286037b997c
label_4e60735b-32fe-4f94-adbd-bb0e2026d43a
iconst_1
label_3d365fd4-1e66-4dc1-986e-4286037b997c
iconst_0
if icmpeq label_079e7779-8f6a-4be6-ac2e-3eb672df6e34
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
goto label_58b40af6-e6e4-4593-a8c9-327ea7b845ed

iload_1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
