.class public good07
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

label_dbbe5c19-b2c7-4df8-8256-3b2231490880:
iload_1
ldc 1
if_icmpgt label_label_1648e305-0b1b-4e22-ae53-187bd02ab673:
iconst_0
goto label_a15adcff-fde3-4722-97f9-88f705bbcef7:
label_1648e305-0b1b-4e22-ae53-187bd02ab673:
iconst_1
label_a15adcff-fde3-4722-97f9-88f705bbcef7:
iconst_0
if_icmpeq label_799b3182-229f-431b-9a83-895101379f0f:
iload_1
iload_0
iload_1
idiv
imul
iload_0
if_icmpeq label_22c41b0f-5407-44ba-8814-ba0ef4e0bc53:
iconst_0
goto label_255c73a6-2094-4c17-a495-28e150245be5:
label_22c41b0f-5407-44ba-8814-ba0ef4e0bc53:
iconst_1
label_255c73a6-2094-4c17-a495-28e150245be5:
iconst_0
if_icmpne label_6851af2c-8318-44af-98ed-421b8da3ff4c:
iload_1
invokestatic Runtime/printInt(I)V
goto label_67220bbb-2894-4f3b-b46b-20ce2adc4ef1:
label_6851af2c-8318-44af-98ed-421b8da3ff4c:
label_67220bbb-2894-4f3b-b46b-20ce2adc4ef1:
iload_1
iload_1
iconst_1
iadd
istore_1
goto label_dbbe5c19-b2c7-4df8-8256-3b2231490880:
label_799b3182-229f-431b-9a83-895101379f0f:

ldc 0
ireturn

.end method
