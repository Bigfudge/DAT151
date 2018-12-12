.class public scopes
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

  invokestatic scopes/main()I
  pop
  return

.end method

.method public static f()I
.limit locals 3
.limit stack 3
ldc 2
istore_0


iload_0
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
ldc 1
istore_1

iload_1
invokestatic Runtime/printInt(I)V

invokestaticf()I
invokestatic Runtime/printInt(I)V

iload_1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
