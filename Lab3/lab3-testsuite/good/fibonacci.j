.class public fibonacci
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

  invokestatic fibonacci/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 1
istore_0
iload_0

iload_0
istore_1
iload_1

ldc 5000000
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

<<<<<<< Updated upstream
label_38d7b0a7-7d84-444b-b1f8-bd5dae73cbf3
iload_1
iload_2
if_icmplt label_ad8c530e-daab-4c85-8372-45aa908fc74e
iconst_0
goto label_8ca6e4b6-a9b1-4f06-abbe-7c5246133476
label_ad8c530e-daab-4c85-8372-45aa908fc74e
iconst_1
label_8ca6e4b6-a9b1-4f06-abbe-7c5246133476
iconst_0
if icmpeq label_ee3ffdb0-434f-4f8d-a5f7-d6f3d15ad312
=======
label_bd15ab10-9f4d-4bb9-8a31-b355ede231ad
iload_1
iload_2
if_icmplt label_58fd5c3a-fbda-4134-9f63-4bbadb50c8c4
iconst_0
goto label_2e5fb57f-749b-401a-91f4-beb1177494c7
label_58fd5c3a-fbda-4134-9f63-4bbadb50c8c4
iconst_1
label_2e5fb57f-749b-401a-91f4-beb1177494c7
iconst_0
if icmpeq label_9e5f397e-91a2-4406-a183-0a56e0a62c7c
>>>>>>> Stashed changes
iload_1
invokestatic Runtime/printInt(I)V
pop
iload_0
iload_1
iadd
istore_1
iload_1
pop
iload_1
iload_0
isub
istore_0
iload_0
pop
<<<<<<< Updated upstream
goto label_38d7b0a7-7d84-444b-b1f8-bd5dae73cbf3
=======
goto label_bd15ab10-9f4d-4bb9-8a31-b355ede231ad
>>>>>>> Stashed changes

ldc 0
ireturn

.end method