.class public good07
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

  invokestatic good07/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestatic Runtime/readInt()I
istore_0

iload_0
ldc 2
idiv
istore_1

label_0ea6a4a5-0e4b-4163-9121-88c6d99e1abf
iload_1
ldc 1
if_icmpgt label_label_26b4fbfe-d323-4dce-832f-4bb2a9b8f441
iconst_0
goto label_80b73d8f-44b1-4073-a216-c865e96048d0
label_26b4fbfe-d323-4dce-832f-4bb2a9b8f441
iconst_1
label_80b73d8f-44b1-4073-a216-c865e96048d0
iconst_0
if icmpeq label_607a6609-6fb7-488d-8431-327859fcb351
pop
iload_1
iload_1
iconst_1
iadd
istore_1
pop
goto label_0ea6a4a5-0e4b-4163-9121-88c6d99e1abf

ldc 0
ireturn

.end method
