.class public cmp
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

  invokestatic cmp/main()I
  pop
  return

.end method

.method public static printBool(Z)V
.limit locals 3
.limit stack 3
iload_-1
if_icmpeq label_bea5c869-a2cd-4346-911a-f5fce2827c66
iconst_0
invokestatic Runtime/printInt(I)V
goto label_4f8fcf82-b19c-48b1-9346-bd32f9da8e30
label_bea5c869-a2cd-4346-911a-f5fce2827c66
iconst_1
invokestatic Runtime/printInt(I)V
label_4f8fcf82-b19c-48b1-9346-bd32f9da8e30

.end method
.method public static main()I
.limit locals 3
.limit stack 3
ldc 30
ldc 40
if_icmpeq label_bc4d9768-fae5-4a3d-897f-8375f0ab95e8
iconst_0
goto label_7d7f0c99-b945-4589-9f86-afd22057972f
label_bc4d9768-fae5-4a3d-897f-8375f0ab95e8
iconst_1
label_7d7f0c99-b945-4589-9f86-afd22057972f
iconst_0
invokestaticprintBool(Z)V
nop

ldc 30
ldc 30
if_icmpeq label_11941dfd-26b5-4050-aa08-6ca68e984260
iconst_0
goto label_1619f2bb-d166-4640-b78b-ad373bcada62
label_11941dfd-26b5-4050-aa08-6ca68e984260
iconst_1
label_1619f2bb-d166-4640-b78b-ad373bcada62
iconst_0
invokestaticprintBool(Z)V
nop

ldc 30
ldc 30
if_icmpne label_4213f093-935f-47a9-9b0b-4729e6a4c172
iconst_0
goto label_ebdd87d2-29d2-4b1a-88fa-4313bfe1a245
label_4213f093-935f-47a9-9b0b-4729e6a4c172
iconst_1
label_ebdd87d2-29d2-4b1a-88fa-4313bfe1a245
iconst_0
invokestaticprintBool(Z)V
nop

ldc 40
ldc 40
if_icmpne label_4b0b5a3d-decf-4553-8936-9da6010248d8
iconst_0
goto label_1260baf9-945a-44ed-bb85-bb25b68e1df0
label_4b0b5a3d-decf-4553-8936-9da6010248d8
iconst_1
label_1260baf9-945a-44ed-bb85-bb25b68e1df0
iconst_0
invokestaticprintBool(Z)V
nop

iconst_3
iconst_4
if_icmpgt label_label_e87e37d9-cf59-4e81-8e24-8873dd15ace8
iconst_0
goto label_a9c08fb2-0549-48f1-9f22-6dac2dfc4160
label_e87e37d9-cf59-4e81-8e24-8873dd15ace8
iconst_1
label_a9c08fb2-0549-48f1-9f22-6dac2dfc4160
iconst_0
invokestaticprintBool(Z)V
nop

iconst_3
iconst_3
if_icmpgt label_label_047aa5be-90ca-4764-bd0d-bf24497760b3
iconst_0
goto label_c9ec83b8-bb56-4c58-8f43-d70688847fed
label_047aa5be-90ca-4764-bd0d-bf24497760b3
iconst_1
label_c9ec83b8-bb56-4c58-8f43-d70688847fed
iconst_0
invokestaticprintBool(Z)V
nop

iconst_4
iconst_3
if_icmplt label_9d92a817-f0bb-40c3-9cfb-093843991cff
iconst_0
goto label_b0409bb4-69b9-4f82-87f8-87aca33e0dc7
label_9d92a817-f0bb-40c3-9cfb-093843991cff
iconst_1
label_b0409bb4-69b9-4f82-87f8-87aca33e0dc7
iconst_0
invokestaticprintBool(Z)V
nop

iconst_4
iconst_4
if_icmplt label_cea86774-70ae-44e1-bab4-77195cc2e1a7
iconst_0
goto label_d6cc4192-3b62-405e-97ce-2c5ff1b7e16d
label_cea86774-70ae-44e1-bab4-77195cc2e1a7
iconst_1
label_d6cc4192-3b62-405e-97ce-2c5ff1b7e16d
iconst_0
invokestaticprintBool(Z)V
nop

ldc 400
ldc 300
if_icmpge label_8579fce3-fed5-4d01-b2d6-4ebee5dace65
iconst_0
goto label_9e1c6bb0-27b8-4b14-9008-f5ba70b6335a
label_8579fce3-fed5-4d01-b2d6-4ebee5dace65
iconst_1
label_9e1c6bb0-27b8-4b14-9008-f5ba70b6335a
iconst_0
invokestaticprintBool(Z)V
nop

ldc 400
ldc 400
if_icmpge label_65c4609c-116c-458f-a21c-70167dee2384
iconst_0
goto label_922b070c-f12e-4846-90b5-ebc97d3a4f7e
label_65c4609c-116c-458f-a21c-70167dee2384
iconst_1
label_922b070c-f12e-4846-90b5-ebc97d3a4f7e
iconst_0
invokestaticprintBool(Z)V
nop

ldc 400
ldc 300
if_icmple label_289b3ee3-dcbb-4f17-a9fe-a6877da63345
iconst_0
goto label_374fca70-d784-419d-858a-6f8961327762
label_289b3ee3-dcbb-4f17-a9fe-a6877da63345
iconst_1
label_374fca70-d784-419d-858a-6f8961327762
iconst_0
invokestaticprintBool(Z)V
nop

ldc 400
ldc 400
if_icmple label_8cd142c9-1048-4a81-afc3-f4f4977cf446
iconst_0
goto label_cb6f77c7-b9a7-4172-b541-38ec0d3673f4
label_8cd142c9-1048-4a81-afc3-f4f4977cf446
iconst_1
label_cb6f77c7-b9a7-4172-b541-38ec0d3673f4
iconst_0
invokestaticprintBool(Z)V
nop

iconst_0
ireturn

.end method
