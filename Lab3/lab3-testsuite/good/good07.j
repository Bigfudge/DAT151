.class public good07
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

  invokestatic good07/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestatic Runtime/readInt()I
istore_0

iload_0
iconst_2
idiv
istore_1

label_b7fb7ac7-0ec6-415e-b8ae-2ad61ae85ef3
iload_1
iconst_1
if_icmpgt label_label_763c826c-8564-4b77-a9da-7ab37aaf3d60
iconst_0
goto label_597f64a8-6acb-443e-a7d2-b31a7f27b93d
label_763c826c-8564-4b77-a9da-7ab37aaf3d60
iconst_1
label_597f64a8-6acb-443e-a7d2-b31a7f27b93d
iconst_0
if icmpeq label_04970788-05fb-42d6-8560-55b143a633bf
iload_1
iload_0
iload_1
idiv
imul
iload_0
if_icmpeq label_73d1e7ef-2328-4169-b8ea-b67cf6eaefc4
iconst_0
goto label_4ffee5ea-4ebe-4c7a-9a35-b17313dc3483
label_73d1e7ef-2328-4169-b8ea-b67cf6eaefc4
iconst_1
label_4ffee5ea-4ebe-4c7a-9a35-b17313dc3483
iconst_0
if_icmpeq label_6e05548c-f4c7-4295-b123-20cc70e01c4d
goto label_e14faef4-62f5-476f-84b7-78c45497425d
label_6e05548c-f4c7-4295-b123-20cc70e01c4d
iload_1
invokestatic Runtime/printInt(I)V
label_e14faef4-62f5-476f-84b7-78c45497425d
pop
iload_1
iload_1
iconst_1
iadd
istore_1
pop
goto label_b7fb7ac7-0ec6-415e-b8ae-2ad61ae85ef3
label_04970788-05fb-42d6-8560-55b143a633bf

iconst_0
ireturn

.end method
