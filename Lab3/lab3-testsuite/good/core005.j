.class public core005
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

  invokestatic core005/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 56
istore_1

iload_1
ldc 45
iadd
iconst_2
if_icmple label_0f3e2370-9475-4b78-b0f1-36b9652dc25a
iconst_0
goto label_ad1baab0-3890-47b5-9f90-5a6116a48a66
label_0f3e2370-9475-4b78-b0f1-36b9652dc25a
iconst_1
label_ad1baab0-3890-47b5-9f90-5a6116a48a66
iconst_0
if_icmpeq label_c192c675-eea0-450d-9d62-6b57b3fcbff3
iconst_2
istore_0
iload_0
pop
goto label_7df24502-364c-4135-931f-2793b5c44280
label_c192c675-eea0-450d-9d62-6b57b3fcbff3
iconst_1
istore_0
iload_0
pop
label_7df24502-364c-4135-931f-2793b5c44280

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
