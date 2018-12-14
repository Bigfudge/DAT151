.class public state_propagation
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

  invokestatic state_propagation/main()I
  pop
  return

.end method

.method public static id(I)I
.limit locals 3
.limit stack 3
iload_-1
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
iconst_0
istore_0

iload_0
iconst_1
iadd
istore_0
iload_0
invokestaticid(I)I
nop

iload_0
invokestatic Runtime/printInt(I)V

iload_0
iconst_1
iadd
istore_0
iload_0
invokestaticid(I)I
nop

iload_0
invokestatic Runtime/printInt(I)V

iload_0
iload_0
iconst_1
iadd
istore_0
iload_0
iload_0
iconst_1
iadd
istore_0
iadd

iload_0
invokestatic Runtime/printInt(I)V

iload_0
iload_0
iconst_1
iadd
istore_0
iload_0
iload_0
iconst_1
iadd
istore_0
if_icmpeq label_6a79df18-4696-4533-9e89-b0d693fd726b
iconst_0
goto label_d7fa126c-5dba-4b88-8e31-55d52bc4a4fc
label_6a79df18-4696-4533-9e89-b0d693fd726b
iconst_1
label_d7fa126c-5dba-4b88-8e31-55d52bc4a4fc
iconst_0

iload_0
invokestatic Runtime/printInt(I)V

iload_0
iconst_1
iadd
istore_0
iload_0
ldc 7
if_icmpeq label_df5f82dd-e05c-4b89-9f6d-fca3ecdc984e
iconst_0
goto label_5eaac8f4-8138-49db-8ef5-a33cf03998b1
label_df5f82dd-e05c-4b89-9f6d-fca3ecdc984e
iconst_1
label_5eaac8f4-8138-49db-8ef5-a33cf03998b1
iconst_0
if_icmpeq label_a7b58fb9-4512-4553-95c7-382fb1cfcc4d
goto label_68024b6b-b36e-4a2c-8b3f-1e182be639e8
label_a7b58fb9-4512-4553-95c7-382fb1cfcc4d
iload_0
invokestatic Runtime/printInt(I)V
pop
label_68024b6b-b36e-4a2c-8b3f-1e182be639e8

iload_0
invokestatic Runtime/printInt(I)V

iload_0
iload_0
iconst_1
iadd
istore_0
ldc 8
if_icmpeq label_01a02965-008e-45a5-a9e1-055a820aff03
iconst_0
goto label_bada39d0-b01c-401c-9868-6adc81c43e9b
label_01a02965-008e-45a5-a9e1-055a820aff03
iconst_1
label_bada39d0-b01c-401c-9868-6adc81c43e9b
iconst_0
if_icmpeq label_6e1f13f7-fdfc-495b-af57-d99865c61812
iload_0
invokestatic Runtime/printInt(I)V
pop
goto label_2280cbbb-65f3-403c-bb5f-6dc023b969d5
label_6e1f13f7-fdfc-495b-af57-d99865c61812
label_2280cbbb-65f3-403c-bb5f-6dc023b969d5

iload_0
invokestatic Runtime/printInt(I)V

label_1ceb2689-a8c5-4cd1-bb5c-e6cf70dc36d0
iload_0
iconst_1
iadd
istore_0
iload_0
ldc 9
if_icmpeq label_d0ff2941-5e93-4ce4-815a-3354c200ca1f
iconst_0
goto label_2b2c43ed-3f15-4173-84ba-b4c5017421b6
label_d0ff2941-5e93-4ce4-815a-3354c200ca1f
iconst_1
label_2b2c43ed-3f15-4173-84ba-b4c5017421b6
iconst_0
if icmpeq label_4d922989-eb9f-48d1-a21f-79c386db3eae
iload_0
invokestatic Runtime/printInt(I)V
pop
goto label_1ceb2689-a8c5-4cd1-bb5c-e6cf70dc36d0
label_4d922989-eb9f-48d1-a21f-79c386db3eae

iload_0
invokestatic Runtime/printInt(I)V

label_221610c4-6901-407c-a0a4-c0f234bcd8c4
iload_0
iload_0
iconst_1
iadd
istore_0
ldc 11
if_icmpeq label_8dce8925-0a69-462d-97e9-fa13211aee75
iconst_0
goto label_42d1caf1-8f60-46a8-a694-97e1a56c0a13
label_8dce8925-0a69-462d-97e9-fa13211aee75
iconst_1
label_42d1caf1-8f60-46a8-a694-97e1a56c0a13
iconst_0
if icmpeq label_1bb92025-132a-4b32-bf71-055d616859b3
goto label_221610c4-6901-407c-a0a4-c0f234bcd8c4
label_1bb92025-132a-4b32-bf71-055d616859b3

iload_0
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
