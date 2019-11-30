    ORIGINAL:
00000000000001b0 <_ECRYPT_ivsetup>:
1e3:	83 e1 e0             	and    $0xffffffe0,%ecx     // same 1
1f6:	83 e2 03             	and    $0x3,%edx            // same 2
3de:	21 f2                	and    %esi,%edx            // fault here 1
40a:	21 f0                	and    %esi,%eax            // fault here 2
43b:	21 c7                	and    %eax,%edi            // fault here 3
59d:	83 e1 e0             	and    $0xffffffe0,%ecx     // same 3
5b1:	41 83 e0 01          	and    $0x1,%r8d            // same 4
5df:	83 e3 c0             	and    $0xffffffc0,%ebx     // same 5
605:	83 e6 e0             	and    $0xffffffe0,%esi     // same 6
630:	83 e2 e0             	and    $0xffffffe0,%edx     // same 7

0000000000000660 <_ECRYPT_process_bytes>:
70a:	21 c3                	and    %eax,%ebx            // fault here 1
746:	21 df                	and    %ebx,%edi            // fault here 2
766:	41 21 c7             	and    %eax,%r15d           // fault here 3
7a4:	41 83 e3 fc          	and    $0xfffffffc,%r11d    // same 8
82e:	41 21 f9             	and    %edi,%r9d            // fault here 1
83a:	21 c8                	and    %ecx,%eax            // fault here 2
859:	41 21 c7             	and    %eax,%r15d           // fault here 3
86e:	48 83 e1 03          	and    $0x3,%rcx            // same 9

    MODIFIED:
00000000000001b0 <_ECRYPT_ivsetup>:
1e3:	83 e1 e0             	and    $0xffffffe0,%ecx     // 1
1f6:	83 e2 03             	and    $0x3,%edx            // 2
59d:	83 e1 e0             	and    $0xffffffe0,%ecx     // 3
5b1:	41 83 e0 01          	and    $0x1,%r8d            // 4
5ef:	83 e3 c0             	and    $0xffffffc0,%ebx     // 5
611:	83 e6 e0             	and    $0xffffffe0,%esi     // 6
63e:	83 e2 e0             	and    $0xffffffe0,%edx     // 7
0000000000000670 <_ECRYPT_process_bytes>:
775:	41 83 e0 fc          	and    $0xfffffffc,%r8d     // 8
834:	48 83 e2 03          	and    $0x3,%rdx            // 9


    RELEVANT_INSTRUCTIONS:
3de:	21 f2                	and    %esi,%edx            // fault here 1
40a:	21 f0                	and    %esi,%eax            // fault here 2
43b:	21 c7                	and    %eax,%edi            // fault here 3

70a:	21 c3                	and    %eax,%ebx            // fault here 1
746:	21 df                	and    %ebx,%edi            // fault here 2
766:	41 21 c7             	and    %eax,%r15d           // fault here 3

82e:	41 21 f9             	and    %edi,%r9d            // fault here 1
83a:	21 c8                	and    %ecx,%eax            // fault here 2
859:	41 21 c7             	and    %eax,%r15d           // fault here 3

    FAULTS:
3de:	21 f2                	xor    %esi,$0x00000000     // fault here 1 ==> 33 35 00 00 00 00
40a:	21 f0                	xor    %esi,$0x00000000     // fault here 2 ==> 33 35 00 00 00 00
43b:	21 c7                	xor    %eax,$0x00000000     // fault here 3 ==> 33 05 00 00 00 00

70a:	21 c3                	xor    %eax,$0x00000000     // fault here 1 ==> 33 05 00 00 00 00
746:	21 df                	xor    %ebx,$0x00000000     // fault here 2 ==> 33 1d 00 00 00 00
766:	41 21 c7             	xor    %eax,$0x00000000     // fault here 3 ==> 33 05 00 00 00 00

82e:	41 21 f9             	xor    %edi,$0x00000000     // fault here 1 ==> 33 3d 00 00 00 00
83a:	21 c8                	xor    %ecx,$0x00000000     // fault here 2 ==> 33 0d 00 00 00 00
859:	41 21 c7             	xor    %eax,$0x00000000     // fault here 3 ==> 33 05 00 00 00 00
