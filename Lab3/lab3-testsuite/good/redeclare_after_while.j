.class public redeclare_after_while
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

  invokestatic redeclare_after_while/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

label_07895883-9447-4119-b89f-ce337926caff:
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
if_icmplt label_e3e80e3f-7314-4f91-97b2-6f4acbad2c9e:
iconst_0
goto label_dad0066c-3973-40ab-a1d2-e9d99553c7d2:
label_e3e80e3f-7314-4f91-97b2-6f4acbad2c9e:
iconst_1
label_dad0066c-3973-40ab-a1d2-e9d99553c7d2:
iconst_0
if_icmpeq label_0d8ae971-4487-4aab-81da-025699e8037f:
ldc 100
istore_1
goto label_07895883-9447-4119-b89f-ce337926caff:
label_0d8ae971-4487-4aab-81da-025699e8037f:

iload_0
istore_2

iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
