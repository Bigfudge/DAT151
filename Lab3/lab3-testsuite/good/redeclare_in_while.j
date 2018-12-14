.class public redeclare_in_while
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

  invokestatic redeclare_in_while/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

label_fcc12ca2-26ff-4996-ab4a-f10ddef22989:
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
if_icmplt label_a0fc8d16-33bf-4488-9442-31dd4609454a:
iconst_0
goto label_ea5376b5-b4e7-4b51-b753-4706e67b62bd:
label_a0fc8d16-33bf-4488-9442-31dd4609454a:
iconst_1
label_ea5376b5-b4e7-4b51-b753-4706e67b62bd:
iconst_0
if_icmpeq label_5a20fbf0-7e60-4fca-bb24-1f97971e5394:
ldc 100
istore_1
goto label_fcc12ca2-26ff-4996-ab4a-f10ddef22989:
label_5a20fbf0-7e60-4fca-bb24-1f97971e5394:

iload_1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
