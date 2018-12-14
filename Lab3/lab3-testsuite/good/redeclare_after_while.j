.class public redeclare_after_while
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

  invokestatic redeclare_after_while/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0

<<<<<<< HEAD
label_07895883-9447-4119-b89f-ce337926caff:
=======
<<<<<<< Updated upstream
label_a3cbe57f-1a79-4e09-b61a-5ebb442e8ba5
=======
label_a5cbe427-32e8-4681-8cd2-449ff84ba1fe
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 10
<<<<<<< HEAD
if_icmplt label_e3e80e3f-7314-4f91-97b2-6f4acbad2c9e:
=======
<<<<<<< Updated upstream
if_icmplt label_7199783e-34e9-4f0e-acd5-6f8f9db8d137
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_dad0066c-3973-40ab-a1d2-e9d99553c7d2:
label_e3e80e3f-7314-4f91-97b2-6f4acbad2c9e:
iconst_1
label_dad0066c-3973-40ab-a1d2-e9d99553c7d2:
iconst_0
if_icmpeq label_0d8ae971-4487-4aab-81da-025699e8037f:
ldc 100
istore_1
<<<<<<< HEAD
goto label_07895883-9447-4119-b89f-ce337926caff:
label_0d8ae971-4487-4aab-81da-025699e8037f:
=======
goto label_a3cbe57f-1a79-4e09-b61a-5ebb442e8ba5
=======
if_icmplt label_5412f231-b009-4bcf-8c81-f56ffc771c11
iconst_0
goto label_f6953331-4f5a-4ce6-a8c0-e9d2a143bc8d
label_5412f231-b009-4bcf-8c81-f56ffc771c11
iconst_1
label_f6953331-4f5a-4ce6-a8c0-e9d2a143bc8d
iconst_0
if icmpeq label_cc3baa12-d843-443f-8848-aca160cfaee1
ldc 100
istore_1
goto label_a5cbe427-32e8-4681-8cd2-449ff84ba1fe
>>>>>>> Stashed changes
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a

iload_0
istore_2

iload_2
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
