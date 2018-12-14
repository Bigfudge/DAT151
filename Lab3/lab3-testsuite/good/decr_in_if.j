.class public decr_in_if
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

  invokestatic decr_in_if/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

iload_0
iload_0
iconst_1
iadd
istore_0
ldc 0
if_icmpge label_e4492e3f-84e2-4d93-9031-c80f37e3b3b3:
iconst_0
goto label_9244cbd1-2df3-4efb-881b-497c0893d25f:
label_e4492e3f-84e2-4d93-9031-c80f37e3b3b3:
iconst_1
label_9244cbd1-2df3-4efb-881b-497c0893d25f:
iconst_0
if_icmpne label_3a39adbd-6406-4890-a759-8c7297f35a2d:
ldc 0
goto label_52d3c462-d2e4-4fc9-b21f-92bc54d951b7:
label_3a39adbd-6406-4890-a759-8c7297f35a2d:
ldc 0
label_52d3c462-d2e4-4fc9-b21f-92bc54d951b7:

iload_0
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
