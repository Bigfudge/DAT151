.class public core108
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

  invokestatic core108/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_4
istore_0

iload_0
ldc 6
if_icmplt label_67380487-0785-4b01-8e2c-335ccf9e0264
iconst_0
goto label_9c919304-fc4f-4609-8c9b-48befef602a3
label_67380487-0785-4b01-8e2c-335ccf9e0264
iconst_1
label_9c919304-fc4f-4609-8c9b-48befef602a3
iconst_0
if_icmpeq label_ff8214a5-a70f-4a78-a026-b754378ce8b5
goto label_469ad3df-0681-4b6c-92f3-b8cc393ddb09
label_ff8214a5-a70f-4a78-a026-b754378ce8b5
iload_0
invokestatic Runtime/printInt(I)V
pop
label_469ad3df-0681-4b6c-92f3-b8cc393ddb09

iload_0
ireturn

.end method
