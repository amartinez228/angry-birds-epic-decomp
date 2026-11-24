
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ab4d06:
  ab4d06:	push   ebp
  ab4d07:	mov    ebp,esp
  ab4d09:	push   ebx
  ab4d0a:	push   edi
  ab4d0b:	push   esi
  ab4d0c:	and    esp,0xfffffff0
  ab4d0f:	sub    esp,0x90
  ab4d15:	call   ab4d1a
  ab4d1a:	pop    ebx
  ab4d1b:	add    ebx,0x145d22a
  ab4d21:	mov    edi,DWORD PTR [ebp+0xc]
  ab4d24:	mov    al,BYTE PTR [ebx+0x60d41]
  ab4d2a:	test   al,al
  ab4d2c:	jne    ab4d45
  ab4d2e:	lea    eax,[ebx-0x6541a0]
  ab4d34:	mov    eax,DWORD PTR [eax]
  ab4d36:	mov    DWORD PTR [esp],eax
  ab4d39:	call   1ca6e8
  ab4d3e:	mov    BYTE PTR [ebx+0x60d41],0x1
  ab4d45:	xorps  xmm0,xmm0
  ab4d48:	movaps XMMWORD PTR [esp+0x70],xmm0
  ab4d4d:	mov    DWORD PTR [esp+0x80],0x0
  ab4d58:	movaps XMMWORD PTR [esp+0x50],xmm0
  ab4d5d:	mov    DWORD PTR [esp+0x60],0x0
  ab4d65:	xor    ecx,ecx
  ab4d67:	test   edi,edi
  ab4d69:	je     ab51d4
  ab4d6f:	mov    DWORD PTR [esp],edi
  ab4d72:	mov    DWORD PTR [esp+0x4],0x0
  ab4d7a:	call   6fe722  ; ABH.GameDatas.PlayerGameData::get_ChronicleCaveGameData
  ab4d7f:	xor    esi,esi
  ab4d81:	test   eax,eax
  ab4d83:	je     ab4f6b
  ab4d89:	xor    esi,esi
  ab4d8b:	mov    DWORD PTR [esp+0x1c],0x0
  ab4d93:	jmp    ab4d9e
  ab4d95:	inc    DWORD PTR [esp+0x1c]
  ab4d99:	mov    esi,edi
  ab4d9b:	mov    edi,DWORD PTR [ebp+0xc]
  ab4d9e:	mov    DWORD PTR [esp],edi
  ab4da1:	mov    DWORD PTR [esp+0x4],0x0
  ab4da9:	call   6fe722  ; ABH.GameDatas.PlayerGameData::get_ChronicleCaveGameData
  ab4dae:	test   eax,eax
  ab4db0:	je     ab51e8
  ab4db6:	mov    eax,DWORD PTR [eax+0x10]
  ab4db9:	test   eax,eax
  ab4dbb:	je     ab51e8
  ab4dc1:	lea    ecx,[ebx+0x4a8d0]
  ab4dc7:	mov    ecx,DWORD PTR [ecx]
  ab4dc9:	mov    DWORD PTR [esp+0x4],ecx
  ab4dcd:	mov    DWORD PTR [esp],eax
  ab4dd0:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  ab4dd5:	cmp    DWORD PTR [esp+0x1c],eax
  ab4dd9:	jge    ab4f6b
  ab4ddf:	mov    DWORD PTR [esp],edi
  ab4de2:	mov    DWORD PTR [esp+0x4],0x0
  ab4dea:	call   6fe722  ; ABH.GameDatas.PlayerGameData::get_ChronicleCaveGameData
  ab4def:	test   eax,eax
  ab4df1:	je     ab51e8
  ab4df7:	mov    eax,DWORD PTR [eax+0x10]
  ab4dfa:	test   eax,eax
  ab4dfc:	lea    edi,[esp+0x70]
  ab4e00:	je     ab51e8
  ab4e06:	lea    ecx,[ebx+0x4a8c8]
  ab4e0c:	mov    ecx,DWORD PTR [ecx]
  ab4e0e:	mov    DWORD PTR [esp+0x8],ecx
  ab4e12:	mov    ecx,DWORD PTR [esp+0x1c]
  ab4e16:	mov    DWORD PTR [esp+0x4],ecx
  ab4e1a:	mov    DWORD PTR [esp],eax
  ab4e1d:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  ab4e22:	test   eax,eax
  ab4e24:	je     ab51e8
  ab4e2a:	mov    eax,DWORD PTR [eax+0x10]
  ab4e2d:	test   eax,eax
  ab4e2f:	je     ab51e8
  ab4e35:	lea    ecx,[ebx+0x4a93c]
  ab4e3b:	mov    ecx,DWORD PTR [ecx]
  ab4e3d:	mov    DWORD PTR [esp+0x4],ecx
  ab4e41:	mov    DWORD PTR [esp],eax
  ab4e44:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  ab4e49:	test   eax,eax
  ab4e4b:	je     ab51e8
  ab4e51:	lea    ecx,[ebx+0x4bb54]
  ab4e57:	mov    ecx,DWORD PTR [ecx]
  ab4e59:	mov    DWORD PTR [esp+0x8],ecx
  ab4e5d:	mov    DWORD PTR [esp+0x4],eax
  ab4e61:	lea    eax,[esp+0x38]
  ab4e65:	mov    DWORD PTR [esp],eax
  ab4e68:	call   12374c5  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, UnityEngine.GUIStyle>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, ABH.GameDatas.Battle.BattleEffectGameData>::GetEnumerator | +11 other aliases
  ab4e6d:	sub    esp,0x4
  ab4e70:	mov    eax,DWORD PTR [esp+0x48]
  ab4e74:	mov    DWORD PTR [esp+0x80],eax
  ab4e7b:	movsd  xmm0,QWORD PTR [esp+0x38]
  ab4e81:	movsd  xmm1,QWORD PTR [esp+0x40]
  ab4e87:	movsd  QWORD PTR [esp+0x78],xmm1
  ab4e8d:	movsd  QWORD PTR [esp+0x70],xmm0
  ab4e93:	jmp    ab4e97
  ab4e95:	add    esi,eax
  ab4e97:	lea    eax,[ebx+0x4bb60]
  ab4e9d:	mov    eax,DWORD PTR [eax]
  ab4e9f:	mov    DWORD PTR [esp+0x4],eax
  ab4ea3:	mov    DWORD PTR [esp],edi
  ab4ea6:	call   12276c5
  ab4eab:	test   al,al
  ab4ead:	je     ab4ef3
  ab4eaf:	lea    eax,[ebx+0x4bb58]
  ab4eb5:	mov    eax,DWORD PTR [eax]
  ab4eb7:	mov    DWORD PTR [esp+0x4],eax
  ab4ebb:	mov    DWORD PTR [esp],edi
  ab4ebe:	call   1227754
  ab4ec3:	test   eax,eax
  ab4ec5:	je     ab4f10
  ab4ec7:	lea    ecx,[ebx+0x4a8ac]
  ab4ecd:	mov    ecx,DWORD PTR [ecx]
  ab4ecf:	mov    DWORD PTR [esp+0x4],ecx
  ab4ed3:	mov    DWORD PTR [esp],eax
  ab4ed6:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab4edb:	test   eax,eax
  ab4edd:	je     ab4f1a
  ab4edf:	mov    DWORD PTR [esp],eax
  ab4ee2:	mov    DWORD PTR [esp+0x4],0x0
  ab4eea:	call   179b767  ; ABH.Shared.Models.HotspotData::get_StarCount
  ab4eef:	jmp    ab4e95
  ab4ef1:	jmp    ab4f24
  ab4ef3:	mov    ecx,edi
  ab4ef5:	mov    edi,esi
  ab4ef7:	lea    eax,[ebx+0x4bb64]
  ab4efd:	mov    eax,DWORD PTR [eax]
  ab4eff:	mov    DWORD PTR [esp+0x4],eax
  ab4f03:	mov    DWORD PTR [esp],ecx
  ab4f06:	call   122763c
  ab4f0b:	jmp    ab4d95
  ab4f10:	call   1fbc48
  ab4f15:	jmp    ab51fa
  ab4f1a:	call   1fbc48
  ab4f1f:	jmp    ab51ff
  ab4f24:	mov    edi,esi
  ab4f26:	cmp    edx,0x1
  ab4f29:	jne    ab51f2
  ab4f2f:	mov    DWORD PTR [esp],eax
  ab4f32:	call   1ba3f0
  ab4f37:	mov    esi,DWORD PTR [eax]
  ab4f39:	call   1b9ce0
  ab4f3e:	lea    eax,[ebx+0x4bb64]
  ab4f44:	mov    eax,DWORD PTR [eax]
  ab4f46:	mov    DWORD PTR [esp+0x4],eax
  ab4f4a:	lea    eax,[esp+0x70]
  ab4f4e:	mov    DWORD PTR [esp],eax
  ab4f51:	call   122763c
  ab4f56:	test   esi,esi
  ab4f58:	je     ab4d95
  ab4f5e:	mov    DWORD PTR [esp],esi
  ab4f61:	call   1fbb20
  ab4f66:	jmp    ab4d95
  ab4f6b:	mov    DWORD PTR [esp],edi
  ab4f6e:	mov    DWORD PTR [esp+0x4],0x0
  ab4f76:	call   6cedf5  ; ABH.GameDatas.PlayerGameData::get_WorldGameData
  ab4f7b:	test   eax,eax
  ab4f7d:	je     ab51e8
  ab4f83:	xor    ecx,ecx
  ab4f85:	cmp    DWORD PTR [eax+0x10],0x0
  ab4f89:	je     ab51d2
  ab4f8f:	mov    DWORD PTR [esp],edi
  ab4f92:	mov    DWORD PTR [esp+0x4],0x0
  ab4f9a:	call   6cedf5  ; ABH.GameDatas.PlayerGameData::get_WorldGameData
  ab4f9f:	test   eax,eax
  ab4fa1:	je     ab51e8
  ab4fa7:	mov    eax,DWORD PTR [eax+0x10]
  ab4faa:	test   eax,eax
  ab4fac:	je     ab51e8
  ab4fb2:	lea    ecx,[ebx+0x4a93c]
  ab4fb8:	mov    ecx,DWORD PTR [ecx]
  ab4fba:	mov    DWORD PTR [esp+0x4],ecx
  ab4fbe:	mov    DWORD PTR [esp],eax
  ab4fc1:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  ab4fc6:	test   eax,eax
  ab4fc8:	je     ab51e8
  ab4fce:	mov    DWORD PTR [esp+0x1c],esi
  ab4fd2:	lea    ecx,[ebx+0x4bb54]
  ab4fd8:	mov    ecx,DWORD PTR [ecx]
  ab4fda:	mov    DWORD PTR [esp+0x8],ecx
  ab4fde:	mov    DWORD PTR [esp+0x4],eax
  ab4fe2:	lea    eax,[esp+0x20]
  ab4fe6:	mov    DWORD PTR [esp],eax
  ab4fe9:	call   12374c5  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, UnityEngine.GUIStyle>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, ABH.GameDatas.Battle.BattleEffectGameData>::GetEnumerator | +11 other aliases
  ab4fee:	sub    esp,0x4
  ab4ff1:	mov    eax,DWORD PTR [esp+0x30]
  ab4ff5:	mov    DWORD PTR [esp+0x60],eax
  ab4ff9:	movsd  xmm0,QWORD PTR [esp+0x20]
  ab4fff:	movsd  xmm1,QWORD PTR [esp+0x28]
  ab5005:	movsd  QWORD PTR [esp+0x58],xmm1
  ab500b:	movsd  QWORD PTR [esp+0x50],xmm0
  ab5011:	xor    ecx,ecx
  ab5013:	lea    eax,[ebx+0x4bb60]
  ab5019:	mov    DWORD PTR [esp+0x18],eax
  ab501d:	jmp    ab5025
  ab501f:	mov    ecx,DWORD PTR [esp+0x14]
  ab5023:	add    ecx,eax
  ab5025:	mov    DWORD PTR [esp+0x14],ecx
  ab5029:	mov    eax,DWORD PTR [esp+0x18]
  ab502d:	mov    eax,DWORD PTR [eax]
  ab502f:	mov    DWORD PTR [esp+0x4],eax
  ab5033:	lea    eax,[esp+0x50]
  ab5037:	mov    DWORD PTR [esp],eax
  ab503a:	call   12276c5
  ab503f:	test   al,al
  ab5041:	je     ab514e
  ab5047:	lea    eax,[ebx+0x4bb58]
  ab504d:	mov    eax,DWORD PTR [eax]
  ab504f:	mov    DWORD PTR [esp+0x4],eax
  ab5053:	lea    eax,[esp+0x50]
  ab5057:	mov    DWORD PTR [esp],eax
  ab505a:	call   1227754
  ab505f:	mov    edi,eax
  ab5061:	test   edi,edi
  ab5063:	je     ab5158
  ab5069:	lea    esi,[ebx+0x4a94c]
  ab506f:	mov    eax,DWORD PTR [esi]
  ab5071:	mov    DWORD PTR [esp+0x4],eax
  ab5075:	mov    DWORD PTR [esp],edi
  ab5078:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab507d:	test   eax,eax
  ab507f:	je     ab5166
  ab5085:	mov    DWORD PTR [esp],eax
  ab5088:	mov    DWORD PTR [esp+0x4],0x0
  ab5090:	call   17012a7  ; ABH.Shared.BalancingData.HotspotBalancingData::get_Type
  ab5095:	cmp    eax,0x1
  ab5098:	jne    ab5029
  ab509a:	mov    eax,DWORD PTR [esi]
  ab509c:	mov    DWORD PTR [esp+0x4],eax
  ab50a0:	mov    DWORD PTR [esp],edi
  ab50a3:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab50a8:	test   eax,eax
  ab50aa:	mov    esi,DWORD PTR [esp+0x1c]
  ab50ae:	je     ab5174
  ab50b4:	mov    DWORD PTR [esp],eax
  ab50b7:	mov    DWORD PTR [esp+0x4],0x0
  ab50bf:	call   1701284  ; ABH.Shared.BalancingData.HotspotBalancingData::get_NameId
  ab50c4:	mov    esi,eax
  ab50c6:	lea    eax,[ebx+0x430e4]
  ab50cc:	mov    eax,DWORD PTR [eax]
  ab50ce:	test   BYTE PTR [eax+0xb2],0x1
  ab50d5:	je     ab50e5
  ab50d7:	cmp    DWORD PTR [eax+0x60],0x0
  ab50db:	jne    ab50e5
  ab50dd:	mov    DWORD PTR [esp],eax
  ab50e0:	call   1db0b8
  ab50e5:	lea    eax,[ebx+0x57d88]  ; literal "hotspot_golden_pig_battleground"
  ab50eb:	mov    eax,DWORD PTR [eax]
  ab50ed:	mov    DWORD PTR [esp+0x8],eax
  ab50f1:	mov    DWORD PTR [esp+0x4],esi
  ab50f5:	mov    DWORD PTR [esp+0xc],0x0
  ab50fd:	mov    DWORD PTR [esp],0x0
  ab5104:	call   c9e5f9  ; System.String::op_Inequality
  ab5109:	test   al,al
  ab510b:	je     ab5029
  ab5111:	lea    eax,[ebx+0x4a8ac]
  ab5117:	mov    eax,DWORD PTR [eax]
  ab5119:	mov    DWORD PTR [esp+0x4],eax
  ab511d:	mov    DWORD PTR [esp],edi
  ab5120:	mov    esi,DWORD PTR [esp+0x1c]
  ab5124:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab5129:	test   eax,eax
  ab512b:	je     ab51de
  ab5131:	mov    DWORD PTR [esp],eax
  ab5134:	mov    DWORD PTR [esp+0x4],0x0
  ab513c:	call   179b767  ; ABH.Shared.Models.HotspotData::get_StarCount
  ab5141:	jmp    ab501f
  ab5146:	jmp    ab517e
  ab5148:	mov    esi,DWORD PTR [esp+0x1c]
  ab514c:	jmp    ab517e
  ab514e:	xor    esi,esi
  ab5150:	mov    al,0x1
  ab5152:	mov    DWORD PTR [esp+0x18],eax
  ab5156:	jmp    ab519e
  ab5158:	mov    esi,DWORD PTR [esp+0x1c]
  ab515c:	call   1fbc48
  ab5161:	call   ab1162
  ab5166:	mov    esi,DWORD PTR [esp+0x1c]
  ab516a:	call   1fbc48
  ab516f:	call   ab1162
  ab5174:	call   1fbc48
  ab5179:	jmp    ab5204
  ab517e:	mov    DWORD PTR [esp+0x1c],esi
  ab5182:	cmp    edx,0x1
  ab5185:	jne    ab51f2
  ab5187:	mov    DWORD PTR [esp],eax
  ab518a:	call   1ba3f0
  ab518f:	mov    esi,DWORD PTR [eax]
  ab5191:	call   1b9ce0
  ab5196:	mov    DWORD PTR [esp+0x18],0x0
  ab519e:	lea    eax,[ebx+0x4bb64]
  ab51a4:	mov    eax,DWORD PTR [eax]
  ab51a6:	mov    DWORD PTR [esp+0x4],eax
  ab51aa:	lea    eax,[esp+0x50]
  ab51ae:	mov    DWORD PTR [esp],eax
  ab51b1:	call   122763c
  ab51b6:	mov    eax,DWORD PTR [esp+0x18]
  ab51ba:	test   al,al
  ab51bc:	jne    ab51ca
  ab51be:	test   esi,esi
  ab51c0:	je     ab51ca
  ab51c2:	mov    DWORD PTR [esp],esi
  ab51c5:	call   1fbb20
  ab51ca:	mov    esi,DWORD PTR [esp+0x1c]
  ab51ce:	mov    ecx,DWORD PTR [esp+0x14]
  ab51d2:	add    ecx,esi
  ab51d4:	mov    eax,ecx
  ab51d6:	lea    esp,[ebp-0xc]
  ab51d9:	pop    esi
  ab51da:	pop    edi
  ab51db:	pop    ebx
  ab51dc:	pop    ebp
  ab51dd:	ret
  ab51de:	call   1fbc48
  ab51e3:	call   ab1162
  ab51e8:	call   1fbc48
  ab51ed:	call   ab1162
  ab51f2:	mov    DWORD PTR [esp],eax
  ab51f5:	call   1b9bd0
  ab51fa:	call   ab1162
  ab51ff:	call   ab1162
  ab5204:	call   ab1162