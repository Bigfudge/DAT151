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
if_icmpgt label_label_1e10d715-26be-4e3b-9ba2-5101f0f6d874:
iconst_0
goto label_d38b09b0-eb5d-4c0d-aee6-ca2cb060c896:
label_1e10d715-26be-4e3b-9ba2-5101f0f6d874:
iconst_1
label_d38b09b0-eb5d-4c0d-aee6-ca2cb060c896:
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
if_icmplt label_1952765b-e967-4215-87f4-cfaf3ea47c55:
iconst_0
goto label_4b1786d7-eed1-49e8-b7a0-058c300fcc6d:
label_1952765b-e967-4215-87f4-cfaf3ea47c55:
iconst_1
label_4b1786d7-eed1-49e8-b7a0-058c300fcc6d:
iconst_0
iand
if_icmpne label_28e3874b-ab25-48a3-a63f-c7afa4f120ca:
iload_0
invokestatic Runtime/printInt(I)V
goto label_580579cb-67a4-4959-945d-bac70cf3dd1d:
label_28e3874b-ab25-48a3-a63f-c7afa4f120ca:
ldc 42
invokestatic Runtime/printInt(I)V
label_580579cb-67a4-4959-945d-bac70cf3dd1d:

ldc 0
ireturn

.end method
