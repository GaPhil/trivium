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

70a:	21 c3                	and    %eax,%ebx            // fault here 1 - 32 bit
746:	21 df                	and    %ebx,%edi            // fault here 2 - 32 bit
766:	41 21 c7             	and    %eax,%r15d           // fault here 3 - 32 bit

82e:	41 21 f9             	and    %edi,%r9d            // fault here 1 - 64 bit
83a:	21 c8                	and    %ecx,%eax            // fault here 2 - 64 bit
859:	41 21 c7             	and    %eax,%r15d           // fault here 3 - 64 bit

    FAULTS:
3de:	33 f6                	xor    %esi,%esi            // fault here 1 - done
40a:	33 f6                	xor    %esi,%esi            // fault here 2 - done
43b:	33 c0                	xor    %eax,%eax            // fault here 3 - done

70a:	33 c0                	xor    %eax,%eax            // fault here 1 - done
746:	33 db                	xor    %ebx,%ebx            // fault here 2 - done
766:	33 c0 90                xor    %eax,%eax    nop     // fault here 3 - done

82e:	33 ff 90                xor    %edi,%edi    nop     // fault here 1 - done
83a:	33 c9                	xor    %ecx,%ecx            // fault here 2 -
859:	33 c0 90                xor    %eax,%eax    nop     // fault here 3 - done

// original
// ........ EA0421F2 894DBC89 ........ 0FA4F80D 31D121F0 448B65C8 ........
// 6DCC440F A4EB1B21 C74431D3 31FB895D ........ 89D30FA4 F30421C3 448B5DC8
// ........ E0440FA4 F00921DF 89C34431 ........ 13450FA4 E7124121 C74489C0
// 4131CF45 ........ F24589E7  F10E4121 F9448975 C8440FA4 ........ 410FA4D7
// 124121C7 ........
// modified
// ........ EA0433F6 894DBC89 ........ 0FA4F80D 31D133F6 448B65C8 ........
// 6DCC440F A4EB1B33 C04431D3 31FB895D ........ 89D30FA4 F30433C0 448B5DC8
// ........ E0440FA4 F00933C9 89C34431 ........ 13450FA4 E71233C0 904489C0
// 4131CF45 ........ F24589E7 F10E33FF 90448975 C8440FA4 ........ 410FA4D7
// 1233C090 ........


< DA440FA4 EA0433F6 894DBC89 DE440FA4 EE0389C1 440FA4F9 1231F189 DE440FA4 EE1E31F1 89C6440F A4FE0E44 0FA4F80D 31D133F6
< 448B65C8 4489DA44 0FA4F209 4431C08B 75D08975 D431C289 55C889F8 440FA4D8 13440FA4 DF124489 6DCC440F A4EB1B33 C04431D3

> DA440FA4 EA0421F2 894DBC89 DE440FA4 EE0389C1 440FA4F9 1231F189 DE440FA4 EE1E31F1 89C6440F A4FE0E44 0FA4F80D 31D121F0
> 448B65C8 4489DA44 0FA4F209 4431C08B 75D08975 D431C289 55C889F8 440FA4D8 13440FA4 DF124489 6DCC440F A4EB1B21 C74431D3

< 4489E044 0FA4F01E 4489DF89 5DBC4489 F9440FA4 E11131C1 4489D00F A4F00544 89D30FA4 F30433C0 448B5DC8 8955C889 FA440FA4
< DA124431 CA4489D0 0FA4F01E 31C231DA 4189F945 0FA4D90C 89FB440F A4DB0E89 FE440FA4 DF0D4489 E0440FA4 F00933DB 89C34431
< CB440FA4 DE1B31F3 4489EE31 FB4489F8 440FA4E0 13450FA4 E71233C0 904489C0 4131CF45 0FA4C21B 4589D58B 4DBC4531 FD4589E7

