.class public good15
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
<<<<<<< HEAD
if_icmpne label_31bfe432-c5f4-4ee3-a0b4-1f734bb0f54d
iconst_0
goto label_4c496d48-dd30-4886-be75-6a164a82597d
label_31bfe432-c5f4-4ee3-a0b4-1f734bb0f54d
iconst_1
label_4c496d48-dd30-4886-be75-6a164a82597d
=======

if_icmpne label_d2391664-6e56-4f0c-a459-9c26c2836515:
iconst_0
goto label_0906b708-0755-40f5-8d82-0b09d84ecf40:
label_d2391664-6e56-4f0c-a459-9c26c2836515:
iconst_1
label_0906b708-0755-40f5-8d82-0b09d84ecf40:


>>>>>>> master
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
<<<<<<< HEAD
iconst_0
if_icmpge label_d37bcdd5-317a-4b2d-ae0e-74846fa3eb6e
iconst_0
goto label_bec0577b-11ff-4083-acf6-5a8d5f1b9656
label_d37bcdd5-317a-4b2d-ae0e-74846fa3eb6e
iconst_1
label_bec0577b-11ff-4083-acf6-5a8d5f1b9656
=======
ldc 0

if_icmpge label_46d9ffbc-79f1-4c08-9f70-d9b1bc6ac4bc:
66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_49db46f6-edcb-4488-9848-08101dd7ab82:
label_46d9ffbc-79f1-4c08-9f70-d9b1bc6ac4bc:
iconst_1
label_49db46f6-edcb-4488-9848-08101dd7ab82:


>>>>>>> master
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
<<<<<<< HEAD
iconst_0
if_icmplt label_e5280eb5-1fd2-4bf3-8446-f479d61f9cb0
iconst_0
goto label_15d53c42-d580-487c-afb7-b4325a93aee6
label_e5280eb5-1fd2-4bf3-8446-f479d61f9cb0
iconst_1
label_15d53c42-d580-487c-afb7-b4325a93aee6
=======
ldc 0

if_icmplt label_ab5c4168-2041-46ea-9f67-a311b4d5a2b7:
iconst_0
goto label_f633ac7d-dede-4cdc-b647-81fcddabec12:
label_ab5c4168-2041-46ea-9f67-a311b4d5a2b7:
iconst_1

label_f633ac7d-dede-4cdc-b647-81fcddabec12:



>>>>>>> master
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
<<<<<<< HEAD
iconst_0
if_icmpgt label_label_cd08ce9a-1325-482e-ad08-0f0bb15c074a
=======
ldc 0


label_d38b09b0-eb5d-4c0d-aee6-ca2cb060c896:
if_icmpgt label_label_77eebcfc-5884-49b9-917f-0cbe21282867
>>>>>>> master
iconst_0
goto label_47530bf6-3c87-4020-9b8a-a1bf247f7a2f
label_cd08ce9a-1325-482e-ad08-0f0bb15c074a
iconst_1
<<<<<<< HEAD
label_47530bf6-3c87-4020-9b8a-a1bf247f7a2f
=======
label_9f8eb283-0e15-4592-a2d3-286643a76795
>>>>>>> master
iconst_0
iand

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
istore_1

ldc 34
ldc 6
<<<<<<< HEAD
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
=======
if_icmplt label_453d95d1-eb9d-4041-bc09-a8e3eddafa8d:
iconst_0
goto label_b8208b3c-0790-47ce-a0b3-480c3326d6f2:
label_453d95d1-eb9d-4041-bc09-a8e3eddafa8d:
iconst_1
label_b8208b3c-0790-47ce-a0b3-480c3326d6f2:
iconst_0
iload_1
ldc 0

iand
if_icmpne label_28e3874b-ab25-48a3-a63f-c7afa4f120ca:
iload_0
invokestatic Runtime/printInt(I)V
goto label_580579cb-67a4-4959-945d-bac70cf3dd1d:
label_28e3874b-ab25-48a3-a63f-c7afa4f120ca:
ldc 42

>>>>>>> master

iconst_0
ireturn

.end method
