.class public redeclare_after_while
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

  invokestatic redeclare_after_while/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
istore_0

label_472a4e28-3c3f-40ce-acde-074a63426305
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
if_icmplt label_9f491527-2ba5-440c-a8a2-c9eeaa6b76d5
iconst_0
goto label_a4944a13-7df7-4680-a1a4-4b14c1d1a062
label_9f491527-2ba5-440c-a8a2-c9eeaa6b76d5
iconst_1
label_a4944a13-7df7-4680-a1a4-4b14c1d1a062
iconst_0
if icmpeq label_d9955ce4-95cb-4cc4-bc8f-1870238ad38f
ldc 100
istore_1
goto label_472a4e28-3c3f-40ce-acde-074a63426305
label_d9955ce4-95cb-4cc4-bc8f-1870238ad38f

iload_0
istore_1

iload_1
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
