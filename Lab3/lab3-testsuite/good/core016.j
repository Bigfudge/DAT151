.class public core016
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

  invokestatic core016/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 17
istore_0

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
iload_0
ldc 2
isub
istore_0
iload_0
goto label_6bcb3ab7-829b-4ac2-9eb8-57651ac50a2e


.end method
