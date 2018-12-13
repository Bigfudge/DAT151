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
goto label_af428db1-14af-4a75-8cf3-1f7855d82185

ldc 0
ireturn

.end method
