.class public scopes_while_leakage
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

label_1b62cc87-3272-419b-a1d3-1b67d0128816
iload_1
iload_1
iconst_1
iadd
istore_1
ldc 1
if_icmplt label_7f45b5d9-be2e-4a49-847d-842fb7c5349d
iconst_0
goto label_3e9d8483-c449-4b5c-a421-248c546b1eee
label_7f45b5d9-be2e-4a49-847d-842fb7c5349d
iconst_1
label_3e9d8483-c449-4b5c-a421-248c546b1eee
iconst_0
if icmpeq label_f2283ce8-a301-4e93-bf8d-219ce4aa55bc
ldc 1
istore_2
goto label_1b62cc87-3272-419b-a1d3-1b67d0128816

iload_2
iconst_1
if_icmpeq label_9ea78aeb-b873-4372-a4a0-138f54287fd5
iconst_0
goto label_a2ffafbb-f674-4523-9fca-beb72fdee683
label_9ea78aeb-b873-4372-a4a0-138f54287fd5
iconst_1
label_a2ffafbb-f674-4523-9fca-beb72fdee683
iconst_0

iload_2
istore_3

ldc 0
ireturn

.end method
