.class public ineq_inclusive
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

  invokestatic ineq_inclusive/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
<<<<<<< HEAD
iconst_0
iconst_0
if_icmpge label_eebd2d3c-711f-4cca-b80e-f6192aff90c8
iconst_0
goto label_c7d5b50e-8be8-4300-ac97-db2dbf445091
label_eebd2d3c-711f-4cca-b80e-f6192aff90c8
iconst_1
label_c7d5b50e-8be8-4300-ac97-db2dbf445091
iconst_0
if_icmpeq label_1858f5a0-8725-410a-82b3-25d5c77d0196
iconst_1
invokestatic Runtime/printInt(I)V
goto label_bf4a9745-9c37-4f42-af51-1195443d7eeb
label_1858f5a0-8725-410a-82b3-25d5c77d0196
iconst_0
invokestatic Runtime/printInt(I)V
label_bf4a9745-9c37-4f42-af51-1195443d7eeb

iconst_1
iconst_1
if_icmpge label_87aed0d2-a75e-457d-9930-2aa94fa314a5
iconst_0
goto label_06cb5100-481e-4547-aefb-06086868e5d7
label_87aed0d2-a75e-457d-9930-2aa94fa314a5
iconst_1
label_06cb5100-481e-4547-aefb-06086868e5d7
iconst_0
if_icmpeq label_94457363-5abd-48cb-892b-381570f13e99
iconst_3
invokestatic Runtime/printInt(I)V
goto label_06aa8bca-6ffe-4a1f-96e3-6d2c641cf372
label_94457363-5abd-48cb-892b-381570f13e99
iconst_2
invokestatic Runtime/printInt(I)V
label_06aa8bca-6ffe-4a1f-96e3-6d2c641cf372

iconst_2
iconst_2
if_icmple label_eb192ae2-6701-4a4a-a3f2-e628e65fb77b
iconst_0
goto label_276ede4c-ad57-403f-be34-2658010cf313
label_eb192ae2-6701-4a4a-a3f2-e628e65fb77b
iconst_1
label_276ede4c-ad57-403f-be34-2658010cf313
iconst_0
if_icmpeq label_86e0fea6-9365-4b4a-874f-2a9f957ef388
iconst_5
invokestatic Runtime/printInt(I)V
goto label_e671842a-1328-434f-a1b1-c5161c502fc3
label_86e0fea6-9365-4b4a-874f-2a9f957ef388
iconst_4
invokestatic Runtime/printInt(I)V
label_e671842a-1328-434f-a1b1-c5161c502fc3

iconst_0
iconst_0
if_icmple label_0e8fbd28-9e64-4849-a534-c25f6ce098de
iconst_0
goto label_ba773dcb-6b41-4c85-b34c-b478e7efa581
label_0e8fbd28-9e64-4849-a534-c25f6ce098de
iconst_1
label_ba773dcb-6b41-4c85-b34c-b478e7efa581
iconst_0
if_icmpeq label_186781dc-bb28-4a77-af86-0d6eeb5ba265
ldc 7
invokestatic Runtime/printInt(I)V
goto label_7da8831a-008b-48f2-852f-f02039cf3981
label_186781dc-bb28-4a77-af86-0d6eeb5ba265
ldc 6
invokestatic Runtime/printInt(I)V
label_7da8831a-008b-48f2-852f-f02039cf3981
=======
ldc 0
ldc 0
if_icmpge label_9f0b67dc-fa49-44e7-bd2e-101d46fb92ee:
iconst_0
goto label_65c5068f-9efe-46b4-9c1b-6e8fa5ad302c:
label_9f0b67dc-fa49-44e7-bd2e-101d46fb92ee:
iconst_1
label_65c5068f-9efe-46b4-9c1b-6e8fa5ad302c:
iconst_0
if_icmpne label_b709dc4b-ea7c-439f-89fc-5ceb3900740a:
ldc 0
invokestatic Runtime/printInt(I)V
goto label_9274efb2-49a8-4f56-a7bb-0e4fbb06c448:
label_b709dc4b-ea7c-439f-89fc-5ceb3900740a:
ldc 1
invokestatic Runtime/printInt(I)V
label_9274efb2-49a8-4f56-a7bb-0e4fbb06c448:

ldc 1
ldc 1
if_icmpge label_86ef51dd-269d-47b6-82c2-e0d02a835268:
iconst_0
goto label_a43527fd-f646-46cd-9699-b8206badc7ba:
label_86ef51dd-269d-47b6-82c2-e0d02a835268:
iconst_1
label_a43527fd-f646-46cd-9699-b8206badc7ba:
iconst_0
if_icmpne label_808c238b-6058-401b-a72a-97064c1f20cb:
ldc 2
invokestatic Runtime/printInt(I)V
goto label_6afefb54-08e0-44df-898f-0bf46df2fefa:
label_808c238b-6058-401b-a72a-97064c1f20cb:
ldc 3
invokestatic Runtime/printInt(I)V
label_6afefb54-08e0-44df-898f-0bf46df2fefa:

ldc 2
ldc 2
if_icmple label_696b6d2d-370a-490b-986c-42566b6379c2:
iconst_0
goto label_6cd5eae8-13b8-4332-9d5f-4560a71c39e8:
label_696b6d2d-370a-490b-986c-42566b6379c2:
iconst_1
label_6cd5eae8-13b8-4332-9d5f-4560a71c39e8:
iconst_0
if_icmpne label_4678999c-ffe2-44da-aa4d-a404899b1f34:
ldc 4
invokestatic Runtime/printInt(I)V
goto label_334484a4-b64c-4e14-8e30-0298855e773a:
label_4678999c-ffe2-44da-aa4d-a404899b1f34:
ldc 5
invokestatic Runtime/printInt(I)V
label_334484a4-b64c-4e14-8e30-0298855e773a:

ldc 0
ldc 0
if_icmple label_0730a062-7dfd-4e71-aad9-106703653f8b:
iconst_0
goto label_100ff472-90e4-4ceb-8998-ed680f0811e5:
label_0730a062-7dfd-4e71-aad9-106703653f8b:
iconst_1
label_100ff472-90e4-4ceb-8998-ed680f0811e5:
iconst_0
if_icmpne label_68b6d70b-6bd5-4ba1-a3a6-48c79368c06c:
ldc 6
invokestatic Runtime/printInt(I)V
goto label_b50485e2-575f-4c3b-ad71-7fa5d6e64270:
label_68b6d70b-6bd5-4ba1-a3a6-48c79368c06c:
ldc 7
invokestatic Runtime/printInt(I)V
label_b50485e2-575f-4c3b-ad71-7fa5d6e64270:
>>>>>>> master

iconst_0
ireturn

.end method
