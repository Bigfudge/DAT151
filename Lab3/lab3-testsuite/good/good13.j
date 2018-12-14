.class public good13
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

  invokestatic good13/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

invokestatic Runtime/readInt()I
istore_0
iload_0

ldc 2
istore_1
iload_1

label_b1bf0de5-5990-4832-ab35-c1958ca01569:
iload_1
iload_0
if_icmple label_a2c41d97-185b-447c-82c2-24dd8c5600e1:
iconst_0
goto label_125ff080-e1b7-4c5f-a5a2-748f63d8665d:
label_a2c41d97-185b-447c-82c2-24dd8c5600e1:
iconst_1
label_125ff080-e1b7-4c5f-a5a2-748f63d8665d:
iconst_0
if_icmpeq label_bbe6bf1f-f844-4def-ae8d-f01876c37a61:
iconst_1
istore_2
ldc 2
istore_3
label_6653ac3b-aa03-407d-9cd8-e90022c43bbb:
iload_3
iload_3
imul
iload_1
if_icmple label_07c6fcec-5cc9-4b33-83b1-feb19ab82a3f:
iconst_0
goto label_dec7dcf9-9e49-4dc9-9f8f-ac9c5730cd25:
label_07c6fcec-5cc9-4b33-83b1-feb19ab82a3f:
iconst_1
label_dec7dcf9-9e49-4dc9-9f8f-ac9c5730cd25:
iconst_0
iload_2
iand
if_icmpeq label_e025fa5a-7716-4e9e-bf0f-0729a8738714:
iload_1
iload_3
idiv
iload_3
imul
iload_1
if_icmpeq label_5ec8ead0-5e49-4b91-bc7f-f7112990d0e7:
iconst_0
goto label_364e1ad9-f502-40cc-a8ae-93d56de19bc3:
label_5ec8ead0-5e49-4b91-bc7f-f7112990d0e7:
iconst_1
label_364e1ad9-f502-40cc-a8ae-93d56de19bc3:
iconst_0
if_icmpne label_58e0cd6e-420c-4ef5-a8c2-2ef1e7ae232e:
iconst_0
istore_2
iload_2
goto label_2304be4d-0c45-4d1c-a553-91bd8fdd6db6:
label_58e0cd6e-420c-4ef5-a8c2-2ef1e7ae232e:
label_2304be4d-0c45-4d1c-a553-91bd8fdd6db6:
iload_3
iload_3
iconst_1
iadd
istore_3
goto label_6653ac3b-aa03-407d-9cd8-e90022c43bbb:
label_e025fa5a-7716-4e9e-bf0f-0729a8738714:
iload_2
iload_0
iload_1
idiv
iload_1
imul
iload_0
if_icmpeq label_30dd144c-2deb-4158-9329-d578ec32a40d:
iconst_0
goto label_902dbd91-298f-4847-8cd0-2910516f2b1e:
label_30dd144c-2deb-4158-9329-d578ec32a40d:
iconst_1
label_902dbd91-298f-4847-8cd0-2910516f2b1e:
iconst_0
iand
if_icmpne label_55b526b2-1d14-4152-bc30-73868f9965a3:
iload_1
invokestatic Runtime/printInt(I)V
iload_0
iload_1
idiv
istore_0
iload_0
goto label_b0af7669-19ac-4e09-9dd5-346477dbb879:
label_55b526b2-1d14-4152-bc30-73868f9965a3:
iload_1
iload_1
iconst_1
iadd
istore_1
label_b0af7669-19ac-4e09-9dd5-346477dbb879:
goto label_b1bf0de5-5990-4832-ab35-c1958ca01569:
label_bbe6bf1f-f844-4def-ae8d-f01876c37a61:

ldc 0
ireturn

.end method
