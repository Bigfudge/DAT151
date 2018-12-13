.class public redeclare_after_while
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

  invokestatic redeclare_after_while/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

label_a3cbe57f-1a79-4e09-b61a-5ebb442e8ba5
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
if_icmplt label_7199783e-34e9-4f0e-acd5-6f8f9db8d137
iconst_0
goto label_8d76d4b1-2018-4731-aae0-88988289eff2
label_7199783e-34e9-4f0e-acd5-6f8f9db8d137
iconst_1
label_8d76d4b1-2018-4731-aae0-88988289eff2
iconst_0
if icmpeq label_79ea2228-35eb-420f-ba3a-89c0cf05aa54
ldc 100
istore_1
goto label_a3cbe57f-1a79-4e09-b61a-5ebb442e8ba5

iload_0
istore_2

iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
