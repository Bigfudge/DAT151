.class public good07
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

  invokestatic good07/main()I
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
idiv
istore_1

label_e44a809c-0982-4c16-8c52-25900d67df50
iload_1
ldc 1
if_icmpgt label_label_8492e67a-0c62-415f-b2da-df210c5f19f6
iconst_0
goto label_e42271d8-b9e2-4906-9257-354cfe8425c6
label_8492e67a-0c62-415f-b2da-df210c5f19f6
iconst_1
label_e42271d8-b9e2-4906-9257-354cfe8425c6
iconst_0
if icmpeq label_8142d4ee-b7df-47ea-9394-c2a06a518259
pop
iload_1
iload_1
iconst_1
iadd
istore_1
pop
goto label_e44a809c-0982-4c16-8c52-25900d67df50

ldc 0
ireturn

.end method
