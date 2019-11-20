
trivium.o:     file format mach-o-x86-64


Disassembly of section .text:

0000000000000000 <_ECRYPT_init>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	5d                   	pop    %rbp
   5:	c3                   	retq   
   6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
   d:	00 00 00 

0000000000000010 <_ECRYPT_keysetup>:
  10:	55                   	push   %rbp
  11:	48 89 e5             	mov    %rsp,%rbp
  14:	83 c2 07             	add    $0x7,%edx
  17:	89 d0                	mov    %edx,%eax
  19:	c1 e8 03             	shr    $0x3,%eax
  1c:	89 07                	mov    %eax,(%rdi)
  1e:	83 c1 07             	add    $0x7,%ecx
  21:	c1 e9 03             	shr    $0x3,%ecx
  24:	89 4f 04             	mov    %ecx,0x4(%rdi)
  27:	85 c0                	test   %eax,%eax
  29:	0f 84 76 01 00 00    	je     1a5 <_ECRYPT_keysetup+0x195>
  2f:	41 89 c0             	mov    %eax,%r8d
  32:	81 fa 00 01 00 00    	cmp    $0x100,%edx
  38:	72 1f                	jb     59 <_ECRYPT_keysetup+0x49>
  3a:	48 8d 47 30          	lea    0x30(%rdi),%rax
  3e:	4a 8d 0c 06          	lea    (%rsi,%r8,1),%rcx
  42:	48 39 c8             	cmp    %rcx,%rax
  45:	0f 83 85 00 00 00    	jae    d0 <_ECRYPT_keysetup+0xc0>
  4b:	4a 8d 44 07 30       	lea    0x30(%rdi,%r8,1),%rax
  50:	48 39 f0             	cmp    %rsi,%rax
  53:	0f 86 77 00 00 00    	jbe    d0 <_ECRYPT_keysetup+0xc0>
  59:	31 c9                	xor    %ecx,%ecx
  5b:	49 89 c9             	mov    %rcx,%r9
  5e:	49 f7 d1             	not    %r9
  61:	4d 01 c1             	add    %r8,%r9
  64:	4c 89 c2             	mov    %r8,%rdx
  67:	48 83 e2 03          	and    $0x3,%rdx
  6b:	74 13                	je     80 <_ECRYPT_keysetup+0x70>
  6d:	48 f7 da             	neg    %rdx
  70:	0f b6 04 0e          	movzbl (%rsi,%rcx,1),%eax
  74:	88 44 0f 30          	mov    %al,0x30(%rdi,%rcx,1)
  78:	48 ff c1             	inc    %rcx
  7b:	48 ff c2             	inc    %rdx
  7e:	75 f0                	jne    70 <_ECRYPT_keysetup+0x60>
  80:	49 83 f9 03          	cmp    $0x3,%r9
  84:	0f 82 1b 01 00 00    	jb     1a5 <_ECRYPT_keysetup+0x195>
  8a:	49 29 c8             	sub    %rcx,%r8
  8d:	48 8d 7c 0f 33       	lea    0x33(%rdi,%rcx,1),%rdi
  92:	48 8d 4c 0e 03       	lea    0x3(%rsi,%rcx,1),%rcx
  97:	31 d2                	xor    %edx,%edx
  99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  a0:	0f b6 44 11 fd       	movzbl -0x3(%rcx,%rdx,1),%eax
  a5:	88 44 17 fd          	mov    %al,-0x3(%rdi,%rdx,1)
  a9:	0f b6 44 11 fe       	movzbl -0x2(%rcx,%rdx,1),%eax
  ae:	88 44 17 fe          	mov    %al,-0x2(%rdi,%rdx,1)
  b2:	0f b6 44 11 ff       	movzbl -0x1(%rcx,%rdx,1),%eax
  b7:	88 44 17 ff          	mov    %al,-0x1(%rdi,%rdx,1)
  bb:	0f b6 04 11          	movzbl (%rcx,%rdx,1),%eax
  bf:	88 04 17             	mov    %al,(%rdi,%rdx,1)
  c2:	48 83 c2 04          	add    $0x4,%rdx
  c6:	49 39 d0             	cmp    %rdx,%r8
  c9:	75 d5                	jne    a0 <_ECRYPT_keysetup+0x90>
  cb:	e9 d5 00 00 00       	jmpq   1a5 <_ECRYPT_keysetup+0x195>
  d0:	44 89 c1             	mov    %r8d,%ecx
  d3:	83 e1 e0             	and    $0xffffffe0,%ecx
  d6:	48 8d 51 e0          	lea    -0x20(%rcx),%rdx
  da:	48 89 d0             	mov    %rdx,%rax
  dd:	48 c1 e8 05          	shr    $0x5,%rax
  e1:	48 ff c0             	inc    %rax
  e4:	41 89 c1             	mov    %eax,%r9d
  e7:	41 83 e1 03          	and    $0x3,%r9d
  eb:	48 83 fa 60          	cmp    $0x60,%rdx
  ef:	73 10                	jae    101 <_ECRYPT_keysetup+0xf1>
  f1:	31 c0                	xor    %eax,%eax
  f3:	4d 85 c9             	test   %r9,%r9
  f6:	0f 85 7b 00 00 00    	jne    177 <_ECRYPT_keysetup+0x167>
  fc:	e9 9b 00 00 00       	jmpq   19c <_ECRYPT_keysetup+0x18c>
 101:	ba 01 00 00 00       	mov    $0x1,%edx
 106:	48 29 c2             	sub    %rax,%rdx
 109:	49 8d 54 11 ff       	lea    -0x1(%r9,%rdx,1),%rdx
 10e:	31 c0                	xor    %eax,%eax
 110:	0f 10 04 06          	movups (%rsi,%rax,1),%xmm0
 114:	0f 10 4c 06 10       	movups 0x10(%rsi,%rax,1),%xmm1
 119:	0f 11 44 07 30       	movups %xmm0,0x30(%rdi,%rax,1)
 11e:	0f 11 4c 07 40       	movups %xmm1,0x40(%rdi,%rax,1)
 123:	0f 10 44 06 20       	movups 0x20(%rsi,%rax,1),%xmm0
 128:	0f 10 4c 06 30       	movups 0x30(%rsi,%rax,1),%xmm1
 12d:	0f 11 44 07 50       	movups %xmm0,0x50(%rdi,%rax,1)
 132:	0f 11 4c 07 60       	movups %xmm1,0x60(%rdi,%rax,1)
 137:	0f 10 44 06 40       	movups 0x40(%rsi,%rax,1),%xmm0
 13c:	0f 10 4c 06 50       	movups 0x50(%rsi,%rax,1),%xmm1
 141:	0f 11 44 07 70       	movups %xmm0,0x70(%rdi,%rax,1)
 146:	0f 11 8c 07 80 00 00 	movups %xmm1,0x80(%rdi,%rax,1)
 14d:	00 
 14e:	0f 10 44 06 60       	movups 0x60(%rsi,%rax,1),%xmm0
 153:	0f 10 4c 06 70       	movups 0x70(%rsi,%rax,1),%xmm1
 158:	0f 11 84 07 90 00 00 	movups %xmm0,0x90(%rdi,%rax,1)
 15f:	00 
 160:	0f 11 8c 07 a0 00 00 	movups %xmm1,0xa0(%rdi,%rax,1)
 167:	00 
 168:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
 16c:	48 83 c2 04          	add    $0x4,%rdx
 170:	75 9e                	jne    110 <_ECRYPT_keysetup+0x100>
 172:	4d 85 c9             	test   %r9,%r9
 175:	74 25                	je     19c <_ECRYPT_keysetup+0x18c>
 177:	49 f7 d9             	neg    %r9
 17a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 180:	0f 10 04 06          	movups (%rsi,%rax,1),%xmm0
 184:	0f 10 4c 06 10       	movups 0x10(%rsi,%rax,1),%xmm1
 189:	0f 11 44 07 30       	movups %xmm0,0x30(%rdi,%rax,1)
 18e:	0f 11 4c 07 40       	movups %xmm1,0x40(%rdi,%rax,1)
 193:	48 83 c0 20          	add    $0x20,%rax
 197:	49 ff c1             	inc    %r9
 19a:	75 e4                	jne    180 <_ECRYPT_keysetup+0x170>
 19c:	4c 39 c1             	cmp    %r8,%rcx
 19f:	0f 85 b6 fe ff ff    	jne    5b <_ECRYPT_keysetup+0x4b>
 1a5:	5d                   	pop    %rbp
 1a6:	c3                   	retq   
 1a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 1ae:	00 00 

