.class public bool_return
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

  invokestatic bool_return/main()I
  pop
  return

.end method

.method public static c(I)Z
.limit locals 3
.limit stack 3
iload_-1
iload_-1
if_icmplt label_d7e69a30-b3c4-4928-b7d3-34363cde68c5:
iconst_0
goto label_4a680396-7114-4446-9eaa-57d5ff03f4bb:
label_d7e69a30-b3c4-4928-b7d3-34363cde68c5:
iconst_1
label_4a680396-7114-4446-9eaa-57d5ff03f4bb:
iconst_0
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
invokestaticc(I)Z
nop
if_icmpeq label_2ab83c40-432c-42dd-9dfa-a7ab04bbb870:
iconst_0
invokestatic Runtime/printInt(I)V
goto label_6d19fb19-35ab-4630-b78e-9507e0ee6437:
label_2ab83c40-432c-42dd-9dfa-a7ab04bbb870:
iconst_1
invokestatic Runtime/printInt(I)V
label_6d19fb19-35ab-4630-b78e-9507e0ee6437:

iconst_0
ireturn

.end method
