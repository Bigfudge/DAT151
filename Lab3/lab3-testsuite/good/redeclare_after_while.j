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
ldc 0
istore_0

label_42f05022-368a-4b5b-8a60-467320f26f9d
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
if_icmplt label_4c9e2de0-d365-4e13-9ebd-616f58326037
iconst_0
goto label_d3dfb1e4-e160-465b-9eb2-3b2564e876b2
label_4c9e2de0-d365-4e13-9ebd-616f58326037
iconst_1
label_d3dfb1e4-e160-465b-9eb2-3b2564e876b2
iconst_0
if icmpeq label_580855ec-bf37-44d5-927a-56cc95ae8682
ldc 100
istore_1
goto label_42f05022-368a-4b5b-8a60-467320f26f9d

iload_0
istore_2

iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
