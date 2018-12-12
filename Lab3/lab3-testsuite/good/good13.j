.class public good13
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

  invokestatic good13/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

invokestatic Runtime/readInt()I
istore_0
iload_0

ldc 2
istore_1
iload_1

label_32dac3ea-e9e0-4991-94ae-de3ca611dca0
iload_1
iload_0
if_icmple label_3fc0cd12-535a-4cce-b861-996c6efbb492
iconst_0
goto label_f8905e54-9a19-41fa-8eca-6bde5aebb92e
label_3fc0cd12-535a-4cce-b861-996c6efbb492
iconst_1
label_f8905e54-9a19-41fa-8eca-6bde5aebb92e
iconst_0
if icmpeq label_08a79908-237d-4e06-9f97-ce9975b5b535
iconst_1
istore_2
pop
ldc 2
istore_3
pop
label_6bb9dcc1-43d4-4ef2-92ce-35de159a3221
iload_3
iload_3
imul
iload_1
if_icmple label_2cd0af35-3eea-4f31-9302-668942df8a85
iconst_0
goto label_eda8f89c-de84-42b1-8066-001ed0e5dd75
label_2cd0af35-3eea-4f31-9302-668942df8a85
iconst_1
label_eda8f89c-de84-42b1-8066-001ed0e5dd75
iconst_0
iload_2
iand
if icmpeq label_011bc7f2-791d-430b-800f-d1949fe46250
pop
iload_3
iload_3
iconst_1
iadd
istore_3
pop
goto label_6bb9dcc1-43d4-4ef2-92ce-35de159a3221
pop
pop
goto label_32dac3ea-e9e0-4991-94ae-de3ca611dca0

ldc 0
ireturn

.end method
