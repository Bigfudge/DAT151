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
ldc 1
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

if_icmpne label_d2391664-6e56-4f0c-a459-9c26c2836515:
iconst_0
goto label_0906b708-0755-40f5-8d82-0b09d84ecf40:
label_d2391664-6e56-4f0c-a459-9c26c2836515:
iconst_1
label_0906b708-0755-40f5-8d82-0b09d84ecf40:


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
ldc 0

if_icmpge label_46d9ffbc-79f1-4c08-9f70-d9b1bc6ac4bc:
66cf894e8174941ea8c4559decd289cc05335d2a
iconst_0
goto label_49db46f6-edcb-4488-9848-08101dd7ab82:
label_46d9ffbc-79f1-4c08-9f70-d9b1bc6ac4bc:
iconst_1
label_49db46f6-edcb-4488-9848-08101dd7ab82:


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
ldc 0

if_icmplt label_ab5c4168-2041-46ea-9f67-a311b4d5a2b7:
iconst_0
goto label_f633ac7d-dede-4cdc-b647-81fcddabec12:
label_ab5c4168-2041-46ea-9f67-a311b4d5a2b7:
iconst_1

label_f633ac7d-dede-4cdc-b647-81fcddabec12:



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
ldc 0


label_d38b09b0-eb5d-4c0d-aee6-ca2cb060c896:
if_icmpgt label_label_77eebcfc-5884-49b9-917f-0cbe21282867
iconst_0
goto label_9f8eb283-0e15-4592-a2d3-286643a76795
label_77eebcfc-5884-49b9-917f-0cbe21282867
iconst_1
label_9f8eb283-0e15-4592-a2d3-286643a76795
iconst_0
iand

iload_0
invokestatic Runtime/printInt(I)V

ldc 0
istore_1

ldc 34
ldc 6
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


ldc 0
ireturn

.end method
