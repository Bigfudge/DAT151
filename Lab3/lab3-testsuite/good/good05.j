.class public good05
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

  invokestatic good05/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

ldc 1
istore_0
iload_0

iload_0
istore_1
iload_1

invokestatic Runtime/readInt()I
istore_2
iload_2

iload_0
invokestatic Runtime/printInt(I)V

label_b238d0cf-78f1-4b04-a214-dd19994e5572:
iload_1
iload_2
if_icmplt label_bbc168a2-e6a2-4d79-827a-8dc558384f5d:
iconst_0
goto label_7af7df00-f595-4483-9cab-333aecc2cd87:
label_bbc168a2-e6a2-4d79-827a-8dc558384f5d:
iconst_1
label_7af7df00-f595-4483-9cab-333aecc2cd87:
iconst_0
if_icmpeq label_0d94b2d5-f289-4d2a-8247-bc7edb75a1a4:
iload_1
invokestatic Runtime/printInt(I)V
iload_0
iload_1
iadd
istore_1
iload_1
iload_1
iload_0
isub
istore_0
iload_0
goto label_b238d0cf-78f1-4b04-a214-dd19994e5572:
label_0d94b2d5-f289-4d2a-8247-bc7edb75a1a4:

ldc 0
ireturn

.end method
