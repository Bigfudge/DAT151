.class public good11
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

  invokestatic good11/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

ldc 0
istore_1


label_df962501-ce5d-49ef-8f8a-6b0117ccbd29:
invokestatic Runtime/readInt()I
istore_2
iload_2
ldc 0
if_icmpne label_ef2022d8-ecbb-40db-8d8c-532227d59f1a:
iconst_0
goto label_06f06cfb-6e0a-49b8-9007-3f1a174b1b9d:
label_ef2022d8-ecbb-40db-8d8c-532227d59f1a:
iconst_1
label_06f06cfb-6e0a-49b8-9007-3f1a174b1b9d:
iconst_0
if_icmpeq label_96e97f6b-c57e-4562-b28b-11dca52ab1a0:
iload_0
iload_2
iadd
istore_0
iload_0
iload_1
iload_1
iconst_1
iadd
istore_1
goto label_df962501-ce5d-49ef-8f8a-6b0117ccbd29:
label_96e97f6b-c57e-4562-b28b-11dca52ab1a0:

iload_0
iload_1
idiv
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
