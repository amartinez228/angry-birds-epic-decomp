
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148f46f:
 148f46f:	push   ebp
 148f470:	mov    ebp,esp
 148f472:	push   ebx
 148f473:	push   edi
 148f474:	push   esi
 148f475:	and    esp,0xfffffff0
 148f478:	sub    esp,0xa0
 148f47e:	call   148f483
 148f483:	pop    ebx
 148f484:	add    ebx,0xa82ac1
 148f48a:	mov    al,BYTE PTR [ebx+0x6591c]
 148f490:	test   al,al
 148f492:	jne    148f4ab
 148f494:	lea    eax,[ebx-0x657558]
 148f49a:	mov    eax,DWORD PTR [eax]
 148f49c:	mov    DWORD PTR [esp],eax
 148f49f:	call   1ca6e8
 148f4a4:	mov    BYTE PTR [ebx+0x6591c],0x1
 148f4ab:	xorps  xmm0,xmm0
 148f4ae:	movaps XMMWORD PTR [esp+0x80],xmm0
 148f4b6:	mov    DWORD PTR [esp+0x7c],0x0
 148f4be:	lea    eax,[ebx+0x459c0]
 148f4c4:	mov    eax,DWORD PTR [eax]
 148f4c6:	mov    DWORD PTR [esp],eax
 148f4c9:	call   20bfb2
 148f4ce:	mov    esi,eax
 148f4d0:	mov    DWORD PTR [esp],esi
 148f4d3:	mov    DWORD PTR [esp+0x4],0x0
 148f4db:	call   124632e  ; System.Object::.ctor
 148f4e0:	test   esi,esi
 148f4e2:	je     148fc49
 148f4e8:	mov    eax,DWORD PTR [ebp+0x14]
 148f4eb:	mov    edi,DWORD PTR [ebp+0x10]
 148f4ee:	mov    ecx,DWORD PTR [ebp+0x8]
 148f4f1:	mov    DWORD PTR [esi+0xc],ecx
 148f4f4:	mov    DWORD PTR [esi+0x8],eax
 148f4f7:	lea    eax,[ebx+0x45890]
 148f4fd:	mov    DWORD PTR [esp+0x30],eax
 148f501:	mov    eax,DWORD PTR [eax]
 148f503:	mov    DWORD PTR [esp],eax
 148f506:	call   20bfb2
 148f50b:	mov    DWORD PTR [esp+0x4c],eax
 148f50f:	lea    ecx,[ebx+0x4a074]
 148f515:	mov    DWORD PTR [esp+0x2c],ecx
 148f519:	mov    ecx,DWORD PTR [ecx]
 148f51b:	mov    DWORD PTR [esp+0x4],ecx
 148f51f:	mov    DWORD PTR [esp],eax
 148f522:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 148f527:	mov    eax,edi
 148f529:	test   eax,eax
 148f52b:	mov    edi,esi
 148f52d:	je     148fc49
 148f533:	mov    eax,DWORD PTR [eax+0x58]
 148f536:	mov    DWORD PTR [esp+0x44],eax
 148f53a:	lea    eax,[ebx+0x4a48c]
 148f540:	mov    DWORD PTR [esp+0x48],ebx
 148f544:	mov    eax,DWORD PTR [eax]
 148f546:	mov    DWORD PTR [esp+0x40],eax
 148f54a:	lea    eax,[ebx+0x4588c]
 148f550:	mov    eax,DWORD PTR [eax]
 148f552:	mov    DWORD PTR [esp],eax
 148f555:	call   20bfb2
 148f55a:	mov    esi,eax
 148f55c:	mov    eax,DWORD PTR [esp+0x40]
 148f560:	mov    DWORD PTR [esp+0x78],eax
 148f564:	lea    eax,[ebx+0x4a054]
 148f56a:	mov    eax,DWORD PTR [eax]
 148f56c:	mov    DWORD PTR [esp+0xc],eax
 148f570:	mov    eax,DWORD PTR [esp+0x78]
 148f574:	mov    DWORD PTR [esp+0x8],eax
 148f578:	mov    DWORD PTR [esp+0x4],edi
 148f57c:	mov    DWORD PTR [esp+0x40],edi
 148f580:	mov    DWORD PTR [esp],esi
 148f583:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
 148f588:	lea    eax,[ebx+0x4a058]
 148f58e:	mov    eax,DWORD PTR [eax]
 148f590:	mov    DWORD PTR [esp+0xc],eax
 148f594:	mov    DWORD PTR [esp+0x8],esi
 148f598:	mov    eax,DWORD PTR [esp+0x44]
 148f59c:	mov    DWORD PTR [esp+0x4],eax
 148f5a0:	mov    DWORD PTR [esp],0x0
 148f5a7:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
 148f5ac:	lea    ecx,[ebx+0x4a080]
 148f5b2:	mov    ecx,DWORD PTR [ecx]
 148f5b4:	mov    DWORD PTR [esp+0x8],ecx
 148f5b8:	mov    DWORD PTR [esp+0x4],eax
 148f5bc:	mov    DWORD PTR [esp],0x0
 148f5c3:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
 148f5c8:	mov    esi,DWORD PTR [esp+0x4c]
 148f5cc:	test   esi,esi
 148f5ce:	je     148fc49
 148f5d4:	lea    ecx,[ebx+0x4a084]
 148f5da:	mov    ecx,DWORD PTR [ecx]
 148f5dc:	mov    DWORD PTR [esp+0x8],ecx
 148f5e0:	mov    DWORD PTR [esp+0x4],eax
 148f5e4:	mov    DWORD PTR [esp],esi
 148f5e7:	call   4c29d3  ; shared address: System.Collections.Generic.List`1<object>::AddRange | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::AddRange | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::AddRange | +15 other aliases
 148f5ec:	lea    eax,[ebx+0x4a228]
 148f5f2:	mov    eax,DWORD PTR [eax]
 148f5f4:	mov    DWORD PTR [esp+0x8],eax
 148f5f8:	mov    DWORD PTR [esp+0x4],esi
 148f5fc:	lea    eax,[esp+0x68]
 148f600:	mov    DWORD PTR [esp],eax
 148f603:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
 148f608:	sub    esp,0x4
 148f60b:	movsd  xmm0,QWORD PTR [esp+0x68]
 148f611:	movsd  xmm1,QWORD PTR [esp+0x70]
 148f617:	movsd  QWORD PTR [esp+0x88],xmm1
 148f620:	movsd  QWORD PTR [esp+0x80],xmm0
 148f629:	lea    eax,[ebx+0x4a230]
 148f62f:	mov    DWORD PTR [esp+0x34],eax
 148f633:	jmp    148f63c
 148f635:	mov    eax,DWORD PTR [esp+0x40]
 148f639:	mov    DWORD PTR [eax+0x8],edi
 148f63c:	mov    eax,DWORD PTR [esp+0x34]
 148f640:	mov    eax,DWORD PTR [eax]
 148f642:	mov    DWORD PTR [esp+0x4],eax
 148f646:	lea    eax,[esp+0x80]
 148f64d:	mov    DWORD PTR [esp],eax
 148f650:	call   447e4e
 148f655:	test   al,al
 148f657:	je     148f888
 148f65d:	lea    eax,[ebx+0x4a22c]
 148f663:	mov    eax,DWORD PTR [eax]
 148f665:	mov    DWORD PTR [esp+0x4],eax
 148f669:	lea    eax,[esp+0x80]
 148f670:	mov    DWORD PTR [esp],eax
 148f673:	call   447f1e
 148f678:	test   eax,eax
 148f67a:	je     148f892
 148f680:	lea    ecx,[ebx+0x45874]
 148f686:	mov    DWORD PTR [esp+0x44],ecx
 148f68a:	mov    ecx,DWORD PTR [ecx]
 148f68c:	mov    ebx,DWORD PTR [eax]
 148f68e:	mov    DWORD PTR [esp+0x4c],eax
 148f692:	movzx  edx,WORD PTR [ebx+0xaa]
 148f699:	test   edx,edx
 148f69b:	je     148f6ac
 148f69d:	mov    esi,DWORD PTR [ebx+0x4c]
 148f6a0:	xor    edi,edi
 148f6a2:	cmp    DWORD PTR [esi+edi*8],ecx
 148f6a5:	je     148f6ca
 148f6a7:	inc    edi
 148f6a8:	cmp    edi,edx
 148f6aa:	jb     148f6a2
 148f6ac:	mov    DWORD PTR [esp+0x4],ecx
 148f6b0:	mov    esi,DWORD PTR [esp+0x4c]
 148f6b4:	mov    DWORD PTR [esp],esi
 148f6b7:	mov    DWORD PTR [esp+0x8],0x1f
 148f6bf:	mov    ebx,DWORD PTR [esp+0x48]
 148f6c3:	call   1c1964
 148f6c8:	jmp    148f6dd
 148f6ca:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 148f6ce:	lea    eax,[ebx+eax*8+0x1ac]
 148f6d5:	mov    ebx,DWORD PTR [esp+0x48]
 148f6d9:	mov    esi,DWORD PTR [esp+0x4c]
 148f6dd:	mov    ecx,DWORD PTR [eax]
 148f6df:	mov    eax,DWORD PTR [eax+0x4]
 148f6e2:	mov    DWORD PTR [esp+0x4],eax
 148f6e6:	mov    DWORD PTR [esp],esi
 148f6e9:	call   ecx
 148f6eb:	fstp   DWORD PTR [esp+0x64]
 148f6ef:	movss  xmm0,DWORD PTR [esp+0x64]
 148f6f5:	movss  DWORD PTR [esp+0x3c],xmm0
 148f6fb:	mov    eax,DWORD PTR [esp+0x44]
 148f6ff:	mov    eax,DWORD PTR [eax]
 148f701:	mov    ecx,DWORD PTR [esi]
 148f703:	movzx  edx,WORD PTR [ecx+0xaa]
 148f70a:	test   edx,edx
 148f70c:	je     148f71d
 148f70e:	mov    esi,DWORD PTR [ecx+0x4c]
 148f711:	xor    edi,edi
 148f713:	cmp    DWORD PTR [esi+edi*8],eax
 148f716:	je     148f737
 148f718:	inc    edi
 148f719:	cmp    edi,edx
 148f71b:	jb     148f713
 148f71d:	mov    DWORD PTR [esp+0x4],eax
 148f721:	mov    edi,DWORD PTR [esp+0x4c]
 148f725:	mov    DWORD PTR [esp],edi
 148f728:	mov    DWORD PTR [esp+0x8],0x19
 148f730:	call   1c1964
 148f735:	jmp    148f746
 148f737:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 148f73b:	lea    eax,[ecx+eax*8+0x17c]
 148f742:	mov    edi,DWORD PTR [esp+0x4c]
 148f746:	mov    ecx,DWORD PTR [eax]
 148f748:	mov    eax,DWORD PTR [eax+0x4]
 148f74b:	mov    DWORD PTR [esp+0x4],eax
 148f74f:	mov    DWORD PTR [esp],edi
 148f752:	call   ecx
 148f754:	fstp   DWORD PTR [esp+0x60]
 148f758:	mov    eax,DWORD PTR [esp+0x40]
 148f75c:	mov    esi,DWORD PTR [eax+0x8]
 148f75f:	test   esi,esi
 148f761:	je     148f89c
 148f767:	mov    DWORD PTR [esp+0x4c],edi
 148f76b:	movss  xmm0,DWORD PTR [esp+0x60]
 148f771:	mov    eax,DWORD PTR [esp+0x44]
 148f775:	mov    eax,DWORD PTR [eax]
 148f777:	mov    ebx,DWORD PTR [esi]
 148f779:	movzx  edx,WORD PTR [ebx+0xaa]
 148f780:	test   edx,edx
 148f782:	je     148f793
 148f784:	mov    edi,DWORD PTR [ebx+0x4c]
 148f787:	xor    ecx,ecx
 148f789:	cmp    DWORD PTR [edi+ecx*8],eax
 148f78c:	je     148f7b3
 148f78e:	inc    ecx
 148f78f:	cmp    ecx,edx
 148f791:	jb     148f789
 148f793:	movss  DWORD PTR [esp+0x38],xmm0
 148f799:	mov    DWORD PTR [esp+0x4],eax
 148f79d:	mov    DWORD PTR [esp],esi
 148f7a0:	mov    DWORD PTR [esp+0x8],0x1f
 148f7a8:	mov    ebx,DWORD PTR [esp+0x48]
 148f7ac:	call   1c1964
 148f7b1:	jmp    148f7c8
 148f7b3:	movss  DWORD PTR [esp+0x38],xmm0
 148f7b9:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 148f7bd:	lea    eax,[ebx+eax*8+0x1ac]
 148f7c4:	mov    ebx,DWORD PTR [esp+0x48]
 148f7c8:	mov    ecx,DWORD PTR [eax]
 148f7ca:	mov    eax,DWORD PTR [eax+0x4]
 148f7cd:	mov    DWORD PTR [esp+0x4],eax
 148f7d1:	mov    DWORD PTR [esp],esi
 148f7d4:	call   ecx
 148f7d6:	fstp   DWORD PTR [esp+0x5c]
 148f7da:	mov    eax,DWORD PTR [esp+0x40]
 148f7de:	mov    esi,DWORD PTR [eax+0x8]
 148f7e1:	test   esi,esi
 148f7e3:	je     148f8a6
 148f7e9:	movss  xmm0,DWORD PTR [esp+0x5c]
 148f7ef:	mov    eax,DWORD PTR [esp+0x44]
 148f7f3:	mov    eax,DWORD PTR [eax]
 148f7f5:	mov    ecx,DWORD PTR [esi]
 148f7f7:	movzx  edx,WORD PTR [ecx+0xaa]
 148f7fe:	test   edx,edx
 148f800:	je     148f811
 148f802:	mov    edi,DWORD PTR [ecx+0x4c]
 148f805:	xor    ebx,ebx
 148f807:	cmp    DWORD PTR [edi+ebx*8],eax
 148f80a:	je     148f835
 148f80c:	inc    ebx
 148f80d:	cmp    ebx,edx
 148f80f:	jb     148f807
 148f811:	movss  DWORD PTR [esp+0x44],xmm0
 148f817:	mov    DWORD PTR [esp+0x4],eax
 148f81b:	mov    DWORD PTR [esp],esi
 148f81e:	mov    DWORD PTR [esp+0x8],0x19
 148f826:	mov    ebx,DWORD PTR [esp+0x48]
 148f82a:	call   1c1964
 148f82f:	mov    edi,DWORD PTR [esp+0x4c]
 148f833:	jmp    148f84e
 148f835:	movss  DWORD PTR [esp+0x44],xmm0
 148f83b:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
 148f83f:	lea    eax,[ecx+eax*8+0x17c]
 148f846:	mov    ebx,DWORD PTR [esp+0x48]
 148f84a:	mov    edi,DWORD PTR [esp+0x4c]
 148f84e:	mov    ecx,DWORD PTR [eax]
 148f850:	mov    eax,DWORD PTR [eax+0x4]
 148f853:	mov    DWORD PTR [esp+0x4],eax
 148f857:	mov    DWORD PTR [esp],esi
 148f85a:	call   ecx
 148f85c:	fstp   DWORD PTR [esp+0x58]
 148f860:	movss  xmm0,DWORD PTR [esp+0x3c]
 148f866:	divss  xmm0,DWORD PTR [esp+0x38]
 148f86c:	movss  xmm1,DWORD PTR [esp+0x44]
 148f872:	divss  xmm1,DWORD PTR [esp+0x58]
 148f878:	ucomiss xmm1,xmm0
 148f87b:	jbe    148f63c
 148f881:	jmp    148f635
 148f886:	jmp    148f8b0
 148f888:	xor    esi,esi
 148f88a:	mov    al,0x1
 148f88c:	mov    DWORD PTR [esp+0x4c],eax
 148f890:	jmp    148f8d0
 148f892:	call   1fbc48
 148f897:	call   14943fc
 148f89c:	call   1fbc48
 148f8a1:	call   14943fc
 148f8a6:	call   1fbc48
 148f8ab:	jmp    148fc5b
 148f8b0:	cmp    edx,0x1
 148f8b3:	jne    148fc53
 148f8b9:	mov    DWORD PTR [esp],eax
 148f8bc:	call   1ba3f0
 148f8c1:	mov    esi,DWORD PTR [eax]
 148f8c3:	call   1b9ce0
 148f8c8:	mov    DWORD PTR [esp+0x4c],0x0
 148f8d0:	lea    eax,[ebx+0x4a234]
 148f8d6:	mov    eax,DWORD PTR [eax]
 148f8d8:	mov    DWORD PTR [esp+0x4],eax
 148f8dc:	lea    eax,[esp+0x80]
 148f8e3:	mov    DWORD PTR [esp],eax
 148f8e6:	call   447df6
 148f8eb:	mov    eax,DWORD PTR [esp+0x4c]
 148f8ef:	test   al,al
 148f8f1:	jne    148f8ff
 148f8f3:	test   esi,esi
 148f8f5:	je     148f8ff
 148f8f7:	mov    DWORD PTR [esp],esi
 148f8fa:	call   1fbb20
 148f8ff:	mov    DWORD PTR [esp+0x48],ebx
 148f903:	mov    eax,DWORD PTR [esp+0x40]
 148f907:	mov    edi,DWORD PTR [eax+0x8]
 148f90a:	test   edi,edi
 148f90c:	je     148fc45
 148f912:	mov    eax,DWORD PTR [esp+0x48]
 148f916:	lea    eax,[eax+0x45874]
 148f91c:	mov    DWORD PTR [esp+0x44],eax
 148f920:	mov    eax,DWORD PTR [eax]
 148f922:	mov    ecx,DWORD PTR [edi]
 148f924:	movzx  edx,WORD PTR [ecx+0xaa]
 148f92b:	test   edx,edx
 148f92d:	je     148f93e
 148f92f:	mov    esi,DWORD PTR [ecx+0x4c]
 148f932:	xor    ebx,ebx
 148f934:	cmp    DWORD PTR [esi+ebx*8],eax
 148f937:	je     148f958
 148f939:	inc    ebx
 148f93a:	cmp    ebx,edx
 148f93c:	jb     148f934
 148f93e:	mov    DWORD PTR [esp+0x4],eax
 148f942:	mov    DWORD PTR [esp],edi
 148f945:	mov    DWORD PTR [esp+0x8],0x1f
 148f94d:	mov    ebx,DWORD PTR [esp+0x48]
 148f951:	call   1c1964
 148f956:	jmp    148f967
 148f958:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
 148f95c:	lea    eax,[ecx+eax*8+0x1ac]
 148f963:	mov    ebx,DWORD PTR [esp+0x48]
 148f967:	mov    ecx,DWORD PTR [eax+0x4]
 148f96a:	mov    DWORD PTR [esp+0x4],ecx
 148f96e:	mov    DWORD PTR [esp],edi
 148f971:	call   DWORD PTR [eax]
 148f973:	fstp   DWORD PTR [esp+0x54]
 148f977:	xorps  xmm0,xmm0
 148f97a:	ucomiss xmm0,DWORD PTR [esp+0x54]
 148f97f:	jae    148fc3d
 148f985:	mov    DWORD PTR [esp+0x7c],0x0
 148f98d:	mov    ecx,DWORD PTR [ebp+0x8]
 148f990:	mov    eax,DWORD PTR [ecx+0xc]
 148f993:	test   eax,eax
 148f995:	je     148fc49
 148f99b:	mov    ecx,DWORD PTR [ecx+0x8]
 148f99e:	test   ecx,ecx
 148f9a0:	movss  xmm0,DWORD PTR [ebp+0xc]
 148f9a5:	je     148fc49
 148f9ab:	mulss  xmm0,DWORD PTR [eax+0x8c]
 148f9b3:	movss  DWORD PTR [esp+0x4c],xmm0
 148f9b9:	mov    DWORD PTR [esp],ecx
 148f9bc:	mov    DWORD PTR [esp+0x4],0x0
 148f9c4:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148f9c9:	test   eax,eax
 148f9cb:	je     148fc49
 148f9d1:	movss  xmm0,DWORD PTR [esp+0x4c]
 148f9d7:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 148f9df:	movss  DWORD PTR [esp+0x4c],xmm0
 148f9e5:	lea    esi,[ebx+0x56d04]  ; literal "intensity"
 148f9eb:	mov    ecx,DWORD PTR [esi]
 148f9ed:	lea    edx,[ebx+0x4a014]
 148f9f3:	mov    edx,DWORD PTR [edx]
 148f9f5:	mov    DWORD PTR [esp+0x8],edx
 148f9f9:	mov    DWORD PTR [esp+0x4],ecx
 148f9fd:	mov    DWORD PTR [esp],eax
 148fa00:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 148fa05:	xorps  xmm0,xmm0
 148fa08:	movss  xmm1,DWORD PTR [esp+0x4c]
 148fa0e:	ucomiss xmm1,xmm0
 148fa11:	jbe    148fb54
 148fa17:	test   al,al
 148fa19:	je     148fb54
 148fa1f:	mov    DWORD PTR [esp+0x4],0x0
 148fa27:	mov    DWORD PTR [esp],0x0
 148fa2e:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
 148fa33:	mov    edi,eax
 148fa35:	mov    eax,DWORD PTR [ebp+0x8]
 148fa38:	mov    eax,DWORD PTR [eax+0x8]
 148fa3b:	test   eax,eax
 148fa3d:	je     148fc49
 148fa43:	mov    DWORD PTR [esp],eax
 148fa46:	mov    DWORD PTR [esp+0x4],0x0
 148fa4e:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148fa53:	test   eax,eax
 148fa55:	je     148fc49
 148fa5b:	mov    ecx,DWORD PTR [esi]
 148fa5d:	lea    edx,[ebx+0x4a0a8]
 148fa63:	mov    edx,DWORD PTR [edx]
 148fa65:	mov    DWORD PTR [esp+0x8],edx
 148fa69:	mov    DWORD PTR [esp+0x4],ecx
 148fa6d:	mov    DWORD PTR [esp],eax
 148fa70:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
 148fa75:	fstp   DWORD PTR [esp+0x50]
 148fa79:	test   edi,edi
 148fa7b:	je     148fc49
 148fa81:	movss  xmm0,DWORD PTR [esp+0x50]
 148fa87:	ucomiss xmm0,DWORD PTR [ebx-0x64fc28]
 148fa8e:	setnp  al
 148fa91:	sete   cl
 148fa94:	lea    edx,[ebx+0x56d0c]  ; literal "Heal_Strong"
 148fa9a:	test   al,cl
 148fa9c:	cmovne edx,DWORD PTR [ebx-0x140]
 148faa3:	mov    eax,DWORD PTR [edx]
 148faa5:	lea    ecx,[esp+0x7c]
 148faa9:	mov    DWORD PTR [esp+0x8],ecx
 148faad:	mov    DWORD PTR [esp+0x4],eax
 148fab1:	mov    DWORD PTR [esp],edi
 148fab4:	mov    DWORD PTR [esp+0xc],0x0
 148fabc:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
 148fac1:	test   al,al
 148fac3:	je     148fb54
 148fac9:	mov    eax,DWORD PTR [ebp+0x8]
 148facc:	mov    esi,DWORD PTR [eax+0xc]
 148facf:	mov    eax,DWORD PTR [esp+0x7c]
 148fad3:	mov    DWORD PTR [esp+0x3c],eax
 148fad7:	mov    eax,DWORD PTR [esp+0x30]
 148fadb:	mov    eax,DWORD PTR [eax]
 148fadd:	mov    DWORD PTR [esp],eax
 148fae0:	call   20bfb2
 148fae5:	mov    edi,eax
 148fae7:	mov    eax,DWORD PTR [esp+0x2c]
 148faeb:	mov    eax,DWORD PTR [eax]
 148faed:	mov    DWORD PTR [esp+0x4],eax
 148faf1:	mov    DWORD PTR [esp],edi
 148faf4:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 148faf9:	test   edi,edi
 148fafb:	je     148fc49
 148fb01:	mov    eax,DWORD PTR [esp+0x40]
 148fb05:	mov    eax,DWORD PTR [eax+0x8]
 148fb08:	lea    ecx,[ebx+0x4a078]
 148fb0e:	mov    ecx,DWORD PTR [ecx]
 148fb10:	mov    DWORD PTR [esp+0x8],ecx
 148fb14:	mov    DWORD PTR [esp+0x4],eax
 148fb18:	mov    DWORD PTR [esp],edi
 148fb1b:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 148fb20:	test   esi,esi
 148fb22:	je     148fc49
 148fb28:	mov    DWORD PTR [esp+0xc],edi
 148fb2c:	mov    eax,DWORD PTR [esp+0x3c]
 148fb30:	mov    DWORD PTR [esp+0x8],eax
 148fb34:	mov    DWORD PTR [esp],esi
 148fb37:	mov    DWORD PTR [esp+0x14],0x0
 148fb3f:	mov    DWORD PTR [esp+0x10],0x0
 148fb47:	mov    DWORD PTR [esp+0x4],0x3
 148fb4f:	call   ec9974  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
 148fb54:	mov    eax,DWORD PTR [esp+0x40]
 148fb58:	mov    edi,DWORD PTR [eax+0x8]
 148fb5b:	test   edi,edi
 148fb5d:	je     148fc45
 148fb63:	mov    eax,DWORD PTR [esp+0x44]
 148fb67:	mov    eax,DWORD PTR [eax]
 148fb69:	mov    ecx,DWORD PTR [edi]
 148fb6b:	movzx  edx,WORD PTR [ecx+0xaa]
 148fb72:	test   edx,edx
 148fb74:	je     148fb8b
 148fb76:	mov    esi,DWORD PTR [ecx+0x4c]
 148fb79:	xor    ebx,ebx
 148fb7b:	movss  xmm0,DWORD PTR [esp+0x4c]
 148fb81:	cmp    DWORD PTR [esi+ebx*8],eax
 148fb84:	je     148fbab
 148fb86:	inc    ebx
 148fb87:	cmp    ebx,edx
 148fb89:	jb     148fb81
 148fb8b:	mov    DWORD PTR [esp+0x4],eax
 148fb8f:	mov    DWORD PTR [esp],edi
 148fb92:	mov    DWORD PTR [esp+0x8],0x70
 148fb9a:	mov    ebx,DWORD PTR [esp+0x48]
 148fb9e:	call   1c1964
 148fba3:	movss  xmm0,DWORD PTR [esp+0x4c]
 148fba9:	jmp    148fbba
 148fbab:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
 148fbaf:	lea    eax,[ecx+eax*8+0x434]
 148fbb6:	mov    ebx,DWORD PTR [esp+0x48]
 148fbba:	mov    ecx,DWORD PTR [eax+0x4]
 148fbbd:	mov    DWORD PTR [esp+0xc],ecx
 148fbc1:	mov    ecx,DWORD PTR [ebp+0x14]
 148fbc4:	mov    DWORD PTR [esp+0x8],ecx
 148fbc8:	movss  DWORD PTR [esp+0x4],xmm0
 148fbce:	mov    DWORD PTR [esp],edi
 148fbd1:	call   DWORD PTR [eax]
 148fbd3:	mov    DWORD PTR [esp+0x4],0x0
 148fbdb:	mov    DWORD PTR [esp],0x0
 148fbe2:	call   109314e  ; DIContainerLogic::GetBattleService
 148fbe7:	test   eax,eax
 148fbe9:	mov    ecx,DWORD PTR [esp+0x40]
 148fbed:	je     148fc49
 148fbef:	mov    ecx,DWORD PTR [ecx+0x8]
 148fbf2:	mov    edx,DWORD PTR [ebp+0x10]
 148fbf5:	mov    DWORD PTR [esp+0x8],edx
 148fbf9:	mov    DWORD PTR [esp+0x4],ecx
 148fbfd:	mov    DWORD PTR [esp],eax
 148fc00:	mov    DWORD PTR [esp+0x24],0x0
 148fc08:	mov    DWORD PTR [esp+0x20],0x0
 148fc10:	mov    DWORD PTR [esp+0x1c],0x0
 148fc18:	mov    DWORD PTR [esp+0x18],0x0
 148fc20:	mov    DWORD PTR [esp+0x14],0x0
 148fc28:	mov    DWORD PTR [esp+0x10],0x0
 148fc30:	mov    DWORD PTR [esp+0xc],0x1
 148fc38:	call   50a1af  ; ABH.Services.Logic.BattleService::HealCurrentTurn
 148fc3d:	lea    esp,[ebp-0xc]
 148fc40:	pop    esi
 148fc41:	pop    edi
 148fc42:	pop    ebx
 148fc43:	pop    ebp
 148fc44:	ret
 148fc45:	mov    ebx,DWORD PTR [esp+0x48]
 148fc49:	call   1fbc48
 148fc4e:	call   14943fc
 148fc53:	mov    DWORD PTR [esp],eax
 148fc56:	call   1b9bd0
 148fc5b:	call   14943fc