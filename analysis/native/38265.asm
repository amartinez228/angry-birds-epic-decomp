
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eba86c:
  eba86c:	push   ebp
  eba86d:	mov    ebp,esp
  eba86f:	push   ebx
  eba870:	push   edi
  eba871:	push   esi
  eba872:	and    esp,0xfffffff0
  eba875:	sub    esp,0xd0
  eba87b:	call   eba880
  eba880:	pop    ebx
  eba881:	add    ebx,0x10576c4
  eba887:	mov    esi,DWORD PTR [ebp+0x8]
  eba88a:	mov    al,BYTE PTR [ebx+0x6273f]
  eba890:	test   al,al
  eba892:	jne    eba8ab
  eba894:	lea    eax,[ebx-0x65b778]
  eba89a:	mov    eax,DWORD PTR [eax]
  eba89c:	mov    DWORD PTR [esp],eax
  eba89f:	call   1ca6e8
  eba8a4:	mov    BYTE PTR [ebx+0x6273f],0x1
  eba8ab:	mov    DWORD PTR [esp+0xc8],0x0
  eba8b6:	xorps  xmm0,xmm0
  eba8b9:	movaps XMMWORD PTR [esp+0xb0],xmm0
  eba8c1:	mov    DWORD PTR [esp+0xc0],0x0
  eba8cc:	movaps XMMWORD PTR [esp+0xa0],xmm0
  eba8d4:	mov    eax,DWORD PTR [esi+0x8]
  eba8d7:	test   eax,eax
  eba8d9:	je     ebb9dc
  eba8df:	mov    DWORD PTR [esp],eax
  eba8e2:	mov    DWORD PTR [esp+0x4],0x0
  eba8ea:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eba8ef:	test   eax,eax
  eba8f1:	je     ebb8e9
  eba8f7:	mov    eax,DWORD PTR [esi+0x8]
  eba8fa:	test   eax,eax
  eba8fc:	je     ebb9dc
  eba902:	mov    DWORD PTR [esp],eax
  eba905:	mov    DWORD PTR [esp+0x4],0x0
  eba90d:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eba912:	test   eax,eax
  eba914:	je     ebb9dc
  eba91a:	lea    esi,[ebx+0x56b88]  ; literal "charge"
  eba920:	mov    ecx,DWORD PTR [esi]
  eba922:	lea    edx,[ebx+0x4a014]
  eba928:	mov    edx,DWORD PTR [edx]
  eba92a:	mov    DWORD PTR [esp+0x8],edx
  eba92e:	mov    DWORD PTR [esp+0x4],ecx
  eba932:	mov    DWORD PTR [esp],eax
  eba935:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eba93a:	test   al,al
  eba93c:	je     ebb8e9
  eba942:	mov    DWORD PTR [esp+0x40],esi
  eba946:	mov    ecx,DWORD PTR [ebp+0x10]
  eba949:	mov    DWORD PTR [esp+0xc8],0x0
  eba954:	test   ecx,ecx
  eba956:	je     ebb9dc
  eba95c:	lea    eax,[ebx+0x45874]
  eba962:	mov    DWORD PTR [esp+0x5c],eax
  eba966:	mov    eax,DWORD PTR [eax]
  eba968:	mov    ecx,DWORD PTR [ecx]
  eba96a:	movzx  edx,WORD PTR [ecx+0xaa]
  eba971:	test   edx,edx
  eba973:	je     eba984
  eba975:	mov    esi,DWORD PTR [ecx+0x4c]
  eba978:	xor    edi,edi
  eba97a:	cmp    DWORD PTR [esi+edi*8],eax
  eba97d:	je     eba99f
  eba97f:	inc    edi
  eba980:	cmp    edi,edx
  eba982:	jb     eba97a
  eba984:	mov    DWORD PTR [esp+0x4],eax
  eba988:	mov    esi,DWORD PTR [ebp+0x10]
  eba98b:	mov    DWORD PTR [esp],esi
  eba98e:	mov    DWORD PTR [esp+0x8],0x31
  eba996:	call   1c1964
  eba99b:	mov    ecx,eax
  eba99d:	jmp    eba9ad
  eba99f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eba9a3:	lea    ecx,[ecx+eax*8+0x23c]
  eba9aa:	mov    esi,DWORD PTR [ebp+0x10]
  eba9ad:	mov    DWORD PTR [esp+0x58],ebx
  eba9b1:	mov    eax,DWORD PTR [ecx+0x4]
  eba9b4:	mov    DWORD PTR [esp+0x4],eax
  eba9b8:	mov    DWORD PTR [esp],esi
  eba9bb:	call   DWORD PTR [ecx]
  eba9bd:	test   eax,eax
  eba9bf:	je     ebb06c
  eba9c5:	mov    eax,DWORD PTR [esp+0x5c]
  eba9c9:	mov    eax,DWORD PTR [eax]
  eba9cb:	mov    ecx,DWORD PTR [esi]
  eba9cd:	movzx  edx,WORD PTR [ecx+0xaa]
  eba9d4:	test   edx,edx
  eba9d6:	je     eba9e7
  eba9d8:	mov    esi,DWORD PTR [ecx+0x4c]
  eba9db:	xor    edi,edi
  eba9dd:	cmp    DWORD PTR [esi+edi*8],eax
  eba9e0:	je     ebaa06
  eba9e2:	inc    edi
  eba9e3:	cmp    edi,edx
  eba9e5:	jb     eba9dd
  eba9e7:	mov    DWORD PTR [esp+0x4],eax
  eba9eb:	mov    esi,DWORD PTR [ebp+0x10]
  eba9ee:	mov    DWORD PTR [esp],esi
  eba9f1:	mov    DWORD PTR [esp+0x8],0x31
  eba9f9:	mov    ebx,DWORD PTR [esp+0x58]
  eba9fd:	call   1c1964
  ebaa02:	mov    ecx,eax
  ebaa04:	jmp    ebaa18
  ebaa06:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebaa0a:	lea    ecx,[ecx+eax*8+0x23c]
  ebaa11:	mov    ebx,DWORD PTR [esp+0x58]
  ebaa15:	mov    esi,DWORD PTR [ebp+0x10]
  ebaa18:	mov    eax,DWORD PTR [ecx+0x4]
  ebaa1b:	mov    DWORD PTR [esp+0x4],eax
  ebaa1f:	mov    DWORD PTR [esp],esi
  ebaa22:	call   DWORD PTR [ecx]
  ebaa24:	mov    esi,eax
  ebaa26:	mov    eax,DWORD PTR [ebp+0x8]
  ebaa29:	mov    eax,DWORD PTR [eax+0x8]
  ebaa2c:	test   eax,eax
  ebaa2e:	je     ebb9dc
  ebaa34:	mov    DWORD PTR [esp],eax
  ebaa37:	mov    DWORD PTR [esp+0x4],0x0
  ebaa3f:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ebaa44:	test   eax,eax
  ebaa46:	je     ebb9dc
  ebaa4c:	mov    DWORD PTR [esp],eax
  ebaa4f:	mov    DWORD PTR [esp+0x4],0x0
  ebaa57:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  ebaa5c:	mov    edi,eax
  ebaa5e:	lea    eax,[ebx+0x430e4]
  ebaa64:	mov    eax,DWORD PTR [eax]
  ebaa66:	test   BYTE PTR [eax+0xb2],0x1
  ebaa6d:	je     ebaa7d
  ebaa6f:	cmp    DWORD PTR [eax+0x60],0x0
  ebaa73:	jne    ebaa7d
  ebaa75:	mov    DWORD PTR [esp],eax
  ebaa78:	call   1db0b8
  ebaa7d:	lea    eax,[ebx+0x56b8c]  ; literal "Charge_"
  ebaa83:	mov    eax,DWORD PTR [eax]
  ebaa85:	mov    DWORD PTR [esp+0x8],edi
  ebaa89:	mov    DWORD PTR [esp+0x4],eax
  ebaa8d:	mov    DWORD PTR [esp+0xc],0x0
  ebaa95:	mov    DWORD PTR [esp],0x0
  ebaa9c:	call   ca462a  ; System.String::Concat
  ebaaa1:	test   esi,esi
  ebaaa3:	je     ebb9dc
  ebaaa9:	lea    ecx,[ebx+0x4a340]
  ebaaaf:	mov    ecx,DWORD PTR [ecx]
  ebaab1:	mov    DWORD PTR [esp+0xc],ecx
  ebaab5:	lea    ecx,[esp+0xc8]
  ebaabc:	mov    DWORD PTR [esp+0x8],ecx
  ebaac0:	mov    DWORD PTR [esp+0x4],eax
  ebaac4:	mov    DWORD PTR [esp],esi
  ebaac7:	mov    DWORD PTR [esp+0x58],ebx
  ebaacb:	call   61b116  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, string>::TryGetValue | +25 other aliases
  ebaad0:	test   al,al
  ebaad2:	mov    esi,DWORD PTR [ebp+0x10]
  ebaad5:	jne    ebb06c
  ebaadb:	mov    eax,DWORD PTR [esp+0x5c]
  ebaadf:	mov    eax,DWORD PTR [eax]
  ebaae1:	mov    ecx,DWORD PTR [esi]
  ebaae3:	movzx  edx,WORD PTR [ecx+0xaa]
  ebaaea:	test   edx,edx
  ebaaec:	je     ebaafd
  ebaaee:	mov    esi,DWORD PTR [ecx+0x4c]
  ebaaf1:	xor    edi,edi
  ebaaf3:	cmp    DWORD PTR [esi+edi*8],eax
  ebaaf6:	je     ebab1c
  ebaaf8:	inc    edi
  ebaaf9:	cmp    edi,edx
  ebaafb:	jb     ebaaf3
  ebaafd:	mov    DWORD PTR [esp+0x4],eax
  ebab01:	mov    esi,DWORD PTR [ebp+0x10]
  ebab04:	mov    DWORD PTR [esp],esi
  ebab07:	mov    DWORD PTR [esp+0x8],0x31
  ebab0f:	mov    ebx,DWORD PTR [esp+0x58]
  ebab13:	call   1c1964
  ebab18:	mov    ecx,eax
  ebab1a:	jmp    ebab2e
  ebab1c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebab20:	lea    ecx,[ecx+eax*8+0x23c]
  ebab27:	mov    ebx,DWORD PTR [esp+0x58]
  ebab2b:	mov    esi,DWORD PTR [ebp+0x10]
  ebab2e:	mov    eax,DWORD PTR [ecx+0x4]
  ebab31:	mov    DWORD PTR [esp+0x4],eax
  ebab35:	mov    DWORD PTR [esp],esi
  ebab38:	call   DWORD PTR [ecx]
  ebab3a:	test   eax,eax
  ebab3c:	je     ebb9dc
  ebab42:	lea    ecx,[ebx+0x4a2a0]
  ebab48:	mov    ecx,DWORD PTR [ecx]
  ebab4a:	mov    DWORD PTR [esp+0x4],ecx
  ebab4e:	mov    DWORD PTR [esp],eax
  ebab51:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  ebab56:	test   eax,eax
  ebab58:	je     ebb9dc
  ebab5e:	lea    ecx,[ebx+0x4a2a4]
  ebab64:	mov    ecx,DWORD PTR [ecx]
  ebab66:	mov    DWORD PTR [esp+0x8],ecx
  ebab6a:	mov    DWORD PTR [esp+0x4],eax
  ebab6e:	lea    eax,[esp+0x88]
  ebab75:	mov    DWORD PTR [esp],eax
  ebab78:	call   12374c5  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, UnityEngine.GUIStyle>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, ABH.GameDatas.Battle.BattleEffectGameData>::GetEnumerator | +11 other aliases
  ebab7d:	sub    esp,0x4
  ebab80:	mov    eax,DWORD PTR [esp+0x98]
  ebab87:	mov    DWORD PTR [esp+0xc0],eax
  ebab8e:	movsd  xmm0,QWORD PTR [esp+0x88]
  ebab97:	movsd  xmm1,QWORD PTR [esp+0x90]
  ebaba0:	movsd  QWORD PTR [esp+0xb8],xmm1
  ebaba9:	movsd  QWORD PTR [esp+0xb0],xmm0
  ebabb2:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
  ebabba:	movss  DWORD PTR [esp+0x30],xmm0
  ebabc0:	mov    DWORD PTR [esp+0x44],0x0
  ebabc8:	lea    eax,[ebx+0x4a2b4]
  ebabce:	mov    DWORD PTR [esp+0x34],eax
  ebabd2:	lea    edi,[esp+0xb0]
  ebabd9:	xor    eax,eax
  ebabdb:	mov    DWORD PTR [esp+0x38],0x0
  ebabe3:	mov    DWORD PTR [esp+0x48],eax
  ebabe7:	mov    eax,DWORD PTR [esp+0x34]
  ebabeb:	mov    eax,DWORD PTR [eax]
  ebabed:	mov    DWORD PTR [esp+0x4],eax
  ebabf1:	mov    DWORD PTR [esp],edi
  ebabf4:	call   12276c5
  ebabf9:	mov    DWORD PTR [esp+0x3c],0x143
  ebac01:	test   al,al
  ebac03:	je     ebaef9
  ebac09:	lea    eax,[ebx+0x4a2a8]
  ebac0f:	mov    eax,DWORD PTR [eax]
  ebac11:	mov    DWORD PTR [esp+0x4],eax
  ebac15:	mov    DWORD PTR [esp],edi
  ebac18:	call   1227754
  ebac1d:	mov    esi,eax
  ebac1f:	test   esi,esi
  ebac21:	je     ebaeff
  ebac27:	mov    eax,DWORD PTR [esi+0x8]
  ebac2a:	test   eax,eax
  ebac2c:	je     ebaf09
  ebac32:	lea    ecx,[ebx+0x4a13c]
  ebac38:	mov    ecx,DWORD PTR [ecx]
  ebac3a:	mov    DWORD PTR [esp+0x8],ecx
  ebac3e:	mov    DWORD PTR [esp+0x4],eax
  ebac42:	lea    eax,[esp+0x78]
  ebac46:	mov    DWORD PTR [esp],eax
  ebac49:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  ebac4e:	sub    esp,0x4
  ebac51:	mov    DWORD PTR [esp+0x4c],esi
  ebac55:	mov    edi,ebx
  ebac57:	movsd  xmm0,QWORD PTR [esp+0x78]
  ebac5d:	movsd  xmm1,QWORD PTR [esp+0x80]
  ebac66:	movsd  QWORD PTR [esp+0xa8],xmm1
  ebac6f:	movsd  QWORD PTR [esp+0xa0],xmm0
  ebac78:	lea    eax,[edi+0x4a148]
  ebac7e:	mov    eax,DWORD PTR [eax]
  ebac80:	mov    DWORD PTR [esp+0x4],eax
  ebac84:	lea    eax,[esp+0xa0]
  ebac8b:	mov    DWORD PTR [esp],eax
  ebac8e:	mov    ebx,edi
  ebac90:	call   447e4e
  ebac95:	test   al,al
  ebac97:	je     ebae3e
  ebac9d:	lea    eax,[edi+0x4a140]
  ebaca3:	mov    eax,DWORD PTR [eax]
  ebaca5:	mov    DWORD PTR [esp+0x4],eax
  ebaca9:	lea    eax,[esp+0xa0]
  ebacb0:	mov    DWORD PTR [esp],eax
  ebacb3:	mov    ebx,edi
  ebacb5:	call   447f1e
  ebacba:	test   eax,eax
  ebacbc:	je     ebae51
  ebacc2:	mov    DWORD PTR [esp],eax
  ebacc5:	mov    DWORD PTR [esp+0x54],eax
  ebacc9:	mov    DWORD PTR [esp+0x4],0x0
  ebacd1:	mov    ebx,edi
  ebacd3:	call   179af1c  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectType
  ebacd8:	cmp    eax,0x6b
  ebacdb:	jne    ebac78
  ebacdd:	mov    eax,DWORD PTR [esp+0x4c]
  ebace1:	mov    esi,DWORD PTR [eax+0x24]
  ebace4:	test   esi,esi
  ebace6:	je     ebae5d
  ebacec:	mov    eax,DWORD PTR [esp+0x5c]
  ebacf0:	mov    eax,DWORD PTR [eax]
  ebacf2:	mov    ecx,DWORD PTR [esi]
  ebacf4:	mov    DWORD PTR [esp+0x50],ecx
  ebacf8:	movzx  edx,WORD PTR [ecx+0xaa]
  ebacff:	test   edx,edx
  ebad01:	je     ebad16
  ebad03:	mov    ecx,DWORD PTR [esp+0x50]
  ebad07:	mov    ecx,DWORD PTR [ecx+0x4c]
  ebad0a:	xor    ebx,ebx
  ebad0c:	cmp    DWORD PTR [ecx+ebx*8],eax
  ebad0f:	je     ebad2e
  ebad11:	inc    ebx
  ebad12:	cmp    ebx,edx
  ebad14:	jb     ebad0c
  ebad16:	mov    DWORD PTR [esp+0x4],eax
  ebad1a:	mov    DWORD PTR [esp],esi
  ebad1d:	mov    DWORD PTR [esp+0x8],0x55
  ebad25:	mov    ebx,edi
  ebad27:	call   1c1964
  ebad2c:	jmp    ebad3d
  ebad2e:	mov    eax,DWORD PTR [ecx+ebx*8+0x4]
  ebad32:	mov    ecx,DWORD PTR [esp+0x50]
  ebad36:	lea    eax,[ecx+eax*8+0x35c]
  ebad3d:	mov    ecx,DWORD PTR [eax]
  ebad3f:	mov    eax,DWORD PTR [eax+0x4]
  ebad42:	mov    DWORD PTR [esp+0x4],eax
  ebad46:	mov    DWORD PTR [esp],esi
  ebad49:	mov    ebx,edi
  ebad4b:	call   ecx
  ebad4d:	test   al,al
  ebad4f:	je     ebac78
  ebad55:	mov    eax,DWORD PTR [esp+0x54]
  ebad59:	mov    DWORD PTR [esp],eax
  ebad5c:	mov    DWORD PTR [esp+0x4],0x0
  ebad64:	mov    ebx,edi
  ebad66:	call   179af85  ; ABH.Shared.Models.Generic.BattleEffect::get_Values
  ebad6b:	test   eax,eax
  ebad6d:	je     ebae69
  ebad73:	lea    esi,[edi+0x4a30c]
  ebad79:	mov    ecx,DWORD PTR [esi]
  ebad7b:	mov    DWORD PTR [esp+0x8],ecx
  ebad7f:	mov    DWORD PTR [esp],eax
  ebad82:	mov    DWORD PTR [esp+0x4],0x1
  ebad8a:	mov    ebx,edi
  ebad8c:	call   4d54a2  ; System.Collections.Generic.List`1<float>::get_Item
  ebad91:	fstp   DWORD PTR [esp+0x74]
  ebad95:	movss  xmm0,DWORD PTR [esp+0x74]
  ebad9b:	movss  DWORD PTR [esp+0x50],xmm0
  ebada1:	mov    DWORD PTR [esp+0xc],0x0
  ebada9:	mov    DWORD PTR [esp+0x8],0x64
  ebadb1:	mov    DWORD PTR [esp+0x4],0x0
  ebadb9:	mov    DWORD PTR [esp],0x0
  ebadc0:	mov    ebx,edi
  ebadc2:	call   167eb06  ; UnityEngine.Random::Range
  ebadc7:	xorps  xmm0,xmm0
  ebadca:	cvtsi2ss xmm0,eax
  ebadce:	movss  xmm1,DWORD PTR [esp+0x50]
  ebadd4:	ucomiss xmm1,xmm0
  ebadd7:	jb     ebac78
  ebaddd:	mov    al,0x1
  ebaddf:	mov    DWORD PTR [esp+0x38],eax
  ebade3:	mov    eax,DWORD PTR [esp+0x54]
  ebade7:	mov    DWORD PTR [esp],eax
  ebadea:	mov    DWORD PTR [esp+0x4],0x0
  ebadf2:	mov    ebx,edi
  ebadf4:	call   179af85  ; ABH.Shared.Models.Generic.BattleEffect::get_Values
  ebadf9:	test   eax,eax
  ebadfb:	je     ebae75
  ebadfd:	mov    ecx,DWORD PTR [esi]
  ebadff:	mov    dl,0x1
  ebae01:	mov    DWORD PTR [esp+0x38],edx
  ebae05:	mov    DWORD PTR [esp+0x8],ecx
  ebae09:	mov    DWORD PTR [esp],eax
  ebae0c:	mov    DWORD PTR [esp+0x4],0x0
  ebae14:	call   4d54a2  ; System.Collections.Generic.List`1<float>::get_Item
  ebae19:	fstp   DWORD PTR [esp+0x70]
  ebae1d:	movss  xmm0,DWORD PTR [esp+0x70]
  ebae23:	movss  DWORD PTR [esp+0x30],xmm0
  ebae29:	mov    DWORD PTR [esp+0x44],0x119
  ebae31:	lea    edi,[esp+0xb0]
  ebae38:	jmp    ebaea2
  ebae3a:	mov    ebx,edi
  ebae3c:	jmp    ebae7f
  ebae3e:	mov    DWORD PTR [esp+0x44],0x119
  ebae46:	mov    ebx,edi
  ebae48:	lea    edi,[esp+0xb0]
  ebae4f:	jmp    ebaea2
  ebae51:	mov    ebx,edi
  ebae53:	call   1fbc48
  ebae58:	jmp    ebb9e6
  ebae5d:	mov    ebx,edi
  ebae5f:	call   1fbc48
  ebae64:	jmp    ebb9eb
  ebae69:	mov    ebx,edi
  ebae6b:	call   1fbc48
  ebae70:	jmp    ebb9f5
  ebae75:	call   1fbc48
  ebae7a:	jmp    ebb9fa
  ebae7f:	cmp    edx,0x1
  ebae82:	lea    edi,[esp+0xb0]
  ebae89:	jne    ebaf13
  ebae8f:	mov    DWORD PTR [esp],eax
  ebae92:	call   1ba3f0
  ebae97:	mov    eax,DWORD PTR [eax]
  ebae99:	mov    DWORD PTR [esp+0x48],eax
  ebae9d:	call   1b9ce0
  ebaea2:	lea    eax,[ebx+0x4a14c]
  ebaea8:	mov    eax,DWORD PTR [eax]
  ebaeaa:	mov    DWORD PTR [esp+0x4],eax
  ebaeae:	lea    eax,[esp+0xa0]
  ebaeb5:	mov    DWORD PTR [esp],eax
  ebaeb8:	call   447df6
  ebaebd:	cmp    DWORD PTR [esp+0x44],0x119
  ebaec5:	jne    ebaed5
  ebaec7:	mov    DWORD PTR [esp+0x44],0x0
  ebaecf:	mov    esi,DWORD PTR [esp+0x48]
  ebaed3:	jmp    ebaee7
  ebaed5:	xor    esi,esi
  ebaed7:	mov    eax,DWORD PTR [esp+0x48]
  ebaedb:	test   eax,eax
  ebaedd:	je     ebaee7
  ebaedf:	mov    DWORD PTR [esp],eax
  ebaee2:	call   1fbb20
  ebaee7:	mov    eax,DWORD PTR [esp+0x38]
  ebaeeb:	test   al,0x1
  ebaeed:	mov    eax,esi
  ebaeef:	je     ebabe3
  ebaef5:	jmp    ebaf37
  ebaef7:	jmp    ebaf13
  ebaef9:	mov    esi,DWORD PTR [esp+0x48]
  ebaefd:	jmp    ebaf37
  ebaeff:	call   1fbc48
  ebaf04:	call   ebbb41
  ebaf09:	call   1fbc48
  ebaf0e:	jmp    ebb9f0
  ebaf13:	mov    ecx,0x1
  ebaf18:	cmp    edx,ecx
  ebaf1a:	jne    ebb9d0
  ebaf20:	mov    DWORD PTR [esp],eax
  ebaf23:	call   1ba3f0
  ebaf28:	mov    esi,DWORD PTR [eax]
  ebaf2a:	call   1b9ce0
  ebaf2f:	mov    eax,DWORD PTR [esp+0x44]
  ebaf33:	mov    DWORD PTR [esp+0x3c],eax
  ebaf37:	lea    eax,[ebx+0x4a2b8]
  ebaf3d:	mov    eax,DWORD PTR [eax]
  ebaf3f:	mov    DWORD PTR [esp+0x4],eax
  ebaf43:	mov    DWORD PTR [esp],edi
  ebaf46:	call   122763c
  ebaf4b:	cmp    DWORD PTR [esp+0x3c],0x143
  ebaf53:	je     ebaf61
  ebaf55:	test   esi,esi
  ebaf57:	je     ebaf61
  ebaf59:	mov    DWORD PTR [esp],esi
  ebaf5c:	call   1fbb20
  ebaf61:	mov    eax,DWORD PTR [esp+0x38]
  ebaf65:	test   al,0x1
  ebaf67:	je     ebafd7
  ebaf69:	mov    esi,DWORD PTR [ebp+0x8]
  ebaf6c:	mov    eax,DWORD PTR [esi+0x8]
  ebaf6f:	test   eax,eax
  ebaf71:	je     ebb9dc
  ebaf77:	mov    DWORD PTR [esp],eax
  ebaf7a:	mov    DWORD PTR [esp+0x4],0x0
  ebaf82:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ebaf87:	test   eax,eax
  ebaf89:	je     ebb9dc
  ebaf8f:	mov    ecx,DWORD PTR [esp+0x40]
  ebaf93:	mov    ecx,DWORD PTR [ecx]
  ebaf95:	lea    edx,[ebx+0x4a0a8]
  ebaf9b:	mov    edx,DWORD PTR [edx]
  ebaf9d:	mov    DWORD PTR [esp+0x8],edx
  ebafa1:	mov    DWORD PTR [esp+0x4],ecx
  ebafa5:	mov    DWORD PTR [esp],eax
  ebafa8:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  ebafad:	fstp   DWORD PTR [esp+0x6c]
  ebafb1:	cvttss2si eax,DWORD PTR [esp+0x6c]
  ebafb7:	cvttss2si ecx,DWORD PTR [esp+0x30]
  ebafbd:	sub    eax,ecx
  ebafbf:	mov    DWORD PTR [esp],esi
  ebafc2:	mov    DWORD PTR [esp+0x4],eax
  ebafc6:	mov    DWORD PTR [esp+0x58],ebx
  ebafca:	call   ec9134  ; ABH.GameDatas.Battle.SkillBattleDataBase::SetChargeDuration
  ebafcf:	mov    esi,DWORD PTR [ebp+0x10]
  ebafd2:	jmp    ebb06c
  ebafd7:	mov    DWORD PTR [esp+0x58],ebx
  ebafdb:	mov    eax,DWORD PTR [ebp+0xc]
  ebafde:	test   eax,eax
  ebafe0:	je     ebb9d8
  ebafe6:	cmp    BYTE PTR [eax+0xa4],0x0
  ebafed:	mov    esi,DWORD PTR [ebp+0x10]
  ebaff0:	jne    ebb06c
  ebaff2:	mov    edi,esi
  ebaff4:	mov    esi,DWORD PTR [ebp+0x8]
  ebaff7:	mov    eax,DWORD PTR [esi+0x8]
  ebaffa:	test   eax,eax
  ebaffc:	je     ebb9d8
  ebb002:	mov    DWORD PTR [esp],eax
  ebb005:	mov    DWORD PTR [esp+0x4],0x0
  ebb00d:	mov    ebx,DWORD PTR [esp+0x58]
  ebb011:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ebb016:	test   eax,eax
  ebb018:	je     ebb9dc
  ebb01e:	mov    DWORD PTR [esp],eax
  ebb021:	mov    DWORD PTR [esp+0x4],0x0
  ebb029:	call   170312a  ; ABH.Shared.BalancingData.SkillBalancingData::get_SkillParameters
  ebb02e:	test   eax,eax
  ebb030:	je     ebb9dc
  ebb036:	mov    ecx,DWORD PTR [esp+0x40]
  ebb03a:	mov    ecx,DWORD PTR [ecx]
  ebb03c:	lea    edx,[ebx+0x4a0a8]
  ebb042:	mov    edx,DWORD PTR [edx]
  ebb044:	mov    DWORD PTR [esp+0x8],edx
  ebb048:	mov    DWORD PTR [esp+0x4],ecx
  ebb04c:	mov    DWORD PTR [esp],eax
  ebb04f:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  ebb054:	fstp   DWORD PTR [esp+0x68]
  ebb058:	cvttss2si eax,DWORD PTR [esp+0x68]
  ebb05e:	mov    DWORD PTR [esp+0x4],eax
  ebb062:	mov    DWORD PTR [esp],esi
  ebb065:	call   ec9134  ; ABH.GameDatas.Battle.SkillBattleDataBase::SetChargeDuration
  ebb06a:	mov    esi,edi
  ebb06c:	mov    eax,DWORD PTR [esp+0x5c]
  ebb070:	mov    eax,DWORD PTR [eax]
  ebb072:	mov    ecx,DWORD PTR [esi]
  ebb074:	movzx  edx,WORD PTR [ecx+0xaa]
  ebb07b:	test   edx,edx
  ebb07d:	je     ebb08e
  ebb07f:	mov    esi,DWORD PTR [ecx+0x4c]
  ebb082:	xor    edi,edi
  ebb084:	cmp    DWORD PTR [esi+edi*8],eax
  ebb087:	je     ebb0ad
  ebb089:	inc    edi
  ebb08a:	cmp    edi,edx
  ebb08c:	jb     ebb084
  ebb08e:	mov    DWORD PTR [esp+0x4],eax
  ebb092:	mov    esi,DWORD PTR [ebp+0x10]
  ebb095:	mov    DWORD PTR [esp],esi
  ebb098:	mov    DWORD PTR [esp+0x8],0x8a
  ebb0a0:	mov    ebx,DWORD PTR [esp+0x58]
  ebb0a4:	call   1c1964
  ebb0a9:	mov    ecx,eax
  ebb0ab:	jmp    ebb0bf
  ebb0ad:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebb0b1:	lea    ecx,[ecx+eax*8+0x504]
  ebb0b8:	mov    ebx,DWORD PTR [esp+0x58]
  ebb0bc:	mov    esi,DWORD PTR [ebp+0x10]
  ebb0bf:	mov    eax,DWORD PTR [ecx+0x4]
  ebb0c2:	mov    DWORD PTR [esp+0x4],eax
  ebb0c6:	mov    DWORD PTR [esp],esi
  ebb0c9:	call   DWORD PTR [ecx]
  ebb0cb:	mov    ecx,DWORD PTR [esp+0x5c]
  ebb0cf:	mov    ecx,DWORD PTR [ecx]
  ebb0d1:	mov    edx,DWORD PTR [esi]
  ebb0d3:	movzx  esi,WORD PTR [edx+0xaa]
  ebb0da:	test   al,al
  ebb0dc:	je     ebb10f
  ebb0de:	test   si,si
  ebb0e1:	je     ebb0f2
  ebb0e3:	mov    eax,DWORD PTR [edx+0x4c]
  ebb0e6:	xor    edi,edi
  ebb0e8:	cmp    DWORD PTR [eax+edi*8],ecx
  ebb0eb:	je     ebb146
  ebb0ed:	inc    edi
  ebb0ee:	cmp    edi,esi
  ebb0f0:	jb     ebb0e8
  ebb0f2:	mov    DWORD PTR [esp+0x4],ecx
  ebb0f6:	mov    esi,DWORD PTR [ebp+0x10]
  ebb0f9:	mov    DWORD PTR [esp],esi
  ebb0fc:	mov    DWORD PTR [esp+0x8],0x8b
  ebb104:	mov    ebx,DWORD PTR [esp+0x58]
  ebb108:	call   1c1964
  ebb10d:	jmp    ebb158
  ebb10f:	test   si,si
  ebb112:	je     ebb127
  ebb114:	mov    eax,DWORD PTR [edx+0x4c]
  ebb117:	xor    edi,edi
  ebb119:	cmp    DWORD PTR [eax+edi*8],ecx
  ebb11c:	je     ebb1b2
  ebb122:	inc    edi
  ebb123:	cmp    edi,esi
  ebb125:	jb     ebb119
  ebb127:	mov    DWORD PTR [esp+0x4],ecx
  ebb12b:	mov    esi,DWORD PTR [ebp+0x10]
  ebb12e:	mov    DWORD PTR [esp],esi
  ebb131:	mov    DWORD PTR [esp+0x8],0x31
  ebb139:	mov    ebx,DWORD PTR [esp+0x58]
  ebb13d:	call   1c1964
  ebb142:	mov    ecx,eax
  ebb144:	jmp    ebb1c4
  ebb146:	mov    eax,DWORD PTR [eax+edi*8+0x4]
  ebb14a:	lea    eax,[edx+eax*8+0x50c]
  ebb151:	mov    ebx,DWORD PTR [esp+0x58]
  ebb155:	mov    esi,DWORD PTR [ebp+0x10]
  ebb158:	mov    ecx,DWORD PTR [eax+0x4]
  ebb15b:	mov    DWORD PTR [esp+0x8],ecx
  ebb15f:	mov    DWORD PTR [esp],esi
  ebb162:	mov    DWORD PTR [esp+0x4],0x0
  ebb16a:	call   DWORD PTR [eax]
  ebb16c:	mov    eax,DWORD PTR [esp+0x5c]
  ebb170:	mov    eax,DWORD PTR [eax]
  ebb172:	mov    ecx,DWORD PTR [esi]
  ebb174:	movzx  edx,WORD PTR [ecx+0xaa]
  ebb17b:	test   edx,edx
  ebb17d:	je     ebb192
  ebb17f:	mov    esi,DWORD PTR [ecx+0x4c]
  ebb182:	xor    edi,edi
  ebb184:	cmp    DWORD PTR [esi+edi*8],eax
  ebb187:	je     ebb223
  ebb18d:	inc    edi
  ebb18e:	cmp    edi,edx
  ebb190:	jb     ebb184
  ebb192:	mov    DWORD PTR [esp+0x4],eax
  ebb196:	mov    esi,DWORD PTR [ebp+0x10]
  ebb199:	mov    DWORD PTR [esp],esi
  ebb19c:	mov    DWORD PTR [esp+0x8],0x5
  ebb1a4:	mov    ebx,DWORD PTR [esp+0x58]
  ebb1a8:	call   1c1964
  ebb1ad:	jmp    ebb235
  ebb1b2:	mov    eax,DWORD PTR [eax+edi*8+0x4]
  ebb1b6:	lea    ecx,[edx+eax*8+0x23c]
  ebb1bd:	mov    ebx,DWORD PTR [esp+0x58]
  ebb1c1:	mov    esi,DWORD PTR [ebp+0x10]
  ebb1c4:	mov    eax,DWORD PTR [ebp+0x14]
  ebb1c7:	mov    DWORD PTR [esp+0x54],eax
  ebb1cb:	mov    eax,DWORD PTR [ecx+0x4]
  ebb1ce:	mov    DWORD PTR [esp+0x4],eax
  ebb1d2:	mov    DWORD PTR [esp],esi
  ebb1d5:	call   DWORD PTR [ecx]
  ebb1d7:	test   eax,eax
  ebb1d9:	je     ebb40b
  ebb1df:	mov    eax,DWORD PTR [esp+0x5c]
  ebb1e3:	mov    eax,DWORD PTR [eax]
  ebb1e5:	mov    ecx,DWORD PTR [esi]
  ebb1e7:	movzx  edx,WORD PTR [ecx+0xaa]
  ebb1ee:	test   edx,edx
  ebb1f0:	je     ebb205
  ebb1f2:	mov    esi,DWORD PTR [ecx+0x4c]
  ebb1f5:	xor    edi,edi
  ebb1f7:	cmp    DWORD PTR [esi+edi*8],eax
  ebb1fa:	je     ebb2fe
  ebb200:	inc    edi
  ebb201:	cmp    edi,edx
  ebb203:	jb     ebb1f7
  ebb205:	mov    DWORD PTR [esp+0x4],eax
  ebb209:	mov    esi,DWORD PTR [ebp+0x10]
  ebb20c:	mov    DWORD PTR [esp],esi
  ebb20f:	mov    DWORD PTR [esp+0x8],0x31
  ebb217:	call   1c1964
  ebb21c:	mov    ecx,eax
  ebb21e:	jmp    ebb30c
  ebb223:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebb227:	lea    eax,[ecx+eax*8+0xdc]
  ebb22e:	mov    ebx,DWORD PTR [esp+0x58]
  ebb232:	mov    esi,DWORD PTR [ebp+0x10]
  ebb235:	mov    ecx,DWORD PTR [eax+0x4]
  ebb238:	mov    DWORD PTR [esp+0x8],ecx
  ebb23c:	mov    DWORD PTR [esp],esi
  ebb23f:	mov    DWORD PTR [esp+0x4],0x0
  ebb247:	call   DWORD PTR [eax]
  ebb249:	mov    eax,DWORD PTR [ebp+0x8]
  ebb24c:	mov    DWORD PTR [eax+0x38],0x0
  ebb253:	mov    eax,DWORD PTR [esp+0x5c]
  ebb257:	mov    eax,DWORD PTR [eax]
  ebb259:	mov    ecx,DWORD PTR [esi]
  ebb25b:	movzx  edx,WORD PTR [ecx+0xaa]
  ebb262:	test   edx,edx
  ebb264:	je     ebb275
  ebb266:	mov    esi,DWORD PTR [ecx+0x4c]
  ebb269:	xor    edi,edi
  ebb26b:	cmp    DWORD PTR [esi+edi*8],eax
  ebb26e:	je     ebb294
  ebb270:	inc    edi
  ebb271:	cmp    edi,edx
  ebb273:	jb     ebb26b
  ebb275:	mov    DWORD PTR [esp+0x4],eax
  ebb279:	mov    esi,DWORD PTR [ebp+0x10]
  ebb27c:	mov    DWORD PTR [esp],esi
  ebb27f:	mov    DWORD PTR [esp+0x8],0x31
  ebb287:	mov    ebx,DWORD PTR [esp+0x58]
  ebb28b:	call   1c1964
  ebb290:	mov    ecx,eax
  ebb292:	jmp    ebb2a6
  ebb294:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebb298:	lea    ecx,[ecx+eax*8+0x23c]
  ebb29f:	mov    ebx,DWORD PTR [esp+0x58]
  ebb2a3:	mov    esi,DWORD PTR [ebp+0x10]
  ebb2a6:	mov    eax,DWORD PTR [ecx+0x4]
  ebb2a9:	mov    DWORD PTR [esp+0x4],eax
  ebb2ad:	mov    DWORD PTR [esp],esi
  ebb2b0:	call   DWORD PTR [ecx]
  ebb2b2:	test   eax,eax
  ebb2b4:	je     ebb8e9
  ebb2ba:	mov    eax,DWORD PTR [esp+0x5c]
  ebb2be:	mov    eax,DWORD PTR [eax]
  ebb2c0:	mov    ecx,DWORD PTR [esi]
  ebb2c2:	movzx  edx,WORD PTR [ecx+0xaa]
  ebb2c9:	test   edx,edx
  ebb2cb:	je     ebb2e0
  ebb2cd:	mov    esi,DWORD PTR [ecx+0x4c]
  ebb2d0:	xor    edi,edi
  ebb2d2:	cmp    DWORD PTR [esi+edi*8],eax
  ebb2d5:	je     ebb804
  ebb2db:	inc    edi
  ebb2dc:	cmp    edi,edx
  ebb2de:	jb     ebb2d2
  ebb2e0:	mov    DWORD PTR [esp+0x4],eax
  ebb2e4:	mov    esi,DWORD PTR [ebp+0x10]
  ebb2e7:	mov    DWORD PTR [esp],esi
  ebb2ea:	mov    DWORD PTR [esp+0x8],0x31
  ebb2f2:	call   1c1964
  ebb2f7:	mov    ecx,eax
  ebb2f9:	jmp    ebb812
  ebb2fe:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebb302:	lea    ecx,[ecx+eax*8+0x23c]
  ebb309:	mov    esi,DWORD PTR [ebp+0x10]
  ebb30c:	mov    eax,DWORD PTR [ecx+0x4]
  ebb30f:	mov    DWORD PTR [esp+0x4],eax
  ebb313:	mov    DWORD PTR [esp],esi
  ebb316:	call   DWORD PTR [ecx]
  ebb318:	mov    esi,eax
  ebb31a:	mov    eax,DWORD PTR [ebp+0x8]
  ebb31d:	mov    eax,DWORD PTR [eax+0x8]
  ebb320:	test   eax,eax
  ebb322:	je     ebb9dc
  ebb328:	mov    DWORD PTR [esp],eax
  ebb32b:	mov    DWORD PTR [esp+0x4],0x0
  ebb333:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ebb338:	test   eax,eax
  ebb33a:	je     ebb9dc
  ebb340:	mov    DWORD PTR [esp],eax
  ebb343:	mov    DWORD PTR [esp+0x4],0x0
  ebb34b:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  ebb350:	mov    edi,eax
  ebb352:	lea    eax,[ebx+0x430e4]
  ebb358:	mov    eax,DWORD PTR [eax]
  ebb35a:	test   BYTE PTR [eax+0xb2],0x1
  ebb361:	je     ebb371
  ebb363:	cmp    DWORD PTR [eax+0x60],0x0
  ebb367:	jne    ebb371
  ebb369:	mov    DWORD PTR [esp],eax
  ebb36c:	call   1db0b8
  ebb371:	lea    eax,[ebx+0x56b8c]  ; literal "Charge_"
  ebb377:	mov    eax,DWORD PTR [eax]
  ebb379:	mov    DWORD PTR [esp+0x8],edi
  ebb37d:	mov    DWORD PTR [esp+0x4],eax
  ebb381:	mov    DWORD PTR [esp+0xc],0x0
  ebb389:	mov    DWORD PTR [esp],0x0
  ebb390:	call   ca462a  ; System.String::Concat
  ebb395:	test   esi,esi
  ebb397:	je     ebb9dc
  ebb39d:	lea    ecx,[ebx+0x4a340]
  ebb3a3:	mov    ecx,DWORD PTR [ecx]
  ebb3a5:	mov    DWORD PTR [esp+0xc],ecx
  ebb3a9:	lea    ecx,[esp+0xc8]
  ebb3b0:	mov    DWORD PTR [esp+0x8],ecx
  ebb3b4:	mov    DWORD PTR [esp+0x4],eax
  ebb3b8:	mov    DWORD PTR [esp],esi
  ebb3bb:	call   61b116  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, string>::TryGetValue | +25 other aliases
  ebb3c0:	test   al,al
  ebb3c2:	mov    esi,DWORD PTR [ebp+0x10]
  ebb3c5:	je     ebb40b
  ebb3c7:	mov    eax,DWORD PTR [esp+0xc8]
  ebb3ce:	test   eax,eax
  ebb3d0:	je     ebb9dc
  ebb3d6:	mov    DWORD PTR [esp],eax
  ebb3d9:	call   ebf170  ; ABH.GameDatas.Battle.BattleEffectGameData::GetTurnsLeft
  ebb3de:	cmp    eax,0x1
  ebb3e1:	jle    ebb8f6
  ebb3e7:	mov    eax,DWORD PTR [esp+0xc8]
  ebb3ee:	test   eax,eax
  ebb3f0:	je     ebb9dc
  ebb3f6:	mov    DWORD PTR [esp],eax
  ebb3f9:	mov    DWORD PTR [esp+0x4],0x1
  ebb401:	call   ebf6b2  ; ABH.GameDatas.Battle.BattleEffectGameData::IncrementCurrentTurnManual
  ebb406:	jmp    ebb7fd
  ebb40b:	mov    eax,DWORD PTR [esp+0x5c]
  ebb40f:	mov    eax,DWORD PTR [eax]
  ebb411:	mov    ecx,DWORD PTR [esi]
  ebb413:	movzx  edx,WORD PTR [ecx+0xaa]
  ebb41a:	test   edx,edx
  ebb41c:	je     ebb42d
  ebb41e:	mov    esi,DWORD PTR [ecx+0x4c]
  ebb421:	xor    edi,edi
  ebb423:	cmp    DWORD PTR [esi+edi*8],eax
  ebb426:	je     ebb446
  ebb428:	inc    edi
  ebb429:	cmp    edi,edx
  ebb42b:	jb     ebb423
  ebb42d:	mov    DWORD PTR [esp+0x4],eax
  ebb431:	mov    edi,DWORD PTR [ebp+0x10]
  ebb434:	mov    DWORD PTR [esp],edi
  ebb437:	mov    DWORD PTR [esp+0x8],0x5
  ebb43f:	call   1c1964
  ebb444:	jmp    ebb454
  ebb446:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebb44a:	lea    eax,[ecx+eax*8+0xdc]
  ebb451:	mov    edi,DWORD PTR [ebp+0x10]
  ebb454:	mov    ecx,DWORD PTR [eax+0x4]
  ebb457:	mov    DWORD PTR [esp+0x8],ecx
  ebb45b:	mov    esi,DWORD PTR [ebp+0x8]
  ebb45e:	mov    DWORD PTR [esp+0x4],esi
  ebb462:	mov    DWORD PTR [esp],edi
  ebb465:	call   DWORD PTR [eax]
  ebb467:	mov    eax,DWORD PTR [ebp+0x18]
  ebb46a:	mov    DWORD PTR [esi+0x38],eax
  ebb46d:	lea    eax,[ebx+0x45290]
  ebb473:	mov    eax,DWORD PTR [eax]
  ebb475:	mov    DWORD PTR [esp],eax
  ebb478:	call   20bfb2
  ebb47d:	mov    edi,eax
  ebb47f:	lea    eax,[ebx+0x49708]
  ebb485:	mov    eax,DWORD PTR [eax]
  ebb487:	mov    DWORD PTR [esp+0x4],eax
  ebb48b:	mov    DWORD PTR [esp],edi
  ebb48e:	call   4d21ef  ; System.Collections.Generic.List`1<float>::.ctor
  ebb493:	test   edi,edi
  ebb495:	je     ebb9dc
  ebb49b:	lea    eax,[ebx+0x4970c]
  ebb4a1:	mov    eax,DWORD PTR [eax]
  ebb4a3:	mov    DWORD PTR [esp+0x8],eax
  ebb4a7:	mov    DWORD PTR [esp],edi
  ebb4aa:	mov    DWORD PTR [esp+0x50],edi
  ebb4ae:	mov    DWORD PTR [esp+0x4],0x0
  ebb4b6:	call   4d30f2  ; System.Collections.Generic.List`1<float>::Add
  ebb4bb:	lea    eax,[ebx+0x4589c]
  ebb4c1:	mov    eax,DWORD PTR [eax]
  ebb4c3:	mov    DWORD PTR [esp],eax
  ebb4c6:	call   20bfb2
  ebb4cb:	mov    DWORD PTR [esp+0x5c],eax
  ebb4cf:	lea    ecx,[ebx+0x4a138]
  ebb4d5:	mov    ecx,DWORD PTR [ecx]
  ebb4d7:	mov    DWORD PTR [esp+0x4],ecx
  ebb4db:	mov    DWORD PTR [esp],eax
  ebb4de:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ebb4e3:	lea    eax,[ebx+0x454a8]
  ebb4e9:	mov    eax,DWORD PTR [eax]
  ebb4eb:	mov    DWORD PTR [esp],eax
  ebb4ee:	call   20bfb2
  ebb4f3:	mov    edi,eax
  ebb4f5:	mov    DWORD PTR [esp],edi
  ebb4f8:	mov    DWORD PTR [esp+0x4],0x0
  ebb500:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
  ebb505:	mov    eax,DWORD PTR [esi+0x8]
  ebb508:	test   eax,eax
  ebb50a:	je     ebb9dc
  ebb510:	mov    DWORD PTR [esp],eax
  ebb513:	mov    DWORD PTR [esp+0x4],0x0
  ebb51b:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ebb520:	test   eax,eax
  ebb522:	mov    ecx,DWORD PTR [esp+0x40]
  ebb526:	je     ebb9dc
  ebb52c:	mov    ecx,DWORD PTR [ecx]
  ebb52e:	lea    esi,[ebx+0x4a0a8]
  ebb534:	mov    edx,DWORD PTR [esi]
  ebb536:	mov    DWORD PTR [esp+0x8],edx
  ebb53a:	mov    DWORD PTR [esp+0x4],ecx
  ebb53e:	mov    DWORD PTR [esp],eax
  ebb541:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  ebb546:	fstp   DWORD PTR [esp+0x64]
  ebb54a:	test   edi,edi
  ebb54c:	je     ebb9dc
  ebb552:	mov    DWORD PTR [esp+0x4c],esi
  ebb556:	cvttss2si eax,DWORD PTR [esp+0x64]
  ebb55c:	mov    DWORD PTR [esp+0x4],eax
  ebb560:	mov    DWORD PTR [esp],edi
  ebb563:	mov    DWORD PTR [esp+0x8],0x0
  ebb56b:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
  ebb570:	mov    DWORD PTR [esp],edi
  ebb573:	mov    DWORD PTR [esp+0x8],0x0
  ebb57b:	mov    DWORD PTR [esp+0x4],0x10
  ebb583:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
  ebb588:	mov    DWORD PTR [esp],edi
  ebb58b:	mov    DWORD PTR [esp+0x8],0x0
  ebb593:	mov    DWORD PTR [esp+0x4],0x14
  ebb59b:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
  ebb5a0:	mov    DWORD PTR [esp],edi
  ebb5a3:	mov    DWORD PTR [esp+0x8],0x0
  ebb5ab:	mov    DWORD PTR [esp+0x4],0x0
  ebb5b3:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
  ebb5b8:	mov    eax,DWORD PTR [esp+0x50]
  ebb5bc:	mov    DWORD PTR [esp+0x4],eax
  ebb5c0:	mov    DWORD PTR [esp],edi
  ebb5c3:	mov    DWORD PTR [esp+0x8],0x0
  ebb5cb:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
  ebb5d0:	mov    ecx,DWORD PTR [esp+0x5c]
  ebb5d4:	test   ecx,ecx
  ebb5d6:	je     ebb9dc
  ebb5dc:	lea    eax,[ebx+0x4a144]
  ebb5e2:	mov    eax,DWORD PTR [eax]
  ebb5e4:	mov    DWORD PTR [esp+0x8],eax
  ebb5e8:	mov    DWORD PTR [esp+0x4],edi
  ebb5ec:	mov    DWORD PTR [esp],ecx
  ebb5ef:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  ebb5f4:	mov    esi,DWORD PTR [ebp+0x8]
  ebb5f7:	mov    eax,DWORD PTR [esi+0x8]
  ebb5fa:	test   eax,eax
  ebb5fc:	je     ebb9dc
  ebb602:	mov    DWORD PTR [esp],eax
  ebb605:	mov    DWORD PTR [esp+0x4],0x0
  ebb60d:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ebb612:	test   eax,eax
  ebb614:	je     ebb9dc
  ebb61a:	mov    ecx,DWORD PTR [esp+0x40]
  ebb61e:	mov    ecx,DWORD PTR [ecx]
  ebb620:	mov    edx,DWORD PTR [esp+0x4c]
  ebb624:	mov    edx,DWORD PTR [edx]
  ebb626:	mov    DWORD PTR [esp+0x8],edx
  ebb62a:	mov    DWORD PTR [esp+0x4],ecx
  ebb62e:	mov    DWORD PTR [esp],eax
  ebb631:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  ebb636:	fstp   DWORD PTR [esp+0x60]
  ebb63a:	mov    eax,DWORD PTR [esi+0x8]
  ebb63d:	test   eax,eax
  ebb63f:	je     ebb9dc
  ebb645:	mov    edi,esi
  ebb647:	movss  xmm0,DWORD PTR [esp+0x60]
  ebb64d:	movss  DWORD PTR [esp+0x50],xmm0
  ebb653:	mov    DWORD PTR [esp],eax
  ebb656:	mov    DWORD PTR [esp+0x4],0x0
  ebb65e:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ebb663:	test   eax,eax
  ebb665:	je     ebb9dc
  ebb66b:	mov    DWORD PTR [esp],eax
  ebb66e:	mov    DWORD PTR [esp+0x4],0x0
  ebb676:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  ebb67b:	mov    esi,eax
  ebb67d:	lea    eax,[ebx+0x430e4]
  ebb683:	mov    eax,DWORD PTR [eax]
  ebb685:	test   BYTE PTR [eax+0xb2],0x1
  ebb68c:	je     ebb69c
  ebb68e:	cmp    DWORD PTR [eax+0x60],0x0
  ebb692:	jne    ebb69c
  ebb694:	mov    DWORD PTR [esp],eax
  ebb697:	call   1db0b8
  ebb69c:	lea    eax,[ebx+0x56b8c]  ; literal "Charge_"
  ebb6a2:	mov    eax,DWORD PTR [eax]
  ebb6a4:	mov    DWORD PTR [esp+0x8],esi
  ebb6a8:	mov    DWORD PTR [esp+0x4],eax
  ebb6ac:	mov    DWORD PTR [esp+0xc],0x0
  ebb6b4:	mov    DWORD PTR [esp],0x0
  ebb6bb:	call   ca462a  ; System.String::Concat
  ebb6c0:	mov    DWORD PTR [esp+0x4c],eax
  ebb6c4:	mov    eax,DWORD PTR [edi]
  ebb6c6:	mov    ecx,DWORD PTR [eax+0x110]
  ebb6cc:	mov    DWORD PTR [esp+0x4],ecx
  ebb6d0:	mov    DWORD PTR [esp],edi
  ebb6d3:	call   DWORD PTR [eax+0x10c]
  ebb6d9:	mov    DWORD PTR [esp+0x48],eax
  ebb6dd:	mov    eax,DWORD PTR [edi+0x8]
  ebb6e0:	test   eax,eax
  ebb6e2:	je     ebb9dc
  ebb6e8:	mov    DWORD PTR [esp],eax
  ebb6eb:	mov    DWORD PTR [esp+0x4],0x0
  ebb6f3:	call   6b291c  ; ABH.GameDatas.SkillGameData::get_SkillNameId
  ebb6f8:	mov    edi,eax
  ebb6fa:	lea    eax,[ebx+0x458a8]
  ebb700:	mov    eax,DWORD PTR [eax]
  ebb702:	mov    DWORD PTR [esp],eax
  ebb705:	call   20bfb2
  ebb70a:	mov    esi,eax
  ebb70c:	cvttss2si eax,DWORD PTR [esp+0x50]
  ebb712:	mov    DWORD PTR [esp+0x28],edi
  ebb716:	mov    ecx,DWORD PTR [esp+0x48]
  ebb71a:	mov    DWORD PTR [esp+0x24],ecx
  ebb71e:	mov    ecx,DWORD PTR [esp+0x4c]
  ebb722:	mov    DWORD PTR [esp+0x1c],ecx
  ebb726:	mov    ecx,DWORD PTR [ebp+0xc]
  ebb729:	mov    DWORD PTR [esp+0x18],ecx
  ebb72d:	mov    DWORD PTR [esp+0x14],eax
  ebb731:	mov    eax,DWORD PTR [esp+0x5c]
  ebb735:	mov    DWORD PTR [esp+0x10],eax
  ebb739:	mov    eax,DWORD PTR [ebp+0x10]
  ebb73c:	mov    DWORD PTR [esp+0x8],eax
  ebb740:	mov    DWORD PTR [esp+0x4],eax
  ebb744:	mov    DWORD PTR [esp],esi
  ebb747:	mov    DWORD PTR [esp+0x20],0x0
  ebb74f:	call   ebd536  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
  ebb754:	test   esi,esi
  ebb756:	je     ebb9dc
  ebb75c:	mov    DWORD PTR [esp],esi
  ebb75f:	call   ebf170  ; ABH.GameDatas.Battle.BattleEffectGameData::GetTurnsLeft
  ebb764:	mov    ecx,eax
  ebb766:	mov    eax,DWORD PTR [ebp+0x8]
  ebb769:	cmp    BYTE PTR [eax+0x1c],0x0
  ebb76d:	je     ebb7c4
  ebb76f:	mov    DWORD PTR [esp+0x5c],ecx
  ebb773:	lea    eax,[ebx+0x45890]
  ebb779:	mov    eax,DWORD PTR [eax]
  ebb77b:	mov    DWORD PTR [esp],eax
  ebb77e:	call   20bfb2
  ebb783:	mov    edi,eax
  ebb785:	lea    eax,[ebx+0x4a074]
  ebb78b:	mov    eax,DWORD PTR [eax]
  ebb78d:	mov    DWORD PTR [esp+0x4],eax
  ebb791:	mov    DWORD PTR [esp],edi
  ebb794:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ebb799:	test   edi,edi
  ebb79b:	je     ebb9dc
  ebb7a1:	lea    eax,[ebx+0x4a078]
  ebb7a7:	mov    eax,DWORD PTR [eax]
  ebb7a9:	mov    DWORD PTR [esp+0x8],eax
  ebb7ad:	mov    eax,DWORD PTR [ebp+0x10]
  ebb7b0:	mov    DWORD PTR [esp+0x4],eax
  ebb7b4:	mov    DWORD PTR [esp],edi
  ebb7b7:	mov    DWORD PTR [esp+0x54],edi
  ebb7bb:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  ebb7c0:	mov    ecx,DWORD PTR [esp+0x5c]
  ebb7c4:	mov    eax,DWORD PTR [ebp+0xc]
  ebb7c7:	mov    DWORD PTR [esp+0x10],eax
  ebb7cb:	mov    eax,DWORD PTR [ebp+0x10]
  ebb7ce:	mov    DWORD PTR [esp+0xc],eax
  ebb7d2:	mov    eax,DWORD PTR [esp+0x54]
  ebb7d6:	mov    DWORD PTR [esp+0x8],eax
  ebb7da:	mov    DWORD PTR [esp+0x4],ecx
  ebb7de:	mov    eax,DWORD PTR [ebp+0x8]
  ebb7e1:	mov    DWORD PTR [esp],eax
  ebb7e4:	call   ec9606  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnChargeBubble
  ebb7e9:	mov    BYTE PTR [esi+0x39],0x1
  ebb7ed:	mov    DWORD PTR [esp],esi
  ebb7f0:	mov    DWORD PTR [esp+0x4],0x1
  ebb7f8:	call   ebf8b0  ; ABH.GameDatas.Battle.BattleEffectGameData::AddEffect
  ebb7fd:	mov    al,0x1
  ebb7ff:	jmp    ebb8eb
  ebb804:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebb808:	lea    ecx,[ecx+eax*8+0x23c]
  ebb80f:	mov    esi,DWORD PTR [ebp+0x10]
  ebb812:	mov    eax,DWORD PTR [ecx+0x4]
  ebb815:	mov    DWORD PTR [esp+0x4],eax
  ebb819:	mov    DWORD PTR [esp],esi
  ebb81c:	call   DWORD PTR [ecx]
  ebb81e:	mov    esi,eax
  ebb820:	mov    eax,DWORD PTR [ebp+0x8]
  ebb823:	mov    eax,DWORD PTR [eax+0x8]
  ebb826:	test   eax,eax
  ebb828:	je     ebb9dc
  ebb82e:	mov    DWORD PTR [esp],eax
  ebb831:	mov    DWORD PTR [esp+0x4],0x0
  ebb839:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ebb83e:	test   eax,eax
  ebb840:	je     ebb9dc
  ebb846:	mov    DWORD PTR [esp],eax
  ebb849:	mov    DWORD PTR [esp+0x4],0x0
  ebb851:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  ebb856:	mov    edi,eax
  ebb858:	lea    eax,[ebx+0x430e4]
  ebb85e:	mov    eax,DWORD PTR [eax]
  ebb860:	test   BYTE PTR [eax+0xb2],0x1
  ebb867:	je     ebb877
  ebb869:	cmp    DWORD PTR [eax+0x60],0x0
  ebb86d:	jne    ebb877
  ebb86f:	mov    DWORD PTR [esp],eax
  ebb872:	call   1db0b8
  ebb877:	lea    eax,[ebx+0x56b8c]  ; literal "Charge_"
  ebb87d:	mov    eax,DWORD PTR [eax]
  ebb87f:	mov    DWORD PTR [esp+0x8],edi
  ebb883:	mov    DWORD PTR [esp+0x4],eax
  ebb887:	mov    DWORD PTR [esp+0xc],0x0
  ebb88f:	mov    DWORD PTR [esp],0x0
  ebb896:	call   ca462a  ; System.String::Concat
  ebb89b:	test   esi,esi
  ebb89d:	je     ebb9dc
  ebb8a3:	lea    ecx,[ebx+0x4a340]
  ebb8a9:	mov    ecx,DWORD PTR [ecx]
  ebb8ab:	mov    DWORD PTR [esp+0xc],ecx
  ebb8af:	lea    ecx,[esp+0xc8]
  ebb8b6:	mov    DWORD PTR [esp+0x8],ecx
  ebb8ba:	mov    DWORD PTR [esp+0x4],eax
  ebb8be:	mov    DWORD PTR [esp],esi
  ebb8c1:	call   61b116  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, string>::TryGetValue | +25 other aliases
  ebb8c6:	test   al,al
  ebb8c8:	je     ebb8e9
  ebb8ca:	mov    eax,DWORD PTR [esp+0xc8]
  ebb8d1:	test   eax,eax
  ebb8d3:	je     ebb9dc
  ebb8d9:	mov    DWORD PTR [esp],eax
  ebb8dc:	mov    DWORD PTR [esp+0x4],0x1
  ebb8e4:	call   ebf6b2  ; ABH.GameDatas.Battle.BattleEffectGameData::IncrementCurrentTurnManual
  ebb8e9:	xor    eax,eax
  ebb8eb:	movzx  eax,al
  ebb8ee:	lea    esp,[ebp-0xc]
  ebb8f1:	pop    esi
  ebb8f2:	pop    edi
  ebb8f3:	pop    ebx
  ebb8f4:	pop    ebp
  ebb8f5:	ret
  ebb8f6:	mov    eax,DWORD PTR [esp+0x5c]
  ebb8fa:	mov    eax,DWORD PTR [eax]
  ebb8fc:	mov    ecx,DWORD PTR [esi]
  ebb8fe:	movzx  edx,WORD PTR [ecx+0xaa]
  ebb905:	test   edx,edx
  ebb907:	je     ebb918
  ebb909:	mov    esi,DWORD PTR [ecx+0x4c]
  ebb90c:	xor    edi,edi
  ebb90e:	cmp    DWORD PTR [esi+edi*8],eax
  ebb911:	je     ebb931
  ebb913:	inc    edi
  ebb914:	cmp    edi,edx
  ebb916:	jb     ebb90e
  ebb918:	mov    DWORD PTR [esp+0x4],eax
  ebb91c:	mov    esi,DWORD PTR [ebp+0x10]
  ebb91f:	mov    DWORD PTR [esp],esi
  ebb922:	mov    DWORD PTR [esp+0x8],0x8b
  ebb92a:	call   1c1964
  ebb92f:	jmp    ebb93f
  ebb931:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebb935:	lea    eax,[ecx+eax*8+0x50c]
  ebb93c:	mov    esi,DWORD PTR [ebp+0x10]
  ebb93f:	mov    ecx,DWORD PTR [eax+0x4]
  ebb942:	mov    DWORD PTR [esp+0x8],ecx
  ebb946:	mov    DWORD PTR [esp],esi
  ebb949:	mov    DWORD PTR [esp+0x4],0x1
  ebb951:	call   DWORD PTR [eax]
  ebb953:	mov    edi,esi
  ebb955:	mov    esi,DWORD PTR [ebp+0x8]
  ebb958:	mov    ecx,esi
  ebb95a:	cmp    BYTE PTR [ecx+0x1c],0x0
  ebb95e:	je     ebb9a9
  ebb960:	lea    eax,[ebx+0x45890]
  ebb966:	mov    eax,DWORD PTR [eax]
  ebb968:	mov    DWORD PTR [esp],eax
  ebb96b:	call   20bfb2
  ebb970:	mov    esi,eax
  ebb972:	lea    eax,[ebx+0x4a074]
  ebb978:	mov    eax,DWORD PTR [eax]
  ebb97a:	mov    DWORD PTR [esp+0x4],eax
  ebb97e:	mov    DWORD PTR [esp],esi
  ebb981:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ebb986:	test   esi,esi
  ebb988:	je     ebb9dc
  ebb98a:	lea    eax,[ebx+0x4a078]
  ebb990:	mov    eax,DWORD PTR [eax]
  ebb992:	mov    DWORD PTR [esp+0x8],eax
  ebb996:	mov    DWORD PTR [esp+0x4],edi
  ebb99a:	mov    DWORD PTR [esp],esi
  ebb99d:	mov    DWORD PTR [esp+0x54],esi
  ebb9a1:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  ebb9a6:	mov    ecx,DWORD PTR [ebp+0x8]
  ebb9a9:	mov    eax,DWORD PTR [ebp+0x18]
  ebb9ac:	mov    DWORD PTR [esp+0x10],eax
  ebb9b0:	mov    eax,DWORD PTR [esp+0x54]
  ebb9b4:	mov    DWORD PTR [esp+0xc],eax
  ebb9b8:	mov    DWORD PTR [esp+0x8],edi
  ebb9bc:	mov    eax,DWORD PTR [ebp+0xc]
  ebb9bf:	mov    DWORD PTR [esp+0x4],eax
  ebb9c3:	mov    DWORD PTR [esp],ecx
  ebb9c6:	call   eba86c  ; ABH.GameDatas.Battle.SkillBattleDataBase::EvaluateCharge
  ebb9cb:	jmp    ebb8eb
  ebb9d0:	mov    DWORD PTR [esp],eax
  ebb9d3:	call   1b9bd0
  ebb9d8:	mov    ebx,DWORD PTR [esp+0x58]
  ebb9dc:	call   1fbc48
  ebb9e1:	call   ebbb41
  ebb9e6:	call   ebbb41
  ebb9eb:	call   ebbb41
  ebb9f0:	call   ebbb41
  ebb9f5:	call   ebbb41
  ebb9fa:	call   ebbb41