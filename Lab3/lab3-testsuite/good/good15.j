.class public good15
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

  invokestatic good15/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_1
istore_0

iload_0
invokestatic Runtime/printInt(I)V

iconst_1
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 45
if_icmpne label_31bfe432-c5f4-4ee3-a0b4-1f734bb0f54d
iconst_0
goto label_4c496d48-dd30-4886-be75-6a164a82597d
label_31bfe432-c5f4-4ee3-a0b4-1f734bb0f54d
iconst_1
label_4c496d48-dd30-4886-be75-6a164a82597d
iconst_0
ior

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
iload_0
iload_0
iconst_1
iadd
istore_0
iconst_0
if_icmpge label_d37bcdd5-317a-4b2d-ae0e-74846fa3eb6e
iconst_0
goto label_bec0577b-11ff-4083-acf6-5a8d5f1b9656
label_d37bcdd5-317a-4b2d-ae0e-74846fa3eb6e
iconst_1
label_bec0577b-11ff-4083-acf6-5a8d5f1b9656
iconst_0
ior

iload_0
invokestatic Runtime/printInt(I)V

iconst_1
iload_0
iload_0
iconst_1
iadd
istore_0
iconst_0
if_icmplt label_e5280eb5-1fd2-4bf3-8446-f479d61f9cb0
iconst_0
goto label_15d53c42-d580-487c-afb7-b4325a93aee6
label_e5280eb5-1fd2-4bf3-8446-f479d61f9cb0
iconst_1
label_15d53c42-d580-487c-afb7-b4325a93aee6
iconst_0
iand

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
iload_0
iload_0
iconst_1
iadd
istore_0
iconst_0
if_icmpgt label_label_cd08ce9a-1325-482e-ad08-0f0bb15c074a
iconst_0
goto label_47530bf6-3c87-4020-9b8a-a1bf247f7a2f
label_cd08ce9a-1325-482e-ad08-0f0bb15c074a
iconst_1
label_47530bf6-3c87-4020-9b8a-a1bf247f7a2f
iconst_0
iand

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
istore_1

ldc 34
ldc 6
if_icmplt label_8895c175-0ca8-4441-ace1-3ee31f67ea6d
iconst_0
goto label_5fa64179-e2de-488c-834e-c691265df21d
label_8895c175-0ca8-4441-ace1-3ee31f67ea6d
iconst_1
label_5fa64179-e2de-488c-834e-c691265df21d
iconst_0
iload_1
iconst_0
if_icmplt label_ff0b18f2-6286-46d5-9926-88b8a47c864b
iconst_0
goto label_c99efe7c-a295-44f1-adb6-06d15919f4ae
label_ff0b18f2-6286-46d5-9926-88b8a47c864b
iconst_1
label_c99efe7c-a295-44f1-adb6-06d15919f4ae
iconst_0
iand
if_icmpeq label_23ca94d1-1934-46a3-8320-0a22cd335673
ldc 42
invokestatic Runtime/printInt(I)V
pop
goto label_7379cc00-d5c1-4294-8237-be1c190a49b3
label_23ca94d1-1934-46a3-8320-0a22cd335673
iload_0
invokestatic Runtime/printInt(I)V
pop
label_7379cc00-d5c1-4294-8237-be1c190a49b3

iconst_0
ireturn

.end method
