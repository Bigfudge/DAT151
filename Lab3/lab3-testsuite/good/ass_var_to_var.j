.class public ass_var_to_var
.super java/lang/Object

.method public <init>()V
  .limit locals 500
  .limit stack  500

  aload_0
  invokespecial java/lang/Object/<init>()V
  return

.end method

.method public static main([Ljava/lang/String;)V
  .limit locals 500
  .limit stack  500

  invokestatic ass_var_to_var/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 500
.limit stack 500
iconst_0
istore 0
iload 0
istore 1
iconst_0
ireturn
nop
.end method