00000000000001b0 <_ECRYPT_ivsetup>:
 1b0:	55                   	push   %rbp
 1b1:	48 89 e5             	mov    %rsp,%rbp
 1b4:	41 57                	push   %r15
 1b6:	41 56                	push   %r14
 1b8:	41 55                	push   %r13
 1ba:	41 54                	push   %r12
 1bc:	53                   	push   %rbx
 1bd:	48 83 ec 28          	sub    $0x28,%rsp
 1c1:	49 89 f6             	mov    %rsi,%r14
 1c4:	49 89 fc             	mov    %rdi,%r12
 1c7:	8b 07                	mov    (%rdi),%eax
 1c9:	48 85 c0             	test   %rax,%rax
 1cc:	74 0c                	je     1da <_ECRYPT_ivsetup+0x2a>
 1ce:	83 f8 1f             	cmp    $0x1f,%eax
 1d1:	77 0e                	ja     1e1 <_ECRYPT_ivsetup+0x31>
 1d3:	31 c9                	xor    %ecx,%ecx
 1d5:	e9 e6 00 00 00       	jmpq   2c0 <_ECRYPT_ivsetup+0x110>
 1da:	31 c0                	xor    %eax,%eax
 1dc:	e9 f7 00 00 00       	jmpq   2d8 <_ECRYPT_ivsetup+0x128>
 1e1:	89 c1                	mov    %eax,%ecx
 1e3:	83 e1 e0             	and    $0xffffffe0,%ecx
 1e6:	48 8d 79 e0          	lea    -0x20(%rcx),%rdi
 1ea:	48 89 fe             	mov    %rdi,%rsi
 1ed:	48 c1 ee 05          	shr    $0x5,%rsi
 1f1:	48 ff c6             	inc    %rsi
 1f4:	89 f2                	mov    %esi,%edx
 1f6:	83 e2 03             	and    $0x3,%edx
 1f9:	48 83 ff 60          	cmp    $0x60,%rdi
 1fd:	73 10                	jae    20f <_ECRYPT_ivsetup+0x5f>
 1ff:	31 f6                	xor    %esi,%esi
 201:	48 85 d2             	test   %rdx,%rdx
 204:	0f 85 8e 00 00 00    	jne    298 <_ECRYPT_ivsetup+0xe8>
 20a:	e9 a9 00 00 00       	jmpq   2b8 <_ECRYPT_ivsetup+0x108>
 20f:	bf 01 00 00 00       	mov    $0x1,%edi
 214:	48 29 f7             	sub    %rsi,%rdi
 217:	48 8d 7c 3a ff       	lea    -0x1(%rdx,%rdi,1),%rdi
 21c:	31 f6                	xor    %esi,%esi
 21e:	66 90                	xchg   %ax,%ax
 220:	41 0f 10 44 34 30    	movups 0x30(%r12,%rsi,1),%xmm0
 226:	41 0f 10 4c 34 40    	movups 0x40(%r12,%rsi,1),%xmm1
 22c:	41 0f 10 54 34 50    	movups 0x50(%r12,%rsi,1),%xmm2
 232:	41 0f 10 5c 34 60    	movups 0x60(%r12,%rsi,1),%xmm3
 238:	41 0f 11 44 34 08    	movups %xmm0,0x8(%r12,%rsi,1)
 23e:	41 0f 11 4c 34 18    	movups %xmm1,0x18(%r12,%rsi,1)
 244:	41 0f 11 54 34 28    	movups %xmm2,0x28(%r12,%rsi,1)
 24a:	41 0f 11 5c 34 38    	movups %xmm3,0x38(%r12,%rsi,1)
 250:	41 0f 10 44 34 70    	movups 0x70(%r12,%rsi,1),%xmm0
 256:	41 0f 10 8c 34 80 00 	movups 0x80(%r12,%rsi,1),%xmm1
 25d:	00 00 
 25f:	41 0f 11 44 34 48    	movups %xmm0,0x48(%r12,%rsi,1)
 265:	41 0f 11 4c 34 58    	movups %xmm1,0x58(%r12,%rsi,1)
 26b:	41 0f 10 84 34 90 00 	movups 0x90(%r12,%rsi,1),%xmm0
 272:	00 00 
 274:	41 0f 10 8c 34 a0 00 	movups 0xa0(%r12,%rsi,1),%xmm1
 27b:	00 00 
 27d:	41 0f 11 44 34 68    	movups %xmm0,0x68(%r12,%rsi,1)
 283:	41 0f 11 4c 34 78    	movups %xmm1,0x78(%r12,%rsi,1)
 289:	48 83 ee 80          	sub    $0xffffffffffffff80,%rsi
 28d:	48 83 c7 04          	add    $0x4,%rdi
 291:	75 8d                	jne    220 <_ECRYPT_ivsetup+0x70>
 293:	48 85 d2             	test   %rdx,%rdx
 296:	74 20                	je     2b8 <_ECRYPT_ivsetup+0x108>
 298:	49 8d 74 34 40       	lea    0x40(%r12,%rsi,1),%rsi
 29d:	48 f7 da             	neg    %rdx
 2a0:	0f 10 46 f0          	movups -0x10(%rsi),%xmm0
 2a4:	0f 10 0e             	movups (%rsi),%xmm1
 2a7:	0f 11 46 c8          	movups %xmm0,-0x38(%rsi)
 2ab:	0f 11 4e d8          	movups %xmm1,-0x28(%rsi)
 2af:	48 83 c6 20          	add    $0x20,%rsi
 2b3:	48 ff c2             	inc    %rdx
 2b6:	75 e8                	jne    2a0 <_ECRYPT_ivsetup+0xf0>
 2b8:	48 39 c1             	cmp    %rax,%rcx
 2bb:	74 16                	je     2d3 <_ECRYPT_ivsetup+0x123>
 2bd:	0f 1f 00             	nopl   (%rax)
 2c0:	41 0f b6 54 0c 30    	movzbl 0x30(%r12,%rcx,1),%edx
 2c6:	41 88 54 0c 08       	mov    %dl,0x8(%r12,%rcx,1)
 2cb:	48 ff c1             	inc    %rcx
 2ce:	48 39 c1             	cmp    %rax,%rcx
 2d1:	72 ed                	jb     2c0 <_ECRYPT_ivsetup+0x110>
 2d3:	83 f8 0b             	cmp    $0xb,%eax
 2d6:	77 16                	ja     2ee <_ECRYPT_ivsetup+0x13e>
 2d8:	89 c1                	mov    %eax,%ecx
 2da:	49 8d 7c 0c 08       	lea    0x8(%r12,%rcx,1),%rdi
 2df:	be 0b 00 00 00       	mov    $0xb,%esi
 2e4:	29 c6                	sub    %eax,%esi
 2e6:	48 ff c6             	inc    %rsi
 2e9:	e8 00 00 00 00       	callq  2ee <_ECRYPT_ivsetup+0x13e>
 2ee:	41 8b 44 24 04       	mov    0x4(%r12),%eax
 2f3:	48 85 c0             	test   %rax,%rax
 2f6:	4c 89 65 c0          	mov    %r12,-0x40(%rbp)
 2fa:	74 30                	je     32c <_ECRYPT_ivsetup+0x17c>
 2fc:	83 f8 1f             	cmp    $0x1f,%eax
 2ff:	0f 87 61 02 00 00    	ja     566 <_ECRYPT_ivsetup+0x3b6>
 305:	31 c9                	xor    %ecx,%ecx
 307:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 30e:	00 00 
 310:	41 0f b6 14 0e       	movzbl (%r14,%rcx,1),%edx
 315:	8d 71 0c             	lea    0xc(%rcx),%esi
 318:	41 88 54 34 08       	mov    %dl,0x8(%r12,%rsi,1)
 31d:	48 ff c1             	inc    %rcx
 320:	48 39 c1             	cmp    %rax,%rcx
 323:	72 eb                	jb     310 <_ECRYPT_ivsetup+0x160>
 325:	83 f8 0b             	cmp    $0xb,%eax
 328:	76 04                	jbe    32e <_ECRYPT_ivsetup+0x17e>
 32a:	eb 19                	jmp    345 <_ECRYPT_ivsetup+0x195>
 32c:	31 c0                	xor    %eax,%eax
 32e:	8d 48 0c             	lea    0xc(%rax),%ecx
 331:	49 8d 7c 0c 08       	lea    0x8(%r12,%rcx,1),%rdi
 336:	be 0b 00 00 00       	mov    $0xb,%esi
 33b:	29 c6                	sub    %eax,%esi
 33d:	48 ff c6             	inc    %rsi
 340:	e8 00 00 00 00       	callq  345 <_ECRYPT_ivsetup+0x195>
 345:	49 c7 44 24 25 00 00 	movq   $0x0,0x25(%r12)
 34c:	00 00 
 34e:	49 c7 44 24 20 00 00 	movq   $0x0,0x20(%r12)
 355:	00 00 
 357:	41 c6 44 24 2d 70    	movb   $0x70,0x2d(%r12)
 35d:	41 8b 44 24 08       	mov    0x8(%r12),%eax
 362:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 365:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
 36a:	89 45 d0             	mov    %eax,-0x30(%rbp)
 36d:	41 8b 5c 24 10       	mov    0x10(%r12),%ebx
 372:	45 8b 6c 24 18       	mov    0x18(%r12),%r13d
 377:	41 0f b6 4c 24 1c    	movzbl 0x1c(%r12),%ecx
 37d:	41 0f b6 54 24 1d    	movzbl 0x1d(%r12),%edx
 383:	c1 e2 08             	shl    $0x8,%edx
 386:	09 ca                	or     %ecx,%edx
 388:	41 0f b6 74 24 1e    	movzbl 0x1e(%r12),%esi
 38e:	c1 e6 10             	shl    $0x10,%esi
 391:	09 d6                	or     %edx,%esi
 393:	45 8b 5c 24 24       	mov    0x24(%r12),%r11d
 398:	45 8b 54 24 28       	mov    0x28(%r12),%r10d
 39d:	45 0f b6 7c 24 2c    	movzbl 0x2c(%r12),%r15d
 3a3:	41 81 cf 00 70 00 00 	or     $0x7000,%r15d
 3aa:	41 b8 24 00 00 00    	mov    $0x24,%r8d
 3b0:	41 8b 54 24 14       	mov    0x14(%r12),%edx
 3b5:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
 3bc:	0f 1f 40 00          	nopl   0x0(%rax)
 3c0:	41 89 dc             	mov    %ebx,%r12d
 3c3:	89 f1                	mov    %esi,%ecx
 3c5:	44 0f a4 e9 1b       	shld   $0x1b,%r13d,%ecx
 3ca:	44 89 d0             	mov    %r10d,%eax
 3cd:	44 0f a4 d8 1e       	shld   $0x1e,%r11d,%eax
 3d2:	45 89 f9             	mov    %r15d,%r9d
 3d5:	45 0f a4 d1 11       	shld   $0x11,%r10d,%r9d
 3da:	41 31 c1             	xor    %eax,%r9d
 3dd:	89 55 b8             	mov    %edx,-0x48(%rbp)
 3e0:	44 8b 75 d0          	mov    -0x30(%rbp),%r14d
 3e4:	89 f0                	mov    %esi,%eax
 3e6:	44 0f a4 e8 0c       	shld   $0xc,%r13d,%eax
 3eb:	31 c8                	xor    %ecx,%eax
 3ed:	44 0f a4 f3 1e       	shld   $0x1e,%r14d,%ebx
 3f2:	44 89 e7             	mov    %r12d,%edi
 3f5:	44 0f a4 f7 03       	shld   $0x3,%r14d,%edi
 3fa:	44 89 e1             	mov    %r12d,%ecx
 3fd:	44 0f a4 f1 05       	shld   $0x5,%r14d,%ecx
 402:	89 f2                	mov    %esi,%edx
 404:	44 0f a4 ea 12       	shld   $0x12,%r13d,%edx
 409:	31 d9                	xor    %ebx,%ecx
 40b:	31 fa                	xor    %edi,%edx
 40d:	44 0f a4 ee 0e       	shld   $0xe,%r13d,%esi
 412:	31 ca                	xor    %ecx,%edx
 414:	8b 7d cc             	mov    -0x34(%rbp),%edi
 417:	44 89 d1             	mov    %r10d,%ecx
 41a:	44 0f a4 d9 09       	shld   $0x9,%r11d,%ecx
 41f:	31 f1                	xor    %esi,%ecx
 421:	8b 75 d4             	mov    -0x2c(%rbp),%esi
 424:	89 75 d0             	mov    %esi,-0x30(%rbp)
 427:	45 0f a4 d7 13       	shld   $0x13,%r10d,%r15d
 42c:	44 89 f3             	mov    %r14d,%ebx
 42f:	45 0f a4 f4 1b       	shld   $0x1b,%r14d,%r12d
 434:	31 c1                	xor    %eax,%ecx
 436:	89 4d cc             	mov    %ecx,-0x34(%rbp)
 439:	45 31 fc             	xor    %r15d,%r12d
 43c:	45 31 cc             	xor    %r9d,%r12d
 43f:	44 89 65 d4          	mov    %r12d,-0x2c(%rbp)
 443:	44 89 55 bc          	mov    %r10d,-0x44(%rbp)
 447:	45 89 d7             	mov    %r10d,%r15d
 44a:	45 89 dc             	mov    %r11d,%r12d
 44d:	45 89 da             	mov    %r11d,%r10d
 450:	41 89 fe             	mov    %edi,%r14d
 453:	41 89 fb             	mov    %edi,%r11d
 456:	44 89 ef             	mov    %r13d,%edi
 459:	44 89 ee             	mov    %r13d,%esi
 45c:	44 8b 6d b8          	mov    -0x48(%rbp),%r13d
 460:	41 ff c8             	dec    %r8d
 463:	0f 85 57 ff ff ff    	jne    3c0 <_ECRYPT_ivsetup+0x210>
 469:	44 89 e9             	mov    %r13d,%ecx
 46c:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
 470:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 473:	88 46 08             	mov    %al,0x8(%rsi)
 476:	88 66 09             	mov    %ah,0x9(%rsi)
 479:	41 89 c0             	mov    %eax,%r8d
 47c:	c1 e8 10             	shr    $0x10,%eax
 47f:	88 46 0a             	mov    %al,0xa(%rsi)
 482:	41 c1 e8 18          	shr    $0x18,%r8d
 486:	44 88 46 0b          	mov    %r8b,0xb(%rsi)
 48a:	8b 45 d0             	mov    -0x30(%rbp),%eax
 48d:	88 46 0c             	mov    %al,0xc(%rsi)
 490:	88 66 0d             	mov    %ah,0xd(%rsi)
 493:	41 89 c0             	mov    %eax,%r8d
 496:	c1 e8 10             	shr    $0x10,%eax
 499:	88 46 0e             	mov    %al,0xe(%rsi)
 49c:	41 c1 e8 18          	shr    $0x18,%r8d
 4a0:	44 88 46 0f          	mov    %r8b,0xf(%rsi)
 4a4:	88 5e 10             	mov    %bl,0x10(%rsi)
 4a7:	88 7e 11             	mov    %bh,0x11(%rsi)
 4aa:	89 d8                	mov    %ebx,%eax
 4ac:	c1 e8 10             	shr    $0x10,%eax
 4af:	88 46 12             	mov    %al,0x12(%rsi)
 4b2:	c1 eb 18             	shr    $0x18,%ebx
 4b5:	88 5e 13             	mov    %bl,0x13(%rsi)
 4b8:	88 56 14             	mov    %dl,0x14(%rsi)
 4bb:	88 76 15             	mov    %dh,0x15(%rsi)
 4be:	89 d0                	mov    %edx,%eax
 4c0:	c1 e8 10             	shr    $0x10,%eax
 4c3:	88 46 16             	mov    %al,0x16(%rsi)
 4c6:	c1 ea 18             	shr    $0x18,%edx
 4c9:	88 56 17             	mov    %dl,0x17(%rsi)
 4cc:	44 89 ea             	mov    %r13d,%edx
 4cf:	88 56 18             	mov    %dl,0x18(%rsi)
 4d2:	88 76 19             	mov    %dh,0x19(%rsi)
 4d5:	89 c8                	mov    %ecx,%eax
 4d7:	c1 e8 10             	shr    $0x10,%eax
 4da:	88 46 1a             	mov    %al,0x1a(%rsi)
 4dd:	c1 ea 18             	shr    $0x18,%edx
 4e0:	88 56 1b             	mov    %dl,0x1b(%rsi)
 4e3:	89 fa                	mov    %edi,%edx
 4e5:	88 56 1c             	mov    %dl,0x1c(%rsi)
 4e8:	88 76 1d             	mov    %dh,0x1d(%rsi)
 4eb:	89 f8                	mov    %edi,%eax
 4ed:	c1 e8 10             	shr    $0x10,%eax
 4f0:	88 46 1e             	mov    %al,0x1e(%rsi)
 4f3:	c1 ea 18             	shr    $0x18,%edx
 4f6:	88 56 1f             	mov    %dl,0x1f(%rsi)
 4f9:	8b 55 cc             	mov    -0x34(%rbp),%edx
 4fc:	88 56 20             	mov    %dl,0x20(%rsi)
 4ff:	88 76 21             	mov    %dh,0x21(%rsi)
 502:	89 d0                	mov    %edx,%eax
 504:	c1 e8 10             	shr    $0x10,%eax
 507:	88 46 22             	mov    %al,0x22(%rsi)
 50a:	c1 ea 18             	shr    $0x18,%edx
 50d:	88 56 23             	mov    %dl,0x23(%rsi)
 510:	44 89 f2             	mov    %r14d,%edx
 513:	88 56 24             	mov    %dl,0x24(%rsi)
 516:	88 76 25             	mov    %dh,0x25(%rsi)
 519:	44 89 f0             	mov    %r14d,%eax
 51c:	c1 e8 10             	shr    $0x10,%eax
 51f:	88 46 26             	mov    %al,0x26(%rsi)
 522:	c1 ea 18             	shr    $0x18,%edx
 525:	88 56 27             	mov    %dl,0x27(%rsi)
 528:	44 89 e2             	mov    %r12d,%edx
 52b:	88 56 28             	mov    %dl,0x28(%rsi)
 52e:	88 76 29             	mov    %dh,0x29(%rsi)
 531:	44 89 e0             	mov    %r12d,%eax
 534:	c1 e8 10             	shr    $0x10,%eax
 537:	88 46 2a             	mov    %al,0x2a(%rsi)
 53a:	c1 ea 18             	shr    $0x18,%edx
 53d:	88 56 2b             	mov    %dl,0x2b(%rsi)
 540:	8b 4d bc             	mov    -0x44(%rbp),%ecx
 543:	88 4e 2c             	mov    %cl,0x2c(%rsi)
 546:	88 6e 2d             	mov    %ch,0x2d(%rsi)
 549:	89 c8                	mov    %ecx,%eax
 54b:	c1 e8 10             	shr    $0x10,%eax
 54e:	88 46 2e             	mov    %al,0x2e(%rsi)
 551:	c1 e9 18             	shr    $0x18,%ecx
 554:	88 4e 2f             	mov    %cl,0x2f(%rsi)
 557:	48 83 c4 28          	add    $0x28,%rsp
 55b:	5b                   	pop    %rbx
 55c:	41 5c                	pop    %r12
 55e:	41 5d                	pop    %r13
 560:	41 5e                	pop    %r14
 562:	41 5f                	pop    %r15
 564:	5d                   	pop    %rbp
 565:	c3                   	retq   
 566:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
 56a:	31 c9                	xor    %ecx,%ecx
 56c:	83 fa f3             	cmp    $0xfffffff3,%edx
 56f:	0f 87 9b fd ff ff    	ja     310 <_ECRYPT_ivsetup+0x160>
 575:	48 c1 ea 20          	shr    $0x20,%rdx
 579:	0f 85 91 fd ff ff    	jne    310 <_ECRYPT_ivsetup+0x160>
 57f:	49 8d 4c 04 14       	lea    0x14(%r12,%rax,1),%rcx
 584:	4c 39 f1             	cmp    %r14,%rcx
 587:	76 12                	jbe    59b <_ECRYPT_ivsetup+0x3eb>
 589:	49 8d 0c 06          	lea    (%r14,%rax,1),%rcx
 58d:	49 8d 54 24 14       	lea    0x14(%r12),%rdx
 592:	48 39 ca             	cmp    %rcx,%rdx
 595:	0f 82 6a fd ff ff    	jb     305 <_ECRYPT_ivsetup+0x155>
 59b:	89 c1                	mov    %eax,%ecx
 59d:	83 e1 e0             	and    $0xffffffe0,%ecx
 5a0:	48 8d 79 e0          	lea    -0x20(%rcx),%rdi
 5a4:	48 89 fe             	mov    %rdi,%rsi
 5a7:	48 c1 ee 05          	shr    $0x5,%rsi
 5ab:	48 ff c6             	inc    %rsi
 5ae:	41 89 f0             	mov    %esi,%r8d
 5b1:	41 83 e0 01          	and    $0x1,%r8d
 5b5:	48 85 ff             	test   %rdi,%rdi
 5b8:	0f 84 9d 00 00 00    	je     65b <_ECRYPT_ivsetup+0x4ab>
 5be:	bf 01 00 00 00       	mov    $0x1,%edi
 5c3:	48 29 f7             	sub    %rsi,%rdi
 5c6:	49 8d 7c 38 ff       	lea    -0x1(%r8,%rdi,1),%rdi
 5cb:	ba 20 00 00 00       	mov    $0x20,%edx
 5d0:	4c 8b 65 c0          	mov    -0x40(%rbp),%r12
 5d4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5db:	00 00 00 
 5de:	66 90                	xchg   %ax,%ax
 5e0:	8d 5a e0             	lea    -0x20(%rdx),%ebx
 5e3:	41 0f 10 44 16 e0    	movups -0x20(%r14,%rdx,1),%xmm0
 5e9:	41 0f 10 4c 16 f0    	movups -0x10(%r14,%rdx,1),%xmm1
 5ef:	83 e3 c0             	and    $0xffffffc0,%ebx
 5f2:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
 5f6:	0f 11 44 1e 14       	movups %xmm0,0x14(%rsi,%rbx,1)
 5fb:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
 5ff:	0f 11 4c 1e 24       	movups %xmm1,0x24(%rsi,%rbx,1)
 604:	41 0f 10 04 16       	movups (%r14,%rdx,1),%xmm0
 609:	41 0f 10 4c 16 10    	movups 0x10(%r14,%rdx,1),%xmm1
 60f:	89 d6                	mov    %edx,%esi
 611:	83 e6 e0             	and    $0xffffffe0,%esi
 614:	41 0f 11 44 34 14    	movups %xmm0,0x14(%r12,%rsi,1)
 61a:	41 0f 11 4c 34 24    	movups %xmm1,0x24(%r12,%rsi,1)
 620:	48 83 c2 40          	add    $0x40,%rdx
 624:	48 83 c7 02          	add    $0x2,%rdi
 628:	75 b6                	jne    5e0 <_ECRYPT_ivsetup+0x430>
 62a:	48 83 c2 e0          	add    $0xffffffffffffffe0,%rdx
 62e:	4d 85 c0             	test   %r8,%r8
 631:	74 1a                	je     64d <_ECRYPT_ivsetup+0x49d>
 633:	41 0f 10 04 16       	movups (%r14,%rdx,1),%xmm0
 638:	41 0f 10 4c 16 10    	movups 0x10(%r14,%rdx,1),%xmm1
 63e:	83 e2 e0             	and    $0xffffffe0,%edx
 641:	41 0f 11 44 14 14    	movups %xmm0,0x14(%r12,%rdx,1)
 647:	41 0f 11 4c 14 24    	movups %xmm1,0x24(%r12,%rdx,1)
 64d:	48 39 c1             	cmp    %rax,%rcx
 650:	0f 85 ba fc ff ff    	jne    310 <_ECRYPT_ivsetup+0x160>
 656:	e9 ca fc ff ff       	jmpq   325 <_ECRYPT_ivsetup+0x175>
 65b:	31 d2                	xor    %edx,%edx
 65d:	4d 85 c0             	test   %r8,%r8
 660:	75 d1                	jne    633 <_ECRYPT_ivsetup+0x483>
 662:	eb e9                	jmp    64d <_ECRYPT_ivsetup+0x49d>
 664:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 66b:	00 00 00 
 66e:	66 90                	xchg   %ax,%ax

