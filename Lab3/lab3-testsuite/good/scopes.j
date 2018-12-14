.class public scopes
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

  invokestatic scopes/main()I
  pop
  return

.end method

.method public static f()I
.limit locals 3
.limit stack 3
iconst_2
istore_0

<<<<<<< HEAD
iload_0
iconst_3
if_icmplt label_857e332a-1b87-47b9-9899-713c77149d98
iconst_0
goto label_df8e5ad5-488b-4439-9def-293ef212bee7
label_857e332a-1b87-47b9-9899-713c77149d98
iconst_1
label_df8e5ad5-488b-4439-9def-293ef212bee7
iconst_0
if_icmpeq label_b0f6d57d-7a4d-49ce-ad2b-ae406080cdf7
goto label_0128b5a3-2657-4c15-82e1-5ebcd0184480
label_b0f6d57d-7a4d-49ce-ad2b-ae406080cdf7
iconst_3
istore_0
pop
iload_0
ireturn
pop
label_0128b5a3-2657-4c15-82e1-5ebcd0184480

=======
>>>>>>> master
iload_0
ldc 3
if_icmplt label_2283cadc-73ff-4a80-a321-01b19e4f74de:
iconst_0
goto label_beb09608-1dce-407a-9914-407536f830ef:
label_2283cadc-73ff-4a80-a321-01b19e4f74de:
iconst_1
label_beb09608-1dce-407a-9914-407536f830ef:
iconst_0
if_icmpne label_acf32b47-27ad-4cda-bfc8-632788f7a919:
ldc 3
istore_1
iload_1
ireturn
goto label_63440d3f-9eee-4407-95e3-0065696b9479:
label_acf32b47-27ad-4cda-bfc8-632788f7a919:
label_63440d3f-9eee-4407-95e3-0065696b9479:

iload_1
ireturn

.end method
.method public static main()I
.limit locals 3
.limit stack 3
<<<<<<< HEAD
iconst_1
istore_0

iload_0
=======
ldc 1
istore_2

iload_2
>>>>>>> master
invokestatic Runtime/printInt(I)V

invokestaticf()I
nop
invokestatic Runtime/printInt(I)V

<<<<<<< HEAD
iload_0
=======
iload_2
>>>>>>> master
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
