
trivium.o:     file format mach-o-x86-64


Disassembly of section .text:

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
 67d:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
 681:	44 89 c7             	mov    %r8d,%edi
 684:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
 688:	8b 56 08             	mov    0x8(%rsi),%edx
 68b:	8b 46 0c             	mov    0xc(%rsi),%eax
 68e:	89 45 d4             	mov    %eax,-0x2c(%rbp)
 691:	8b 5e 10             	mov    0x10(%rsi),%ebx
 694:	44 8b 6e 2c          	mov    0x2c(%rsi),%r13d
 698:	41 c1 e8 02          	shr    $0x2,%r8d
 69c:	8b 46 14             	mov    0x14(%rsi),%eax
 69f:	89 45 cc             	mov    %eax,-0x34(%rbp)
 6a2:	44 8b 7e 18          	mov    0x18(%rsi),%r15d
 6a6:	44 8b 56 1c          	mov    0x1c(%rsi),%r10d
 6aa:	8b 46 20             	mov    0x20(%rsi),%eax
 6ad:	8b 4e 24             	mov    0x24(%rsi),%ecx
 6b0:	44 8b 66 28          	mov    0x28(%rsi),%r12d
 6b4:	89 7d c4             	mov    %edi,-0x3c(%rbp)
 6b7:	0f 84 ab 01 00 00    	je     868 <_ECRYPT_process_bytes+0x1f8>
 6bd:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
 6c1:	41 89 d1             	mov    %edx,%r9d
 6c4:	8b 55 cc             	mov    -0x34(%rbp),%edx
 6c7:	8b 75 d4             	mov    -0x2c(%rbp),%esi
 6ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 6d0:	89 45 d0             	mov    %eax,-0x30(%rbp)
 6d3:	41 89 cb             	mov    %ecx,%r11d
 6d6:	45 89 e6             	mov    %r12d,%r14d
 6d9:	89 55 c8             	mov    %edx,-0x38(%rbp)
 6dc:	41 89 f4             	mov    %esi,%r12d
 6df:	89 d8                	mov    %ebx,%eax
 6e1:	0f a4 f0 1e          	shld   $0x1e,%esi,%eax
 6e5:	44 89 f7             	mov    %r14d,%edi
 6e8:	0f a4 cf 1e          	shld   $0x1e,%ecx,%edi
 6ec:	44 89 e9             	mov    %r13d,%ecx
 6ef:	44 0f a4 f1 11       	shld   $0x11,%r14d,%ecx
 6f4:	31 f9                	xor    %edi,%ecx
 6f6:	89 df                	mov    %ebx,%edi
 6f8:	0f a4 f7 05          	shld   $0x5,%esi,%edi
 6fc:	31 c7                	xor    %eax,%edi
 6fe:	89 d8                	mov    %ebx,%eax
 700:	0f a4 f0 03          	shld   $0x3,%esi,%eax
 704:	44 89 d2             	mov    %r10d,%edx
 707:	44 0f a4 fa 12       	shld   $0x12,%r15d,%edx
 70c:	31 c2                	xor    %eax,%edx
 70e:	31 fa                	xor    %edi,%edx
 710:	44 89 d0             	mov    %r10d,%eax
 713:	44 0f a4 f8 1b       	shld   $0x1b,%r15d,%eax
 718:	44 89 d7             	mov    %r10d,%edi
 71b:	44 0f a4 ff 0c       	shld   $0xc,%r15d,%edi
 720:	45 0f a4 fa 0e       	shld   $0xe,%r15d,%r10d
 725:	41 31 c2             	xor    %eax,%r10d
 728:	44 89 f0             	mov    %r14d,%eax
 72b:	44 0f a4 d8 09       	shld   $0x9,%r11d,%eax
 730:	31 f8                	xor    %edi,%eax
 732:	44 89 ce             	mov    %r9d,%esi
 735:	45 0f a4 f5 13       	shld   $0x13,%r14d,%r13d
 73a:	44 0f a4 e3 1b       	shld   $0x1b,%r12d,%ebx
 73f:	44 31 d0             	xor    %r10d,%eax
 742:	45 89 fa             	mov    %r15d,%r10d
 745:	44 31 eb             	xor    %r13d,%ebx
 748:	41 89 d9             	mov    %ebx,%r9d
 74b:	44 89 e3             	mov    %r12d,%ebx
 74e:	41 31 c9             	xor    %ecx,%r9d
 751:	44 8b 7d c8          	mov    -0x38(%rbp),%r15d
 755:	45 89 f5             	mov    %r14d,%r13d
 758:	45 89 dc             	mov    %r11d,%r12d
 75b:	8b 4d d0             	mov    -0x30(%rbp),%ecx
 75e:	41 ff c8             	dec    %r8d
 761:	0f 85 69 ff ff ff    	jne    6d0 <_ECRYPT_process_bytes+0x60>
 767:	89 cf                	mov    %ecx,%edi
 769:	89 75 d4             	mov    %esi,-0x2c(%rbp)
 76c:	89 55 cc             	mov    %edx,-0x34(%rbp)
 76f:	8b 55 c4             	mov    -0x3c(%rbp),%edx
 772:	41 89 d0             	mov    %edx,%r8d
 775:	41 83 e0 fc          	and    $0xfffffffc,%r8d
 779:	89 d7                	mov    %edx,%edi
 77b:	45 89 dc             	mov    %r11d,%r12d
 77e:	45 89 f5             	mov    %r14d,%r13d
 781:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
 785:	44 89 ca             	mov    %r9d,%edx
 788:	41 39 f8             	cmp    %edi,%r8d
 78b:	0f 83 e3 00 00 00    	jae    874 <_ECRYPT_process_bytes+0x204>
 791:	89 55 a8             	mov    %edx,-0x58(%rbp)
 794:	89 45 b8             	mov    %eax,-0x48(%rbp)
 797:	89 d8                	mov    %ebx,%eax
 799:	8b 55 d4             	mov    -0x2c(%rbp),%edx
 79c:	0f a4 d0 1e          	shld   $0x1e,%edx,%eax
 7a0:	41 89 db             	mov    %ebx,%r11d
 7a3:	41 0f a4 d3 03       	shld   $0x3,%edx,%r11d
 7a8:	41 89 ce             	mov    %ecx,%r14d
 7ab:	41 89 d9             	mov    %ebx,%r9d
 7ae:	44 89 fb             	mov    %r15d,%ebx
 7b1:	44 89 e7             	mov    %r12d,%edi
 7b4:	44 89 d1             	mov    %r10d,%ecx
 7b7:	44 0f a4 f9 1b       	shld   $0x1b,%r15d,%ecx
 7bc:	45 89 d7             	mov    %r10d,%r15d
 7bf:	41 0f a4 df 0c       	shld   $0xc,%ebx,%r15d
 7c4:	41 31 c3             	xor    %eax,%r11d
 7c7:	41 31 cf             	xor    %ecx,%r15d
 7ca:	44 89 e0             	mov    %r12d,%eax
 7cd:	44 0f a4 f0 1e       	shld   $0x1e,%r14d,%eax
 7d2:	44 89 e9             	mov    %r13d,%ecx
 7d5:	44 0f a4 e1 11       	shld   $0x11,%r12d,%ecx
 7da:	31 c1                	xor    %eax,%ecx
 7dc:	44 89 7d b4          	mov    %r15d,-0x4c(%rbp)
 7e0:	89 4d b0             	mov    %ecx,-0x50(%rbp)
 7e3:	41 31 cf             	xor    %ecx,%r15d
 7e6:	44 89 4d a4          	mov    %r9d,-0x5c(%rbp)
 7ea:	41 0f a4 d1 05       	shld   $0x5,%edx,%r9d
 7ef:	44 89 4d d0          	mov    %r9d,-0x30(%rbp)
 7f3:	45 89 d1             	mov    %r10d,%r9d
 7f6:	41 0f a4 d9 12       	shld   $0x12,%ebx,%r9d
 7fb:	89 5d c8             	mov    %ebx,-0x38(%rbp)
 7fe:	41 0f a4 da 0e       	shld   $0xe,%ebx,%r10d
 803:	45 89 d4             	mov    %r10d,%r12d
 806:	41 89 fa             	mov    %edi,%r10d
 809:	44 89 75 a0          	mov    %r14d,-0x60(%rbp)
 80d:	45 0f a4 f2 09       	shld   $0x9,%r14d,%r10d
 812:	44 89 5d ac          	mov    %r11d,-0x54(%rbp)
 816:	45 31 df             	xor    %r11d,%r15d
 819:	89 7d 9c             	mov    %edi,-0x64(%rbp)
 81c:	41 0f a4 fd 13       	shld   $0x13,%edi,%r13d
 821:	44 89 c1             	mov    %r8d,%ecx
 824:	44 8b 45 c4          	mov    -0x3c(%rbp),%r8d
 828:	49 89 ce             	mov    %rcx,%r14
 82b:	49 f7 d6             	not    %r14
 82e:	4d 01 c6             	add    %r8,%r14
 831:	4c 89 c2             	mov    %r8,%rdx
 834:	48 83 e2 03          	and    $0x3,%rdx
 838:	74 4d                	je     887 <_ECRYPT_process_bytes+0x217>
 83a:	48 f7 da             	neg    %rdx
 83d:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
 841:	48 8b 45 88          	mov    -0x78(%rbp),%rax
 845:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 84c:	00 00 00
 84f:	90                   	nop
 850:	0f b6 1c 0f          	movzbl (%rdi,%rcx,1),%ebx
 854:	44 30 fb             	xor    %r15b,%bl
 857:	88 1c 08             	mov    %bl,(%rax,%rcx,1)
 85a:	48 ff c1             	inc    %rcx
 85d:	41 c1 ef 08          	shr    $0x8,%r15d
 861:	48 ff c2             	inc    %rdx
 864:	75 ea                	jne    850 <_ECRYPT_process_bytes+0x1e0>
 866:	eb 23                	jmp    88b <_ECRYPT_process_bytes+0x21b>
 868:	45 31 c0             	xor    %r8d,%r8d
 86b:	41 39 f8             	cmp    %edi,%r8d
 86e:	0f 82 1d ff ff ff    	jb     791 <_ECRYPT_process_bytes+0x121>
 874:	41 89 c0             	mov    %eax,%r8d
 877:	89 cf                	mov    %ecx,%edi
 879:	89 d8                	mov    %ebx,%eax
 87b:	44 8b 5d cc          	mov    -0x34(%rbp),%r11d
 87f:	8b 5d d4             	mov    -0x2c(%rbp),%ebx
 882:	e9 c0 00 00 00       	jmpq   947 <_ECRYPT_process_bytes+0x2d7>
 887:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
 88b:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
 88f:	45 31 cb             	xor    %r9d,%r11d
 892:	44 89 e0             	mov    %r12d,%eax
 895:	44 31 d0             	xor    %r10d,%eax
 898:	89 45 d0             	mov    %eax,-0x30(%rbp)
 89b:	44 8b 55 d4          	mov    -0x2c(%rbp),%r10d
 89f:	41 c1 ea 05          	shr    $0x5,%r10d
 8a3:	44 8b 4d b0          	mov    -0x50(%rbp),%r9d
 8a7:	45 31 e9             	xor    %r13d,%r9d
 8aa:	49 83 fe 03          	cmp    $0x3,%r14
 8ae:	72 63                	jb     913 <_ECRYPT_process_bytes+0x2a3>
 8b0:	49 29 c8             	sub    %rcx,%r8
 8b3:	48 8b 45 88          	mov    -0x78(%rbp),%rax
 8b7:	48 8d 54 08 03       	lea    0x3(%rax,%rcx,1),%rdx
 8bc:	48 8d 4c 0f 03       	lea    0x3(%rdi,%rcx,1),%rcx
 8c1:	31 ff                	xor    %edi,%edi
 8c3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ca:	00 00 00
 8cd:	0f 1f 00             	nopl   (%rax)
 8d0:	0f b6 5c 39 fd       	movzbl -0x3(%rcx,%rdi,1),%ebx
 8d5:	44 30 fb             	xor    %r15b,%bl
 8d8:	88 5c 3a fd          	mov    %bl,-0x3(%rdx,%rdi,1)
 8dc:	44 89 f8             	mov    %r15d,%eax
 8df:	c1 e8 08             	shr    $0x8,%eax
 8e2:	32 44 39 fe          	xor    -0x2(%rcx,%rdi,1),%al
 8e6:	88 44 3a fe          	mov    %al,-0x2(%rdx,%rdi,1)
 8ea:	44 89 f8             	mov    %r15d,%eax
 8ed:	c1 e8 10             	shr    $0x10,%eax
 8f0:	32 44 39 ff          	xor    -0x1(%rcx,%rdi,1),%al
 8f4:	88 44 3a ff          	mov    %al,-0x1(%rdx,%rdi,1)
 8f8:	41 c1 ef 18          	shr    $0x18,%r15d
 8fc:	44 32 3c 39          	xor    (%rcx,%rdi,1),%r15b
 900:	44 88 3c 3a          	mov    %r15b,(%rdx,%rdi,1)
 904:	48 83 c7 04          	add    $0x4,%rdi
 908:	41 bf 00 00 00 00    	mov    $0x0,%r15d
 90e:	49 39 f8             	cmp    %rdi,%r8
 911:	75 bd                	jne    8d0 <_ECRYPT_process_bytes+0x260>
 913:	8b 45 a4             	mov    -0x5c(%rbp),%eax
 916:	c1 e0 1b             	shl    $0x1b,%eax
 919:	41 09 c2             	or     %eax,%r10d
 91c:	44 33 5d ac          	xor    -0x54(%rbp),%r11d
 920:	44 8b 45 d0          	mov    -0x30(%rbp),%r8d
 924:	44 33 45 b4          	xor    -0x4c(%rbp),%r8d
 928:	45 31 d1             	xor    %r10d,%r9d
 92b:	44 8b 55 c8          	mov    -0x38(%rbp),%r10d
 92f:	44 8b 7d cc          	mov    -0x34(%rbp),%r15d
 933:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 936:	8b 5d a8             	mov    -0x58(%rbp),%ebx
 939:	44 89 ca             	mov    %r9d,%edx
 93c:	8b 7d b8             	mov    -0x48(%rbp),%edi
 93f:	44 8b 6d 9c          	mov    -0x64(%rbp),%r13d
 943:	44 8b 65 a0          	mov    -0x60(%rbp),%r12d
 947:	88 56 08             	mov    %dl,0x8(%rsi)
 94a:	88 76 09             	mov    %dh,0x9(%rsi)
 94d:	89 d1                	mov    %edx,%ecx
 94f:	c1 e9 10             	shr    $0x10,%ecx
 952:	88 4e 0a             	mov    %cl,0xa(%rsi)
 955:	c1 ea 18             	shr    $0x18,%edx
 958:	88 56 0b             	mov    %dl,0xb(%rsi)
 95b:	88 5e 0c             	mov    %bl,0xc(%rsi)
 95e:	88 7e 0d             	mov    %bh,0xd(%rsi)
 961:	89 d9                	mov    %ebx,%ecx
 963:	c1 e9 10             	shr    $0x10,%ecx
 966:	88 4e 0e             	mov    %cl,0xe(%rsi)
 969:	c1 eb 18             	shr    $0x18,%ebx
 96c:	88 5e 0f             	mov    %bl,0xf(%rsi)
 96f:	88 46 10             	mov    %al,0x10(%rsi)
 972:	88 66 11             	mov    %ah,0x11(%rsi)
 975:	89 c1                	mov    %eax,%ecx
 977:	c1 e9 10             	shr    $0x10,%ecx
 97a:	88 4e 12             	mov    %cl,0x12(%rsi)
 97d:	c1 e8 18             	shr    $0x18,%eax
 980:	88 46 13             	mov    %al,0x13(%rsi)
 983:	44 89 d8             	mov    %r11d,%eax
 986:	88 46 14             	mov    %al,0x14(%rsi)
 989:	88 66 15             	mov    %ah,0x15(%rsi)
 98c:	44 89 d9             	mov    %r11d,%ecx
 98f:	c1 e9 10             	shr    $0x10,%ecx
 992:	88 4e 16             	mov    %cl,0x16(%rsi)
 995:	c1 e8 18             	shr    $0x18,%eax
 998:	88 46 17             	mov    %al,0x17(%rsi)
 99b:	44 89 f8             	mov    %r15d,%eax
 99e:	88 46 18             	mov    %al,0x18(%rsi)
 9a1:	88 66 19             	mov    %ah,0x19(%rsi)
 9a4:	44 89 f9             	mov    %r15d,%ecx
 9a7:	c1 e9 10             	shr    $0x10,%ecx
 9aa:	88 4e 1a             	mov    %cl,0x1a(%rsi)
 9ad:	c1 e8 18             	shr    $0x18,%eax
 9b0:	88 46 1b             	mov    %al,0x1b(%rsi)
 9b3:	44 89 d0             	mov    %r10d,%eax
 9b6:	88 46 1c             	mov    %al,0x1c(%rsi)
 9b9:	88 66 1d             	mov    %ah,0x1d(%rsi)
 9bc:	44 89 d1             	mov    %r10d,%ecx
 9bf:	c1 e9 10             	shr    $0x10,%ecx
 9c2:	88 4e 1e             	mov    %cl,0x1e(%rsi)
 9c5:	c1 e8 18             	shr    $0x18,%eax
 9c8:	88 46 1f             	mov    %al,0x1f(%rsi)
 9cb:	44 89 c0             	mov    %r8d,%eax
 9ce:	88 46 20             	mov    %al,0x20(%rsi)
 9d1:	88 66 21             	mov    %ah,0x21(%rsi)
 9d4:	44 89 c1             	mov    %r8d,%ecx
 9d7:	c1 e9 10             	shr    $0x10,%ecx
 9da:	88 4e 22             	mov    %cl,0x22(%rsi)
 9dd:	c1 e8 18             	shr    $0x18,%eax
 9e0:	88 46 23             	mov    %al,0x23(%rsi)
 9e3:	89 f9                	mov    %edi,%ecx
 9e5:	88 4e 24             	mov    %cl,0x24(%rsi)
 9e8:	88 6e 25             	mov    %ch,0x25(%rsi)
 9eb:	89 f8                	mov    %edi,%eax
 9ed:	c1 e8 10             	shr    $0x10,%eax
 9f0:	88 46 26             	mov    %al,0x26(%rsi)
 9f3:	c1 e9 18             	shr    $0x18,%ecx
 9f6:	88 4e 27             	mov    %cl,0x27(%rsi)
 9f9:	44 89 e1             	mov    %r12d,%ecx
 9fc:	88 4e 28             	mov    %cl,0x28(%rsi)
 9ff:	88 6e 29             	mov    %ch,0x29(%rsi)
 a02:	44 89 e0             	mov    %r12d,%eax
 a05:	c1 e8 10             	shr    $0x10,%eax
 a08:	88 46 2a             	mov    %al,0x2a(%rsi)
 a0b:	c1 e9 18             	shr    $0x18,%ecx
 a0e:	88 4e 2b             	mov    %cl,0x2b(%rsi)
 a11:	44 89 e9             	mov    %r13d,%ecx
 a14:	88 4e 2c             	mov    %cl,0x2c(%rsi)
 a17:	88 6e 2d             	mov    %ch,0x2d(%rsi)
 a1a:	44 89 e8             	mov    %r13d,%eax
 a1d:	c1 e8 10             	shr    $0x10,%eax
 a20:	88 46 2e             	mov    %al,0x2e(%rsi)
 a23:	c1 e9 18             	shr    $0x18,%ecx
 a26:	88 4e 2f             	mov    %cl,0x2f(%rsi)
 a29:	5b                   	pop    %rbx
 a2a:	41 5c                	pop    %r12
 a2c:	41 5d                	pop    %r13
 a2e:	41 5e                	pop    %r14
 a30:	41 5f                	pop    %r15
 a32:	5d                   	pop    %rbp
 a33:	c3                   	retq
