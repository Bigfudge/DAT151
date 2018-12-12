.class public return_in_block
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

  invokestatic return_in_block/main()I
  pop
  return

.end method

.method public static niam()I
.limit locals 3
.limit stack 3
ldc 99
ireturn
pop

ldc 1
invokestatic Runtime/printInt(I)V

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticniam()I
invokestatic Runtime/printInt(I)V
pop
ldc 0
ireturn
pop

ldc 2
invokestatic Runtime/printInt(I)V

.end method
