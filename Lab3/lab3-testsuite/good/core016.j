.class public core016
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

  invokestatic core016/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 17
istore_0

label_fad20bc7-eef3-44c0-87d9-7e1333888ead
iload_0
ldc 0
if_icmpgt label_label_fbeab394-f25d-481c-8960-5d00f8410f00
iconst_0
goto label_dc0020e1-1309-47dd-a42a-1b55a4c527e4
label_fbeab394-f25d-481c-8960-5d00f8410f00
iconst_1
label_dc0020e1-1309-47dd-a42a-1b55a4c527e4
iconst_0
if icmpeq label_d0c99428-02bb-4af2-b036-ac60d7803c2c
iload_0
ldc 2
isub
istore_0
iload_0
goto label_fad20bc7-eef3-44c0-87d9-7e1333888ead


.end method
