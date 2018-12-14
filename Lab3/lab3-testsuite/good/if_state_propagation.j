.class public if_state_propagation
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

  invokestatic if_state_propagation/main()I
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
if_icmpeq label_6e0dffac-ab72-4b24-be2f-503ca37a545c
iconst_0
goto label_2fdd5c21-fef3-4da2-94ef-a0ae7da766c7
label_6e0dffac-ab72-4b24-be2f-503ca37a545c
iconst_1
label_2fdd5c21-fef3-4da2-94ef-a0ae7da766c7
iconst_0
if_icmpeq label_07daaede-f463-4cc2-996c-2654829a8f97
goto label_d16e2747-4038-4047-a43f-b412a0044083
label_07daaede-f463-4cc2-996c-2654829a8f97
label_d16e2747-4038-4047-a43f-b412a0044083

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