0000000000000670 <_ECRYPT_process_bytes>:
 670:	55                   	push   %rbp
 671:	48 89 e5             	mov    %rsp,%rbp
 674:	41 57                	push   %r15
 676:	41 56                	push   %r14
 678:	41 55                	push   %r13
 67a:	41 54                	push   %r12
 67c:	53                   	push   %rbx
 67d:	45 89 c2             	mov    %r8d,%r10d
 680:	0f b6 46 0c          	movzbl 0xc(%rsi),%eax
 684:	0f b6 7e 0d          	movzbl 0xd(%rsi),%edi
 688:	c1 e7 08             	shl    $0x8,%edi
 68b:	09 c7                	or     %eax,%edi
 68d:	0f b6 46 0e          	movzbl 0xe(%rsi),%eax
 691:	c1 e0 10             	shl    $0x10,%eax
 694:	09 f8                	or     %edi,%eax
 696:	0f b6 7e 0f          	movzbl 0xf(%rsi),%edi
 69a:	89 7d a8             	mov    %edi,-0x58(%rbp)
 69d:	c1 e7 18             	shl    $0x18,%edi
 6a0:	09 c7                	or     %eax,%edi
 6a2:	89 7d d4             	mov    %edi,-0x2c(%rbp)
 6a5:	44 0f b6 76 10       	movzbl 0x10(%rsi),%r14d
 6aa:	0f b6 46 11          	movzbl 0x11(%rsi),%eax
 6ae:	c1 e0 08             	shl    $0x8,%eax
 6b1:	44 09 f0             	or     %r14d,%eax
 6b4:	0f b6 7e 12          	movzbl 0x12(%rsi),%edi
 6b8:	c1 e7 10             	shl    $0x10,%edi
 6bb:	09 c7                	or     %eax,%edi
 6bd:	0f b6 46 13          	movzbl 0x13(%rsi),%eax
 6c1:	c1 e0 18             	shl    $0x18,%eax
 6c4:	09 f8                	or     %edi,%eax
 6c6:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 6ca:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
 6ce:	0f b6 5e 28          	movzbl 0x28(%rsi),%ebx
 6d2:	0f b6 7e 29          	movzbl 0x29(%rsi),%edi
 6d6:	c1 e7 08             	shl    $0x8,%edi
 6d9:	89 5d a4             	mov    %ebx,-0x5c(%rbp)
 6dc:	09 df                	or     %ebx,%edi
 6de:	44 0f b6 5e 2a       	movzbl 0x2a(%rsi),%r11d
 6e3:	41 c1 e3 10          	shl    $0x10,%r11d
 6e7:	41 09 fb             	or     %edi,%r11d
 6ea:	0f b6 5e 2c          	movzbl 0x2c(%rsi),%ebx
 6ee:	44 0f b6 6e 2d       	movzbl 0x2d(%rsi),%r13d
 6f3:	41 c1 e5 08          	shl    $0x8,%r13d
 6f7:	41 09 dd             	or     %ebx,%r13d
 6fa:	44 0f b6 7e 1d       	movzbl 0x1d(%rsi),%r15d
 6ff:	41 c1 e7 08          	shl    $0x8,%r15d
 703:	89 45 d0             	mov    %eax,-0x30(%rbp)
 706:	41 09 c7             	or     %eax,%r15d
 709:	44 0f b6 46 1e       	movzbl 0x1e(%rsi),%r8d
 70e:	41 c1 e0 10          	shl    $0x10,%r8d
 712:	45 09 f8             	or     %r15d,%r8d
 715:	44 0f b6 4e 2b       	movzbl 0x2b(%rsi),%r9d
 71a:	41 c1 e1 18          	shl    $0x18,%r9d
 71e:	45 09 d9             	or     %r11d,%r9d
 721:	8b 46 08             	mov    0x8(%rsi),%eax
 724:	89 45 c0             	mov    %eax,-0x40(%rbp)
 727:	8b 7e 14             	mov    0x14(%rsi),%edi
 72a:	44 8b 66 18          	mov    0x18(%rsi),%r12d
 72e:	8b 46 20             	mov    0x20(%rsi),%eax
 731:	8b 5e 24             	mov    0x24(%rsi),%ebx
 734:	45 85 d2             	test   %r10d,%r10d
 737:	0f 84 c3 00 00 00    	je     800 <_ECRYPT_process_bytes+0x190>
 73d:	89 7d b4             	mov    %edi,-0x4c(%rbp)
 740:	89 45 cc             	mov    %eax,-0x34(%rbp)
 743:	44 89 f7             	mov    %r14d,%edi
 746:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 749:	0f a4 c7 1e          	shld   $0x1e,%eax,%edi
 74d:	44 89 4d c8          	mov    %r9d,-0x38(%rbp)
 751:	89 5d c4             	mov    %ebx,-0x3c(%rbp)
 754:	44 8b 4d a8          	mov    -0x58(%rbp),%r9d
 758:	44 89 c8             	mov    %r9d,%eax
 75b:	c1 e8 05             	shr    $0x5,%eax
 75e:	44 89 55 ac          	mov    %r10d,-0x54(%rbp)
 762:	45 89 f2             	mov    %r14d,%r10d
 765:	4c 8b 75 b8          	mov    -0x48(%rbp),%r14
 769:	42 8d 04 f0          	lea    (%rax,%r14,8),%eax
 76d:	31 f8                	xor    %edi,%eax
 76f:	89 45 b0             	mov    %eax,-0x50(%rbp)
 772:	8b 7d d0             	mov    -0x30(%rbp),%edi
 775:	44 0f a4 e7 1b       	shld   $0x1b,%r12d,%edi
 77a:	41 c1 e6 05          	shl    $0x5,%r14d
 77e:	41 c1 e9 03          	shr    $0x3,%r9d
 782:	45 09 f1             	or     %r14d,%r9d
 785:	44 89 c0             	mov    %r8d,%eax
 788:	44 0f a4 e0 0c       	shld   $0xc,%r12d,%eax
 78d:	31 f8                	xor    %edi,%eax
 78f:	8b 7d a4             	mov    -0x5c(%rbp),%edi
 792:	0f a4 df 1e          	shld   $0x1e,%ebx,%edi
 796:	44 89 eb             	mov    %r13d,%ebx
 799:	44 8b 75 c8          	mov    -0x38(%rbp),%r14d
 79d:	44 0f a4 f3 11       	shld   $0x11,%r14d,%ebx
 7a2:	31 fb                	xor    %edi,%ebx
 7a4:	45 0f a4 e7 12       	shld   $0x12,%r12d,%r15d
 7a9:	45 31 cf             	xor    %r9d,%r15d
 7ac:	44 89 65 d0          	mov    %r12d,-0x30(%rbp)
 7b0:	45 0f a4 e0 0e       	shld   $0xe,%r12d,%r8d
 7b5:	8b 7d c4             	mov    -0x3c(%rbp),%edi
 7b8:	41 0f a4 fb 09       	shld   $0x9,%edi,%r11d
 7bd:	45 0f a4 f5 13       	shld   $0x13,%r14d,%r13d
 7c2:	8b 7d d4             	mov    -0x2c(%rbp),%edi
 7c5:	41 0f a4 fa 1b       	shld   $0x1b,%edi,%r10d
 7ca:	45 31 c3             	xor    %r8d,%r11d
 7cd:	45 31 ea             	xor    %r13d,%r10d
 7d0:	41 89 dd             	mov    %ebx,%r13d
 7d3:	44 89 55 b8          	mov    %r10d,-0x48(%rbp)
 7d7:	41 89 c6             	mov    %eax,%r14d
 7da:	8b 7d b0             	mov    -0x50(%rbp),%edi
 7dd:	41 89 fc             	mov    %edi,%r12d
 7e0:	31 f8                	xor    %edi,%eax
 7e2:	31 d8                	xor    %ebx,%eax
 7e4:	44 8b 55 ac          	mov    -0x54(%rbp),%r10d
 7e8:	49 8d 5a ff          	lea    -0x1(%r10),%rbx
 7ec:	45 89 d0             	mov    %r10d,%r8d
 7ef:	41 83 e0 03          	and    $0x3,%r8d
 7f3:	48 83 fb 03          	cmp    $0x3,%rbx
 7f7:	73 40                	jae    839 <_ECRYPT_process_bytes+0x1c9>
 7f9:	31 ff                	xor    %edi,%edi
 7fb:	e9 7e 00 00 00       	jmpq   87e <_ECRYPT_process_bytes+0x20e>
 800:	0f b6 4e 1f          	movzbl 0x1f(%rsi),%ecx
 804:	c1 e1 18             	shl    $0x18,%ecx
 807:	41 09 c8             	or     %ecx,%r8d
 80a:	0f b6 4e 2e          	movzbl 0x2e(%rsi),%ecx
 80e:	c1 e1 10             	shl    $0x10,%ecx
 811:	41 09 cd             	or     %ecx,%r13d
 814:	41 89 c2             	mov    %eax,%r10d
 817:	89 d8                	mov    %ebx,%eax
 819:	45 89 cb             	mov    %r9d,%r11d
 81c:	0f b6 4e 2f          	movzbl 0x2f(%rsi),%ecx
 820:	c1 e1 18             	shl    $0x18,%ecx
 823:	44 09 e9             	or     %r13d,%ecx
 826:	89 fa                	mov    %edi,%edx
 828:	44 89 c3             	mov    %r8d,%ebx
 82b:	41 89 c1             	mov    %eax,%r9d
 82e:	41 89 c8             	mov    %ecx,%r8d
 831:	8b 45 c0             	mov    -0x40(%rbp),%eax
 834:	e9 ca 00 00 00       	jmpq   903 <_ECRYPT_process_bytes+0x293>
 839:	4d 29 c2             	sub    %r8,%r10
 83c:	31 ff                	xor    %edi,%edi
 83e:	66 90                	xchg   %ax,%ax
 840:	0f b6 1c 3a          	movzbl (%rdx,%rdi,1),%ebx
 844:	30 c3                	xor    %al,%bl
 846:	88 1c 39             	mov    %bl,(%rcx,%rdi,1)
 849:	89 c3                	mov    %eax,%ebx
 84b:	c1 eb 08             	shr    $0x8,%ebx
 84e:	32 5c 3a 01          	xor    0x1(%rdx,%rdi,1),%bl
 852:	88 5c 39 01          	mov    %bl,0x1(%rcx,%rdi,1)
 856:	89 c3                	mov    %eax,%ebx
 858:	c1 eb 10             	shr    $0x10,%ebx
 85b:	32 5c 3a 02          	xor    0x2(%rdx,%rdi,1),%bl
 85f:	88 5c 39 02          	mov    %bl,0x2(%rcx,%rdi,1)
 863:	c1 e8 18             	shr    $0x18,%eax
 866:	32 44 3a 03          	xor    0x3(%rdx,%rdi,1),%al
 86a:	88 44 39 03          	mov    %al,0x3(%rcx,%rdi,1)
 86e:	48 83 c7 04          	add    $0x4,%rdi
 872:	b8 00 00 00 00       	mov    $0x0,%eax
 877:	49 39 fa             	cmp    %rdi,%r10
 87a:	75 c4                	jne    840 <_ECRYPT_process_bytes+0x1d0>
 87c:	31 c0                	xor    %eax,%eax
 87e:	44 8b 4d cc          	mov    -0x34(%rbp),%r9d
 882:	8b 5d d4             	mov    -0x2c(%rbp),%ebx
 885:	45 31 fc             	xor    %r15d,%r12d
 888:	45 89 e7             	mov    %r12d,%r15d
 88b:	45 31 de             	xor    %r11d,%r14d
 88e:	45 89 f2             	mov    %r14d,%r10d
 891:	44 8b 65 b8          	mov    -0x48(%rbp),%r12d
 895:	45 31 ec             	xor    %r13d,%r12d
 898:	45 89 e3             	mov    %r12d,%r11d
 89b:	4d 85 c0             	test   %r8,%r8
 89e:	74 42                	je     8e2 <_ECRYPT_process_bytes+0x272>
 8a0:	48 01 f9             	add    %rdi,%rcx
 8a3:	48 01 fa             	add    %rdi,%rdx
 8a6:	31 ff                	xor    %edi,%edi
 8a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 8af:	00 
 8b0:	0f b6 1c 3a          	movzbl (%rdx,%rdi,1),%ebx
 8b4:	30 c3                	xor    %al,%bl
 8b6:	88 1c 39             	mov    %bl,(%rcx,%rdi,1)
 8b9:	c1 e8 08             	shr    $0x8,%eax
 8bc:	48 ff c7             	inc    %rdi
 8bf:	49 39 f8             	cmp    %rdi,%r8
 8c2:	75 ec                	jne    8b0 <_ECRYPT_process_bytes+0x240>
 8c4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 8c7:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 8cb:	8b 45 c0             	mov    -0x40(%rbp),%eax
 8ce:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 8d1:	44 89 d8             	mov    %r11d,%eax
 8d4:	44 8b 45 c8          	mov    -0x38(%rbp),%r8d
 8d8:	44 8b 5d c4          	mov    -0x3c(%rbp),%r11d
 8dc:	44 8b 4d cc          	mov    -0x34(%rbp),%r9d
 8e0:	eb 17                	jmp    8f9 <_ECRYPT_process_bytes+0x289>
 8e2:	89 d8                	mov    %ebx,%eax
 8e4:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 8e8:	8b 45 c0             	mov    -0x40(%rbp),%eax
 8eb:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 8ee:	44 89 d8             	mov    %r11d,%eax
 8f1:	44 8b 45 c8          	mov    -0x38(%rbp),%r8d
 8f5:	44 8b 5d c4          	mov    -0x3c(%rbp),%r11d
 8f9:	8b 5d d0             	mov    -0x30(%rbp),%ebx
 8fc:	44 8b 65 b4          	mov    -0x4c(%rbp),%r12d
 900:	44 89 fa             	mov    %r15d,%edx
 903:	88 46 08             	mov    %al,0x8(%rsi)
 906:	88 66 09             	mov    %ah,0x9(%rsi)
 909:	89 c7                	mov    %eax,%edi
 90b:	c1 e8 10             	shr    $0x10,%eax
 90e:	88 46 0a             	mov    %al,0xa(%rsi)
 911:	c1 ef 18             	shr    $0x18,%edi
 914:	40 88 7e 0b          	mov    %dil,0xb(%rsi)
 918:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
 91b:	88 4e 0c             	mov    %cl,0xc(%rsi)
 91e:	88 6e 0d             	mov    %ch,0xd(%rsi)
 921:	89 c8                	mov    %ecx,%eax
 923:	c1 e8 10             	shr    $0x10,%eax
 926:	88 46 0e             	mov    %al,0xe(%rsi)
 929:	c1 e9 18             	shr    $0x18,%ecx
 92c:	88 4e 0f             	mov    %cl,0xf(%rsi)
 92f:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
 933:	88 4e 10             	mov    %cl,0x10(%rsi)
 936:	88 6e 11             	mov    %ch,0x11(%rsi)
 939:	89 c8                	mov    %ecx,%eax
 93b:	c1 e8 10             	shr    $0x10,%eax
 93e:	88 46 12             	mov    %al,0x12(%rsi)
 941:	c1 e9 18             	shr    $0x18,%ecx
 944:	88 4e 13             	mov    %cl,0x13(%rsi)
 947:	88 56 14             	mov    %dl,0x14(%rsi)
 94a:	88 76 15             	mov    %dh,0x15(%rsi)
 94d:	89 d0                	mov    %edx,%eax
 94f:	c1 e8 10             	shr    $0x10,%eax
 952:	88 46 16             	mov    %al,0x16(%rsi)
 955:	c1 ea 18             	shr    $0x18,%edx
 958:	88 56 17             	mov    %dl,0x17(%rsi)
 95b:	44 89 e1             	mov    %r12d,%ecx
 95e:	88 4e 18             	mov    %cl,0x18(%rsi)
 961:	88 6e 19             	mov    %ch,0x19(%rsi)
 964:	44 89 e0             	mov    %r12d,%eax
 967:	c1 e8 10             	shr    $0x10,%eax
 96a:	88 46 1a             	mov    %al,0x1a(%rsi)
 96d:	c1 e9 18             	shr    $0x18,%ecx
 970:	88 4e 1b             	mov    %cl,0x1b(%rsi)
 973:	88 5e 1c             	mov    %bl,0x1c(%rsi)
 976:	88 7e 1d             	mov    %bh,0x1d(%rsi)
 979:	89 d8                	mov    %ebx,%eax
 97b:	c1 e8 10             	shr    $0x10,%eax
 97e:	88 46 1e             	mov    %al,0x1e(%rsi)
 981:	c1 eb 18             	shr    $0x18,%ebx
 984:	88 5e 1f             	mov    %bl,0x1f(%rsi)
 987:	44 89 d1             	mov    %r10d,%ecx
 98a:	88 4e 20             	mov    %cl,0x20(%rsi)
 98d:	88 6e 21             	mov    %ch,0x21(%rsi)
 990:	44 89 d0             	mov    %r10d,%eax
 993:	c1 e8 10             	shr    $0x10,%eax
 996:	88 46 22             	mov    %al,0x22(%rsi)
 999:	c1 e9 18             	shr    $0x18,%ecx
 99c:	88 4e 23             	mov    %cl,0x23(%rsi)
 99f:	44 89 c9             	mov    %r9d,%ecx
 9a2:	88 4e 24             	mov    %cl,0x24(%rsi)
 9a5:	88 6e 25             	mov    %ch,0x25(%rsi)
 9a8:	44 89 c8             	mov    %r9d,%eax
 9ab:	c1 e8 10             	shr    $0x10,%eax
 9ae:	88 46 26             	mov    %al,0x26(%rsi)
 9b1:	c1 e9 18             	shr    $0x18,%ecx
 9b4:	88 4e 27             	mov    %cl,0x27(%rsi)
 9b7:	44 89 d9             	mov    %r11d,%ecx
 9ba:	88 4e 28             	mov    %cl,0x28(%rsi)
 9bd:	88 6e 29             	mov    %ch,0x29(%rsi)
 9c0:	44 89 d8             	mov    %r11d,%eax
 9c3:	c1 e8 10             	shr    $0x10,%eax
 9c6:	88 46 2a             	mov    %al,0x2a(%rsi)
 9c9:	c1 e9 18             	shr    $0x18,%ecx
 9cc:	88 4e 2b             	mov    %cl,0x2b(%rsi)
 9cf:	44 89 c1             	mov    %r8d,%ecx
 9d2:	88 4e 2c             	mov    %cl,0x2c(%rsi)
 9d5:	88 6e 2d             	mov    %ch,0x2d(%rsi)
 9d8:	44 89 c0             	mov    %r8d,%eax
 9db:	c1 e8 10             	shr    $0x10,%eax
 9de:	88 46 2e             	mov    %al,0x2e(%rsi)
 9e1:	c1 e9 18             	shr    $0x18,%ecx
 9e4:	88 4e 2f             	mov    %cl,0x2f(%rsi)
 9e7:	5b                   	pop    %rbx
 9e8:	41 5c                	pop    %r12
 9ea:	41 5d                	pop    %r13
 9ec:	41 5e                	pop    %r14
 9ee:	41 5f                	pop    %r15
 9f0:	5d                   	pop    %rbp
 9f1:	c3                   	retq   
