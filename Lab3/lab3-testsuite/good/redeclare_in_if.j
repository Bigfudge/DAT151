.class public redeclare_in_if
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

  invokestatic redeclare_in_if/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 32
istore_0

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
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
