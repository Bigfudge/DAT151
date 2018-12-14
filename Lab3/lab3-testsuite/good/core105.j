.class public core105
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

  invokestatic core105/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 5
istore_0

label_2e353daa-aca3-4757-afd4-462b87b88d5d:
iload_0
ldc 3
if_icmpgt label_label_909510a2-89c4-40f0-ad27-7cf7c666fa6c:
iconst_0
goto label_e6229ac0-2e98-403e-a0f0-fa4a3da29664:
label_909510a2-89c4-40f0-ad27-7cf7c666fa6c:
iconst_1
label_e6229ac0-2e98-403e-a0f0-fa4a3da29664:
iconst_0
if_icmpeq label_c4cd91b8-0f67-4654-a3ff-78e41ad84ffc:
iload_0
iload_0
iconst_1
iadd
istore_0
invokestatic Runtime/printInt(I)V
goto label_2e353daa-aca3-4757-afd4-462b87b88d5d:
label_c4cd91b8-0f67-4654-a3ff-78e41ad84ffc:

iload_0
ireturn

.end method
