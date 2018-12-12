.class public scopes_reuse_name
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

  invokestatic scopes_reuse_name/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 0
istore_0


iload_0
invokestatic Runtime/printInt(I)V


iload_0
invokestatic Runtime/printInt(I)V


iload_0
invokestatic Runtime/printInt(I)V


iload_0
invokestatic Runtime/printInt(I)V

ldc 0
istore_1
pop
label_6d369a5d-c299-4e23-a140-57b742faa86c
iload_1
iload_1
iconst_1
iadd
istore_1
ldc 1
if_icmplt label_45a59e9e-f6dc-4108-872b-0999a2eb2e80
iconst_0
goto label_fc0177a7-6eb8-4cfe-9792-9031ec940077
label_45a59e9e-f6dc-4108-872b-0999a2eb2e80
iconst_1
label_fc0177a7-6eb8-4cfe-9792-9031ec940077
iconst_0
if icmpeq label_36c713bd-27f2-4a9c-bb30-0cf65d08d453
ldc 5
istore_2
pop
goto label_6d369a5d-c299-4e23-a140-57b742faa86c
pop
iload_2
invokestatic Runtime/printInt(I)V
pop

ldc 0
istore_3
pop
label_34ae667f-97a5-480a-8918-0c8226762693
iload_3
iload_3
iconst_1
iadd
istore_3
ldc 1
if_icmplt label_effa988e-7008-44f2-baf8-947772749ad2
iconst_0
goto label_9806f10e-0570-4a52-8439-9059d2b8e56c
label_effa988e-7008-44f2-baf8-947772749ad2
iconst_1
label_9806f10e-0570-4a52-8439-9059d2b8e56c
iconst_0
if icmpeq label_5e488afa-a31b-408c-a98d-95504d96e05b
pop
ldc 6
istore_4
iload_4
pop
goto label_34ae667f-97a5-480a-8918-0c8226762693
pop
iload_4
invokestatic Runtime/printInt(I)V
pop

ldc 7
istore_5
pop

iload_5
invokestatic Runtime/printInt(I)V

pop
ldc 8
istore_6
iload_6
pop

iload_6
invokestatic Runtime/printInt(I)V

ldc 0
ireturn

.end method
