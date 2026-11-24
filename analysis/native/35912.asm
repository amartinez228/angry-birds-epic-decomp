
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00704c36:
  704c36:	push   ebp
  704c37:	mov    ebp,esp
  704c39:	push   ebx
  704c3a:	push   edi
  704c3b:	push   esi
  704c3c:	and    esp,0xfffffff0
  704c3f:	sub    esp,0x180
  704c45:	call   704c4a
  704c4a:	pop    ebx
  704c4b:	add    ebx,0x180d2fa
  704c51:	mov    edi,DWORD PTR [ebp+0x8]
  704c54:	mov    al,BYTE PTR [ebx+0x5f849]
  704c5a:	test   al,al
  704c5c:	jne    704c75
  704c5e:	lea    eax,[ebx-0x65fa28]
  704c64:	mov    eax,DWORD PTR [eax]
  704c66:	mov    DWORD PTR [esp],eax
  704c69:	call   1ca6e8
  704c6e:	mov    BYTE PTR [ebx+0x5f849],0x1
  704c75:	mov    DWORD PTR [esp+0x178],0x0
  704c80:	mov    DWORD PTR [esp+0x174],0x0
  704c8b:	xorps  xmm0,xmm0
  704c8e:	movaps XMMWORD PTR [esp+0x160],xmm0
  704c96:	movaps XMMWORD PTR [esp+0x140],xmm0
  704c9e:	mov    DWORD PTR [esp+0x150],0x0
  704ca9:	movaps XMMWORD PTR [esp+0x130],xmm0
  704cb1:	movaps XMMWORD PTR [esp+0x110],xmm0
  704cb9:	mov    DWORD PTR [esp+0x120],0x0
  704cc4:	movaps XMMWORD PTR [esp+0x100],xmm0
  704ccc:	movaps XMMWORD PTR [esp+0xe0],xmm0
  704cd4:	mov    DWORD PTR [esp+0xf0],0x0
  704cdf:	movaps XMMWORD PTR [esp+0xd0],xmm0
  704ce7:	lea    eax,[ebx+0x45824]
  704ced:	mov    eax,DWORD PTR [eax]
  704cef:	mov    DWORD PTR [esp],eax
  704cf2:	call   20bfb2
  704cf7:	mov    esi,eax
  704cf9:	lea    eax,[ebx+0x57338]  ; literal "player_inventory"
  704cff:	mov    eax,DWORD PTR [eax]
  704d01:	mov    DWORD PTR [esp+0x4],eax
  704d05:	mov    DWORD PTR [esp],esi
  704d08:	call   6c3a7b  ; ABH.GameDatas.InventoryGameData::.ctor
  704d0d:	mov    DWORD PTR [edi+0x10],esi
  704d10:	lea    eax,[ebx+0x45f14]
  704d16:	mov    eax,DWORD PTR [eax]
  704d18:	mov    DWORD PTR [esp],eax
  704d1b:	call   20bfb2
  704d20:	mov    esi,eax
  704d22:	lea    eax,[ebx+0x5733c]  ; literal "piggy_island"
  704d28:	mov    eax,DWORD PTR [eax]
  704d2a:	mov    DWORD PTR [esp+0x4],eax
  704d2e:	mov    DWORD PTR [esp],esi
  704d31:	call   706b0d  ; ABH.GameDatas.WorldGameData::.ctor
  704d36:	mov    DWORD PTR [edi+0x14],esi
  704d39:	mov    DWORD PTR [esp+0x4],0x0
  704d41:	mov    DWORD PTR [esp],0x0
  704d48:	call   dae708  ; ContentLoader::get_Instance
  704d4d:	mov    esi,eax
  704d4f:	lea    eax,[ebx+0x44ebc]
  704d55:	mov    eax,DWORD PTR [eax]
  704d57:	test   BYTE PTR [eax+0xb2],0x1
  704d5e:	je     704d6e
  704d60:	cmp    DWORD PTR [eax+0x60],0x0
  704d64:	jne    704d6e
  704d66:	mov    DWORD PTR [esp],eax
  704d69:	call   1db0b8
  704d6e:	mov    DWORD PTR [esp+0x4],esi
  704d72:	mov    DWORD PTR [esp+0xc],0x0
  704d7a:	mov    DWORD PTR [esp+0x8],0x0
  704d82:	mov    DWORD PTR [esp],0x0
  704d89:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  704d8e:	test   al,al
  704d90:	je     704e35
  704d96:	mov    DWORD PTR [esp+0x4],0x0
  704d9e:	mov    DWORD PTR [esp],0x0
  704da5:	call   dae708  ; ContentLoader::get_Instance
  704daa:	test   eax,eax
  704dac:	je     706ab0
  704db2:	mov    eax,DWORD PTR [eax+0x80]
  704db8:	test   eax,eax
  704dba:	je     706ab0
  704dc0:	mov    DWORD PTR [esp],eax
  704dc3:	mov    DWORD PTR [esp+0x4],0x0
  704dcb:	call   11579de  ; BeaconConnectionMgr::get_CachedSocialEnvironmentGameData
  704dd0:	mov    DWORD PTR [esp+0x4],eax
  704dd4:	call   706bbe  ; ABH.GameDatas.SocialEnvironmentGameData::FillSocialEnvironmentDataIfEmpty
  704dd9:	mov    DWORD PTR [esp+0x4],0x0
  704de1:	mov    DWORD PTR [esp],0x0
  704de8:	call   dae708  ; ContentLoader::get_Instance
  704ded:	test   eax,eax
  704def:	je     706ab0
  704df5:	mov    eax,DWORD PTR [eax+0x80]
  704dfb:	test   eax,eax
  704dfd:	je     706ab0
  704e03:	mov    DWORD PTR [esp],eax
  704e06:	mov    DWORD PTR [esp+0x4],0x0
  704e0e:	call   11579de  ; BeaconConnectionMgr::get_CachedSocialEnvironmentGameData
  704e13:	mov    edi,eax
  704e15:	lea    eax,[ebx+0x45f18]
  704e1b:	mov    eax,DWORD PTR [eax]
  704e1d:	mov    DWORD PTR [esp],eax
  704e20:	call   20bfb2
  704e25:	mov    esi,eax
  704e27:	mov    DWORD PTR [esp+0x4],edi
  704e2b:	mov    DWORD PTR [esp],esi
  704e2e:	call   6fa834  ; ABH.GameDatas.SocialEnvironmentGameData::.ctor
  704e33:	jmp    704e5b
  704e35:	lea    eax,[ebx+0x45f18]
  704e3b:	mov    eax,DWORD PTR [eax]
  704e3d:	mov    DWORD PTR [esp],eax
  704e40:	call   20bfb2
  704e45:	mov    esi,eax
  704e47:	lea    eax,[ebx+0x509e4]  ; literal "default"
  704e4d:	mov    eax,DWORD PTR [eax]
  704e4f:	mov    DWORD PTR [esp+0x4],eax
  704e53:	mov    DWORD PTR [esp],esi
  704e56:	call   70740b  ; ABH.GameDatas.SocialEnvironmentGameData::.ctor
  704e5b:	mov    edi,DWORD PTR [ebp+0x8]
  704e5e:	mov    DWORD PTR [edi+0x18],esi
  704e61:	lea    eax,[ebx+0x458b8]
  704e67:	mov    eax,DWORD PTR [eax]
  704e69:	mov    DWORD PTR [esp],eax
  704e6c:	call   20bfb2
  704e71:	mov    esi,eax
  704e73:	lea    eax,[ebx+0x4a1cc]
  704e79:	mov    eax,DWORD PTR [eax]
  704e7b:	mov    DWORD PTR [esp+0x4],eax
  704e7f:	mov    DWORD PTR [esp],esi
  704e82:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  704e87:	mov    DWORD PTR [edi+0x30],esi
  704e8a:	lea    eax,[ebx+0x45460]
  704e90:	mov    eax,DWORD PTR [eax]
  704e92:	mov    DWORD PTR [esp],eax
  704e95:	call   20bfb2
  704e9a:	mov    DWORD PTR [esp+0x40],eax
  704e9e:	lea    ecx,[ebx+0x49860]
  704ea4:	mov    ecx,DWORD PTR [ecx]
  704ea6:	mov    DWORD PTR [esp+0x4],ecx
  704eaa:	mov    DWORD PTR [esp],eax
  704ead:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  704eb2:	mov    DWORD PTR [esp+0x178],0x0
  704ebd:	lea    eax,[ebx+0x45820]
  704ec3:	mov    DWORD PTR [esp+0x30],eax
  704ec7:	mov    eax,DWORD PTR [eax]
  704ec9:	test   BYTE PTR [eax+0xb2],0x1
  704ed0:	je     704ee0
  704ed2:	cmp    DWORD PTR [eax+0x60],0x0
  704ed6:	jne    704ee0
  704ed8:	mov    DWORD PTR [esp],eax
  704edb:	call   1db0b8
  704ee0:	mov    DWORD PTR [esp+0x4],0x0
  704ee8:	mov    DWORD PTR [esp],0x0
  704eef:	call   107cf95  ; DIContainerBalancing::get_Service
  704ef4:	test   eax,eax
  704ef6:	je     706ab0
  704efc:	lea    ecx,[ebx+0x4ad10]
  704f02:	mov    edx,DWORD PTR [ecx]
  704f04:	mov    DWORD PTR [esp+0x38],edx
  704f08:	lea    ecx,[ebx+0x56b50]  ; literal "bird_red"
  704f0e:	mov    DWORD PTR [esp+0x44],ebx
  704f12:	mov    ecx,DWORD PTR [ecx]
  704f14:	mov    DWORD PTR [esp+0x3c],ecx
  704f18:	mov    ecx,DWORD PTR [edx+0xc]
  704f1b:	movzx  ebx,WORD PTR [edx+0x2c]
  704f1f:	mov    edx,DWORD PTR [eax]
  704f21:	mov    DWORD PTR [esp+0x34],eax
  704f25:	movzx  eax,WORD PTR [edx+0xaa]
  704f2c:	test   eax,eax
  704f2e:	je     704f3f
  704f30:	mov    esi,DWORD PTR [edx+0x4c]
  704f33:	xor    edi,edi
  704f35:	cmp    DWORD PTR [esi+edi*8],ecx
  704f38:	je     704f59
  704f3a:	inc    edi
  704f3b:	cmp    edi,eax
  704f3d:	jb     704f35
  704f3f:	mov    DWORD PTR [esp+0x8],ebx
  704f43:	mov    DWORD PTR [esp+0x4],ecx
  704f47:	mov    esi,DWORD PTR [esp+0x34]
  704f4b:	mov    DWORD PTR [esp],esi
  704f4e:	mov    ebx,DWORD PTR [esp+0x44]
  704f52:	call   1c1964
  704f57:	jmp    704f6c
  704f59:	add    ebx,DWORD PTR [esi+edi*8+0x4]
  704f5d:	lea    eax,[edx+ebx*8+0xb4]
  704f64:	mov    ebx,DWORD PTR [esp+0x44]
  704f68:	mov    esi,DWORD PTR [esp+0x34]
  704f6c:	mov    eax,DWORD PTR [eax+0x4]
  704f6f:	mov    ecx,DWORD PTR [esp+0x38]
  704f73:	mov    DWORD PTR [esp+0x4],ecx
  704f77:	mov    DWORD PTR [esp],eax
  704f7a:	call   1da450
  704f7f:	mov    DWORD PTR [esp+0xc],eax
  704f83:	lea    ecx,[esp+0x178]
  704f8a:	mov    DWORD PTR [esp+0x8],ecx
  704f8e:	mov    ecx,DWORD PTR [esp+0x3c]
  704f92:	mov    DWORD PTR [esp+0x4],ecx
  704f96:	mov    DWORD PTR [esp],esi
  704f99:	call   DWORD PTR [eax]
  704f9b:	test   al,al
  704f9d:	je     705050
  704fa3:	mov    eax,DWORD PTR [esp+0x178]
  704faa:	test   eax,eax
  704fac:	je     706ab0
  704fb2:	mov    DWORD PTR [esp],eax
  704fb5:	mov    DWORD PTR [esp+0x4],0x0
  704fbd:	call   16fe961  ; ABH.Shared.BalancingData.BirdBalancingData::get_NameId
  704fc2:	mov    edi,eax
  704fc4:	lea    eax,[ebx+0x45918]
  704fca:	mov    eax,DWORD PTR [eax]
  704fcc:	mov    DWORD PTR [esp],eax
  704fcf:	call   20bfb2
  704fd4:	mov    esi,eax
  704fd6:	mov    DWORD PTR [esp+0x4],edi
  704fda:	mov    DWORD PTR [esp],esi
  704fdd:	mov    DWORD PTR [esp+0x8],0x1
  704fe5:	call   6c249b  ; ABH.GameDatas.BirdGameData::.ctor
  704fea:	mov    eax,DWORD PTR [ebp+0x8]
  704fed:	mov    eax,DWORD PTR [eax+0x30]
  704ff0:	test   eax,eax
  704ff2:	je     706ab0
  704ff8:	lea    ecx,[ebx+0x4ac40]
  704ffe:	mov    ecx,DWORD PTR [ecx]
  705000:	mov    DWORD PTR [esp+0x8],ecx
  705004:	mov    DWORD PTR [esp+0x4],esi
  705008:	mov    DWORD PTR [esp],eax
  70500b:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  705010:	test   esi,esi
  705012:	je     706ab0
  705018:	lea    eax,[ebx+0x4a800]
  70501e:	mov    eax,DWORD PTR [eax]
  705020:	mov    DWORD PTR [esp+0x4],eax
  705024:	mov    DWORD PTR [esp],esi
  705027:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  70502c:	mov    edx,DWORD PTR [esp+0x40]
  705030:	test   edx,edx
  705032:	je     706ab0
  705038:	lea    ecx,[ebx+0x49864]
  70503e:	mov    ecx,DWORD PTR [ecx]
  705040:	mov    DWORD PTR [esp+0x8],ecx
  705044:	mov    DWORD PTR [esp+0x4],eax
  705048:	mov    DWORD PTR [esp],edx
  70504b:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  705050:	mov    DWORD PTR [esp+0x174],0x0
  70505b:	lea    eax,[ebx+0x45f1c]
  705061:	mov    eax,DWORD PTR [eax]
  705063:	mov    DWORD PTR [esp],eax
  705066:	call   20bfb2
  70506b:	mov    esi,eax
  70506d:	lea    eax,[ebx+0x57288]  ; literal "bird_banner"
  705073:	mov    eax,DWORD PTR [eax]
  705075:	mov    DWORD PTR [esp+0x4],eax
  705079:	mov    DWORD PTR [esp],esi
  70507c:	mov    DWORD PTR [esp+0xc],0x0
  705084:	mov    DWORD PTR [esp+0x8],0x1
  70508c:	call   eab499  ; ABH.GameDatas.BannerGameData::.ctor
  705091:	mov    eax,DWORD PTR [ebp+0x8]
  705094:	mov    DWORD PTR [eax+0x1c],esi
  705097:	mov    esi,eax
  705099:	lea    eax,[ebx+0x45534]
  70509f:	mov    eax,DWORD PTR [eax]
  7050a1:	mov    DWORD PTR [esp],eax
  7050a4:	call   20bfb2
  7050a9:	mov    edi,eax
  7050ab:	mov    DWORD PTR [esp],edi
  7050ae:	mov    DWORD PTR [esp+0x4],0x0
  7050b6:	call   179e32c  ; ABH.Shared.Models.PlayerData::.ctor
  7050bb:	test   edi,edi
  7050bd:	je     706ab0
  7050c3:	mov    eax,DWORD PTR [ebp+0xc]
  7050c6:	mov    DWORD PTR [esp+0x4],eax
  7050ca:	mov    DWORD PTR [esp],edi
  7050cd:	mov    DWORD PTR [esp+0x8],0x0
  7050d5:	call   179cd95  ; ABH.Shared.Models.PlayerData::set_NameId
  7050da:	lea    eax,[ebx+0x508e0]  ; literal "0"
  7050e0:	mov    eax,DWORD PTR [eax]
  7050e2:	mov    DWORD PTR [esp+0x4],eax
  7050e6:	mov    DWORD PTR [esp],edi
  7050e9:	mov    DWORD PTR [esp+0x8],0x0
  7050f1:	call   179d0a6  ; ABH.Shared.Models.PlayerData::set_UserToken
  7050f6:	mov    eax,DWORD PTR [esi+0x10]
  7050f9:	test   eax,eax
  7050fb:	je     706ab0
  705101:	lea    ecx,[ebx+0x49f7c]
  705107:	mov    ecx,DWORD PTR [ecx]
  705109:	mov    DWORD PTR [esp+0x4],ecx
  70510d:	mov    DWORD PTR [esp],eax
  705110:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  705115:	mov    DWORD PTR [esp+0x4],eax
  705119:	mov    DWORD PTR [esp],edi
  70511c:	mov    DWORD PTR [esp+0x8],0x0
  705124:	call   179cdde  ; ABH.Shared.Models.PlayerData::set_Inventory
  705129:	mov    eax,DWORD PTR [esi+0x14]
  70512c:	test   eax,eax
  70512e:	je     706ab0
  705134:	lea    ecx,[ebx+0x4ac8c]
  70513a:	mov    ecx,DWORD PTR [ecx]
  70513c:	mov    DWORD PTR [esp+0x4],ecx
  705140:	mov    DWORD PTR [esp],eax
  705143:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  705148:	mov    DWORD PTR [esp+0x4],eax
  70514c:	mov    DWORD PTR [esp],edi
  70514f:	mov    DWORD PTR [esp+0x8],0x0
  705157:	call   179cdcb  ; ABH.Shared.Models.PlayerData::set_World
  70515c:	mov    eax,DWORD PTR [esp+0x40]
  705160:	mov    DWORD PTR [esp+0x4],eax
  705164:	mov    DWORD PTR [esp],edi
  705167:	mov    DWORD PTR [esp+0x8],0x0
  70516f:	call   179cdf1  ; ABH.Shared.Models.PlayerData::set_Birds
  705174:	mov    eax,DWORD PTR [esi+0x18]
  705177:	test   eax,eax
  705179:	je     706ab0
  70517f:	lea    ecx,[ebx+0x4abf0]
  705185:	mov    ecx,DWORD PTR [ecx]
  705187:	mov    DWORD PTR [esp+0x4],ecx
  70518b:	mov    DWORD PTR [esp],eax
  70518e:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  705193:	mov    DWORD PTR [esp+0x4],eax
  705197:	mov    DWORD PTR [esp],edi
  70519a:	mov    DWORD PTR [esp+0x8],0x0
  7051a2:	call   179d03d  ; ABH.Shared.Models.PlayerData::set_SocialEnvironment
  7051a7:	mov    DWORD PTR [esp],edi
  7051aa:	mov    DWORD PTR [esp+0x8],0x0
  7051b2:	mov    DWORD PTR [esp+0x4],0x1
  7051ba:	call   179cda8  ; ABH.Shared.Models.PlayerData::set_Level
  7051bf:	lea    eax,[ebx+0x45438]
  7051c5:	mov    eax,DWORD PTR [eax]
  7051c7:	mov    DWORD PTR [esp],eax
  7051ca:	call   20bfb2
  7051cf:	mov    esi,eax
  7051d1:	lea    eax,[ebx+0x49834]
  7051d7:	mov    eax,DWORD PTR [eax]
  7051d9:	mov    DWORD PTR [esp+0x4],eax
  7051dd:	mov    DWORD PTR [esp],esi
  7051e0:	call   61fb90  ; shared address: System.Collections.Generic.Dictionary`2<string, uint>::.ctor | System.Collections.Generic.Dictionary`2<object, uint>::.ctor
  7051e5:	mov    DWORD PTR [esp+0x4],esi
  7051e9:	mov    DWORD PTR [esp],edi
  7051ec:	mov    DWORD PTR [esp+0x8],0x0
  7051f4:	call   179d29c  ; ABH.Shared.Models.PlayerData::set_SponsoredAdUses
  7051f9:	lea    eax,[ebx+0x43ba4]
  7051ff:	mov    DWORD PTR [esp+0x40],eax
  705203:	mov    eax,DWORD PTR [eax]
  705205:	mov    DWORD PTR [esp],eax
  705208:	call   20bfb2
  70520d:	mov    esi,eax
  70520f:	lea    eax,[ebx+0x48c1c]
  705215:	mov    DWORD PTR [esp+0x3c],eax
  705219:	mov    eax,DWORD PTR [eax]
  70521b:	mov    DWORD PTR [esp+0x4],eax
  70521f:	mov    DWORD PTR [esp],esi
  705222:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  705227:	mov    DWORD PTR [esp+0x4],esi
  70522b:	mov    DWORD PTR [esp],edi
  70522e:	mov    DWORD PTR [esp+0x8],0x0
  705236:	call   179cf68  ; ABH.Shared.Models.PlayerData::set_CurrentClassUpgradeShopOffers
  70523b:	lea    eax,[ebx+0x45538]
  705241:	mov    eax,DWORD PTR [eax]
  705243:	mov    DWORD PTR [esp],eax
  705246:	call   20bfb2
  70524b:	mov    esi,eax
  70524d:	lea    eax,[ebx+0x499b0]
  705253:	mov    eax,DWORD PTR [eax]
  705255:	mov    DWORD PTR [esp+0x4],eax
  705259:	mov    DWORD PTR [esp],esi
  70525c:	call   60b56f  ; shared address: System.Collections.Generic.Dictionary`2<string, System.DateTime>::.ctor | System.Collections.Generic.Dictionary`2<object, System.DateTime>::.ctor
  705261:	mov    DWORD PTR [esp+0x4],esi
  705265:	mov    DWORD PTR [esp],edi
  705268:	mov    DWORD PTR [esp+0x8],0x0
  705270:	call   179d060  ; ABH.Shared.Models.PlayerData::set_CurrentSpecialShopOffers
  705275:	mov    eax,DWORD PTR [esp+0x40]
  705279:	mov    eax,DWORD PTR [eax]
  70527b:	mov    DWORD PTR [esp],eax
  70527e:	call   20bfb2
  705283:	mov    esi,eax
  705285:	mov    eax,DWORD PTR [esp+0x3c]
  705289:	mov    eax,DWORD PTR [eax]
  70528b:	mov    DWORD PTR [esp+0x4],eax
  70528f:	mov    DWORD PTR [esp],esi
  705292:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  705297:	mov    DWORD PTR [esp+0x4],esi
  70529b:	mov    DWORD PTR [esp],edi
  70529e:	mov    DWORD PTR [esp+0x8],0x0
  7052a6:	call   179d0ec  ; ABH.Shared.Models.PlayerData::set_TemporaryOpenHotspots
  7052ab:	lea    eax,[ebx+0x444fc]
  7052b1:	mov    eax,DWORD PTR [eax]
  7052b3:	mov    DWORD PTR [esp],eax
  7052b6:	call   20bfb2
  7052bb:	mov    esi,eax
  7052bd:	lea    eax,[ebx+0x495e0]
  7052c3:	mov    eax,DWORD PTR [eax]
  7052c5:	mov    DWORD PTR [esp+0x4],eax
  7052c9:	mov    DWORD PTR [esp],esi
  7052cc:	call   602db7  ; shared address: System.Collections.Generic.Dictionary`2<string, bool>::.ctor | System.Collections.Generic.Dictionary`2<object, bool>::.ctor
  7052d1:	mov    DWORD PTR [esp+0x4],esi
  7052d5:	mov    DWORD PTR [esp],edi
  7052d8:	mov    DWORD PTR [esp+0x8],0x0
  7052e0:	call   179d10f  ; ABH.Shared.Models.PlayerData::set_ShopOffersNew
  7052e5:	mov    eax,DWORD PTR [esp+0x40]
  7052e9:	mov    eax,DWORD PTR [eax]
  7052eb:	mov    DWORD PTR [esp],eax
  7052ee:	call   20bfb2
  7052f3:	mov    esi,eax
  7052f5:	mov    eax,DWORD PTR [esp+0x3c]
  7052f9:	mov    eax,DWORD PTR [eax]
  7052fb:	mov    DWORD PTR [esp+0x4],eax
  7052ff:	mov    DWORD PTR [esp],esi
  705302:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  705307:	mov    DWORD PTR [esp+0x4],esi
  70530b:	mov    DWORD PTR [esp],edi
  70530e:	mov    DWORD PTR [esp+0x8],0x0
  705316:	call   179d132  ; ABH.Shared.Models.PlayerData::set_DungeonsAlreadyPlayedToday
  70531b:	mov    eax,DWORD PTR [ebp+0x8]
  70531e:	mov    eax,DWORD PTR [eax+0x1c]
  705321:	test   eax,eax
  705323:	je     706ab0
  705329:	mov    DWORD PTR [esp],eax
  70532c:	mov    DWORD PTR [esp+0x4],0x0
  705334:	call   eabbf3  ; ABH.GameDatas.BannerGameData::get_Data
  705339:	mov    DWORD PTR [esp+0x4],eax
  70533d:	mov    DWORD PTR [esp],edi
  705340:	mov    DWORD PTR [esp+0x8],0x0
  705348:	call   179d598  ; ABH.Shared.Models.PlayerData::set_PvPBanner
  70534d:	lea    eax,[ebx+0x45548]
  705353:	mov    eax,DWORD PTR [eax]
  705355:	mov    DWORD PTR [esp],eax
  705358:	call   20bfb2
  70535d:	mov    esi,eax
  70535f:	lea    eax,[ebx+0x499bc]
  705365:	mov    eax,DWORD PTR [eax]
  705367:	mov    DWORD PTR [esp+0x4],eax
  70536b:	mov    DWORD PTR [esp],esi
  70536e:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  705373:	mov    DWORD PTR [esp+0x4],esi
  705377:	mov    DWORD PTR [esp],edi
  70537a:	mov    DWORD PTR [esp+0x8],0x0
  705382:	call   179d5d7  ; ABH.Shared.Models.PlayerData::set_PvpObjectives
  705387:	lea    eax,[ebx+0x45484]
  70538d:	mov    eax,DWORD PTR [eax]
  70538f:	mov    DWORD PTR [esp],eax
  705392:	call   20bfb2
  705397:	mov    esi,eax
  705399:	mov    DWORD PTR [esp],esi
  70539c:	mov    DWORD PTR [esp+0x4],0x0
  7053a4:	call   17996e2  ; ABH.Shared.Models.AchievementData::.ctor
  7053a9:	mov    DWORD PTR [esp+0x4],esi
  7053ad:	mov    DWORD PTR [esp],edi
  7053b0:	mov    DWORD PTR [esp+0x8],0x0
  7053b8:	call   179d70f  ; ABH.Shared.Models.PlayerData::set_AchievementTracking
  7053bd:	mov    DWORD PTR [esp+0xc],0x0
  7053c5:	mov    DWORD PTR [esp+0x8],0x7f7fffff
  7053cd:	mov    DWORD PTR [esp+0x4],0x0
  7053d5:	mov    DWORD PTR [esp],0x0
  7053dc:	call   167ea91  ; UnityEngine.Random::Range
  7053e1:	fstp   DWORD PTR [esp+0x4]
  7053e5:	mov    DWORD PTR [esp],edi
  7053e8:	mov    DWORD PTR [esp+0x8],0x0
  7053f0:	call   179dae0  ; ABH.Shared.Models.PlayerData::set_RandomDecisionSeed
  7053f5:	lea    eax,[ebx+0x44d10]
  7053fb:	mov    eax,DWORD PTR [eax]
  7053fd:	mov    DWORD PTR [esp],eax
  705400:	call   20bfb2
  705405:	mov    esi,eax
  705407:	lea    eax,[ebx+0x49298]
  70540d:	mov    eax,DWORD PTR [eax]
  70540f:	mov    DWORD PTR [esp+0x4],eax
  705413:	mov    DWORD PTR [esp],esi
  705416:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  70541b:	mov    DWORD PTR [esp+0x4],esi
  70541f:	mov    DWORD PTR [esp],edi
  705422:	mov    DWORD PTR [esp+0x8],0x0
  70542a:	call   179dc57  ; ABH.Shared.Models.PlayerData::set_EquippedSkins
  70542f:	mov    DWORD PTR [esp],edi
  705432:	mov    DWORD PTR [esp+0x8],0x0
  70543a:	mov    DWORD PTR [esp+0x4],0x1
  705442:	call   179de47  ; ABH.Shared.Models.PlayerData::set_ConvertionFor153
  705447:	mov    eax,DWORD PTR [esp+0x30]
  70544b:	mov    eax,DWORD PTR [eax]
  70544d:	test   BYTE PTR [eax+0xb2],0x1
  705454:	je     705464
  705456:	cmp    DWORD PTR [eax+0x60],0x0
  70545a:	jne    705464
  70545c:	mov    DWORD PTR [esp],eax
  70545f:	call   1db0b8
  705464:	mov    DWORD PTR [esp+0x2c],edi
  705468:	mov    DWORD PTR [esp+0x4],0x0
  705470:	mov    DWORD PTR [esp],0x0
  705477:	call   107cf95  ; DIContainerBalancing::get_Service
  70547c:	test   eax,eax
  70547e:	je     706ab0
  705484:	lea    ecx,[ebx+0x4a840]
  70548a:	mov    edx,DWORD PTR [ecx]
  70548c:	mov    DWORD PTR [esp+0x3c],edx
  705490:	mov    ecx,DWORD PTR [edx+0xc]
  705493:	movzx  ebx,WORD PTR [edx+0x2c]
  705497:	mov    edx,DWORD PTR [eax]
  705499:	mov    DWORD PTR [esp+0x40],eax
  70549d:	movzx  eax,WORD PTR [edx+0xaa]
  7054a4:	test   eax,eax
  7054a6:	je     7054b7
  7054a8:	mov    esi,DWORD PTR [edx+0x4c]
  7054ab:	xor    edi,edi
  7054ad:	cmp    DWORD PTR [esi+edi*8],ecx
  7054b0:	je     7054d1
  7054b2:	inc    edi
  7054b3:	cmp    edi,eax
  7054b5:	jb     7054ad
  7054b7:	mov    DWORD PTR [esp+0x8],ebx
  7054bb:	mov    DWORD PTR [esp+0x4],ecx
  7054bf:	mov    esi,DWORD PTR [esp+0x40]
  7054c3:	mov    DWORD PTR [esp],esi
  7054c6:	mov    ebx,DWORD PTR [esp+0x44]
  7054ca:	call   1c1964
  7054cf:	jmp    7054e4
  7054d1:	add    ebx,DWORD PTR [esi+edi*8+0x4]
  7054d5:	lea    eax,[edx+ebx*8+0xb4]
  7054dc:	mov    ebx,DWORD PTR [esp+0x44]
  7054e0:	mov    esi,DWORD PTR [esp+0x40]
  7054e4:	mov    eax,DWORD PTR [eax+0x4]
  7054e7:	mov    ecx,DWORD PTR [esp+0x3c]
  7054eb:	mov    DWORD PTR [esp+0x4],ecx
  7054ef:	mov    DWORD PTR [esp],eax
  7054f2:	call   1da450
  7054f7:	mov    DWORD PTR [esp+0x4],eax
  7054fb:	mov    DWORD PTR [esp],esi
  7054fe:	call   DWORD PTR [eax]
  705500:	mov    esi,eax
  705502:	test   esi,esi
  705504:	je     706ab0
  70550a:	lea    eax,[ebx+0x45ee4]
  705510:	mov    eax,DWORD PTR [eax]
  705512:	mov    ebx,DWORD PTR [esi]
  705514:	movzx  edx,WORD PTR [ebx+0xaa]
  70551b:	test   edx,edx
  70551d:	je     70552e
  70551f:	mov    edi,DWORD PTR [ebx+0x4c]
  705522:	xor    ecx,ecx
  705524:	cmp    DWORD PTR [edi+ecx*8],eax
  705527:	je     70554a
  705529:	inc    ecx
  70552a:	cmp    ecx,edx
  70552c:	jb     705524
  70552e:	mov    DWORD PTR [esp+0x4],eax
  705532:	mov    DWORD PTR [esp],esi
  705535:	mov    DWORD PTR [esp+0x8],0x0
  70553d:	mov    ebx,DWORD PTR [esp+0x44]
  705541:	call   1c1964
  705546:	mov    ecx,eax
  705548:	jmp    705559
  70554a:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  70554e:	lea    ecx,[ebx+eax*8+0xb4]
  705555:	mov    ebx,DWORD PTR [esp+0x44]
  705559:	mov    eax,DWORD PTR [ecx+0x4]
  70555c:	mov    DWORD PTR [esp+0x4],eax
  705560:	mov    DWORD PTR [esp],esi
  705563:	call   DWORD PTR [ecx]
  705565:	mov    DWORD PTR [esp+0x40],eax
  705569:	test   eax,eax
  70556b:	je     705750
  705571:	lea    eax,[ebx+0x4319c]
  705577:	mov    DWORD PTR [esp+0x3c],eax
  70557b:	mov    DWORD PTR [esp+0x44],ebx
  70557f:	mov    eax,DWORD PTR [esp+0x3c]
  705583:	mov    eax,DWORD PTR [eax]
  705585:	mov    ebx,DWORD PTR [esp+0x40]
  705589:	mov    ecx,DWORD PTR [ebx]
  70558b:	movzx  edx,WORD PTR [ecx+0xaa]
  705592:	test   edx,edx
  705594:	je     7055a5
  705596:	mov    esi,DWORD PTR [ecx+0x4c]
  705599:	xor    edi,edi
  70559b:	cmp    DWORD PTR [esi+edi*8],eax
  70559e:	je     7055c3
  7055a0:	inc    edi
  7055a1:	cmp    edi,edx
  7055a3:	jb     70559b
  7055a5:	mov    DWORD PTR [esp+0x4],eax
  7055a9:	mov    DWORD PTR [esp],ebx
  7055ac:	mov    DWORD PTR [esp+0x8],0x1
  7055b4:	mov    ebx,DWORD PTR [esp+0x44]
  7055b8:	call   1c1964
  7055bd:	mov    ebx,DWORD PTR [esp+0x40]
  7055c1:	jmp    7055ce
  7055c3:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  7055c7:	lea    eax,[ecx+eax*8+0xbc]
  7055ce:	mov    ecx,DWORD PTR [eax]
  7055d0:	mov    eax,DWORD PTR [eax+0x4]
  7055d3:	mov    DWORD PTR [esp+0x4],eax
  7055d7:	mov    DWORD PTR [esp],ebx
  7055da:	mov    ebx,DWORD PTR [esp+0x44]
  7055de:	call   ecx
  7055e0:	test   al,al
  7055e2:	je     706a72
  7055e8:	mov    eax,DWORD PTR [esp+0x44]
  7055ec:	lea    eax,[eax+0x45ee8]
  7055f2:	mov    eax,DWORD PTR [eax]
  7055f4:	mov    ebx,DWORD PTR [esp+0x40]
  7055f8:	mov    ecx,DWORD PTR [ebx]
  7055fa:	movzx  edx,WORD PTR [ecx+0xaa]
  705601:	test   edx,edx
  705603:	je     705614
  705605:	mov    esi,DWORD PTR [ecx+0x4c]
  705608:	xor    edi,edi
  70560a:	cmp    DWORD PTR [esi+edi*8],eax
  70560d:	je     705632
  70560f:	inc    edi
  705610:	cmp    edi,edx
  705612:	jb     70560a
  705614:	mov    DWORD PTR [esp+0x4],eax
  705618:	mov    DWORD PTR [esp],ebx
  70561b:	mov    DWORD PTR [esp+0x8],0x0
  705623:	mov    ebx,DWORD PTR [esp+0x44]
  705627:	call   1c1964
  70562c:	mov    ebx,DWORD PTR [esp+0x40]
  705630:	jmp    70563d
  705632:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  705636:	lea    eax,[ecx+eax*8+0xb4]
  70563d:	mov    ecx,DWORD PTR [eax]
  70563f:	mov    eax,DWORD PTR [eax+0x4]
  705642:	mov    DWORD PTR [esp+0x4],eax
  705646:	mov    DWORD PTR [esp],ebx
  705649:	mov    ebx,DWORD PTR [esp+0x44]
  70564d:	call   ecx
  70564f:	mov    esi,eax
  705651:	test   esi,esi
  705653:	je     706a8e
  705659:	mov    DWORD PTR [esp],esi
  70565c:	mov    DWORD PTR [esp+0x4],0x0
  705664:	mov    ebx,DWORD PTR [esp+0x44]
  705668:	call   16ff507  ; ABH.Shared.BalancingData.ClassSkinBalancingData::get_OriginalClass
  70566d:	mov    edi,eax
  70566f:	mov    eax,DWORD PTR [esp+0x44]
  705673:	lea    eax,[eax+0x430e4]
  705679:	mov    eax,DWORD PTR [eax]
  70567b:	test   BYTE PTR [eax+0xb2],0x1
  705682:	je     705696
  705684:	cmp    DWORD PTR [eax+0x60],0x0
  705688:	jne    705696
  70568a:	mov    DWORD PTR [esp],eax
  70568d:	mov    ebx,DWORD PTR [esp+0x44]
  705691:	call   1db0b8
  705696:	mov    ebx,DWORD PTR [esp+0x44]
  70569a:	lea    eax,[ebx+0x57340]  ; literal "class_knight"
  7056a0:	mov    DWORD PTR [esp+0x38],eax
  7056a4:	mov    eax,DWORD PTR [eax]
  7056a6:	mov    DWORD PTR [esp+0x8],eax
  7056aa:	mov    DWORD PTR [esp+0x4],edi
  7056ae:	mov    DWORD PTR [esp+0xc],0x0
  7056b6:	mov    DWORD PTR [esp],0x0
  7056bd:	call   ca24cf  ; System.String::op_Equality
  7056c2:	test   al,al
  7056c4:	je     70557f
  7056ca:	mov    DWORD PTR [esp],esi
  7056cd:	mov    DWORD PTR [esp+0x4],0x0
  7056d5:	mov    ebx,DWORD PTR [esp+0x44]
  7056d9:	call   16ff570  ; ABH.Shared.BalancingData.ClassSkinBalancingData::get_SortPriority
  7056de:	test   eax,eax
  7056e0:	jne    70557f
  7056e6:	mov    eax,DWORD PTR [esp+0x2c]
  7056ea:	mov    DWORD PTR [esp],eax
  7056ed:	mov    DWORD PTR [esp+0x4],0x0
  7056f5:	mov    ebx,DWORD PTR [esp+0x44]
  7056f9:	call   179dc44  ; ABH.Shared.Models.PlayerData::get_EquippedSkins
  7056fe:	mov    edi,eax
  705700:	mov    DWORD PTR [esp],esi
  705703:	mov    DWORD PTR [esp+0x4],0x0
  70570b:	mov    ebx,DWORD PTR [esp+0x44]
  70570f:	call   16ff4e4  ; ABH.Shared.BalancingData.ClassSkinBalancingData::get_NameId
  705714:	test   edi,edi
  705716:	je     706a9f
  70571c:	mov    ecx,DWORD PTR [esp+0x38]
  705720:	mov    ecx,DWORD PTR [ecx]
  705722:	mov    ebx,DWORD PTR [esp+0x44]
  705726:	lea    edx,[ebx+0x4929c]
  70572c:	mov    edx,DWORD PTR [edx]
  70572e:	mov    DWORD PTR [esp+0xc],edx
  705732:	mov    DWORD PTR [esp+0x8],eax
  705736:	mov    DWORD PTR [esp+0x4],ecx
  70573a:	mov    DWORD PTR [esp],edi
  70573d:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  705742:	jmp    70557f
  705747:	mov    ebx,DWORD PTR [esp+0x44]
  70574b:	mov    esi,DWORD PTR [ebp+0x8]
  70574e:	jmp    70575d
  705750:	mov    esi,DWORD PTR [ebp+0x8]
  705753:	call   1fbc48
  705758:	jmp    706ac7
  70575d:	cmp    edx,0x1
  705760:	jne    706aba
  705766:	mov    DWORD PTR [esp],eax
  705769:	call   1ba3f0
  70576e:	mov    eax,DWORD PTR [eax]
  705770:	mov    DWORD PTR [esp+0x38],eax
  705774:	call   1b9ce0
  705779:	mov    DWORD PTR [esp+0x3c],0x0
  705781:	mov    ecx,DWORD PTR [esp+0x40]
  705785:	test   ecx,ecx
  705787:	je     7057e5
  705789:	lea    eax,[ebx+0x431a4]
  70578f:	mov    eax,DWORD PTR [eax]
  705791:	mov    ecx,DWORD PTR [ecx]
  705793:	movzx  edx,WORD PTR [ecx+0xaa]
  70579a:	test   edx,edx
  70579c:	je     7057ad
  70579e:	mov    edi,DWORD PTR [ecx+0x4c]
  7057a1:	xor    esi,esi
  7057a3:	cmp    DWORD PTR [edi+esi*8],eax
  7057a6:	je     7057c7
  7057a8:	inc    esi
  7057a9:	cmp    esi,edx
  7057ab:	jb     7057a3
  7057ad:	mov    DWORD PTR [esp+0x4],eax
  7057b1:	mov    esi,DWORD PTR [esp+0x40]
  7057b5:	mov    DWORD PTR [esp],esi
  7057b8:	mov    DWORD PTR [esp+0x8],0x0
  7057c0:	call   1c1964
  7057c5:	jmp    7057d6
  7057c7:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  7057cb:	lea    eax,[ecx+eax*8+0xb4]
  7057d2:	mov    esi,DWORD PTR [esp+0x40]
  7057d6:	mov    ecx,DWORD PTR [eax+0x4]
  7057d9:	mov    DWORD PTR [esp+0x4],ecx
  7057dd:	mov    DWORD PTR [esp],esi
  7057e0:	call   DWORD PTR [eax]
  7057e2:	mov    esi,DWORD PTR [ebp+0x8]
  7057e5:	cmp    DWORD PTR [esp+0x3c],0x24e
  7057ed:	jne    7057fd
  7057ef:	mov    DWORD PTR [esp+0x3c],0x0
  7057f7:	mov    edi,DWORD PTR [esp+0x38]
  7057fb:	jmp    70580f
  7057fd:	xor    edi,edi
  7057ff:	mov    eax,DWORD PTR [esp+0x38]
  705803:	test   eax,eax
  705805:	je     70580f
  705807:	mov    DWORD PTR [esp],eax
  70580a:	call   1fbb20
  70580f:	mov    DWORD PTR [esp+0x38],edi
  705813:	mov    eax,DWORD PTR [esi+0x30]
  705816:	test   eax,eax
  705818:	je     706ab0
  70581e:	lea    ecx,[ebx+0x4a92c]
  705824:	mov    ecx,DWORD PTR [ecx]
  705826:	mov    DWORD PTR [esp+0x8],ecx
  70582a:	mov    DWORD PTR [esp+0x4],eax
  70582e:	lea    eax,[esp+0xc0]
  705835:	mov    DWORD PTR [esp],eax
  705838:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  70583d:	sub    esp,0x4
  705840:	movsd  xmm0,QWORD PTR [esp+0xc0]
  705849:	movsd  xmm1,QWORD PTR [esp+0xc8]
  705852:	movsd  QWORD PTR [esp+0x168],xmm1
  70585b:	movsd  QWORD PTR [esp+0x160],xmm0
  705864:	lea    eax,[ebx+0x4a934]
  70586a:	mov    DWORD PTR [esp+0x34],eax
  70586e:	mov    esi,ebx
  705870:	mov    DWORD PTR [esp+0x44],esi
  705874:	mov    eax,DWORD PTR [esp+0x34]
  705878:	mov    eax,DWORD PTR [eax]
  70587a:	mov    DWORD PTR [esp+0x4],eax
  70587e:	lea    eax,[esp+0x160]
  705885:	mov    DWORD PTR [esp],eax
  705888:	mov    ebx,esi
  70588a:	call   447e4e
  70588f:	test   al,al
  705891:	je     705cb3
  705897:	lea    eax,[esi+0x4a930]
  70589d:	mov    eax,DWORD PTR [eax]
  70589f:	mov    DWORD PTR [esp+0x4],eax
  7058a3:	lea    eax,[esp+0x160]
  7058aa:	mov    DWORD PTR [esp],eax
  7058ad:	mov    ebx,esi
  7058af:	call   447f1e
  7058b4:	test   eax,eax
  7058b6:	je     705ce4
  7058bc:	mov    eax,DWORD PTR [eax+0x18]
  7058bf:	test   eax,eax
  7058c1:	mov    ebx,esi
  7058c3:	je     705cf0
  7058c9:	mov    eax,DWORD PTR [eax+0x10]
  7058cc:	test   eax,eax
  7058ce:	je     705cfa
  7058d4:	lea    ecx,[ebx+0x4ac44]
  7058da:	mov    ecx,DWORD PTR [ecx]
  7058dc:	mov    DWORD PTR [esp+0x4],ecx
  7058e0:	mov    DWORD PTR [esp],eax
  7058e3:	mov    esi,ebx
  7058e5:	call   5a175a  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Values | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, object>::get_Values
  7058ea:	test   eax,eax
  7058ec:	je     705d04
  7058f2:	lea    ecx,[esi+0x4ac48]
  7058f8:	mov    ecx,DWORD PTR [ecx]
  7058fa:	mov    DWORD PTR [esp+0x8],ecx
  7058fe:	mov    DWORD PTR [esp+0x4],eax
  705902:	lea    eax,[esp+0xa8]
  705909:	mov    DWORD PTR [esp],eax
  70590c:	mov    ebx,esi
  70590e:	call   1229ff0  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, object>::GetEnumerator
  705913:	sub    esp,0x4
  705916:	mov    eax,DWORD PTR [esp+0xb8]
  70591d:	mov    DWORD PTR [esp+0x150],eax
  705924:	movsd  xmm0,QWORD PTR [esp+0xa8]
  70592d:	movsd  xmm1,QWORD PTR [esp+0xb0]
  705936:	movsd  QWORD PTR [esp+0x148],xmm1
  70593f:	movsd  QWORD PTR [esp+0x140],xmm0
  705948:	mov    ebx,esi
  70594a:	lea    eax,[ebx+0x4ac50]
  705950:	mov    eax,DWORD PTR [eax]
  705952:	mov    DWORD PTR [esp+0x4],eax
  705956:	lea    eax,[esp+0x140]
  70595d:	mov    DWORD PTR [esp],eax
  705960:	call   1222bc3
  705965:	mov    esi,ebx
  705967:	mov    edi,0x323
  70596c:	test   al,al
  70596e:	je     705bff
  705974:	mov    ebx,esi
  705976:	lea    eax,[ebx+0x4ac4c]
  70597c:	mov    eax,DWORD PTR [eax]
  70597e:	mov    DWORD PTR [esp+0x4],eax
  705982:	lea    eax,[esp+0x140]
  705989:	mov    DWORD PTR [esp],eax
  70598c:	call   1222c52
  705991:	mov    edi,eax
  705993:	test   edi,edi
  705995:	je     705c05
  70599b:	lea    eax,[ebx+0x4a868]
  7059a1:	mov    eax,DWORD PTR [eax]
  7059a3:	mov    DWORD PTR [esp+0x4],eax
  7059a7:	mov    DWORD PTR [esp],edi
  7059aa:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  7059af:	test   eax,eax
  7059b1:	jle    705ab2
  7059b7:	lea    eax,[ebx+0x49f88]
  7059bd:	mov    eax,DWORD PTR [eax]
  7059bf:	mov    DWORD PTR [esp+0x8],eax
  7059c3:	mov    DWORD PTR [esp+0x4],edi
  7059c7:	mov    DWORD PTR [esp],0x0
  7059ce:	call   15eff96  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +31 other aliases
  7059d3:	mov    esi,eax
  7059d5:	test   esi,esi
  7059d7:	je     705c0f
  7059dd:	mov    DWORD PTR [esp+0x40],edi
  7059e1:	lea    eax,[ebx+0x45854]
  7059e7:	mov    eax,DWORD PTR [eax]
  7059e9:	mov    ebx,DWORD PTR [esi]
  7059eb:	movzx  edx,WORD PTR [ebx+0xaa]
  7059f2:	test   edx,edx
  7059f4:	je     705a05
  7059f6:	mov    edi,DWORD PTR [ebx+0x4c]
  7059f9:	xor    ecx,ecx
  7059fb:	cmp    DWORD PTR [edi+ecx*8],eax
  7059fe:	je     705a1f
  705a00:	inc    ecx
  705a01:	cmp    ecx,edx
  705a03:	jb     7059fb
  705a05:	mov    DWORD PTR [esp+0x4],eax
  705a09:	mov    DWORD PTR [esp],esi
  705a0c:	mov    DWORD PTR [esp+0x8],0x0
  705a14:	mov    ebx,DWORD PTR [esp+0x44]
  705a18:	call   1c1964
  705a1d:	jmp    705a2e
  705a1f:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  705a23:	lea    eax,[ebx+eax*8+0xb4]
  705a2a:	mov    ebx,DWORD PTR [esp+0x44]
  705a2e:	mov    ecx,DWORD PTR [eax]
  705a30:	mov    eax,DWORD PTR [eax+0x4]
  705a33:	mov    DWORD PTR [esp+0x4],eax
  705a37:	mov    DWORD PTR [esp],esi
  705a3a:	call   ecx
  705a3c:	mov    esi,eax
  705a3e:	test   esi,esi
  705a40:	je     705c19
  705a46:	lea    eax,[ebx+0x45578]
  705a4c:	mov    eax,DWORD PTR [eax]
  705a4e:	mov    ecx,DWORD PTR [esi]
  705a50:	movzx  edx,WORD PTR [ecx+0xaa]
  705a57:	test   edx,edx
  705a59:	je     705a6a
  705a5b:	mov    edi,DWORD PTR [ecx+0x4c]
  705a5e:	xor    ebx,ebx
  705a60:	cmp    DWORD PTR [edi+ebx*8],eax
  705a63:	je     705a88
  705a65:	inc    ebx
  705a66:	cmp    ebx,edx
  705a68:	jb     705a60
  705a6a:	mov    DWORD PTR [esp+0x4],eax
  705a6e:	mov    DWORD PTR [esp],esi
  705a71:	mov    DWORD PTR [esp+0x8],0x2
  705a79:	mov    ebx,DWORD PTR [esp+0x44]
  705a7d:	call   1c1964
  705a82:	mov    edi,DWORD PTR [esp+0x40]
  705a86:	jmp    705a9b
  705a88:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  705a8c:	lea    eax,[ecx+eax*8+0xc4]
  705a93:	mov    ebx,DWORD PTR [esp+0x44]
  705a97:	mov    edi,DWORD PTR [esp+0x40]
  705a9b:	mov    ecx,DWORD PTR [eax]
  705a9d:	mov    eax,DWORD PTR [eax+0x4]
  705aa0:	mov    DWORD PTR [esp+0x4],eax
  705aa4:	mov    DWORD PTR [esp],esi
  705aa7:	call   ecx
  705aa9:	cmp    eax,0x17
  705aac:	je     70594a
  705ab2:	lea    eax,[ebx+0x4a81c]
  705ab8:	mov    eax,DWORD PTR [eax]
  705aba:	mov    DWORD PTR [esp+0x8],eax
  705abe:	mov    DWORD PTR [esp+0x4],edi
  705ac2:	lea    eax,[esp+0x98]
  705ac9:	mov    DWORD PTR [esp],eax
  705acc:	mov    esi,ebx
  705ace:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  705ad3:	sub    esp,0x4
  705ad6:	movsd  xmm0,QWORD PTR [esp+0x98]
  705adf:	movsd  xmm1,QWORD PTR [esp+0xa0]
  705ae8:	movsd  QWORD PTR [esp+0x138],xmm1
  705af1:	movsd  QWORD PTR [esp+0x130],xmm0
  705afa:	mov    ebx,esi
  705afc:	lea    eax,[ebx+0x4a824]
  705b02:	mov    eax,DWORD PTR [eax]
  705b04:	mov    DWORD PTR [esp+0x4],eax
  705b08:	lea    eax,[esp+0x130]
  705b0f:	mov    DWORD PTR [esp],eax
  705b12:	call   447e4e
  705b17:	mov    esi,ebx
  705b19:	mov    edi,0x304
  705b1e:	test   al,al
  705b20:	je     705b61
  705b22:	mov    ebx,esi
  705b24:	lea    eax,[ebx+0x4a820]
  705b2a:	mov    eax,DWORD PTR [eax]
  705b2c:	mov    DWORD PTR [esp+0x4],eax
  705b30:	lea    eax,[esp+0x130]
  705b37:	mov    DWORD PTR [esp],eax
  705b3a:	call   447f1e
  705b3f:	mov    ecx,DWORD PTR [ebp+0x8]
  705b42:	mov    ecx,DWORD PTR [ecx+0x10]
  705b45:	test   ecx,ecx
  705b47:	je     705b67
  705b49:	mov    DWORD PTR [esp+0x4],eax
  705b4d:	mov    DWORD PTR [esp],ecx
  705b50:	mov    DWORD PTR [esp+0x8],0x0
  705b58:	call   6e3d8d  ; ABH.GameDatas.InventoryGameData::AddNewItemToInventory
  705b5d:	jmp    705afc
  705b5f:	jmp    705b71
  705b61:	mov    eax,DWORD PTR [esp+0x38]
  705b65:	jmp    705b91
  705b67:	call   1fbc48
  705b6c:	jmp    706b08
  705b71:	cmp    edx,0x1
  705b74:	jne    705c23
  705b7a:	mov    DWORD PTR [esp],eax
  705b7d:	call   1ba3f0
  705b82:	mov    edi,DWORD PTR [eax]
  705b84:	mov    esi,ebx
  705b86:	call   1b9ce0
  705b8b:	mov    eax,edi
  705b8d:	mov    edi,DWORD PTR [esp+0x3c]
  705b91:	mov    DWORD PTR [esp+0x40],eax
  705b95:	mov    DWORD PTR [esp+0x3c],edi
  705b99:	lea    eax,[esi+0x4a828]
  705b9f:	mov    eax,DWORD PTR [eax]
  705ba1:	mov    DWORD PTR [esp+0x4],eax
  705ba5:	lea    eax,[esp+0x130]
  705bac:	mov    DWORD PTR [esp],eax
  705baf:	mov    ebx,esi
  705bb1:	call   447df6
  705bb6:	mov    eax,DWORD PTR [esp+0x40]
  705bba:	mov    DWORD PTR [esp+0x3c],0x0
  705bc2:	cmp    edi,0x304
  705bc8:	mov    DWORD PTR [esp+0x38],eax
  705bcc:	je     705948
  705bd2:	mov    DWORD PTR [esp+0x38],0x0
  705bda:	test   eax,eax
  705bdc:	mov    DWORD PTR [esp+0x3c],edi
  705be0:	je     705948
  705be6:	mov    DWORD PTR [esp+0x3c],edi
  705bea:	mov    DWORD PTR [esp],eax
  705bed:	mov    ebx,esi
  705bef:	call   1fbb20
  705bf4:	jmp    705948
  705bf9:	mov    ebx,esi
  705bfb:	jmp    705c23
  705bfd:	jmp    705c23
  705bff:	mov    eax,DWORD PTR [esp+0x38]
  705c03:	jmp    705c47
  705c05:	call   1fbc48
  705c0a:	jmp    706ad1
  705c0f:	call   1fbc48
  705c14:	jmp    706adb
  705c19:	call   1fbc48
  705c1e:	jmp    706ae5
  705c23:	mov    ecx,0x1
  705c28:	cmp    edx,ecx
  705c2a:	jne    705d15
  705c30:	mov    DWORD PTR [esp],eax
  705c33:	call   1ba3f0
  705c38:	mov    edi,DWORD PTR [eax]
  705c3a:	mov    esi,ebx
  705c3c:	call   1b9ce0
  705c41:	mov    eax,edi
  705c43:	mov    edi,DWORD PTR [esp+0x3c]
  705c47:	mov    DWORD PTR [esp+0x40],eax
  705c4b:	mov    DWORD PTR [esp+0x3c],edi
  705c4f:	lea    eax,[esi+0x4ac54]
  705c55:	mov    eax,DWORD PTR [eax]
  705c57:	mov    DWORD PTR [esp+0x4],eax
  705c5b:	lea    eax,[esp+0x140]
  705c62:	mov    DWORD PTR [esp],eax
  705c65:	mov    ebx,esi
  705c67:	call   1222b3a
  705c6c:	mov    eax,DWORD PTR [esp+0x40]
  705c70:	mov    DWORD PTR [esp+0x3c],0x0
  705c78:	cmp    edi,0x323
  705c7e:	mov    DWORD PTR [esp+0x38],eax
  705c82:	je     705874
  705c88:	mov    DWORD PTR [esp+0x38],0x0
  705c90:	test   eax,eax
  705c92:	mov    DWORD PTR [esp+0x3c],edi
  705c96:	je     705874
  705c9c:	mov    DWORD PTR [esp+0x3c],edi
  705ca0:	mov    DWORD PTR [esp],eax
  705ca3:	mov    ebx,esi
  705ca5:	call   1fbb20
  705caa:	jmp    705874
  705caf:	mov    ebx,esi
  705cb1:	jmp    705d10
  705cb3:	mov    ebx,esi
  705cb5:	lea    eax,[ebx+0x4a938]
  705cbb:	mov    eax,DWORD PTR [eax]
  705cbd:	mov    DWORD PTR [esp+0x4],eax
  705cc1:	lea    eax,[esp+0x160]
  705cc8:	mov    DWORD PTR [esp],eax
  705ccb:	call   447df6
  705cd0:	mov    DWORD PTR [esp+0x3c],0x0
  705cd8:	mov    eax,DWORD PTR [ebp+0x8]
  705cdb:	mov    edi,DWORD PTR [esp+0x38]
  705cdf:	jmp    705d6e
  705ce4:	mov    ebx,esi
  705ce6:	call   1fbc48
  705ceb:	call   6b106a
  705cf0:	call   1fbc48
  705cf5:	call   6b106a
  705cfa:	call   1fbc48
  705cff:	call   6b106a
  705d04:	mov    ebx,esi
  705d06:	call   1fbc48
  705d0b:	jmp    706b03
  705d10:	mov    ecx,0x1
  705d15:	cmp    edx,ecx
  705d17:	jne    706aba
  705d1d:	mov    DWORD PTR [esp],eax
  705d20:	call   1ba3f0
  705d25:	mov    esi,DWORD PTR [eax]
  705d27:	call   1b9ce0
  705d2c:	lea    eax,[ebx+0x4a938]
  705d32:	mov    eax,DWORD PTR [eax]
  705d34:	mov    DWORD PTR [esp+0x4],eax
  705d38:	lea    eax,[esp+0x160]
  705d3f:	mov    DWORD PTR [esp],eax
  705d42:	call   447df6
  705d47:	cmp    DWORD PTR [esp+0x3c],0x342
  705d4f:	jne    705d5d
  705d51:	mov    DWORD PTR [esp+0x3c],0x0
  705d59:	mov    edi,esi
  705d5b:	jmp    705d6b
  705d5d:	xor    edi,edi
  705d5f:	test   esi,esi
  705d61:	je     705d6b
  705d63:	mov    DWORD PTR [esp],esi
  705d66:	call   1fbb20
  705d6b:	mov    eax,DWORD PTR [ebp+0x8]
  705d6e:	mov    eax,DWORD PTR [eax+0x1c]
  705d71:	test   eax,eax
  705d73:	je     706ab0
  705d79:	mov    DWORD PTR [esp],eax
  705d7c:	mov    DWORD PTR [esp+0x4],0x0
  705d84:	call   eabbe3  ; ABH.GameDatas.BannerGameData::get_InventoryGameData
  705d89:	test   eax,eax
  705d8b:	je     706ab0
  705d91:	mov    eax,DWORD PTR [eax+0x10]
  705d94:	test   eax,eax
  705d96:	je     706ab0
  705d9c:	mov    DWORD PTR [esp+0x38],edi
  705da0:	lea    ecx,[ebx+0x4ac44]
  705da6:	mov    DWORD PTR [esp+0x34],ecx
  705daa:	mov    ecx,DWORD PTR [ecx]
  705dac:	mov    DWORD PTR [esp+0x4],ecx
  705db0:	mov    DWORD PTR [esp],eax
  705db3:	call   5a175a  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Values | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, object>::get_Values
  705db8:	test   eax,eax
  705dba:	je     706ab0
  705dc0:	lea    ecx,[ebx+0x4ac48]
  705dc6:	mov    DWORD PTR [esp+0x28],ecx
  705dca:	mov    ecx,DWORD PTR [ecx]
  705dcc:	mov    DWORD PTR [esp+0x8],ecx
  705dd0:	mov    DWORD PTR [esp+0x4],eax
  705dd4:	lea    eax,[esp+0x80]
  705ddb:	mov    DWORD PTR [esp],eax
  705dde:	call   1229ff0  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, object>::GetEnumerator
  705de3:	sub    esp,0x4
  705de6:	mov    eax,DWORD PTR [esp+0x90]
  705ded:	mov    DWORD PTR [esp+0x120],eax
  705df4:	movsd  xmm0,QWORD PTR [esp+0x80]
  705dfd:	movsd  xmm1,QWORD PTR [esp+0x88]
  705e06:	movsd  QWORD PTR [esp+0x118],xmm1
  705e0f:	movsd  QWORD PTR [esp+0x110],xmm0
  705e18:	lea    eax,[ebx+0x4ac50]
  705e1e:	mov    DWORD PTR [esp+0x30],eax
  705e22:	mov    esi,ebx
  705e24:	mov    eax,DWORD PTR [esp+0x30]
  705e28:	mov    eax,DWORD PTR [eax]
  705e2a:	mov    DWORD PTR [esp+0x4],eax
  705e2e:	lea    eax,[esp+0x110]
  705e35:	mov    DWORD PTR [esp],eax
  705e38:	mov    ebx,esi
  705e3a:	call   1222bc3
  705e3f:	test   al,al
  705e41:	je     705fae
  705e47:	lea    eax,[esi+0x4ac4c]
  705e4d:	mov    eax,DWORD PTR [eax]
  705e4f:	mov    DWORD PTR [esp+0x4],eax
  705e53:	lea    eax,[esp+0x110]
  705e5a:	mov    DWORD PTR [esp],eax
  705e5d:	mov    ebx,esi
  705e5f:	call   1222c52
  705e64:	test   eax,eax
  705e66:	je     705fd5
  705e6c:	lea    ecx,[esi+0x4a81c]
  705e72:	mov    ecx,DWORD PTR [ecx]
  705e74:	mov    DWORD PTR [esp+0x8],ecx
  705e78:	mov    DWORD PTR [esp+0x4],eax
  705e7c:	lea    eax,[esp+0x70]
  705e80:	mov    DWORD PTR [esp],eax
  705e83:	mov    ebx,esi
  705e85:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  705e8a:	sub    esp,0x4
  705e8d:	movsd  xmm0,QWORD PTR [esp+0x70]
  705e93:	movsd  xmm1,QWORD PTR [esp+0x78]
  705e99:	movsd  QWORD PTR [esp+0x108],xmm1
  705ea2:	movsd  QWORD PTR [esp+0x100],xmm0
  705eab:	mov    ebx,esi
  705ead:	lea    eax,[ebx+0x4a824]
  705eb3:	mov    eax,DWORD PTR [eax]
  705eb5:	mov    DWORD PTR [esp+0x4],eax
  705eb9:	lea    eax,[esp+0x100]
  705ec0:	mov    DWORD PTR [esp],eax
  705ec3:	call   447e4e
  705ec8:	mov    esi,ebx
  705eca:	mov    edi,0x3b0
  705ecf:	test   al,al
  705ed1:	je     705f12
  705ed3:	mov    ebx,esi
  705ed5:	lea    eax,[ebx+0x4a820]
  705edb:	mov    eax,DWORD PTR [eax]
  705edd:	mov    DWORD PTR [esp+0x4],eax
  705ee1:	lea    eax,[esp+0x100]
  705ee8:	mov    DWORD PTR [esp],eax
  705eeb:	call   447f1e
  705ef0:	mov    ecx,DWORD PTR [ebp+0x8]
  705ef3:	mov    ecx,DWORD PTR [ecx+0x10]
  705ef6:	test   ecx,ecx
  705ef8:	je     705f18
  705efa:	mov    DWORD PTR [esp+0x4],eax
  705efe:	mov    DWORD PTR [esp],ecx
  705f01:	mov    DWORD PTR [esp+0x8],0x0
  705f09:	call   6e3d8d  ; ABH.GameDatas.InventoryGameData::AddNewItemToInventory
  705f0e:	jmp    705ead
  705f10:	jmp    705f22
  705f12:	mov    eax,DWORD PTR [esp+0x38]
  705f16:	jmp    705f42
  705f18:	call   1fbc48
  705f1d:	jmp    706ac2
  705f22:	cmp    edx,0x1
  705f25:	jne    705fe1
  705f2b:	mov    DWORD PTR [esp],eax
  705f2e:	call   1ba3f0
  705f33:	mov    edi,DWORD PTR [eax]
  705f35:	mov    esi,ebx
  705f37:	call   1b9ce0
  705f3c:	mov    eax,edi
  705f3e:	mov    edi,DWORD PTR [esp+0x3c]
  705f42:	mov    DWORD PTR [esp+0x40],eax
  705f46:	mov    DWORD PTR [esp+0x3c],edi
  705f4a:	lea    eax,[esi+0x4a828]
  705f50:	mov    eax,DWORD PTR [eax]
  705f52:	mov    DWORD PTR [esp+0x4],eax
  705f56:	lea    eax,[esp+0x100]
  705f5d:	mov    DWORD PTR [esp],eax
  705f60:	mov    ebx,esi
  705f62:	call   447df6
  705f67:	mov    eax,DWORD PTR [esp+0x40]
  705f6b:	mov    DWORD PTR [esp+0x3c],0x0
  705f73:	cmp    edi,0x3b0
  705f79:	mov    DWORD PTR [esp+0x38],eax
  705f7d:	je     705e24
  705f83:	mov    DWORD PTR [esp+0x38],0x0
  705f8b:	test   eax,eax
  705f8d:	mov    DWORD PTR [esp+0x3c],edi
  705f91:	je     705e24
  705f97:	mov    DWORD PTR [esp+0x3c],edi
  705f9b:	mov    DWORD PTR [esp],eax
  705f9e:	mov    ebx,esi
  705fa0:	call   1fbb20
  705fa5:	jmp    705e24
  705faa:	mov    ebx,esi
  705fac:	jmp    705fe1
  705fae:	mov    ebx,esi
  705fb0:	lea    eax,[ebx+0x4ac54]
  705fb6:	mov    eax,DWORD PTR [eax]
  705fb8:	mov    DWORD PTR [esp+0x4],eax
  705fbc:	lea    eax,[esp+0x110]
  705fc3:	mov    DWORD PTR [esp],eax
  705fc6:	call   1222b3a
  705fcb:	mov    DWORD PTR [esp+0x3c],0x0
  705fd3:	jmp    706044
  705fd5:	mov    ebx,esi
  705fd7:	call   1fbc48
  705fdc:	jmp    706aef
  705fe1:	mov    ecx,0x1
  705fe6:	cmp    edx,ecx
  705fe8:	jne    706aba
  705fee:	mov    DWORD PTR [esp],eax
  705ff1:	call   1ba3f0
  705ff6:	mov    esi,DWORD PTR [eax]
  705ff8:	call   1b9ce0
  705ffd:	lea    eax,[ebx+0x4ac54]
  706003:	mov    eax,DWORD PTR [eax]
  706005:	mov    DWORD PTR [esp+0x4],eax
  706009:	lea    eax,[esp+0x110]
  706010:	mov    DWORD PTR [esp],eax
  706013:	call   1222b3a
  706018:	cmp    DWORD PTR [esp+0x3c],0x3cf
  706020:	jne    706030
  706022:	mov    DWORD PTR [esp+0x3c],0x0
  70602a:	mov    DWORD PTR [esp+0x38],esi
  70602e:	jmp    706044
  706030:	mov    DWORD PTR [esp+0x38],0x0
  706038:	test   esi,esi
  70603a:	je     706044
  70603c:	mov    DWORD PTR [esp],esi
  70603f:	call   1fbb20
  706044:	mov    DWORD PTR [esp+0x4],0x0
  70604c:	mov    DWORD PTR [esp],0x0
  706053:	call   106b137  ; DIContainerLogic::get_InventoryService
  706058:	mov    esi,eax
  70605a:	mov    edi,DWORD PTR [ebp+0x8]
  70605d:	mov    eax,DWORD PTR [edi+0x10]
  706060:	mov    DWORD PTR [esp+0x40],eax
  706064:	mov    DWORD PTR [esp+0x4],0x0
  70606c:	mov    DWORD PTR [esp],0x0
  706073:	call   106b137  ; DIContainerLogic::get_InventoryService
  706078:	test   eax,eax
  70607a:	je     706ab0
  706080:	mov    ecx,DWORD PTR [edi+0x10]
  706083:	lea    edx,[ebx+0x57310]  ; literal "experience"
  706089:	mov    edx,DWORD PTR [edx]
  70608b:	mov    DWORD PTR [esp+0x10],edx
  70608f:	mov    DWORD PTR [esp+0x4],ecx
  706093:	mov    DWORD PTR [esp],eax
  706096:	mov    DWORD PTR [esp+0x1c],0x0
  70609e:	mov    DWORD PTR [esp+0x18],0x0
  7060a6:	mov    DWORD PTR [esp+0x14],0x0
  7060ae:	mov    DWORD PTR [esp+0xc],0x0
  7060b6:	mov    DWORD PTR [esp+0x8],0x1
  7060be:	call   547648  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateNewInventoryItemGameData
  7060c3:	test   esi,esi
  7060c5:	je     706ab0
  7060cb:	mov    DWORD PTR [esp+0x8],eax
  7060cf:	mov    eax,DWORD PTR [esp+0x40]
  7060d3:	mov    DWORD PTR [esp+0x4],eax
  7060d7:	mov    DWORD PTR [esp],esi
  7060da:	mov    DWORD PTR [esp+0xc],0x0
  7060e2:	call   5659b2  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::InitItem
  7060e7:	mov    DWORD PTR [esp+0x4],0x0
  7060ef:	mov    DWORD PTR [esp],0x0
  7060f6:	call   106b137  ; DIContainerLogic::get_InventoryService
  7060fb:	mov    esi,eax
  7060fd:	mov    eax,DWORD PTR [edi+0x10]
  706100:	mov    DWORD PTR [esp+0x40],eax
  706104:	mov    DWORD PTR [esp+0x4],0x0
  70610c:	mov    DWORD PTR [esp],0x0
  706113:	call   106b137  ; DIContainerLogic::get_InventoryService
  706118:	test   eax,eax
  70611a:	je     706ab0
  706120:	mov    ecx,DWORD PTR [edi+0x10]
  706123:	lea    edx,[ebx+0x56af0]  ; literal "gold"
  706129:	mov    edx,DWORD PTR [edx]
  70612b:	mov    DWORD PTR [esp+0x10],edx
  70612f:	mov    DWORD PTR [esp+0x4],ecx
  706133:	mov    DWORD PTR [esp],eax
  706136:	mov    DWORD PTR [esp+0x1c],0x0
  70613e:	mov    DWORD PTR [esp+0x18],0x0
  706146:	mov    DWORD PTR [esp+0x14],0x0
  70614e:	mov    DWORD PTR [esp+0xc],0x0
  706156:	mov    DWORD PTR [esp+0x8],0x1
  70615e:	call   547648  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateNewInventoryItemGameData
  706163:	test   esi,esi
  706165:	je     706ab0
  70616b:	mov    DWORD PTR [esp+0x8],eax
  70616f:	mov    eax,DWORD PTR [esp+0x40]
  706173:	mov    DWORD PTR [esp+0x4],eax
  706177:	mov    DWORD PTR [esp],esi
  70617a:	mov    DWORD PTR [esp+0xc],0x0
  706182:	call   5659b2  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::InitItem
  706187:	mov    DWORD PTR [esp+0x4],0x0
  70618f:	mov    DWORD PTR [esp],0x0
  706196:	call   106b137  ; DIContainerLogic::get_InventoryService
  70619b:	mov    esi,eax
  70619d:	mov    eax,DWORD PTR [edi+0x10]
  7061a0:	mov    DWORD PTR [esp+0x40],eax
  7061a4:	mov    DWORD PTR [esp+0x4],0x0
  7061ac:	mov    DWORD PTR [esp],0x0
  7061b3:	call   106b137  ; DIContainerLogic::get_InventoryService
  7061b8:	test   eax,eax
  7061ba:	je     706ab0
  7061c0:	mov    ecx,DWORD PTR [edi+0x10]
  7061c3:	lea    edx,[ebx+0x56af4]  ; literal "lucky_coin"
  7061c9:	mov    edx,DWORD PTR [edx]
  7061cb:	mov    DWORD PTR [esp+0x10],edx
  7061cf:	mov    DWORD PTR [esp+0x4],ecx
  7061d3:	mov    DWORD PTR [esp],eax
  7061d6:	mov    DWORD PTR [esp+0x1c],0x0
  7061de:	mov    DWORD PTR [esp+0x18],0x0
  7061e6:	mov    DWORD PTR [esp+0x14],0x0
  7061ee:	mov    DWORD PTR [esp+0xc],0x0
  7061f6:	mov    DWORD PTR [esp+0x8],0x1
  7061fe:	call   547648  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateNewInventoryItemGameData
  706203:	test   esi,esi
  706205:	je     706ab0
  70620b:	mov    DWORD PTR [esp+0x8],eax
  70620f:	mov    eax,DWORD PTR [esp+0x40]
  706213:	mov    DWORD PTR [esp+0x4],eax
  706217:	mov    DWORD PTR [esp],esi
  70621a:	mov    DWORD PTR [esp+0xc],0x0
  706222:	call   5659b2  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::InitItem
  706227:	mov    DWORD PTR [esp+0x4],0x0
  70622f:	mov    DWORD PTR [esp],0x0
  706236:	call   106b137  ; DIContainerLogic::get_InventoryService
  70623b:	mov    esi,eax
  70623d:	mov    eax,DWORD PTR [edi+0x10]
  706240:	mov    DWORD PTR [esp+0x40],eax
  706244:	mov    DWORD PTR [esp+0x4],0x0
  70624c:	mov    DWORD PTR [esp],0x0
  706253:	call   106b137  ; DIContainerLogic::get_InventoryService
  706258:	test   eax,eax
  70625a:	je     706ab0
  706260:	mov    ecx,DWORD PTR [edi+0x10]
  706263:	lea    edx,[ebx+0x56ae4]  ; literal "friendship_essence"
  706269:	mov    edx,DWORD PTR [edx]
  70626b:	mov    DWORD PTR [esp+0x10],edx
  70626f:	mov    DWORD PTR [esp+0x4],ecx
  706273:	mov    DWORD PTR [esp],eax
  706276:	mov    DWORD PTR [esp+0x1c],0x0
  70627e:	mov    DWORD PTR [esp+0x18],0x0
  706286:	mov    DWORD PTR [esp+0x14],0x0
  70628e:	mov    DWORD PTR [esp+0xc],0x0
  706296:	mov    DWORD PTR [esp+0x8],0x1
  70629e:	call   547648  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateNewInventoryItemGameData
  7062a3:	test   esi,esi
  7062a5:	je     706ab0
  7062ab:	mov    DWORD PTR [esp+0x8],eax
  7062af:	mov    eax,DWORD PTR [esp+0x40]
  7062b3:	mov    DWORD PTR [esp+0x4],eax
  7062b7:	mov    DWORD PTR [esp],esi
  7062ba:	mov    DWORD PTR [esp+0xc],0x0
  7062c2:	call   5659b2  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::InitItem
  7062c7:	mov    DWORD PTR [esp+0x4],0x0
  7062cf:	mov    DWORD PTR [esp],0x0
  7062d6:	call   106f816  ; DIContainerLogic::GetLootOperationService
  7062db:	mov    esi,eax
  7062dd:	mov    eax,DWORD PTR [edi+0x10]
  7062e0:	mov    DWORD PTR [esp+0x20],eax
  7062e4:	mov    DWORD PTR [esp+0x4],0x0
  7062ec:	mov    DWORD PTR [esp],0x0
  7062f3:	call   106f816  ; DIContainerLogic::GetLootOperationService
  7062f8:	mov    DWORD PTR [esp+0x40],eax
  7062fc:	mov    eax,DWORD PTR [edi+0x10]
  7062ff:	test   eax,eax
  706301:	je     706ab0
  706307:	mov    DWORD PTR [esp+0x24],esi
  70630b:	lea    ecx,[ebx+0x49f80]
  706311:	mov    ecx,DWORD PTR [ecx]
  706313:	mov    DWORD PTR [esp+0x4],ecx
  706317:	mov    DWORD PTR [esp],eax
  70631a:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  70631f:	test   eax,eax
  706321:	je     706ab0
  706327:	mov    DWORD PTR [esp],eax
  70632a:	mov    DWORD PTR [esp+0x4],0x0
  706332:	call   17014ff  ; ABH.Shared.BalancingData.InventoryBalancingData::get_DefaultInventoryContent
  706337:	mov    esi,eax
  706339:	mov    eax,DWORD PTR [esp+0x2c]
  70633d:	mov    DWORD PTR [esp],eax
  706340:	mov    DWORD PTR [esp+0x4],0x0
  706348:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  70634d:	mov    edx,DWORD PTR [esp+0x40]
  706351:	test   edx,edx
  706353:	je     706ab0
  706359:	lea    ecx,[esp+0x174]
  706360:	mov    DWORD PTR [esp+0xc],ecx
  706364:	mov    DWORD PTR [esp+0x8],eax
  706368:	mov    DWORD PTR [esp+0x4],esi
  70636c:	mov    DWORD PTR [esp],edx
  70636f:	mov    DWORD PTR [esp+0x10],0x0
  706377:	call   57cd3f  ; ABH.Services.Logic.LootOperations::GenerateLoot
  70637c:	mov    edx,DWORD PTR [esp+0x24]
  706380:	test   edx,edx
  706382:	je     706ab0
  706388:	lea    ecx,[ebx+0x57344]  ; literal "player_creation"
  70638e:	mov    ecx,DWORD PTR [ecx]
  706390:	mov    DWORD PTR [esp+0x10],ecx
  706394:	mov    DWORD PTR [esp+0xc],eax
  706398:	mov    eax,DWORD PTR [esp+0x20]
  70639c:	mov    DWORD PTR [esp+0x4],eax
  7063a0:	mov    DWORD PTR [esp],edx
  7063a3:	mov    DWORD PTR [esp+0x1c],0x0
  7063ab:	mov    DWORD PTR [esp+0x18],0x1
  7063b3:	mov    DWORD PTR [esp+0x14],0x0
  7063bb:	mov    DWORD PTR [esp+0x8],0x0
  7063c3:	call   515c3c  ; ABH.Services.Logic.LootOperations::RewardLoot
  7063c8:	mov    eax,DWORD PTR [edi+0x10]
  7063cb:	test   eax,eax
  7063cd:	je     706ab0
  7063d3:	mov    eax,DWORD PTR [eax+0x10]
  7063d6:	test   eax,eax
  7063d8:	je     706ab0
  7063de:	mov    ecx,DWORD PTR [esp+0x34]
  7063e2:	mov    ecx,DWORD PTR [ecx]
  7063e4:	mov    DWORD PTR [esp+0x4],ecx
  7063e8:	mov    DWORD PTR [esp],eax
  7063eb:	call   5a175a  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Values | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, object>::get_Values
  7063f0:	test   eax,eax
  7063f2:	je     706ab0
  7063f8:	mov    ecx,DWORD PTR [esp+0x28]
  7063fc:	mov    ecx,DWORD PTR [ecx]
  7063fe:	mov    DWORD PTR [esp+0x8],ecx
  706402:	mov    DWORD PTR [esp+0x4],eax
  706406:	lea    eax,[esp+0x58]
  70640a:	mov    DWORD PTR [esp],eax
  70640d:	mov    esi,ebx
  70640f:	mov    DWORD PTR [esp+0x44],esi
  706413:	call   1229ff0  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.InventoryItemType, object>::GetEnumerator
  706418:	sub    esp,0x4
  70641b:	mov    eax,DWORD PTR [esp+0x68]
  70641f:	mov    DWORD PTR [esp+0xf0],eax
  706426:	movsd  xmm0,QWORD PTR [esp+0x58]
  70642c:	movsd  xmm1,QWORD PTR [esp+0x60]
  706432:	movsd  QWORD PTR [esp+0xe8],xmm1
  70643b:	movsd  QWORD PTR [esp+0xe0],xmm0
  706444:	mov    eax,DWORD PTR [esp+0x30]
  706448:	mov    eax,DWORD PTR [eax]
  70644a:	mov    DWORD PTR [esp+0x4],eax
  70644e:	lea    eax,[esp+0xe0]
  706455:	mov    DWORD PTR [esp],eax
  706458:	mov    ebx,esi
  70645a:	call   1222bc3
  70645f:	test   al,al
  706461:	je     706a45
  706467:	lea    eax,[esi+0x4ac4c]
  70646d:	mov    eax,DWORD PTR [eax]
  70646f:	mov    DWORD PTR [esp+0x4],eax
  706473:	lea    eax,[esp+0xe0]
  70647a:	mov    DWORD PTR [esp],eax
  70647d:	mov    ebx,esi
  70647f:	call   1222c52
  706484:	test   eax,eax
  706486:	je     706a59
  70648c:	lea    ecx,[esi+0x4a81c]
  706492:	mov    ecx,DWORD PTR [ecx]
  706494:	mov    DWORD PTR [esp+0x8],ecx
  706498:	mov    DWORD PTR [esp+0x4],eax
  70649c:	lea    eax,[esp+0x48]
  7064a0:	mov    DWORD PTR [esp],eax
  7064a3:	mov    ebx,esi
  7064a5:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  7064aa:	sub    esp,0x4
  7064ad:	movsd  xmm0,QWORD PTR [esp+0x48]
  7064b3:	movsd  xmm1,QWORD PTR [esp+0x50]
  7064b9:	movsd  QWORD PTR [esp+0xd8],xmm1
  7064c2:	movsd  QWORD PTR [esp+0xd0],xmm0
  7064cb:	mov    ebx,esi
  7064cd:	lea    eax,[ebx+0x4a824]
  7064d3:	mov    eax,DWORD PTR [eax]
  7064d5:	mov    DWORD PTR [esp+0x4],eax
  7064d9:	lea    eax,[esp+0xd0]
  7064e0:	mov    DWORD PTR [esp],eax
  7064e3:	call   447e4e
  7064e8:	mov    esi,ebx
  7064ea:	mov    edi,0x583
  7064ef:	test   al,al
  7064f1:	je     706914
  7064f7:	mov    ebx,esi
  7064f9:	lea    eax,[ebx+0x4a820]
  7064ff:	mov    eax,DWORD PTR [eax]
  706501:	mov    DWORD PTR [esp+0x4],eax
  706505:	lea    eax,[esp+0xd0]
  70650c:	mov    DWORD PTR [esp],eax
  70650f:	call   447f1e
  706514:	test   eax,eax
  706516:	je     70691a
  70651c:	lea    ecx,[ebx+0x45854]
  706522:	mov    DWORD PTR [esp+0x34],ecx
  706526:	mov    ecx,DWORD PTR [ecx]
  706528:	mov    ebx,DWORD PTR [eax]
  70652a:	mov    DWORD PTR [esp+0x40],eax
  70652e:	movzx  edx,WORD PTR [ebx+0xaa]
  706535:	test   edx,edx
  706537:	je     706548
  706539:	mov    esi,DWORD PTR [ebx+0x4c]
  70653c:	xor    edi,edi
  70653e:	cmp    DWORD PTR [esi+edi*8],ecx
  706541:	je     706566
  706543:	inc    edi
  706544:	cmp    edi,edx
  706546:	jb     70653e
  706548:	mov    DWORD PTR [esp+0x4],ecx
  70654c:	mov    edi,DWORD PTR [esp+0x40]
  706550:	mov    DWORD PTR [esp],edi
  706553:	mov    DWORD PTR [esp+0x8],0x0
  70655b:	mov    ebx,DWORD PTR [esp+0x44]
  70655f:	call   1c1964
  706564:	jmp    706579
  706566:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  70656a:	lea    eax,[ebx+eax*8+0xb4]
  706571:	mov    ebx,DWORD PTR [esp+0x44]
  706575:	mov    edi,DWORD PTR [esp+0x40]
  706579:	mov    ecx,DWORD PTR [eax]
  70657b:	mov    eax,DWORD PTR [eax+0x4]
  70657e:	mov    DWORD PTR [esp+0x4],eax
  706582:	mov    DWORD PTR [esp],edi
  706585:	call   ecx
  706587:	mov    esi,eax
  706589:	test   esi,esi
  70658b:	je     706924
  706591:	mov    DWORD PTR [esp+0x40],edi
  706595:	lea    eax,[ebx+0x45858]
  70659b:	mov    eax,DWORD PTR [eax]
  70659d:	mov    ecx,DWORD PTR [esi]
  70659f:	movzx  edx,WORD PTR [ecx+0xaa]
  7065a6:	test   edx,edx
  7065a8:	je     7065b9
  7065aa:	mov    edi,DWORD PTR [ecx+0x4c]
  7065ad:	xor    ebx,ebx
  7065af:	cmp    DWORD PTR [edi+ebx*8],eax
  7065b2:	je     7065d7
  7065b4:	inc    ebx
  7065b5:	cmp    ebx,edx
  7065b7:	jb     7065af
  7065b9:	mov    DWORD PTR [esp+0x4],eax
  7065bd:	mov    DWORD PTR [esp],esi
  7065c0:	mov    DWORD PTR [esp+0x8],0x0
  7065c8:	mov    ebx,DWORD PTR [esp+0x44]
  7065cc:	call   1c1964
  7065d1:	mov    edi,DWORD PTR [esp+0x40]
  7065d5:	jmp    7065ea
  7065d7:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  7065db:	lea    eax,[ecx+eax*8+0xb4]
  7065e2:	mov    ebx,DWORD PTR [esp+0x44]
  7065e6:	mov    edi,DWORD PTR [esp+0x40]
  7065ea:	mov    ecx,DWORD PTR [eax]
  7065ec:	mov    eax,DWORD PTR [eax+0x4]
  7065ef:	mov    DWORD PTR [esp+0x4],eax
  7065f3:	mov    DWORD PTR [esp],esi
  7065f6:	call   ecx
  7065f8:	test   eax,eax
  7065fa:	je     70692e
  706600:	lea    ecx,[ebx+0x57348]  ; literal "comic_cutscene"
  706606:	mov    ecx,DWORD PTR [ecx]
  706608:	mov    DWORD PTR [esp+0x4],ecx
  70660c:	mov    DWORD PTR [esp],eax
  70660f:	mov    DWORD PTR [esp+0x8],0x0
  706617:	call   cb2476  ; System.String::StartsWith
  70661c:	mov    ecx,DWORD PTR [esp+0x34]
  706620:	mov    ecx,DWORD PTR [ecx]
  706622:	mov    edx,DWORD PTR [edi]
  706624:	mov    DWORD PTR [esp+0x40],edi
  706628:	movzx  esi,WORD PTR [edx+0xaa]
  70662f:	test   al,al
  706631:	je     706661
  706633:	test   si,si
  706636:	je     706647
  706638:	mov    eax,DWORD PTR [edx+0x4c]
  70663b:	xor    edi,edi
  70663d:	cmp    DWORD PTR [eax+edi*8],ecx
  706640:	je     706693
  706642:	inc    edi
  706643:	cmp    edi,esi
  706645:	jb     70663d
  706647:	mov    DWORD PTR [esp+0x4],ecx
  70664b:	mov    esi,DWORD PTR [esp+0x40]
  70664f:	mov    DWORD PTR [esp],esi
  706652:	mov    DWORD PTR [esp+0x8],0x1
  70665a:	call   1c1964
  70665f:	jmp    7066a2
  706661:	test   si,si
  706664:	je     706679
  706666:	mov    eax,DWORD PTR [edx+0x4c]
  706669:	xor    edi,edi
  70666b:	cmp    DWORD PTR [eax+edi*8],ecx
  70666e:	je     706700
  706674:	inc    edi
  706675:	cmp    edi,esi
  706677:	jb     70666b
  706679:	mov    DWORD PTR [esp+0x4],ecx
  70667d:	mov    esi,DWORD PTR [esp+0x40]
  706681:	mov    DWORD PTR [esp],esi
  706684:	mov    DWORD PTR [esp+0x8],0x1
  70668c:	call   1c1964
  706691:	jmp    70670f
  706693:	mov    eax,DWORD PTR [eax+edi*8+0x4]
  706697:	lea    eax,[edx+eax*8+0xbc]
  70669e:	mov    esi,DWORD PTR [esp+0x40]
  7066a2:	mov    ecx,DWORD PTR [eax]
  7066a4:	mov    eax,DWORD PTR [eax+0x4]
  7066a7:	mov    DWORD PTR [esp+0x4],eax
  7066ab:	mov    DWORD PTR [esp],esi
  7066ae:	call   ecx
  7066b0:	mov    esi,eax
  7066b2:	test   esi,esi
  7066b4:	je     706942
  7066ba:	lea    eax,[ebx+0x45850]
  7066c0:	mov    eax,DWORD PTR [eax]
  7066c2:	mov    ecx,DWORD PTR [esi]
  7066c4:	movzx  edx,WORD PTR [ecx+0xaa]
  7066cb:	test   edx,edx
  7066cd:	je     7066e2
  7066cf:	mov    edi,DWORD PTR [ecx+0x4c]
  7066d2:	xor    ebx,ebx
  7066d4:	cmp    DWORD PTR [edi+ebx*8],eax
  7066d7:	je     706769
  7066dd:	inc    ebx
  7066de:	cmp    ebx,edx
  7066e0:	jb     7066d4
  7066e2:	mov    DWORD PTR [esp+0x4],eax
  7066e6:	mov    DWORD PTR [esp],esi
  7066e9:	mov    DWORD PTR [esp+0x8],0x7
  7066f1:	mov    ebx,DWORD PTR [esp+0x44]
  7066f5:	call   1c1964
  7066fa:	mov    edi,DWORD PTR [esp+0x40]
  7066fe:	jmp    70677c
  706700:	mov    eax,DWORD PTR [eax+edi*8+0x4]
  706704:	lea    eax,[edx+eax*8+0xbc]
  70670b:	mov    esi,DWORD PTR [esp+0x40]
  70670f:	mov    ecx,DWORD PTR [eax]
  706711:	mov    eax,DWORD PTR [eax+0x4]
  706714:	mov    DWORD PTR [esp+0x4],eax
  706718:	mov    DWORD PTR [esp],esi
  70671b:	call   ecx
  70671d:	mov    esi,eax
  70671f:	test   esi,esi
  706721:	je     70694c
  706727:	lea    eax,[ebx+0x45850]
  70672d:	mov    eax,DWORD PTR [eax]
  70672f:	mov    ecx,DWORD PTR [esi]
  706731:	movzx  edx,WORD PTR [ecx+0xaa]
  706738:	test   edx,edx
  70673a:	je     70674b
  70673c:	mov    edi,DWORD PTR [ecx+0x4c]
  70673f:	xor    ebx,ebx
  706741:	cmp    DWORD PTR [edi+ebx*8],eax
  706744:	je     7067b4
  706746:	inc    ebx
  706747:	cmp    ebx,edx
  706749:	jb     706741
  70674b:	mov    DWORD PTR [esp+0x4],eax
  70674f:	mov    DWORD PTR [esp],esi
  706752:	mov    DWORD PTR [esp+0x8],0x7
  70675a:	mov    ebx,DWORD PTR [esp+0x44]
  70675e:	call   1c1964
  706763:	mov    edi,DWORD PTR [esp+0x40]
  706767:	jmp    7067c7
  706769:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  70676d:	lea    eax,[ecx+eax*8+0xec]
  706774:	mov    ebx,DWORD PTR [esp+0x44]
  706778:	mov    edi,DWORD PTR [esp+0x40]
  70677c:	mov    ecx,DWORD PTR [eax]
  70677e:	mov    eax,DWORD PTR [eax+0x4]
  706781:	mov    DWORD PTR [esp+0x8],eax
  706785:	mov    DWORD PTR [esp],esi
  706788:	mov    DWORD PTR [esp+0x4],0x1
  706790:	call   ecx
  706792:	lea    eax,[ebx+0x5734c]  ; literal "[StoryCutscene]: Cutscene is new!"
  706798:	mov    eax,DWORD PTR [eax]
  70679a:	mov    DWORD PTR [esp+0x4],eax
  70679e:	mov    DWORD PTR [esp+0x8],0x0
  7067a6:	mov    DWORD PTR [esp],0x0
  7067ad:	call   1068c69  ; DebugLog::Log
  7067b2:	jmp    7067dd
  7067b4:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  7067b8:	lea    eax,[ecx+eax*8+0xec]
  7067bf:	mov    ebx,DWORD PTR [esp+0x44]
  7067c3:	mov    edi,DWORD PTR [esp+0x40]
  7067c7:	mov    ecx,DWORD PTR [eax]
  7067c9:	mov    eax,DWORD PTR [eax+0x4]
  7067cc:	mov    DWORD PTR [esp+0x8],eax
  7067d0:	mov    DWORD PTR [esp],esi
  7067d3:	mov    DWORD PTR [esp+0x4],0x0
  7067db:	call   ecx
  7067dd:	mov    eax,DWORD PTR [esp+0x34]
  7067e1:	mov    eax,DWORD PTR [eax]
  7067e3:	mov    ecx,DWORD PTR [edi]
  7067e5:	movzx  edx,WORD PTR [ecx+0xaa]
  7067ec:	test   edx,edx
  7067ee:	je     7067ff
  7067f0:	mov    esi,DWORD PTR [ecx+0x4c]
  7067f3:	xor    edi,edi
  7067f5:	cmp    DWORD PTR [esi+edi*8],eax
  7067f8:	je     706819
  7067fa:	inc    edi
  7067fb:	cmp    edi,edx
  7067fd:	jb     7067f5
  7067ff:	mov    DWORD PTR [esp+0x4],eax
  706803:	mov    esi,DWORD PTR [esp+0x40]
  706807:	mov    DWORD PTR [esp],esi
  70680a:	mov    DWORD PTR [esp+0x8],0x0
  706812:	call   1c1964
  706817:	jmp    706828
  706819:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  70681d:	lea    eax,[ecx+eax*8+0xb4]
  706824:	mov    esi,DWORD PTR [esp+0x40]
  706828:	mov    ecx,DWORD PTR [eax]
  70682a:	mov    eax,DWORD PTR [eax+0x4]
  70682d:	mov    DWORD PTR [esp+0x4],eax
  706831:	mov    DWORD PTR [esp],esi
  706834:	call   ecx
  706836:	mov    esi,eax
  706838:	test   esi,esi
  70683a:	je     706938
  706840:	lea    eax,[ebx+0x45578]
  706846:	mov    eax,DWORD PTR [eax]
  706848:	mov    ecx,DWORD PTR [esi]
  70684a:	movzx  edx,WORD PTR [ecx+0xaa]
  706851:	test   edx,edx
  706853:	je     706864
  706855:	mov    edi,DWORD PTR [ecx+0x4c]
  706858:	xor    ebx,ebx
  70685a:	cmp    DWORD PTR [edi+ebx*8],eax
  70685d:	je     706882
  70685f:	inc    ebx
  706860:	cmp    ebx,edx
  706862:	jb     70685a
  706864:	mov    DWORD PTR [esp+0x4],eax
  706868:	mov    DWORD PTR [esp],esi
  70686b:	mov    DWORD PTR [esp+0x8],0x2
  706873:	mov    ebx,DWORD PTR [esp+0x44]
  706877:	call   1c1964
  70687c:	mov    edi,DWORD PTR [esp+0x40]
  706880:	jmp    706895
  706882:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  706886:	lea    eax,[ecx+eax*8+0xc4]
  70688d:	mov    ebx,DWORD PTR [esp+0x44]
  706891:	mov    edi,DWORD PTR [esp+0x40]
  706895:	mov    ecx,DWORD PTR [eax]
  706897:	mov    eax,DWORD PTR [eax+0x4]
  70689a:	mov    DWORD PTR [esp+0x4],eax
  70689e:	mov    DWORD PTR [esp],esi
  7068a1:	call   ecx
  7068a3:	cmp    eax,0xc
  7068a6:	jne    7064cd
  7068ac:	lea    eax,[ebx+0x45e80]
  7068b2:	mov    eax,DWORD PTR [eax]
  7068b4:	mov    ecx,DWORD PTR [edi]
  7068b6:	movzx  edx,BYTE PTR [eax+0xac]
  7068bd:	movzx  esi,BYTE PTR [ecx+0xac]
  7068c4:	cmp    esi,edx
  7068c6:	jb     7064cd
  7068cc:	mov    ecx,DWORD PTR [ecx+0x58]
  7068cf:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  7068d3:	jne    7064cd
  7068d9:	lea    eax,[ebx+0x4a9d0]
  7068df:	mov    eax,DWORD PTR [eax]
  7068e1:	mov    DWORD PTR [esp+0x4],eax
  7068e5:	mov    DWORD PTR [esp],edi
  7068e8:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  7068ed:	test   eax,eax
  7068ef:	je     7069de
  7068f5:	mov    DWORD PTR [esp],eax
  7068f8:	mov    DWORD PTR [esp+0x8],0x0
  706900:	mov    DWORD PTR [esp+0x4],0x0
  706908:	call   179c1db  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::set_IsNewInShop
  70690d:	jmp    7064cd
  706912:	jmp    706956
  706914:	mov    eax,DWORD PTR [esp+0x38]
  706918:	jmp    706976
  70691a:	call   1fbc48
  70691f:	jmp    706acc
  706924:	call   1fbc48
  706929:	jmp    706ad6
  70692e:	call   1fbc48
  706933:	jmp    706ae0
  706938:	call   1fbc48
  70693d:	jmp    706aea
  706942:	call   1fbc48
  706947:	jmp    706af9
  70694c:	call   1fbc48
  706951:	jmp    706afe
  706956:	cmp    edx,0x1
  706959:	jne    706a67
  70695f:	mov    DWORD PTR [esp],eax
  706962:	call   1ba3f0
  706967:	mov    edi,DWORD PTR [eax]
  706969:	mov    esi,ebx
  70696b:	call   1b9ce0
  706970:	mov    eax,edi
  706972:	mov    edi,DWORD PTR [esp+0x3c]
  706976:	mov    DWORD PTR [esp+0x40],eax
  70697a:	mov    DWORD PTR [esp+0x3c],edi
  70697e:	lea    eax,[esi+0x4a828]
  706984:	mov    eax,DWORD PTR [eax]
  706986:	mov    DWORD PTR [esp+0x4],eax
  70698a:	lea    eax,[esp+0xd0]
  706991:	mov    DWORD PTR [esp],eax
  706994:	mov    ebx,esi
  706996:	call   447df6
  70699b:	mov    eax,DWORD PTR [esp+0x40]
  70699f:	mov    DWORD PTR [esp+0x3c],0x0
  7069a7:	cmp    edi,0x583
  7069ad:	mov    DWORD PTR [esp+0x38],eax
  7069b1:	je     706444
  7069b7:	mov    DWORD PTR [esp+0x38],0x0
  7069bf:	test   eax,eax
  7069c1:	mov    DWORD PTR [esp+0x3c],edi
  7069c5:	je     706444
  7069cb:	mov    DWORD PTR [esp+0x3c],edi
  7069cf:	mov    DWORD PTR [esp],eax
  7069d2:	mov    ebx,esi
  7069d4:	call   1fbb20
  7069d9:	jmp    706444
  7069de:	call   1fbc48
  7069e3:	call   6b106a
  7069e8:	mov    ebx,esi
  7069ea:	mov    esi,DWORD PTR [esp+0x2c]
  7069ee:	mov    ecx,0x1
  7069f3:	cmp    edx,ecx
  7069f5:	jne    706aba
  7069fb:	mov    DWORD PTR [esp],eax
  7069fe:	call   1ba3f0
  706a03:	mov    edi,DWORD PTR [eax]
  706a05:	call   1b9ce0
  706a0a:	lea    eax,[ebx+0x4ac54]
  706a10:	mov    eax,DWORD PTR [eax]
  706a12:	mov    DWORD PTR [esp+0x4],eax
  706a16:	lea    eax,[esp+0xe0]
  706a1d:	mov    DWORD PTR [esp],eax
  706a20:	call   1222b3a
  706a25:	cmp    DWORD PTR [esp+0x3c],0x5a2
  706a2d:	je     706a3b
  706a2f:	test   edi,edi
  706a31:	je     706a3b
  706a33:	mov    DWORD PTR [esp],edi
  706a36:	call   1fbb20
  706a3b:	mov    eax,esi
  706a3d:	lea    esp,[ebp-0xc]
  706a40:	pop    esi
  706a41:	pop    edi
  706a42:	pop    ebx
  706a43:	pop    ebp
  706a44:	ret
  706a45:	mov    DWORD PTR [esp+0x3c],0x5a2
  706a4d:	mov    ebx,esi
  706a4f:	mov    esi,DWORD PTR [esp+0x2c]
  706a53:	mov    edi,DWORD PTR [esp+0x38]
  706a57:	jmp    706a0a
  706a59:	mov    ebx,esi
  706a5b:	call   1fbc48
  706a60:	jmp    706af4
  706a65:	jmp    7069ea
  706a67:	mov    ecx,0x1
  706a6c:	mov    esi,DWORD PTR [esp+0x2c]
  706a70:	jmp    7069f3
  706a72:	mov    DWORD PTR [esp+0x38],0x0
  706a7a:	mov    DWORD PTR [esp+0x3c],0x24e
  706a82:	mov    ebx,DWORD PTR [esp+0x44]
  706a86:	mov    esi,DWORD PTR [ebp+0x8]
  706a89:	jmp    705781
  706a8e:	mov    ebx,DWORD PTR [esp+0x44]
  706a92:	mov    esi,DWORD PTR [ebp+0x8]
  706a95:	call   1fbc48
  706a9a:	call   6b106a
  706a9f:	mov    ebx,DWORD PTR [esp+0x44]
  706aa3:	mov    esi,DWORD PTR [ebp+0x8]
  706aa6:	call   1fbc48
  706aab:	call   6b106a
  706ab0:	call   1fbc48
  706ab5:	call   6b106a
  706aba:	mov    DWORD PTR [esp],eax
  706abd:	call   1b9bd0
  706ac2:	call   6b106a
  706ac7:	call   6b106a
  706acc:	call   6b106a
  706ad1:	call   6b106a
  706ad6:	call   6b106a
  706adb:	call   6b106a
  706ae0:	call   6b106a
  706ae5:	call   6b106a
  706aea:	call   6b106a
  706aef:	call   6b106a
  706af4:	call   6b106a
  706af9:	call   6b106a
  706afe:	call   6b106a
  706b03:	call   6b106a
  706b08:	call   6b106a