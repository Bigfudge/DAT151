.class public scopes_different_type_in_branches
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

  invokestatic scopes_different_type_in_branches/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
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
ireturn

.end method
