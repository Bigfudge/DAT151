.class public good03
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

  invokestatic good03/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
invokestatic Runtime/readInt()I
istore_0

ldc 1
istore_1

ldc 1
istore_2

label_dd9f8c3d-1f4b-4c1e-8d10-056e77830297:
iload_2
iload_0
ldc 1
iadd
if_icmplt label_424e896c-862d-4638-b295-4c04ab2375df:
iconst_0
goto label_c6530007-81c4-4048-902e-f57a4451019d:
label_424e896c-862d-4638-b295-4c04ab2375df:
iconst_1
label_c6530007-81c4-4048-902e-f57a4451019d:
iconst_0
if_icmpeq label_ddc5245d-8135-4309-9d64-c552380bb2aa:
iload_2
iload_1
imul
istore_1
iload_1
iload_2
iconst_1
iadd
istore_2
iload_2
goto label_dd9f8c3d-1f4b-4c1e-8d10-056e77830297:
label_ddc5245d-8135-4309-9d64-c552380bb2aa:

iload_1
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
