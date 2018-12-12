.class public good05
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

  invokestatic good05/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 1
istore_0
iload_0

iload_0
istore_1
iload_1

invokestatic Runtime/readInt()I
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

label_fc84164e-292d-403e-8cbd-a29496a91824
iload_1
iload_2
if_icmplt label_45992d4c-cecd-4cc9-ab73-dacacbce73b3
iconst_0
goto label_8d341843-2f79-493b-9b5c-a6a40818a71c
label_45992d4c-cecd-4cc9-ab73-dacacbce73b3
iconst_1
label_8d341843-2f79-493b-9b5c-a6a40818a71c
iconst_0
if icmpeq label_5ff0a1e3-46f1-40c6-94d1-c363ceb59580
iload_1
invokestatic Runtime/printInt(I)V
pop
iload_0
iload_1
iadd
istore_1
iload_1
pop
iload_1
iload_0
isub
istore_0
iload_0
pop
goto label_fc84164e-292d-403e-8cbd-a29496a91824

ldc 0
ireturn

.end method
