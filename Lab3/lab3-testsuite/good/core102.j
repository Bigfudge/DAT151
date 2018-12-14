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
<<<<<<< Updated upstream
label_dc228304-36a9-4491-8896-9190ed93726e
=======
label_8668ea93-9688-4fe7-9919-7af6349d24ea
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
if_icmpgt label_label_bd582a53-18fa-45a2-8cda-a8423e210629
iconst_0
goto label_a810ab98-2659-487f-b4bd-dab18e044264
label_bd582a53-18fa-45a2-8cda-a8423e210629
iconst_1
label_a810ab98-2659-487f-b4bd-dab18e044264
iconst_0
if icmpeq label_7301e5d5-9bbd-4439-91e9-6aa0d32dfdef
goto label_dc228304-36a9-4491-8896-9190ed93726e
=======
if_icmpgt label_label_7b8d152c-7544-4311-b154-970a2a4eeb43
iconst_0
goto label_a2dc3e27-bfa9-4f7a-b3e0-37618bd28b0c
label_7b8d152c-7544-4311-b154-970a2a4eeb43
iconst_1
label_a2dc3e27-bfa9-4f7a-b3e0-37618bd28b0c
iconst_0
if icmpeq label_c0c70987-0ba1-42db-a264-2ddc819b5656
goto label_8668ea93-9688-4fe7-9919-7af6349d24ea
>>>>>>> Stashed changes

ldc 0
ireturn

.end method
