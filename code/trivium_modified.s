	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_ECRYPT_init            ## -- Begin function ECRYPT_init
	.p2align	4, 0x90
_ECRYPT_init:                           ## @ECRYPT_init
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ECRYPT_keysetup        ## -- Begin function ECRYPT_keysetup
	.p2align	4, 0x90
_ECRYPT_keysetup:                       ## @ECRYPT_keysetup
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	$7, %ecx
	shrl	$3, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, (%rsi)
	movl	-24(%rbp), %ecx
	addl	$7, %ecx
	shrl	$3, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 4(%rsi)
	movl	$0, -28(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movb	%sil, 48(%rax,%rdx)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB1_1
LBB1_4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ECRYPT_ivsetup         ## -- Begin function ECRYPT_ivsetup
	.p2align	4, 0x90
_ECRYPT_ivsetup:                        ## @ECRYPT_ivsetup
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	movb	48(%rax,%rdx), %sil
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	movb	%sil, 8(%rax,%rdx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_1
LBB2_4:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$12, -20(%rbp)
	jae	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	movb	$0, 8(%rax,%rdx)
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_5
LBB2_8:
	movl	$0, -20(%rbp)
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	LBB2_12
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$12, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movb	%sil, 8(%rax,%rdx)
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_9
LBB2_12:
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -20(%rbp)
LBB2_13:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$12, -20(%rbp)
	jae	LBB2_16
## %bb.14:                              ##   in Loop: Header=BB2_13 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$12, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movb	$0, 8(%rax,%rdx)
## %bb.15:                              ##   in Loop: Header=BB2_13 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_13
LBB2_16:
	movl	$0, -20(%rbp)
LBB2_17:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$13, -20(%rbp)
	jae	LBB2_20
## %bb.18:                              ##   in Loop: Header=BB2_17 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$24, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movb	$0, 8(%rax,%rdx)
## %bb.19:                              ##   in Loop: Header=BB2_17 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_17
LBB2_20:
	movq	-8(%rbp), %rax
	movb	$112, 45(%rax)
## %bb.21:
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	9(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	10(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	11(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	13(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	14(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	15(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	17(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	18(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	19(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	movzbl	20(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	21(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	22(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	23(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	25(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	26(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	27(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rax
	movzbl	28(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	29(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	30(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	31(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	33(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	34(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	35(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rax
	movzbl	36(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	37(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	38(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	39(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	41(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	42(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	43(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	movq	-8(%rbp), %rax
	movzbl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	45(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	46(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	47(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -60(%rbp)
## %bb.22:
	movl	$0, -20(%rbp)
LBB2_23:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jae	LBB2_30
## %bb.24:                              ##   in Loop: Header=BB2_23 Depth=1
	jmp	LBB2_25
LBB2_25:                                ##   in Loop: Header=BB2_23 Depth=1
	movl	-32(%rbp), %eax
	shll	$30, %eax
	movl	-28(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-32(%rbp), %ecx
	shll	$3, %ecx
	movl	-28(%rbp), %edx
	shrl	$29, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	shll	$27, %eax
	movl	-40(%rbp), %ecx
	shrl	$5, %ecx
	orl	%ecx, %eax
	movl	-44(%rbp), %ecx
	shll	$12, %ecx
	movl	-40(%rbp), %edx
	shrl	$20, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movl	-56(%rbp), %eax
	shll	$30, %eax
	movl	-52(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-60(%rbp), %ecx
	shll	$17, %ecx
	movl	-56(%rbp), %edx
	shrl	$15, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movl	-32(%rbp), %eax
	shll	$5, %eax
	movl	-28(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-32(%rbp), %ecx
	shll	$4, %ecx
	movl	-28(%rbp), %edx
	shrl	$28, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-44(%rbp), %ecx
	shll	$18, %ecx
	movl	-40(%rbp), %edx
	shrl	$14, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	shll	$14, %eax
	movl	-40(%rbp), %ecx
	shrl	$18, %ecx
	orl	%ecx, %eax
	movl	-44(%rbp), %ecx
	shll	$13, %ecx
	movl	-40(%rbp), %edx
	shrl	$19, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-56(%rbp), %ecx
	shll	$9, %ecx
	movl	-52(%rbp), %edx
	shrl	$23, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	shll	$19, %eax
	movl	-56(%rbp), %ecx
	shrl	$13, %ecx
	orl	%ecx, %eax
	movl	-60(%rbp), %ecx
	shll	$18, %ecx
	movl	-56(%rbp), %edx
	shrl	$14, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-32(%rbp), %ecx
	shll	$27, %ecx
	movl	-28(%rbp), %edx
	shrl	$5, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
## %bb.26:                              ##   in Loop: Header=BB2_23 Depth=1
	jmp	LBB2_27
LBB2_27:                                ##   in Loop: Header=BB2_23 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -48(%rbp)
## %bb.28:                              ##   in Loop: Header=BB2_23 Depth=1
	jmp	LBB2_29
LBB2_29:                                ##   in Loop: Header=BB2_23 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_23
LBB2_30:
	jmp	LBB2_31
LBB2_31:
	jmp	LBB2_32
LBB2_32:
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 8(%rdx)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 9(%rdx)
	movl	-24(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 10(%rdx)
	movl	-24(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 11(%rdx)
## %bb.33:
	jmp	LBB2_34
LBB2_34:
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 12(%rdx)
	movl	-28(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 13(%rdx)
	movl	-28(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 14(%rdx)
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 15(%rdx)
## %bb.35:
	jmp	LBB2_36
LBB2_36:
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 16(%rdx)
	movl	-32(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 17(%rdx)
	movl	-32(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 18(%rdx)
	movl	-32(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 19(%rdx)
## %bb.37:
	jmp	LBB2_38
LBB2_38:
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 20(%rdx)
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 21(%rdx)
	movl	-36(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 22(%rdx)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 23(%rdx)
## %bb.39:
	jmp	LBB2_40
LBB2_40:
	movl	-40(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 24(%rdx)
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 25(%rdx)
	movl	-40(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 26(%rdx)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 27(%rdx)
## %bb.41:
	jmp	LBB2_42
LBB2_42:
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 28(%rdx)
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 29(%rdx)
	movl	-44(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 30(%rdx)
	movl	-44(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 31(%rdx)
## %bb.43:
	jmp	LBB2_44
LBB2_44:
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 32(%rdx)
	movl	-48(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 33(%rdx)
	movl	-48(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 34(%rdx)
	movl	-48(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 35(%rdx)
## %bb.45:
	jmp	LBB2_46
LBB2_46:
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 36(%rdx)
	movl	-52(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 37(%rdx)
	movl	-52(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 38(%rdx)
	movl	-52(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 39(%rdx)
## %bb.47:
	jmp	LBB2_48
LBB2_48:
	movl	-56(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 40(%rdx)
	movl	-56(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 41(%rdx)
	movl	-56(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 42(%rdx)
	movl	-56(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 43(%rdx)
## %bb.49:
	jmp	LBB2_50
LBB2_50:
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 44(%rdx)
	movl	-60(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 45(%rdx)
	movl	-60(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 46(%rdx)
	movl	-60(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 47(%rdx)
## %bb.51:
	jmp	LBB2_52
LBB2_52:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ECRYPT_process_bytes   ## -- Begin function ECRYPT_process_bytes
	.p2align	4, 0x90
_ECRYPT_process_bytes:                  ## @ECRYPT_process_bytes
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
## %bb.1:
	movq	-16(%rbp), %rax
	movzbl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	9(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	10(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	11(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movzbl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	13(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	14(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	15(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	17(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	18(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	19(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movzbl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	21(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	22(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	23(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	25(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	26(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	27(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rax
	movzbl	28(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	29(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	30(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	31(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	33(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	34(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	35(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	movq	-16(%rbp), %rax
	movzbl	36(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	38(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	39(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	movq	-16(%rbp), %rax
	movzbl	40(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	41(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	42(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	43(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	movq	-16(%rbp), %rax
	movzbl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	45(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	46(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	47(%rax), %edx
	shll	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -80(%rbp)
## %bb.2:
	movl	$0, -40(%rbp)
LBB3_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shrl	$2, %ecx
	cmpl	%ecx, %eax
	jae	LBB3_10
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=1
	jmp	LBB3_5
LBB3_5:                                 ##   in Loop: Header=BB3_3 Depth=1
	movl	-52(%rbp), %eax
	shll	$30, %eax
	movl	-48(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	shll	$3, %ecx
	movl	-48(%rbp), %edx
	shrl	$29, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-64(%rbp), %eax
	shll	$27, %eax
	movl	-60(%rbp), %ecx
	shrl	$5, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	shll	$12, %ecx
	movl	-60(%rbp), %edx
	shrl	$20, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -92(%rbp)
	movl	-76(%rbp), %eax
	shll	$30, %eax
	movl	-72(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-80(%rbp), %ecx
	shll	$17, %ecx
	movl	-76(%rbp), %edx
	shrl	$15, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -96(%rbp)
	movl	-52(%rbp), %eax
	shll	$5, %eax
	movl	-48(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	shll	$4, %ecx
	movl	-48(%rbp), %edx
	shrl	$28, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-64(%rbp), %ecx
	shll	$18, %ecx
	movl	-60(%rbp), %edx
	shrl	$14, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-64(%rbp), %eax
	shll	$14, %eax
	movl	-60(%rbp), %ecx
	shrl	$18, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	shll	$13, %ecx
	movl	-60(%rbp), %edx
	shrl	$19, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-76(%rbp), %ecx
	shll	$9, %ecx
	movl	-72(%rbp), %edx
	shrl	$23, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-80(%rbp), %eax
	shll	$19, %eax
	movl	-76(%rbp), %ecx
	shrl	$13, %ecx
	orl	%ecx, %eax
	movl	-80(%rbp), %ecx
	shll	$18, %ecx
	movl	-76(%rbp), %edx
	shrl	$14, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-52(%rbp), %ecx
	shll	$27, %ecx
	movl	-48(%rbp), %edx
	shrl	$5, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
## %bb.6:                               ##   in Loop: Header=BB3_3 Depth=1
	jmp	LBB3_7
LBB3_7:                                 ##   in Loop: Header=BB3_3 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -68(%rbp)
## %bb.8:                               ##   in Loop: Header=BB3_3 Depth=1
	jmp	LBB3_9
LBB3_9:                                 ##   in Loop: Header=BB3_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB3_3
LBB3_10:
	movl	-40(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	LBB3_20
## %bb.11:
	jmp	LBB3_12
LBB3_12:
	movl	-52(%rbp), %eax
	shll	$30, %eax
	movl	-48(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	shll	$3, %ecx
	movl	-48(%rbp), %edx
	shrl	$29, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -100(%rbp)
	movl	-64(%rbp), %eax
	shll	$27, %eax
	movl	-60(%rbp), %ecx
	shrl	$5, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	shll	$12, %ecx
	movl	-60(%rbp), %edx
	shrl	$20, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movl	-76(%rbp), %eax
	shll	$30, %eax
	movl	-72(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-80(%rbp), %ecx
	shll	$17, %ecx
	movl	-76(%rbp), %edx
	shrl	$15, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	%eax, -108(%rbp)
	movl	-100(%rbp), %eax
	xorl	-104(%rbp), %eax
	xorl	-108(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-52(%rbp), %eax
	shll	$5, %eax
	movl	-48(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	shll	$4, %ecx
	movl	-48(%rbp), %edx
	shrl	$28, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-64(%rbp), %ecx
	shll	$18, %ecx
	movl	-60(%rbp), %edx
	shrl	$14, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-64(%rbp), %eax
	shll	$14, %eax
	movl	-60(%rbp), %ecx
	shrl	$18, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	shll	$13, %ecx
	movl	-60(%rbp), %edx
	shrl	$19, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-76(%rbp), %ecx
	shll	$9, %ecx
	movl	-72(%rbp), %edx
	shrl	$23, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-80(%rbp), %eax
	shll	$19, %eax
	movl	-76(%rbp), %ecx
	shrl	$13, %ecx
	orl	%ecx, %eax
	movl	-80(%rbp), %ecx
	shll	$18, %ecx
	movl	-76(%rbp), %edx
	shrl	$14, %edx
	orl	%edx, %ecx
	xorl 	%ecx, 0
	movl	-52(%rbp), %ecx
	shll	$27, %ecx
	movl	-48(%rbp), %edx
	shrl	$5, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	xorl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
## %bb.13:
	jmp	LBB3_14
LBB3_14:
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -68(%rbp)
## %bb.15:
	jmp	LBB3_16
LBB3_16:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	LBB3_19
## %bb.17:                              ##   in Loop: Header=BB3_16 Depth=1
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	(%rax,%rdx), %ecx
	movl	-84(%rbp), %esi
	movb	%sil, %dil
	movzbl	%dil, %esi
	andl	$255, %esi
	xorl	%esi, %ecx
	movb	%cl, %dil
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	%ecx, %edx
	movb	%dil, (%rax,%rdx)
## %bb.18:                              ##   in Loop: Header=BB3_16 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-84(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -84(%rbp)
	jmp	LBB3_16
LBB3_19:
	jmp	LBB3_20
LBB3_20:
	jmp	LBB3_21
LBB3_21:
	jmp	LBB3_22
LBB3_22:
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 8(%rdx)
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 9(%rdx)
	movl	-44(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 10(%rdx)
	movl	-44(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 11(%rdx)
## %bb.23:
	jmp	LBB3_24
LBB3_24:
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 12(%rdx)
	movl	-48(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 13(%rdx)
	movl	-48(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 14(%rdx)
	movl	-48(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 15(%rdx)
## %bb.25:
	jmp	LBB3_26
LBB3_26:
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 16(%rdx)
	movl	-52(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 17(%rdx)
	movl	-52(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 18(%rdx)
	movl	-52(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 19(%rdx)
## %bb.27:
	jmp	LBB3_28
LBB3_28:
	movl	-56(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 20(%rdx)
	movl	-56(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 21(%rdx)
	movl	-56(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 22(%rdx)
	movl	-56(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 23(%rdx)
## %bb.29:
	jmp	LBB3_30
LBB3_30:
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 24(%rdx)
	movl	-60(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 25(%rdx)
	movl	-60(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 26(%rdx)
	movl	-60(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 27(%rdx)
## %bb.31:
	jmp	LBB3_32
LBB3_32:
	movl	-64(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 28(%rdx)
	movl	-64(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 29(%rdx)
	movl	-64(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 30(%rdx)
	movl	-64(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 31(%rdx)
## %bb.33:
	jmp	LBB3_34
LBB3_34:
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 32(%rdx)
	movl	-68(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 33(%rdx)
	movl	-68(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 34(%rdx)
	movl	-68(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 35(%rdx)
## %bb.35:
	jmp	LBB3_36
LBB3_36:
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 36(%rdx)
	movl	-72(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 37(%rdx)
	movl	-72(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 38(%rdx)
	movl	-72(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 39(%rdx)
## %bb.37:
	jmp	LBB3_38
LBB3_38:
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 40(%rdx)
	movl	-76(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 41(%rdx)
	movl	-76(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 42(%rdx)
	movl	-76(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 43(%rdx)
## %bb.39:
	jmp	LBB3_40
LBB3_40:
	movl	-80(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 44(%rdx)
	movl	-80(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 45(%rdx)
	movl	-80(%rbp), %eax
	shrl	$16, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 46(%rdx)
	movl	-80(%rbp), %eax
	shrl	$24, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 47(%rdx)
## %bb.41:
	jmp	LBB3_42
LBB3_42:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
