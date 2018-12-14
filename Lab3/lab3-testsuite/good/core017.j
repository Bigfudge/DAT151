.class public core017
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

  invokestatic core017/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
iconst_4
istore_0

iconst_3
iload_0
if_icmple label_7457b2b5-26ed-452b-b818-cdde59044dfb
iconst_0
goto label_b2ff5e0e-ea4f-4e46-b01d-0012fc3067e3
label_7457b2b5-26ed-452b-b818-cdde59044dfb
iconst_1
label_b2ff5e0e-ea4f-4e46-b01d-0012fc3067e3
iconst_0
iconst_4
iconst_2
if_icmpne label_9887b0e1-9e77-454c-b960-02c3be0f13e4
iconst_0
goto label_197b49d4-b0e4-4c0e-9ba2-09c670408c85
label_9887b0e1-9e77-454c-b960-02c3be0f13e4
iconst_1
label_197b49d4-b0e4-4c0e-9ba2-09c670408c85
iconst_0
iand
iconst_1
iand
if_icmpeq label_1bce6818-4780-4ceb-9237-b7d0532de9ed
goto label_6c719336-5f44-4dc4-a83b-2d16aff03cb7
label_1bce6818-4780-4ceb-9237-b7d0532de9ed
iconst_1
invokestaticprintBool(Z)V
nop
pop
label_6c719336-5f44-4dc4-a83b-2d16aff03cb7

iconst_1
iconst_1
invokestaticeq_bool(ZZ)Z
nop
iconst_1
invokestaticdontCallMe(I)Z
nop
ior
invokestaticprintBool(Z)V
nop

iconst_4
ldc 50
if_icmpgt label_label_834ec84f-30f1-4bdb-b523-bb9f06126624
iconst_0
goto label_e1f49a55-9347-4c3f-a4d9-1986f2a05ea5
label_834ec84f-30f1-4bdb-b523-bb9f06126624
iconst_1
label_e1f49a55-9347-4c3f-a4d9-1986f2a05ea5
iconst_0
iconst_2
invokestaticdontCallMe(I)Z
nop
iand
invokestaticprintBool(Z)V
nop

iconst_4
iload_0
if_icmpeq label_2246c7aa-a4d7-44b8-8af8-f46f5011eccf
iconst_0
goto label_36f718b5-fc2f-4ead-816a-fd54f860d782
label_2246c7aa-a4d7-44b8-8af8-f46f5011eccf
iconst_1
label_36f718b5-fc2f-4ead-816a-fd54f860d782
iconst_0
iconst_1
iconst_0
invokestaticeq_bool(ZZ)Z
nop
iand
iconst_1
iand
invokestaticprintBool(Z)V
nop

iconst_0
iconst_0
invokestaticimplies(ZZ)Z
nop
invokestaticprintBool(Z)V
nop

iconst_0
iconst_1
invokestaticimplies(ZZ)Z
nop
invokestaticprintBool(Z)V
nop

iconst_1
iconst_0
invokestaticimplies(ZZ)Z
nop
invokestaticprintBool(Z)V
nop

iconst_1
iconst_1
invokestaticimplies(ZZ)Z
nop
invokestaticprintBool(Z)V
nop

iconst_0
ireturn

.end method
.method public static dontCallMe(I)Z
.limit locals 3
.limit stack 3
iload_0
invokestatic Runtime/printInt(I)V

iconst_1
ireturn

.end method
.method public static printBool(Z)V
.limit locals 3
.limit stack 3
iload_-1
if_icmpeq label_5a08fccf-b56a-4254-a785-1be2caf241fa
iconst_0
invokestatic Runtime/printInt(I)V
pop
goto label_75768cc9-39df-457a-9645-e99fcb10f380
label_5a08fccf-b56a-4254-a785-1be2caf241fa
iconst_1
invokestatic Runtime/printInt(I)V
pop
label_75768cc9-39df-457a-9645-e99fcb10f380

.end method
.method public static implies(ZZ)Z
.limit locals 3
.limit stack 3
iload_0
invokestaticnot(Z)Z
nop
iload_0
iload_-1
invokestaticeq_bool(ZZ)Z
nop
ior
ireturn

.end method
.method public static not(Z)Z
.limit locals 3
.limit stack 3

iload_0
if_icmpeq label_194e9fff-78be-428c-bc3a-24d90f1519fd
iconst_1
istore_1
iload_1
goto label_85e01011-0303-4fd6-99fe-f19d3d3490d7
label_194e9fff-78be-428c-bc3a-24d90f1519fd
iconst_0
istore_1
iload_1
label_85e01011-0303-4fd6-99fe-f19d3d3490d7

iload_1
ireturn

.end method
.method public static eq_bool(ZZ)Z
.limit locals 3
.limit stack 3

iload_0
if_icmpeq label_2e8e7fec-8dbd-4927-9919-77a75b8d65ec
iload_-1
invokestaticnot(Z)Z
nop
istore_1
iload_1
goto label_554a123d-bfea-4341-8b67-6d48d5bd1961
label_2e8e7fec-8dbd-4927-9919-77a75b8d65ec
iload_-1
istore_1
iload_1
label_554a123d-bfea-4341-8b67-6d48d5bd1961

iload_1
ireturn

.end method
