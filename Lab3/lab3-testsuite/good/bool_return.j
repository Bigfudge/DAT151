.class public bool_return
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

  invokestatic bool_return/main()I
  pop
  return

.end method

.method public static c(I)Z
.limit locals 3
.limit stack 3
iload_-1
iload_-1
if_icmplt label_2ba9c4f6-3990-4708-a58e-d790dc3ab35d
iconst_0
goto label_3316904f-4166-4fba-9936-5795992a0d1d
label_2ba9c4f6-3990-4708-a58e-d790dc3ab35d
iconst_1
label_3316904f-4166-4fba-9936-5795992a0d1d
iconst_0
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
invokestaticc(I)Z
nop
if_icmpeq label_57c6d8ed-efa8-4867-a8c8-4c5b8effa73b
iconst_0
invokestatic Runtime/printInt(I)V
goto label_3a797484-4fa0-4633-bd7a-9aaa88beacf0
label_57c6d8ed-efa8-4867-a8c8-4c5b8effa73b
iconst_1
invokestatic Runtime/printInt(I)V
label_3a797484-4fa0-4633-bd7a-9aaa88beacf0

iconst_0
ireturn

.end method
