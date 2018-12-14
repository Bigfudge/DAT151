.class public scopes_if_leakage
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

  invokestatic scopes_if_leakage/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0

iconst_1
if_icmpeq label_94bc1de8-8683-4760-b46d-1f52a1f990b0
iconst_0
istore_0
goto label_82052acc-136c-4389-a16e-eabf6c349519
label_94bc1de8-8683-4760-b46d-1f52a1f990b0
iconst_1
istore_0
label_82052acc-136c-4389-a16e-eabf6c349519

iload_0
iconst_1
if_icmpeq label_1dc06bc3-1721-48a7-b6e1-45223a4f1392
iconst_0
goto label_6c9f1065-98da-4664-b3a6-f8b2d551d3f6
label_1dc06bc3-1721-48a7-b6e1-45223a4f1392
iconst_1
label_6c9f1065-98da-4664-b3a6-f8b2d551d3f6
iconst_0

iload_0
istore_3

iconst_0
if_icmpeq label_5eef0861-efd5-4833-a230-9e7f51771a63
iconst_0
istore_0
goto label_de3cf206-cf86-4b60-b460-bb9fdd95e0b8
label_5eef0861-efd5-4833-a230-9e7f51771a63
iconst_1
istore_0
label_de3cf206-cf86-4b60-b460-bb9fdd95e0b8

iload_0
iconst_1
if_icmpeq label_935cd6c1-7d1f-4bb9-a09b-a9f9d1534354
iconst_0
goto label_1b0a615b-bdfa-475c-820b-cb34de2d4599
label_935cd6c1-7d1f-4bb9-a09b-a9f9d1534354
iconst_1
label_1b0a615b-bdfa-475c-820b-cb34de2d4599
iconst_0

iload_0
istore_2

iconst_0
ireturn

.end method
