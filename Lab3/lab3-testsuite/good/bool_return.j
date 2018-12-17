.class public bool_return
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

  invokestatic bool_return/main()I
  pop
  return

.end method

.method public static c(I)Z
.limit locals 500
.limit stack 500
iload 0
iload 0
if_icmplt L1
iconst_0
goto L2
L1:
iconst_1
L2:
ireturn
nop
.end method
.method public static main()I
.limit locals 500
.limit stack 500
iconst_0
invokestatic bool_return/c(I)Z
iconst_1
if_icmpeq L3
iconst_0
invokestatic Runtime/printInt(I)V
goto L4
L3:
iconst_1
invokestatic Runtime/printInt(I)V
L4:
iconst_0
ireturn
nop
.end method
