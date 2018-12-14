.class public cmp_bool
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

  invokestatic cmp_bool/main()I
  pop
  return

.end method

.method public static printBool(Z)V
.limit locals 3
.limit stack 3
iload_-1
if_icmpeq label_e45f9668-5f03-4286-9e37-ea5e59993363
iconst_0
invokestatic Runtime/printInt(I)V
goto label_cc2cd01a-3823-49a7-943e-1da960efec9e
label_e45f9668-5f03-4286-9e37-ea5e59993363
iconst_1
invokestatic Runtime/printInt(I)V
label_cc2cd01a-3823-49a7-943e-1da960efec9e

.end method
.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
iconst_1
if_icmpeq label_ecf16039-1679-4530-b65b-d4ae80ea26a2
iconst_0
goto label_8b1f76b7-d305-4d27-9b8a-4090a3cb9a4f
label_ecf16039-1679-4530-b65b-d4ae80ea26a2
iconst_1
label_8b1f76b7-d305-4d27-9b8a-4090a3cb9a4f
iconst_0
invokestaticprintBool(Z)V
nop

iconst_1
iconst_0
if_icmpeq label_d0e32b64-a35c-49f6-8d83-c4ffbfb5fa36
iconst_0
goto label_428e8e6b-cf8d-4982-87ff-961e1b3b21a9
label_d0e32b64-a35c-49f6-8d83-c4ffbfb5fa36
iconst_1
label_428e8e6b-cf8d-4982-87ff-961e1b3b21a9
iconst_0
invokestaticprintBool(Z)V
nop

iconst_1
iconst_0
if_icmpne label_9b3c0153-0ac2-473f-92d3-081c15a0082d
iconst_0
goto label_a728b8d6-40fd-4e89-9de7-d3e1e43aab28
label_9b3c0153-0ac2-473f-92d3-081c15a0082d
iconst_1
label_a728b8d6-40fd-4e89-9de7-d3e1e43aab28
iconst_0
invokestaticprintBool(Z)V
nop

iconst_0
ireturn

.end method
