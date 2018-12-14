.class public core015
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

  invokestatic core015/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 17
invokestaticev(I)I
nop
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
.method public static ev(I)I
.limit locals 3
.limit stack 3

iload_-1
iconst_0
if_icmpgt label_label_e465cf9f-a913-4192-bc0e-d4c34bb43ee7
iconst_0
goto label_ae0537ce-99dd-4349-ae45-77fd74abe601
label_e465cf9f-a913-4192-bc0e-d4c34bb43ee7
iconst_1
label_ae0537ce-99dd-4349-ae45-77fd74abe601
iconst_0
if_icmpeq label_a0744003-1612-46a0-a12e-aaa5a6074e20
iload_-1
iconst_0
if_icmplt label_e6f880be-d517-4431-8e96-148cef1c8080
iconst_0
goto label_b6177bc2-6d0a-4e13-8317-9a78df5f6227
label_e6f880be-d517-4431-8e96-148cef1c8080
iconst_1
label_b6177bc2-6d0a-4e13-8317-9a78df5f6227
iconst_0
if_icmpeq label_2a215972-9963-4754-871f-b61f0aa85cf6
iconst_1
istore_0
iload_0
goto label_660abd88-54ef-40da-9625-474aa2caf7a2
label_2a215972-9963-4754-871f-b61f0aa85cf6
iconst_0
istore_0
iload_0
label_660abd88-54ef-40da-9625-474aa2caf7a2
goto label_df49a100-0991-4056-94c0-13dba7748629
label_a0744003-1612-46a0-a12e-aaa5a6074e20
iload_-1
iconst_2
isub
invokestaticev(I)I
nop
istore_0
iload_0
label_df49a100-0991-4056-94c0-13dba7748629

iload_0
ireturn

.end method
