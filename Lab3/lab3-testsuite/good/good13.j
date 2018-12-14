.class public good13
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
istore_3
pop
label_5dc3c0b2-ffa8-4d7d-973f-f85fd97880a6
iload_3
iload_3
imul
iload_1
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
iload_1
iload_3
idiv
iload_3
imul
iload_1
if_icmpeq label_5b277c13-99ba-4384-98a7-30ccad99571e
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
iload_3
iload_3
iconst_1
iadd
istore_3
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
goto label_ba15d91a-30c2-455d-96f0-404a2d297d92
label_209e2181-54ca-4364-adaf-77b026eac68a

iconst_0
ireturn

.end method
