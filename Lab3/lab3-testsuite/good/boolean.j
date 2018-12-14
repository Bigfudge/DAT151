.class public boolean
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

  invokestatic boolean/main()I
  pop
  return

.end method

.method public static ff()Z
.limit locals 1000
.limit stack 1000
iconst_0
invokestatic Runtime/printInt(I)V

iconst_0
areturn

.end method
.method public static tt()Z
.limit locals 1000
.limit stack 1000
iconst_1
invokestatic Runtime/printInt(I)V

iconst_1
areturn

.end method
.method public static main()I
.limit locals 1000
.limit stack 1000
iconst_1
istore 0
iload 0

iconst_0
istore 1
iload 1

iload 1
invokestatic ff()Z
nop
iand
istore 2
iload 2

iload 0
invokestatic ff()Z
nop
ior
istore 3
iload 3

iload 0
invokestatic tt()Z
nop
iand
istore 4
iload 4

iload 1
invokestatic tt()Z
nop
ior
istore 5
iload 5

iconst_0
ireturn
iconst_0
areturn

.end method
