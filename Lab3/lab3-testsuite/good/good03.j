.class public good03
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

  invokestatic good03/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestatic Runtime/readInt()I
istore_0

ldc 1
istore_1

ldc 1
istore_2

<<<<<<< Updated upstream
label_727d5fd4-11e7-427c-b205-2c515aac52f8
=======
label_d244aec5-4219-4d85-b98e-19a006010b79
>>>>>>> Stashed changes
iload_2
iload_0
ldc 1
iadd
<<<<<<< Updated upstream
if_icmplt label_d5ea73a6-04e6-4088-b475-4a5002304041
iconst_0
goto label_b9aa95c2-2d1f-4318-a978-b55c0bead4a5
label_d5ea73a6-04e6-4088-b475-4a5002304041
iconst_1
label_b9aa95c2-2d1f-4318-a978-b55c0bead4a5
iconst_0
if icmpeq label_a4d4ee4c-2048-4548-99b0-f6419bc4b465
=======
if_icmplt label_588054dc-8cfe-4963-9e90-d9ab90a59c35
iconst_0
goto label_1109802f-2f52-4802-b918-96d7ebf55306
label_588054dc-8cfe-4963-9e90-d9ab90a59c35
iconst_1
label_1109802f-2f52-4802-b918-96d7ebf55306
iconst_0
if icmpeq label_7077ec75-ff5c-4b8c-877d-8339a1062399
>>>>>>> Stashed changes
iload_2
iload_1
imul
istore_1
iload_1
pop
iload_2
iconst_1
iadd
istore_2
iload_2
pop
<<<<<<< Updated upstream
goto label_727d5fd4-11e7-427c-b205-2c515aac52f8
=======
goto label_d244aec5-4219-4d85-b98e-19a006010b79
>>>>>>> Stashed changes

iload_1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
