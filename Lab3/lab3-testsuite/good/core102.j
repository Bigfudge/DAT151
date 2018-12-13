.class public core102
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

  invokestatic core102/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
label_dc228304-36a9-4491-8896-9190ed93726e
ldc 2
ldc 5
ldc 6
imul
ldc 5
idiv
iadd
ldc 67
isub
ldc 5
if_icmpgt label_label_bd582a53-18fa-45a2-8cda-a8423e210629
iconst_0
goto label_a810ab98-2659-487f-b4bd-dab18e044264
label_bd582a53-18fa-45a2-8cda-a8423e210629
iconst_1
label_a810ab98-2659-487f-b4bd-dab18e044264
iconst_0
if icmpeq label_7301e5d5-9bbd-4439-91e9-6aa0d32dfdef
goto label_dc228304-36a9-4491-8896-9190ed93726e

ldc 0
ireturn

.end method
