.class public ass_in_cmp
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

  invokestatic ass_in_cmp/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_5
istore_0

iload_0
iconst_1
iadd
istore_0
iload_0
iload_0
iload_0
iconst_1
iadd
istore_0
if_icmpeq label_11a842c9-9231-4c78-937f-a2bac4785427:
iconst_0
goto label_5d7c61b4-c0a8-4aa3-94b2-5beb44302b80:
label_11a842c9-9231-4c78-937f-a2bac4785427:
iconst_1
label_5d7c61b4-c0a8-4aa3-94b2-5beb44302b80:
iconst_0
if_icmpeq label_156aeea2-d122-4f88-bb8e-b21069e557b9:
iconst_0
invokestatic Runtime/printInt(I)V
goto label_b869d092-f331-4054-a7ba-323126a118e5:
label_156aeea2-d122-4f88-bb8e-b21069e557b9:
iload_0
invokestatic Runtime/printInt(I)V
label_b869d092-f331-4054-a7ba-323126a118e5:

iconst_0
ireturn

.end method
