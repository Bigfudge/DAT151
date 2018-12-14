.class public scopes_while_leakage
.super java/lang/Object

.method public <init>()V
  .limit locals 1
  .limit stack  1

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

<<<<<<< HEAD
label_4ef6201a-cf16-4490-a8ab-4d842e8566ca:
=======
<<<<<<< Updated upstream
label_1b62cc87-3272-419b-a1d3-1b67d0128816
=======
label_605f474e-26cc-472d-9dd8-cd054139f497
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_1
iload_1
iconst_1
iadd
istore_1
ldc 1
<<<<<<< HEAD
if_icmplt label_8dca857c-c634-4da7-8910-bfa810d69799:
=======
<<<<<<< Updated upstream
if_icmplt label_7f45b5d9-be2e-4a49-847d-842fb7c5349d
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_1db2f05c-2f07-49da-aaa2-409af985881f:
label_8dca857c-c634-4da7-8910-bfa810d69799:
iconst_1
label_1db2f05c-2f07-49da-aaa2-409af985881f:
iconst_0
if_icmpeq label_e8500eb5-4ff7-4d62-8dbe-c97542a201c7:
ldc 1
istore_2
goto label_4ef6201a-cf16-4490-a8ab-4d842e8566ca:
label_e8500eb5-4ff7-4d62-8dbe-c97542a201c7:

iload_2
iconst_1
if_icmpeq label_7acc837c-0640-4437-acbc-a877e35f75b7:
iconst_0
goto label_f9d76be3-83e5-4379-8bd2-0a6f35ebb0fc:
label_7acc837c-0640-4437-acbc-a877e35f75b7:
iconst_1
<<<<<<< HEAD
label_f9d76be3-83e5-4379-8bd2-0a6f35ebb0fc:
=======
label_a2ffafbb-f674-4523-9fca-beb72fdee683
=======
if_icmplt label_9d361226-5e4e-423d-a799-f875aa9c2b36
iconst_0
goto label_886e19ba-bbbe-4f65-89ec-f0aaace89b51
label_9d361226-5e4e-423d-a799-f875aa9c2b36
iconst_1
label_886e19ba-bbbe-4f65-89ec-f0aaace89b51
iconst_0
if icmpeq label_7c8470d6-d4f1-4a54-bab7-d8128a6617bf
ldc 1
istore_2
goto label_605f474e-26cc-472d-9dd8-cd054139f497

iload_2
iconst_1
if_icmpeq label_b2ae1c9d-985f-4b79-86ed-ac564acbd605
iconst_0
goto label_6c7aebbe-a9d1-42a1-a5d8-a40be249e15c
label_b2ae1c9d-985f-4b79-86ed-ac564acbd605
iconst_1
label_6c7aebbe-a9d1-42a1-a5d8-a40be249e15c
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0

iload_2
istore_3

ldc 0
ireturn

.end method
