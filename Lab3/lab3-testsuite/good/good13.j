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

iconst_2
istore_1
iload_1

<<<<<<< HEAD
label_ba15d91a-30c2-455d-96f0-404a2d297d92
iload_1
iload_0
if_icmple label_b792932c-fe11-490c-8df7-f9c85e2770e2
iconst_0
goto label_a272a18a-5074-49ed-9324-040b2356bef1
label_b792932c-fe11-490c-8df7-f9c85e2770e2
iconst_1
label_a272a18a-5074-49ed-9324-040b2356bef1
iconst_0
if icmpeq label_209e2181-54ca-4364-adaf-77b026eac68a
iconst_1
istore_2
pop
iconst_2
=======
<<<<<<< HEAD
label_b1bf0de5-5990-4832-ab35-c1958ca01569:
=======
<<<<<<< Updated upstream
label_526557a2-86a2-480a-b571-93c927005236
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_1
iload_0
if_icmple label_a2c41d97-185b-447c-82c2-24dd8c5600e1:
iconst_0
goto label_125ff080-e1b7-4c5f-a5a2-748f63d8665d:
label_a2c41d97-185b-447c-82c2-24dd8c5600e1:
iconst_1
label_125ff080-e1b7-4c5f-a5a2-748f63d8665d:
iconst_0
<<<<<<< HEAD
if_icmpeq label_bbe6bf1f-f844-4def-ae8d-f01876c37a61:
=======
if icmpeq label_f847492e-0e65-441d-acad-66ba69e6ec96
=======
label_36939b90-1c46-4ad4-abc3-6b353c3f9618
iload_1
iload_0
if_icmple label_bc619b69-95f9-4e3e-8529-c3018950020e
iconst_0
goto label_97e0e284-21d3-47e3-9c76-e71c19d45ede
label_bc619b69-95f9-4e3e-8529-c3018950020e
iconst_1
label_97e0e284-21d3-47e3-9c76-e71c19d45ede
iconst_0
if icmpeq label_6514dae8-a60f-4975-b6b9-fc50b20acb49
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_1
istore_2
ldc 2
>>>>>>> master
istore_3
<<<<<<< HEAD
label_6653ac3b-aa03-407d-9cd8-e90022c43bbb:
=======
pop
<<<<<<< HEAD
label_5dc3c0b2-ffa8-4d7d-973f-f85fd97880a6
=======
<<<<<<< Updated upstream
label_3acb9974-9520-465e-a6c9-b0630ff7fbbf
=======
label_61a86993-4325-47bc-be93-6f522cca1566
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master
iload_3
iload_3
imul
iload_1
<<<<<<< HEAD
if_icmple label_b0f10deb-2ec8-406a-86ee-b3337df059a1
iconst_0
goto label_a8e3f196-46ca-4a90-8a97-58dee690ff21
label_b0f10deb-2ec8-406a-86ee-b3337df059a1
iconst_1
label_a8e3f196-46ca-4a90-8a97-58dee690ff21
iconst_0
iload_2
iand
if icmpeq label_5fe96627-7e09-434c-b478-3c23fba7ecac
=======
<<<<<<< HEAD
if_icmple label_07c6fcec-5cc9-4b33-83b1-feb19ab82a3f:
=======
<<<<<<< Updated upstream
if_icmple label_6f1fd704-f5a1-4cfa-af0a-a7cc8ddd8082
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_dec7dcf9-9e49-4dc9-9f8f-ac9c5730cd25:
label_07c6fcec-5cc9-4b33-83b1-feb19ab82a3f:
iconst_1
label_dec7dcf9-9e49-4dc9-9f8f-ac9c5730cd25:
iconst_0
iload_2
iand
<<<<<<< HEAD
if_icmpeq label_e025fa5a-7716-4e9e-bf0f-0729a8738714:
>>>>>>> master
iload_1
iload_3
idiv
iload_3
imul
iload_1
<<<<<<< HEAD
if_icmpeq label_5b277c13-99ba-4384-98a7-30ccad99571e
=======
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
=======
if icmpeq label_60d265c5-bbad-49e0-8786-02de9a01f7d0
=======
if_icmple label_cd443b78-f3d9-4ac7-81f3-734bdd15f083
>>>>>>> master
iconst_0
goto label_a65c597f-95ba-4eb6-ae84-8c57d30f6dc7
label_5b277c13-99ba-4384-98a7-30ccad99571e
iconst_1
label_a65c597f-95ba-4eb6-ae84-8c57d30f6dc7
iconst_0
if_icmpeq label_ac3ea47f-bbb6-461f-8da4-219bf4fedf9c
goto label_8aee036a-649d-40d3-8b02-45f6d2745b53
label_ac3ea47f-bbb6-461f-8da4-219bf4fedf9c
iconst_0
istore_2
iload_2
pop
label_8aee036a-649d-40d3-8b02-45f6d2745b53
pop
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_3
iload_3
iconst_1
iadd
istore_3
<<<<<<< HEAD
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
=======
pop
goto label_5dc3c0b2-ffa8-4d7d-973f-f85fd97880a6
label_5fe96627-7e09-434c-b478-3c23fba7ecac
pop
iload_2
iload_0
iload_1
idiv
iload_1
imul
iload_0
if_icmpeq label_22ee6dfb-0205-48d0-9392-d334665ca25d
iconst_0
goto label_184e400b-0251-44c1-aa3d-03c8639adf07
label_22ee6dfb-0205-48d0-9392-d334665ca25d
iconst_1
label_184e400b-0251-44c1-aa3d-03c8639adf07
iconst_0
iand
if_icmpeq label_53dab933-2ec2-4ba5-80ea-18f7bb73e35d
iload_1
iload_1
iconst_1
iadd
istore_1
pop
goto label_38614bcf-e86b-4b58-8017-155646b7fc41
label_53dab933-2ec2-4ba5-80ea-18f7bb73e35d
iload_1
invokestatic Runtime/printInt(I)V
pop
iload_0
iload_1
idiv
istore_0
iload_0
pop
label_38614bcf-e86b-4b58-8017-155646b7fc41
pop
<<<<<<< HEAD
goto label_ba15d91a-30c2-455d-96f0-404a2d297d92
label_209e2181-54ca-4364-adaf-77b026eac68a
=======
goto label_36939b90-1c46-4ad4-abc3-6b353c3f9618
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master

iconst_0
ireturn

.end method
