.class public core103
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

  invokestatic core103/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 4
istore_0

label_f693a358-f6b0-44be-a775-7e0c534c5c72
iload_0
ldc 6
if_icmplt label_8100e5e1-7b64-4b89-abf2-6973c2b9f721
iconst_0
goto label_d44da46d-ad24-4849-991b-77f9c775885c
label_8100e5e1-7b64-4b89-abf2-6973c2b9f721
iconst_1
label_d44da46d-ad24-4849-991b-77f9c775885c
iconst_0
if icmpeq label_7d8ede39-bf4c-488c-b2b5-e21e5d008b85
ldc 0
istore_1
pop
iload_1
iload_1
iconst_1
iadd
istore_1
pop
iload_1
invokestatic Runtime/printInt(I)V
pop
iload_0
iload_0
iconst_1
iadd
istore_0
pop
goto label_f693a358-f6b0-44be-a775-7e0c534c5c72


iload_0
invokestatic Runtime/printInt(I)V

iload_0
ireturn

.end method
