.class public core103
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

  invokestatic core103/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 4
istore_0

label_c60e64e7-9fe6-420f-9d08-29d6379110f0
iload_0
ldc 6
if_icmplt label_cd92174a-02b3-464f-8486-d0f4a4f150ff
iconst_0
goto label_60a6ea46-5dcb-4bdf-be64-af09f5b73265
label_cd92174a-02b3-464f-8486-d0f4a4f150ff
iconst_1
label_60a6ea46-5dcb-4bdf-be64-af09f5b73265
iconst_0
if icmpeq label_64a63ef0-5aaa-42c9-bcb7-d497245e4d43
ldc 0
istore_1
pop
iload_1
iload_1
iconst_1
iadd
istore_1
pop
iload_1
invokestatic Runtime/printInt(I)V
pop
iload_0
iload_0
iconst_1
iadd
istore_0
pop
goto label_c60e64e7-9fe6-420f-9d08-29d6379110f0


iload_0
invokestatic Runtime/printInt(I)V

iload_0
ireturn

.end method
