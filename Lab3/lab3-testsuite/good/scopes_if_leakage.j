.class public scopes_if_leakage
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

  invokestatic scopes_if_leakage/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0

<<<<<<< HEAD
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
=======
iconst_1
if_icmpne label_d94bc38f-3f26-4e0c-8022-4ac7471a1fd0:
ldc 1
istore_1
goto label_bb3b4ef2-cd35-4f6c-9b8b-e98ddfdb07ca:
label_d94bc38f-3f26-4e0c-8022-4ac7471a1fd0:
ldc 0
istore_2
label_bb3b4ef2-cd35-4f6c-9b8b-e98ddfdb07ca:

iload_2
iconst_1
<<<<<<< HEAD
if_icmpeq label_786c3910-7578-4bfa-b12c-2fa956109819:
=======
<<<<<<< Updated upstream
if_icmpeq label_11ce4456-d4eb-4dc2-8ff6-f907b54bc7b0
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_b908e9cc-2a16-4b22-b0d0-e40cd34775ad:
label_786c3910-7578-4bfa-b12c-2fa956109819:
iconst_1
<<<<<<< HEAD
label_b908e9cc-2a16-4b22-b0d0-e40cd34775ad:
=======
label_2628a344-40fd-4755-b945-b7debe591ca9
=======
if_icmpeq label_cee5886f-0962-444e-8d4c-c7dd437cf3e4
>>>>>>> master
iconst_0
goto label_6c9f1065-98da-4664-b3a6-f8b2d551d3f6
label_1dc06bc3-1721-48a7-b6e1-45223a4f1392
iconst_1
<<<<<<< HEAD
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
=======
label_453abc16-9df8-4ec3-a831-6526aeb21c26
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0

iload_2
istore_3

iconst_0
if_icmpne label_6d843858-158c-4b60-9c0e-22132dada1bd:
ldc 1
istore_4
goto label_427b0011-ad89-4e67-8038-701f76d74c97:
label_6d843858-158c-4b60-9c0e-22132dada1bd:
ldc 0
istore_5
label_427b0011-ad89-4e67-8038-701f76d74c97:
>>>>>>> master

iload_5
iconst_1
<<<<<<< HEAD
if_icmpeq label_935cd6c1-7d1f-4bb9-a09b-a9f9d1534354
iconst_0
goto label_1b0a615b-bdfa-475c-820b-cb34de2d4599
label_935cd6c1-7d1f-4bb9-a09b-a9f9d1534354
iconst_1
label_1b0a615b-bdfa-475c-820b-cb34de2d4599
=======
<<<<<<< HEAD
if_icmpeq label_291d90f4-4deb-4079-92af-b87cf665ecaf:
=======
<<<<<<< Updated upstream
if_icmpeq label_54f907c8-0890-41a5-b2ec-b2c5e3e322b4
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_dd2a933d-16b5-4e43-b5d4-edd7d9be5314:
label_291d90f4-4deb-4079-92af-b87cf665ecaf:
iconst_1
<<<<<<< HEAD
label_dd2a933d-16b5-4e43-b5d4-edd7d9be5314:
=======
label_f5d00b65-8114-4286-96e5-b4025f8ae29d
=======
if_icmpeq label_59fd4e43-098d-47ea-b4a8-ca6ed6ad9355
iconst_0
goto label_d8435585-815a-4ba3-a7f7-07b904c182d7
label_59fd4e43-098d-47ea-b4a8-ca6ed6ad9355
iconst_1
label_d8435585-815a-4ba3-a7f7-07b904c182d7
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master
iconst_0

iload_5
istore_6

iconst_0
ireturn

.end method
