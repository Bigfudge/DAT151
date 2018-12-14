.class public core016
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

  invokestatic core016/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 17
istore_0

<<<<<<< HEAD
label_05af4cd8-c0e1-4ec6-906e-abdd23cd86be:
iload_0
ldc 0
if_icmpgt label_label_ab93f6f3-ea2e-4e03-b560-eee394c7733d:
iconst_0
goto label_bc3ab52d-2a42-468a-bdaa-a4b391e972d2:
label_ab93f6f3-ea2e-4e03-b560-eee394c7733d:
iconst_1
label_bc3ab52d-2a42-468a-bdaa-a4b391e972d2:
iconst_0
if_icmpeq label_a5665de3-5279-4042-bfa0-2b8239bef313:
=======
label_6bcb3ab7-829b-4ac2-9eb8-57651ac50a2e
iload_0
ldc 0
if_icmpgt label_label_b55dbdb7-474c-49eb-a80f-54c8edb41bf5
iconst_0
goto label_364d29fa-5ebf-4788-809d-83fb1b42502f
label_b55dbdb7-474c-49eb-a80f-54c8edb41bf5
iconst_1
label_364d29fa-5ebf-4788-809d-83fb1b42502f
iconst_0
if icmpeq label_290daf09-0be6-4041-925f-bdc03aaeece8
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a
iload_0
ldc 2
isub
istore_0
iload_0
<<<<<<< HEAD
goto label_05af4cd8-c0e1-4ec6-906e-abdd23cd86be:
label_a5665de3-5279-4042-bfa0-2b8239bef313:
=======
goto label_6bcb3ab7-829b-4ac2-9eb8-57651ac50a2e
>>>>>>> 66cf894e8174941ea8c4559decd289cc05335d2a

iload_0
ldc 0
if_icmplt label_1ebe3b5c-632a-4aca-9326-937989e7fe5e:
iconst_0
goto label_1f082b82-47d1-4ba7-963f-74f3b6855468:
label_1ebe3b5c-632a-4aca-9326-937989e7fe5e:
iconst_1
label_1f082b82-47d1-4ba7-963f-74f3b6855468:
iconst_0
if_icmpne label_9dc6d3c1-b00f-429f-af66-f92b996461d0:
ldc 0
invokestatic Runtime/printInt(I)V
ldc 0
ireturn
goto label_f203e7cd-9ba9-4c3b-a230-47d022c78bfb:
label_9dc6d3c1-b00f-429f-af66-f92b996461d0:
ldc 1
invokestatic Runtime/printInt(I)V
ldc 0
ireturn
label_f203e7cd-9ba9-4c3b-a230-47d022c78bfb:

.end method
