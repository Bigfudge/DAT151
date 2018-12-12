.class public core105
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

  invokestatic core105/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 5
istore_0

label_d86d47c1-84c5-4899-b2fc-27152140a162
iload_0
ldc 3
if_icmpgt label_label_c5f7a987-f25c-47c7-b7a3-7c179cc97da9
iconst_0
goto label_082ac215-1daf-4e46-b5e0-4977d22fff02
label_c5f7a987-f25c-47c7-b7a3-7c179cc97da9
iconst_1
label_082ac215-1daf-4e46-b5e0-4977d22fff02
iconst_0
if icmpeq label_a3430e5d-80f6-4360-8c0c-af1639b98ab5
iload_0
iload_0
iconst_1
iadd
istore_0
invokestatic Runtime/printInt(I)V
goto label_d86d47c1-84c5-4899-b2fc-27152140a162

iload_0
ireturn

.end method
