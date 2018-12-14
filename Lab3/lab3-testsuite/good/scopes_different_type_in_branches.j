.class public scopes_different_type_in_branches
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

  invokestatic scopes_different_type_in_branches/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
<<<<<<< HEAD
iconst_1
iconst_0
if_icmpgt label_label_01cad311-9b01-4c8d-b958-e581dabaf2eb
iconst_0
goto label_14959033-f632-4cc8-84b6-9ff36fa99233
label_01cad311-9b01-4c8d-b958-e581dabaf2eb
iconst_1
label_14959033-f632-4cc8-84b6-9ff36fa99233
iconst_0
if_icmpeq label_3636af1c-303f-4842-a67d-8a227933fdf7
iconst_1
istore_0
pop
goto label_578244c7-988d-451c-8cec-4a95ef377027
label_3636af1c-303f-4842-a67d-8a227933fdf7
iconst_0
istore_0
pop
label_578244c7-988d-451c-8cec-4a95ef377027

iconst_0
=======
ldc 1
ldc 0
if_icmpgt label_label_23ab6e03-58e3-4d25-a703-fc8895c2bff5:
iconst_0
goto label_7b017b39-cd45-4f36-ba5f-31a0c76da8a8:
label_23ab6e03-58e3-4d25-a703-fc8895c2bff5:
iconst_1
label_7b017b39-cd45-4f36-ba5f-31a0c76da8a8:
iconst_0
if_icmpne label_31bc1463-0453-42b1-81f5-7883e4322854:
ldc 0
istore_0
goto label_51db6711-49bc-41bd-a6c9-0a82a2f76304:
label_31bc1463-0453-42b1-81f5-7883e4322854:
iconst_1
istore_1
label_51db6711-49bc-41bd-a6c9-0a82a2f76304:

ldc 0
>>>>>>> master
ireturn

.end method
