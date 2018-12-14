.class public core102
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

  invokestatic core102/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
label_3dc7a863-1e8e-4fa7-92e4-bad060874d4d
iconst_2
iconst_5
ldc 6
imul
iconst_5
idiv
iadd
ldc 67
isub
iconst_5
if_icmpgt label_label_e9028b40-0ee5-46b5-a8cd-0c6c1fe525bc
iconst_0
goto label_0d84900a-c073-4974-92fc-4244b423a367
label_e9028b40-0ee5-46b5-a8cd-0c6c1fe525bc
iconst_1
label_0d84900a-c073-4974-92fc-4244b423a367
iconst_0
if icmpeq label_8f2607ec-a713-4a1f-bf43-6a366141ec3b
goto label_3dc7a863-1e8e-4fa7-92e4-bad060874d4d
label_8f2607ec-a713-4a1f-bf43-6a366141ec3b

iconst_0
ireturn

.end method
