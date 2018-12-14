.class public good03
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

label_df4135ed-fa51-4dfe-a19a-7fa4af6947c8
iload_2
iload_0
ldc 1
iadd
if_icmplt label_ae319b03-4cb6-4645-a535-e257658e8e50
iconst_0
goto label_7231d19f-8661-48a8-ad35-ffb2c7515cbb
label_ae319b03-4cb6-4645-a535-e257658e8e50
iconst_1
label_7231d19f-8661-48a8-ad35-ffb2c7515cbb
iconst_0
if_icmpeq label_9600e0ca-8c45-4be5-b47b-63e2938986ef
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
goto label_df4135ed-fa51-4dfe-a19a-7fa4af6947c8
label_9600e0ca-8c45-4be5-b47b-63e2938986ef

iload_1
invokestatic Runtime/printInt(I)V
pop

ldc 0
ireturn

.end method
