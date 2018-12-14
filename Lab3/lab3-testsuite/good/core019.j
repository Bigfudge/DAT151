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

ldc 1
istore_1
iload_1
invokestatic Runtime/printInt(I)V

iload_1
invokestatic Runtime/printInt(I)V

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
invokestatic Runtime/printInt(I)V
ldc 7
istore_2
iload_2
invokestatic Runtime/printInt(I)V
goto label_c7d088a0-11f4-44b8-b6ad-2eba0b7c4c00:
label_3d5a7131-1b3e-40a7-9abd-0de5967f847d:

iload_2
invokestatic Runtime/printInt(I)V

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
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
