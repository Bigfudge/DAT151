.class public return_in_while
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

  invokestatic return_in_while/main()I
  pop
  return

.end method

.method public static rRrrrRrrrReturn()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

label_61c05fad-8cd3-4640-b59f-ad4b1da77936:
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 5
if_icmplt label_1705e281-5f90-4280-aedc-3d0934ecf6fe:
iconst_0
goto label_a1925e80-8103-4a56-b610-1164cb884562:
label_1705e281-5f90-4280-aedc-3d0934ecf6fe:
iconst_1
label_a1925e80-8103-4a56-b610-1164cb884562:
iconst_0
if_icmpeq label_d2d4fa17-fe55-4976-aff9-1257c3b233fa:
ldc 71
ireturn
goto label_61c05fad-8cd3-4640-b59f-ad4b1da77936:
label_d2d4fa17-fe55-4976-aff9-1257c3b233fa:

ldc 52
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
invokestaticrRrrrRrrrReturn()I
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
