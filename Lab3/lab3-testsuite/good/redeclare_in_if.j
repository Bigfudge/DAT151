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

<<<<<<< HEAD
iconst_0
iconst_0
iconst_0
isub
if_icmplt label_23950e82-3d37-49ca-a2e4-0c2e10cd85a1
iconst_0
goto label_454ff5d8-4f21-40c0-93d0-301fccc8110f
label_23950e82-3d37-49ca-a2e4-0c2e10cd85a1
iconst_1
label_454ff5d8-4f21-40c0-93d0-301fccc8110f
iconst_0
if_icmpeq label_600d9ce4-60e6-49f7-9076-61a7eab9e55f
iconst_0
istore_0
goto label_ecfca3fd-f85f-43e4-bf5b-a0f1ad0aa449
label_600d9ce4-60e6-49f7-9076-61a7eab9e55f
iconst_1
istore_0
label_ecfca3fd-f85f-43e4-bf5b-a0f1ad0aa449

iload_0
=======
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
>>>>>>> master
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
