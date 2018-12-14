.class public scopes_if_leakage
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

  invokestatic scopes_if_leakage/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0

iconst_1
if_icmpne label_d94bc38f-3f26-4e0c-8022-4ac7471a1fd0:
ldc 1
istore_1
goto label_bb3b4ef2-cd35-4f6c-9b8b-e98ddfdb07ca:
label_d94bc38f-3f26-4e0c-8022-4ac7471a1fd0:
ldc 0
istore_2
label_bb3b4ef2-cd35-4f6c-9b8b-e98ddfdb07ca:

iload_2
iconst_1
if_icmpeq label_786c3910-7578-4bfa-b12c-2fa956109819:
iconst_0
goto label_b908e9cc-2a16-4b22-b0d0-e40cd34775ad:
label_786c3910-7578-4bfa-b12c-2fa956109819:
iconst_1
label_b908e9cc-2a16-4b22-b0d0-e40cd34775ad:
iconst_0

iload_2
istore_3

iconst_0
if_icmpne label_6d843858-158c-4b60-9c0e-22132dada1bd:
ldc 1
istore_4
goto label_427b0011-ad89-4e67-8038-701f76d74c97:
label_6d843858-158c-4b60-9c0e-22132dada1bd:
ldc 0
istore_5
label_427b0011-ad89-4e67-8038-701f76d74c97:

iload_5
iconst_1
if_icmpeq label_291d90f4-4deb-4079-92af-b87cf665ecaf:
iconst_0
goto label_dd2a933d-16b5-4e43-b5d4-edd7d9be5314:
label_291d90f4-4deb-4079-92af-b87cf665ecaf:
iconst_1
label_dd2a933d-16b5-4e43-b5d4-edd7d9be5314:
iconst_0

iload_5
istore_6

ldc 0
ireturn

.end method
