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
iload_0
ldc 2
isub
istore_0
iload_0
goto label_05af4cd8-c0e1-4ec6-906e-abdd23cd86be:
label_a5665de3-5279-4042-bfa0-2b8239bef313:

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
