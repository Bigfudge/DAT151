.class public good13
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

  invokestatic good13/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3

invokestatic Runtime/readInt()I
istore_0
iload_0

ldc 2
istore_1
iload_1

<<<<<<< Updated upstream
label_526557a2-86a2-480a-b571-93c927005236
iload_1
iload_0
if_icmple label_f283e1c0-6291-4ac0-8de6-539c027a804e
iconst_0
goto label_331138ac-5615-4aae-a9ec-ff12873e2784
label_f283e1c0-6291-4ac0-8de6-539c027a804e
iconst_1
label_331138ac-5615-4aae-a9ec-ff12873e2784
iconst_0
if icmpeq label_f847492e-0e65-441d-acad-66ba69e6ec96
=======
label_36939b90-1c46-4ad4-abc3-6b353c3f9618
iload_1
iload_0
if_icmple label_bc619b69-95f9-4e3e-8529-c3018950020e
iconst_0
goto label_97e0e284-21d3-47e3-9c76-e71c19d45ede
label_bc619b69-95f9-4e3e-8529-c3018950020e
iconst_1
label_97e0e284-21d3-47e3-9c76-e71c19d45ede
iconst_0
if icmpeq label_6514dae8-a60f-4975-b6b9-fc50b20acb49
>>>>>>> Stashed changes
iconst_1
istore_2
pop
ldc 2
istore_3
pop
<<<<<<< Updated upstream
label_3acb9974-9520-465e-a6c9-b0630ff7fbbf
=======
label_61a86993-4325-47bc-be93-6f522cca1566
>>>>>>> Stashed changes
iload_3
iload_3
imul
iload_1
<<<<<<< Updated upstream
if_icmple label_6f1fd704-f5a1-4cfa-af0a-a7cc8ddd8082
iconst_0
goto label_60e95ecf-1da2-4360-9bdf-ac03c02338b6
label_6f1fd704-f5a1-4cfa-af0a-a7cc8ddd8082
iconst_1
label_60e95ecf-1da2-4360-9bdf-ac03c02338b6
iconst_0
iload_2
iand
if icmpeq label_60d265c5-bbad-49e0-8786-02de9a01f7d0
=======
if_icmple label_cd443b78-f3d9-4ac7-81f3-734bdd15f083
iconst_0
goto label_1dc3d83f-1db4-4169-8109-0a1891568021
label_cd443b78-f3d9-4ac7-81f3-734bdd15f083
iconst_1
label_1dc3d83f-1db4-4169-8109-0a1891568021
iconst_0
iload_2
iand
if icmpeq label_552a0dc8-4556-402c-9742-aa85f750b50d
>>>>>>> Stashed changes
pop
iload_3
iload_3
iconst_1
iadd
istore_3
pop
<<<<<<< Updated upstream
goto label_3acb9974-9520-465e-a6c9-b0630ff7fbbf
pop
pop
goto label_526557a2-86a2-480a-b571-93c927005236
=======
goto label_61a86993-4325-47bc-be93-6f522cca1566
pop
pop
goto label_36939b90-1c46-4ad4-abc3-6b353c3f9618
>>>>>>> Stashed changes

ldc 0
ireturn

.end method
