.class public decr_in_if
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

  invokestatic decr_in_if/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
istore_0

iload_0
iload_0
iconst_1
iadd
istore_0
iconst_0
if_icmpge label_c4499111-8ff4-4b1f-8f3d-28e22cc37f6e
iconst_0
goto label_618ea900-c121-45be-b2cb-e8aa0a719ef1
label_c4499111-8ff4-4b1f-8f3d-28e22cc37f6e
iconst_1
label_618ea900-c121-45be-b2cb-e8aa0a719ef1
iconst_0
if_icmpeq label_1a150906-0fd1-4304-b53b-ba4468bc4518
iconst_0
goto label_2c720be9-a3b8-4a14-8bb0-bae7d9c2104c
label_1a150906-0fd1-4304-b53b-ba4468bc4518
iconst_0
label_2c720be9-a3b8-4a14-8bb0-bae7d9c2104c

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
