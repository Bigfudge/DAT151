.class public return_complex
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

  invokestatic return_complex/main()I
  pop
  return

.end method

.method public static foo(I)Z
.limit locals 3
.limit stack 3
iload_-1
iconst_0
if_icmpeq label_64a10888-a4d5-41de-b5ab-f5898aa1c3cc
iconst_0
goto label_deadb376-436c-4f40-9c28-473cf7eb7301
label_64a10888-a4d5-41de-b5ab-f5898aa1c3cc
iconst_1
label_deadb376-436c-4f40-9c28-473cf7eb7301
iconst_0
if_icmpeq label_6ab36636-53a5-4016-a491-7c78606246bc
goto label_be7adc12-64af-48da-9d60-82f5b73f807e
label_6ab36636-53a5-4016-a491-7c78606246bc
iconst_0
ireturn
pop
label_be7adc12-64af-48da-9d60-82f5b73f807e

iconst_1
istore_0

iload_-1
invokestatic Runtime/printInt(I)V

iload_0
ireturn

.end method
.method public static printBool(Z)V
.limit locals 3
.limit stack 3
iconst_0
if_icmpeq label_affd043e-f4e1-45ab-8e0e-8917532d4d08
iload_0
if_icmpeq label_b59b4213-775f-41d3-8425-d0dc24a99324
iconst_1
invokestatic Runtime/printInt(I)V
pop
goto label_21a47986-3ff5-4558-8073-70d543d65480
label_b59b4213-775f-41d3-8425-d0dc24a99324
iconst_0
invokestatic Runtime/printInt(I)V
pop
label_21a47986-3ff5-4558-8073-70d543d65480
goto label_970c0d5b-4be6-4836-b1ff-88d27e96e68c
label_affd043e-f4e1-45ab-8e0e-8917532d4d08
label_970c0d5b-4be6-4836-b1ff-88d27e96e68c

.end method
.method public static main()I
.limit locals 3
.limit stack 3
ldc 42
invokestaticfoo(I)Z
nop
invokestaticprintBool(Z)V
nop

iconst_0
invokestaticfoo(I)Z
nop
invokestaticprintBool(Z)V
nop

iconst_0
ireturn

iconst_1
invokestaticprintBool(Z)V
nop

.end method
