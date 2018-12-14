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
ldc 0
istore_0

<<<<<<< Updated upstream
label_555e9df9-0e66-4117-b87e-31328b55f40b
=======
label_dc20ad6c-1247-4d9b-afcb-203023edd53e
>>>>>>> Stashed changes
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
<<<<<<< Updated upstream
if_icmplt label_941baa9f-e59a-4cae-9c8c-13550beea2d6
iconst_0
goto label_5c2d0d89-2bf6-4fb0-90c4-57105ede471f
label_941baa9f-e59a-4cae-9c8c-13550beea2d6
iconst_1
label_5c2d0d89-2bf6-4fb0-90c4-57105ede471f
iconst_0
if icmpeq label_e062eed2-af55-4697-a99c-b71ca37e35c8
ldc 100
istore_1
goto label_555e9df9-0e66-4117-b87e-31328b55f40b
=======
if_icmplt label_36ba6ff8-8a67-4c09-9ad3-c593dac6441a
iconst_0
goto label_d4dbc824-b01a-4711-aba7-e0fe4d695a83
label_36ba6ff8-8a67-4c09-9ad3-c593dac6441a
iconst_1
label_d4dbc824-b01a-4711-aba7-e0fe4d695a83
iconst_0
if icmpeq label_fd1f4f7c-6ee1-4df6-a0df-ff977e15d58d
ldc 100
istore_1
goto label_dc20ad6c-1247-4d9b-afcb-203023edd53e
>>>>>>> Stashed changes

iload_1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
