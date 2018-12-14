.class public large_program_fac
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

  invokestatic large_program_fac/main()I
  pop
  return

.end method

.method public static main()I
.limit locals 3
.limit stack 3
ldc 10
invokestaticfac(I)I
nop
invokestatic Runtime/printInt(I)V

ldc 10
invokestaticrfac(I)I
nop
invokestatic Runtime/printInt(I)V

ldc 10
invokestaticmfac(I)I
nop
invokestatic Runtime/printInt(I)V

ldc 10
invokestaticifac(I)I
nop
invokestatic Runtime/printInt(I)V

iconst_0
ireturn

.end method
.method public static fac(I)I
.limit locals 3
.limit stack 3


iconst_1
istore_0
iload_0

iload_-1
istore_1
iload_1

label_ed841120-27d8-4dac-8536-1417413e995d
iload_1
iconst_0
if_icmpgt label_label_3dd8e1fb-e473-4c79-9f46-4a1bfd46110a
iconst_0
goto label_08dc9774-894c-46b0-8038-1b4326d698c8
label_3dd8e1fb-e473-4c79-9f46-4a1bfd46110a
iconst_1
label_08dc9774-894c-46b0-8038-1b4326d698c8
iconst_0
if icmpeq label_1e045c88-6dc1-4f4c-b09c-cc5ad093c23a
iload_0
iload_1
imul
istore_0
iload_0
pop
iload_1
iconst_1
isub
istore_1
iload_1
pop
goto label_ed841120-27d8-4dac-8536-1417413e995d
label_1e045c88-6dc1-4f4c-b09c-cc5ad093c23a

iload_0
ireturn

.end method
.method public static rfac(I)I
.limit locals 3
.limit stack 3

iload_1
iconst_0
if_icmpeq label_5189b980-a26f-4424-8895-29eb160e38f2
iconst_0
goto label_ffbd79c3-f0e8-4e02-bf49-f2fc14819d6a
label_5189b980-a26f-4424-8895-29eb160e38f2
iconst_1
label_ffbd79c3-f0e8-4e02-bf49-f2fc14819d6a
iconst_0
if_icmpeq label_47dac5f6-a53d-426d-86b1-edc9e2d1a891
iload_1
iload_1
iconst_1
isub
invokestaticrfac(I)I
nop
imul
istore_2
iload_2
goto label_145adc13-b62d-439f-88ca-5af70fedc0fd
label_47dac5f6-a53d-426d-86b1-edc9e2d1a891
iconst_1
istore_2
iload_2
label_145adc13-b62d-439f-88ca-5af70fedc0fd

iload_2
ireturn

.end method
.method public static mfac(I)I
.limit locals 3
.limit stack 3

iload_1
iconst_0
if_icmpeq label_7334c266-70bd-4f19-8c88-2f9414b0dc1d
iconst_0
goto label_e87ca5e5-43e6-469d-9b81-bb2fd129daab
label_7334c266-70bd-4f19-8c88-2f9414b0dc1d
iconst_1
label_e87ca5e5-43e6-469d-9b81-bb2fd129daab
iconst_0
if_icmpeq label_befc34ba-c19f-4d22-84c9-0ce51f7d678b
iload_1
iload_1
iconst_1
isub
invokestaticnfac(I)I
nop
imul
istore_2
iload_2
goto label_36837680-520b-4c33-bc22-2b6ca8d52e39
label_befc34ba-c19f-4d22-84c9-0ce51f7d678b
iconst_1
istore_2
iload_2
label_36837680-520b-4c33-bc22-2b6ca8d52e39

iload_2
ireturn

.end method
.method public static nfac(I)I
.limit locals 3
.limit stack 3

iload_1
iconst_0
if_icmpne label_b03c3033-342e-4fbb-a781-06d514c3c3be
iconst_0
goto label_a718d0ca-c07b-4ead-ba12-4f6a61ab122d
label_b03c3033-342e-4fbb-a781-06d514c3c3be
iconst_1
label_a718d0ca-c07b-4ead-ba12-4f6a61ab122d
iconst_0
if_icmpeq label_60621e7a-c99b-4fe5-a3ea-d6ecb3e39389
iconst_1
istore_0
iload_0
goto label_d40df89e-5169-4325-80ba-4255111e8b54
label_60621e7a-c99b-4fe5-a3ea-d6ecb3e39389
iload_1
iconst_1
isub
invokestaticmfac(I)I
nop
iload_1
imul
istore_0
iload_0
label_d40df89e-5169-4325-80ba-4255111e8b54

iload_0
ireturn

.end method
.method public static ifac(I)I
.limit locals 3
.limit stack 3
iconst_1
iload_1
invokestaticifac2f(II)I
nop
ireturn

.end method
.method public static ifac2f(II)I
.limit locals 3
.limit stack 3

iload_-1
iload_-1
if_icmpeq label_8f74571b-fddb-4cda-8907-4eed03b2e7b5
iconst_0
goto label_74181358-451b-4a90-b7ff-3293c8a6e45e
label_8f74571b-fddb-4cda-8907-4eed03b2e7b5
iconst_1
label_74181358-451b-4a90-b7ff-3293c8a6e45e
iconst_0
if_icmpeq label_fc6f5e65-c421-42e9-a8ce-e820f1f2ee63
iload_-1
iload_-1
if_icmpgt label_label_be40665f-3e11-41ba-9a93-561eab5b1851
iconst_0
goto label_eb227d66-d688-4a6b-8ad9-9e8a866655f9
label_be40665f-3e11-41ba-9a93-561eab5b1851
iconst_1
label_eb227d66-d688-4a6b-8ad9-9e8a866655f9
iconst_0
if_icmpeq label_f876677c-5a11-450a-8fcb-6ed01047f1c5
pop
iload_-1
iload_-1
iadd
iconst_2
idiv
istore_2
iload_2
pop
iload_-1
iload_2
invokestaticifac2f(II)I
nop
iload_2
iconst_1
iadd
iload_-1
invokestaticifac2f(II)I
nop
imul
istore_0
iload_0
pop
goto label_c5cd5542-c55f-4ca4-b65d-66b9ea11b86d
label_f876677c-5a11-450a-8fcb-6ed01047f1c5
iconst_1
istore_0
iload_0
label_c5cd5542-c55f-4ca4-b65d-66b9ea11b86d
goto label_c0862ce3-7600-4867-8ed2-6bc5469d07d3
label_fc6f5e65-c421-42e9-a8ce-e820f1f2ee63
iload_-1
istore_0
iload_0
label_c0862ce3-7600-4867-8ed2-6bc5469d07d3

iload_0
ireturn

.end method
