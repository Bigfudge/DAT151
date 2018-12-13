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
ldc 0
istore_0

label_9ff373c3-c174-480b-9305-1b9fdf5c9535
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 5
if_icmplt label_9e9116ef-187a-445f-9a87-50a780932c08
iconst_0
goto label_aea1f93f-7eba-46e2-800a-3435019f3611
label_9e9116ef-187a-445f-9a87-50a780932c08
iconst_1
label_aea1f93f-7eba-46e2-800a-3435019f3611
iconst_0
if icmpeq label_d64f3d5c-3c05-41da-8d76-c798fdb3c7e8
ldc 71
ireturn
pop
goto label_9ff373c3-c174-480b-9305-1b9fdf5c9535

ldc 52
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticrRrrrRrrrReturn()I
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
