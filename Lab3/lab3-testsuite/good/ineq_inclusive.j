.class public ineq_inclusive
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

  invokestatic ineq_inclusive/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
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

iconst_0
ireturn

.end method
