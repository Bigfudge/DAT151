.class public scopes_while_leakage
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

  invokestatic scopes_while_leakage/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0

ldc 0
istore_1

label_deba99f6-920e-4824-b911-f23e2b88678c
iload_1
iload_1
iconst_1
iadd
istore_1
ldc 1
if_icmplt label_30191d43-b27e-4b83-a9cd-3062ae39110d
iconst_0
goto label_ccecc3be-8f63-446f-a097-f8b2565025be
label_30191d43-b27e-4b83-a9cd-3062ae39110d
iconst_1
label_ccecc3be-8f63-446f-a097-f8b2565025be
iconst_0
if icmpeq label_ad3b37ef-2eb1-4868-96ca-25faf2d17ee7
ldc 1
istore_2
goto label_deba99f6-920e-4824-b911-f23e2b88678c

iload_2
iconst_1
if_icmpeq label_b8f46c85-43fe-42f9-9844-bdb6342954b1
iconst_0
goto label_c9df5bae-a28c-4ce0-8b66-1b7cd64a2a5b
label_b8f46c85-43fe-42f9-9844-bdb6342954b1
iconst_1
label_c9df5bae-a28c-4ce0-8b66-1b7cd64a2a5b
iconst_0

iload_2
istore_3

ldc 0
ireturn

.end method
