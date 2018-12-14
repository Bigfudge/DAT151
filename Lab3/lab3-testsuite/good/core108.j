.class public core108
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

  invokestatic core108/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 4
istore_0

iload_0
ldc 6
if_icmplt label_8feba694-ef34-42e3-ac74-afcbdec7fe9b:
iconst_0
goto label_b6e24a67-ede3-4b94-b708-7f5cb6dcb4f2:
label_8feba694-ef34-42e3-ac74-afcbdec7fe9b:
iconst_1
label_b6e24a67-ede3-4b94-b708-7f5cb6dcb4f2:
iconst_0
if_icmpne label_b1212c9c-73a1-471a-b5d5-2af08908cc2e:
iload_0
invokestatic Runtime/printInt(I)V
goto label_d91e6045-a5ba-4367-87e0-2dd950c0133d:
label_b1212c9c-73a1-471a-b5d5-2af08908cc2e:
label_d91e6045-a5ba-4367-87e0-2dd950c0133d:

iload_0
ireturn

.end method
