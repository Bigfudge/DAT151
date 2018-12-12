.class public scopes_if_leakage
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

  invokestatic scopes_if_leakage/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0


iload_0
iconst_1
if_icmpeq label_b1586d92-69ce-43c6-bf2c-f6d173a7628a
iconst_0
goto label_431f150a-e367-4fb2-9edb-32371f6fd1a1
label_b1586d92-69ce-43c6-bf2c-f6d173a7628a
iconst_1
label_431f150a-e367-4fb2-9edb-32371f6fd1a1
iconst_0

iload_0
istore_1


iload_0
iconst_1
if_icmpeq label_a0a57982-34f3-4830-b0f9-ae59f1d9239c
iconst_0
goto label_c76ab455-a5b9-41df-a642-0e5039cb9f07
label_a0a57982-34f3-4830-b0f9-ae59f1d9239c
iconst_1
label_c76ab455-a5b9-41df-a642-0e5039cb9f07
iconst_0

iload_0
istore_2

ldc 0
ireturn

.end method
