.class public eval_order
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

  invokestatic eval_order/main()I
  pop
  return

.end method

.method public static order(II)I
.limit locals 3
.limit stack 3
iconst_0
ireturn

.end method
.method public static printIntInt(I)I
.limit locals 3
.limit stack 3
iload_-1
invokestatic Runtime/printInt(I)V

iload_-1
ireturn

.end method
.method public static printIntBool(I)Z
.limit locals 3
.limit stack 3
iload_-1
invokestatic Runtime/printInt(I)V

iconst_1
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
invokestaticprintIntInt(I)I
nop
iconst_1
invokestaticprintIntInt(I)I
nop
invokestaticorder(II)I
nop

iconst_2
invokestaticprintIntInt(I)I
nop
iconst_3
invokestaticprintIntInt(I)I
nop
iadd

iconst_4
invokestaticprintIntInt(I)I
nop
iconst_5
invokestaticprintIntInt(I)I
nop
if_icmpeq label_a739af35-eb5c-42db-b8bb-1a25f5a7086d
iconst_0
goto label_a6238796-f1ed-42d9-9c3c-f8edd977250b
label_a739af35-eb5c-42db-b8bb-1a25f5a7086d
iconst_1
label_a6238796-f1ed-42d9-9c3c-f8edd977250b
iconst_0

ldc 6
invokestaticprintIntInt(I)I
nop
ldc 7
invokestaticprintIntInt(I)I
nop
imul

ldc 8
invokestaticprintIntInt(I)I
nop
ldc 9
invokestaticprintIntInt(I)I
nop
idiv

ldc 10
invokestaticprintIntInt(I)I
nop
ldc 11
invokestaticprintIntInt(I)I
nop
isub

ldc 12
invokestaticprintIntInt(I)I
nop
ldc 13
invokestaticprintIntInt(I)I
nop
if_icmplt label_802da6be-ac3b-4fab-a1b4-32a641e5d3ff
iconst_0
goto label_d4120758-965e-4785-a7e0-892ccc96fbab
label_802da6be-ac3b-4fab-a1b4-32a641e5d3ff
iconst_1
label_d4120758-965e-4785-a7e0-892ccc96fbab
iconst_0

ldc 14
invokestaticprintIntInt(I)I
nop
ldc 15
invokestaticprintIntInt(I)I
nop
if_icmpgt label_label_0548565c-0ed6-42ac-bbf6-caa1fd6628e9
iconst_0
goto label_db2164a5-9345-4821-9a13-a110420b0c53
label_0548565c-0ed6-42ac-bbf6-caa1fd6628e9
iconst_1
label_db2164a5-9345-4821-9a13-a110420b0c53
iconst_0

ldc 16
invokestaticprintIntInt(I)I
nop
ldc 17
invokestaticprintIntInt(I)I
nop
if_icmple label_96f74de7-e5c9-4446-a984-757bf1dbcc94
iconst_0
goto label_b4020751-0482-4595-872c-58e39b76e3ba
label_96f74de7-e5c9-4446-a984-757bf1dbcc94
iconst_1
label_b4020751-0482-4595-872c-58e39b76e3ba
iconst_0

ldc 18
invokestaticprintIntInt(I)I
nop
ldc 19
invokestaticprintIntInt(I)I
nop
if_icmpge label_77e76bb1-7e10-4b4d-ac60-c16e78f51178
iconst_0
goto label_b62233d5-1e94-4520-b792-e4bf3fb4db4a
label_77e76bb1-7e10-4b4d-ac60-c16e78f51178
iconst_1
label_b62233d5-1e94-4520-b792-e4bf3fb4db4a
iconst_0

ldc 20
invokestaticprintIntInt(I)I
nop
ldc 21
invokestaticprintIntInt(I)I
nop
if_icmpne label_9a8651b8-b39d-44e8-bf5f-7b62cfc571e5
iconst_0
goto label_33e32719-c6ad-446d-8f8c-fcf0591cf5af
label_9a8651b8-b39d-44e8-bf5f-7b62cfc571e5
iconst_1
label_33e32719-c6ad-446d-8f8c-fcf0591cf5af
iconst_0

ldc 22
invokestaticprintIntBool(I)Z
nop
ldc 23
invokestaticprintIntBool(I)Z
nop
iand

ldc 24
invokestaticprintIntBool(I)Z
nop
ldc 25
invokestaticprintIntBool(I)Z
nop
ior

iconst_0
ireturn

.end method
