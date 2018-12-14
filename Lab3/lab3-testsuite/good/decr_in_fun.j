.class public decr_in_fun
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

  invokestatic decr_in_fun/main()I
  pop
  return

.end method

.method public static f(I)I
.limit locals 3
.limit stack 3
iload_-1
iconst_1
isub
istore_-1
iload_-1
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
invokestaticf(I)I
nop
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
