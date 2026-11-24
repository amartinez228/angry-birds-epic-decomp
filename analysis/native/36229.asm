
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eed778:
  eed778:	push   ebp
  eed779:	mov    ebp,esp
  eed77b:	push   ebx
  eed77c:	push   edi
  eed77d:	push   esi
  eed77e:	and    esp,0xfffffff0
  eed781:	sub    esp,0x80
  eed787:	call   eed78c
  eed78c:	pop    ebx
  eed78d:	add    ebx,0x10247b8
  eed793:	mov    al,BYTE PTR [ebx+0x62801]
  eed799:	test   al,al
  eed79b:	jne    eed7b4
  eed79d:	lea    eax,[ebx-0x670418]
  eed7a3:	mov    eax,DWORD PTR [eax]
  eed7a5:	mov    DWORD PTR [esp],eax
  eed7a8:	call   1ca6e8
  eed7ad:	mov    BYTE PTR [ebx+0x62801],0x1
  eed7b4:	mov    DWORD PTR [esp+0x78],0x0
  eed7bc:	lea    eax,[ebx+0x459a8]
  eed7c2:	mov    eax,DWORD PTR [eax]
  eed7c4:	mov    DWORD PTR [esp],eax
  eed7c7:	call   20bfb2
  eed7cc:	mov    esi,eax
  eed7ce:	mov    DWORD PTR [esp],esi
  eed7d1:	mov    DWORD PTR [esp+0x4],0x0
  eed7d9:	call   124632e  ; System.Object::.ctor
  eed7de:	test   esi,esi
  eed7e0:	je     eede3d
  eed7e6:	mov    eax,DWORD PTR [ebp+0x18]
  eed7e9:	mov    ecx,DWORD PTR [ebp+0x14]
  eed7ec:	mov    edi,DWORD PTR [ebp+0x10]
  eed7ef:	mov    edx,DWORD PTR [ebp+0x8]
  eed7f2:	mov    DWORD PTR [esi+0x8],ecx
  eed7f5:	mov    DWORD PTR [esi+0xc],eax
  eed7f8:	mov    DWORD PTR [esi+0x10],edx
  eed7fb:	mov    eax,DWORD PTR [edx+0xc]
  eed7fe:	mov    DWORD PTR [esp+0x8],eax
  eed802:	mov    DWORD PTR [esp],edx
  eed805:	mov    DWORD PTR [esp+0xc],0x0
  eed80d:	mov    DWORD PTR [esp+0x4],0x0
  eed815:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eed81a:	mov    eax,edi
  eed81c:	test   eax,eax
  eed81e:	mov    edi,esi
  eed820:	je     eede3d
  eed826:	mov    eax,DWORD PTR [eax+0x58]
  eed829:	mov    DWORD PTR [esp+0x5c],eax
  eed82d:	lea    eax,[ebx+0x4a460]
  eed833:	mov    eax,DWORD PTR [eax]
  eed835:	mov    DWORD PTR [esp+0x54],eax
  eed839:	lea    eax,[ebx+0x4588c]
  eed83f:	mov    eax,DWORD PTR [eax]
  eed841:	mov    DWORD PTR [esp],eax
  eed844:	call   20bfb2
  eed849:	mov    DWORD PTR [esp+0x58],ebx
  eed84d:	mov    esi,eax
  eed84f:	mov    eax,DWORD PTR [esp+0x54]
  eed853:	mov    DWORD PTR [esp+0x70],eax
  eed857:	lea    eax,[ebx+0x4a054]
  eed85d:	mov    eax,DWORD PTR [eax]
  eed85f:	mov    DWORD PTR [esp+0xc],eax
  eed863:	mov    eax,DWORD PTR [esp+0x70]
  eed867:	mov    DWORD PTR [esp+0x8],eax
  eed86b:	mov    DWORD PTR [esp+0x4],edi
  eed86f:	mov    DWORD PTR [esp+0x4c],edi
  eed873:	mov    DWORD PTR [esp],esi
  eed876:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  eed87b:	lea    eax,[ebx+0x4a058]
  eed881:	mov    eax,DWORD PTR [eax]
  eed883:	mov    DWORD PTR [esp+0xc],eax
  eed887:	mov    DWORD PTR [esp+0x8],esi
  eed88b:	mov    eax,DWORD PTR [esp+0x5c]
  eed88f:	mov    DWORD PTR [esp+0x4],eax
  eed893:	mov    DWORD PTR [esp],0x0
  eed89a:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  eed89f:	lea    ecx,[ebx+0x4a080]
  eed8a5:	mov    ecx,DWORD PTR [ecx]
  eed8a7:	mov    DWORD PTR [esp+0x8],ecx
  eed8ab:	mov    DWORD PTR [esp+0x4],eax
  eed8af:	mov    DWORD PTR [esp],0x0
  eed8b6:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  eed8bb:	mov    edi,eax
  eed8bd:	mov    DWORD PTR [esp+0x2c],edi
  eed8c1:	test   edi,edi
  eed8c3:	je     eede3d
  eed8c9:	lea    eax,[ebx+0x4a048]
  eed8cf:	mov    DWORD PTR [esp+0x48],eax
  eed8d3:	mov    eax,DWORD PTR [eax]
  eed8d5:	mov    DWORD PTR [esp+0x4],eax
  eed8d9:	mov    DWORD PTR [esp],edi
  eed8dc:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eed8e1:	test   eax,eax
  eed8e3:	mov    esi,DWORD PTR [ebp+0x8]
  eed8e6:	jle    eede31
  eed8ec:	mov    DWORD PTR [esp+0x44],0x0
  eed8f4:	jmp    eed919
  eed8f6:	mov    ecx,DWORD PTR [eax+0x4]
  eed8f9:	mov    DWORD PTR [esp+0x8],ecx
  eed8fd:	movss  xmm0,DWORD PTR [esp+0x3c]
  eed903:	movss  DWORD PTR [esp+0x4],xmm0
  eed909:	mov    DWORD PTR [esp],esi
  eed90c:	call   DWORD PTR [eax]
  eed90e:	inc    DWORD PTR [esp+0x44]
  eed912:	mov    esi,DWORD PTR [ebp+0x8]
  eed915:	mov    edi,DWORD PTR [esp+0x2c]
  eed919:	mov    eax,DWORD PTR [esp+0x48]
  eed91d:	mov    eax,DWORD PTR [eax]
  eed91f:	mov    DWORD PTR [esp+0x4],eax
  eed923:	mov    DWORD PTR [esp],edi
  eed926:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eed92b:	test   eax,eax
  eed92d:	jle    eede31
  eed933:	movss  xmm0,DWORD PTR [esi+0x9c]
  eed93b:	cvtsi2ss xmm1,DWORD PTR [esp+0x44]
  eed941:	ucomiss xmm0,xmm1
  eed944:	jbe    eede31
  eed94a:	mov    eax,DWORD PTR [esp+0x48]
  eed94e:	mov    eax,DWORD PTR [eax]
  eed950:	mov    DWORD PTR [esp+0x4],eax
  eed954:	mov    DWORD PTR [esp],edi
  eed957:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eed95c:	mov    DWORD PTR [esp+0x8],eax
  eed960:	mov    DWORD PTR [esp+0xc],0x0
  eed968:	mov    DWORD PTR [esp+0x4],0x0
  eed970:	mov    DWORD PTR [esp],0x0
  eed977:	call   167eb06  ; UnityEngine.Random::Range
  eed97c:	lea    ecx,[ebx+0x4a0ac]
  eed982:	mov    ecx,DWORD PTR [ecx]
  eed984:	mov    DWORD PTR [esp+0x8],ecx
  eed988:	mov    DWORD PTR [esp+0x4],eax
  eed98c:	mov    DWORD PTR [esp],edi
  eed98f:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  eed994:	mov    esi,eax
  eed996:	lea    eax,[ebx+0x4a458]
  eed99c:	mov    eax,DWORD PTR [eax]
  eed99e:	mov    DWORD PTR [esp+0x8],eax
  eed9a2:	mov    DWORD PTR [esp+0x4],esi
  eed9a6:	mov    DWORD PTR [esp],edi
  eed9a9:	call   4c3f21  ; shared address: System.Collections.Generic.List`1<object>::Remove | System.Collections.Generic.List`1<System.TimeZoneInfo+AdjustmentRule>::Remove | System.Collections.Generic.List`1<System.Runtime.Serialization.SerializationMap>::Remove | +40 other aliases
  eed9ae:	lea    eax,[ebx+0x45890]
  eed9b4:	mov    DWORD PTR [esp+0x38],eax
  eed9b8:	mov    eax,DWORD PTR [eax]
  eed9ba:	mov    DWORD PTR [esp],eax
  eed9bd:	call   20bfb2
  eed9c2:	mov    edi,eax
  eed9c4:	lea    eax,[ebx+0x4a074]
  eed9ca:	mov    DWORD PTR [esp+0x34],eax
  eed9ce:	mov    eax,DWORD PTR [eax]
  eed9d0:	mov    DWORD PTR [esp+0x4],eax
  eed9d4:	mov    DWORD PTR [esp],edi
  eed9d7:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eed9dc:	test   edi,edi
  eed9de:	je     eede3d
  eed9e4:	lea    eax,[ebx+0x4a078]
  eed9ea:	mov    DWORD PTR [esp+0x30],eax
  eed9ee:	mov    eax,DWORD PTR [eax]
  eed9f0:	mov    DWORD PTR [esp+0x8],eax
  eed9f4:	mov    DWORD PTR [esp+0x4],esi
  eed9f8:	mov    DWORD PTR [esp+0x50],esi
  eed9fc:	mov    DWORD PTR [esp],edi
  eed9ff:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eeda04:	mov    eax,DWORD PTR [esp+0x4c]
  eeda08:	mov    edi,DWORD PTR [eax+0x8]
  eeda0b:	test   edi,edi
  eeda0d:	je     eede3d
  eeda13:	lea    eax,[ebx+0x45874]
  eeda19:	mov    DWORD PTR [esp+0x54],eax
  eeda1d:	mov    eax,DWORD PTR [eax]
  eeda1f:	mov    ecx,DWORD PTR [edi]
  eeda21:	movzx  edx,WORD PTR [ecx+0xaa]
  eeda28:	test   edx,edx
  eeda2a:	je     eeda3b
  eeda2c:	mov    esi,DWORD PTR [ecx+0x4c]
  eeda2f:	xor    ebx,ebx
  eeda31:	cmp    DWORD PTR [esi+ebx*8],eax
  eeda34:	je     eeda55
  eeda36:	inc    ebx
  eeda37:	cmp    ebx,edx
  eeda39:	jb     eeda31
  eeda3b:	mov    DWORD PTR [esp+0x4],eax
  eeda3f:	mov    DWORD PTR [esp],edi
  eeda42:	mov    DWORD PTR [esp+0x8],0x1c
  eeda4a:	mov    ebx,DWORD PTR [esp+0x58]
  eeda4e:	call   1c1964
  eeda53:	jmp    eeda64
  eeda55:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  eeda59:	lea    eax,[ecx+eax*8+0x194]
  eeda60:	mov    ebx,DWORD PTR [esp+0x58]
  eeda64:	mov    ecx,DWORD PTR [eax+0x4]
  eeda67:	mov    DWORD PTR [esp+0x4],ecx
  eeda6b:	mov    DWORD PTR [esp],edi
  eeda6e:	call   DWORD PTR [eax]
  eeda70:	fstp   DWORD PTR [esp+0x6c]
  eeda74:	mov    eax,DWORD PTR [ebp+0x8]
  eeda77:	mov    edi,DWORD PTR [eax+0x30]
  eeda7a:	test   edi,edi
  eeda7c:	je     eede39
  eeda82:	movss  xmm0,DWORD PTR [esp+0x6c]
  eeda88:	mulss  xmm0,DWORD PTR [eax+0x94]
  eeda90:	mov    eax,DWORD PTR [esp+0x54]
  eeda94:	mov    eax,DWORD PTR [eax]
  eeda96:	mov    ecx,DWORD PTR [edi]
  eeda98:	movzx  edx,WORD PTR [ecx+0xaa]
  eeda9f:	test   edx,edx
  eedaa1:	je     eedab2
  eedaa3:	mov    esi,DWORD PTR [ecx+0x4c]
  eedaa6:	xor    ebx,ebx
  eedaa8:	cmp    DWORD PTR [esi+ebx*8],eax
  eedaab:	je     eedad2
  eedaad:	inc    ebx
  eedaae:	cmp    ebx,edx
  eedab0:	jb     eedaa8
  eedab2:	movss  DWORD PTR [esp+0x5c],xmm0
  eedab8:	mov    DWORD PTR [esp+0x4],eax
  eedabc:	mov    DWORD PTR [esp],edi
  eedabf:	mov    DWORD PTR [esp+0x8],0x77
  eedac7:	mov    ebx,DWORD PTR [esp+0x58]
  eedacb:	call   1c1964
  eedad0:	jmp    eedae7
  eedad2:	movss  DWORD PTR [esp+0x5c],xmm0
  eedad8:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  eedadc:	lea    eax,[ecx+eax*8+0x46c]
  eedae3:	mov    ebx,DWORD PTR [esp+0x58]
  eedae7:	mov    ecx,DWORD PTR [eax+0x4]
  eedaea:	mov    DWORD PTR [esp+0x4],ecx
  eedaee:	mov    DWORD PTR [esp],edi
  eedaf1:	call   DWORD PTR [eax]
  eedaf3:	fstp   DWORD PTR [esp+0x68]
  eedaf7:	mov    eax,DWORD PTR [ebp+0x8]
  eedafa:	mov    edi,DWORD PTR [eax+0x30]
  eedafd:	test   edi,edi
  eedaff:	je     eede39
  eedb05:	movss  xmm0,DWORD PTR [esp+0x68]
  eedb0b:	movss  DWORD PTR [esp+0x3c],xmm0
  eedb11:	mov    eax,DWORD PTR [esp+0x54]
  eedb15:	mov    eax,DWORD PTR [eax]
  eedb17:	mov    ecx,DWORD PTR [edi]
  eedb19:	movzx  edx,WORD PTR [ecx+0xaa]
  eedb20:	test   edx,edx
  eedb22:	je     eedb39
  eedb24:	mov    esi,DWORD PTR [ecx+0x4c]
  eedb27:	xor    ebx,ebx
  eedb29:	cmp    DWORD PTR [esi+ebx*8],eax
  eedb2c:	movss  xmm0,DWORD PTR [esp+0x5c]
  eedb32:	je     eedb59
  eedb34:	inc    ebx
  eedb35:	cmp    ebx,edx
  eedb37:	jb     eedb29
  eedb39:	mov    DWORD PTR [esp+0x4],eax
  eedb3d:	mov    DWORD PTR [esp],edi
  eedb40:	mov    DWORD PTR [esp+0x8],0x78
  eedb48:	mov    ebx,DWORD PTR [esp+0x58]
  eedb4c:	call   1c1964
  eedb51:	movss  xmm0,DWORD PTR [esp+0x5c]
  eedb57:	jmp    eedb68
  eedb59:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  eedb5d:	lea    eax,[ecx+eax*8+0x474]
  eedb64:	mov    ebx,DWORD PTR [esp+0x58]
  eedb68:	mov    ecx,DWORD PTR [eax+0x4]
  eedb6b:	mov    DWORD PTR [esp+0x8],ecx
  eedb6f:	movss  DWORD PTR [esp+0x4],xmm0
  eedb75:	mov    DWORD PTR [esp],edi
  eedb78:	call   DWORD PTR [eax]
  eedb7a:	mov    DWORD PTR [esp+0x4],0x0
  eedb82:	mov    DWORD PTR [esp],0x0
  eedb89:	call   109314e  ; DIContainerLogic::GetBattleService
  eedb8e:	test   eax,eax
  eedb90:	mov    esi,DWORD PTR [ebp+0x8]
  eedb93:	je     eede3d
  eedb99:	mov    ecx,DWORD PTR [esi+0x30]
  eedb9c:	mov    edi,DWORD PTR [esp+0x50]
  eedba0:	mov    DWORD PTR [esp+0x10],edi
  eedba4:	mov    DWORD PTR [esp+0xc],ecx
  eedba8:	mov    DWORD PTR [esp],eax
  eedbab:	mov    DWORD PTR [esp+0x14],0x0
  eedbb3:	mov    DWORD PTR [esp+0x8],0x6
  eedbbb:	mov    DWORD PTR [esp+0x4],0x3f800000
  eedbc3:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eedbc8:	fstp   DWORD PTR [esp+0x64]
  eedbcc:	movss  xmm0,DWORD PTR [esp+0x5c]
  eedbd2:	mulss  xmm0,DWORD PTR [esp+0x64]
  eedbd8:	movss  DWORD PTR [esp+0x5c],xmm0
  eedbde:	mov    DWORD PTR [esp+0x4],0x0
  eedbe6:	mov    DWORD PTR [esp],0x0
  eedbed:	call   109314e  ; DIContainerLogic::GetBattleService
  eedbf2:	test   eax,eax
  eedbf4:	je     eede3d
  eedbfa:	mov    ecx,DWORD PTR [esi+0x30]
  eedbfd:	mov    DWORD PTR [esp+0x10],ecx
  eedc01:	mov    DWORD PTR [esp+0xc],edi
  eedc05:	mov    DWORD PTR [esp],eax
  eedc08:	mov    DWORD PTR [esp+0x14],0x0
  eedc10:	mov    DWORD PTR [esp+0x8],0x2
  eedc18:	mov    DWORD PTR [esp+0x4],0x3f800000
  eedc20:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eedc25:	fstp   DWORD PTR [esp+0x60]
  eedc29:	test   edi,edi
  eedc2b:	je     eede39
  eedc31:	mov    eax,DWORD PTR [esp+0x4c]
  eedc35:	mov    eax,DWORD PTR [eax+0x8]
  eedc38:	mov    DWORD PTR [esp+0x40],eax
  eedc3c:	mov    eax,DWORD PTR [esp+0x54]
  eedc40:	mov    eax,DWORD PTR [eax]
  eedc42:	movss  xmm0,DWORD PTR [esp+0x5c]
  eedc48:	mulss  xmm0,DWORD PTR [esp+0x60]
  eedc4e:	mov    ecx,DWORD PTR [edi]
  eedc50:	movzx  edx,WORD PTR [ecx+0xaa]
  eedc57:	test   edx,edx
  eedc59:	je     eedc6a
  eedc5b:	mov    esi,DWORD PTR [ecx+0x4c]
  eedc5e:	xor    ebx,ebx
  eedc60:	cmp    DWORD PTR [esi+ebx*8],eax
  eedc63:	je     eedc90
  eedc65:	inc    ebx
  eedc66:	cmp    ebx,edx
  eedc68:	jb     eedc60
  eedc6a:	mov    DWORD PTR [esp+0x4],eax
  eedc6e:	mov    DWORD PTR [esp],edi
  eedc71:	mov    DWORD PTR [esp+0x8],0x6f
  eedc79:	mov    ebx,DWORD PTR [esp+0x58]
  eedc7d:	movss  DWORD PTR [esp+0x5c],xmm0
  eedc83:	call   1c1964
  eedc88:	movss  xmm0,DWORD PTR [esp+0x5c]
  eedc8e:	jmp    eedc9f
  eedc90:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  eedc94:	lea    eax,[ecx+eax*8+0x42c]
  eedc9b:	mov    ebx,DWORD PTR [esp+0x58]
  eedc9f:	mov    ecx,DWORD PTR [eax+0x4]
  eedca2:	mov    DWORD PTR [esp+0xc],ecx
  eedca6:	mov    ecx,DWORD PTR [esp+0x40]
  eedcaa:	mov    DWORD PTR [esp+0x8],ecx
  eedcae:	movss  DWORD PTR [esp+0x4],xmm0
  eedcb4:	mov    DWORD PTR [esp],edi
  eedcb7:	call   DWORD PTR [eax]
  eedcb9:	mov    DWORD PTR [esp+0x78],0x0
  eedcc1:	mov    DWORD PTR [esp+0x4],0x0
  eedcc9:	mov    DWORD PTR [esp],0x0
  eedcd0:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  eedcd5:	test   eax,eax
  eedcd7:	mov    esi,DWORD PTR [ebp+0x8]
  eedcda:	je     eede3d
  eedce0:	mov    ecx,DWORD PTR [esi+0xa0]
  eedce6:	lea    edx,[esp+0x78]
  eedcea:	mov    DWORD PTR [esp+0x8],edx
  eedcee:	mov    DWORD PTR [esp+0x4],ecx
  eedcf2:	mov    DWORD PTR [esp],eax
  eedcf5:	mov    DWORD PTR [esp+0xc],0x0
  eedcfd:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  eedd02:	test   al,al
  eedd04:	je     eedd71
  eedd06:	mov    esi,DWORD PTR [esp+0x78]
  eedd0a:	mov    eax,DWORD PTR [esp+0x38]
  eedd0e:	mov    eax,DWORD PTR [eax]
  eedd10:	mov    DWORD PTR [esp],eax
  eedd13:	call   20bfb2
  eedd18:	mov    edi,eax
  eedd1a:	mov    eax,DWORD PTR [esp+0x34]
  eedd1e:	mov    eax,DWORD PTR [eax]
  eedd20:	mov    DWORD PTR [esp+0x4],eax
  eedd24:	mov    DWORD PTR [esp],edi
  eedd27:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eedd2c:	test   edi,edi
  eedd2e:	je     eede3d
  eedd34:	mov    eax,DWORD PTR [esp+0x30]
  eedd38:	mov    eax,DWORD PTR [eax]
  eedd3a:	mov    DWORD PTR [esp+0x8],eax
  eedd3e:	mov    eax,DWORD PTR [esp+0x50]
  eedd42:	mov    DWORD PTR [esp+0x4],eax
  eedd46:	mov    DWORD PTR [esp],edi
  eedd49:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eedd4e:	mov    DWORD PTR [esp+0xc],edi
  eedd52:	mov    DWORD PTR [esp+0x8],esi
  eedd56:	mov    esi,DWORD PTR [ebp+0x8]
  eedd59:	mov    DWORD PTR [esp],esi
  eedd5c:	mov    DWORD PTR [esp+0x10],0x0
  eedd64:	mov    DWORD PTR [esp+0x4],0x0
  eedd6c:	call   ec9974  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eedd71:	mov    DWORD PTR [esp+0x4],0x0
  eedd79:	mov    DWORD PTR [esp],0x0
  eedd80:	call   109314e  ; DIContainerLogic::GetBattleService
  eedd85:	test   eax,eax
  eedd87:	mov    ecx,DWORD PTR [esp+0x4c]
  eedd8b:	je     eede3d
  eedd91:	mov    ecx,DWORD PTR [ecx+0x8]
  eedd94:	mov    DWORD PTR [esp+0xc],ecx
  eedd98:	mov    ecx,DWORD PTR [ebp+0x10]
  eedd9b:	mov    DWORD PTR [esp+0x8],ecx
  eedd9f:	mov    ecx,DWORD PTR [esp+0x50]
  eedda3:	mov    DWORD PTR [esp+0x4],ecx
  eedda7:	mov    DWORD PTR [esp],eax
  eeddaa:	mov    DWORD PTR [esp+0x20],0x0
  eeddb2:	mov    DWORD PTR [esp+0x1c],0x0
  eeddba:	mov    DWORD PTR [esp+0x18],0x0
  eeddc2:	mov    DWORD PTR [esp+0x14],0x1
  eeddca:	mov    DWORD PTR [esp+0x10],0x0
  eeddd2:	call   508d21  ; ABH.Services.Logic.BattleService::DealDamageFromCurrentTurn
  eeddd7:	mov    esi,DWORD PTR [esi+0x30]
  eeddda:	test   esi,esi
  eedddc:	je     eede39
  eeddde:	mov    eax,DWORD PTR [esp+0x54]
  eedde2:	mov    eax,DWORD PTR [eax]
  eedde4:	mov    ebx,DWORD PTR [esi]
  eedde6:	movzx  edx,WORD PTR [ebx+0xaa]
  eedded:	test   edx,edx
  eeddef:	je     eede00
  eeddf1:	mov    edi,DWORD PTR [ebx+0x4c]
  eeddf4:	xor    ecx,ecx
  eeddf6:	cmp    DWORD PTR [edi+ecx*8],eax
  eeddf9:	je     eede1d
  eeddfb:	inc    ecx
  eeddfc:	cmp    ecx,edx
  eeddfe:	jb     eeddf6
  eede00:	mov    DWORD PTR [esp+0x4],eax
  eede04:	mov    DWORD PTR [esp],esi
  eede07:	mov    DWORD PTR [esp+0x8],0x78
  eede0f:	mov    ebx,DWORD PTR [esp+0x58]
  eede13:	call   1c1964
  eede18:	jmp    eed8f6
  eede1d:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eede21:	lea    eax,[ebx+eax*8+0x474]
  eede28:	mov    ebx,DWORD PTR [esp+0x58]
  eede2c:	jmp    eed8f6
  eede31:	lea    esp,[ebp-0xc]
  eede34:	pop    esi
  eede35:	pop    edi
  eede36:	pop    ebx
  eede37:	pop    ebp
  eede38:	ret
  eede39:	mov    ebx,DWORD PTR [esp+0x58]
  eede3d:	call   1fbc48
  eede42:	call   ebbb41