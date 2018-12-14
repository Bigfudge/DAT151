.class public fibonacci
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

  invokestatic fibonacci/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 1
istore_0
iload_0

iload_0
istore_1
iload_1

ldc 5000000
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

label_1b36ff65-9812-460b-9b74-3f6a1d8668a9:
iload_1
iload_2
if_icmplt label_0787240e-255c-476f-85f8-175756a4f587:
iconst_0
goto label_a6f7b537-afe1-42b2-b3c2-8262afa1993f:
label_0787240e-255c-476f-85f8-175756a4f587:
iconst_1
label_a6f7b537-afe1-42b2-b3c2-8262afa1993f:
iconst_0
if_icmpeq label_6ffecb5b-69ba-4c26-b55c-28885c25c1f7:
iload_1
invokestatic Runtime/printInt(I)V
iload_0
iload_1
iadd
istore_1
iload_1
iload_1
iload_0
isub
istore_0
iload_0
goto label_1b36ff65-9812-460b-9b74-3f6a1d8668a9:
label_6ffecb5b-69ba-4c26-b55c-28885c25c1f7:

ldc 0
ireturn

.end method
