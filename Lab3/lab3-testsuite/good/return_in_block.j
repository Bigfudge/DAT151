.class public return_in_block
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

  invokestatic return_in_block/main()I
  pop
  return

.end method

.method public static niam()I
.limit locals 3
.limit stack 3
ldc 99
ireturn

iconst_1
invokestatic Runtime/printInt(I)V

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticniam()I
nop
invokestatic Runtime/printInt(I)V
<<<<<<< HEAD
pop
iconst_0
=======
ldc 0
>>>>>>> master
ireturn

iconst_2
invokestatic Runtime/printInt(I)V

.end method
