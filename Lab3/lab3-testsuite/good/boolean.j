.class public boolean
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

  invokestatic boolean/main()I
  pop
  return

.end method

.method public static ff()Z
.limit locals 3
.limit stack 3
ldc 0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
.method public static tt()Z
.limit locals 3
.limit stack 3
ldc 1
invokestatic Runtime/printInt(I)V

iconst_1
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0

iconst_0
istore_1

iload_1
invokestaticff()Z
iand
istore_2

iload_0
invokestaticff()Z
ior
istore_3

iload_0
invokestatictt()Z
iand
istore_4

iload_1
invokestatictt()Z
ior
istore_5

ldc 0
ireturn

.end method
