.class public redeclare_in_if
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

  invokestatic redeclare_in_if/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 32
istore_0

ldc 0
ldc 0
ldc 0
isub
if_icmplt label_e46f45c0-f7a6-40b1-8f16-4d778666b319:
iconst_0
goto label_ab5e9c28-ed06-4361-9c34-d88befdc181d:
label_e46f45c0-f7a6-40b1-8f16-4d778666b319:
iconst_1
label_ab5e9c28-ed06-4361-9c34-d88befdc181d:
iconst_0
if_icmpne label_a844fe30-b132-41bf-90c9-7cb45e923d33:
iconst_1
istore_1
goto label_0bf4acfd-4d53-4ca0-85be-8dcd02d24ed9:
label_a844fe30-b132-41bf-90c9-7cb45e923d33:
iconst_0
istore_2
label_0bf4acfd-4d53-4ca0-85be-8dcd02d24ed9:

iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
