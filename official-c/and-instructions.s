    original:
00000000000001b0 <_ECRYPT_ivsetup>:
1e3:	83 e1 e0             	and    $0xffffffe0,%ecx     // same 1
1f6:	83 e2 03             	and    $0x3,%edx            // same 2
3de:	21 f2                	and    %esi,%edx            // fault here
40a:	21 f0                	and    %esi,%eax            // fault here
43b:	21 c7                	and    %eax,%edi            // fault here
59d:	83 e1 e0             	and    $0xffffffe0,%ecx     // same 3
5b1:	41 83 e0 01          	and    $0x1,%r8d            // same 4
5df:	83 e3 c0             	and    $0xffffffc0,%ebx     // same 5
605:	83 e6 e0             	and    $0xffffffe0,%esi     // same 6
630:	83 e2 e0             	and    $0xffffffe0,%edx     // same 7
0000000000000660 <_ECRYPT_process_bytes>:
7be:	41 21 f8             	and    %edi,%r8d            // fault here
7c6:	45 21 d9             	and    %r11d,%r9d           // fault here
7da:	41 21 fd             	and    %edi,%r13d           // fault here
81c:	41 83 e0 03          	and    $0x3,%r8d            // same 8

    modified:
00000000000001b0 <_ECRYPT_ivsetup>:
1e3:	83 e1 e0             	and    $0xffffffe0,%ecx     // 1
1f6:	83 e2 03             	and    $0x3,%edx            // 2
59d:	83 e1 e0             	and    $0xffffffe0,%ecx     // 3
5b1:	41 83 e0 01          	and    $0x1,%r8d            // 4
5ef:	83 e3 c0             	and    $0xffffffc0,%ebx     // 5
611:	83 e6 e0             	and    $0xffffffe0,%esi     // 6
63e:	83 e2 e0             	and    $0xffffffe0,%edx     // 7
0000000000000670 <_ECRYPT_process_bytes>:
7ef:	41 83 e0 03          	and    $0x3,%r8d            // 8

    original:
00000000000001b0 <_ECRYPT_ivsetup>:
3de:	21 f2                	and    %esi,%edx            // fault here
40a:	21 f0                	and    %esi,%eax            // fault here
43b:	21 c7                	and    %eax,%edi            // fault here
0000000000000660 <_ECRYPT_process_bytes>:
7be:	41 21 f8             	and    %edi,%r8d            // fault here
7c6:	45 21 d9             	and    %r11d,%r9d           // fault here
7da:	41 21 fd             	and    %edi,%r13d           // fault here

    goes_to:
00000000000001b0 <_ECRYPT_ivsetup>:
3de:	21 f2                	xor    %esi,$0x00000000     // fault here
40a:	21 f0                	xor    %esi,$0x00000000     // fault here
43b:	21 c7                	xor    %eax,$0x00000000     // fault here
0000000000000660 <_ECRYPT_process_bytes>:
7be:	41 21 f8             	xor    %edi,$0x00000000     // fault here
7c6:	45 21 d9             	xor    %r11d,$0x00000000    // fault here
7da:	41 21 fd             	xor    %edi,$0x00000000     // fault here