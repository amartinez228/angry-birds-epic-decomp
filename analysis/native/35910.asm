
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00703981:
  703981:	push   ebp
  703982:	mov    ebp,esp
  703984:	push   ebx
  703985:	push   edi
  703986:	push   esi
  703987:	and    esp,0xfffffff0
  70398a:	sub    esp,0x80
  703990:	call   703995
  703995:	pop    ebx
  703996:	add    ebx,0x180e5af
  70399c:	mov    esi,DWORD PTR [ebp+0x8]
  70399f:	mov    al,BYTE PTR [ebx+0x5f847]
  7039a5:	test   al,al
  7039a7:	jne    7039c0
  7039a9:	lea    eax,[ebx-0x65fa44]
  7039af:	mov    eax,DWORD PTR [eax]
  7039b1:	mov    DWORD PTR [esp],eax
  7039b4:	call   1ca6e8
  7039b9:	mov    BYTE PTR [ebx+0x5f847],0x1
  7039c0:	mov    DWORD PTR [esp+0x78],0x0
  7039c8:	mov    DWORD PTR [esp+0x74],0x0
  7039d0:	xorps  xmm0,xmm0
  7039d3:	movaps XMMWORD PTR [esp+0x60],xmm0
  7039d8:	mov    DWORD PTR [esp+0x5c],0x0
  7039e0:	lea    edi,[ebx+0x4a210]
  7039e6:	mov    eax,DWORD PTR [edi]
  7039e8:	mov    DWORD PTR [esp+0x4],eax
  7039ec:	mov    DWORD PTR [esp],esi
  7039ef:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  7039f4:	mov    esi,eax
  7039f6:	test   esi,esi
  7039f8:	je     704456
  7039fe:	mov    DWORD PTR [esp],esi
  703a01:	mov    DWORD PTR [esp+0x4],0x0
  703a09:	call   179ce5d  ; ABH.Shared.Models.PlayerData::get_Experience
  703a0e:	fstp   DWORD PTR [esp+0x3c]
  703a12:	movss  xmm0,DWORD PTR [esp+0x3c]
  703a18:	cvtsi2ss xmm1,DWORD PTR [ebp+0xc]
  703a1d:	subss  xmm0,xmm1
  703a21:	mov    DWORD PTR [esp],esi
  703a24:	movss  DWORD PTR [esp+0x4],xmm0
  703a2a:	mov    DWORD PTR [esp+0x8],0x0
  703a32:	call   179ce6d  ; ABH.Shared.Models.PlayerData::set_Experience
  703a37:	mov    eax,DWORD PTR [edi]
  703a39:	mov    DWORD PTR [esp+0x34],edi
  703a3d:	mov    DWORD PTR [esp+0x4],eax
  703a41:	mov    eax,DWORD PTR [ebp+0x8]
  703a44:	mov    edi,eax
  703a46:	mov    DWORD PTR [esp],edi
  703a49:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703a4e:	mov    esi,eax
  703a50:	test   esi,esi
  703a52:	je     704456
  703a58:	mov    DWORD PTR [esp],esi
  703a5b:	mov    DWORD PTR [esp+0x4],0x0
  703a63:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  703a68:	inc    eax
  703a69:	mov    DWORD PTR [esp+0x4],eax
  703a6d:	mov    DWORD PTR [esp],esi
  703a70:	mov    DWORD PTR [esp+0x8],0x0
  703a78:	call   179cda8  ; ABH.Shared.Models.PlayerData::set_Level
  703a7d:	lea    eax,[ebx+0x45820]
  703a83:	mov    eax,DWORD PTR [eax]
  703a85:	test   BYTE PTR [eax+0xb2],0x1
  703a8c:	je     703a9c
  703a8e:	cmp    DWORD PTR [eax+0x60],0x0
  703a92:	jne    703a9c
  703a94:	mov    DWORD PTR [esp],eax
  703a97:	call   1db0b8
  703a9c:	mov    DWORD PTR [esp+0x4],0x0
  703aa4:	mov    DWORD PTR [esp],0x0
  703aab:	call   107cf95  ; DIContainerBalancing::get_Service
  703ab0:	mov    esi,eax
  703ab2:	mov    eax,DWORD PTR [esp+0x34]
  703ab6:	mov    eax,DWORD PTR [eax]
  703ab8:	mov    DWORD PTR [esp+0x4],eax
  703abc:	mov    DWORD PTR [esp],edi
  703abf:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703ac4:	test   eax,eax
  703ac6:	je     704456
  703acc:	mov    DWORD PTR [esp],eax
  703acf:	mov    DWORD PTR [esp+0x4],0x0
  703ad7:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  703adc:	mov    DWORD PTR [esp+0x74],eax
  703ae0:	lea    eax,[ebx+0x512f4]  ; literal "00"
  703ae6:	mov    DWORD PTR [esp+0x1c],eax
  703aea:	mov    eax,DWORD PTR [eax]
  703aec:	mov    DWORD PTR [esp+0x4],eax
  703af0:	lea    eax,[esp+0x74]
  703af4:	mov    DWORD PTR [esp],eax
  703af7:	mov    DWORD PTR [esp+0x8],0x0
  703aff:	call   fea004
  703b04:	mov    edi,eax
  703b06:	lea    eax,[ebx+0x430e4]
  703b0c:	mov    DWORD PTR [esp+0x24],eax
  703b10:	mov    eax,DWORD PTR [eax]
  703b12:	test   BYTE PTR [eax+0xb2],0x1
  703b19:	je     703b29
  703b1b:	cmp    DWORD PTR [eax+0x60],0x0
  703b1f:	jne    703b29
  703b21:	mov    DWORD PTR [esp],eax
  703b24:	call   1db0b8
  703b29:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  703b2f:	mov    eax,DWORD PTR [eax]
  703b31:	mov    DWORD PTR [esp+0x8],edi
  703b35:	mov    DWORD PTR [esp+0x4],eax
  703b39:	mov    DWORD PTR [esp+0xc],0x0
  703b41:	mov    DWORD PTR [esp],0x0
  703b48:	call   ca462a  ; System.String::Concat
  703b4d:	mov    DWORD PTR [esp+0x38],eax
  703b51:	test   esi,esi
  703b53:	je     704456
  703b59:	lea    eax,[ebx+0x49fb4]
  703b5f:	mov    DWORD PTR [esp+0x28],ebx
  703b63:	mov    eax,DWORD PTR [eax]
  703b65:	mov    DWORD PTR [esp+0x2c],eax
  703b69:	mov    ecx,DWORD PTR [eax+0xc]
  703b6c:	movzx  ebx,WORD PTR [eax+0x2c]
  703b70:	mov    edx,DWORD PTR [esi]
  703b72:	mov    DWORD PTR [esp+0x30],esi
  703b76:	movzx  esi,WORD PTR [edx+0xaa]
  703b7d:	test   esi,esi
  703b7f:	je     703b90
  703b81:	mov    eax,DWORD PTR [edx+0x4c]
  703b84:	xor    edi,edi
  703b86:	cmp    DWORD PTR [eax+edi*8],ecx
  703b89:	je     703baa
  703b8b:	inc    edi
  703b8c:	cmp    edi,esi
  703b8e:	jb     703b86
  703b90:	mov    DWORD PTR [esp+0x8],ebx
  703b94:	mov    DWORD PTR [esp+0x4],ecx
  703b98:	mov    esi,DWORD PTR [esp+0x30]
  703b9c:	mov    DWORD PTR [esp],esi
  703b9f:	mov    ebx,DWORD PTR [esp+0x28]
  703ba3:	call   1c1964
  703ba8:	jmp    703bbd
  703baa:	add    ebx,DWORD PTR [eax+edi*8+0x4]
  703bae:	lea    eax,[edx+ebx*8+0xb4]
  703bb5:	mov    esi,DWORD PTR [esp+0x30]
  703bb9:	mov    ebx,DWORD PTR [esp+0x28]
  703bbd:	mov    eax,DWORD PTR [eax+0x4]
  703bc0:	mov    ecx,DWORD PTR [esp+0x2c]
  703bc4:	mov    DWORD PTR [esp+0x4],ecx
  703bc8:	mov    DWORD PTR [esp],eax
  703bcb:	call   1da450
  703bd0:	mov    DWORD PTR [esp+0xc],eax
  703bd4:	lea    ecx,[esp+0x78]
  703bd8:	mov    DWORD PTR [esp+0x8],ecx
  703bdc:	mov    ecx,DWORD PTR [esp+0x38]
  703be0:	mov    DWORD PTR [esp+0x4],ecx
  703be4:	mov    DWORD PTR [esp],esi
  703be7:	call   DWORD PTR [eax]
  703be9:	test   al,al
  703beb:	mov    edi,DWORD PTR [ebp+0x8]
  703bee:	je     703c3c
  703bf0:	mov    eax,DWORD PTR [esp+0x34]
  703bf4:	mov    eax,DWORD PTR [eax]
  703bf6:	mov    DWORD PTR [esp+0x4],eax
  703bfa:	mov    DWORD PTR [esp],edi
  703bfd:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703c02:	mov    esi,eax
  703c04:	mov    eax,DWORD PTR [esp+0x78]
  703c08:	test   eax,eax
  703c0a:	je     704456
  703c10:	mov    DWORD PTR [esp],eax
  703c13:	mov    DWORD PTR [esp+0x4],0x0
  703c1b:	call   1700eef  ; ABH.Shared.BalancingData.ExperienceLevelBalancingData::get_Experience
  703c20:	test   esi,esi
  703c22:	je     704456
  703c28:	mov    DWORD PTR [esp+0x4],eax
  703c2c:	mov    DWORD PTR [esp],esi
  703c2f:	mov    DWORD PTR [esp+0x8],0x0
  703c37:	call   179dd25  ; ABH.Shared.Models.PlayerData::set_ExperienceForNextLevel
  703c3c:	lea    esi,[ebx+0x45f5c]
  703c42:	mov    eax,DWORD PTR [esi]
  703c44:	test   BYTE PTR [eax+0xb2],0x1
  703c4b:	je     703c5d
  703c4d:	cmp    DWORD PTR [eax+0x60],0x0
  703c51:	jne    703c5d
  703c53:	mov    DWORD PTR [esp],eax
  703c56:	call   1db0b8
  703c5b:	mov    eax,DWORD PTR [esi]
  703c5d:	mov    eax,DWORD PTR [eax+0x50]
  703c60:	mov    eax,DWORD PTR [eax]
  703c62:	test   eax,eax
  703c64:	je     704456
  703c6a:	lea    ecx,[ebx+0x49e60]
  703c70:	mov    ecx,DWORD PTR [ecx]
  703c72:	mov    DWORD PTR [esp+0x4],ecx
  703c76:	mov    DWORD PTR [esp],eax
  703c79:	call   4c2ace  ; shared address: System.Collections.Generic.List`1<object>::Clear | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::Clear | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::Clear | +49 other aliases
  703c7e:	mov    DWORD PTR [esp+0x4],0x0
  703c86:	mov    DWORD PTR [esp],0x0
  703c8d:	call   10927ba  ; DIContainerLogic::get_FusionLogic
  703c92:	test   eax,eax
  703c94:	je     704456
  703c9a:	mov    DWORD PTR [esp],eax
  703c9d:	mov    DWORD PTR [esp+0x4],0x0
  703ca5:	call   cf20f4  ; SetFusionLogic::UpdateBalancing
  703caa:	mov    eax,DWORD PTR [edi+0x1c]
  703cad:	test   eax,eax
  703caf:	je     703d09
  703cb1:	mov    DWORD PTR [esp],eax
  703cb4:	mov    DWORD PTR [esp+0x4],0x0
  703cbc:	call   eabbf3  ; ABH.GameDatas.BannerGameData::get_Data
  703cc1:	mov    esi,eax
  703cc3:	mov    eax,DWORD PTR [esp+0x34]
  703cc7:	mov    eax,DWORD PTR [eax]
  703cc9:	mov    DWORD PTR [esp+0x4],eax
  703ccd:	mov    DWORD PTR [esp],edi
  703cd0:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703cd5:	test   eax,eax
  703cd7:	je     704456
  703cdd:	mov    DWORD PTR [esp],eax
  703ce0:	mov    DWORD PTR [esp+0x4],0x0
  703ce8:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  703ced:	test   esi,esi
  703cef:	je     704456
  703cf5:	mov    DWORD PTR [esp+0x4],eax
  703cf9:	mov    DWORD PTR [esp],esi
  703cfc:	mov    DWORD PTR [esp+0x8],0x0
  703d04:	call   179a0d3  ; ABH.Shared.Models.Character.BannerData::set_Level
  703d09:	mov    DWORD PTR [esp],edi
  703d0c:	call   704465  ; ABH.GameDatas.PlayerGameData::HandleNewShopOffers
  703d11:	mov    eax,DWORD PTR [edi+0x30]
  703d14:	test   eax,eax
  703d16:	je     704456
  703d1c:	lea    ecx,[ebx+0x4a92c]
  703d22:	mov    ecx,DWORD PTR [ecx]
  703d24:	mov    DWORD PTR [esp+0x8],ecx
  703d28:	mov    DWORD PTR [esp+0x4],eax
  703d2c:	lea    eax,[esp+0x48]
  703d30:	mov    DWORD PTR [esp],eax
  703d33:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  703d38:	sub    esp,0x4
  703d3b:	movsd  xmm0,QWORD PTR [esp+0x48]
  703d41:	movsd  xmm1,QWORD PTR [esp+0x50]
  703d47:	movsd  QWORD PTR [esp+0x68],xmm1
  703d4d:	movsd  QWORD PTR [esp+0x60],xmm0
  703d53:	mov    DWORD PTR [esp+0x38],0x0
  703d5b:	lea    eax,[ebx+0x4a934]
  703d61:	mov    DWORD PTR [esp+0x28],eax
  703d65:	mov    eax,DWORD PTR [esp+0x28]
  703d69:	mov    eax,DWORD PTR [eax]
  703d6b:	mov    DWORD PTR [esp+0x4],eax
  703d6f:	lea    eax,[esp+0x60]
  703d73:	mov    DWORD PTR [esp],eax
  703d76:	call   447e4e
  703d7b:	test   al,al
  703d7d:	je     703f00
  703d83:	lea    eax,[ebx+0x4a930]
  703d89:	mov    eax,DWORD PTR [eax]
  703d8b:	mov    DWORD PTR [esp+0x4],eax
  703d8f:	lea    eax,[esp+0x60]
  703d93:	mov    DWORD PTR [esp],eax
  703d96:	call   447f1e
  703d9b:	mov    ecx,eax
  703d9d:	test   ecx,ecx
  703d9f:	je     703f13
  703da5:	lea    eax,[ebx+0x4a800]
  703dab:	mov    DWORD PTR [esp+0x2c],eax
  703daf:	mov    eax,DWORD PTR [eax]
  703db1:	mov    DWORD PTR [esp+0x4],eax
  703db5:	mov    DWORD PTR [esp],ecx
  703db8:	mov    DWORD PTR [esp+0x30],ecx
  703dbc:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703dc1:	test   eax,eax
  703dc3:	je     703f1d
  703dc9:	mov    DWORD PTR [esp],eax
  703dcc:	mov    DWORD PTR [esp+0x4],0x0
  703dd4:	call   179a15b  ; ABH.Shared.Models.Character.BirdData::get_Level
  703dd9:	mov    DWORD PTR [esp+0x20],eax
  703ddd:	lea    eax,[ebx+0x4584c]
  703de3:	mov    eax,DWORD PTR [eax]
  703de5:	test   BYTE PTR [eax+0xb2],0x1
  703dec:	je     703dfc
  703dee:	cmp    DWORD PTR [eax+0x60],0x0
  703df2:	jne    703dfc
  703df4:	mov    DWORD PTR [esp],eax
  703df7:	call   1db0b8
  703dfc:	mov    DWORD PTR [esp+0x4],0x0
  703e04:	mov    DWORD PTR [esp],0x0
  703e0b:	call   1090f29  ; DIContainerInfrastructure::GetPowerLevelCalculator
  703e10:	test   eax,eax
  703e12:	je     703f27
  703e18:	mov    ecx,DWORD PTR [esp+0x30]
  703e1c:	mov    DWORD PTR [esp+0x4],ecx
  703e20:	mov    DWORD PTR [esp],eax
  703e23:	mov    DWORD PTR [esp+0x8],0x0
  703e2b:	call   121be67  ; PowerLevelCalculator::GetBirdPowerLevel
  703e30:	mov    edi,eax
  703e32:	add    edi,DWORD PTR [esp+0x38]
  703e36:	mov    DWORD PTR [esp+0x38],edi
  703e3a:	mov    eax,DWORD PTR [esp+0x2c]
  703e3e:	mov    eax,DWORD PTR [eax]
  703e40:	mov    DWORD PTR [esp+0x4],eax
  703e44:	mov    eax,DWORD PTR [esp+0x30]
  703e48:	mov    DWORD PTR [esp],eax
  703e4b:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703e50:	mov    esi,eax
  703e52:	mov    DWORD PTR [esp+0x38],edi
  703e56:	mov    eax,DWORD PTR [esp+0x34]
  703e5a:	mov    eax,DWORD PTR [eax]
  703e5c:	mov    DWORD PTR [esp+0x4],eax
  703e60:	mov    eax,DWORD PTR [ebp+0x8]
  703e63:	mov    DWORD PTR [esp],eax
  703e66:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703e6b:	test   eax,eax
  703e6d:	je     703f31
  703e73:	mov    DWORD PTR [esp+0x38],edi
  703e77:	mov    DWORD PTR [esp],eax
  703e7a:	mov    DWORD PTR [esp+0x4],0x0
  703e82:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  703e87:	test   esi,esi
  703e89:	je     703f3f
  703e8f:	mov    DWORD PTR [esp+0x38],edi
  703e93:	mov    DWORD PTR [esp+0x4],eax
  703e97:	mov    DWORD PTR [esp],esi
  703e9a:	mov    DWORD PTR [esp+0x8],0x0
  703ea2:	call   179a16b  ; ABH.Shared.Models.Character.BirdData::set_Level
  703ea7:	mov    DWORD PTR [esp+0x38],edi
  703eab:	mov    eax,DWORD PTR [esp+0x2c]
  703eaf:	mov    eax,DWORD PTR [eax]
  703eb1:	mov    DWORD PTR [esp+0x4],eax
  703eb5:	mov    eax,DWORD PTR [esp+0x30]
  703eb9:	mov    DWORD PTR [esp],eax
  703ebc:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703ec1:	test   eax,eax
  703ec3:	je     703f4d
  703ec9:	mov    DWORD PTR [esp+0x38],edi
  703ecd:	mov    DWORD PTR [esp],eax
  703ed0:	mov    DWORD PTR [esp+0x4],0x0
  703ed8:	call   179a15b  ; ABH.Shared.Models.Character.BirdData::get_Level
  703edd:	mov    DWORD PTR [esp+0x38],edi
  703ee1:	mov    DWORD PTR [esp+0x8],eax
  703ee5:	mov    eax,DWORD PTR [esp+0x20]
  703ee9:	mov    DWORD PTR [esp+0x4],eax
  703eed:	mov    eax,DWORD PTR [esp+0x30]
  703ef1:	mov    DWORD PTR [esp],eax
  703ef4:	call   6c6676  ; ABH.GameDatas.BirdGameData::RaiseLevelChanged
  703ef9:	jmp    703d65
  703efe:	jmp    703f5b
  703f00:	mov    DWORD PTR [esp+0x30],0x0
  703f08:	mov    al,0x1
  703f0a:	mov    DWORD PTR [esp+0x2c],eax
  703f0e:	mov    edi,DWORD PTR [ebp+0x8]
  703f11:	jmp    703f82
  703f13:	call   1fbc48
  703f18:	call   6b106a
  703f1d:	call   1fbc48
  703f22:	call   6b106a
  703f27:	call   1fbc48
  703f2c:	call   6b106a
  703f31:	mov    DWORD PTR [esp+0x38],edi
  703f35:	call   1fbc48
  703f3a:	call   6b106a
  703f3f:	mov    DWORD PTR [esp+0x38],edi
  703f43:	call   1fbc48
  703f48:	call   6b106a
  703f4d:	mov    DWORD PTR [esp+0x38],edi
  703f51:	call   1fbc48
  703f56:	jmp    704460
  703f5b:	mov    edi,DWORD PTR [ebp+0x8]
  703f5e:	cmp    edx,0x1
  703f61:	jne    70444c
  703f67:	mov    DWORD PTR [esp],eax
  703f6a:	call   1ba3f0
  703f6f:	mov    eax,DWORD PTR [eax]
  703f71:	mov    DWORD PTR [esp+0x30],eax
  703f75:	call   1b9ce0
  703f7a:	mov    DWORD PTR [esp+0x2c],0x0
  703f82:	lea    eax,[ebx+0x4a938]
  703f88:	mov    eax,DWORD PTR [eax]
  703f8a:	mov    DWORD PTR [esp+0x4],eax
  703f8e:	lea    eax,[esp+0x60]
  703f92:	mov    DWORD PTR [esp],eax
  703f95:	mov    esi,ebx
  703f97:	call   447df6
  703f9c:	mov    eax,DWORD PTR [esp+0x2c]
  703fa0:	test   al,al
  703fa2:	mov    eax,DWORD PTR [esp+0x30]
  703fa6:	jne    703fb6
  703fa8:	test   eax,eax
  703faa:	je     703fb6
  703fac:	mov    DWORD PTR [esp],eax
  703faf:	mov    ebx,esi
  703fb1:	call   1fbb20
  703fb6:	mov    eax,DWORD PTR [esp+0x34]
  703fba:	mov    eax,DWORD PTR [eax]
  703fbc:	mov    DWORD PTR [esp+0x4],eax
  703fc0:	mov    DWORD PTR [esp],edi
  703fc3:	mov    ebx,esi
  703fc5:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703fca:	test   eax,eax
  703fcc:	je     704456
  703fd2:	mov    DWORD PTR [esp],eax
  703fd5:	mov    DWORD PTR [esp+0x4],0x0
  703fdd:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  703fe2:	mov    DWORD PTR [esp+0x5c],eax
  703fe6:	mov    eax,DWORD PTR [esp+0x1c]
  703fea:	mov    eax,DWORD PTR [eax]
  703fec:	mov    DWORD PTR [esp+0x4],eax
  703ff0:	lea    eax,[esp+0x5c]
  703ff4:	mov    DWORD PTR [esp],eax
  703ff7:	mov    DWORD PTR [esp+0x8],0x0
  703fff:	call   fea004
  704004:	mov    DWORD PTR [esp+0x30],eax
  704008:	mov    eax,DWORD PTR [esp+0x38]
  70400c:	mov    DWORD PTR [esp+0x44],eax
  704010:	lea    eax,[ebx+0x43120]
  704016:	mov    DWORD PTR [esp+0x38],eax
  70401a:	mov    eax,DWORD PTR [eax]
  70401c:	lea    ecx,[esp+0x44]
  704020:	mov    DWORD PTR [esp+0x4],ecx
  704024:	mov    DWORD PTR [esp],eax
  704027:	mov    esi,ebx
  704029:	call   20bf14
  70402e:	mov    edi,eax
  704030:	mov    eax,DWORD PTR [esp+0x24]
  704034:	mov    eax,DWORD PTR [eax]
  704036:	test   BYTE PTR [eax+0xb2],0x1
  70403d:	je     70404f
  70403f:	cmp    DWORD PTR [eax+0x60],0x0
  704043:	jne    70404f
  704045:	mov    DWORD PTR [esp],eax
  704048:	mov    ebx,esi
  70404a:	call   1db0b8
  70404f:	mov    ebx,esi
  704051:	lea    eax,[ebx+0x57324]  ; literal "level_up_{0}:{1}"
  704057:	mov    eax,DWORD PTR [eax]
  704059:	mov    DWORD PTR [esp+0xc],edi
  70405d:	mov    ecx,DWORD PTR [esp+0x30]
  704061:	mov    DWORD PTR [esp+0x8],ecx
  704065:	mov    DWORD PTR [esp+0x4],eax
  704069:	mov    DWORD PTR [esp+0x10],0x0
  704071:	mov    DWORD PTR [esp],0x0
  704078:	call   c9e671  ; System.String::Format
  70407d:	mov    esi,eax
  70407f:	mov    DWORD PTR [esp+0x4],0x0
  704087:	mov    DWORD PTR [esp],0x0
  70408e:	call   1092418  ; DIContainerLogic::get_PlayerOperationsService
  704093:	test   eax,eax
  704095:	je     704456
  70409b:	mov    edi,DWORD PTR [ebp+0x8]
  70409e:	mov    DWORD PTR [esp+0x4],edi
  7040a2:	mov    DWORD PTR [esp],eax
  7040a5:	mov    DWORD PTR [esp+0x8],0x0
  7040ad:	call   5819ff  ; ABH.Services.Logic.PlayerService::UpdateHighestPowerLevelEver
  7040b2:	mov    eax,DWORD PTR [esp+0x34]
  7040b6:	mov    eax,DWORD PTR [eax]
  7040b8:	mov    DWORD PTR [esp+0x4],eax
  7040bc:	mov    DWORD PTR [esp],edi
  7040bf:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  7040c4:	test   eax,eax
  7040c6:	je     704456
  7040cc:	mov    DWORD PTR [esp],eax
  7040cf:	mov    DWORD PTR [esp+0x4],0x0
  7040d7:	call   179cfe4  ; ABH.Shared.Models.PlayerData::get_PendingFeatureUnlocks
  7040dc:	test   eax,eax
  7040de:	je     704456
  7040e4:	lea    ecx,[ebx+0x4a244]
  7040ea:	mov    ecx,DWORD PTR [ecx]
  7040ec:	mov    DWORD PTR [esp+0x8],ecx
  7040f0:	mov    DWORD PTR [esp+0x4],esi
  7040f4:	mov    DWORD PTR [esp],eax
  7040f7:	mov    edi,ebx
  7040f9:	call   4c2b31  ; shared address: System.Collections.Generic.List`1<object>::Contains | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::Contains | System.Collections.Generic.List`1<SmoothMoves.BoneAnimation>::Contains | +18 other aliases
  7040fe:	test   al,al
  704100:	jne    704153
  704102:	mov    eax,DWORD PTR [esp+0x34]
  704106:	mov    eax,DWORD PTR [eax]
  704108:	mov    DWORD PTR [esp+0x4],eax
  70410c:	mov    eax,DWORD PTR [ebp+0x8]
  70410f:	mov    DWORD PTR [esp],eax
  704112:	mov    ebx,edi
  704114:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  704119:	test   eax,eax
  70411b:	je     704456
  704121:	mov    DWORD PTR [esp],eax
  704124:	mov    DWORD PTR [esp+0x4],0x0
  70412c:	call   179cfe4  ; ABH.Shared.Models.PlayerData::get_PendingFeatureUnlocks
  704131:	test   eax,eax
  704133:	je     704456
  704139:	lea    ecx,[ebx+0x48c24]
  70413f:	mov    ecx,DWORD PTR [ecx]
  704141:	mov    DWORD PTR [esp+0x8],ecx
  704145:	mov    DWORD PTR [esp+0x4],esi
  704149:	mov    DWORD PTR [esp],eax
  70414c:	mov    edi,ebx
  70414e:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  704153:	mov    eax,DWORD PTR [ebp+0x8]
  704156:	mov    esi,DWORD PTR [eax+0x3c]
  704159:	test   esi,esi
  70415b:	mov    ebx,edi
  70415d:	je     7041a4
  70415f:	mov    eax,DWORD PTR [esp+0x34]
  704163:	mov    eax,DWORD PTR [eax]
  704165:	mov    DWORD PTR [esp+0x4],eax
  704169:	mov    eax,DWORD PTR [ebp+0x8]
  70416c:	mov    DWORD PTR [esp],eax
  70416f:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  704174:	test   eax,eax
  704176:	je     704456
  70417c:	mov    DWORD PTR [esp],eax
  70417f:	mov    DWORD PTR [esp+0x4],0x0
  704187:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  70418c:	lea    ecx,[ebx+0x4a218]
  704192:	mov    ecx,DWORD PTR [ecx]
  704194:	mov    DWORD PTR [esp+0x8],ecx
  704198:	mov    DWORD PTR [esp+0x4],eax
  70419c:	mov    DWORD PTR [esp],esi
  70419f:	call   176d1f3  ; System.Action`1<int>::Invoke
  7041a4:	mov    DWORD PTR [esp+0x4],0x0
  7041ac:	mov    DWORD PTR [esp],0x0
  7041b3:	call   1093546  ; DIContainerLogic::get_RateAppController
  7041b8:	test   eax,eax
  7041ba:	je     704456
  7041c0:	mov    DWORD PTR [esp],eax
  7041c3:	mov    DWORD PTR [esp+0x8],0x0
  7041cb:	mov    DWORD PTR [esp+0x4],0x0
  7041d3:	call   852b10  ; RateAppController::RequestRatePopupForReason
  7041d8:	mov    eax,DWORD PTR [esp+0x34]
  7041dc:	mov    eax,DWORD PTR [eax]
  7041de:	mov    DWORD PTR [esp+0x4],eax
  7041e2:	mov    eax,DWORD PTR [ebp+0x8]
  7041e5:	mov    DWORD PTR [esp],eax
  7041e8:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  7041ed:	test   eax,eax
  7041ef:	je     704456
  7041f5:	mov    DWORD PTR [esp],eax
  7041f8:	mov    DWORD PTR [esp+0x4],0x0
  704200:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  704205:	mov    DWORD PTR [esp+0x40],eax
  704209:	mov    eax,DWORD PTR [esp+0x38]
  70420d:	mov    eax,DWORD PTR [eax]
  70420f:	lea    ecx,[esp+0x40]
  704213:	mov    DWORD PTR [esp+0x4],ecx
  704217:	mov    DWORD PTR [esp],eax
  70421a:	mov    edi,ebx
  70421c:	call   20bf14
  704221:	mov    esi,eax
  704223:	mov    eax,DWORD PTR [esp+0x24]
  704227:	mov    eax,DWORD PTR [eax]
  704229:	test   BYTE PTR [eax+0xb2],0x1
  704230:	je     704242
  704232:	cmp    DWORD PTR [eax+0x60],0x0
  704236:	jne    704242
  704238:	mov    DWORD PTR [esp],eax
  70423b:	mov    ebx,edi
  70423d:	call   1db0b8
  704242:	mov    ebx,edi
  704244:	lea    eax,[ebx+0x57328]  ; literal "Level Up to level "
  70424a:	mov    eax,DWORD PTR [eax]
  70424c:	mov    DWORD PTR [esp+0x8],esi
  704250:	mov    DWORD PTR [esp+0x4],eax
  704254:	mov    DWORD PTR [esp+0xc],0x0
  70425c:	mov    DWORD PTR [esp],0x0
  704263:	call   cb2fed  ; System.String::Concat
  704268:	mov    DWORD PTR [esp+0x4],eax
  70426c:	mov    DWORD PTR [esp+0x8],0x0
  704274:	mov    DWORD PTR [esp],0x0
  70427b:	call   1068c69  ; DebugLog::Log
  704280:	lea    eax,[ebx+0x44d10]
  704286:	mov    eax,DWORD PTR [eax]
  704288:	mov    DWORD PTR [esp],eax
  70428b:	call   20bfb2
  704290:	mov    esi,eax
  704292:	mov    DWORD PTR [esp+0x38],esi
  704296:	lea    eax,[ebx+0x49298]
  70429c:	mov    eax,DWORD PTR [eax]
  70429e:	mov    DWORD PTR [esp+0x4],eax
  7042a2:	mov    DWORD PTR [esp],esi
  7042a5:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  7042aa:	mov    DWORD PTR [esp+0x4],esi
  7042ae:	mov    DWORD PTR [esp+0x8],0x0
  7042b6:	mov    DWORD PTR [esp],0x0
  7042bd:	call   af48fe  ; ABHAnalyticsHelper::AddPlayerStatusToTracking
  7042c2:	lea    esi,[ebx+0x458fc]
  7042c8:	mov    edi,ebx
  7042ca:	mov    eax,DWORD PTR [esi]
  7042cc:	test   BYTE PTR [eax+0xb2],0x1
  7042d3:	je     7042e7
  7042d5:	cmp    DWORD PTR [eax+0x60],0x0
  7042d9:	jne    7042e7
  7042db:	mov    DWORD PTR [esp],eax
  7042de:	mov    ebx,edi
  7042e0:	call   1db0b8
  7042e5:	mov    eax,DWORD PTR [esi]
  7042e7:	mov    ecx,DWORD PTR [eax+0x50]
  7042ea:	mov    ecx,DWORD PTR [ecx+0x8]
  7042ed:	test   ecx,ecx
  7042ef:	je     70437a
  7042f5:	test   BYTE PTR [eax+0xb2],0x1
  7042fc:	je     70431e
  7042fe:	cmp    DWORD PTR [eax+0x60],0x0
  704302:	jne    70431e
  704304:	mov    DWORD PTR [esp],eax
  704307:	mov    ebx,edi
  704309:	call   1db0b8
  70430e:	mov    eax,DWORD PTR [esi]
  704310:	mov    eax,DWORD PTR [eax+0x50]
  704313:	mov    ecx,DWORD PTR [eax+0x8]
  704316:	test   ecx,ecx
  704318:	je     704454
  70431e:	mov    DWORD PTR [esp],ecx
  704321:	mov    DWORD PTR [esp+0x4],0x0
  704329:	mov    ebx,edi
  70432b:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  704330:	test   eax,eax
  704332:	je     704456
  704338:	mov    DWORD PTR [esp],eax
  70433b:	mov    DWORD PTR [esp+0x4],0x0
  704343:	call   16fe38d  ; ABH.Shared.BalancingData.BattleBalancingData::get_NameId
  704348:	mov    esi,DWORD PTR [esp+0x38]
  70434c:	test   esi,esi
  70434e:	je     704456
  704354:	lea    ecx,[ebx+0x5732c]  ; literal "BattleName"
  70435a:	mov    ecx,DWORD PTR [ecx]
  70435c:	lea    edx,[ebx+0x4929c]
  704362:	mov    edx,DWORD PTR [edx]
  704364:	mov    DWORD PTR [esp+0xc],edx
  704368:	mov    DWORD PTR [esp+0x8],eax
  70436c:	mov    DWORD PTR [esp+0x4],ecx
  704370:	mov    DWORD PTR [esp],esi
  704373:	mov    edi,ebx
  704375:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  70437a:	mov    ebx,edi
  70437c:	lea    eax,[ebx+0x4584c]
  704382:	mov    eax,DWORD PTR [eax]
  704384:	test   BYTE PTR [eax+0xb2],0x1
  70438b:	je     70439b
  70438d:	cmp    DWORD PTR [eax+0x60],0x0
  704391:	jne    70439b
  704393:	mov    DWORD PTR [esp],eax
  704396:	call   1db0b8
  70439b:	mov    DWORD PTR [esp+0x8],0x0
  7043a3:	mov    DWORD PTR [esp+0x4],0x0
  7043ab:	mov    DWORD PTR [esp],0x0
  7043b2:	call   1076512  ; DIContainerInfrastructure::GetAnalyticsSystem
  7043b7:	mov    edx,eax
  7043b9:	test   edx,edx
  7043bb:	je     704456
  7043c1:	lea    ecx,[ebx+0x45e5c]
  7043c7:	mov    eax,DWORD PTR [ecx]
  7043c9:	lea    ecx,[ebx+0x57330]  ; literal "LevelUp"
  7043cf:	mov    ecx,DWORD PTR [ecx]
  7043d1:	mov    DWORD PTR [esp+0x30],ecx
  7043d5:	mov    ecx,DWORD PTR [edx]
  7043d7:	mov    DWORD PTR [esp+0x34],edx
  7043db:	movzx  edx,WORD PTR [ecx+0xaa]
  7043e2:	test   edx,edx
  7043e4:	je     7043f5
  7043e6:	mov    esi,DWORD PTR [ecx+0x4c]
  7043e9:	xor    edi,edi
  7043eb:	cmp    DWORD PTR [esi+edi*8],eax
  7043ee:	je     704411
  7043f0:	inc    edi
  7043f1:	cmp    edi,edx
  7043f3:	jb     7043eb
  7043f5:	mov    DWORD PTR [esp+0x4],eax
  7043f9:	mov    esi,DWORD PTR [esp+0x34]
  7043fd:	mov    DWORD PTR [esp],esi
  704400:	mov    DWORD PTR [esp+0x8],0x4
  704408:	call   1c1964
  70440d:	mov    ecx,eax
  70440f:	jmp    704420
  704411:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  704415:	lea    ecx,[ecx+eax*8+0xd4]
  70441c:	mov    esi,DWORD PTR [esp+0x34]
  704420:	mov    eax,DWORD PTR [ecx+0x4]
  704423:	mov    DWORD PTR [esp+0x10],eax
  704427:	mov    eax,DWORD PTR [esp+0x38]
  70442b:	mov    DWORD PTR [esp+0x8],eax
  70442f:	mov    eax,DWORD PTR [esp+0x30]
  704433:	mov    DWORD PTR [esp+0x4],eax
  704437:	mov    DWORD PTR [esp],esi
  70443a:	mov    DWORD PTR [esp+0xc],0x0
  704442:	call   DWORD PTR [ecx]
  704444:	lea    esp,[ebp-0xc]
  704447:	pop    esi
  704448:	pop    edi
  704449:	pop    ebx
  70444a:	pop    ebp
  70444b:	ret
  70444c:	mov    DWORD PTR [esp],eax
  70444f:	call   1b9bd0
  704454:	mov    ebx,edi
  704456:	call   1fbc48
  70445b:	call   6b106a
  704460:	call   6b106a