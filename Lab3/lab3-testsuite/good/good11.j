.class public good11
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

  invokestatic good11/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

ldc 0
istore_1


label_c43daa39-7ae6-4f32-ae35-0a1736656a72
invokestatic Runtime/readInt()I
istore_2
iload_2
ldc 0
if_icmpne label_ec1da4a3-f09a-4178-bdf7-1301718102c8
iconst_0
goto label_792a2a3a-ce6a-47a7-94ab-490350f082ef
label_ec1da4a3-f09a-4178-bdf7-1301718102c8
iconst_1
label_792a2a3a-ce6a-47a7-94ab-490350f082ef
iconst_0
if icmpeq label_ca208004-3ecc-4ed0-ad18-00e57bfb4ae4
iload_0
iload_2
iadd
istore_0
iload_0
pop
iload_1
iload_1
iconst_1
iadd
istore_1
pop
goto label_c43daa39-7ae6-4f32-ae35-0a1736656a72

iload_0
iload_1
idiv
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
