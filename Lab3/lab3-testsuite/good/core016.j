.class public core016
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

  invokestatic core016/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 17
istore_0

label_76fe7a15-9c66-47b1-b399-ad83535c32c5
iload_0
ldc 0
if_icmpgt label_label_45f52522-ab62-4383-88b3-112cccc51ebe
iconst_0
goto label_7e7b1f27-8857-4b64-8bf3-699681acd4fe
label_45f52522-ab62-4383-88b3-112cccc51ebe
iconst_1
label_7e7b1f27-8857-4b64-8bf3-699681acd4fe
iconst_0
if icmpeq label_ad4c13aa-ad59-4689-a91b-b3b3b4a4c768
iload_0
ldc 2
isub
istore_0
iload_0
goto label_76fe7a15-9c66-47b1-b399-ad83535c32c5


.end method
