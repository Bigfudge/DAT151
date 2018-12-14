.class public core113
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

  invokestatic core113/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 45
invokestaticf(I)I
nop
invokestatic Runtime/printInt(I)V

ldc 450
invokestaticf(I)I
nop
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
.method public static f(I)I
.limit locals 3
.limit stack 3

iload_-1
ldc 100
if_icmplt label_28642303-c3af-4309-8484-4c5280370075
iconst_0
goto label_7697a861-79bd-4dd2-8c27-e4e514eaf67c
label_28642303-c3af-4309-8484-4c5280370075
iconst_1
label_7697a861-79bd-4dd2-8c27-e4e514eaf67c
iconst_0
if_icmpeq label_78ee5df9-ceb7-4d75-be47-e84ad7cbf209
iload_-1
istore_0
iload_0
pop
goto label_9a2f99e3-c598-4282-919d-894c4bd2723d
label_78ee5df9-ceb7-4d75-be47-e84ad7cbf209
ldc 91
istore_1
pop
iload_1
istore_0
iload_0
pop
label_9a2f99e3-c598-4282-919d-894c4bd2723d

iload_0
ireturn

.end method
