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
iconst_0
istore_0

iconst_1
if_icmpeq label_c68c1164-06ea-4114-8cc5-7c9b0a267f52
goto label_9218ef76-73ac-4dbe-aee5-a80fac6ede16
label_c68c1164-06ea-4114-8cc5-7c9b0a267f52
iconst_1
istore_0
pop
label_9218ef76-73ac-4dbe-aee5-a80fac6ede16

iload_0
invokestatic Runtime/printInt(I)V

iconst_1
if_icmpeq label_ff5fd00b-6a68-4f57-ba1c-a3c4ae3c4bc1
goto label_687d15f9-6de5-4c60-a6f5-5f217b2cbe43
label_ff5fd00b-6a68-4f57-ba1c-a3c4ae3c4bc1
pop
iconst_2
istore_0
iload_0
pop
label_687d15f9-6de5-4c60-a6f5-5f217b2cbe43

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
if_icmpeq label_5b25cb61-c06a-4fba-89bb-3ddf24602d6f
iconst_3
istore_0
pop
goto label_032fef9a-cf1b-4859-b07d-dea2527b62fd
label_5b25cb61-c06a-4fba-89bb-3ddf24602d6f
label_032fef9a-cf1b-4859-b07d-dea2527b62fd

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
if_icmpeq label_43556752-dd72-4872-b8a5-d246b90f3f35
pop
iconst_4
istore_0
iload_0
pop
goto label_045b91ed-8337-493f-85ca-01c92f2b8021
label_43556752-dd72-4872-b8a5-d246b90f3f35
label_045b91ed-8337-493f-85ca-01c92f2b8021

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
istore_1
pop
label_6e902e45-0ca4-4bfc-9766-0796dc934d12
iload_1
iload_1
iconst_1
iadd
istore_1
iconst_1
if_icmplt label_e43d7791-6fb1-4145-9a8f-fc0c758526e2
iconst_0
goto label_e9c34f49-e8f8-40d5-8ac6-5b68f7dced33
label_e43d7791-6fb1-4145-9a8f-fc0c758526e2
iconst_1
label_e9c34f49-e8f8-40d5-8ac6-5b68f7dced33
iconst_0
if icmpeq label_4353833d-8e2a-432b-812d-20807ded9cbe
iconst_5
istore_0
pop
goto label_6e902e45-0ca4-4bfc-9766-0796dc934d12
label_4353833d-8e2a-432b-812d-20807ded9cbe
pop
iload_0
invokestatic Runtime/printInt(I)V
pop

iconst_0
istore_1
pop
label_acd7753c-e05e-4660-bc0c-8433b8eb63f6
iload_1
iload_1
iconst_1
iadd
istore_1
iconst_1
if_icmplt label_112932c0-0319-46cf-a677-ef3f2f9e12e7
iconst_0
goto label_b30f27f6-83e9-4d66-8ad6-11947013817a
label_112932c0-0319-46cf-a677-ef3f2f9e12e7
iconst_1
label_b30f27f6-83e9-4d66-8ad6-11947013817a
iconst_0
if icmpeq label_73df4550-816d-463c-b816-20f4168a0195
pop
ldc 6
istore_0
iload_0
pop
goto label_acd7753c-e05e-4660-bc0c-8433b8eb63f6
label_73df4550-816d-463c-b816-20f4168a0195
pop
iload_0
invokestatic Runtime/printInt(I)V
pop

ldc 7
istore_0
pop

iload_0
invokestatic Runtime/printInt(I)V

pop
ldc 8
istore_0
iload_0
pop

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
