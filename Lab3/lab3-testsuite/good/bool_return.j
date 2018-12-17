.class public bool_return
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

  invokestatic bool_return/main()I
  pop
  return

.end method

.method public static c(I)Z
.limit locals 1000
.limit stack 1000
iconst_0
istore 0
iload 0
iload 0
if_icmplt L1
iconst_0
goto L2
L1:
iconst_1
L2:
iconst_0
return

.end method
.method public static main()I
.limit locals 1000
.limit stack 1000
invokestatic c(I)Z
iconst_0
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
.end method
