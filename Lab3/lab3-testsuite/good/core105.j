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
iconst_5
istore_0

label_25469551-9c58-4ae8-a272-5a033d8e8e9c
iload_0
iconst_3
if_icmpgt label_label_6e7b83ac-6323-4227-8aeb-2099a0052eed
iconst_0
goto label_e5bca108-3e54-4874-b820-5122edd2dd57
label_6e7b83ac-6323-4227-8aeb-2099a0052eed
iconst_1
label_e5bca108-3e54-4874-b820-5122edd2dd57
iconst_0
if icmpeq label_d76cc8f9-62f1-4e4c-9db2-38eca40647fd
iload_0
iload_0
iconst_1
iadd
istore_0
invokestatic Runtime/printInt(I)V
goto label_25469551-9c58-4ae8-a272-5a033d8e8e9c
label_d76cc8f9-62f1-4e4c-9db2-38eca40647fd

iload_0
ireturn

.end method
