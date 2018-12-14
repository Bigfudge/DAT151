.class public core016
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

  invokestatic core016/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 17
istore_0

label_36935ecf-ac29-43e9-8649-5d4ea023fcd1
iload_0
iconst_0
if_icmpgt label_label_6377c79c-0fdb-4904-bf27-a985083505cb
iconst_0
goto label_f8902910-624a-4a53-ad75-62ec3dac4578
label_6377c79c-0fdb-4904-bf27-a985083505cb
iconst_1
label_f8902910-624a-4a53-ad75-62ec3dac4578
iconst_0
if icmpeq label_19913d95-df2d-43cb-a4c5-febeb178dcaf
iload_0
iconst_2
isub
istore_0
iload_0
goto label_36935ecf-ac29-43e9-8649-5d4ea023fcd1
label_19913d95-df2d-43cb-a4c5-febeb178dcaf

iload_0
iconst_0
if_icmplt label_5344773a-3eff-4973-b066-baeff01c5daa
iconst_0
goto label_3df0d0da-d5b5-4b1f-9f63-a19f6362ee78
label_5344773a-3eff-4973-b066-baeff01c5daa
iconst_1
label_3df0d0da-d5b5-4b1f-9f63-a19f6362ee78
iconst_0
if_icmpeq label_7efc853c-84ff-4c52-99df-6fc92decb460
iconst_1
invokestatic Runtime/printInt(I)V
pop
iconst_0
ireturn
pop
goto label_40a6c675-0958-4e67-a153-6738acfaefb6
label_7efc853c-84ff-4c52-99df-6fc92decb460
iconst_0
invokestatic Runtime/printInt(I)V
pop
iconst_0
ireturn
pop
label_40a6c675-0958-4e67-a153-6738acfaefb6

.end method
