
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eef776:
  eef776:	push   ebp
  eef777:	mov    ebp,esp
  eef779:	push   ebx
  eef77a:	push   edi
  eef77b:	push   esi
  eef77c:	and    esp,0xfffffff0
  eef77f:	sub    esp,0x80
  eef785:	call   eef78a
  eef78a:	pop    ebx
  eef78b:	add    ebx,0x10227ba
  eef791:	mov    al,BYTE PTR [ebx+0x62808]
  eef797:	test   al,al
  eef799:	jne    eef7b2
  eef79b:	lea    eax,[ebx-0x670400]
  eef7a1:	mov    eax,DWORD PTR [eax]
  eef7a3:	mov    DWORD PTR [esp],eax
  eef7a6:	call   1ca6e8
  eef7ab:	mov    BYTE PTR [ebx+0x62808],0x1
  eef7b2:	mov    DWORD PTR [esp+0x78],0x0
  eef7ba:	lea    eax,[ebx+0x459b0]
  eef7c0:	mov    eax,DWORD PTR [eax]
  eef7c2:	mov    DWORD PTR [esp],eax
  eef7c5:	call   20bfb2
  eef7ca:	mov    esi,eax
  eef7cc:	mov    DWORD PTR [esp],esi
  eef7cf:	mov    DWORD PTR [esp+0x4],0x0
  eef7d7:	call   124632e  ; System.Object::.ctor
  eef7dc:	test   esi,esi
  eef7de:	je     eefeab
  eef7e4:	mov    eax,DWORD PTR [ebp+0x18]
  eef7e7:	mov    ecx,DWORD PTR [ebp+0x14]
  eef7ea:	mov    edi,DWORD PTR [ebp+0x10]
  eef7ed:	mov    edx,DWORD PTR [ebp+0x8]
  eef7f0:	mov    DWORD PTR [esi+0x8],ecx
  eef7f3:	mov    DWORD PTR [esi+0xc],eax
  eef7f6:	mov    DWORD PTR [esi+0x10],edx
  eef7f9:	mov    eax,DWORD PTR [edx+0xc]
  eef7fc:	mov    DWORD PTR [esp+0x8],eax
  eef800:	mov    DWORD PTR [esp],edx
  eef803:	mov    DWORD PTR [esp+0xc],0x0
  eef80b:	mov    DWORD PTR [esp+0x4],0x0
  eef813:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eef818:	mov    eax,edi
  eef81a:	test   eax,eax
  eef81c:	mov    edi,esi
  eef81e:	je     eefeab
  eef824:	mov    eax,DWORD PTR [eax+0x58]
  eef827:	mov    DWORD PTR [esp+0x5c],eax
  eef82b:	lea    eax,[ebx+0x4a474]
  eef831:	mov    eax,DWORD PTR [eax]
  eef833:	mov    DWORD PTR [esp+0x58],eax
  eef837:	lea    eax,[ebx+0x4588c]
  eef83d:	mov    eax,DWORD PTR [eax]
  eef83f:	mov    DWORD PTR [esp],eax
  eef842:	call   20bfb2
  eef847:	mov    DWORD PTR [esp+0x50],ebx
  eef84b:	mov    esi,eax
  eef84d:	mov    eax,DWORD PTR [esp+0x58]
  eef851:	mov    DWORD PTR [esp+0x70],eax
  eef855:	lea    eax,[ebx+0x4a054]
  eef85b:	mov    eax,DWORD PTR [eax]
  eef85d:	mov    DWORD PTR [esp+0xc],eax
  eef861:	mov    eax,DWORD PTR [esp+0x70]
  eef865:	mov    DWORD PTR [esp+0x8],eax
  eef869:	mov    DWORD PTR [esp+0x4],edi
  eef86d:	mov    DWORD PTR [esp],esi
  eef870:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  eef875:	lea    eax,[ebx+0x4a058]
  eef87b:	mov    eax,DWORD PTR [eax]
  eef87d:	mov    DWORD PTR [esp+0xc],eax
  eef881:	mov    DWORD PTR [esp+0x8],esi
  eef885:	mov    eax,DWORD PTR [esp+0x5c]
  eef889:	mov    DWORD PTR [esp+0x4],eax
  eef88d:	mov    DWORD PTR [esp],0x0
  eef894:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  eef899:	lea    ecx,[ebx+0x4a080]
  eef89f:	mov    ecx,DWORD PTR [ecx]
  eef8a1:	mov    DWORD PTR [esp+0x8],ecx
  eef8a5:	mov    DWORD PTR [esp+0x4],eax
  eef8a9:	mov    DWORD PTR [esp],0x0
  eef8b0:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  eef8b5:	test   eax,eax
  eef8b7:	je     eefeab
  eef8bd:	lea    esi,[ebx+0x4a048]
  eef8c3:	mov    DWORD PTR [esp+0x2c],esi
  eef8c7:	mov    ecx,DWORD PTR [esi]
  eef8c9:	mov    DWORD PTR [esp+0x4],ecx
  eef8cd:	mov    DWORD PTR [esp],eax
  eef8d0:	mov    DWORD PTR [esp+0x48],eax
  eef8d4:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eef8d9:	test   eax,eax
  eef8db:	mov    DWORD PTR [esp+0x4c],edi
  eef8df:	mov    edi,DWORD PTR [ebp+0x8]
  eef8e2:	jle    eefe9b
  eef8e8:	mov    DWORD PTR [esp+0x44],0x0
  eef8f0:	jmp    eef915
  eef8f2:	mov    ecx,DWORD PTR [eax+0x4]
  eef8f5:	mov    DWORD PTR [esp+0x8],ecx
  eef8f9:	movss  xmm0,DWORD PTR [esp+0x3c]
  eef8ff:	movss  DWORD PTR [esp+0x4],xmm0
  eef905:	mov    DWORD PTR [esp],esi
  eef908:	call   DWORD PTR [eax]
  eef90a:	inc    DWORD PTR [esp+0x44]
  eef90e:	mov    edi,DWORD PTR [ebp+0x8]
  eef911:	mov    esi,DWORD PTR [esp+0x2c]
  eef915:	mov    eax,DWORD PTR [esi]
  eef917:	mov    DWORD PTR [esp+0x4],eax
  eef91b:	mov    eax,DWORD PTR [esp+0x48]
  eef91f:	mov    DWORD PTR [esp],eax
  eef922:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eef927:	test   eax,eax
  eef929:	jle    eefe9b
  eef92f:	movss  xmm0,DWORD PTR [edi+0x9c]
  eef937:	cvtsi2ss xmm1,DWORD PTR [esp+0x44]
  eef93d:	ucomiss xmm0,xmm1
  eef940:	jbe    eefe9b
  eef946:	mov    eax,DWORD PTR [esi]
  eef948:	mov    DWORD PTR [esp+0x4],eax
  eef94c:	mov    esi,DWORD PTR [esp+0x48]
  eef950:	mov    DWORD PTR [esp],esi
  eef953:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eef958:	mov    DWORD PTR [esp+0x8],eax
  eef95c:	mov    DWORD PTR [esp+0xc],0x0
  eef964:	mov    DWORD PTR [esp+0x4],0x0
  eef96c:	mov    DWORD PTR [esp],0x0
  eef973:	call   167eb06  ; UnityEngine.Random::Range
  eef978:	lea    ecx,[ebx+0x4a0ac]
  eef97e:	mov    ecx,DWORD PTR [ecx]
  eef980:	mov    DWORD PTR [esp+0x8],ecx
  eef984:	mov    DWORD PTR [esp+0x4],eax
  eef988:	mov    DWORD PTR [esp],esi
  eef98b:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  eef990:	mov    edi,eax
  eef992:	lea    ecx,[ebx+0x4a458]
  eef998:	mov    ecx,DWORD PTR [ecx]
  eef99a:	mov    DWORD PTR [esp+0x8],ecx
  eef99e:	mov    DWORD PTR [esp+0x4],edi
  eef9a2:	mov    DWORD PTR [esp],esi
  eef9a5:	call   4c3f21  ; shared address: System.Collections.Generic.List`1<object>::Remove | System.Collections.Generic.List`1<System.TimeZoneInfo+AdjustmentRule>::Remove | System.Collections.Generic.List`1<System.Runtime.Serialization.SerializationMap>::Remove | +40 other aliases
  eef9aa:	mov    eax,DWORD PTR [ebp+0x8]
  eef9ad:	mov    eax,DWORD PTR [eax+0xb4]
  eef9b3:	test   eax,eax
  eef9b5:	je     eefeab
  eef9bb:	lea    esi,[ebx+0x4a078]
  eef9c1:	mov    ecx,DWORD PTR [esi]
  eef9c3:	mov    DWORD PTR [esp+0x8],ecx
  eef9c7:	mov    DWORD PTR [esp+0x5c],edi
  eef9cb:	mov    DWORD PTR [esp+0x4],edi
  eef9cf:	mov    DWORD PTR [esp],eax
  eef9d2:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eef9d7:	lea    eax,[ebx+0x45890]
  eef9dd:	mov    DWORD PTR [esp+0x38],eax
  eef9e1:	mov    eax,DWORD PTR [eax]
  eef9e3:	mov    DWORD PTR [esp],eax
  eef9e6:	call   20bfb2
  eef9eb:	mov    edi,eax
  eef9ed:	lea    eax,[ebx+0x4a074]
  eef9f3:	mov    DWORD PTR [esp+0x34],eax
  eef9f7:	mov    eax,DWORD PTR [eax]
  eef9f9:	mov    DWORD PTR [esp+0x4],eax
  eef9fd:	mov    DWORD PTR [esp],edi
  eefa00:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eefa05:	test   edi,edi
  eefa07:	mov    ecx,DWORD PTR [esp+0x5c]
  eefa0b:	je     eefeab
  eefa11:	mov    eax,DWORD PTR [esi]
  eefa13:	mov    DWORD PTR [esp+0x30],esi
  eefa17:	mov    DWORD PTR [esp+0x8],eax
  eefa1b:	mov    DWORD PTR [esp+0x4],ecx
  eefa1f:	mov    DWORD PTR [esp],edi
  eefa22:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eefa27:	mov    eax,DWORD PTR [esp+0x4c]
  eefa2b:	mov    edi,DWORD PTR [eax+0x8]
  eefa2e:	test   edi,edi
  eefa30:	je     eefeab
  eefa36:	lea    eax,[ebx+0x45874]
  eefa3c:	mov    DWORD PTR [esp+0x58],eax
  eefa40:	mov    eax,DWORD PTR [eax]
  eefa42:	mov    ecx,DWORD PTR [edi]
  eefa44:	movzx  edx,WORD PTR [ecx+0xaa]
  eefa4b:	test   edx,edx
  eefa4d:	je     eefa5e
  eefa4f:	mov    esi,DWORD PTR [ecx+0x4c]
  eefa52:	xor    ebx,ebx
  eefa54:	cmp    DWORD PTR [esi+ebx*8],eax
  eefa57:	je     eefa78
  eefa59:	inc    ebx
  eefa5a:	cmp    ebx,edx
  eefa5c:	jb     eefa54
  eefa5e:	mov    DWORD PTR [esp+0x4],eax
  eefa62:	mov    DWORD PTR [esp],edi
  eefa65:	mov    DWORD PTR [esp+0x8],0x1c
  eefa6d:	mov    ebx,DWORD PTR [esp+0x50]
  eefa71:	call   1c1964
  eefa76:	jmp    eefa87
  eefa78:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  eefa7c:	lea    eax,[ecx+eax*8+0x194]
  eefa83:	mov    ebx,DWORD PTR [esp+0x50]
  eefa87:	mov    ecx,DWORD PTR [eax+0x4]
  eefa8a:	mov    DWORD PTR [esp+0x4],ecx
  eefa8e:	mov    DWORD PTR [esp],edi
  eefa91:	call   DWORD PTR [eax]
  eefa93:	fstp   DWORD PTR [esp+0x6c]
  eefa97:	mov    eax,DWORD PTR [ebp+0x8]
  eefa9a:	mov    edi,DWORD PTR [eax+0x30]
  eefa9d:	test   edi,edi
  eefa9f:	je     eefea3
  eefaa5:	movss  xmm0,DWORD PTR [esp+0x6c]
  eefaab:	mulss  xmm0,DWORD PTR [eax+0x94]
  eefab3:	movss  DWORD PTR [esp+0x54],xmm0
  eefab9:	mov    eax,DWORD PTR [esp+0x58]
  eefabd:	mov    eax,DWORD PTR [eax]
  eefabf:	mov    ecx,DWORD PTR [edi]
  eefac1:	movzx  edx,WORD PTR [ecx+0xaa]
  eefac8:	test   edx,edx
  eefaca:	je     eefadb
  eefacc:	mov    esi,DWORD PTR [ecx+0x4c]
  eefacf:	xor    ebx,ebx
  eefad1:	cmp    DWORD PTR [esi+ebx*8],eax
  eefad4:	je     eefaf5
  eefad6:	inc    ebx
  eefad7:	cmp    ebx,edx
  eefad9:	jb     eefad1
  eefadb:	mov    DWORD PTR [esp+0x4],eax
  eefadf:	mov    DWORD PTR [esp],edi
  eefae2:	mov    DWORD PTR [esp+0x8],0x77
  eefaea:	mov    ebx,DWORD PTR [esp+0x50]
  eefaee:	call   1c1964
  eefaf3:	jmp    eefb04
  eefaf5:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  eefaf9:	lea    eax,[ecx+eax*8+0x46c]
  eefb00:	mov    ebx,DWORD PTR [esp+0x50]
  eefb04:	mov    ecx,DWORD PTR [eax+0x4]
  eefb07:	mov    DWORD PTR [esp+0x4],ecx
  eefb0b:	mov    DWORD PTR [esp],edi
  eefb0e:	call   DWORD PTR [eax]
  eefb10:	fstp   DWORD PTR [esp+0x68]
  eefb14:	mov    eax,DWORD PTR [ebp+0x8]
  eefb17:	mov    edi,DWORD PTR [eax+0x30]
  eefb1a:	test   edi,edi
  eefb1c:	je     eefea3
  eefb22:	movss  xmm0,DWORD PTR [esp+0x68]
  eefb28:	movss  DWORD PTR [esp+0x3c],xmm0
  eefb2e:	mov    eax,DWORD PTR [esp+0x58]
  eefb32:	mov    eax,DWORD PTR [eax]
  eefb34:	mov    ecx,DWORD PTR [edi]
  eefb36:	movzx  edx,WORD PTR [ecx+0xaa]
  eefb3d:	test   edx,edx
  eefb3f:	je     eefb50
  eefb41:	mov    esi,DWORD PTR [ecx+0x4c]
  eefb44:	xor    ebx,ebx
  eefb46:	cmp    DWORD PTR [esi+ebx*8],eax
  eefb49:	je     eefb6a
  eefb4b:	inc    ebx
  eefb4c:	cmp    ebx,edx
  eefb4e:	jb     eefb46
  eefb50:	mov    DWORD PTR [esp+0x4],eax
  eefb54:	mov    DWORD PTR [esp],edi
  eefb57:	mov    DWORD PTR [esp+0x8],0x78
  eefb5f:	mov    ebx,DWORD PTR [esp+0x50]
  eefb63:	call   1c1964
  eefb68:	jmp    eefb79
  eefb6a:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  eefb6e:	lea    eax,[ecx+eax*8+0x474]
  eefb75:	mov    ebx,DWORD PTR [esp+0x50]
  eefb79:	mov    ecx,DWORD PTR [eax+0x4]
  eefb7c:	mov    DWORD PTR [esp+0x8],ecx
  eefb80:	movss  xmm0,DWORD PTR [esp+0x54]
  eefb86:	movss  DWORD PTR [esp+0x4],xmm0
  eefb8c:	mov    DWORD PTR [esp],edi
  eefb8f:	call   DWORD PTR [eax]
  eefb91:	mov    DWORD PTR [esp+0x4],0x0
  eefb99:	mov    DWORD PTR [esp],0x0
  eefba0:	call   109314e  ; DIContainerLogic::GetBattleService
  eefba5:	test   eax,eax
  eefba7:	je     eefeab
  eefbad:	mov    edi,DWORD PTR [ebp+0x8]
  eefbb0:	mov    ecx,DWORD PTR [edi+0x30]
  eefbb3:	mov    esi,DWORD PTR [esp+0x5c]
  eefbb7:	mov    DWORD PTR [esp+0x10],esi
  eefbbb:	mov    DWORD PTR [esp+0xc],ecx
  eefbbf:	mov    DWORD PTR [esp],eax
  eefbc2:	mov    DWORD PTR [esp+0x14],0x0
  eefbca:	mov    DWORD PTR [esp+0x8],0x6
  eefbd2:	mov    DWORD PTR [esp+0x4],0x3f800000
  eefbda:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eefbdf:	fstp   DWORD PTR [esp+0x64]
  eefbe3:	movss  xmm0,DWORD PTR [esp+0x64]
  eefbe9:	movss  DWORD PTR [esp+0x40],xmm0
  eefbef:	mov    DWORD PTR [esp+0x4],0x0
  eefbf7:	mov    DWORD PTR [esp],0x0
  eefbfe:	call   109314e  ; DIContainerLogic::GetBattleService
  eefc03:	test   eax,eax
  eefc05:	je     eefeab
  eefc0b:	mov    ecx,DWORD PTR [esp+0x4c]
  eefc0f:	mov    ecx,DWORD PTR [ecx+0x8]
  eefc12:	mov    DWORD PTR [esp+0x10],ecx
  eefc16:	mov    DWORD PTR [esp+0xc],esi
  eefc1a:	mov    DWORD PTR [esp],eax
  eefc1d:	mov    DWORD PTR [esp+0x14],0x0
  eefc25:	mov    DWORD PTR [esp+0x8],0x7
  eefc2d:	mov    DWORD PTR [esp+0x4],0x3f800000
  eefc35:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eefc3a:	fstp   st(0)
  eefc3c:	mov    DWORD PTR [esp+0x4],0x0
  eefc44:	mov    DWORD PTR [esp],0x0
  eefc4b:	call   109314e  ; DIContainerLogic::GetBattleService
  eefc50:	test   eax,eax
  eefc52:	je     eefeab
  eefc58:	mov    ecx,DWORD PTR [edi+0x30]
  eefc5b:	mov    DWORD PTR [esp+0x10],ecx
  eefc5f:	mov    DWORD PTR [esp+0xc],esi
  eefc63:	mov    DWORD PTR [esp],eax
  eefc66:	mov    DWORD PTR [esp+0x14],0x0
  eefc6e:	mov    DWORD PTR [esp+0x8],0x2
  eefc76:	mov    DWORD PTR [esp+0x4],0x3f800000
  eefc7e:	mov    edi,ebx
  eefc80:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eefc85:	fstp   DWORD PTR [esp+0x60]
  eefc89:	test   esi,esi
  eefc8b:	je     eefea9
  eefc91:	movss  xmm0,DWORD PTR [esp+0x54]
  eefc97:	mulss  xmm0,DWORD PTR [esp+0x40]
  eefc9d:	mov    eax,DWORD PTR [esp+0x4c]
  eefca1:	mov    eax,DWORD PTR [eax+0x8]
  eefca4:	mov    DWORD PTR [esp+0x40],eax
  eefca8:	mov    eax,DWORD PTR [esp+0x58]
  eefcac:	mov    eax,DWORD PTR [eax]
  eefcae:	mulss  xmm0,DWORD PTR [esp+0x60]
  eefcb4:	movss  DWORD PTR [esp+0x54],xmm0
  eefcba:	mov    ecx,DWORD PTR [esi]
  eefcbc:	movzx  edx,WORD PTR [ecx+0xaa]
  eefcc3:	test   edx,edx
  eefcc5:	je     eefcd6
  eefcc7:	mov    esi,DWORD PTR [ecx+0x4c]
  eefcca:	xor    ebx,ebx
  eefccc:	cmp    DWORD PTR [esi+ebx*8],eax
  eefccf:	je     eefcf2
  eefcd1:	inc    ebx
  eefcd2:	cmp    ebx,edx
  eefcd4:	jb     eefccc
  eefcd6:	mov    DWORD PTR [esp+0x4],eax
  eefcda:	mov    esi,DWORD PTR [esp+0x5c]
  eefcde:	mov    DWORD PTR [esp],esi
  eefce1:	mov    DWORD PTR [esp+0x8],0x6f
  eefce9:	mov    ebx,edi
  eefceb:	call   1c1964
  eefcf0:	jmp    eefd03
  eefcf2:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  eefcf6:	lea    eax,[ecx+eax*8+0x42c]
  eefcfd:	mov    ebx,edi
  eefcff:	mov    esi,DWORD PTR [esp+0x5c]
  eefd03:	mov    ecx,DWORD PTR [eax+0x4]
  eefd06:	mov    DWORD PTR [esp+0xc],ecx
  eefd0a:	mov    ecx,DWORD PTR [esp+0x40]
  eefd0e:	mov    DWORD PTR [esp+0x8],ecx
  eefd12:	movss  xmm0,DWORD PTR [esp+0x54]
  eefd18:	movss  DWORD PTR [esp+0x4],xmm0
  eefd1e:	mov    DWORD PTR [esp],esi
  eefd21:	call   DWORD PTR [eax]
  eefd23:	mov    DWORD PTR [esp+0x78],0x0
  eefd2b:	mov    DWORD PTR [esp+0x4],0x0
  eefd33:	mov    DWORD PTR [esp],0x0
  eefd3a:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  eefd3f:	test   eax,eax
  eefd41:	mov    esi,DWORD PTR [ebp+0x8]
  eefd44:	je     eefeab
  eefd4a:	mov    ecx,DWORD PTR [esi+0xa0]
  eefd50:	lea    edx,[esp+0x78]
  eefd54:	mov    DWORD PTR [esp+0x8],edx
  eefd58:	mov    DWORD PTR [esp+0x4],ecx
  eefd5c:	mov    DWORD PTR [esp],eax
  eefd5f:	mov    DWORD PTR [esp+0xc],0x0
  eefd67:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  eefd6c:	test   al,al
  eefd6e:	je     eefddb
  eefd70:	mov    esi,DWORD PTR [esp+0x78]
  eefd74:	mov    eax,DWORD PTR [esp+0x38]
  eefd78:	mov    eax,DWORD PTR [eax]
  eefd7a:	mov    DWORD PTR [esp],eax
  eefd7d:	call   20bfb2
  eefd82:	mov    edi,eax
  eefd84:	mov    eax,DWORD PTR [esp+0x34]
  eefd88:	mov    eax,DWORD PTR [eax]
  eefd8a:	mov    DWORD PTR [esp+0x4],eax
  eefd8e:	mov    DWORD PTR [esp],edi
  eefd91:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eefd96:	test   edi,edi
  eefd98:	je     eefeab
  eefd9e:	mov    eax,DWORD PTR [esp+0x30]
  eefda2:	mov    eax,DWORD PTR [eax]
  eefda4:	mov    DWORD PTR [esp+0x8],eax
  eefda8:	mov    eax,DWORD PTR [esp+0x5c]
  eefdac:	mov    DWORD PTR [esp+0x4],eax
  eefdb0:	mov    DWORD PTR [esp],edi
  eefdb3:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eefdb8:	mov    DWORD PTR [esp+0xc],edi
  eefdbc:	mov    DWORD PTR [esp+0x8],esi
  eefdc0:	mov    esi,DWORD PTR [ebp+0x8]
  eefdc3:	mov    DWORD PTR [esp],esi
  eefdc6:	mov    DWORD PTR [esp+0x10],0x0
  eefdce:	mov    DWORD PTR [esp+0x4],0x0
  eefdd6:	call   ec9974  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eefddb:	mov    DWORD PTR [esp+0x4],0x0
  eefde3:	mov    DWORD PTR [esp],0x0
  eefdea:	call   109314e  ; DIContainerLogic::GetBattleService
  eefdef:	test   eax,eax
  eefdf1:	mov    ecx,DWORD PTR [esp+0x4c]
  eefdf5:	je     eefeab
  eefdfb:	mov    ecx,DWORD PTR [ecx+0x8]
  eefdfe:	mov    DWORD PTR [esp+0xc],ecx
  eefe02:	mov    ecx,DWORD PTR [ebp+0x10]
  eefe05:	mov    DWORD PTR [esp+0x8],ecx
  eefe09:	mov    ecx,DWORD PTR [esp+0x5c]
  eefe0d:	mov    DWORD PTR [esp+0x4],ecx
  eefe11:	mov    DWORD PTR [esp],eax
  eefe14:	mov    DWORD PTR [esp+0x20],0x0
  eefe1c:	mov    DWORD PTR [esp+0x1c],0x0
  eefe24:	mov    DWORD PTR [esp+0x18],0x0
  eefe2c:	mov    DWORD PTR [esp+0x14],0x1
  eefe34:	mov    DWORD PTR [esp+0x10],0x0
  eefe3c:	call   508d21  ; ABH.Services.Logic.BattleService::DealDamageFromCurrentTurn
  eefe41:	mov    esi,DWORD PTR [esi+0x30]
  eefe44:	test   esi,esi
  eefe46:	je     eefea3
  eefe48:	mov    eax,DWORD PTR [esp+0x58]
  eefe4c:	mov    eax,DWORD PTR [eax]
  eefe4e:	mov    ebx,DWORD PTR [esi]
  eefe50:	movzx  edx,WORD PTR [ebx+0xaa]
  eefe57:	test   edx,edx
  eefe59:	je     eefe6a
  eefe5b:	mov    edi,DWORD PTR [ebx+0x4c]
  eefe5e:	xor    ecx,ecx
  eefe60:	cmp    DWORD PTR [edi+ecx*8],eax
  eefe63:	je     eefe87
  eefe65:	inc    ecx
  eefe66:	cmp    ecx,edx
  eefe68:	jb     eefe60
  eefe6a:	mov    DWORD PTR [esp+0x4],eax
  eefe6e:	mov    DWORD PTR [esp],esi
  eefe71:	mov    DWORD PTR [esp+0x8],0x78
  eefe79:	mov    ebx,DWORD PTR [esp+0x50]
  eefe7d:	call   1c1964
  eefe82:	jmp    eef8f2
  eefe87:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eefe8b:	lea    eax,[ebx+eax*8+0x474]
  eefe92:	mov    ebx,DWORD PTR [esp+0x50]
  eefe96:	jmp    eef8f2
  eefe9b:	lea    esp,[ebp-0xc]
  eefe9e:	pop    esi
  eefe9f:	pop    edi
  eefea0:	pop    ebx
  eefea1:	pop    ebp
  eefea2:	ret
  eefea3:	mov    ebx,DWORD PTR [esp+0x50]
  eefea7:	jmp    eefeab
  eefea9:	mov    ebx,edi
  eefeab:	call   1fbc48
  eefeb0:	call   ebbb41