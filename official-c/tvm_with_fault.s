
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
 1c4:	48 89 fb             	mov    %rdi,%rbx
 1c7:	8b 07                	mov    (%rdi),%eax
 1c9:	48 85 c0             	test   %rax,%rax
 1cc:	74 0c                	je     1da <_ECRYPT_ivsetup+0x2a>
 1ce:	83 f8 1f             	cmp    $0x1f,%eax
 1d1:	77 0e                	ja     1e1 <_ECRYPT_ivsetup+0x31>
 1d3:	31 c9                	xor    %ecx,%ecx
 1d5:	e9 d6 00 00 00       	jmpq   2b0 <_ECRYPT_ivsetup+0x100>
 1da:	31 c0                	xor    %eax,%eax
 1dc:	e9 e5 00 00 00       	jmpq   2c6 <_ECRYPT_ivsetup+0x116>
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
 204:	0f 85 7e 00 00 00    	jne    288 <_ECRYPT_ivsetup+0xd8>
 20a:	e9 99 00 00 00       	jmpq   2a8 <_ECRYPT_ivsetup+0xf8>
 20f:	bf 01 00 00 00       	mov    $0x1,%edi
 214:	48 29 f7             	sub    %rsi,%rdi
 217:	48 8d 7c 3a ff       	lea    -0x1(%rdx,%rdi,1),%rdi
 21c:	31 f6                	xor    %esi,%esi
 21e:	66 90                	xchg   %ax,%ax
 220:	0f 10 44 33 30       	movups 0x30(%rbx,%rsi,1),%xmm0
 225:	0f 10 4c 33 40       	movups 0x40(%rbx,%rsi,1),%xmm1
 22a:	0f 10 54 33 50       	movups 0x50(%rbx,%rsi,1),%xmm2
 22f:	0f 10 5c 33 60       	movups 0x60(%rbx,%rsi,1),%xmm3
 234:	0f 11 44 33 08       	movups %xmm0,0x8(%rbx,%rsi,1)
 239:	0f 11 4c 33 18       	movups %xmm1,0x18(%rbx,%rsi,1)
 23e:	0f 11 54 33 28       	movups %xmm2,0x28(%rbx,%rsi,1)
 243:	0f 11 5c 33 38       	movups %xmm3,0x38(%rbx,%rsi,1)
 248:	0f 10 44 33 70       	movups 0x70(%rbx,%rsi,1),%xmm0
 24d:	0f 10 8c 33 80 00 00 	movups 0x80(%rbx,%rsi,1),%xmm1
 254:	00 
 255:	0f 11 44 33 48       	movups %xmm0,0x48(%rbx,%rsi,1)
 25a:	0f 11 4c 33 58       	movups %xmm1,0x58(%rbx,%rsi,1)
 25f:	0f 10 84 33 90 00 00 	movups 0x90(%rbx,%rsi,1),%xmm0
 266:	00 
 267:	0f 10 8c 33 a0 00 00 	movups 0xa0(%rbx,%rsi,1),%xmm1
 26e:	00 
 26f:	0f 11 44 33 68       	movups %xmm0,0x68(%rbx,%rsi,1)
 274:	0f 11 4c 33 78       	movups %xmm1,0x78(%rbx,%rsi,1)
 279:	48 83 ee 80          	sub    $0xffffffffffffff80,%rsi
 27d:	48 83 c7 04          	add    $0x4,%rdi
 281:	75 9d                	jne    220 <_ECRYPT_ivsetup+0x70>
 283:	48 85 d2             	test   %rdx,%rdx
 286:	74 20                	je     2a8 <_ECRYPT_ivsetup+0xf8>
 288:	48 8d 74 33 40       	lea    0x40(%rbx,%rsi,1),%rsi
 28d:	48 f7 da             	neg    %rdx
 290:	0f 10 46 f0          	movups -0x10(%rsi),%xmm0
 294:	0f 10 0e             	movups (%rsi),%xmm1
 297:	0f 11 46 c8          	movups %xmm0,-0x38(%rsi)
 29b:	0f 11 4e d8          	movups %xmm1,-0x28(%rsi)
 29f:	48 83 c6 20          	add    $0x20,%rsi
 2a3:	48 ff c2             	inc    %rdx
 2a6:	75 e8                	jne    290 <_ECRYPT_ivsetup+0xe0>
 2a8:	48 39 c1             	cmp    %rax,%rcx
 2ab:	74 14                	je     2c1 <_ECRYPT_ivsetup+0x111>
 2ad:	0f 1f 00             	nopl   (%rax)
 2b0:	0f b6 54 0b 30       	movzbl 0x30(%rbx,%rcx,1),%edx
 2b5:	88 54 0b 08          	mov    %dl,0x8(%rbx,%rcx,1)
 2b9:	48 ff c1             	inc    %rcx
 2bc:	48 39 c1             	cmp    %rax,%rcx
 2bf:	72 ef                	jb     2b0 <_ECRYPT_ivsetup+0x100>
 2c1:	83 f8 0b             	cmp    $0xb,%eax
 2c4:	77 16                	ja     2dc <_ECRYPT_ivsetup+0x12c>
 2c6:	89 c1                	mov    %eax,%ecx
 2c8:	48 8d 7c 0b 08       	lea    0x8(%rbx,%rcx,1),%rdi
 2cd:	be 0b 00 00 00       	mov    $0xb,%esi
 2d2:	29 c6                	sub    %eax,%esi
 2d4:	48 ff c6             	inc    %rsi
 2d7:	e8 00 00 00 00       	callq  2dc <_ECRYPT_ivsetup+0x12c>
 2dc:	8b 43 04             	mov    0x4(%rbx),%eax
 2df:	48 85 c0             	test   %rax,%rax
 2e2:	48 89 5d c0          	mov    %rbx,-0x40(%rbp)
 2e6:	74 33                	je     31b <_ECRYPT_ivsetup+0x16b>
 2e8:	83 f8 1f             	cmp    $0x1f,%eax
 2eb:	0f 87 76 02 00 00    	ja     567 <_ECRYPT_ivsetup+0x3b7>
 2f1:	31 c9                	xor    %ecx,%ecx
 2f3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 2fa:	00 00 00 
 2fd:	0f 1f 00             	nopl   (%rax)
 300:	41 0f b6 14 0e       	movzbl (%r14,%rcx,1),%edx
 305:	8d 71 0c             	lea    0xc(%rcx),%esi
 308:	88 54 33 08          	mov    %dl,0x8(%rbx,%rsi,1)
 30c:	48 ff c1             	inc    %rcx
 30f:	48 39 c1             	cmp    %rax,%rcx
 312:	72 ec                	jb     300 <_ECRYPT_ivsetup+0x150>
 314:	83 f8 0b             	cmp    $0xb,%eax
 317:	76 04                	jbe    31d <_ECRYPT_ivsetup+0x16d>
 319:	eb 19                	jmp    334 <_ECRYPT_ivsetup+0x184>
 31b:	31 c0                	xor    %eax,%eax
 31d:	8d 48 0c             	lea    0xc(%rax),%ecx
 320:	48 8d 7c 0b 08       	lea    0x8(%rbx,%rcx,1),%rdi
 325:	be 0b 00 00 00       	mov    $0xb,%esi
 32a:	29 c6                	sub    %eax,%esi
 32c:	48 ff c6             	inc    %rsi
 32f:	e8 00 00 00 00       	callq  334 <_ECRYPT_ivsetup+0x184>
 334:	48 c7 43 25 00 00 00 	movq   $0x0,0x25(%rbx)
 33b:	00 
 33c:	48 c7 43 20 00 00 00 	movq   $0x0,0x20(%rbx)
 343:	00 
 344:	c6 43 2d 70          	movb   $0x70,0x2d(%rbx)
 348:	8b 43 08             	mov    0x8(%rbx),%eax
 34b:	89 45 d0             	mov    %eax,-0x30(%rbp)
 34e:	8b 43 0c             	mov    0xc(%rbx),%eax
 351:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 354:	8b 43 10             	mov    0x10(%rbx),%eax
 357:	89 45 cc             	mov    %eax,-0x34(%rbp)
 35a:	44 8b 7b 18          	mov    0x18(%rbx),%r15d
 35e:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
 362:	0f b6 4b 1d          	movzbl 0x1d(%rbx),%ecx
 366:	c1 e1 08             	shl    $0x8,%ecx
 369:	09 c1                	or     %eax,%ecx
 36b:	0f b6 43 1e          	movzbl 0x1e(%rbx),%eax
 36f:	c1 e0 10             	shl    $0x10,%eax
 372:	09 c8                	or     %ecx,%eax
 374:	48 89 d9             	mov    %rbx,%rcx
 377:	8b 5b 24             	mov    0x24(%rbx),%ebx
 37a:	8b 71 28             	mov    0x28(%rcx),%esi
 37d:	0f b6 79 2c          	movzbl 0x2c(%rcx),%edi
 381:	81 cf 00 70 00 00    	or     $0x7000,%edi
 387:	41 b9 24 00 00 00    	mov    $0x24,%r9d
 38d:	8b 49 14             	mov    0x14(%rcx),%ecx
 390:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
 397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 39e:	00 00 
 3a0:	41 89 de             	mov    %ebx,%r14d
 3a3:	41 89 f3             	mov    %esi,%r11d
 3a6:	89 f2                	mov    %esi,%edx
 3a8:	0f a4 da 1e          	shld   $0x1e,%ebx,%edx
 3ac:	41 89 fa             	mov    %edi,%r10d
 3af:	41 0f a4 f2 11       	shld   $0x11,%esi,%r10d
 3b4:	8b 5d cc             	mov    -0x34(%rbp),%ebx
 3b7:	41 31 d2             	xor    %edx,%r10d
 3ba:	44 8b 6d d4          	mov    -0x2c(%rbp),%r13d
 3be:	89 c2                	mov    %eax,%edx
 3c0:	44 0f a4 fa 1b       	shld   $0x1b,%r15d,%edx
 3c5:	41 89 c0             	mov    %eax,%r8d
 3c8:	45 0f a4 f8 0c       	shld   $0xc,%r15d,%r8d
 3cd:	89 de                	mov    %ebx,%esi
 3cf:	44 0f a4 ee 05       	shld   $0x5,%r13d,%esi
 3d4:	41 31 d0             	xor    %edx,%r8d
 3d7:	89 da                	mov    %ebx,%edx
 3d9:	44 0f a4 ea 04       	shld   $0x4,%r13d,%edx
 3de:	21 f2                	xor    %esi,$0x00000000     // fault here
 3e0:	89 4d bc             	mov    %ecx,-0x44(%rbp)
 3e3:	89 de                	mov    %ebx,%esi
 3e5:	44 0f a4 ee 03       	shld   $0x3,%r13d,%esi
 3ea:	89 c1                	mov    %eax,%ecx
 3ec:	44 0f a4 f9 12       	shld   $0x12,%r15d,%ecx
 3f1:	31 f1                	xor    %esi,%ecx
 3f3:	89 de                	mov    %ebx,%esi
 3f5:	44 0f a4 ee 1e       	shld   $0x1e,%r13d,%esi
 3fa:	31 f1                	xor    %esi,%ecx
 3fc:	89 c6                	mov    %eax,%esi
 3fe:	44 0f a4 fe 0e       	shld   $0xe,%r15d,%esi
 403:	44 0f a4 f8 0d       	shld   $0xd,%r15d,%eax
 408:	31 d1                	xor    %edx,%ecx
 40a:	21 f0                	xor    %esi,$0x00000000     // fault here
 40c:	44 8b 65 c8          	mov    -0x38(%rbp),%r12d
 410:	44 89 da             	mov    %r11d,%edx
 413:	44 0f a4 f2 09       	shld   $0x9,%r14d,%edx
 418:	44 31 c0             	xor    %r8d,%eax
 41b:	8b 75 d0             	mov    -0x30(%rbp),%esi
 41e:	89 75 d4             	mov    %esi,-0x2c(%rbp)
 421:	31 c2                	xor    %eax,%edx
 423:	89 55 c8             	mov    %edx,-0x38(%rbp)
 426:	89 f8                	mov    %edi,%eax
 428:	44 0f a4 d8 13       	shld   $0x13,%r11d,%eax
 42d:	44 0f a4 df 12       	shld   $0x12,%r11d,%edi
 432:	44 89 6d cc          	mov    %r13d,-0x34(%rbp)
 436:	44 0f a4 eb 1b       	shld   $0x1b,%r13d,%ebx
 43b:	21 c7                	xor    %eax,$0x00000000     // fault here
 43d:	44 31 d3             	xor    %r10d,%ebx
 440:	31 fb                	xor    %edi,%ebx
 442:	89 5d d0             	mov    %ebx,-0x30(%rbp)
 445:	45 89 da             	mov    %r11d,%r10d
 448:	44 89 df             	mov    %r11d,%edi
 44b:	45 89 f3             	mov    %r14d,%r11d
 44e:	44 89 f6             	mov    %r14d,%esi
 451:	45 89 e6             	mov    %r12d,%r14d
 454:	44 89 e3             	mov    %r12d,%ebx
 457:	45 89 fc             	mov    %r15d,%r12d
 45a:	44 89 f8             	mov    %r15d,%eax
 45d:	44 8b 7d bc          	mov    -0x44(%rbp),%r15d
 461:	41 ff c9             	dec    %r9d
 464:	0f 85 36 ff ff ff    	jne    3a0 <_ECRYPT_ivsetup+0x1f0>
 46a:	44 89 fa             	mov    %r15d,%edx
 46d:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
 471:	8b 5d d0             	mov    -0x30(%rbp),%ebx
 474:	88 5e 08             	mov    %bl,0x8(%rsi)
 477:	88 7e 09             	mov    %bh,0x9(%rsi)
 47a:	89 d8                	mov    %ebx,%eax
 47c:	c1 e8 10             	shr    $0x10,%eax
 47f:	88 46 0a             	mov    %al,0xa(%rsi)
 482:	c1 eb 18             	shr    $0x18,%ebx
 485:	88 5e 0b             	mov    %bl,0xb(%rsi)
 488:	8b 5d d4             	mov    -0x2c(%rbp),%ebx
 48b:	88 5e 0c             	mov    %bl,0xc(%rsi)
 48e:	88 7e 0d             	mov    %bh,0xd(%rsi)
 491:	89 d8                	mov    %ebx,%eax
 493:	c1 e8 10             	shr    $0x10,%eax
 496:	88 46 0e             	mov    %al,0xe(%rsi)
 499:	c1 eb 18             	shr    $0x18,%ebx
 49c:	88 5e 0f             	mov    %bl,0xf(%rsi)
 49f:	8b 5d cc             	mov    -0x34(%rbp),%ebx
 4a2:	88 5e 10             	mov    %bl,0x10(%rsi)
 4a5:	88 7e 11             	mov    %bh,0x11(%rsi)
 4a8:	89 d8                	mov    %ebx,%eax
 4aa:	c1 e8 10             	shr    $0x10,%eax
 4ad:	88 46 12             	mov    %al,0x12(%rsi)
 4b0:	c1 eb 18             	shr    $0x18,%ebx
 4b3:	88 5e 13             	mov    %bl,0x13(%rsi)
 4b6:	88 4e 14             	mov    %cl,0x14(%rsi)
 4b9:	88 6e 15             	mov    %ch,0x15(%rsi)
 4bc:	89 c8                	mov    %ecx,%eax
 4be:	c1 e8 10             	shr    $0x10,%eax
 4c1:	88 46 16             	mov    %al,0x16(%rsi)
 4c4:	c1 e9 18             	shr    $0x18,%ecx
 4c7:	88 4e 17             	mov    %cl,0x17(%rsi)
 4ca:	44 89 f9             	mov    %r15d,%ecx
 4cd:	88 4e 18             	mov    %cl,0x18(%rsi)
 4d0:	88 6e 19             	mov    %ch,0x19(%rsi)
 4d3:	89 d0                	mov    %edx,%eax
 4d5:	c1 e8 10             	shr    $0x10,%eax
 4d8:	88 46 1a             	mov    %al,0x1a(%rsi)
 4db:	c1 e9 18             	shr    $0x18,%ecx
 4de:	88 4e 1b             	mov    %cl,0x1b(%rsi)
 4e1:	44 89 e1             	mov    %r12d,%ecx
 4e4:	88 4e 1c             	mov    %cl,0x1c(%rsi)
 4e7:	88 6e 1d             	mov    %ch,0x1d(%rsi)
 4ea:	44 89 e0             	mov    %r12d,%eax
 4ed:	c1 e8 10             	shr    $0x10,%eax
 4f0:	88 46 1e             	mov    %al,0x1e(%rsi)
 4f3:	c1 e9 18             	shr    $0x18,%ecx
 4f6:	88 4e 1f             	mov    %cl,0x1f(%rsi)
 4f9:	8b 4d c8             	mov    -0x38(%rbp),%ecx
 4fc:	88 4e 20             	mov    %cl,0x20(%rsi)
 4ff:	88 6e 21             	mov    %ch,0x21(%rsi)
 502:	89 c8                	mov    %ecx,%eax
 504:	c1 e8 10             	shr    $0x10,%eax
 507:	88 46 22             	mov    %al,0x22(%rsi)
 50a:	c1 e9 18             	shr    $0x18,%ecx
 50d:	88 4e 23             	mov    %cl,0x23(%rsi)
 510:	44 89 f1             	mov    %r14d,%ecx
 513:	88 4e 24             	mov    %cl,0x24(%rsi)
 516:	88 6e 25             	mov    %ch,0x25(%rsi)
 519:	44 89 f0             	mov    %r14d,%eax
 51c:	c1 e8 10             	shr    $0x10,%eax
 51f:	88 46 26             	mov    %al,0x26(%rsi)
 522:	c1 e9 18             	shr    $0x18,%ecx
 525:	88 4e 27             	mov    %cl,0x27(%rsi)
 528:	44 89 d9             	mov    %r11d,%ecx
 52b:	88 4e 28             	mov    %cl,0x28(%rsi)
 52e:	88 6e 29             	mov    %ch,0x29(%rsi)
 531:	44 89 d8             	mov    %r11d,%eax
 534:	c1 e8 10             	shr    $0x10,%eax
 537:	88 46 2a             	mov    %al,0x2a(%rsi)
 53a:	c1 e9 18             	shr    $0x18,%ecx
 53d:	88 4e 2b             	mov    %cl,0x2b(%rsi)
 540:	44 89 d1             	mov    %r10d,%ecx
 543:	88 4e 2c             	mov    %cl,0x2c(%rsi)
 546:	88 6e 2d             	mov    %ch,0x2d(%rsi)
 549:	44 89 d0             	mov    %r10d,%eax
 54c:	c1 e8 10             	shr    $0x10,%eax
 54f:	88 46 2e             	mov    %al,0x2e(%rsi)
 552:	c1 e9 18             	shr    $0x18,%ecx
 555:	88 4e 2f             	mov    %cl,0x2f(%rsi)
 558:	48 83 c4 28          	add    $0x28,%rsp
 55c:	5b                   	pop    %rbx
 55d:	41 5c                	pop    %r12
 55f:	41 5d                	pop    %r13
 561:	41 5e                	pop    %r14
 563:	41 5f                	pop    %r15
 565:	5d                   	pop    %rbp
 566:	c3                   	retq   
 567:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
 56b:	31 c9                	xor    %ecx,%ecx
 56d:	83 fa f3             	cmp    $0xfffffff3,%edx
 570:	0f 87 8a fd ff ff    	ja     300 <_ECRYPT_ivsetup+0x150>
 576:	48 c1 ea 20          	shr    $0x20,%rdx
 57a:	0f 85 80 fd ff ff    	jne    300 <_ECRYPT_ivsetup+0x150>
 580:	48 8d 4c 03 14       	lea    0x14(%rbx,%rax,1),%rcx
 585:	4c 39 f1             	cmp    %r14,%rcx
 588:	76 11                	jbe    59b <_ECRYPT_ivsetup+0x3eb>
 58a:	49 8d 0c 06          	lea    (%r14,%rax,1),%rcx
 58e:	48 8d 53 14          	lea    0x14(%rbx),%rdx
 592:	48 39 ca             	cmp    %rcx,%rdx
 595:	0f 82 56 fd ff ff    	jb     2f1 <_ECRYPT_ivsetup+0x141>
 59b:	89 c1                	mov    %eax,%ecx
 59d:	83 e1 e0             	and    $0xffffffe0,%ecx
 5a0:	48 8d 79 e0          	lea    -0x20(%rcx),%rdi
 5a4:	48 89 fe             	mov    %rdi,%rsi
 5a7:	48 c1 ee 05          	shr    $0x5,%rsi
 5ab:	48 ff c6             	inc    %rsi
 5ae:	41 89 f0             	mov    %esi,%r8d
 5b1:	41 83 e0 01          	and    $0x1,%r8d
 5b5:	48 85 ff             	test   %rdi,%rdi
 5b8:	0f 84 8d 00 00 00    	je     64b <_ECRYPT_ivsetup+0x49b>
 5be:	bf 01 00 00 00       	mov    $0x1,%edi
 5c3:	48 29 f7             	sub    %rsi,%rdi
 5c6:	49 8d 7c 38 ff       	lea    -0x1(%r8,%rdi,1),%rdi
 5cb:	ba 20 00 00 00       	mov    $0x20,%edx
 5d0:	8d 5a e0             	lea    -0x20(%rdx),%ebx
 5d3:	41 0f 10 44 16 e0    	movups -0x20(%r14,%rdx,1),%xmm0
 5d9:	41 0f 10 4c 16 f0    	movups -0x10(%r14,%rdx,1),%xmm1
 5df:	83 e3 c0             	and    $0xffffffc0,%ebx
 5e2:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
 5e6:	0f 11 44 1e 14       	movups %xmm0,0x14(%rsi,%rbx,1)
 5eb:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
 5ef:	0f 11 4c 1e 24       	movups %xmm1,0x24(%rsi,%rbx,1)
 5f4:	48 8b 5d c0          	mov    -0x40(%rbp),%rbx
 5f8:	41 0f 10 04 16       	movups (%r14,%rdx,1),%xmm0
 5fd:	41 0f 10 4c 16 10    	movups 0x10(%r14,%rdx,1),%xmm1
 603:	89 d6                	mov    %edx,%esi
 605:	83 e6 e0             	and    $0xffffffe0,%esi
 608:	0f 11 44 33 14       	movups %xmm0,0x14(%rbx,%rsi,1)
 60d:	0f 11 4c 33 24       	movups %xmm1,0x24(%rbx,%rsi,1)
 612:	48 83 c2 40          	add    $0x40,%rdx
 616:	48 83 c7 02          	add    $0x2,%rdi
 61a:	75 b4                	jne    5d0 <_ECRYPT_ivsetup+0x420>
 61c:	48 83 c2 e0          	add    $0xffffffffffffffe0,%rdx
 620:	4d 85 c0             	test   %r8,%r8
 623:	74 18                	je     63d <_ECRYPT_ivsetup+0x48d>
 625:	41 0f 10 04 16       	movups (%r14,%rdx,1),%xmm0
 62a:	41 0f 10 4c 16 10    	movups 0x10(%r14,%rdx,1),%xmm1
 630:	83 e2 e0             	and    $0xffffffe0,%edx
 633:	0f 11 44 13 14       	movups %xmm0,0x14(%rbx,%rdx,1)
 638:	0f 11 4c 13 24       	movups %xmm1,0x24(%rbx,%rdx,1)
 63d:	48 39 c1             	cmp    %rax,%rcx
 640:	0f 85 ba fc ff ff    	jne    300 <_ECRYPT_ivsetup+0x150>
 646:	e9 c9 fc ff ff       	jmpq   314 <_ECRYPT_ivsetup+0x164>
 64b:	31 d2                	xor    %edx,%edx
 64d:	4d 85 c0             	test   %r8,%r8
 650:	75 d3                	jne    625 <_ECRYPT_ivsetup+0x475>
 652:	eb e9                	jmp    63d <_ECRYPT_ivsetup+0x48d>
 654:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 65b:	00 00 00 
 65e:	66 90                	xchg   %ax,%ax

