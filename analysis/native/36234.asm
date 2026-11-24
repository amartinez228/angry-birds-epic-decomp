
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eee6c3:
  eee6c3:	push   ebp
  eee6c4:	mov    ebp,esp
  eee6c6:	push   ebx
  eee6c7:	push   edi
  eee6c8:	push   esi
  eee6c9:	and    esp,0xfffffff0
  eee6cc:	sub    esp,0x80
  eee6d2:	call   eee6d7
  eee6d7:	pop    ebx
  eee6d8:	add    ebx,0x102386d
  eee6de:	mov    DWORD PTR [esp+0x5c],ebx
  eee6e2:	mov    al,BYTE PTR [ebx+0x62805]
  eee6e8:	test   al,al
  eee6ea:	jne    eee703
  eee6ec:	lea    eax,[ebx-0x670404]
  eee6f2:	mov    eax,DWORD PTR [eax]
  eee6f4:	mov    DWORD PTR [esp],eax
  eee6f7:	call   1ca6e8
  eee6fc:	mov    BYTE PTR [ebx+0x62805],0x1
  eee703:	lea    eax,[ebx+0x56c2c]  ; literal "Stun"
  eee709:	mov    DWORD PTR [esp+0x40],eax
  eee70d:	mov    edi,DWORD PTR [eax]
  eee70f:	lea    eax,[ebx+0x45290]
  eee715:	mov    eax,DWORD PTR [eax]
  eee717:	mov    DWORD PTR [esp],eax
  eee71a:	call   20bfb2
  eee71f:	mov    esi,eax
  eee721:	lea    eax,[ebx+0x49708]
  eee727:	mov    eax,DWORD PTR [eax]
  eee729:	mov    DWORD PTR [esp+0x4],eax
  eee72d:	mov    DWORD PTR [esp],esi
  eee730:	call   4d21ef  ; System.Collections.Generic.List`1<float>::.ctor
  eee735:	test   esi,esi
  eee737:	je     eef054
  eee73d:	mov    ecx,DWORD PTR [ebp+0x8]
  eee740:	movss  xmm0,DWORD PTR [ecx+0xac]
  eee748:	lea    eax,[ebx+0x4970c]
  eee74e:	mov    eax,DWORD PTR [eax]
  eee750:	mov    DWORD PTR [esp+0x8],eax
  eee754:	movss  DWORD PTR [esp+0x4],xmm0
  eee75a:	mov    DWORD PTR [esp],esi
  eee75d:	mov    DWORD PTR [esp+0x3c],esi
  eee761:	mov    esi,ecx
  eee763:	call   4d30f2  ; System.Collections.Generic.List`1<float>::Add
  eee768:	movss  xmm0,DWORD PTR [esi+0xa4]
  eee770:	movss  DWORD PTR [esp+0x64],xmm0
  eee776:	mov    DWORD PTR [esp+0x4],0x0
  eee77e:	mov    DWORD PTR [esp],0x0
  eee785:	call   167eb9e  ; UnityEngine.Random::get_value
  eee78a:	fstp   DWORD PTR [esp+0x6c]
  eee78e:	movss  xmm0,DWORD PTR [esp+0x64]
  eee794:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eee79c:	ucomiss xmm0,DWORD PTR [esp+0x6c]
  eee7a1:	jbe    eeeb38
  eee7a7:	mov    DWORD PTR [esp+0x60],edi
  eee7ab:	mov    edi,esi
  eee7ad:	lea    eax,[ebx+0x56cf0]  ; literal "Main target stunned"
  eee7b3:	mov    eax,DWORD PTR [eax]
  eee7b5:	mov    DWORD PTR [esp+0x4],eax
  eee7b9:	mov    DWORD PTR [esp+0x8],0x0
  eee7c1:	mov    DWORD PTR [esp],0x0
  eee7c8:	call   1068c69  ; DebugLog::Log
  eee7cd:	lea    eax,[ebx+0x4589c]
  eee7d3:	mov    eax,DWORD PTR [eax]
  eee7d5:	mov    DWORD PTR [esp],eax
  eee7d8:	call   20bfb2
  eee7dd:	mov    DWORD PTR [esp+0x64],eax
  eee7e1:	lea    ecx,[ebx+0x4a138]
  eee7e7:	mov    ecx,DWORD PTR [ecx]
  eee7e9:	mov    DWORD PTR [esp+0x4],ecx
  eee7ed:	mov    DWORD PTR [esp],eax
  eee7f0:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eee7f5:	lea    eax,[ebx+0x454a8]
  eee7fb:	mov    eax,DWORD PTR [eax]
  eee7fd:	mov    DWORD PTR [esp],eax
  eee800:	call   20bfb2
  eee805:	mov    esi,eax
  eee807:	mov    DWORD PTR [esp],esi
  eee80a:	mov    DWORD PTR [esp+0x4],0x0
  eee812:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
  eee817:	test   esi,esi
  eee819:	je     eef054
  eee81f:	mov    DWORD PTR [esp],esi
  eee822:	mov    DWORD PTR [esp+0x8],0x0
  eee82a:	mov    DWORD PTR [esp+0x4],0x5
  eee832:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
  eee837:	mov    DWORD PTR [esp],esi
  eee83a:	mov    DWORD PTR [esp+0x8],0x0
  eee842:	mov    DWORD PTR [esp+0x4],0x12
  eee84a:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
  eee84f:	mov    DWORD PTR [esp],esi
  eee852:	mov    DWORD PTR [esp+0x8],0x0
  eee85a:	mov    DWORD PTR [esp+0x4],0x2
  eee862:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
  eee867:	mov    eax,DWORD PTR [esp+0x3c]
  eee86b:	mov    DWORD PTR [esp+0x4],eax
  eee86f:	mov    DWORD PTR [esp],esi
  eee872:	mov    DWORD PTR [esp+0x8],0x0
  eee87a:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
  eee87f:	cvttss2si eax,DWORD PTR [edi+0xac]
  eee887:	mov    DWORD PTR [esp+0x4],eax
  eee88b:	mov    DWORD PTR [esp],esi
  eee88e:	mov    DWORD PTR [esp+0x8],0x0
  eee896:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
  eee89b:	cmp    BYTE PTR [edi+0xb0],0x0
  eee8a2:	je     eee8dd
  eee8a4:	mov    eax,DWORD PTR [edi+0x8]
  eee8a7:	test   eax,eax
  eee8a9:	je     eef050
  eee8af:	mov    DWORD PTR [esp],eax
  eee8b2:	mov    DWORD PTR [esp+0x4],0x0
  eee8ba:	mov    ebx,DWORD PTR [esp+0x5c]
  eee8be:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  eee8c3:	test   eax,eax
  eee8c5:	je     eef054
  eee8cb:	mov    DWORD PTR [esp],eax
  eee8ce:	mov    DWORD PTR [esp+0x4],0x0
  eee8d6:	call   17032ad  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAssetId
  eee8db:	jmp    eee8e7
  eee8dd:	mov    eax,DWORD PTR [esp+0x40]
  eee8e1:	mov    eax,DWORD PTR [eax]
  eee8e3:	mov    ebx,DWORD PTR [esp+0x5c]
  eee8e7:	mov    DWORD PTR [esp+0x4],eax
  eee8eb:	mov    DWORD PTR [esp],esi
  eee8ee:	mov    DWORD PTR [esp+0x8],0x0
  eee8f6:	call   179afdb  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAssetId
  eee8fb:	mov    ecx,DWORD PTR [ebp+0x8]
  eee8fe:	cmp    BYTE PTR [ecx+0xb0],0x0
  eee905:	je     eee93e
  eee907:	mov    eax,DWORD PTR [ecx+0x8]
  eee90a:	mov    edi,ecx
  eee90c:	test   eax,eax
  eee90e:	je     eef054
  eee914:	mov    DWORD PTR [esp],eax
  eee917:	mov    DWORD PTR [esp+0x4],0x0
  eee91f:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  eee924:	test   eax,eax
  eee926:	je     eef054
  eee92c:	mov    DWORD PTR [esp],eax
  eee92f:	mov    DWORD PTR [esp+0x4],0x0
  eee937:	call   170328a  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAtlasId
  eee93c:	jmp    eee948
  eee93e:	mov    edi,ecx
  eee940:	lea    eax,[ebx+0x56c7c]  ; literal "Skills_Generic"
  eee946:	mov    eax,DWORD PTR [eax]
  eee948:	mov    DWORD PTR [esp+0x4],eax
  eee94c:	mov    DWORD PTR [esp],esi
  eee94f:	mov    DWORD PTR [esp+0x8],0x0
  eee957:	call   179afb8  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAtlasId
  eee95c:	mov    ecx,DWORD PTR [esp+0x64]
  eee960:	test   ecx,ecx
  eee962:	je     eef054
  eee968:	lea    eax,[ebx+0x4a144]
  eee96e:	mov    eax,DWORD PTR [eax]
  eee970:	mov    DWORD PTR [esp+0x8],eax
  eee974:	mov    DWORD PTR [esp+0x4],esi
  eee978:	mov    DWORD PTR [esp],ecx
  eee97b:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eee980:	movss  xmm0,DWORD PTR [edi+0xac]
  eee988:	movss  DWORD PTR [esp+0x58],xmm0
  eee98e:	mov    eax,DWORD PTR [edi]
  eee990:	mov    ecx,DWORD PTR [eax+0x110]
  eee996:	mov    DWORD PTR [esp+0x4],ecx
  eee99a:	mov    DWORD PTR [esp],edi
  eee99d:	call   DWORD PTR [eax+0x10c]
  eee9a3:	mov    DWORD PTR [esp+0x54],eax
  eee9a7:	mov    eax,DWORD PTR [edi+0x8]
  eee9aa:	test   eax,eax
  eee9ac:	je     eef054
  eee9b2:	mov    DWORD PTR [esp],eax
  eee9b5:	mov    DWORD PTR [esp+0x4],0x0
  eee9bd:	call   6b291c  ; ABH.GameDatas.SkillGameData::get_SkillNameId
  eee9c2:	mov    edi,eax
  eee9c4:	lea    eax,[ebx+0x458a8]
  eee9ca:	mov    eax,DWORD PTR [eax]
  eee9cc:	mov    DWORD PTR [esp],eax
  eee9cf:	call   20bfb2
  eee9d4:	mov    esi,eax
  eee9d6:	cvttss2si eax,DWORD PTR [esp+0x58]
  eee9dc:	mov    DWORD PTR [esp+0x28],edi
  eee9e0:	mov    ecx,DWORD PTR [esp+0x54]
  eee9e4:	mov    DWORD PTR [esp+0x24],ecx
  eee9e8:	mov    ecx,DWORD PTR [esp+0x60]
  eee9ec:	mov    DWORD PTR [esp+0x1c],ecx
  eee9f0:	mov    ecx,DWORD PTR [ebp+0xc]
  eee9f3:	mov    DWORD PTR [esp+0x18],ecx
  eee9f7:	mov    DWORD PTR [esp+0x14],eax
  eee9fb:	mov    eax,DWORD PTR [esp+0x64]
  eee9ff:	mov    DWORD PTR [esp+0x10],eax
  eeea03:	mov    eax,DWORD PTR [ebp+0x14]
  eeea06:	mov    DWORD PTR [esp+0x8],eax
  eeea0a:	mov    eax,DWORD PTR [ebp+0x10]
  eeea0d:	mov    DWORD PTR [esp+0x4],eax
  eeea11:	mov    DWORD PTR [esp],esi
  eeea14:	mov    DWORD PTR [esp+0x20],0x2
  eeea1c:	call   ebd536  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
  eeea21:	test   esi,esi
  eeea23:	je     eef054
  eeea29:	mov    DWORD PTR [esp],esi
  eeea2c:	mov    DWORD PTR [esp+0x4],0x1
  eeea34:	call   ebf8b0  ; ABH.GameDatas.Battle.BattleEffectGameData::AddEffect
  eeea39:	lea    edi,[ebx+0x459ac]
  eeea3f:	mov    DWORD PTR [esp+0x5c],ebx
  eeea43:	mov    eax,DWORD PTR [edi]
  eeea45:	mov    eax,DWORD PTR [eax+0x50]
  eeea48:	mov    eax,DWORD PTR [eax]
  eeea4a:	test   eax,eax
  eeea4c:	jne    eeeab0
  eeea4e:	mov    ebx,DWORD PTR [esp+0x5c]
  eeea52:	lea    eax,[ebx+0x4a46c]
  eeea58:	mov    eax,DWORD PTR [eax]
  eeea5a:	mov    DWORD PTR [esp+0x64],eax
  eeea5e:	lea    eax,[ebx+0x458a0]
  eeea64:	mov    eax,DWORD PTR [eax]
  eeea66:	mov    DWORD PTR [esp],eax
  eeea69:	call   20bfb2
  eeea6e:	mov    DWORD PTR [esp+0x60],eax
  eeea72:	mov    ecx,DWORD PTR [esp+0x64]
  eeea76:	mov    DWORD PTR [esp+0x78],ecx
  eeea7a:	lea    ecx,[ebx+0x4a390]
  eeea80:	mov    ecx,DWORD PTR [ecx]
  eeea82:	mov    DWORD PTR [esp+0xc],ecx
  eeea86:	mov    ecx,DWORD PTR [esp+0x78]
  eeea8a:	mov    DWORD PTR [esp+0x8],ecx
  eeea8e:	mov    DWORD PTR [esp],eax
  eeea91:	mov    DWORD PTR [esp+0x4],0x0
  eeea99:	call   176d657  ; shared address: System.Action`1<object>::.ctor | System.Action`1<Facebook.Unity.Settings.FacebookSettings+OnChangeCallback>::.ctor | System.Action`1<ABH.GameDatas.Battle.BattleEffectGameData>::.ctor | +69 other aliases
  eeea9e:	mov    eax,DWORD PTR [edi]
  eeeaa0:	mov    eax,DWORD PTR [eax+0x50]
  eeeaa3:	mov    ecx,DWORD PTR [esp+0x60]
  eeeaa7:	mov    DWORD PTR [eax],ecx
  eeeaa9:	mov    eax,DWORD PTR [edi]
  eeeaab:	mov    eax,DWORD PTR [eax+0x50]
  eeeaae:	mov    eax,DWORD PTR [eax]
  eeeab0:	mov    DWORD PTR [esi+0x14],eax
  eeeab3:	mov    esi,DWORD PTR [esi+0x20]
  eeeab6:	test   esi,esi
  eeeab8:	je     eef050
  eeeabe:	mov    eax,DWORD PTR [esp+0x5c]
  eeeac2:	lea    eax,[eax+0x45874]
  eeeac8:	mov    eax,DWORD PTR [eax]
  eeeaca:	mov    ebx,DWORD PTR [esi]
  eeeacc:	movzx  edx,WORD PTR [ebx+0xaa]
  eeead3:	test   edx,edx
  eeead5:	je     eeeae6
  eeead7:	mov    edi,DWORD PTR [ebx+0x4c]
  eeeada:	xor    ecx,ecx
  eeeadc:	cmp    DWORD PTR [edi+ecx*8],eax
  eeeadf:	je     eeeb02
  eeeae1:	inc    ecx
  eeeae2:	cmp    ecx,edx
  eeeae4:	jb     eeeadc
  eeeae6:	mov    DWORD PTR [esp+0x4],eax
  eeeaea:	mov    DWORD PTR [esp],esi
  eeeaed:	mov    DWORD PTR [esp+0x8],0x11
  eeeaf5:	mov    ebx,DWORD PTR [esp+0x5c]
  eeeaf9:	call   1c1964
  eeeafe:	mov    ecx,eax
  eeeb00:	jmp    eeeb11
  eeeb02:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eeeb06:	lea    ecx,[ebx+eax*8+0x13c]
  eeeb0d:	mov    ebx,DWORD PTR [esp+0x5c]
  eeeb11:	mov    eax,DWORD PTR [ecx+0x4]
  eeeb14:	mov    DWORD PTR [esp+0x4],eax
  eeeb18:	mov    DWORD PTR [esp],esi
  eeeb1b:	call   DWORD PTR [ecx]
  eeeb1d:	test   eax,eax
  eeeb1f:	je     eef054
  eeeb25:	mov    DWORD PTR [esp],eax
  eeeb28:	mov    DWORD PTR [esp+0x4],0x0
  eeeb30:	call   8d8313  ; CharacterControllerBattleGroundBase::PlayStunnedAnimation
  eeeb35:	mov    esi,DWORD PTR [ebp+0x8]
  eeeb38:	mov    eax,DWORD PTR [esi+0xb4]
  eeeb3e:	test   eax,eax
  eeeb40:	je     eef054
  eeeb46:	xor    edi,edi
  eeeb48:	lea    ecx,[ebx+0x4a048]
  eeeb4e:	mov    DWORD PTR [esp+0x58],ecx
  eeeb52:	movss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eeeb5a:	movss  DWORD PTR [esp+0x54],xmm0
  eeeb60:	mov    ecx,DWORD PTR [esp+0x58]
  eeeb64:	mov    ecx,DWORD PTR [ecx]
  eeeb66:	mov    DWORD PTR [esp+0x4],ecx
  eeeb6a:	mov    DWORD PTR [esp],eax
  eeeb6d:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eeeb72:	cmp    edi,eax
  eeeb74:	jge    eef048
  eeeb7a:	movss  xmm0,DWORD PTR [esi+0xa8]
  eeeb82:	movss  DWORD PTR [esp+0x64],xmm0
  eeeb88:	mov    DWORD PTR [esp+0x4],0x0
  eeeb90:	mov    DWORD PTR [esp],0x0
  eeeb97:	call   167eb9e  ; UnityEngine.Random::get_value
  eeeb9c:	fstp   DWORD PTR [esp+0x68]
  eeeba0:	movss  xmm0,DWORD PTR [esp+0x68]
  eeeba6:	mulss  xmm0,DWORD PTR [esp+0x54]
  eeebac:	movss  xmm1,DWORD PTR [esp+0x64]
  eeebb2:	ucomiss xmm1,xmm0
  eeebb5:	jbe    eef037
  eeebbb:	mov    eax,DWORD PTR [esi+0xb4]
  eeebc1:	test   eax,eax
  eeebc3:	je     eef054
  eeebc9:	lea    ecx,[ebx+0x4a0ac]
  eeebcf:	mov    ecx,DWORD PTR [ecx]
  eeebd1:	mov    DWORD PTR [esp+0x8],ecx
  eeebd5:	mov    DWORD PTR [esp+0x4],edi
  eeebd9:	mov    DWORD PTR [esp+0x50],edi
  eeebdd:	mov    DWORD PTR [esp],eax
  eeebe0:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  eeebe5:	test   eax,eax
  eeebe7:	je     eef054
  eeebed:	lea    ecx,[ebx+0x45874]
  eeebf3:	mov    DWORD PTR [esp+0x4c],ecx
  eeebf7:	mov    ecx,DWORD PTR [ecx]
  eeebf9:	mov    ebx,DWORD PTR [eax]
  eeebfb:	mov    DWORD PTR [esp+0x64],eax
  eeebff:	movzx  edx,WORD PTR [ebx+0xaa]
  eeec06:	test   edx,edx
  eeec08:	je     eeec19
  eeec0a:	mov    esi,DWORD PTR [ebx+0x4c]
  eeec0d:	xor    edi,edi
  eeec0f:	cmp    DWORD PTR [esi+edi*8],ecx
  eeec12:	je     eeec39
  eeec14:	inc    edi
  eeec15:	cmp    edi,edx
  eeec17:	jb     eeec0f
  eeec19:	mov    DWORD PTR [esp+0x4],ecx
  eeec1d:	mov    esi,DWORD PTR [esp+0x64]
  eeec21:	mov    DWORD PTR [esp],esi
  eeec24:	mov    DWORD PTR [esp+0x8],0xa
  eeec2c:	mov    ebx,DWORD PTR [esp+0x5c]
  eeec30:	call   1c1964
  eeec35:	mov    ecx,eax
  eeec37:	jmp    eeec4c
  eeec39:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eeec3d:	lea    ecx,[ebx+eax*8+0x104]
  eeec44:	mov    ebx,DWORD PTR [esp+0x5c]
  eeec48:	mov    esi,DWORD PTR [esp+0x64]
  eeec4c:	mov    DWORD PTR [esp+0x64],esi
  eeec50:	mov    eax,DWORD PTR [ecx+0x4]
  eeec53:	mov    DWORD PTR [esp+0x4],eax
  eeec57:	mov    DWORD PTR [esp],esi
  eeec5a:	call   DWORD PTR [ecx]
  eeec5c:	mov    esi,eax
  eeec5e:	lea    eax,[ebx+0x430e4]
  eeec64:	mov    eax,DWORD PTR [eax]
  eeec66:	test   BYTE PTR [eax+0xb2],0x1
  eeec6d:	je     eeec7d
  eeec6f:	cmp    DWORD PTR [eax+0x60],0x0
  eeec73:	jne    eeec7d
  eeec75:	mov    DWORD PTR [esp],eax
  eeec78:	call   1db0b8
  eeec7d:	lea    eax,[ebx+0x56cf4]  ; literal "Stun extra target: "
  eeec83:	mov    eax,DWORD PTR [eax]
  eeec85:	mov    DWORD PTR [esp+0x8],esi
  eeec89:	mov    DWORD PTR [esp+0x4],eax
  eeec8d:	mov    DWORD PTR [esp+0xc],0x0
  eeec95:	mov    DWORD PTR [esp],0x0
  eeec9c:	call   ca462a  ; System.String::Concat
  eeeca1:	mov    esi,eax
  eeeca3:	lea    eax,[ebx+0x44e64]
  eeeca9:	mov    eax,DWORD PTR [eax]
  eeecab:	test   BYTE PTR [eax+0xb2],0x1
  eeecb2:	je     eeecc2
  eeecb4:	cmp    DWORD PTR [eax+0x60],0x0
  eeecb8:	jne    eeecc2
  eeecba:	mov    DWORD PTR [esp],eax
  eeecbd:	call   1db0b8
  eeecc2:	mov    DWORD PTR [esp+0x4],esi
  eeecc6:	mov    DWORD PTR [esp+0x8],0x0
  eeecce:	mov    DWORD PTR [esp],0x0
  eeecd5:	call   14ed6da  ; UnityEngine.Debug::Log
  eeecda:	lea    eax,[ebx+0x4589c]
  eeece0:	mov    eax,DWORD PTR [eax]
  eeece2:	mov    DWORD PTR [esp],eax
  eeece5:	call   20bfb2
  eeecea:	mov    DWORD PTR [esp+0x60],eax
  eeecee:	lea    ecx,[ebx+0x4a138]
  eeecf4:	mov    ecx,DWORD PTR [ecx]
  eeecf6:	mov    DWORD PTR [esp+0x4],ecx
  eeecfa:	mov    DWORD PTR [esp],eax
  eeecfd:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eeed02:	lea    eax,[ebx+0x454a8]
  eeed08:	mov    eax,DWORD PTR [eax]
  eeed0a:	mov    DWORD PTR [esp],eax
  eeed0d:	call   20bfb2
  eeed12:	mov    edi,eax
  eeed14:	mov    DWORD PTR [esp],edi
  eeed17:	mov    DWORD PTR [esp+0x4],0x0
  eeed1f:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
  eeed24:	test   edi,edi
  eeed26:	je     eef054
  eeed2c:	mov    DWORD PTR [esp],edi
  eeed2f:	mov    DWORD PTR [esp+0x8],0x0
  eeed37:	mov    DWORD PTR [esp+0x4],0x5
  eeed3f:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
  eeed44:	mov    DWORD PTR [esp],edi
  eeed47:	mov    DWORD PTR [esp+0x8],0x0
  eeed4f:	mov    DWORD PTR [esp+0x4],0x12
  eeed57:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
  eeed5c:	mov    DWORD PTR [esp],edi
  eeed5f:	mov    DWORD PTR [esp+0x8],0x0
  eeed67:	mov    DWORD PTR [esp+0x4],0x2
  eeed6f:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
  eeed74:	mov    eax,DWORD PTR [esp+0x3c]
  eeed78:	mov    DWORD PTR [esp+0x4],eax
  eeed7c:	mov    DWORD PTR [esp],edi
  eeed7f:	mov    DWORD PTR [esp+0x8],0x0
  eeed87:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
  eeed8c:	mov    esi,DWORD PTR [ebp+0x8]
  eeed8f:	cvttss2si eax,DWORD PTR [esi+0xac]
  eeed97:	mov    DWORD PTR [esp+0x4],eax
  eeed9b:	mov    DWORD PTR [esp],edi
  eeed9e:	mov    DWORD PTR [esp+0x8],0x0
  eeeda6:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
  eeedab:	cmp    BYTE PTR [esi+0xb0],0x0
  eeedb2:	je     eeede9
  eeedb4:	mov    eax,DWORD PTR [esi+0x8]
  eeedb7:	test   eax,eax
  eeedb9:	je     eef054
  eeedbf:	mov    DWORD PTR [esp],eax
  eeedc2:	mov    DWORD PTR [esp+0x4],0x0
  eeedca:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  eeedcf:	test   eax,eax
  eeedd1:	je     eef054
  eeedd7:	mov    DWORD PTR [esp],eax
  eeedda:	mov    DWORD PTR [esp+0x4],0x0
  eeede2:	call   17032ad  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAssetId
  eeede7:	jmp    eeedef
  eeede9:	mov    eax,DWORD PTR [esp+0x40]
  eeeded:	mov    eax,DWORD PTR [eax]
  eeedef:	mov    DWORD PTR [esp+0x4],eax
  eeedf3:	mov    DWORD PTR [esp],edi
  eeedf6:	mov    DWORD PTR [esp+0x8],0x0
  eeedfe:	call   179afdb  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAssetId
  eeee03:	cmp    BYTE PTR [esi+0xb0],0x0
  eeee0a:	je     eeee41
  eeee0c:	mov    eax,DWORD PTR [esi+0x8]
  eeee0f:	test   eax,eax
  eeee11:	je     eef054
  eeee17:	mov    DWORD PTR [esp],eax
  eeee1a:	mov    DWORD PTR [esp+0x4],0x0
  eeee22:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  eeee27:	test   eax,eax
  eeee29:	je     eef054
  eeee2f:	mov    DWORD PTR [esp],eax
  eeee32:	mov    DWORD PTR [esp+0x4],0x0
  eeee3a:	call   170328a  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAtlasId
  eeee3f:	jmp    eeee49
  eeee41:	lea    eax,[ebx+0x56c7c]  ; literal "Skills_Generic"
  eeee47:	mov    eax,DWORD PTR [eax]
  eeee49:	mov    DWORD PTR [esp+0x4],eax
  eeee4d:	mov    DWORD PTR [esp],edi
  eeee50:	mov    DWORD PTR [esp+0x8],0x0
  eeee58:	call   179afb8  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAtlasId
  eeee5d:	mov    ecx,DWORD PTR [esp+0x60]
  eeee61:	test   ecx,ecx
  eeee63:	je     eef054
  eeee69:	lea    eax,[ebx+0x4a144]
  eeee6f:	mov    eax,DWORD PTR [eax]
  eeee71:	mov    DWORD PTR [esp+0x8],eax
  eeee75:	mov    DWORD PTR [esp+0x4],edi
  eeee79:	mov    DWORD PTR [esp],ecx
  eeee7c:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eeee81:	movss  xmm0,DWORD PTR [esi+0xac]
  eeee89:	movss  DWORD PTR [esp+0x48],xmm0
  eeee8f:	mov    eax,DWORD PTR [esi]
  eeee91:	mov    ecx,DWORD PTR [eax+0x110]
  eeee97:	mov    DWORD PTR [esp+0x4],ecx
  eeee9b:	mov    DWORD PTR [esp],esi
  eeee9e:	call   DWORD PTR [eax+0x10c]
  eeeea4:	mov    ecx,esi
  eeeea6:	mov    esi,eax
  eeeea8:	mov    eax,DWORD PTR [ecx+0x8]
  eeeeab:	test   eax,eax
  eeeead:	je     eef054
  eeeeb3:	mov    DWORD PTR [esp],eax
  eeeeb6:	mov    DWORD PTR [esp+0x4],0x0
  eeeebe:	call   6b291c  ; ABH.GameDatas.SkillGameData::get_SkillNameId
  eeeec3:	mov    DWORD PTR [esp+0x44],eax
  eeeec7:	lea    eax,[ebx+0x458a8]
  eeeecd:	mov    eax,DWORD PTR [eax]
  eeeecf:	mov    DWORD PTR [esp],eax
  eeeed2:	call   20bfb2
  eeeed7:	mov    edi,eax
  eeeed9:	cvttss2si eax,DWORD PTR [esp+0x48]
  eeeedf:	mov    ecx,DWORD PTR [esp+0x40]
  eeeee3:	mov    ecx,DWORD PTR [ecx]
  eeeee5:	mov    edx,DWORD PTR [esp+0x44]
  eeeee9:	mov    DWORD PTR [esp+0x28],edx
  eeeeed:	mov    DWORD PTR [esp+0x24],esi
  eeeef1:	mov    DWORD PTR [esp+0x1c],ecx
  eeeef5:	mov    ecx,DWORD PTR [ebp+0xc]
  eeeef8:	mov    DWORD PTR [esp+0x18],ecx
  eeeefc:	mov    DWORD PTR [esp+0x14],eax
  eeef00:	mov    eax,DWORD PTR [esp+0x60]
  eeef04:	mov    DWORD PTR [esp+0x10],eax
  eeef08:	mov    eax,DWORD PTR [esp+0x64]
  eeef0c:	mov    DWORD PTR [esp+0x8],eax
  eeef10:	mov    eax,DWORD PTR [ebp+0x10]
  eeef13:	mov    DWORD PTR [esp+0x4],eax
  eeef17:	mov    DWORD PTR [esp],edi
  eeef1a:	mov    DWORD PTR [esp+0x20],0x2
  eeef22:	call   ebd536  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
  eeef27:	test   edi,edi
  eeef29:	je     eef054
  eeef2f:	mov    DWORD PTR [esp],edi
  eeef32:	mov    DWORD PTR [esp+0x4],0x1
  eeef3a:	call   ebf8b0  ; ABH.GameDatas.Battle.BattleEffectGameData::AddEffect
  eeef3f:	lea    esi,[ebx+0x459ac]
  eeef45:	mov    eax,DWORD PTR [esi]
  eeef47:	mov    eax,DWORD PTR [eax+0x50]
  eeef4a:	mov    eax,DWORD PTR [eax+0x4]
  eeef4d:	test   eax,eax
  eeef4f:	jne    eeefb5
  eeef51:	mov    ebx,DWORD PTR [esp+0x5c]
  eeef55:	lea    eax,[ebx+0x4a470]
  eeef5b:	mov    eax,DWORD PTR [eax]
  eeef5d:	mov    DWORD PTR [esp+0x64],eax
  eeef61:	lea    eax,[ebx+0x458a0]
  eeef67:	mov    eax,DWORD PTR [eax]
  eeef69:	mov    DWORD PTR [esp],eax
  eeef6c:	call   20bfb2
  eeef71:	mov    DWORD PTR [esp+0x60],eax
  eeef75:	mov    ecx,DWORD PTR [esp+0x64]
  eeef79:	mov    DWORD PTR [esp+0x70],ecx
  eeef7d:	lea    ecx,[ebx+0x4a390]
  eeef83:	mov    ecx,DWORD PTR [ecx]
  eeef85:	mov    DWORD PTR [esp+0xc],ecx
  eeef89:	mov    ecx,DWORD PTR [esp+0x70]
  eeef8d:	mov    DWORD PTR [esp+0x8],ecx
  eeef91:	mov    DWORD PTR [esp],eax
  eeef94:	mov    DWORD PTR [esp+0x4],0x0
  eeef9c:	call   176d657  ; shared address: System.Action`1<object>::.ctor | System.Action`1<Facebook.Unity.Settings.FacebookSettings+OnChangeCallback>::.ctor | System.Action`1<ABH.GameDatas.Battle.BattleEffectGameData>::.ctor | +69 other aliases
  eeefa1:	mov    eax,DWORD PTR [esi]
  eeefa3:	mov    eax,DWORD PTR [eax+0x50]
  eeefa6:	mov    ecx,DWORD PTR [esp+0x60]
  eeefaa:	mov    DWORD PTR [eax+0x4],ecx
  eeefad:	mov    eax,DWORD PTR [esi]
  eeefaf:	mov    eax,DWORD PTR [eax+0x50]
  eeefb2:	mov    eax,DWORD PTR [eax+0x4]
  eeefb5:	mov    DWORD PTR [edi+0x14],eax
  eeefb8:	mov    esi,DWORD PTR [edi+0x20]
  eeefbb:	test   esi,esi
  eeefbd:	je     eef050
  eeefc3:	mov    eax,DWORD PTR [esp+0x4c]
  eeefc7:	mov    eax,DWORD PTR [eax]
  eeefc9:	mov    ebx,DWORD PTR [esi]
  eeefcb:	movzx  edx,WORD PTR [ebx+0xaa]
  eeefd2:	test   edx,edx
  eeefd4:	je     eeefe5
  eeefd6:	mov    edi,DWORD PTR [ebx+0x4c]
  eeefd9:	xor    ecx,ecx
  eeefdb:	cmp    DWORD PTR [edi+ecx*8],eax
  eeefde:	je     eef001
  eeefe0:	inc    ecx
  eeefe1:	cmp    ecx,edx
  eeefe3:	jb     eeefdb
  eeefe5:	mov    DWORD PTR [esp+0x4],eax
  eeefe9:	mov    DWORD PTR [esp],esi
  eeefec:	mov    DWORD PTR [esp+0x8],0x11
  eeeff4:	mov    ebx,DWORD PTR [esp+0x5c]
  eeeff8:	call   1c1964
  eeeffd:	mov    ecx,eax
  eeefff:	jmp    eef010
  eef001:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eef005:	lea    ecx,[ebx+eax*8+0x13c]
  eef00c:	mov    ebx,DWORD PTR [esp+0x5c]
  eef010:	mov    eax,DWORD PTR [ecx+0x4]
  eef013:	mov    DWORD PTR [esp+0x4],eax
  eef017:	mov    DWORD PTR [esp],esi
  eef01a:	call   DWORD PTR [ecx]
  eef01c:	test   eax,eax
  eef01e:	mov    edi,DWORD PTR [esp+0x50]
  eef022:	je     eef054
  eef024:	mov    DWORD PTR [esp],eax
  eef027:	mov    DWORD PTR [esp+0x4],0x0
  eef02f:	call   8d8313  ; CharacterControllerBattleGroundBase::PlayStunnedAnimation
  eef034:	mov    esi,DWORD PTR [ebp+0x8]
  eef037:	inc    edi
  eef038:	mov    eax,DWORD PTR [esi+0xb4]
  eef03e:	test   eax,eax
  eef040:	jne    eeeb60
  eef046:	jmp    eef054
  eef048:	lea    esp,[ebp-0xc]
  eef04b:	pop    esi
  eef04c:	pop    edi
  eef04d:	pop    ebx
  eef04e:	pop    ebp
  eef04f:	ret
  eef050:	mov    ebx,DWORD PTR [esp+0x5c]
  eef054:	call   1fbc48
  eef059:	call   ebbb41