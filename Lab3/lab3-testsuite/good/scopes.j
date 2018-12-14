.class public scopes
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

  invokestatic scopes/main()I
  pop
  return

.end method

.method public static f()I
.limit locals 3
.limit stack 3
ldc 2
istore_0

iload_0
ldc 3
if_icmplt label_2283cadc-73ff-4a80-a321-01b19e4f74de:
iconst_0
goto label_beb09608-1dce-407a-9914-407536f830ef:
label_2283cadc-73ff-4a80-a321-01b19e4f74de:
iconst_1
label_beb09608-1dce-407a-9914-407536f830ef:
iconst_0
if_icmpne label_acf32b47-27ad-4cda-bfc8-632788f7a919:
ldc 3
istore_1
iload_1
ireturn
goto label_63440d3f-9eee-4407-95e3-0065696b9479:
label_acf32b47-27ad-4cda-bfc8-632788f7a919:
label_63440d3f-9eee-4407-95e3-0065696b9479:

iload_1
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
ldc 1
istore_2

iload_2
invokestatic Runtime/printInt(I)V

invokestaticf()I
invokestatic Runtime/printInt(I)V

iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
