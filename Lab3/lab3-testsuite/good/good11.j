.class public good11
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

  invokestatic good11/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

ldc 0
istore_1


label_20af54a8-08c5-4554-bac0-e08e0278c532
invokestatic Runtime/readInt()I
istore_2
iload_2
ldc 0
if_icmpne label_5946c6fd-c7da-4ac3-955f-33a1d961baa9
iconst_0
goto label_4c009b00-e187-4178-bfa8-390030879ad8
label_5946c6fd-c7da-4ac3-955f-33a1d961baa9
iconst_1
label_4c009b00-e187-4178-bfa8-390030879ad8
iconst_0
if icmpeq label_c8631d87-5a37-4974-8aa2-850ce076cfe3
iload_0
iload_2
iadd
istore_0
iload_0
pop
iload_1
iload_1
iconst_1
iadd
istore_1
pop
goto label_20af54a8-08c5-4554-bac0-e08e0278c532

iload_0
iload_1
idiv
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