> 4489E044 0FA4F01E 4489DF89 5DBC4489 F9440FA4 E11131C1 4489D00F A4F00544 89D30FA4 F30421C3 448B5DC8 8955C889 FA440FA4
> DA124431 CA4489D0 0FA4F01E 31C231DA 4189F945 0FA4D90C 89FB440F A4DB0E89 FE440FA4 DF0D4489 E0440FA4 F00921DF 89C34431
> CB440FA4 DE1B31F3 4489EE31 FB4489F8 440FA4E0 13450FA4 E7124121 C74489C0 4131CF45 0FA4C21B 4589D58B 4DBC4531 FD4589E7

< A4E90441 89C2450F A4F21289 C1440FA4 F10E33FF 90448975 C8440FA4 F00D33C9 89C64189 D6448945 D4450FA4 C6094489 F80FA4D0
< 138955AC 410FA4D7 1233C090 4489D845 89E04989 C549F7D5 4D01C54C 89C14883 E1037421 48F7D948 8B7D984C 8B65A090 0FB61407

> A4E90441 89C2450F A4F21289 C1440FA4 F10E4121 F9448975 C8440FA4 F00D21C8 89C64189 D6448945 D4450FA4 C6094489 F80FA4D0
> 138955AC 410FA4D7 124121C7 4489D845 89E04989 C549F7D5 4D01C54C 89C14883 E1037421 48F7D948 8B7D984C 8B65A090 0FB61407


// original ontop modified below.
138955ac 410fa4d7 124121c7 4489d845 89e04989 c549f7d5 4d01c54c 89c14883 e1037421 48f7d948 8b7d984c 8b65a090 0fb61407 4489e044 0fa4f01e 4489df89 5dbc4489 f9440fa4 e11131c1 4489d00f a4f00544 89d30fa4 f30421c3 448b5dc8 8955c889 fa440fa4 448b65c8 4489da44 0fa4f209 4431c08b 75d08975 d431c289 55c889f8 440fa4d8 13440fa4 df124489 6dcc440f a4eb1b21 c74431d3 a4e90441 89c2450f a4f21289 c1440fa4 f10e4121 f9448975 c8440fa4 f00d21c8 89c64189 d6448945 d4450fa4 c6094489 f80fa4d0 cb440fa4 de1b31f3 4489ee31 fb4489f8 440fa4e0 13450fa4 e7124121 c74489c0 4131cf45 0fa4c21b 4589d58b 4dbc4531 fd4589e7 da124431 ca4489d0 0fa4f01e 31c231da 4189f945 0fa4d90c 89fb440f a4db0e89 fe440fa4 df0d4489 e0440fa4 f00921df 89c34431 da440fa4 ea0421f2 894dbc89 de440fa4 ee0389c1 440fa4f9 1231f189 de440fa4 ee1e31f1 89c6440f a4fe0e44 0fa4f80d 31d121f0
138955ac 410fa4d7 1233c090 4489d845 89e04989 c549f7d5 4d01c54c 89c14883 e1037421 48f7d948 8b7d984c 8b65a090 0fb61407 4489e044 0fa4f01e 4489df89 5dbc4489 f9440fa4 e11131c1 4489d00f a4f00544 89d30fa4 f30433c0 448b5dc8 8955c889 fa440fa4 448b65c8 4489da44 0fa4f209 4431c08b 75d08975 d431c289 55c889f8 440fa4d8 13440fa4 df124489 6dcc440f a4eb1b33 c04431d3 a4e90441 89c2450f a4f21289 c1440fa4 f10e33ff 90448975 c8440fa4 f00d33c9 89c64189 d6448945 d4450fa4 c6094489 f80fa4d0 cb440fa4 de1b31f3 4489ee31 fb4489f8 440fa4e0 13450fa4 e71233c0 904489c0 4131cf45 0fa4c21b 4589d58b 4dbc4531 fd4589e7 da124431 ca4489d0 0fa4f01e 31c231da 4189f945 0fa4d90c 89fb440f a4db0e89 fe440fa4 df0d4489 e0440fa4 f00933db 89c34431 da440fa4 ea0433f6 894dbc89 de440fa4 ee0389c1 440fa4f9 1231f189 de440fa4 ee1e31f1 89c6440f a4fe0e44 0fa4f80d 31d133f6