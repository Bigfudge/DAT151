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
ldc 0
istore_0

ldc 0
istore_1


<<<<<<< Updated upstream
label_c43daa39-7ae6-4f32-ae35-0a1736656a72
=======
label_edb85d9b-4044-43d4-b8e6-e7e9a12188dd
>>>>>>> Stashed changes
invokestatic Runtime/readInt()I
istore_2
iload_2
ldc 0
<<<<<<< Updated upstream
if_icmpne label_ec1da4a3-f09a-4178-bdf7-1301718102c8
iconst_0
goto label_792a2a3a-ce6a-47a7-94ab-490350f082ef
label_ec1da4a3-f09a-4178-bdf7-1301718102c8
iconst_1
label_792a2a3a-ce6a-47a7-94ab-490350f082ef
iconst_0
if icmpeq label_ca208004-3ecc-4ed0-ad18-00e57bfb4ae4
=======
if_icmpne label_7dcdb926-1d13-4b4e-ad0d-d5e00cecc33d
iconst_0
goto label_1753d0f2-c0e5-486e-9c60-69279cb05de0
label_7dcdb926-1d13-4b4e-ad0d-d5e00cecc33d
iconst_1
label_1753d0f2-c0e5-486e-9c60-69279cb05de0
iconst_0
if icmpeq label_1c2db9d9-fdc9-409c-9463-932bc08751ed
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
goto label_c43daa39-7ae6-4f32-ae35-0a1736656a72
=======
goto label_edb85d9b-4044-43d4-b8e6-e7e9a12188dd
>>>>>>> Stashed changes

iload_0
iload_1
idiv
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
