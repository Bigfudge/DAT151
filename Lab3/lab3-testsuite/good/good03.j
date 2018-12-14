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

iconst_1
istore_1

iconst_1
istore_2

label_545c4b0e-3f52-44e4-ad64-ae8de6437fc9
iload_2
iload_0
iconst_1
iadd
if_icmplt label_826ba856-d1dd-4b52-8625-da7b9f1f582b
iconst_0
goto label_fb2838cf-091c-4614-8c6e-edfa23c43066
label_826ba856-d1dd-4b52-8625-da7b9f1f582b
iconst_1
label_fb2838cf-091c-4614-8c6e-edfa23c43066
iconst_0
if icmpeq label_9195ca94-14b9-4daa-b772-8a21b365526f
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
goto label_545c4b0e-3f52-44e4-ad64-ae8de6437fc9
label_9195ca94-14b9-4daa-b772-8a21b365526f

iload_1
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
