.class public core102
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

  invokestatic core102/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
label_8f889968-3ef6-48cf-bf3f-465b9720bed9
ldc 2
ldc 5
ldc 6
imul
ldc 5
idiv
iadd
ldc 67
isub
ldc 5
if_icmpgt label_label_ed6dc9ce-c61c-454b-8822-d1210a26348f
iconst_0
goto label_56dba097-3388-40a8-8897-34db7e0a7c33
label_ed6dc9ce-c61c-454b-8822-d1210a26348f
iconst_1
label_56dba097-3388-40a8-8897-34db7e0a7c33
iconst_0
if icmpeq label_72ab0ee5-9dac-4e28-8b5c-c32a8454be01
goto label_8f889968-3ef6-48cf-bf3f-465b9720bed9

ldc 0
ireturn

.end method
