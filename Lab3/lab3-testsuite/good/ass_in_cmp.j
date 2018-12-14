.class public ass_in_cmp
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
if_icmpeq label_36d9870e-bd40-482b-8b90-fbb14d2fdd3f
iconst_0
goto label_dcd52446-c76c-4d18-8c27-ac42f13f434e
label_36d9870e-bd40-482b-8b90-fbb14d2fdd3f
iconst_1
label_dcd52446-c76c-4d18-8c27-ac42f13f434e
iconst_0
if_icmpeq label_140246a4-60bb-45b2-8f44-74e5fd47d808
iconst_0
invokestatic Runtime/printInt(I)V
goto label_10aac5b9-897a-431f-96d1-8c00481d56ce
label_140246a4-60bb-45b2-8f44-74e5fd47d808
iload_0
invokestatic Runtime/printInt(I)V
label_10aac5b9-897a-431f-96d1-8c00481d56ce

iconst_0
ireturn

.end method
