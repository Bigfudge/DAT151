.class public bind_function_arguments_lazily
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

  invokestatic bind_function_arguments_lazily/main()I
  pop
  return

.end method

.method public static snd(II)I
.limit locals 1000
.limit stack 1000
iconst_0
istore 0
iconst_0
istore 1
iload 1
areturn

.end method
.method public static main()I
.limit locals 1000
.limit stack 1000
iconst_0
istore 2
iload 2

iconst_1
iload 2
invokestatic snd(II)I
nop
istore 3
iload 3

iload 3
invokestatic Runtime/printInt(I)V

iload 3
ireturn
iload 3
areturn

.end method
