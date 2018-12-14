.class public core013
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

  invokestatic core013/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
iconst_1
isub
invokestatictest(I)Z
nop
iconst_0
invokestatictest(I)Z
nop
iand
invokestaticprintBool(Z)V
nop

iconst_0
iconst_2
isub
invokestatictest(I)Z
nop
iconst_1
invokestatictest(I)Z
nop
ior
invokestaticprintBool(Z)V
nop

iconst_3
invokestatictest(I)Z
nop
iconst_0
iconst_5
isub
invokestatictest(I)Z
nop
iand
iconst_1
iand
invokestaticprintBool(Z)V
nop

iconst_3
invokestatictest(I)Z
nop
iconst_0
iconst_5
isub
invokestatictest(I)Z
nop
iconst_1
iand
ior
invokestaticprintBool(Z)V
nop

iconst_1
invokestaticprintBool(Z)V
nop

iconst_0
invokestaticprintBool(Z)V
nop

iconst_0
ireturn

.end method
.method public static printBool(Z)V
.limit locals 3
.limit stack 3
iload_-1
if_icmpeq label_eab2ef22-406c-4bc6-9283-aec3b311f2d4
iconst_0
invokestatic Runtime/printInt(I)V
pop
goto label_c3a21e02-526c-47fa-9e39-1946054e3eab
label_eab2ef22-406c-4bc6-9283-aec3b311f2d4
iconst_1
invokestatic Runtime/printInt(I)V
pop
label_c3a21e02-526c-47fa-9e39-1946054e3eab

.end method
.method public static test(I)Z
.limit locals 3
.limit stack 3
iload_-1
iconst_0
if_icmpgt label_label_94944443-a924-4926-8f49-9c916f5fa45d
iconst_0
goto label_20a029a1-b892-4221-8757-919a189c8025
label_94944443-a924-4926-8f49-9c916f5fa45d
iconst_1
label_20a029a1-b892-4221-8757-919a189c8025
iconst_0
ireturn

.end method
