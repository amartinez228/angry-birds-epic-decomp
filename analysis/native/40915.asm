
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

004f8af6:
  4f8af6:	push   ebp
  4f8af7:	mov    ebp,esp
  4f8af9:	push   ebx
  4f8afa:	push   edi
  4f8afb:	push   esi
  4f8afc:	and    esp,0xfffffff0
  4f8aff:	sub    esp,0x110
  4f8b05:	call   4f8b0a
  4f8b0a:	pop    ebx
  4f8b0b:	add    ebx,0x1a1943a
  4f8b11:	mov    esi,DWORD PTR [ebp+0xc]
  4f8b14:	mov    al,BYTE PTR [ebx+0x5d4cc]
  4f8b1a:	test   al,al
  4f8b1c:	jne    4f8b35
  4f8b1e:	lea    eax,[ebx-0x66f4c4]
  4f8b24:	mov    eax,DWORD PTR [eax]
  4f8b26:	mov    DWORD PTR [esp],eax
  4f8b29:	call   1ca6e8
  4f8b2e:	mov    BYTE PTR [ebx+0x5d4cc],0x1
  4f8b35:	xorps  xmm0,xmm0
  4f8b38:	movaps XMMWORD PTR [esp+0xf0],xmm0
  4f8b40:	movaps XMMWORD PTR [esp+0xe0],xmm0
  4f8b48:	movaps XMMWORD PTR [esp+0xc0],xmm0
  4f8b50:	mov    DWORD PTR [esp+0xd0],0x0
  4f8b5b:	movaps XMMWORD PTR [esp+0xa0],xmm0
  4f8b63:	mov    DWORD PTR [esp+0xb0],0x0
  4f8b6e:	mov    DWORD PTR [esp+0x9c],0x0
  4f8b79:	test   esi,esi
  4f8b7b:	je     4f9fee
  4f8b81:	mov    eax,DWORD PTR [esi+0x20]
  4f8b84:	mov    DWORD PTR [esp+0x28],eax
  4f8b88:	lea    eax,[ebx+0x45fe4]
  4f8b8e:	mov    eax,DWORD PTR [eax]
  4f8b90:	movzx  edi,BYTE PTR [esi+0x2d]
  4f8b94:	mov    DWORD PTR [esp],eax
  4f8b97:	call   20bfb2
  4f8b9c:	mov    DWORD PTR [esp+0x8],edi
  4f8ba0:	mov    edi,eax
  4f8ba2:	mov    eax,DWORD PTR [esp+0x28]
  4f8ba6:	mov    DWORD PTR [esp+0x4],eax
  4f8baa:	mov    DWORD PTR [esp],edi
  4f8bad:	mov    DWORD PTR [esp+0xc],0x0
  4f8bb5:	call   ec11c6  ; ABH.GameDatas.Battle.BattleGameData::.ctor
  4f8bba:	test   edi,edi
  4f8bbc:	je     4f9fee
  4f8bc2:	mov    eax,DWORD PTR [esi+0x38]
  4f8bc5:	mov    DWORD PTR [esp+0x4],eax
  4f8bc9:	mov    DWORD PTR [esp],edi
  4f8bcc:	mov    DWORD PTR [esp+0x8],0x0
  4f8bd4:	call   ec398b  ; ABH.GameDatas.Battle.BattleGameData::set_InjectedParticipantTable
  4f8bd9:	mov    eax,DWORD PTR [esi+0x10]
  4f8bdc:	mov    DWORD PTR [edi+0x38],eax
  4f8bdf:	test   eax,eax
  4f8be1:	je     4f9fee
  4f8be7:	lea    ecx,[ebx+0x4aee4]
  4f8bed:	mov    ecx,DWORD PTR [ecx]
  4f8bef:	mov    DWORD PTR [esp+0x4],ecx
  4f8bf3:	mov    DWORD PTR [esp],eax
  4f8bf6:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  4f8bfb:	test   eax,eax
  4f8bfd:	setg   al
  4f8c00:	mov    DWORD PTR [esp],edi
  4f8c03:	movzx  eax,al
  4f8c06:	mov    DWORD PTR [esp+0x4],eax
  4f8c0a:	mov    DWORD PTR [esp+0x8],0x0
  4f8c12:	call   ec1856  ; ABH.GameDatas.Battle.BattleGameData::set_IsPvP
  4f8c17:	mov    esi,DWORD PTR [edi+0x14]
  4f8c1a:	mov    DWORD PTR [esp],edi
  4f8c1d:	mov    DWORD PTR [esp+0x4],0x0
  4f8c25:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  4f8c2a:	test   esi,esi
  4f8c2c:	je     4f9fee
  4f8c32:	mov    BYTE PTR [esi+0x4d],al
  4f8c35:	mov    esi,DWORD PTR [ebp+0xc]
  4f8c38:	mov    eax,DWORD PTR [esi+0x20]
  4f8c3b:	test   eax,eax
  4f8c3d:	je     4f9fee
  4f8c43:	lea    ecx,[ebx+0x574b0]  ; literal "boss"
  4f8c49:	mov    ecx,DWORD PTR [ecx]
  4f8c4b:	mov    DWORD PTR [esp+0x4],ecx
  4f8c4f:	mov    DWORD PTR [esp],eax
  4f8c52:	mov    DWORD PTR [esp+0x8],0x0
  4f8c5a:	call   cbedc0  ; System.String::Contains
  4f8c5f:	movzx  eax,al
  4f8c62:	mov    DWORD PTR [esp+0x4],eax
  4f8c66:	mov    DWORD PTR [esp],edi
  4f8c69:	mov    DWORD PTR [esp+0x8],0x0
  4f8c71:	call   ec1880  ; ABH.GameDatas.Battle.BattleGameData::set_IsBossBattle
  4f8c76:	movzx  eax,BYTE PTR [esi+0x4c]
  4f8c7a:	mov    DWORD PTR [esp+0x4],eax
  4f8c7e:	mov    DWORD PTR [esp],edi
  4f8c81:	mov    DWORD PTR [esp+0x8],0x0
  4f8c89:	call   ec18aa  ; ABH.GameDatas.Battle.BattleGameData::set_IsHardMode
  4f8c8e:	mov    eax,DWORD PTR [edi+0x14]
  4f8c91:	test   eax,eax
  4f8c93:	je     4f9fee
  4f8c99:	mov    cl,BYTE PTR [esi+0x4d]
  4f8c9c:	mov    BYTE PTR [eax+0x4c],cl
  4f8c9f:	movzx  eax,BYTE PTR [esi+0x4d]
  4f8ca3:	mov    DWORD PTR [esp+0x4],eax
  4f8ca7:	mov    DWORD PTR [esp],edi
  4f8caa:	mov    DWORD PTR [esp+0x8],0x0
  4f8cb2:	call   ec18d4  ; ABH.GameDatas.Battle.BattleGameData::set_IsDungeon
  4f8cb7:	movzx  eax,BYTE PTR [esi+0x4e]
  4f8cbb:	mov    DWORD PTR [esp+0x4],eax
  4f8cbf:	mov    DWORD PTR [esp],edi
  4f8cc2:	mov    DWORD PTR [esp+0x8],0x0
  4f8cca:	call   ec18fe  ; ABH.GameDatas.Battle.BattleGameData::set_IsChronicleCave
  4f8ccf:	mov    DWORD PTR [esp],edi
  4f8cd2:	mov    DWORD PTR [esp+0x4],0x0
  4f8cda:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  4f8cdf:	test   al,al
  4f8ce1:	je     4f95b2
  4f8ce7:	mov    eax,DWORD PTR [esi+0x14]
  4f8cea:	test   eax,eax
  4f8cec:	je     4f8d3b
  4f8cee:	mov    DWORD PTR [esp],eax
  4f8cf1:	mov    DWORD PTR [esp+0x8],0x0
  4f8cf9:	mov    DWORD PTR [esp+0x4],0x0
  4f8d01:	call   eabe95  ; ABH.GameDatas.BannerGameData::SetFaction
  4f8d06:	mov    DWORD PTR [esp+0x28],eax
  4f8d0a:	lea    eax,[ebx+0x45fe8]
  4f8d10:	mov    eax,DWORD PTR [eax]
  4f8d12:	mov    DWORD PTR [esp],eax
  4f8d15:	call   20bfb2
  4f8d1a:	mov    esi,edi
  4f8d1c:	mov    edi,eax
  4f8d1e:	mov    eax,DWORD PTR [esp+0x28]
  4f8d22:	mov    DWORD PTR [esp+0x4],eax
  4f8d26:	mov    DWORD PTR [esp],edi
  4f8d29:	mov    DWORD PTR [esp+0x8],0x0
  4f8d31:	call   ebc0fc  ; ABH.GameDatas.Battle.BannerCombatant::.ctor
  4f8d36:	mov    DWORD PTR [esi+0x48],edi
  4f8d39:	mov    edi,esi
  4f8d3b:	mov    eax,DWORD PTR [ebp+0xc]
  4f8d3e:	mov    eax,DWORD PTR [eax+0x18]
  4f8d41:	test   eax,eax
  4f8d43:	je     4f8d92
  4f8d45:	mov    DWORD PTR [esp],eax
  4f8d48:	mov    DWORD PTR [esp+0x8],0x0
  4f8d50:	mov    DWORD PTR [esp+0x4],0x1
  4f8d58:	call   eabe95  ; ABH.GameDatas.BannerGameData::SetFaction
  4f8d5d:	mov    DWORD PTR [esp+0x28],eax
  4f8d61:	lea    eax,[ebx+0x45fe8]
  4f8d67:	mov    eax,DWORD PTR [eax]
  4f8d69:	mov    DWORD PTR [esp],eax
  4f8d6c:	call   20bfb2
  4f8d71:	mov    esi,edi
  4f8d73:	mov    edi,eax
  4f8d75:	mov    eax,DWORD PTR [esp+0x28]
  4f8d79:	mov    DWORD PTR [esp+0x4],eax
  4f8d7d:	mov    DWORD PTR [esp],edi
  4f8d80:	mov    DWORD PTR [esp+0x8],0x0
  4f8d88:	call   ebc0fc  ; ABH.GameDatas.Battle.BannerCombatant::.ctor
  4f8d8d:	mov    DWORD PTR [esi+0x4c],edi
  4f8d90:	mov    edi,esi
  4f8d92:	lea    eax,[ebx+0x4584c]
  4f8d98:	mov    eax,DWORD PTR [eax]
  4f8d9a:	test   BYTE PTR [eax+0xb2],0x1
  4f8da1:	je     4f8db1
  4f8da3:	cmp    DWORD PTR [eax+0x60],0x0
  4f8da7:	jne    4f8db1
  4f8da9:	mov    DWORD PTR [esp],eax
  4f8dac:	call   1db0b8
  4f8db1:	mov    DWORD PTR [esp+0x4],0x0
  4f8db9:	mov    DWORD PTR [esp],0x0
  4f8dc0:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  4f8dc5:	test   eax,eax
  4f8dc7:	je     4f9fee
  4f8dcd:	lea    esi,[ebx+0x4a210]
  4f8dd3:	mov    ecx,DWORD PTR [esi]
  4f8dd5:	mov    DWORD PTR [esp+0x4],ecx
  4f8dd9:	mov    DWORD PTR [esp],eax
  4f8ddc:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  4f8de1:	test   eax,eax
  4f8de3:	je     4f9fee
  4f8de9:	mov    DWORD PTR [esp],eax
  4f8dec:	mov    DWORD PTR [esp+0x4],0x0
  4f8df4:	call   179d884  ; ABH.Shared.Models.PlayerData::get_CoinFlipLoseChance
  4f8df9:	fstp   DWORD PTR [esp+0x44]
  4f8dfd:	movss  xmm0,DWORD PTR [esp+0x44]
  4f8e03:	movss  DWORD PTR [esp+0x28],xmm0
  4f8e09:	mov    WORD PTR [edi+0x35],0x0
  4f8e0f:	mov    DWORD PTR [esp+0x4],0x0
  4f8e17:	mov    DWORD PTR [esp],0x0
  4f8e1e:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  4f8e23:	test   eax,eax
  4f8e25:	je     4f9fee
  4f8e2b:	mov    ecx,DWORD PTR [esi]
  4f8e2d:	mov    DWORD PTR [esp+0x4],ecx
  4f8e31:	mov    DWORD PTR [esp],eax
  4f8e34:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  4f8e39:	test   eax,eax
  4f8e3b:	je     4f9fee
  4f8e41:	mov    DWORD PTR [esp],eax
  4f8e44:	mov    DWORD PTR [esp+0x4],0x0
  4f8e4c:	call   179d809  ; ABH.Shared.Models.PlayerData::get_PvPTutorialDisplayState
  4f8e51:	cmp    eax,0x1
  4f8e54:	jne    4f8e5f
  4f8e56:	mov    BYTE PTR [edi+0x34],0x0
  4f8e5a:	jmp    4f914a
  4f8e5f:	mov    DWORD PTR [esp+0x4],0x0
  4f8e67:	mov    DWORD PTR [esp],0x0
  4f8e6e:	call   167eb9e  ; UnityEngine.Random::get_value
  4f8e73:	fstp   DWORD PTR [esp+0x40]
  4f8e77:	movss  xmm0,DWORD PTR [esp+0x28]
  4f8e7d:	ucomiss xmm0,DWORD PTR [esp+0x40]
  4f8e82:	setae  BYTE PTR [edi+0x34]
  4f8e86:	jb     4f914a
  4f8e8c:	mov    DWORD PTR [esp+0x2c],edi
  4f8e90:	mov    eax,DWORD PTR [ebp+0xc]
  4f8e93:	mov    eax,DWORD PTR [eax+0xc]
  4f8e96:	test   eax,eax
  4f8e98:	je     4f9fee
  4f8e9e:	lea    ecx,[ebx+0x4a92c]
  4f8ea4:	mov    ecx,DWORD PTR [ecx]
  4f8ea6:	mov    DWORD PTR [esp+0x8],ecx
  4f8eaa:	mov    DWORD PTR [esp+0x4],eax
  4f8eae:	lea    eax,[esp+0x88]
  4f8eb5:	mov    DWORD PTR [esp],eax
  4f8eb8:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  4f8ebd:	sub    esp,0x4
  4f8ec0:	movsd  xmm0,QWORD PTR [esp+0x88]
  4f8ec9:	movsd  xmm1,QWORD PTR [esp+0x90]
  4f8ed2:	movsd  QWORD PTR [esp+0xf8],xmm1
  4f8edb:	movsd  QWORD PTR [esp+0xf0],xmm0
  4f8ee4:	lea    eax,[ebx+0x4a934]
  4f8eea:	mov    DWORD PTR [esp+0x28],eax
  4f8eee:	mov    esi,ebx
  4f8ef0:	mov    eax,DWORD PTR [esp+0x28]
  4f8ef4:	mov    eax,DWORD PTR [eax]
  4f8ef6:	mov    DWORD PTR [esp+0x4],eax
  4f8efa:	lea    eax,[esp+0xf0]
  4f8f01:	mov    DWORD PTR [esp],eax
  4f8f04:	mov    ebx,esi
  4f8f06:	call   447e4e
  4f8f0b:	test   al,al
  4f8f0d:	je     4f9130
  4f8f13:	lea    eax,[esi+0x4a930]
  4f8f19:	mov    eax,DWORD PTR [eax]
  4f8f1b:	mov    DWORD PTR [esp+0x4],eax
  4f8f1f:	lea    eax,[esp+0xf0]
  4f8f26:	mov    DWORD PTR [esp],eax
  4f8f29:	mov    ebx,esi
  4f8f2b:	call   447f1e
  4f8f30:	mov    edi,eax
  4f8f32:	test   edi,edi
  4f8f34:	je     4f9485
  4f8f3a:	mov    DWORD PTR [esp],edi
  4f8f3d:	mov    DWORD PTR [esp+0x4],0x0
  4f8f45:	mov    ebx,esi
  4f8f47:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  4f8f4c:	test   eax,eax
  4f8f4e:	je     4f9491
  4f8f54:	mov    DWORD PTR [esp],eax
  4f8f57:	mov    DWORD PTR [esp+0x4],0x0
  4f8f5f:	mov    ebx,esi
  4f8f61:	call   6d4724  ; ABH.GameDatas.EquipmentGameData::get_SetItemSkill
  4f8f66:	test   eax,eax
  4f8f68:	je     4f8ef0
  4f8f6a:	mov    DWORD PTR [esp],edi
  4f8f6d:	mov    DWORD PTR [esp+0x4],0x0
  4f8f75:	mov    ebx,esi
  4f8f77:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  4f8f7c:	test   eax,eax
  4f8f7e:	je     4f94ad
  4f8f84:	mov    DWORD PTR [esp],eax
  4f8f87:	mov    DWORD PTR [esp+0x4],0x0
  4f8f8f:	mov    ebx,esi
  4f8f91:	call   6d4724  ; ABH.GameDatas.EquipmentGameData::get_SetItemSkill
  4f8f96:	test   eax,eax
  4f8f98:	je     4f94b9
  4f8f9e:	mov    DWORD PTR [esp],eax
  4f8fa1:	mov    DWORD PTR [esp+0x4],0x0
  4f8fa9:	mov    ebx,esi
  4f8fab:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  4f8fb0:	test   eax,eax
  4f8fb2:	je     4f94c5
  4f8fb8:	mov    DWORD PTR [esp],eax
  4f8fbb:	mov    DWORD PTR [esp+0x4],0x0
  4f8fc3:	mov    ebx,esi
  4f8fc5:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  4f8fca:	lea    ecx,[esi+0x430e4]
  4f8fd0:	mov    ecx,DWORD PTR [ecx]
  4f8fd2:	test   BYTE PTR [ecx+0xb2],0x1
  4f8fd9:	je     4f8ff3
  4f8fdb:	cmp    DWORD PTR [ecx+0x60],0x0
  4f8fdf:	jne    4f8ff3
  4f8fe1:	mov    DWORD PTR [esp],ecx
  4f8fe4:	mov    ebx,esi
  4f8fe6:	mov    DWORD PTR [esp+0x24],eax
  4f8fea:	call   1db0b8
  4f8fef:	mov    eax,DWORD PTR [esp+0x24]
  4f8ff3:	lea    ecx,[esi+0x574b4]
  4f8ff9:	mov    ecx,DWORD PTR [ecx]
  4f8ffb:	mov    DWORD PTR [esp+0x8],ecx
  4f8fff:	mov    DWORD PTR [esp+0x4],eax
  4f9003:	mov    DWORD PTR [esp+0xc],0x0
  4f900b:	mov    DWORD PTR [esp],0x0
  4f9012:	mov    ebx,esi
  4f9014:	call   ca24cf  ; System.String::op_Equality
  4f9019:	test   al,al
  4f901b:	je     4f8ef0
  4f9021:	mov    DWORD PTR [esp],edi
  4f9024:	mov    DWORD PTR [esp+0x4],0x0
  4f902c:	mov    ebx,esi
  4f902e:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  4f9033:	test   eax,eax
  4f9035:	je     4f952e
  4f903b:	mov    DWORD PTR [esp+0x4],edi
  4f903f:	mov    DWORD PTR [esp],eax
  4f9042:	mov    DWORD PTR [esp+0x8],0x0
  4f904a:	mov    ebx,esi
  4f904c:	call   6d65d5  ; ABH.GameDatas.EquipmentGameData::IsSetCompleted
  4f9051:	test   al,al
  4f9053:	je     4f8ef0
  4f9059:	mov    DWORD PTR [esp+0xc],0x0
  4f9061:	mov    DWORD PTR [esp+0x8],0x64
  4f9069:	mov    DWORD PTR [esp+0x4],0x0
  4f9071:	mov    DWORD PTR [esp],0x0
  4f9078:	mov    ebx,esi
  4f907a:	call   167eb06  ; UnityEngine.Random::Range
  4f907f:	mov    DWORD PTR [esp+0x24],eax
  4f9083:	mov    DWORD PTR [esp],edi
  4f9086:	mov    DWORD PTR [esp+0x4],0x0
  4f908e:	mov    ebx,esi
  4f9090:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  4f9095:	test   eax,eax
  4f9097:	je     4f953a
  4f909d:	mov    DWORD PTR [esp],eax
  4f90a0:	mov    DWORD PTR [esp+0x4],0x0
  4f90a8:	mov    ebx,esi
  4f90aa:	call   6d4724  ; ABH.GameDatas.EquipmentGameData::get_SetItemSkill
  4f90af:	test   eax,eax
  4f90b1:	je     4f9546
  4f90b7:	mov    DWORD PTR [esp],eax
  4f90ba:	mov    DWORD PTR [esp+0x4],0x0
  4f90c2:	mov    ebx,esi
  4f90c4:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  4f90c9:	test   eax,eax
  4f90cb:	je     4f9552
  4f90d1:	mov    DWORD PTR [esp],eax
  4f90d4:	mov    DWORD PTR [esp+0x4],0x0
  4f90dc:	mov    ebx,esi
  4f90de:	call   170312a  ; ABH.Shared.BalancingData.SkillBalancingData::get_SkillParameters
  4f90e3:	test   eax,eax
  4f90e5:	je     4f955e
  4f90eb:	lea    ecx,[esi+0x56db4]
  4f90f1:	mov    ecx,DWORD PTR [ecx]
  4f90f3:	lea    edx,[esi+0x4a0a8]
  4f90f9:	mov    edx,DWORD PTR [edx]
  4f90fb:	mov    DWORD PTR [esp+0x8],edx
  4f90ff:	mov    DWORD PTR [esp+0x4],ecx
  4f9103:	mov    DWORD PTR [esp],eax
  4f9106:	mov    ebx,esi
  4f9108:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  4f910d:	fstp   DWORD PTR [esp+0x3c]
  4f9111:	movss  xmm0,DWORD PTR [esp+0x3c]
  4f9117:	cvtsi2ss xmm1,DWORD PTR [esp+0x24]
  4f911d:	ucomiss xmm0,xmm1
  4f9120:	jb     4f8ef0
  4f9126:	mov    eax,DWORD PTR [esp+0x2c]
  4f912a:	mov    WORD PTR [eax+0x34],0x100
  4f9130:	mov    ebx,esi
  4f9132:	lea    eax,[ebx+0x4a938]
  4f9138:	mov    eax,DWORD PTR [eax]
  4f913a:	mov    DWORD PTR [esp+0x4],eax
  4f913e:	lea    eax,[esp+0xf0]
  4f9145:	jmp    4f940f
  4f914a:	mov    DWORD PTR [esp+0x2c],edi
  4f914e:	mov    eax,DWORD PTR [ebp+0xc]
  4f9151:	mov    eax,DWORD PTR [eax+0x10]
  4f9154:	test   eax,eax
  4f9156:	je     4f9fee
  4f915c:	lea    ecx,[ebx+0x4a92c]
  4f9162:	mov    ecx,DWORD PTR [ecx]
  4f9164:	mov    DWORD PTR [esp+0x8],ecx
  4f9168:	mov    DWORD PTR [esp+0x4],eax
  4f916c:	lea    eax,[esp+0x78]
  4f9170:	mov    DWORD PTR [esp],eax
  4f9173:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  4f9178:	sub    esp,0x4
  4f917b:	movsd  xmm0,QWORD PTR [esp+0x78]
  4f9181:	movsd  xmm1,QWORD PTR [esp+0x80]
  4f918a:	movsd  QWORD PTR [esp+0xe8],xmm1
  4f9193:	movsd  QWORD PTR [esp+0xe0],xmm0
  4f919c:	lea    eax,[ebx+0x4a934]
  4f91a2:	mov    DWORD PTR [esp+0x28],eax
  4f91a6:	mov    esi,ebx
  4f91a8:	mov    eax,DWORD PTR [esp+0x28]
  4f91ac:	mov    eax,DWORD PTR [eax]
  4f91ae:	mov    DWORD PTR [esp+0x4],eax
  4f91b2:	lea    eax,[esp+0xe0]
  4f91b9:	mov    DWORD PTR [esp],eax
  4f91bc:	mov    ebx,esi
  4f91be:	call   447e4e
  4f91c3:	test   al,al
  4f91c5:	je     4f93fa
  4f91cb:	lea    eax,[esi+0x4a930]
  4f91d1:	mov    eax,DWORD PTR [eax]
  4f91d3:	mov    DWORD PTR [esp+0x4],eax
  4f91d7:	lea    eax,[esp+0xe0]
  4f91de:	mov    DWORD PTR [esp],eax
  4f91e1:	mov    ebx,esi
  4f91e3:	call   447f1e
  4f91e8:	mov    edi,eax
  4f91ea:	test   edi,edi
  4f91ec:	je     4f9435
  4f91f2:	mov    DWORD PTR [esp],edi
  4f91f5:	mov    DWORD PTR [esp+0x4],0x0
  4f91fd:	mov    ebx,esi
  4f91ff:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  4f9204:	test   eax,eax
  4f9206:	je     4f9445
  4f920c:	mov    DWORD PTR [esp],eax
  4f920f:	mov    DWORD PTR [esp+0x4],0x0
  4f9217:	mov    ebx,esi
  4f9219:	call   6d4724  ; ABH.GameDatas.EquipmentGameData::get_SetItemSkill
  4f921e:	test   eax,eax
  4f9220:	je     4f91a8
  4f9222:	mov    DWORD PTR [esp],edi
  4f9225:	mov    DWORD PTR [esp+0x4],0x0
  4f922d:	mov    ebx,esi
  4f922f:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  4f9234:	test   eax,eax
  4f9236:	je     4f9455
  4f923c:	mov    DWORD PTR [esp],eax
  4f923f:	mov    DWORD PTR [esp+0x4],0x0
  4f9247:	mov    ebx,esi
  4f9249:	call   6d4724  ; ABH.GameDatas.EquipmentGameData::get_SetItemSkill
  4f924e:	test   eax,eax
  4f9250:	je     4f9465
  4f9256:	mov    DWORD PTR [esp],eax
  4f9259:	mov    DWORD PTR [esp+0x4],0x0
  4f9261:	mov    ebx,esi
  4f9263:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  4f9268:	test   eax,eax
  4f926a:	je     4f9475
  4f9270:	mov    DWORD PTR [esp],eax
  4f9273:	mov    DWORD PTR [esp+0x4],0x0
  4f927b:	mov    ebx,esi
  4f927d:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  4f9282:	lea    ecx,[esi+0x430e4]
  4f9288:	mov    ecx,DWORD PTR [ecx]
  4f928a:	test   BYTE PTR [ecx+0xb2],0x1
  4f9291:	je     4f92ab
  4f9293:	cmp    DWORD PTR [ecx+0x60],0x0
  4f9297:	jne    4f92ab
  4f9299:	mov    DWORD PTR [esp],ecx
  4f929c:	mov    ebx,esi
  4f929e:	mov    DWORD PTR [esp+0x24],eax
  4f92a2:	call   1db0b8
  4f92a7:	mov    eax,DWORD PTR [esp+0x24]
  4f92ab:	lea    ecx,[esi+0x574b4]
  4f92b1:	mov    ecx,DWORD PTR [ecx]
  4f92b3:	mov    DWORD PTR [esp+0x8],ecx
  4f92b7:	mov    DWORD PTR [esp+0x4],eax
  4f92bb:	mov    DWORD PTR [esp+0xc],0x0
  4f92c3:	mov    DWORD PTR [esp],0x0
  4f92ca:	mov    ebx,esi
  4f92cc:	call   ca24cf  ; System.String::op_Equality
  4f92d1:	test   al,al
  4f92d3:	je     4f91a8
  4f92d9:	mov    DWORD PTR [esp],edi
  4f92dc:	mov    DWORD PTR [esp+0x4],0x0
  4f92e4:	mov    ebx,esi
  4f92e6:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  4f92eb:	test   eax,eax
  4f92ed:	je     4f949d
  4f92f3:	mov    DWORD PTR [esp+0x4],edi
  4f92f7:	mov    DWORD PTR [esp],eax
  4f92fa:	mov    DWORD PTR [esp+0x8],0x0
  4f9302:	mov    ebx,esi
  4f9304:	call   6d65d5  ; ABH.GameDatas.EquipmentGameData::IsSetCompleted
  4f9309:	test   al,al
  4f930b:	je     4f91a8
  4f9311:	mov    DWORD PTR [esp+0xc],0x0
  4f9319:	mov    DWORD PTR [esp+0x8],0x64
  4f9321:	mov    DWORD PTR [esp+0x4],0x0
  4f9329:	mov    DWORD PTR [esp],0x0
  4f9330:	mov    ebx,esi
  4f9332:	call   167eb06  ; UnityEngine.Random::Range
  4f9337:	mov    DWORD PTR [esp+0x24],eax
  4f933b:	mov    DWORD PTR [esp],edi
  4f933e:	mov    DWORD PTR [esp+0x4],0x0
  4f9346:	mov    ebx,esi
  4f9348:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  4f934d:	test   eax,eax
  4f934f:	mov    edi,DWORD PTR [esp+0x2c]
  4f9353:	je     4f94d1
  4f9359:	mov    DWORD PTR [esp],eax
  4f935c:	mov    DWORD PTR [esp+0x4],0x0
  4f9364:	mov    ebx,esi
  4f9366:	call   6d4724  ; ABH.GameDatas.EquipmentGameData::get_SetItemSkill
  4f936b:	test   eax,eax
  4f936d:	mov    edi,DWORD PTR [esp+0x2c]
  4f9371:	je     4f94dd
  4f9377:	mov    DWORD PTR [esp],eax
  4f937a:	mov    DWORD PTR [esp+0x4],0x0
  4f9382:	mov    ebx,esi
  4f9384:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  4f9389:	test   eax,eax
  4f938b:	mov    edi,DWORD PTR [esp+0x2c]
  4f938f:	je     4f94e9
  4f9395:	mov    DWORD PTR [esp],eax
  4f9398:	mov    DWORD PTR [esp+0x4],0x0
  4f93a0:	mov    ebx,esi
  4f93a2:	call   170312a  ; ABH.Shared.BalancingData.SkillBalancingData::get_SkillParameters
  4f93a7:	test   eax,eax
  4f93a9:	mov    edi,DWORD PTR [esp+0x2c]
  4f93ad:	je     4f94f5
  4f93b3:	lea    ecx,[esi+0x56db4]
  4f93b9:	mov    ecx,DWORD PTR [ecx]
  4f93bb:	lea    edx,[esi+0x4a0a8]
  4f93c1:	mov    edx,DWORD PTR [edx]
  4f93c3:	mov    DWORD PTR [esp+0x8],edx
  4f93c7:	mov    DWORD PTR [esp+0x4],ecx
  4f93cb:	mov    DWORD PTR [esp],eax
  4f93ce:	mov    ebx,esi
  4f93d0:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  4f93d5:	fstp   DWORD PTR [esp+0x38]
  4f93d9:	movss  xmm0,DWORD PTR [esp+0x38]
  4f93df:	cvtsi2ss xmm1,DWORD PTR [esp+0x24]
  4f93e5:	ucomiss xmm0,xmm1
  4f93e8:	jb     4f91a8
  4f93ee:	mov    eax,DWORD PTR [esp+0x2c]
  4f93f2:	mov    BYTE PTR [eax+0x36],0x1
  4f93f6:	mov    BYTE PTR [eax+0x34],0x1
  4f93fa:	mov    ebx,esi
  4f93fc:	lea    eax,[ebx+0x4a938]
  4f9402:	mov    eax,DWORD PTR [eax]
  4f9404:	mov    DWORD PTR [esp+0x4],eax
  4f9408:	lea    eax,[esp+0xe0]
  4f940f:	mov    DWORD PTR [esp],eax
  4f9412:	call   447df6
  4f9417:	mov    edi,DWORD PTR [esp+0x2c]
  4f941b:	mov    esi,DWORD PTR [ebp+0xc]
  4f941e:	jmp    4f95b2
  4f9423:	mov    ebx,esi
  4f9425:	mov    edi,DWORD PTR [esp+0x2c]
  4f9429:	jmp    4f9501
  4f942e:	mov    ebx,esi
  4f9430:	jmp    4f956a
  4f9435:	mov    ebx,esi
  4f9437:	mov    edi,DWORD PTR [esp+0x2c]
  4f943b:	call   1fbc48
  4f9440:	call   540b98
  4f9445:	mov    ebx,esi
  4f9447:	mov    edi,DWORD PTR [esp+0x2c]
  4f944b:	call   1fbc48
  4f9450:	call   540b98
  4f9455:	mov    ebx,esi
  4f9457:	mov    edi,DWORD PTR [esp+0x2c]
  4f945b:	call   1fbc48
  4f9460:	call   540b98
  4f9465:	mov    ebx,esi
  4f9467:	mov    edi,DWORD PTR [esp+0x2c]
  4f946b:	call   1fbc48
  4f9470:	call   540b98
  4f9475:	mov    ebx,esi
  4f9477:	mov    edi,DWORD PTR [esp+0x2c]
  4f947b:	call   1fbc48
  4f9480:	call   540b98
  4f9485:	mov    ebx,esi
  4f9487:	call   1fbc48
  4f948c:	call   540b98
  4f9491:	mov    ebx,esi
  4f9493:	call   1fbc48
  4f9498:	call   540b98
  4f949d:	mov    ebx,esi
  4f949f:	mov    edi,DWORD PTR [esp+0x2c]
  4f94a3:	call   1fbc48
  4f94a8:	call   540b98
  4f94ad:	mov    ebx,esi
  4f94af:	call   1fbc48
  4f94b4:	call   540b98
  4f94b9:	mov    ebx,esi
  4f94bb:	call   1fbc48
  4f94c0:	call   540b98
  4f94c5:	mov    ebx,esi
  4f94c7:	call   1fbc48
  4f94cc:	call   540b98
  4f94d1:	mov    ebx,esi
  4f94d3:	call   1fbc48
  4f94d8:	call   540b98
  4f94dd:	mov    ebx,esi
  4f94df:	call   1fbc48
  4f94e4:	call   540b98
  4f94e9:	mov    ebx,esi
  4f94eb:	call   1fbc48
  4f94f0:	call   540b98
  4f94f5:	mov    ebx,esi
  4f94f7:	call   1fbc48
  4f94fc:	jmp    4fa00a
  4f9501:	cmp    edx,0x1
  4f9504:	jne    4f9ff8
  4f950a:	mov    DWORD PTR [esp],eax
  4f950d:	call   1ba3f0
  4f9512:	mov    esi,DWORD PTR [eax]
  4f9514:	call   1b9ce0
  4f9519:	lea    eax,[ebx+0x4a938]
  4f951f:	mov    eax,DWORD PTR [eax]
  4f9521:	mov    DWORD PTR [esp+0x4],eax
  4f9525:	lea    eax,[esp+0xe0]
  4f952c:	jmp    4f9599
  4f952e:	mov    ebx,esi
  4f9530:	call   1fbc48
  4f9535:	call   540b98
  4f953a:	mov    ebx,esi
  4f953c:	call   1fbc48
  4f9541:	call   540b98
  4f9546:	mov    ebx,esi
  4f9548:	call   1fbc48
  4f954d:	call   540b98
  4f9552:	mov    ebx,esi
  4f9554:	call   1fbc48
  4f9559:	call   540b98
  4f955e:	mov    ebx,esi
  4f9560:	call   1fbc48
  4f9565:	jmp    4fa00f
  4f956a:	mov    edi,DWORD PTR [esp+0x2c]
  4f956e:	cmp    edx,0x1
  4f9571:	jne    4f9ff8
  4f9577:	mov    DWORD PTR [esp],eax
  4f957a:	call   1ba3f0
  4f957f:	mov    esi,DWORD PTR [eax]
  4f9581:	call   1b9ce0
  4f9586:	lea    eax,[ebx+0x4a938]
  4f958c:	mov    eax,DWORD PTR [eax]
  4f958e:	mov    DWORD PTR [esp+0x4],eax
  4f9592:	lea    eax,[esp+0xf0]
  4f9599:	mov    DWORD PTR [esp],eax
  4f959c:	call   447df6
  4f95a1:	mov    eax,esi
  4f95a3:	test   eax,eax
  4f95a5:	mov    esi,DWORD PTR [ebp+0xc]
  4f95a8:	je     4f95b2
  4f95aa:	mov    DWORD PTR [esp],eax
  4f95ad:	call   1fbb20
  4f95b2:	mov    eax,DWORD PTR [esi+0x28]
  4f95b5:	mov    DWORD PTR [edi+0xf8],eax
  4f95bb:	mov    eax,DWORD PTR [esi+0xc]
  4f95be:	mov    DWORD PTR [esp+0x8],edi
  4f95c2:	mov    DWORD PTR [esp+0x4],eax
  4f95c6:	call   4fa014  ; ABH.Services.Logic.BattleService::GetBirdCombatants
  4f95cb:	mov    DWORD PTR [edi+0x50],eax
  4f95ce:	mov    ecx,DWORD PTR [edi+0x48]
  4f95d1:	test   ecx,ecx
  4f95d3:	je     4f95f5
  4f95d5:	test   eax,eax
  4f95d7:	je     4f9fee
  4f95dd:	lea    edx,[ebx+0x4a078]
  4f95e3:	mov    edx,DWORD PTR [edx]
  4f95e5:	mov    DWORD PTR [esp+0x8],edx
  4f95e9:	mov    DWORD PTR [esp+0x4],ecx
  4f95ed:	mov    DWORD PTR [esp],eax
  4f95f0:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  4f95f5:	mov    eax,DWORD PTR [edi+0x68]
  4f95f8:	test   eax,eax
  4f95fa:	je     4f9fee
  4f9600:	mov    ecx,DWORD PTR [edi+0x50]
  4f9603:	lea    edx,[ebx+0x4a4fc]
  4f9609:	mov    edx,DWORD PTR [edx]
  4f960b:	mov    DWORD PTR [esp+0xc],edx
  4f960f:	mov    DWORD PTR [esp+0x8],ecx
  4f9613:	mov    DWORD PTR [esp],eax
  4f9616:	mov    DWORD PTR [esp+0x4],0x0
  4f961e:	call   12438b3  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, ABH.GameDatas.SkillGameData>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::Add | +1 other aliases
  4f9623:	mov    eax,DWORD PTR [esi+0x1c]
  4f9626:	mov    DWORD PTR [edi+0x78],eax
  4f9629:	mov    eax,DWORD PTR [esi+0x30]
  4f962c:	mov    DWORD PTR [edi+0x7c],eax
  4f962f:	mov    eax,DWORD PTR [esi+0x24]
  4f9632:	mov    DWORD PTR [edi+0x10],eax
  4f9635:	mov    eax,DWORD PTR [esi+0x48]
  4f9638:	mov    DWORD PTR [edi+0xa0],eax
  4f963e:	mov    esi,DWORD PTR [esi+0x44]
  4f9641:	lea    eax,[ebx+0x430e4]
  4f9647:	mov    DWORD PTR [esp+0x20],eax
  4f964b:	mov    eax,DWORD PTR [eax]
  4f964d:	test   BYTE PTR [eax+0xb2],0x1
  4f9654:	je     4f9664
  4f9656:	cmp    DWORD PTR [eax+0x60],0x0
  4f965a:	jne    4f9664
  4f965c:	mov    DWORD PTR [esp],eax
  4f965f:	call   1db0b8
  4f9664:	mov    DWORD PTR [esp+0x4],esi
  4f9668:	mov    DWORD PTR [esp+0x8],0x0
  4f9670:	mov    DWORD PTR [esp],0x0
  4f9677:	call   cbedf7  ; System.String::IsNullOrEmpty
  4f967c:	test   al,al
  4f967e:	jne    4f96ba
  4f9680:	mov    DWORD PTR [esp+0x2c],edi
  4f9684:	mov    eax,DWORD PTR [ebp+0xc]
  4f9687:	mov    edi,DWORD PTR [eax+0x44]
  4f968a:	lea    eax,[ebx+0x45830]
  4f9690:	mov    eax,DWORD PTR [eax]
  4f9692:	mov    DWORD PTR [esp],eax
  4f9695:	call   20bfb2
  4f969a:	mov    esi,eax
  4f969c:	mov    DWORD PTR [esp+0x4],edi
  4f96a0:	mov    edi,DWORD PTR [esp+0x2c]
  4f96a4:	mov    DWORD PTR [esp],esi
  4f96a7:	mov    DWORD PTR [esp+0x8],0x0
  4f96af:	call   6c1170  ; ABH.GameDatas.SkillGameData::.ctor
  4f96b4:	mov    DWORD PTR [edi+0x104],esi
  4f96ba:	mov    eax,DWORD PTR [ebp+0xc]
  4f96bd:	mov    eax,DWORD PTR [eax+0x40]
  4f96c0:	test   eax,eax
  4f96c2:	je     4f98d5
  4f96c8:	mov    DWORD PTR [esp+0x2c],edi
  4f96cc:	lea    ecx,[ebx+0x4aee8]
  4f96d2:	mov    ecx,DWORD PTR [ecx]
  4f96d4:	mov    DWORD PTR [esp+0x4],ecx
  4f96d8:	mov    DWORD PTR [esp],eax
  4f96db:	call   1244ea3  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Keys | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, object>::get_Keys
  4f96e0:	test   eax,eax
  4f96e2:	je     4f9fee
  4f96e8:	lea    ecx,[ebx+0x4aeec]
  4f96ee:	mov    ecx,DWORD PTR [ecx]
  4f96f0:	mov    DWORD PTR [esp+0x8],ecx
  4f96f4:	mov    DWORD PTR [esp+0x4],eax
  4f96f8:	lea    eax,[esp+0x60]
  4f96fc:	mov    DWORD PTR [esp],eax
  4f96ff:	call   11af47f  ; shared address: System.Collections.Generic.Dictionary`2+KeyCollection<ABH.Shared.Generic.Faction, string>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<ABH.Shared.Generic.Faction, object>::GetEnumerator
  4f9704:	sub    esp,0x4
  4f9707:	mov    eax,DWORD PTR [esp+0x70]
  4f970b:	mov    DWORD PTR [esp+0xd0],eax
  4f9712:	movsd  xmm0,QWORD PTR [esp+0x60]
  4f9718:	movsd  xmm1,QWORD PTR [esp+0x68]
  4f971e:	movsd  QWORD PTR [esp+0xc8],xmm1
  4f9727:	movsd  QWORD PTR [esp+0xc0],xmm0
  4f9730:	lea    eax,[ebx+0x4af00]
  4f9736:	mov    DWORD PTR [esp+0x24],eax
  4f973a:	mov    esi,ebx
  4f973c:	mov    eax,DWORD PTR [esp+0x24]
  4f9740:	mov    eax,DWORD PTR [eax]
  4f9742:	mov    DWORD PTR [esp+0x4],eax
  4f9746:	lea    eax,[esp+0xc0]
  4f974d:	mov    DWORD PTR [esp],eax
  4f9750:	mov    ebx,esi
  4f9752:	call   11a7e6b
  4f9757:	test   al,al
  4f9759:	je     4f984b
  4f975f:	lea    eax,[esi+0x4aef0]
  4f9765:	mov    eax,DWORD PTR [eax]
  4f9767:	mov    DWORD PTR [esp+0x4],eax
  4f976b:	lea    eax,[esp+0xc0]
  4f9772:	mov    DWORD PTR [esp],eax
  4f9775:	mov    ebx,esi
  4f9777:	call   11a7efa
  4f977c:	mov    edi,eax
  4f977e:	mov    eax,DWORD PTR [ebp+0xc]
  4f9781:	mov    eax,DWORD PTR [eax+0x40]
  4f9784:	test   eax,eax
  4f9786:	je     4f986e
  4f978c:	lea    ecx,[esi+0x4aef4]
  4f9792:	mov    ecx,DWORD PTR [ecx]
  4f9794:	mov    DWORD PTR [esp+0x8],ecx
  4f9798:	mov    DWORD PTR [esp+0x4],edi
  4f979c:	mov    DWORD PTR [esp],eax
  4f979f:	mov    ebx,esi
  4f97a1:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  4f97a6:	mov    DWORD PTR [esp+0x28],eax
  4f97aa:	mov    eax,DWORD PTR [esp+0x2c]
  4f97ae:	mov    eax,DWORD PTR [eax+0x70]
  4f97b1:	test   eax,eax
  4f97b3:	je     4f987a
  4f97b9:	lea    ecx,[esi+0x4aef8]
  4f97bf:	mov    ecx,DWORD PTR [ecx]
  4f97c1:	mov    DWORD PTR [esp+0x8],ecx
  4f97c5:	mov    DWORD PTR [esp+0x4],edi
  4f97c9:	mov    DWORD PTR [esp],eax
  4f97cc:	mov    ebx,esi
  4f97ce:	call   1243e0e  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, ABH.GameDatas.SkillGameData>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::ContainsKey | +1 other aliases
  4f97d3:	test   al,al
  4f97d5:	jne    4f973c
  4f97db:	mov    eax,DWORD PTR [esp+0x2c]
  4f97df:	mov    eax,DWORD PTR [eax+0x70]
  4f97e2:	mov    DWORD PTR [esp+0x1c],eax
  4f97e6:	lea    eax,[esi+0x45830]
  4f97ec:	mov    eax,DWORD PTR [eax]
  4f97ee:	mov    DWORD PTR [esp],eax
  4f97f1:	mov    ebx,esi
  4f97f3:	call   20bfb2
  4f97f8:	mov    ecx,eax
  4f97fa:	mov    eax,DWORD PTR [esp+0x28]
  4f97fe:	mov    DWORD PTR [esp+0x4],eax
  4f9802:	mov    DWORD PTR [esp],ecx
  4f9805:	mov    DWORD PTR [esp+0x8],0x0
  4f980d:	mov    ebx,esi
  4f980f:	mov    DWORD PTR [esp+0x28],ecx
  4f9813:	call   6c1170  ; ABH.GameDatas.SkillGameData::.ctor
  4f9818:	mov    edx,DWORD PTR [esp+0x28]
  4f981c:	mov    ecx,DWORD PTR [esp+0x1c]
  4f9820:	test   ecx,ecx
  4f9822:	je     4f9886
  4f9824:	lea    eax,[esi+0x4aefc]
  4f982a:	mov    eax,DWORD PTR [eax]
  4f982c:	mov    DWORD PTR [esp+0xc],eax
  4f9830:	mov    DWORD PTR [esp+0x8],edx
  4f9834:	mov    DWORD PTR [esp+0x4],edi
  4f9838:	mov    DWORD PTR [esp],ecx
  4f983b:	mov    ebx,esi
  4f983d:	call   12438b3  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, ABH.GameDatas.SkillGameData>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::Add | +1 other aliases
  4f9842:	jmp    4f973c
  4f9847:	mov    ebx,esi
  4f9849:	jmp    4f9892
  4f984b:	mov    ebx,esi
  4f984d:	lea    eax,[ebx+0x4af04]
  4f9853:	mov    eax,DWORD PTR [eax]
  4f9855:	mov    DWORD PTR [esp+0x4],eax
  4f9859:	lea    eax,[esp+0xc0]
  4f9860:	mov    DWORD PTR [esp],eax
  4f9863:	call   11a7e00
  4f9868:	mov    edi,DWORD PTR [esp+0x2c]
  4f986c:	jmp    4f98d5
  4f986e:	mov    ebx,esi
  4f9870:	call   1fbc48
  4f9875:	call   540b98
  4f987a:	mov    ebx,esi
  4f987c:	call   1fbc48
  4f9881:	call   540b98
  4f9886:	mov    ebx,esi
  4f9888:	call   1fbc48
  4f988d:	jmp    4fa005
  4f9892:	mov    edi,DWORD PTR [esp+0x2c]
  4f9896:	cmp    edx,0x1
  4f9899:	jne    4f9ff8
  4f989f:	mov    DWORD PTR [esp],eax
  4f98a2:	call   1ba3f0
  4f98a7:	mov    esi,DWORD PTR [eax]
  4f98a9:	call   1b9ce0
  4f98ae:	lea    eax,[ebx+0x4af04]
  4f98b4:	mov    eax,DWORD PTR [eax]
  4f98b6:	mov    DWORD PTR [esp+0x4],eax
  4f98ba:	lea    eax,[esp+0xc0]
  4f98c1:	mov    DWORD PTR [esp],eax
  4f98c4:	call   11a7e00
  4f98c9:	test   esi,esi
  4f98cb:	je     4f98d5
  4f98cd:	mov    DWORD PTR [esp],esi
  4f98d0:	call   1fbb20
  4f98d5:	mov    DWORD PTR [esp],edi
  4f98d8:	mov    DWORD PTR [esp+0x4],0x0
  4f98e0:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4f98e5:	test   eax,eax
  4f98e7:	je     4f9fee
  4f98ed:	mov    DWORD PTR [esp],eax
  4f98f0:	mov    DWORD PTR [esp+0x4],0x0
  4f98f8:	call   16fe554  ; ABH.Shared.BalancingData.BattleBalancingData::get_EnvironmentalEffects
  4f98fd:	mov    cl,0x1
  4f98ff:	test   eax,eax
  4f9901:	je     4f9bc1
  4f9907:	mov    DWORD PTR [esp],edi
  4f990a:	mov    DWORD PTR [esp+0x4],0x0
  4f9912:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4f9917:	test   eax,eax
  4f9919:	je     4f9fee
  4f991f:	mov    DWORD PTR [esp],eax
  4f9922:	mov    DWORD PTR [esp+0x4],0x0
  4f992a:	call   16fe554  ; ABH.Shared.BalancingData.BattleBalancingData::get_EnvironmentalEffects
  4f992f:	test   eax,eax
  4f9931:	je     4f9fee
  4f9937:	mov    DWORD PTR [esp+0x2c],edi
  4f993b:	lea    ecx,[ebx+0x4a8a4]
  4f9941:	mov    ecx,DWORD PTR [ecx]
  4f9943:	mov    DWORD PTR [esp+0x4],ecx
  4f9947:	mov    DWORD PTR [esp],eax
  4f994a:	call   1244f02  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Values | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, ABH.GameDatas.SkillGameData>::get_Values | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, object>::get_Values
  4f994f:	test   eax,eax
  4f9951:	je     4f9fee
  4f9957:	lea    ecx,[ebx+0x4af08]
  4f995d:	mov    ecx,DWORD PTR [ecx]
  4f995f:	mov    DWORD PTR [esp+0x8],ecx
  4f9963:	mov    DWORD PTR [esp+0x4],eax
  4f9967:	lea    eax,[esp+0x48]
  4f996b:	mov    DWORD PTR [esp],eax
  4f996e:	call   12298e9  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.Faction, string>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<ABH.Shared.Generic.Faction, object>::GetEnumerator
  4f9973:	sub    esp,0x4
  4f9976:	mov    eax,DWORD PTR [esp+0x58]
  4f997a:	mov    DWORD PTR [esp+0xb0],eax
  4f9981:	movsd  xmm0,QWORD PTR [esp+0x48]
  4f9987:	movsd  xmm1,QWORD PTR [esp+0x50]
  4f998d:	movsd  QWORD PTR [esp+0xa8],xmm1
  4f9996:	movsd  QWORD PTR [esp+0xa0],xmm0
  4f999f:	mov    al,0x1
  4f99a1:	mov    DWORD PTR [esp+0x1c],eax
  4f99a5:	lea    eax,[ebx+0x4af10]
  4f99ab:	mov    DWORD PTR [esp+0x24],eax
  4f99af:	movss  xmm0,DWORD PTR [ebx-0x64fc30]
  4f99b7:	movss  DWORD PTR [esp+0x18],xmm0
  4f99bd:	mov    edi,ebx
  4f99bf:	jmp    4f9aae
  4f99c4:	mov    DWORD PTR [esp+0x1c],0x0
  4f99cc:	jmp    4f9aae
  4f99d1:	lea    eax,[edi+0x4af0c]
  4f99d7:	mov    eax,DWORD PTR [eax]
  4f99d9:	mov    DWORD PTR [esp+0x4],eax
  4f99dd:	lea    eax,[esp+0xa0]
  4f99e4:	mov    DWORD PTR [esp],eax
  4f99e7:	mov    ebx,edi
  4f99e9:	call   122295f
  4f99ee:	mov    DWORD PTR [esp+0x28],eax
  4f99f2:	lea    eax,[edi+0x45830]
  4f99f8:	mov    eax,DWORD PTR [eax]
  4f99fa:	mov    DWORD PTR [esp],eax
  4f99fd:	mov    ebx,edi
  4f99ff:	call   20bfb2
  4f9a04:	mov    esi,eax
  4f9a06:	mov    eax,DWORD PTR [esp+0x28]
  4f9a0a:	mov    DWORD PTR [esp+0x4],eax
  4f9a0e:	mov    DWORD PTR [esp],esi
  4f9a11:	mov    DWORD PTR [esp+0x8],0x0
  4f9a19:	mov    ebx,edi
  4f9a1b:	call   6c1170  ; ABH.GameDatas.SkillGameData::.ctor
  4f9a20:	mov    DWORD PTR [esp+0x9c],0x0
  4f9a2b:	test   esi,esi
  4f9a2d:	je     4f9b52
  4f9a33:	mov    DWORD PTR [esp],esi
  4f9a36:	mov    DWORD PTR [esp+0x28],esi
  4f9a3a:	mov    DWORD PTR [esp+0x4],0x0
  4f9a42:	mov    ebx,edi
  4f9a44:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  4f9a49:	test   eax,eax
  4f9a4b:	je     4f9b5e
  4f9a51:	mov    DWORD PTR [esp],eax
  4f9a54:	mov    DWORD PTR [esp+0x4],0x0
  4f9a5c:	mov    ebx,edi
  4f9a5e:	call   170314d  ; ABH.Shared.BalancingData.SkillBalancingData::get_SkillTemplateType
  4f9a63:	mov    esi,eax
  4f9a65:	mov    eax,DWORD PTR [esp+0x20]
  4f9a69:	mov    eax,DWORD PTR [eax]
  4f9a6b:	test   BYTE PTR [eax+0xb2],0x1
  4f9a72:	je     4f9a84
  4f9a74:	cmp    DWORD PTR [eax+0x60],0x0
  4f9a78:	jne    4f9a84
  4f9a7a:	mov    DWORD PTR [esp],eax
  4f9a7d:	mov    ebx,edi
  4f9a7f:	call   1db0b8
  4f9a84:	lea    eax,[edi+0x574b8]
  4f9a8a:	mov    eax,DWORD PTR [eax]
  4f9a8c:	mov    DWORD PTR [esp+0x8],eax
  4f9a90:	mov    DWORD PTR [esp+0x4],esi
  4f9a94:	mov    DWORD PTR [esp+0xc],0x0
  4f9a9c:	mov    DWORD PTR [esp],0x0
  4f9aa3:	mov    ebx,edi
  4f9aa5:	call   ca24cf  ; System.String::op_Equality
  4f9aaa:	test   al,al
  4f9aac:	jne    4f9ad3
  4f9aae:	mov    eax,DWORD PTR [esp+0x24]
  4f9ab2:	mov    eax,DWORD PTR [eax]
  4f9ab4:	mov    DWORD PTR [esp+0x4],eax
  4f9ab8:	lea    eax,[esp+0xa0]
  4f9abf:	mov    DWORD PTR [esp],eax
  4f9ac2:	mov    ebx,edi
  4f9ac4:	call   12228d0
  4f9ac9:	test   al,al
  4f9acb:	jne    4f99d1
  4f9ad1:	jmp    4f9b42
  4f9ad3:	mov    eax,DWORD PTR [esp+0x28]
  4f9ad7:	mov    DWORD PTR [esp],eax
  4f9ada:	mov    DWORD PTR [esp+0x4],0x0
  4f9ae2:	mov    ebx,edi
  4f9ae4:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  4f9ae9:	test   eax,eax
  4f9aeb:	je     4f9fe0
  4f9af1:	lea    ecx,[ebx+0x56e68]  ; literal "rage_in_percent"
  4f9af7:	mov    ecx,DWORD PTR [ecx]
  4f9af9:	lea    edx,[ebx+0x4a034]
  4f9aff:	mov    edx,DWORD PTR [edx]
  4f9b01:	mov    DWORD PTR [esp+0xc],edx
  4f9b05:	lea    edx,[esp+0x9c]
  4f9b0c:	mov    DWORD PTR [esp+0x8],edx
  4f9b10:	mov    DWORD PTR [esp+0x4],ecx
  4f9b14:	mov    DWORD PTR [esp],eax
  4f9b17:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  4f9b1c:	mov    edi,ebx
  4f9b1e:	xor    al,0x1
  4f9b20:	movss  xmm0,DWORD PTR [esp+0x18]
  4f9b26:	ucomiss xmm0,DWORD PTR [esp+0x9c]
  4f9b2e:	setb   cl
  4f9b31:	or     cl,al
  4f9b33:	jne    4f9aae
  4f9b39:	jmp    4f99c4
  4f9b3e:	mov    ebx,edi
  4f9b40:	jmp    4f9b6a
  4f9b42:	xor    esi,esi
  4f9b44:	mov    al,0x1
  4f9b46:	mov    DWORD PTR [esp+0x28],eax
  4f9b4a:	mov    ebx,edi
  4f9b4c:	mov    edi,DWORD PTR [esp+0x2c]
  4f9b50:	jmp    4f9b8e
  4f9b52:	mov    ebx,edi
  4f9b54:	call   1fbc48
  4f9b59:	call   540b98
  4f9b5e:	mov    ebx,edi
  4f9b60:	call   1fbc48
  4f9b65:	jmp    4fa000
  4f9b6a:	mov    edi,DWORD PTR [esp+0x2c]
  4f9b6e:	cmp    edx,0x1
  4f9b71:	jne    4f9ff8
  4f9b77:	mov    DWORD PTR [esp],eax
  4f9b7a:	call   1ba3f0
  4f9b7f:	mov    esi,DWORD PTR [eax]
  4f9b81:	call   1b9ce0
  4f9b86:	mov    DWORD PTR [esp+0x28],0x0
  4f9b8e:	lea    eax,[ebx+0x4af14]
  4f9b94:	mov    eax,DWORD PTR [eax]
  4f9b96:	mov    DWORD PTR [esp+0x4],eax
  4f9b9a:	lea    eax,[esp+0xa0]
  4f9ba1:	mov    DWORD PTR [esp],eax
  4f9ba4:	call   1222847
  4f9ba9:	mov    eax,DWORD PTR [esp+0x28]
  4f9bad:	test   al,al
  4f9baf:	jne    4f9bbd
  4f9bb1:	test   esi,esi
  4f9bb3:	je     4f9bbd
  4f9bb5:	mov    DWORD PTR [esp],esi
  4f9bb8:	call   1fbb20
  4f9bbd:	mov    ecx,DWORD PTR [esp+0x1c]
  4f9bc1:	mov    eax,DWORD PTR [ebp+0xc]
  4f9bc4:	cmp    BYTE PTR [eax+0x2c],0x0
  4f9bc8:	je     4f9bd2
  4f9bca:	mov    al,cl
  4f9bcc:	mov    esi,ecx
  4f9bce:	and    al,0x1
  4f9bd0:	jmp    4f9bd6
  4f9bd2:	mov    esi,ecx
  4f9bd4:	xor    eax,eax
  4f9bd6:	movzx  eax,al
  4f9bd9:	mov    DWORD PTR [esp+0x8],eax
  4f9bdd:	mov    DWORD PTR [esp],edi
  4f9be0:	mov    DWORD PTR [esp+0xc],0x0
  4f9be8:	mov    DWORD PTR [esp+0x4],0x0
  4f9bf0:	call   ec30fc  ; ABH.GameDatas.Battle.BattleGameData::SetRageAvailable
  4f9bf5:	mov    DWORD PTR [esp+0x28],0x0
  4f9bfd:	mov    eax,DWORD PTR [ebp+0xc]
  4f9c00:	cmp    BYTE PTR [eax+0x2c],0x0
  4f9c04:	mov    eax,0x0
  4f9c09:	je     4f9c0f
  4f9c0b:	mov    eax,esi
  4f9c0d:	and    al,0x1
  4f9c0f:	movzx  eax,al
  4f9c12:	mov    DWORD PTR [esp+0x8],eax
  4f9c16:	mov    DWORD PTR [esp],edi
  4f9c19:	mov    DWORD PTR [esp+0xc],0x0
  4f9c21:	mov    DWORD PTR [esp+0x4],0x1
  4f9c29:	call   ec30fc  ; ABH.GameDatas.Battle.BattleGameData::SetRageAvailable
  4f9c2e:	mov    esi,DWORD PTR [ebp+0xc]
  4f9c31:	mov    eax,DWORD PTR [esi+0x34]
  4f9c34:	mov    DWORD PTR [esp+0x24],eax
  4f9c38:	lea    eax,[ebx+0x444f8]
  4f9c3e:	mov    eax,DWORD PTR [eax]
  4f9c40:	mov    DWORD PTR [esp],eax
  4f9c43:	call   20bfb2
  4f9c48:	mov    DWORD PTR [esp+0x30],ebx
  4f9c4c:	mov    DWORD PTR [esp+0x2c],edi
  4f9c50:	mov    edi,eax
  4f9c52:	mov    eax,DWORD PTR [esp+0x24]
  4f9c56:	mov    DWORD PTR [esp+0x4],eax
  4f9c5a:	mov    DWORD PTR [esp],edi
  4f9c5d:	mov    DWORD PTR [esp+0x8],0x0
  4f9c65:	call   125eb37  ; System.Random::.ctor
  4f9c6a:	mov    eax,DWORD PTR [esp+0x2c]
  4f9c6e:	mov    DWORD PTR [eax+0x2c],edi
  4f9c71:	mov    edi,DWORD PTR [esp+0x2c]
  4f9c75:	mov    al,BYTE PTR [esi+0x2d]
  4f9c78:	mov    BYTE PTR [edi+0x18],al
  4f9c7b:	jmp    4f9c91
  4f9c7d:	mov    ecx,DWORD PTR [eax+0x4]
  4f9c80:	mov    DWORD PTR [esp+0x4],ecx
  4f9c84:	mov    DWORD PTR [esp],edi
  4f9c87:	call   DWORD PTR [eax]
  4f9c89:	inc    DWORD PTR [esp+0x28]
  4f9c8d:	mov    edi,DWORD PTR [esp+0x2c]
  4f9c91:	mov    eax,DWORD PTR [edi+0x68]
  4f9c94:	test   eax,eax
  4f9c96:	je     4f9fee
  4f9c9c:	lea    esi,[ebx+0x4a04c]
  4f9ca2:	mov    ecx,DWORD PTR [esi]
  4f9ca4:	mov    DWORD PTR [esp+0x8],ecx
  4f9ca8:	mov    DWORD PTR [esp],eax
  4f9cab:	mov    DWORD PTR [esp+0x4],0x0
  4f9cb3:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  4f9cb8:	test   eax,eax
  4f9cba:	je     4f9fee
  4f9cc0:	lea    ecx,[ebx+0x4a048]
  4f9cc6:	mov    ecx,DWORD PTR [ecx]
  4f9cc8:	mov    DWORD PTR [esp+0x4],ecx
  4f9ccc:	mov    DWORD PTR [esp],eax
  4f9ccf:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  4f9cd4:	cmp    DWORD PTR [esp+0x28],eax
  4f9cd8:	jge    4f9ef4
  4f9cde:	mov    eax,DWORD PTR [edi+0x68]
  4f9ce1:	test   eax,eax
  4f9ce3:	je     4f9fee
  4f9ce9:	mov    ecx,DWORD PTR [esi]
  4f9ceb:	mov    DWORD PTR [esp+0x8],ecx
  4f9cef:	mov    DWORD PTR [esp],eax
  4f9cf2:	mov    DWORD PTR [esp+0x4],0x0
  4f9cfa:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  4f9cff:	test   eax,eax
  4f9d01:	je     4f9fee
  4f9d07:	lea    ecx,[ebx+0x4a0ac]
  4f9d0d:	mov    ecx,DWORD PTR [ecx]
  4f9d0f:	mov    DWORD PTR [esp+0x8],ecx
  4f9d13:	mov    ecx,DWORD PTR [esp+0x28]
  4f9d17:	mov    DWORD PTR [esp+0x4],ecx
  4f9d1b:	mov    DWORD PTR [esp],eax
  4f9d1e:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  4f9d23:	mov    edi,eax
  4f9d25:	test   edi,edi
  4f9d27:	je     4f9fee
  4f9d2d:	mov    eax,DWORD PTR [esp+0x2c]
  4f9d31:	mov    eax,DWORD PTR [eax+0x30]
  4f9d34:	mov    DWORD PTR [esp+0x20],eax
  4f9d38:	lea    eax,[ebx+0x45874]
  4f9d3e:	mov    DWORD PTR [esp+0x24],eax
  4f9d42:	mov    eax,DWORD PTR [eax]
  4f9d44:	mov    ecx,DWORD PTR [edi]
  4f9d46:	movzx  edx,WORD PTR [ecx+0xaa]
  4f9d4d:	test   edx,edx
  4f9d4f:	je     4f9d60
  4f9d51:	mov    esi,DWORD PTR [ecx+0x4c]
  4f9d54:	xor    ebx,ebx
  4f9d56:	cmp    DWORD PTR [esi+ebx*8],eax
  4f9d59:	je     4f9d7a
  4f9d5b:	inc    ebx
  4f9d5c:	cmp    ebx,edx
  4f9d5e:	jb     4f9d56
  4f9d60:	mov    DWORD PTR [esp+0x4],eax
  4f9d64:	mov    DWORD PTR [esp],edi
  4f9d67:	mov    DWORD PTR [esp+0x8],0x15
  4f9d6f:	mov    ebx,DWORD PTR [esp+0x30]
  4f9d73:	call   1c1964
  4f9d78:	jmp    4f9d89
  4f9d7a:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  4f9d7e:	lea    eax,[ecx+eax*8+0x15c]
  4f9d85:	mov    ebx,DWORD PTR [esp+0x30]
  4f9d89:	mov    ecx,DWORD PTR [eax+0x4]
  4f9d8c:	mov    DWORD PTR [esp+0x4],ecx
  4f9d90:	mov    DWORD PTR [esp],edi
  4f9d93:	call   DWORD PTR [eax]
  4f9d95:	fstp   DWORD PTR [esp+0x34]
  4f9d99:	cvttss2si eax,DWORD PTR [esp+0x34]
  4f9d9f:	add    eax,DWORD PTR [esp+0x20]
  4f9da3:	mov    ecx,DWORD PTR [esp+0x2c]
  4f9da7:	mov    DWORD PTR [ecx+0x30],eax
  4f9daa:	mov    eax,DWORD PTR [ebp+0xc]
  4f9dad:	mov    eax,DWORD PTR [eax+0x3c]
  4f9db0:	test   eax,eax
  4f9db2:	je     4f9ea1
  4f9db8:	mov    ebx,DWORD PTR [esp+0x30]
  4f9dbc:	lea    ecx,[ebx+0x4af18]
  4f9dc2:	mov    ecx,DWORD PTR [ecx]
  4f9dc4:	mov    DWORD PTR [esp+0x8],ecx
  4f9dc8:	mov    DWORD PTR [esp],eax
  4f9dcb:	mov    DWORD PTR [esp+0x4],0x0
  4f9dd3:	call   1243e0e  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, ABH.GameDatas.SkillGameData>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::ContainsKey | +1 other aliases
  4f9dd8:	test   al,al
  4f9dda:	je     4f9ea1
  4f9de0:	mov    eax,DWORD PTR [ebp+0xc]
  4f9de3:	mov    eax,DWORD PTR [eax+0x3c]
  4f9de6:	test   eax,eax
  4f9de8:	je     4f9fea
  4f9dee:	mov    ebx,DWORD PTR [esp+0x30]
  4f9df2:	lea    esi,[ebx+0x4af1c]
  4f9df8:	mov    ecx,DWORD PTR [esi]
  4f9dfa:	mov    DWORD PTR [esp+0x8],ecx
  4f9dfe:	mov    DWORD PTR [esp],eax
  4f9e01:	mov    DWORD PTR [esp+0x4],0x0
  4f9e09:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  4f9e0e:	test   eax,eax
  4f9e10:	je     4f9ea1
  4f9e16:	mov    eax,DWORD PTR [ebp+0xc]
  4f9e19:	mov    eax,DWORD PTR [eax+0x3c]
  4f9e1c:	test   eax,eax
  4f9e1e:	je     4f9fea
  4f9e24:	mov    ecx,DWORD PTR [esi]
  4f9e26:	mov    DWORD PTR [esp+0x8],ecx
  4f9e2a:	mov    DWORD PTR [esp],eax
  4f9e2d:	mov    DWORD PTR [esp+0x4],0x0
  4f9e35:	mov    ebx,DWORD PTR [esp+0x30]
  4f9e39:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  4f9e3e:	mov    DWORD PTR [esp+0x20],eax
  4f9e42:	mov    eax,DWORD PTR [esp+0x24]
  4f9e46:	mov    eax,DWORD PTR [eax]
  4f9e48:	mov    ebx,DWORD PTR [edi]
  4f9e4a:	movzx  edx,WORD PTR [ebx+0xaa]
  4f9e51:	test   edx,edx
  4f9e53:	je     4f9e64
  4f9e55:	mov    esi,DWORD PTR [ebx+0x4c]
  4f9e58:	xor    ecx,ecx
  4f9e5a:	cmp    DWORD PTR [esi+ecx*8],eax
  4f9e5d:	je     4f9e7e
  4f9e5f:	inc    ecx
  4f9e60:	cmp    ecx,edx
  4f9e62:	jb     4f9e5a
  4f9e64:	mov    DWORD PTR [esp+0x4],eax
  4f9e68:	mov    DWORD PTR [esp],edi
  4f9e6b:	mov    DWORD PTR [esp+0x8],0x36
  4f9e73:	mov    ebx,DWORD PTR [esp+0x30]
  4f9e77:	call   1c1964
  4f9e7c:	jmp    4f9e8d
  4f9e7e:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  4f9e82:	lea    eax,[ebx+eax*8+0x264]
  4f9e89:	mov    ebx,DWORD PTR [esp+0x30]
  4f9e8d:	mov    ecx,DWORD PTR [eax+0x4]
  4f9e90:	mov    DWORD PTR [esp+0x8],ecx
  4f9e94:	mov    ecx,DWORD PTR [esp+0x20]
  4f9e98:	mov    DWORD PTR [esp+0x4],ecx
  4f9e9c:	mov    DWORD PTR [esp],edi
  4f9e9f:	call   DWORD PTR [eax]
  4f9ea1:	mov    eax,DWORD PTR [esp+0x24]
  4f9ea5:	mov    eax,DWORD PTR [eax]
  4f9ea7:	mov    ecx,DWORD PTR [edi]
  4f9ea9:	movzx  edx,WORD PTR [ecx+0xaa]
  4f9eb0:	test   edx,edx
  4f9eb2:	je     4f9ec3
  4f9eb4:	mov    esi,DWORD PTR [ecx+0x4c]
  4f9eb7:	xor    ebx,ebx
  4f9eb9:	cmp    DWORD PTR [esi+ebx*8],eax
  4f9ebc:	je     4f9ee0
  4f9ebe:	inc    ebx
  4f9ebf:	cmp    ebx,edx
  4f9ec1:	jb     4f9eb9
  4f9ec3:	mov    DWORD PTR [esp+0x4],eax
  4f9ec7:	mov    DWORD PTR [esp],edi
  4f9eca:	mov    DWORD PTR [esp+0x8],0xd
  4f9ed2:	mov    ebx,DWORD PTR [esp+0x30]
  4f9ed6:	call   1c1964
  4f9edb:	jmp    4f9c7d
  4f9ee0:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  4f9ee4:	lea    eax,[ecx+eax*8+0x11c]
  4f9eeb:	mov    ebx,DWORD PTR [esp+0x30]
  4f9eef:	jmp    4f9c7d
  4f9ef4:	mov    DWORD PTR [esp+0x4],0x0
  4f9efc:	mov    DWORD PTR [esp],0x0
  4f9f03:	call   106b137  ; DIContainerLogic::get_InventoryService
  4f9f08:	test   eax,eax
  4f9f0a:	je     4f9fee
  4f9f10:	mov    ecx,DWORD PTR [edi+0x78]
  4f9f13:	lea    edx,[ebx+0x574bc]  ; literal "permanent_golden_chili"
  4f9f19:	mov    edx,DWORD PTR [edx]
  4f9f1b:	mov    DWORD PTR [esp+0x8],edx
  4f9f1f:	mov    DWORD PTR [esp+0x4],ecx
  4f9f23:	mov    DWORD PTR [esp],eax
  4f9f26:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  4f9f2b:	test   eax,eax
  4f9f2d:	jle    4f9f4f
  4f9f2f:	mov    DWORD PTR [esp],edi
  4f9f32:	mov    DWORD PTR [esp+0xc],0x0
  4f9f3a:	mov    DWORD PTR [esp+0x8],0x42c80000
  4f9f42:	mov    DWORD PTR [esp+0x4],0x0
  4f9f4a:	call   ec31cb  ; ABH.GameDatas.Battle.BattleGameData::SetFactionRage
  4f9f4f:	mov    DWORD PTR [esp+0x4],0x0
  4f9f57:	mov    DWORD PTR [esp],0x0
  4f9f5e:	call   106b137  ; DIContainerLogic::get_InventoryService
  4f9f63:	test   eax,eax
  4f9f65:	je     4f9fee
  4f9f6b:	mov    ecx,DWORD PTR [edi+0x78]
  4f9f6e:	mov    esi,edi
  4f9f70:	lea    edi,[ebx+0x574c0]  ; literal "xp_multiplier_consumable_01"
  4f9f76:	mov    edx,DWORD PTR [edi]
  4f9f78:	mov    DWORD PTR [esp+0x8],edx
  4f9f7c:	mov    DWORD PTR [esp+0x4],ecx
  4f9f80:	mov    DWORD PTR [esp],eax
  4f9f83:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  4f9f88:	test   eax,eax
  4f9f8a:	jle    4f9fd1
  4f9f8c:	mov    DWORD PTR [esp+0x28],eax
  4f9f90:	mov    DWORD PTR [esp+0x4],0x0
  4f9f98:	mov    DWORD PTR [esp],0x0
  4f9f9f:	call   106b137  ; DIContainerLogic::get_InventoryService
  4f9fa4:	test   eax,eax
  4f9fa6:	je     4f9fee
  4f9fa8:	mov    ecx,DWORD PTR [esi+0x78]
  4f9fab:	mov    edx,DWORD PTR [edi]
  4f9fad:	lea    edi,[ebx+0x574c4]  ; literal "reset_xp_multiplier_consumable_01"
  4f9fb3:	mov    edi,DWORD PTR [edi]
  4f9fb5:	mov    DWORD PTR [esp+0x10],edi
  4f9fb9:	mov    edi,DWORD PTR [esp+0x28]
  4f9fbd:	mov    DWORD PTR [esp+0xc],edi
  4f9fc1:	mov    DWORD PTR [esp+0x8],edx
  4f9fc5:	mov    DWORD PTR [esp+0x4],ecx
  4f9fc9:	mov    DWORD PTR [esp],eax
  4f9fcc:	call   4fa47f  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::RemoveItem
  4f9fd1:	mov    eax,esi
  4f9fd3:	lea    esp,[ebp-0xc]
  4f9fd6:	pop    esi
  4f9fd7:	pop    edi
  4f9fd8:	pop    ebx
  4f9fd9:	pop    ebp
  4f9fda:	ret
  4f9fdb:	jmp    4f9b6a
  4f9fe0:	call   1fbc48
  4f9fe5:	call   540b98
  4f9fea:	mov    ebx,DWORD PTR [esp+0x30]
  4f9fee:	call   1fbc48
  4f9ff3:	call   540b98
  4f9ff8:	mov    DWORD PTR [esp],eax
  4f9ffb:	call   1b9bd0
  4fa000:	call   540b98
  4fa005:	call   540b98
  4fa00a:	call   540b98
  4fa00f:	call   540b98