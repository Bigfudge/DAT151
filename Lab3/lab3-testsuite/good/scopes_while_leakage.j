.class public scopes_while_leakage
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

  invokestatic scopes_while_leakage/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0

ldc 0
istore_1

label_4ef6201a-cf16-4490-a8ab-4d842e8566ca:
iload_1
iload_1
iconst_1
iadd
istore_1
ldc 1
if_icmplt label_8dca857c-c634-4da7-8910-bfa810d69799:
iconst_0
goto label_1db2f05c-2f07-49da-aaa2-409af985881f:
label_8dca857c-c634-4da7-8910-bfa810d69799:
iconst_1
label_1db2f05c-2f07-49da-aaa2-409af985881f:
iconst_0
if_icmpeq label_e8500eb5-4ff7-4d62-8dbe-c97542a201c7:
ldc 1
istore_2
goto label_4ef6201a-cf16-4490-a8ab-4d842e8566ca:
label_e8500eb5-4ff7-4d62-8dbe-c97542a201c7:

iload_2
iconst_1
if_icmpeq label_7acc837c-0640-4437-acbc-a877e35f75b7:
iconst_0
goto label_f9d76be3-83e5-4379-8bd2-0a6f35ebb0fc:
label_7acc837c-0640-4437-acbc-a877e35f75b7:
iconst_1
label_f9d76be3-83e5-4379-8bd2-0a6f35ebb0fc:
iconst_0

iload_2
istore_3

ldc 0
ireturn

.end method
