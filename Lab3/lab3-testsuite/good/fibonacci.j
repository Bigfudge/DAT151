.class public fibonacci
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

  invokestatic fibonacci/main()I
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

ldc 5000000
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

label_47b135ff-3782-45dd-94bc-b75065216a48
iload_1
iload_2
if_icmplt label_ce14664d-0cbd-4750-a9b1-d324854a7d53
iconst_0
goto label_ab4ba199-5761-42b5-925e-07f8f68bed7b
label_ce14664d-0cbd-4750-a9b1-d324854a7d53
iconst_1
label_ab4ba199-5761-42b5-925e-07f8f68bed7b
iconst_0
if icmpeq label_4c0c8d5e-4b51-49e9-b34f-81ecac14b8c8
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
goto label_47b135ff-3782-45dd-94bc-b75065216a48
label_4c0c8d5e-4b51-49e9-b34f-81ecac14b8c8

iconst_0
ireturn

.end method
