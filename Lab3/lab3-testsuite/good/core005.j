.class public core005
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

  invokestatic core005/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 56
istore_1

iload_1
ldc 45
iadd
ldc 2
if_icmple label_2a5a1558-7fce-4373-907a-709fa0695d6a:
iconst_0
goto label_378d0c97-8cab-4314-aaa7-fd4c6b5aa23e:
label_2a5a1558-7fce-4373-907a-709fa0695d6a:
iconst_1
label_378d0c97-8cab-4314-aaa7-fd4c6b5aa23e:
iconst_0
if_icmpne label_3179f9ef-2402-4f67-b3b9-14a662cc32b3:
ldc 1
istore_0
iload_0
goto label_f16c7623-4c4b-497e-9e15-3d12cef7372d:
label_3179f9ef-2402-4f67-b3b9-14a662cc32b3:
ldc 2
istore_0
iload_0
label_f16c7623-4c4b-497e-9e15-3d12cef7372d:

iload_0
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
