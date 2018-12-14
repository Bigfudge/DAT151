.class public good11
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


<<<<<<< HEAD
label_3b337ad8-0a91-4d55-b398-cbe9e28a3d6c
invokestatic Runtime/readInt()I
istore_2
iload_2
iconst_0
if_icmpne label_ae365be7-60c1-4c0e-b033-991906c0580f
iconst_0
goto label_b0a7fbc2-74a9-46f0-8bfb-489d149ed878
label_ae365be7-60c1-4c0e-b033-991906c0580f
=======
<<<<<<< HEAD
label_df962501-ce5d-49ef-8f8a-6b0117ccbd29:
=======
<<<<<<< Updated upstream
label_c43daa39-7ae6-4f32-ae35-0a1736656a72
=======
label_edb85d9b-4044-43d4-b8e6-e7e9a12188dd
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
invokestatic Runtime/readInt()I
istore_2
iload_2
ldc 0
<<<<<<< HEAD
if_icmpne label_ef2022d8-ecbb-40db-8d8c-532227d59f1a:
=======
<<<<<<< Updated upstream
if_icmpne label_ec1da4a3-f09a-4178-bdf7-1301718102c8
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_06f06cfb-6e0a-49b8-9007-3f1a174b1b9d:
label_ef2022d8-ecbb-40db-8d8c-532227d59f1a:
iconst_1
label_06f06cfb-6e0a-49b8-9007-3f1a174b1b9d:
iconst_0
<<<<<<< HEAD
if_icmpeq label_96e97f6b-c57e-4562-b28b-11dca52ab1a0:
=======
if icmpeq label_ca208004-3ecc-4ed0-ad18-00e57bfb4ae4
=======
if_icmpne label_7dcdb926-1d13-4b4e-ad0d-d5e00cecc33d
iconst_0
goto label_1753d0f2-c0e5-486e-9c60-69279cb05de0
label_7dcdb926-1d13-4b4e-ad0d-d5e00cecc33d
>>>>>>> master
iconst_1
label_b0a7fbc2-74a9-46f0-8bfb-489d149ed878
iconst_0
<<<<<<< HEAD
if icmpeq label_f6753966-5526-40d6-a20b-6ece2a5b86d8
=======
if icmpeq label_1c2db9d9-fdc9-409c-9463-932bc08751ed
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master
iload_0
iload_2
iadd
istore_0
iload_0
iload_1
iload_1
iconst_1
iadd
istore_1
<<<<<<< HEAD
goto label_df962501-ce5d-49ef-8f8a-6b0117ccbd29:
label_96e97f6b-c57e-4562-b28b-11dca52ab1a0:
=======
pop
<<<<<<< HEAD
goto label_3b337ad8-0a91-4d55-b398-cbe9e28a3d6c
label_f6753966-5526-40d6-a20b-6ece2a5b86d8
=======
<<<<<<< Updated upstream
goto label_c43daa39-7ae6-4f32-ae35-0a1736656a72
=======
goto label_edb85d9b-4044-43d4-b8e6-e7e9a12188dd
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
>>>>>>> master

iload_0
iload_1
idiv
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
