
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148e5c7:
 148e5c7:	push   ebp
 148e5c8:	mov    ebp,esp
 148e5ca:	push   ebx
 148e5cb:	push   edi
 148e5cc:	push   esi
 148e5cd:	and    esp,0xfffffff0
 148e5d0:	sub    esp,0x90
 148e5d6:	call   148e5db
 148e5db:	pop    ebx
 148e5dc:	add    ebx,0xa83969
 148e5e2:	mov    al,BYTE PTR [ebx+0x65917]
 148e5e8:	test   al,al
 148e5ea:	jne    148e603
 148e5ec:	lea    eax,[ebx-0x65755c]
 148e5f2:	mov    eax,DWORD PTR [eax]
 148e5f4:	mov    DWORD PTR [esp],eax
 148e5f7:	call   1ca6e8
 148e5fc:	mov    BYTE PTR [ebx+0x65917],0x1
 148e603:	xorps  xmm0,xmm0
 148e606:	movaps XMMWORD PTR [esp+0x70],xmm0
 148e60b:	mov    DWORD PTR [esp+0x6c],0x0
 148e613:	lea    eax,[ebx+0x459b8]
 148e619:	mov    eax,DWORD PTR [eax]
 148e61b:	mov    DWORD PTR [esp],eax
 148e61e:	call   20bfb2
 148e623:	mov    edi,eax
 148e625:	mov    DWORD PTR [esp],edi
 148e628:	mov    DWORD PTR [esp+0x4],0x0
 148e630:	mov    esi,ebx
 148e632:	call   124632e  ; System.Object::.ctor
 148e637:	test   edi,edi
 148e639:	je     148ec1e
 148e63f:	mov    eax,DWORD PTR [ebp+0x8]
 148e642:	mov    DWORD PTR [edi+0xc],eax
 148e645:	xorps  xmm0,xmm0
 148e648:	ucomiss xmm0,DWORD PTR [ebp+0xc]
 148e64c:	jae    148ec16
 148e652:	mov    eax,DWORD PTR [ebp+0x14]
 148e655:	mov    DWORD PTR [edi+0x8],eax
 148e658:	mov    ebx,esi
 148e65a:	lea    eax,[ebx+0x45890]
 148e660:	mov    DWORD PTR [esp+0x38],eax
 148e664:	mov    eax,DWORD PTR [eax]
 148e666:	mov    DWORD PTR [esp],eax
 148e669:	call   20bfb2
 148e66e:	mov    DWORD PTR [esp+0x48],eax
 148e672:	lea    ecx,[ebx+0x4a074]
 148e678:	mov    DWORD PTR [esp+0x34],ecx
 148e67c:	mov    ecx,DWORD PTR [ecx]
 148e67e:	mov    DWORD PTR [esp+0x4],ecx
 148e682:	mov    DWORD PTR [esp],eax
 148e685:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 148e68a:	mov    eax,DWORD PTR [ebp+0x10]
 148e68d:	test   eax,eax
 148e68f:	je     148ec20
 148e695:	mov    eax,DWORD PTR [eax+0x58]
 148e698:	mov    DWORD PTR [esp+0x44],eax
 148e69c:	lea    eax,[ebx+0x4a484]
 148e6a2:	mov    eax,DWORD PTR [eax]
 148e6a4:	mov    DWORD PTR [esp+0x40],eax
 148e6a8:	lea    eax,[ebx+0x4588c]
 148e6ae:	mov    eax,DWORD PTR [eax]
 148e6b0:	mov    DWORD PTR [esp],eax
 148e6b3:	call   20bfb2
 148e6b8:	mov    esi,eax
 148e6ba:	mov    eax,DWORD PTR [esp+0x40]
 148e6be:	mov    DWORD PTR [esp+0x68],eax
 148e6c2:	lea    eax,[ebx+0x4a054]
 148e6c8:	mov    eax,DWORD PTR [eax]
 148e6ca:	mov    DWORD PTR [esp+0xc],eax
 148e6ce:	mov    eax,DWORD PTR [esp+0x68]
 148e6d2:	mov    DWORD PTR [esp+0x8],eax
 148e6d6:	mov    DWORD PTR [esp+0x4],edi
 148e6da:	mov    DWORD PTR [esp],esi
 148e6dd:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
 148e6e2:	lea    eax,[ebx+0x4a058]
 148e6e8:	mov    eax,DWORD PTR [eax]
 148e6ea:	mov    DWORD PTR [esp+0xc],eax
 148e6ee:	mov    DWORD PTR [esp+0x8],esi
 148e6f2:	mov    eax,DWORD PTR [esp+0x44]
 148e6f6:	mov    DWORD PTR [esp+0x4],eax
 148e6fa:	mov    DWORD PTR [esp],0x0
 148e701:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
 148e706:	lea    ecx,[ebx+0x4a080]
 148e70c:	mov    ecx,DWORD PTR [ecx]
 148e70e:	mov    DWORD PTR [esp+0x8],ecx
 148e712:	mov    DWORD PTR [esp+0x4],eax
 148e716:	mov    DWORD PTR [esp],0x0
 148e71d:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
 148e722:	mov    esi,DWORD PTR [esp+0x48]
 148e726:	test   esi,esi
 148e728:	je     148ec20
 148e72e:	lea    ecx,[ebx+0x4a084]
 148e734:	mov    ecx,DWORD PTR [ecx]
 148e736:	mov    DWORD PTR [esp+0x8],ecx
 148e73a:	mov    DWORD PTR [esp+0x4],eax
 148e73e:	mov    DWORD PTR [esp],esi
 148e741:	call   4c29d3  ; shared address: System.Collections.Generic.List`1<object>::AddRange | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::AddRange | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::AddRange | +15 other aliases
 148e746:	lea    eax,[ebx+0x4a228]
 148e74c:	mov    eax,DWORD PTR [eax]
 148e74e:	mov    DWORD PTR [esp+0x8],eax
 148e752:	mov    DWORD PTR [esp+0x4],esi
 148e756:	lea    eax,[esp+0x58]
 148e75a:	mov    DWORD PTR [esp],eax
 148e75d:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
 148e762:	sub    esp,0x4
 148e765:	movsd  xmm0,QWORD PTR [esp+0x58]
 148e76b:	movsd  xmm1,QWORD PTR [esp+0x60]
 148e771:	movsd  QWORD PTR [esp+0x78],xmm1
 148e777:	movsd  QWORD PTR [esp+0x70],xmm0
 148e77d:	lea    eax,[ebx+0x4a230]
 148e783:	mov    DWORD PTR [esp+0x44],eax
 148e787:	movss  xmm0,DWORD PTR [ebx-0x64fc2c]
 148e78f:	mov    DWORD PTR [esp+0x4c],ebx
 148e793:	movss  DWORD PTR [esp+0x3c],xmm0
 148e799:	mov    eax,DWORD PTR [esp+0x44]
 148e79d:	mov    eax,DWORD PTR [eax]
 148e79f:	mov    DWORD PTR [esp+0x4],eax
 148e7a3:	lea    eax,[esp+0x70]
 148e7a7:	mov    DWORD PTR [esp],eax
 148e7aa:	mov    ebx,DWORD PTR [esp+0x4c]
 148e7ae:	call   447e4e
 148e7b3:	test   al,al
 148e7b5:	je     148eb30
 148e7bb:	mov    ebx,DWORD PTR [esp+0x4c]
 148e7bf:	lea    eax,[ebx+0x4a22c]
 148e7c5:	mov    eax,DWORD PTR [eax]
 148e7c7:	mov    DWORD PTR [esp+0x4],eax
 148e7cb:	lea    eax,[esp+0x70]
 148e7cf:	mov    DWORD PTR [esp],eax
 148e7d2:	call   447f1e
 148e7d7:	test   eax,eax
 148e7d9:	je     148eb41
 148e7df:	mov    ecx,DWORD PTR [esp+0x4c]
 148e7e3:	lea    ecx,[ecx+0x45874]
 148e7e9:	mov    DWORD PTR [esp+0x40],ecx
 148e7ed:	mov    ecx,DWORD PTR [ecx]
 148e7ef:	mov    ebx,DWORD PTR [eax]
 148e7f1:	mov    DWORD PTR [esp+0x48],eax
 148e7f5:	movzx  edx,WORD PTR [ebx+0xaa]
 148e7fc:	test   edx,edx
 148e7fe:	je     148e80f
 148e800:	mov    edi,DWORD PTR [ebx+0x4c]
 148e803:	xor    esi,esi
 148e805:	cmp    DWORD PTR [edi+esi*8],ecx
 148e808:	je     148e82d
 148e80a:	inc    esi
 148e80b:	cmp    esi,edx
 148e80d:	jb     148e805
 148e80f:	mov    DWORD PTR [esp+0x4],ecx
 148e813:	mov    esi,DWORD PTR [esp+0x48]
 148e817:	mov    DWORD PTR [esp],esi
 148e81a:	mov    DWORD PTR [esp+0x8],0x1f
 148e822:	mov    ebx,DWORD PTR [esp+0x4c]
 148e826:	call   1c1964
 148e82b:	jmp    148e83c
 148e82d:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 148e831:	lea    eax,[ebx+eax*8+0x1ac]
 148e838:	mov    esi,DWORD PTR [esp+0x48]
 148e83c:	mov    ecx,DWORD PTR [eax]
 148e83e:	mov    eax,DWORD PTR [eax+0x4]
 148e841:	mov    DWORD PTR [esp+0x4],eax
 148e845:	mov    DWORD PTR [esp],esi
 148e848:	mov    ebx,DWORD PTR [esp+0x4c]
 148e84c:	call   ecx
 148e84e:	fstp   DWORD PTR [esp+0x54]
 148e852:	xorps  xmm0,xmm0
 148e855:	ucomiss xmm0,DWORD PTR [esp+0x54]
 148e85a:	jae    148e799
 148e860:	mov    DWORD PTR [esp+0x6c],0x0
 148e868:	mov    eax,DWORD PTR [ebp+0x8]
 148e86b:	mov    eax,DWORD PTR [eax+0x8]
 148e86e:	test   eax,eax
 148e870:	je     148eb4f
 148e876:	mov    DWORD PTR [esp],eax
 148e879:	mov    DWORD PTR [esp+0x4],0x0
 148e881:	mov    ebx,DWORD PTR [esp+0x4c]
 148e885:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148e88a:	test   eax,eax
 148e88c:	je     148eb5d
 148e892:	mov    ebx,DWORD PTR [esp+0x4c]
 148e896:	lea    edi,[ebx+0x56d04]  ; literal "intensity"
 148e89c:	mov    ecx,DWORD PTR [edi]
 148e89e:	lea    edx,[ebx+0x4a014]
 148e8a4:	mov    edx,DWORD PTR [edx]
 148e8a6:	mov    DWORD PTR [esp+0x8],edx
 148e8aa:	mov    DWORD PTR [esp+0x4],ecx
 148e8ae:	mov    DWORD PTR [esp],eax
 148e8b1:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 148e8b6:	test   al,al
 148e8b8:	je     148ea1a
 148e8be:	mov    DWORD PTR [esp+0x4],0x0
 148e8c6:	mov    DWORD PTR [esp],0x0
 148e8cd:	mov    ebx,DWORD PTR [esp+0x4c]
 148e8d1:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
 148e8d6:	mov    DWORD PTR [esp+0x48],eax
 148e8da:	mov    eax,DWORD PTR [ebp+0x8]
 148e8dd:	mov    eax,DWORD PTR [eax+0x8]
 148e8e0:	test   eax,eax
 148e8e2:	je     148eb87
 148e8e8:	mov    DWORD PTR [esp],eax
 148e8eb:	mov    DWORD PTR [esp+0x4],0x0
 148e8f3:	mov    ebx,DWORD PTR [esp+0x4c]
 148e8f7:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148e8fc:	test   eax,eax
 148e8fe:	je     148eb95
 148e904:	mov    ecx,DWORD PTR [edi]
 148e906:	mov    ebx,DWORD PTR [esp+0x4c]
 148e90a:	lea    edx,[ebx+0x4a0a8]
 148e910:	mov    edx,DWORD PTR [edx]
 148e912:	mov    DWORD PTR [esp+0x8],edx
 148e916:	mov    DWORD PTR [esp+0x4],ecx
 148e91a:	mov    DWORD PTR [esp],eax
 148e91d:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
 148e922:	fstp   DWORD PTR [esp+0x50]
 148e926:	mov    edi,DWORD PTR [esp+0x48]
 148e92a:	test   edi,edi
 148e92c:	je     148eba3
 148e932:	movss  xmm0,DWORD PTR [esp+0x50]
 148e938:	mov    ebx,DWORD PTR [esp+0x4c]
 148e93c:	ucomiss xmm0,DWORD PTR [ebx-0x64fc28]
 148e943:	setnp  al
 148e946:	sete   cl
 148e949:	lea    edx,[ebx+0x56d0c]  ; literal "Heal_Strong"
 148e94f:	test   al,cl
 148e951:	cmovne edx,DWORD PTR [ebx-0x140]
 148e958:	mov    eax,DWORD PTR [edx]
 148e95a:	lea    ecx,[esp+0x6c]
 148e95e:	mov    DWORD PTR [esp+0x8],ecx
 148e962:	mov    DWORD PTR [esp+0x4],eax
 148e966:	mov    DWORD PTR [esp],edi
 148e969:	mov    DWORD PTR [esp+0xc],0x0
 148e971:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
 148e976:	test   al,al
 148e978:	je     148ea1a
 148e97e:	mov    eax,DWORD PTR [ebp+0x8]
 148e981:	mov    eax,DWORD PTR [eax+0xc]
 148e984:	mov    DWORD PTR [esp+0x48],eax
 148e988:	mov    eax,DWORD PTR [esp+0x6c]
 148e98c:	mov    DWORD PTR [esp+0x30],eax
 148e990:	mov    eax,DWORD PTR [esp+0x38]
 148e994:	mov    eax,DWORD PTR [eax]
 148e996:	mov    DWORD PTR [esp],eax
 148e999:	mov    ebx,DWORD PTR [esp+0x4c]
 148e99d:	call   20bfb2
 148e9a2:	mov    edi,eax
 148e9a4:	mov    eax,DWORD PTR [esp+0x34]
 148e9a8:	mov    eax,DWORD PTR [eax]
 148e9aa:	mov    DWORD PTR [esp+0x4],eax
 148e9ae:	mov    DWORD PTR [esp],edi
 148e9b1:	mov    ebx,DWORD PTR [esp+0x4c]
 148e9b5:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 148e9ba:	test   edi,edi
 148e9bc:	je     148ebb1
 148e9c2:	mov    ebx,DWORD PTR [esp+0x4c]
 148e9c6:	lea    eax,[ebx+0x4a078]
 148e9cc:	mov    eax,DWORD PTR [eax]
 148e9ce:	mov    DWORD PTR [esp+0x8],eax
 148e9d2:	mov    DWORD PTR [esp+0x4],esi
 148e9d6:	mov    DWORD PTR [esp],edi
 148e9d9:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 148e9de:	mov    eax,DWORD PTR [esp+0x48]
 148e9e2:	test   eax,eax
 148e9e4:	je     148ebbf
 148e9ea:	mov    DWORD PTR [esp+0xc],edi
 148e9ee:	mov    ecx,DWORD PTR [esp+0x30]
 148e9f2:	mov    DWORD PTR [esp+0x8],ecx
 148e9f6:	mov    DWORD PTR [esp],eax
 148e9f9:	mov    DWORD PTR [esp+0x14],0x0
 148ea01:	mov    DWORD PTR [esp+0x10],0x0
 148ea09:	mov    DWORD PTR [esp+0x4],0x3
 148ea11:	mov    ebx,DWORD PTR [esp+0x4c]
 148ea15:	call   ec9974  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
 148ea1a:	mov    eax,DWORD PTR [ebp+0x8]
 148ea1d:	mov    ecx,DWORD PTR [eax+0xc]
 148ea20:	test   ecx,ecx
 148ea22:	je     148eb6b
 148ea28:	mov    eax,DWORD PTR [esp+0x40]
 148ea2c:	mov    eax,DWORD PTR [eax]
 148ea2e:	movss  xmm0,DWORD PTR [ecx+0x8c]
 148ea36:	mulss  xmm0,DWORD PTR [ebp+0xc]
 148ea3b:	mov    ecx,DWORD PTR [esi]
 148ea3d:	mov    ebx,esi
 148ea3f:	movzx  edx,WORD PTR [ecx+0xaa]
 148ea46:	test   edx,edx
 148ea48:	je     148ea59
 148ea4a:	mov    edi,DWORD PTR [ecx+0x4c]
 148ea4d:	xor    esi,esi
 148ea4f:	cmp    DWORD PTR [edi+esi*8],eax
 148ea52:	je     148ea81
 148ea54:	inc    esi
 148ea55:	cmp    esi,edx
 148ea57:	jb     148ea4f
 148ea59:	movss  DWORD PTR [esp+0x48],xmm0
 148ea5f:	mov    DWORD PTR [esp+0x4],eax
 148ea63:	mov    esi,ebx
 148ea65:	mov    DWORD PTR [esp],esi
 148ea68:	mov    DWORD PTR [esp+0x8],0x70
 148ea70:	mov    ebx,DWORD PTR [esp+0x4c]
 148ea74:	call   1c1964
 148ea79:	movss  xmm0,DWORD PTR [esp+0x48]
 148ea7f:	jmp    148ea8e
 148ea81:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 148ea85:	lea    eax,[ecx+eax*8+0x434]
 148ea8c:	mov    esi,ebx
 148ea8e:	divss  xmm0,DWORD PTR [esp+0x3c]
 148ea94:	mov    ecx,DWORD PTR [eax]
 148ea96:	mov    eax,DWORD PTR [eax+0x4]
 148ea99:	mov    DWORD PTR [esp+0xc],eax
 148ea9d:	mov    eax,DWORD PTR [ebp+0x14]
 148eaa0:	mov    DWORD PTR [esp+0x8],eax
 148eaa4:	movss  DWORD PTR [esp+0x4],xmm0
 148eaaa:	mov    DWORD PTR [esp],esi
 148eaad:	mov    ebx,DWORD PTR [esp+0x4c]
 148eab1:	call   ecx
 148eab3:	mov    DWORD PTR [esp+0x4],0x0
 148eabb:	mov    DWORD PTR [esp],0x0
 148eac2:	mov    ebx,DWORD PTR [esp+0x4c]
 148eac6:	call   109314e  ; DIContainerLogic::GetBattleService
 148eacb:	test   eax,eax
 148eacd:	je     148eb79
 148ead3:	mov    ecx,DWORD PTR [ebp+0x10]
 148ead6:	mov    DWORD PTR [esp+0x8],ecx
 148eada:	mov    DWORD PTR [esp+0x4],esi
 148eade:	mov    DWORD PTR [esp],eax
 148eae1:	mov    DWORD PTR [esp+0x24],0x0
 148eae9:	mov    DWORD PTR [esp+0x20],0x0
 148eaf1:	mov    DWORD PTR [esp+0x1c],0x0
 148eaf9:	mov    DWORD PTR [esp+0x18],0x0
 148eb01:	mov    DWORD PTR [esp+0x14],0x0
 148eb09:	mov    DWORD PTR [esp+0x10],0x0
 148eb11:	mov    DWORD PTR [esp+0xc],0x1
 148eb19:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb1d:	call   50a1af  ; ABH.Services.Logic.BattleService::HealCurrentTurn
 148eb22:	jmp    148e799
 148eb27:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb2b:	jmp    148ebca
 148eb30:	xor    esi,esi
 148eb32:	mov    al,0x1
 148eb34:	mov    DWORD PTR [esp+0x48],eax
 148eb38:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb3c:	jmp    148ebe6
 148eb41:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb45:	call   1fbc48
 148eb4a:	call   14943fc
 148eb4f:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb53:	call   1fbc48
 148eb58:	call   14943fc
 148eb5d:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb61:	call   1fbc48
 148eb66:	call   14943fc
 148eb6b:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb6f:	call   1fbc48
 148eb74:	call   14943fc
 148eb79:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb7d:	call   1fbc48
 148eb82:	call   14943fc
 148eb87:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb8b:	call   1fbc48
 148eb90:	call   14943fc
 148eb95:	mov    ebx,DWORD PTR [esp+0x4c]
 148eb99:	call   1fbc48
 148eb9e:	call   14943fc
 148eba3:	mov    ebx,DWORD PTR [esp+0x4c]
 148eba7:	call   1fbc48
 148ebac:	call   14943fc
 148ebb1:	mov    ebx,DWORD PTR [esp+0x4c]
 148ebb5:	call   1fbc48
 148ebba:	call   14943fc
 148ebbf:	mov    ebx,DWORD PTR [esp+0x4c]
 148ebc3:	call   1fbc48
 148ebc8:	jmp    148ec32
 148ebca:	cmp    edx,0x1
 148ebcd:	jne    148ec2a
 148ebcf:	mov    DWORD PTR [esp],eax
 148ebd2:	call   1ba3f0
 148ebd7:	mov    esi,DWORD PTR [eax]
 148ebd9:	call   1b9ce0
 148ebde:	mov    DWORD PTR [esp+0x48],0x0
 148ebe6:	lea    eax,[ebx+0x4a234]
 148ebec:	mov    eax,DWORD PTR [eax]
 148ebee:	mov    DWORD PTR [esp+0x4],eax
 148ebf2:	lea    eax,[esp+0x70]
 148ebf6:	mov    DWORD PTR [esp],eax
 148ebf9:	mov    edi,ebx
 148ebfb:	call   447df6
 148ec00:	mov    eax,DWORD PTR [esp+0x48]
 148ec04:	test   al,al
 148ec06:	jne    148ec16
 148ec08:	test   esi,esi
 148ec0a:	je     148ec16
 148ec0c:	mov    DWORD PTR [esp],esi
 148ec0f:	mov    ebx,edi
 148ec11:	call   1fbb20
 148ec16:	lea    esp,[ebp-0xc]
 148ec19:	pop    esi
 148ec1a:	pop    edi
 148ec1b:	pop    ebx
 148ec1c:	pop    ebp
 148ec1d:	ret
 148ec1e:	mov    ebx,esi
 148ec20:	call   1fbc48
 148ec25:	call   14943fc
 148ec2a:	mov    DWORD PTR [esp],eax
 148ec2d:	call   1b9bd0
 148ec32:	call   14943fc