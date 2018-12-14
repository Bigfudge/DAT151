.class public scopes_if_leakage
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

  invokestatic scopes_if_leakage/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0


iload_0
iconst_1
<<<<<<< Updated upstream
if_icmpeq label_11ce4456-d4eb-4dc2-8ff6-f907b54bc7b0
iconst_0
goto label_2628a344-40fd-4755-b945-b7debe591ca9
label_11ce4456-d4eb-4dc2-8ff6-f907b54bc7b0
iconst_1
label_2628a344-40fd-4755-b945-b7debe591ca9
=======
if_icmpeq label_cee5886f-0962-444e-8d4c-c7dd437cf3e4
iconst_0
goto label_453abc16-9df8-4ec3-a831-6526aeb21c26
label_cee5886f-0962-444e-8d4c-c7dd437cf3e4
iconst_1
label_453abc16-9df8-4ec3-a831-6526aeb21c26
>>>>>>> Stashed changes
iconst_0

iload_0
istore_1


iload_0
iconst_1
<<<<<<< Updated upstream
if_icmpeq label_54f907c8-0890-41a5-b2ec-b2c5e3e322b4
iconst_0
goto label_f5d00b65-8114-4286-96e5-b4025f8ae29d
label_54f907c8-0890-41a5-b2ec-b2c5e3e322b4
iconst_1
label_f5d00b65-8114-4286-96e5-b4025f8ae29d
=======
if_icmpeq label_59fd4e43-098d-47ea-b4a8-ca6ed6ad9355
iconst_0
goto label_d8435585-815a-4ba3-a7f7-07b904c182d7
label_59fd4e43-098d-47ea-b4a8-ca6ed6ad9355
iconst_1
label_d8435585-815a-4ba3-a7f7-07b904c182d7
>>>>>>> Stashed changes
iconst_0

iload_0
istore_2

ldc 0
ireturn

.end method
