.class public good05
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

  invokestatic good05/main()I
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

invokestatic Runtime/readInt()I
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

<<<<<<< Updated upstream
label_af428db1-14af-4a75-8cf3-1f7855d82185
iload_1
iload_2
if_icmplt label_a4f4d817-de44-42cb-a447-7ea21895cfae
iconst_0
goto label_57a53e9f-529e-481d-976b-7a4aed6c8cb8
label_a4f4d817-de44-42cb-a447-7ea21895cfae
iconst_1
label_57a53e9f-529e-481d-976b-7a4aed6c8cb8
iconst_0
if icmpeq label_4e6bb9ee-bee2-46d5-bb48-f6e6031c32a4
=======
label_0c190928-985c-4509-9ac7-fb19935ba81b
iload_1
iload_2
if_icmplt label_67514498-e8c1-4985-958b-3bda0dd89cd9
iconst_0
goto label_1341c4a4-6e3a-447e-b397-375a54bd75ad
label_67514498-e8c1-4985-958b-3bda0dd89cd9
iconst_1
label_1341c4a4-6e3a-447e-b397-375a54bd75ad
iconst_0
if icmpeq label_6fd7f201-e979-4d0a-b42d-86b70e7e62e8
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
goto label_af428db1-14af-4a75-8cf3-1f7855d82185
=======
goto label_0c190928-985c-4509-9ac7-fb19935ba81b
>>>>>>> Stashed changes

ldc 0
ireturn

.end method
