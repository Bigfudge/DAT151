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
iconst_0
istore_0

iconst_0
istore_1


label_3b337ad8-0a91-4d55-b398-cbe9e28a3d6c
invokestatic Runtime/readInt()I
istore_2
iload_2
iconst_0
if_icmpne label_ae365be7-60c1-4c0e-b033-991906c0580f
iconst_0
goto label_b0a7fbc2-74a9-46f0-8bfb-489d149ed878
label_ae365be7-60c1-4c0e-b033-991906c0580f
iconst_1
label_b0a7fbc2-74a9-46f0-8bfb-489d149ed878
iconst_0
if icmpeq label_f6753966-5526-40d6-a20b-6ece2a5b86d8
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
goto label_3b337ad8-0a91-4d55-b398-cbe9e28a3d6c
label_f6753966-5526-40d6-a20b-6ece2a5b86d8

iload_0
iload_1
idiv
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
