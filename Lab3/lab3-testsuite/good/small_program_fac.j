.class public small_program_fac
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

  invokestatic small_program_fac/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_5
invokestaticfac(I)I
nop
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
.method public static fac(I)I
.limit locals 3
.limit stack 3


iconst_1
istore_0
iload_0

iload_-1
istore_1
iload_1

label_32b62fa2-582f-46b9-a880-5c0656e87836
iload_1
iconst_0
if_icmpgt label_label_a7fad72e-f075-41c3-9328-bcfc89f04d40
iconst_0
goto label_6b5ee0aa-5c92-4ac2-82bd-f374ff2f33c3
label_a7fad72e-f075-41c3-9328-bcfc89f04d40
iconst_1
label_6b5ee0aa-5c92-4ac2-82bd-f374ff2f33c3
iconst_0
if icmpeq label_d33943cb-9c6a-4537-9fb9-dc0a7931709b
iload_0
iload_1
imul
istore_0
iload_0
pop
iload_1
iconst_1
isub
istore_1
iload_1
pop
goto label_32b62fa2-582f-46b9-a880-5c0656e87836
label_d33943cb-9c6a-4537-9fb9-dc0a7931709b

iload_0
ireturn

.end method