0000000000000660 <_ECRYPT_process_bytes>:
 660:	55                   	push   %rbp
 661:	48 89 e5             	mov    %rsp,%rbp
 664:	41 57                	push   %r15
 666:	41 56                	push   %r14
 668:	41 55                	push   %r13
 66a:	41 54                	push   %r12
 66c:	53                   	push   %rbx
 66d:	0f b6 46 0c          	movzbl 0xc(%rsi),%eax
 671:	0f b6 7e 0d          	movzbl 0xd(%rsi),%edi
 675:	c1 e7 08             	shl    $0x8,%edi
 678:	09 c7                	or     %eax,%edi
 67a:	0f b6 46 0e          	movzbl 0xe(%rsi),%eax
 67e:	c1 e0 10             	shl    $0x10,%eax
 681:	09 f8                	or     %edi,%eax
 683:	0f b6 7e 0f          	movzbl 0xf(%rsi),%edi
 687:	89 7d 9c             	mov    %edi,-0x64(%rbp)
 68a:	c1 e7 18             	shl    $0x18,%edi
 68d:	09 c7                	or     %eax,%edi
 68f:	89 7d d4             	mov    %edi,-0x2c(%rbp)
 692:	0f b6 7e 10          	movzbl 0x10(%rsi),%edi
 696:	0f b6 46 11          	movzbl 0x11(%rsi),%eax
 69a:	c1 e0 08             	shl    $0x8,%eax
 69d:	89 7d c0             	mov    %edi,-0x40(%rbp)
 6a0:	09 f8                	or     %edi,%eax
 6a2:	0f b6 7e 12          	movzbl 0x12(%rsi),%edi
 6a6:	c1 e7 10             	shl    $0x10,%edi
 6a9:	09 c7                	or     %eax,%edi
 6ab:	44 0f b6 76 13       	movzbl 0x13(%rsi),%r14d
 6b0:	41 c1 e6 18          	shl    $0x18,%r14d
 6b4:	41 09 fe             	or     %edi,%r14d
 6b7:	44 0f b6 4e 1c       	movzbl 0x1c(%rsi),%r9d
 6bc:	0f b6 46 28          	movzbl 0x28(%rsi),%eax
 6c0:	0f b6 7e 29          	movzbl 0x29(%rsi),%edi
 6c4:	c1 e7 08             	shl    $0x8,%edi
 6c7:	89 45 a0             	mov    %eax,-0x60(%rbp)
 6ca:	09 c7                	or     %eax,%edi
 6cc:	0f b6 46 2a          	movzbl 0x2a(%rsi),%eax
 6d0:	c1 e0 10             	shl    $0x10,%eax
 6d3:	09 f8                	or     %edi,%eax
 6d5:	0f b6 7e 2c          	movzbl 0x2c(%rsi),%edi
 6d9:	44 0f b6 6e 2d       	movzbl 0x2d(%rsi),%r13d
 6de:	41 c1 e5 08          	shl    $0x8,%r13d
 6e2:	41 09 fd             	or     %edi,%r13d
 6e5:	0f b6 5e 1d          	movzbl 0x1d(%rsi),%ebx
 6e9:	c1 e3 08             	shl    $0x8,%ebx
 6ec:	44 89 4d cc          	mov    %r9d,-0x34(%rbp)
 6f0:	44 09 cb             	or     %r9d,%ebx
 6f3:	44 0f b6 4e 1e       	movzbl 0x1e(%rsi),%r9d
 6f8:	41 c1 e1 10          	shl    $0x10,%r9d
 6fc:	41 09 d9             	or     %ebx,%r9d
 6ff:	44 0f b6 7e 2b       	movzbl 0x2b(%rsi),%r15d
 704:	41 c1 e7 18          	shl    $0x18,%r15d
 708:	41 09 c7             	or     %eax,%r15d
 70b:	8b 7e 08             	mov    0x8(%rsi),%edi
 70e:	89 7d c4             	mov    %edi,-0x3c(%rbp)
 711:	44 8b 56 14          	mov    0x14(%rsi),%r10d
 715:	8b 7e 18             	mov    0x18(%rsi),%edi
 718:	89 7d c8             	mov    %edi,-0x38(%rbp)
 71b:	44 8b 5e 20          	mov    0x20(%rsi),%r11d
 71f:	8b 7e 24             	mov    0x24(%rsi),%edi
 722:	89 7d d0             	mov    %edi,-0x30(%rbp)
 725:	45 85 c0             	test   %r8d,%r8d
 728:	0f 84 ff 00 00 00    	je     82d <_ECRYPT_process_bytes+0x1cd>
 72e:	45 89 c4             	mov    %r8d,%r12d
 731:	44 89 55 bc          	mov    %r10d,-0x44(%rbp)
 735:	44 89 5d b8          	mov    %r11d,-0x48(%rbp)
 739:	44 8b 45 9c          	mov    -0x64(%rbp),%r8d
 73d:	44 89 c7             	mov    %r8d,%edi
 740:	c1 ef 05             	shr    $0x5,%edi
 743:	42 8d 3c f7          	lea    (%rdi,%r14,8),%edi
 747:	89 7d b4             	mov    %edi,-0x4c(%rbp)
 74a:	44 8b 55 c0          	mov    -0x40(%rbp),%r10d
 74e:	89 45 b0             	mov    %eax,-0x50(%rbp)
 751:	44 89 65 a4          	mov    %r12d,-0x5c(%rbp)
 755:	89 5d ac             	mov    %ebx,-0x54(%rbp)
 758:	44 89 f0             	mov    %r14d,%eax
 75b:	44 89 75 a8          	mov    %r14d,-0x58(%rbp)
 75f:	44 89 c7             	mov    %r8d,%edi
 762:	41 c1 e6 04          	shl    $0x4,%r14d
 766:	41 c1 e8 04          	shr    $0x4,%r8d
 76a:	45 09 f0             	or     %r14d,%r8d
 76d:	45 89 d3             	mov    %r10d,%r11d
 770:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 773:	41 0f a4 c3 1e       	shld   $0x1e,%eax,%r11d
 778:	44 8b 65 cc          	mov    -0x34(%rbp),%r12d
 77c:	44 8b 75 c8          	mov    -0x38(%rbp),%r14d
 780:	45 0f a4 f4 1b       	shld   $0x1b,%r14d,%r12d
 785:	44 89 c8             	mov    %r9d,%eax
 788:	44 0f a4 f0 0c       	shld   $0xc,%r14d,%eax
 78d:	44 31 5d b4          	xor    %r11d,-0x4c(%rbp)
 791:	44 31 e0             	xor    %r12d,%eax
 794:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
 798:	8b 5d d0             	mov    -0x30(%rbp),%ebx
 79b:	41 0f a4 db 1e       	shld   $0x1e,%ebx,%r11d
 7a0:	45 89 ec             	mov    %r13d,%r12d
 7a3:	45 0f a4 fc 11       	shld   $0x11,%r15d,%r12d
 7a8:	45 31 dc             	xor    %r11d,%r12d
 7ab:	8b 5d a8             	mov    -0x58(%rbp),%ebx
 7ae:	c1 e3 05             	shl    $0x5,%ebx
 7b1:	c1 ef 03             	shr    $0x3,%edi
 7b4:	09 df                	or     %ebx,%edi
 7b6:	45 89 cb             	mov    %r9d,%r11d
 7b9:	45 0f a4 f3 0e       	shld   $0xe,%r14d,%r11d
 7be:	41 21 f8             	xor    %edi,$0x00000000     // fault here
 7c1:	45 0f a4 f1 0d       	shld   $0xd,%r14d,%r9d
 7c6:	45 21 d9             	xor    %r11d,$0x00000000    // fault here
 7c9:	44 89 ef             	mov    %r13d,%edi
 7cc:	44 0f a4 ff 13       	shld   $0x13,%r15d,%edi
 7d1:	44 89 7d cc          	mov    %r15d,-0x34(%rbp)
 7d5:	45 0f a4 fd 12       	shld   $0x12,%r15d,%r13d
 7da:	41 21 fd             	xor    %edi,$0x00000000     // fault here
 7dd:	44 0f a4 75 ac 12    	shld   $0x12,%r14d,-0x54(%rbp)
 7e3:	8b 7d b4             	mov    -0x4c(%rbp),%edi
 7e6:	41 31 f8             	xor    %edi,%r8d
 7e9:	45 89 c6             	mov    %r8d,%r14d
 7ec:	8b 5d d0             	mov    -0x30(%rbp),%ebx
 7ef:	0f a4 5d b0 09       	shld   $0x9,%ebx,-0x50(%rbp)
 7f4:	8b 5d d4             	mov    -0x2c(%rbp),%ebx
 7f7:	41 0f a4 da 1b       	shld   $0x1b,%ebx,%r10d
 7fc:	41 31 c1             	xor    %eax,%r9d
 7ff:	45 89 cb             	mov    %r9d,%r11d
 802:	45 31 ea             	xor    %r13d,%r10d
 805:	44 89 55 c0          	mov    %r10d,-0x40(%rbp)
 809:	31 f8                	xor    %edi,%eax
 80b:	45 89 e2             	mov    %r12d,%r10d
 80e:	44 31 e0             	xor    %r12d,%eax
 811:	44 8b 4d a4          	mov    -0x5c(%rbp),%r9d
 815:	49 8d 79 ff          	lea    -0x1(%r9),%rdi
 819:	45 89 c8             	mov    %r9d,%r8d
 81c:	41 83 e0 03          	and    $0x3,%r8d
 820:	48 83 ff 03          	cmp    $0x3,%rdi
 824:	73 44                	jae    86a <_ECRYPT_process_bytes+0x20a>
 826:	31 ff                	xor    %edi,%edi
 828:	e9 81 00 00 00       	jmpq   8ae <_ECRYPT_process_bytes+0x24e>
 82d:	0f b6 4e 1f          	movzbl 0x1f(%rsi),%ecx
 831:	c1 e1 18             	shl    $0x18,%ecx
 834:	41 09 c9             	or     %ecx,%r9d
 837:	0f b6 4e 2e          	movzbl 0x2e(%rsi),%ecx
 83b:	c1 e1 10             	shl    $0x10,%ecx
 83e:	41 09 cd             	or     %ecx,%r13d
 841:	44 89 d2             	mov    %r10d,%edx
 844:	44 8b 45 c8          	mov    -0x38(%rbp),%r8d
 848:	45 89 cc             	mov    %r9d,%r12d
 84b:	45 89 da             	mov    %r11d,%r10d
 84e:	44 8b 4d d0          	mov    -0x30(%rbp),%r9d
 852:	0f b6 4e 2f          	movzbl 0x2f(%rsi),%ecx
 856:	c1 e1 18             	shl    $0x18,%ecx
 859:	44 09 e9             	or     %r13d,%ecx
 85c:	41 89 cb             	mov    %ecx,%r11d
 85f:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
 862:	4c 89 f0             	mov    %r14,%rax
 865:	e9 bf 00 00 00       	jmpq   929 <_ECRYPT_process_bytes+0x2c9>
 86a:	4d 29 c1             	sub    %r8,%r9
 86d:	31 ff                	xor    %edi,%edi
 86f:	90                   	nop
 870:	0f b6 1c 3a          	movzbl (%rdx,%rdi,1),%ebx
 874:	30 c3                	xor    %al,%bl
 876:	88 1c 39             	mov    %bl,(%rcx,%rdi,1)
 879:	89 c3                	mov    %eax,%ebx
 87b:	c1 eb 08             	shr    $0x8,%ebx
 87e:	32 5c 3a 01          	xor    0x1(%rdx,%rdi,1),%bl
 882:	88 5c 39 01          	mov    %bl,0x1(%rcx,%rdi,1)
 886:	89 c3                	mov    %eax,%ebx
 888:	c1 eb 10             	shr    $0x10,%ebx
 88b:	32 5c 3a 02          	xor    0x2(%rdx,%rdi,1),%bl
 88f:	88 5c 39 02          	mov    %bl,0x2(%rcx,%rdi,1)
 893:	c1 e8 18             	shr    $0x18,%eax
 896:	32 44 3a 03          	xor    0x3(%rdx,%rdi,1),%al
 89a:	88 44 39 03          	mov    %al,0x3(%rcx,%rdi,1)
 89e:	48 83 c7 04          	add    $0x4,%rdi
 8a2:	b8 00 00 00 00       	mov    $0x0,%eax
 8a7:	49 39 f9             	cmp    %rdi,%r9
 8aa:	75 c4                	jne    870 <_ECRYPT_process_bytes+0x210>
 8ac:	31 c0                	xor    %eax,%eax
 8ae:	44 8b 7d d0          	mov    -0x30(%rbp),%r15d
 8b2:	44 8b 65 d4          	mov    -0x2c(%rbp),%r12d
 8b6:	44 89 d3             	mov    %r10d,%ebx
 8b9:	44 33 75 ac          	xor    -0x54(%rbp),%r14d
 8bd:	45 89 f1             	mov    %r14d,%r9d
 8c0:	44 33 5d b0          	xor    -0x50(%rbp),%r11d
 8c4:	45 89 da             	mov    %r11d,%r10d
 8c7:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
 8cb:	41 31 db             	xor    %ebx,%r11d
 8ce:	4d 85 c0             	test   %r8,%r8
 8d1:	74 37                	je     90a <_ECRYPT_process_bytes+0x2aa>
 8d3:	48 01 f9             	add    %rdi,%rcx
 8d6:	48 01 fa             	add    %rdi,%rdx
 8d9:	31 ff                	xor    %edi,%edi
 8db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 8e0:	0f b6 1c 3a          	movzbl (%rdx,%rdi,1),%ebx
 8e4:	30 c3                	xor    %al,%bl
 8e6:	88 1c 39             	mov    %bl,(%rcx,%rdi,1)
 8e9:	c1 e8 08             	shr    $0x8,%eax
 8ec:	48 ff c7             	inc    %rdi
 8ef:	49 39 f8             	cmp    %rdi,%r8
 8f2:	75 ec                	jne    8e0 <_ECRYPT_process_bytes+0x280>
 8f4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 8f7:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
 8fa:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
 8fd:	44 89 d9             	mov    %r11d,%ecx
 900:	44 8b 5d cc          	mov    -0x34(%rbp),%r11d
 904:	44 8b 7d d0          	mov    -0x30(%rbp),%r15d
 908:	eb 10                	jmp    91a <_ECRYPT_process_bytes+0x2ba>
 90a:	44 89 e0             	mov    %r12d,%eax
 90d:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
 910:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
 913:	44 89 d9             	mov    %r11d,%ecx
 916:	44 8b 5d cc          	mov    -0x34(%rbp),%r11d
 91a:	44 89 ca             	mov    %r9d,%edx
 91d:	44 8b 4d b8          	mov    -0x48(%rbp),%r9d
 921:	44 8b 65 c8          	mov    -0x38(%rbp),%r12d
 925:	44 8b 45 bc          	mov    -0x44(%rbp),%r8d
 929:	88 4e 08             	mov    %cl,0x8(%rsi)
 92c:	88 6e 09             	mov    %ch,0x9(%rsi)
 92f:	89 cf                	mov    %ecx,%edi
 931:	c1 e9 10             	shr    $0x10,%ecx
 934:	88 4e 0a             	mov    %cl,0xa(%rsi)
 937:	c1 ef 18             	shr    $0x18,%edi
 93a:	40 88 7e 0b          	mov    %dil,0xb(%rsi)
 93e:	8b 5d d4             	mov    -0x2c(%rbp),%ebx
 941:	88 5e 0c             	mov    %bl,0xc(%rsi)
 944:	88 7e 0d             	mov    %bh,0xd(%rsi)
 947:	89 d9                	mov    %ebx,%ecx
 949:	c1 e9 10             	shr    $0x10,%ecx
 94c:	88 4e 0e             	mov    %cl,0xe(%rsi)
 94f:	c1 eb 18             	shr    $0x18,%ebx
 952:	88 5e 0f             	mov    %bl,0xf(%rsi)
 955:	88 46 10             	mov    %al,0x10(%rsi)
 958:	88 66 11             	mov    %ah,0x11(%rsi)
 95b:	89 c1                	mov    %eax,%ecx
 95d:	c1 e9 10             	shr    $0x10,%ecx
 960:	88 4e 12             	mov    %cl,0x12(%rsi)
 963:	c1 e8 18             	shr    $0x18,%eax
 966:	88 46 13             	mov    %al,0x13(%rsi)
 969:	88 56 14             	mov    %dl,0x14(%rsi)
 96c:	88 76 15             	mov    %dh,0x15(%rsi)
 96f:	89 d0                	mov    %edx,%eax
 971:	c1 e8 10             	shr    $0x10,%eax
 974:	88 46 16             	mov    %al,0x16(%rsi)
 977:	c1 ea 18             	shr    $0x18,%edx
 97a:	88 56 17             	mov    %dl,0x17(%rsi)
 97d:	44 89 c1             	mov    %r8d,%ecx
 980:	88 4e 18             	mov    %cl,0x18(%rsi)
 983:	88 6e 19             	mov    %ch,0x19(%rsi)
 986:	44 89 c0             	mov    %r8d,%eax
 989:	c1 e8 10             	shr    $0x10,%eax
 98c:	88 46 1a             	mov    %al,0x1a(%rsi)
 98f:	c1 e9 18             	shr    $0x18,%ecx
 992:	88 4e 1b             	mov    %cl,0x1b(%rsi)
 995:	44 89 e1             	mov    %r12d,%ecx
 998:	88 4e 1c             	mov    %cl,0x1c(%rsi)
 99b:	88 6e 1d             	mov    %ch,0x1d(%rsi)
 99e:	44 89 e0             	mov    %r12d,%eax
 9a1:	c1 e8 10             	shr    $0x10,%eax
 9a4:	88 46 1e             	mov    %al,0x1e(%rsi)
 9a7:	c1 e9 18             	shr    $0x18,%ecx
 9aa:	88 4e 1f             	mov    %cl,0x1f(%rsi)
 9ad:	44 89 d1             	mov    %r10d,%ecx
 9b0:	88 4e 20             	mov    %cl,0x20(%rsi)
 9b3:	88 6e 21             	mov    %ch,0x21(%rsi)
 9b6:	44 89 d0             	mov    %r10d,%eax
 9b9:	c1 e8 10             	shr    $0x10,%eax
 9bc:	88 46 22             	mov    %al,0x22(%rsi)
 9bf:	c1 e9 18             	shr    $0x18,%ecx
 9c2:	88 4e 23             	mov    %cl,0x23(%rsi)
 9c5:	44 89 c9             	mov    %r9d,%ecx
 9c8:	88 4e 24             	mov    %cl,0x24(%rsi)
 9cb:	88 6e 25             	mov    %ch,0x25(%rsi)
 9ce:	44 89 c8             	mov    %r9d,%eax
 9d1:	c1 e8 10             	shr    $0x10,%eax
 9d4:	88 46 26             	mov    %al,0x26(%rsi)
 9d7:	c1 e9 18             	shr    $0x18,%ecx
 9da:	88 4e 27             	mov    %cl,0x27(%rsi)
 9dd:	44 89 f9             	mov    %r15d,%ecx
 9e0:	88 4e 28             	mov    %cl,0x28(%rsi)
 9e3:	88 6e 29             	mov    %ch,0x29(%rsi)
 9e6:	44 89 f8             	mov    %r15d,%eax
 9e9:	c1 e8 10             	shr    $0x10,%eax
 9ec:	88 46 2a             	mov    %al,0x2a(%rsi)
 9ef:	c1 e9 18             	shr    $0x18,%ecx
 9f2:	88 4e 2b             	mov    %cl,0x2b(%rsi)
 9f5:	44 89 d9             	mov    %r11d,%ecx
 9f8:	88 4e 2c             	mov    %cl,0x2c(%rsi)
 9fb:	88 6e 2d             	mov    %ch,0x2d(%rsi)
 9fe:	44 89 d8             	mov    %r11d,%eax
 a01:	c1 e8 10             	shr    $0x10,%eax
 a04:	88 46 2e             	mov    %al,0x2e(%rsi)
 a07:	c1 e9 18             	shr    $0x18,%ecx
 a0a:	88 4e 2f             	mov    %cl,0x2f(%rsi)
 a0d:	5b                   	pop    %rbx
 a0e:	41 5c                	pop    %r12
 a10:	41 5d                	pop    %r13
 a12:	41 5e                	pop    %r14
 a14:	41 5f                	pop    %r15
 a16:	5d                   	pop    %rbp
 a17:	c3                   	retq   
