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
iload_null
iconst_1
isub
istore_null
iload_null
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticf(I)I
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
