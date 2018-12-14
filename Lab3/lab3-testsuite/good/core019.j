.class public core019
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

  invokestatic core019/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 78
istore_0

<<<<<<< HEAD
iconst_1
istore_0
pop
iload_0
=======
ldc 1
istore_1
iload_1
>>>>>>> master
invokestatic Runtime/printInt(I)V

iload_0
invokestatic Runtime/printInt(I)V

<<<<<<< HEAD
label_b0f82d99-4d73-4a27-92c9-f3552a2337b6
iload_0
ldc 76
if_icmpgt label_label_aabdfed4-93a0-4b18-bc6a-6ef20bd6f6b2
iconst_0
goto label_bb3a0417-3c09-4ed9-afe1-d3a7768ebb9d
label_aabdfed4-93a0-4b18-bc6a-6ef20bd6f6b2
iconst_1
label_bb3a0417-3c09-4ed9-afe1-d3a7768ebb9d
iconst_0
if icmpeq label_cc4d306c-082e-49e1-b7af-406c22e4d3e9
iload_0
iload_0
iconst_1
iadd
istore_0
pop
iload_0
=======
label_c7d088a0-11f4-44b8-b6ad-2eba0b7c4c00:
iload_1
ldc 76
if_icmpgt label_label_6644709d-82fe-4c66-9e49-1e4412d3e9fe:
iconst_0
goto label_b9f686fe-bb5f-4b84-befb-2d8b81bb3d32:
label_6644709d-82fe-4c66-9e49-1e4412d3e9fe:
iconst_1
label_b9f686fe-bb5f-4b84-befb-2d8b81bb3d32:
iconst_0
if_icmpeq label_3d5a7131-1b3e-40a7-9abd-0de5967f847d:
iload_1
iload_1
iconst_1
iadd
istore_1
iload_1
>>>>>>> master
invokestatic Runtime/printInt(I)V
ldc 7
<<<<<<< HEAD
istore_0
pop
iload_0
invokestatic Runtime/printInt(I)V
pop
goto label_b0f82d99-4d73-4a27-92c9-f3552a2337b6
label_cc4d306c-082e-49e1-b7af-406c22e4d3e9
=======
istore_2
iload_2
invokestatic Runtime/printInt(I)V
goto label_c7d088a0-11f4-44b8-b6ad-2eba0b7c4c00:
label_3d5a7131-1b3e-40a7-9abd-0de5967f847d:
>>>>>>> master

iload_0
invokestatic Runtime/printInt(I)V

<<<<<<< HEAD
iload_0
iconst_4
if_icmpgt label_label_387b5f06-d308-4234-8a0d-3b3a75ceb022
iconst_0
goto label_a2677ee0-e42e-409a-8968-9f1a010d7d1e
label_387b5f06-d308-4234-8a0d-3b3a75ceb022
iconst_1
label_a2677ee0-e42e-409a-8968-9f1a010d7d1e
iconst_0
if_icmpeq label_66e39081-da5e-4428-b73c-39f996c20664
goto label_b6b12574-fbc2-485a-bee4-8ca281c13b9c
label_66e39081-da5e-4428-b73c-39f996c20664
iconst_4
istore_0
pop
iload_0
invokestatic Runtime/printInt(I)V
pop
label_b6b12574-fbc2-485a-bee4-8ca281c13b9c

iload_0
=======
iload_2
ldc 4
if_icmpgt label_label_67213ad9-4dd2-4a4a-88cc-a45f1860ebbf:
iconst_0
goto label_dd84b413-e3ee-41b4-bab5-380516201450:
label_67213ad9-4dd2-4a4a-88cc-a45f1860ebbf:
iconst_1
label_dd84b413-e3ee-41b4-bab5-380516201450:
iconst_0
if_icmpne label_3636541d-9eeb-4efa-9404-d7db87410057:
ldc 4
istore_3
iload_3
invokestatic Runtime/printInt(I)V
goto label_205b4392-686f-40dd-a3e5-22f22b47d009:
label_3636541d-9eeb-4efa-9404-d7db87410057:
label_205b4392-686f-40dd-a3e5-22f22b47d009:

iload_3
>>>>>>> master
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
