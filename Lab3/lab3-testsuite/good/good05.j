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

iconst_1
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

label_d267edfb-166b-4177-81d5-654bbb3f3111
iload_1
iload_2
if_icmplt label_986ddb8a-c5c1-4d42-b990-159dd44541c8
iconst_0
goto label_f047ef9c-937a-4e12-a7f1-824b9e157aed
label_986ddb8a-c5c1-4d42-b990-159dd44541c8
iconst_1
label_f047ef9c-937a-4e12-a7f1-824b9e157aed
iconst_0
if icmpeq label_a61d8390-6da1-4fd8-b07a-7c638872e2ad
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
goto label_d267edfb-166b-4177-81d5-654bbb3f3111
label_a61d8390-6da1-4fd8-b07a-7c638872e2ad

iconst_0
ireturn

.end method
