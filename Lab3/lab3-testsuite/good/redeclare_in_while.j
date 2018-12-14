.class public redeclare_in_while
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

  invokestatic redeclare_in_while/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
istore_0

label_ac72f73f-8275-4698-ab2d-38256d8918eb
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
if_icmplt label_8d0bdf49-67c0-4f46-b783-10c9498f59dc
iconst_0
goto label_0893bea5-91cb-40fd-bf95-3e63d20ffd82
label_8d0bdf49-67c0-4f46-b783-10c9498f59dc
iconst_1
label_0893bea5-91cb-40fd-bf95-3e63d20ffd82
iconst_0
if icmpeq label_a49e9466-c280-448c-9ae3-1070fe8f771a
ldc 100
istore_0
goto label_ac72f73f-8275-4698-ab2d-38256d8918eb
label_a49e9466-c280-448c-9ae3-1070fe8f771a

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
