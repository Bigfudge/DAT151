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
ireturn

.end method
