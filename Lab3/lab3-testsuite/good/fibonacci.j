.class public fibonacci
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

  invokestatic fibonacci/main()I
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

ldc 5000000
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

label_4f0a51d4-19ae-4b9c-9e0e-07f768ff7043
iload_1
iload_2
if_icmplt label_7fbd2871-b14b-4cb2-b1f4-c2b2966a421b
iconst_0
goto label_def48f53-9bdb-498a-b5b9-715187131d2c
label_7fbd2871-b14b-4cb2-b1f4-c2b2966a421b
iconst_1
label_def48f53-9bdb-498a-b5b9-715187131d2c
iconst_0
if icmpeq label_f625decf-6f75-4f70-8b7b-e7ad1b9e53bd
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
goto label_4f0a51d4-19ae-4b9c-9e0e-07f768ff7043

ldc 0
ireturn

.end method
