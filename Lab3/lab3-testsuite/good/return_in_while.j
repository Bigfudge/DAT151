.class public return_in_while
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

  invokestatic return_in_while/main()I
  pop
  return

.end method

.method public static rRrrrRrrrReturn()I
.limit locals 3
.limit stack 3
iconst_0
istore_0

label_9e1e209a-9ff7-4f89-b3c8-fb367cfa605e
iload_0
iload_0
iconst_1
iadd
istore_0
iconst_5
if_icmplt label_dafff777-74e4-4145-9c5f-ebb602f6a50f
iconst_0
goto label_39238b51-ec25-4270-9363-16d031cae0ba
label_dafff777-74e4-4145-9c5f-ebb602f6a50f
iconst_1
label_39238b51-ec25-4270-9363-16d031cae0ba
iconst_0
if icmpeq label_375f3bfa-96c6-4e8a-bddc-75a9ac56c432
ldc 71
ireturn
pop
goto label_9e1e209a-9ff7-4f89-b3c8-fb367cfa605e
label_375f3bfa-96c6-4e8a-bddc-75a9ac56c432

ldc 52
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticrRrrrRrrrReturn()I
nop
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
