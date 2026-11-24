
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00507d87:
  507d87:	push   ebp
  507d88:	mov    ebp,esp
  507d8a:	push   ebx
  507d8b:	push   edi
  507d8c:	push   esi
  507d8d:	and    esp,0xfffffff0
  507d90:	sub    esp,0x30
  507d93:	call   507d98
  507d98:	pop    ebx
  507d99:	add    ebx,0x1a0a1ac
  507d9f:	mov    DWORD PTR [esp+0x20],ebx
  507da3:	mov    edi,DWORD PTR [ebp+0xc]
  507da6:	mov    al,BYTE PTR [ebx+0x5d4f8]
  507dac:	test   al,al
  507dae:	jne    507dc7
  507db0:	lea    eax,[ebx-0x66f048]
  507db6:	mov    eax,DWORD PTR [eax]
  507db8:	mov    DWORD PTR [esp],eax
  507dbb:	call   1ca6e8
  507dc0:	mov    BYTE PTR [ebx+0x5d4f8],0x1
  507dc7:	test   edi,edi
  507dc9:	je     508289
  507dcf:	cmp    DWORD PTR [edi+0x60],0x0
  507dd3:	jne    507dfe
  507dd5:	lea    eax,[ebx+0x45890]
  507ddb:	mov    eax,DWORD PTR [eax]
  507ddd:	mov    DWORD PTR [esp],eax
  507de0:	call   20bfb2
  507de5:	mov    esi,eax
  507de7:	lea    eax,[ebx+0x4a074]
  507ded:	mov    eax,DWORD PTR [eax]
  507def:	mov    DWORD PTR [esp+0x4],eax
  507df3:	mov    DWORD PTR [esp],esi
  507df6:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  507dfb:	mov    DWORD PTR [edi+0x60],esi
  507dfe:	mov    eax,DWORD PTR [edi+0x5c]
  507e01:	test   eax,eax
  507e03:	je     508289
  507e09:	lea    esi,[ebx+0x4a048]
  507e0f:	mov    ecx,DWORD PTR [esi]
  507e11:	mov    DWORD PTR [esp+0x4],ecx
  507e15:	mov    DWORD PTR [esp],eax
  507e18:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  507e1d:	test   eax,eax
  507e1f:	jle    507e80
  507e21:	mov    eax,DWORD PTR [edi+0x5c]
  507e24:	lea    ecx,[ebx+0x4a344]
  507e2a:	mov    ecx,DWORD PTR [ecx]
  507e2c:	mov    DWORD PTR [esp+0x8],ecx
  507e30:	mov    DWORD PTR [esp+0x4],eax
  507e34:	mov    DWORD PTR [esp],0x0
  507e3b:	call   15eff96  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +31 other aliases
  507e40:	mov    DWORD PTR [esp+0x4],eax
  507e44:	mov    DWORD PTR [esp],edi
  507e47:	mov    DWORD PTR [esp+0x8],0x0
  507e4f:	call   ec17be  ; ABH.GameDatas.Battle.BattleGameData::set_CurrentCombatant
  507e54:	mov    eax,DWORD PTR [edi+0x5c]
  507e57:	test   eax,eax
  507e59:	je     508289
  507e5f:	lea    ecx,[ebx+0x4a3f4]
  507e65:	mov    ecx,DWORD PTR [ecx]
  507e67:	mov    DWORD PTR [esp+0x8],ecx
  507e6b:	mov    DWORD PTR [esp],eax
  507e6e:	mov    DWORD PTR [esp+0x4],0x0
  507e76:	call   4c41f4  ; shared address: System.Collections.Generic.List`1<object>::RemoveAt | System.Collections.Generic.List`1<SmoothMoves.KeyframeSM>::RemoveAt | System.Collections.Generic.List`1<SmoothMoves.AnimationClipBone>::RemoveAt | +15 other aliases
  507e7b:	jmp    5081d2
  507e80:	mov    eax,DWORD PTR [edi+0x60]
  507e83:	test   eax,eax
  507e85:	je     508289
  507e8b:	mov    ecx,DWORD PTR [esi]
  507e8d:	mov    DWORD PTR [esp+0x4],ecx
  507e91:	mov    DWORD PTR [esp],eax
  507e94:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  507e99:	test   eax,eax
  507e9b:	je     507ea5
  507e9d:	mov    esi,DWORD PTR [edi+0x60]
  507ea0:	jmp    50805e
  507ea5:	mov    DWORD PTR [esp+0x1c],esi
  507ea9:	mov    DWORD PTR [esp+0x4],edi
  507ead:	mov    eax,DWORD PTR [ebp+0x8]
  507eb0:	mov    DWORD PTR [esp],eax
  507eb3:	call   508293  ; ABH.Services.Logic.BattleService::EndCurrentTurn
  507eb8:	mov    DWORD PTR [esp+0x4],edi
  507ebc:	mov    DWORD PTR [esp+0x8],0x0
  507ec4:	call   505253  ; ABH.Services.Logic.BattleService::ReCalculateInitiative
  507ec9:	mov    DWORD PTR [esp+0x24],0x0
  507ed1:	jmp    507eee
  507ed3:	mov    ecx,DWORD PTR [eax+0x4]
  507ed6:	mov    DWORD PTR [esp+0x8],ecx
  507eda:	mov    DWORD PTR [esp],esi
  507edd:	mov    DWORD PTR [esp+0x4],0x0
  507ee5:	call   DWORD PTR [eax]
  507ee7:	inc    DWORD PTR [esp+0x24]
  507eeb:	mov    edi,DWORD PTR [ebp+0xc]
  507eee:	mov    eax,DWORD PTR [edi+0x58]
  507ef1:	test   eax,eax
  507ef3:	mov    ecx,DWORD PTR [esp+0x1c]
  507ef7:	je     508289
  507efd:	mov    ecx,DWORD PTR [ecx]
  507eff:	mov    DWORD PTR [esp+0x4],ecx
  507f03:	mov    DWORD PTR [esp],eax
  507f06:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  507f0b:	mov    esi,DWORD PTR [edi+0x58]
  507f0e:	cmp    DWORD PTR [esp+0x24],eax
  507f12:	jge    507f9b
  507f18:	test   esi,esi
  507f1a:	je     508289
  507f20:	lea    eax,[ebx+0x4a0ac]
  507f26:	mov    eax,DWORD PTR [eax]
  507f28:	mov    DWORD PTR [esp+0x8],eax
  507f2c:	mov    eax,DWORD PTR [esp+0x24]
  507f30:	mov    DWORD PTR [esp+0x4],eax
  507f34:	mov    DWORD PTR [esp],esi
  507f37:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  507f3c:	mov    esi,eax
  507f3e:	test   esi,esi
  507f40:	je     508289
  507f46:	lea    eax,[ebx+0x45874]
  507f4c:	mov    eax,DWORD PTR [eax]
  507f4e:	mov    ebx,DWORD PTR [esi]
  507f50:	movzx  edx,WORD PTR [ebx+0xaa]
  507f57:	test   edx,edx
  507f59:	je     507f6a
  507f5b:	mov    edi,DWORD PTR [ebx+0x4c]
  507f5e:	xor    ecx,ecx
  507f60:	cmp    DWORD PTR [edi+ecx*8],eax
  507f63:	je     507f87
  507f65:	inc    ecx
  507f66:	cmp    ecx,edx
  507f68:	jb     507f60
  507f6a:	mov    DWORD PTR [esp+0x4],eax
  507f6e:	mov    DWORD PTR [esp],esi
  507f71:	mov    DWORD PTR [esp+0x8],0x7f
  507f79:	mov    ebx,DWORD PTR [esp+0x20]
  507f7d:	call   1c1964
  507f82:	jmp    507ed3
  507f87:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  507f8b:	lea    eax,[ebx+eax*8+0x4ac]
  507f92:	mov    ebx,DWORD PTR [esp+0x20]
  507f96:	jmp    507ed3
  507f9b:	lea    edi,[ebx+0x45ff0]
  507fa1:	mov    eax,DWORD PTR [edi]
  507fa3:	mov    eax,DWORD PTR [eax+0x50]
  507fa6:	cmp    DWORD PTR [eax+0x28],0x0
  507faa:	jne    508009
  507fac:	lea    eax,[ebx+0x4aff0]
  507fb2:	mov    eax,DWORD PTR [eax]
  507fb4:	mov    DWORD PTR [esp+0x24],eax
  507fb8:	lea    eax,[ebx+0x4588c]
  507fbe:	mov    eax,DWORD PTR [eax]
  507fc0:	mov    DWORD PTR [esp],eax
  507fc3:	call   20bfb2
  507fc8:	mov    DWORD PTR [esp+0x1c],eax
  507fcc:	mov    ecx,DWORD PTR [esp+0x24]
  507fd0:	mov    DWORD PTR [esp+0x28],ecx
  507fd4:	lea    ecx,[ebx+0x4a054]
  507fda:	mov    ecx,DWORD PTR [ecx]
  507fdc:	mov    DWORD PTR [esp+0xc],ecx
  507fe0:	mov    ecx,DWORD PTR [esp+0x28]
  507fe4:	mov    DWORD PTR [esp+0x8],ecx
  507fe8:	mov    DWORD PTR [esp],eax
  507feb:	mov    DWORD PTR [esp+0x4],0x0
  507ff3:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  507ff8:	mov    eax,DWORD PTR [edi]
  507ffa:	mov    eax,DWORD PTR [eax+0x50]
  507ffd:	mov    ecx,DWORD PTR [esp+0x1c]
  508001:	mov    DWORD PTR [eax+0x28],ecx
  508004:	mov    eax,DWORD PTR [edi]
  508006:	mov    eax,DWORD PTR [eax+0x50]
  508009:	mov    eax,DWORD PTR [eax+0x28]
  50800c:	lea    ecx,[ebx+0x4a058]
  508012:	mov    ecx,DWORD PTR [ecx]
  508014:	mov    DWORD PTR [esp+0xc],ecx
  508018:	mov    DWORD PTR [esp+0x8],eax
  50801c:	mov    DWORD PTR [esp+0x4],esi
  508020:	mov    DWORD PTR [esp],0x0
  508027:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  50802c:	mov    edi,eax
  50802e:	lea    eax,[ebx+0x45890]
  508034:	mov    eax,DWORD PTR [eax]
  508036:	mov    DWORD PTR [esp],eax
  508039:	call   20bfb2
  50803e:	mov    esi,eax
  508040:	lea    eax,[ebx+0x4afdc]
  508046:	mov    eax,DWORD PTR [eax]
  508048:	mov    DWORD PTR [esp+0x8],eax
  50804c:	mov    DWORD PTR [esp+0x4],edi
  508050:	mov    DWORD PTR [esp],esi
  508053:	call   4c167f  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::.ctor | System.Collections.Generic.List`1<System.Reflection.PropertyInfo>::.ctor | +8 other aliases
  508058:	mov    edi,DWORD PTR [ebp+0xc]
  50805b:	mov    DWORD PTR [edi+0x60],esi
  50805e:	lea    eax,[ebx+0x4a344]
  508064:	mov    eax,DWORD PTR [eax]
  508066:	mov    DWORD PTR [esp+0x8],eax
  50806a:	mov    DWORD PTR [esp+0x4],esi
  50806e:	mov    DWORD PTR [esp],0x0
  508075:	call   15eff96  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +31 other aliases
  50807a:	mov    esi,eax
  50807c:	test   esi,esi
  50807e:	je     50818b
  508084:	lea    eax,[ebx+0x45874]
  50808a:	mov    DWORD PTR [esp+0x24],eax
  50808e:	mov    DWORD PTR [esp+0x20],ebx
  508092:	mov    eax,DWORD PTR [eax]
  508094:	mov    ecx,DWORD PTR [esi]
  508096:	movzx  edx,WORD PTR [ecx+0xaa]
  50809d:	test   edx,edx
  50809f:	je     5080b0
  5080a1:	mov    edi,DWORD PTR [ecx+0x4c]
  5080a4:	xor    ebx,ebx
  5080a6:	cmp    DWORD PTR [edi+ebx*8],eax
  5080a9:	je     5080cc
  5080ab:	inc    ebx
  5080ac:	cmp    ebx,edx
  5080ae:	jb     5080a6
  5080b0:	mov    DWORD PTR [esp+0x4],eax
  5080b4:	mov    DWORD PTR [esp],esi
  5080b7:	mov    DWORD PTR [esp+0x8],0x2f
  5080bf:	mov    ebx,DWORD PTR [esp+0x20]
  5080c3:	call   1c1964
  5080c8:	mov    ecx,eax
  5080ca:	jmp    5080db
  5080cc:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  5080d0:	lea    ecx,[ecx+eax*8+0x22c]
  5080d7:	mov    ebx,DWORD PTR [esp+0x20]
  5080db:	mov    eax,DWORD PTR [ecx+0x4]
  5080de:	mov    DWORD PTR [esp+0x4],eax
  5080e2:	mov    DWORD PTR [esp],esi
  5080e5:	call   DWORD PTR [ecx]
  5080e7:	cmp    eax,0x1
  5080ea:	mov    edi,DWORD PTR [ebp+0xc]
  5080ed:	jne    50818b
  5080f3:	mov    DWORD PTR [esp],edi
  5080f6:	mov    DWORD PTR [esp+0x4],0x0
  5080fe:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  508103:	test   al,al
  508105:	je     50818b
  50810b:	mov    eax,DWORD PTR [edi+0x60]
  50810e:	mov    DWORD PTR [esp+0x8],eax
  508112:	mov    eax,DWORD PTR [ebp+0x8]
  508115:	mov    DWORD PTR [esp],eax
  508118:	call   508789  ; ABH.Services.Logic.BattleService::EvaluateNextCombatantOutOfOrder
  50811d:	mov    DWORD PTR [esp+0x4],eax
  508121:	mov    DWORD PTR [esp],edi
  508124:	mov    DWORD PTR [esp+0x8],0x0
  50812c:	call   ec17be  ; ABH.GameDatas.Battle.BattleGameData::set_CurrentCombatant
  508131:	mov    DWORD PTR [esp],edi
  508134:	mov    DWORD PTR [esp+0x4],0x0
  50813c:	mov    DWORD PTR [esp+0x20],ebx
  508140:	call   ec17ae  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentCombatant
  508145:	mov    esi,eax
  508147:	test   esi,esi
  508149:	je     508285
  50814f:	mov    eax,DWORD PTR [esp+0x24]
  508153:	mov    eax,DWORD PTR [eax]
  508155:	mov    ecx,DWORD PTR [esi]
  508157:	movzx  edx,WORD PTR [ecx+0xaa]
  50815e:	test   edx,edx
  508160:	je     508171
  508162:	mov    edi,DWORD PTR [ecx+0x4c]
  508165:	xor    ebx,ebx
  508167:	cmp    DWORD PTR [edi+ebx*8],eax
  50816a:	je     5081da
  50816c:	inc    ebx
  50816d:	cmp    ebx,edx
  50816f:	jb     508167
  508171:	mov    DWORD PTR [esp+0x4],eax
  508175:	mov    DWORD PTR [esp],esi
  508178:	mov    DWORD PTR [esp+0x8],0x7f
  508180:	mov    ebx,DWORD PTR [esp+0x20]
  508184:	call   1c1964
  508189:	jmp    5081e9
  50818b:	mov    DWORD PTR [esp+0x4],esi
  50818f:	mov    DWORD PTR [esp],edi
  508192:	mov    DWORD PTR [esp+0x8],0x0
  50819a:	call   ec17be  ; ABH.GameDatas.Battle.BattleGameData::set_CurrentCombatant
  50819f:	mov    esi,DWORD PTR [edi+0x60]
  5081a2:	mov    DWORD PTR [esp],edi
  5081a5:	mov    DWORD PTR [esp+0x4],0x0
  5081ad:	call   ec17ae  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentCombatant
  5081b2:	test   esi,esi
  5081b4:	je     508289
  5081ba:	lea    ecx,[ebx+0x4a458]
  5081c0:	mov    ecx,DWORD PTR [ecx]
  5081c2:	mov    DWORD PTR [esp+0x8],ecx
  5081c6:	mov    DWORD PTR [esp+0x4],eax
  5081ca:	mov    DWORD PTR [esp],esi
  5081cd:	call   4c3f21  ; shared address: System.Collections.Generic.List`1<object>::Remove | System.Collections.Generic.List`1<System.TimeZoneInfo+AdjustmentRule>::Remove | System.Collections.Generic.List`1<System.Runtime.Serialization.SerializationMap>::Remove | +40 other aliases
  5081d2:	lea    esp,[ebp-0xc]
  5081d5:	pop    esi
  5081d6:	pop    edi
  5081d7:	pop    ebx
  5081d8:	pop    ebp
  5081d9:	ret
  5081da:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  5081de:	lea    eax,[ecx+eax*8+0x4ac]
  5081e5:	mov    ebx,DWORD PTR [esp+0x20]
  5081e9:	mov    ecx,DWORD PTR [eax+0x4]
  5081ec:	mov    DWORD PTR [esp+0x8],ecx
  5081f0:	mov    DWORD PTR [esp],esi
  5081f3:	mov    DWORD PTR [esp+0x4],0x1
  5081fb:	call   DWORD PTR [eax]
  5081fd:	mov    eax,DWORD PTR [ebp+0xc]
  508200:	mov    DWORD PTR [esp],eax
  508203:	mov    DWORD PTR [esp+0x4],0x0
  50820b:	call   ec17ae  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentCombatant
  508210:	mov    esi,eax
  508212:	test   esi,esi
  508214:	je     508285
  508216:	mov    eax,DWORD PTR [esp+0x24]
  50821a:	mov    eax,DWORD PTR [eax]
  50821c:	mov    ecx,DWORD PTR [esi]
  50821e:	movzx  edx,WORD PTR [ecx+0xaa]
  508225:	test   edx,edx
  508227:	je     508238
  508229:	mov    edi,DWORD PTR [ecx+0x4c]
  50822c:	xor    ebx,ebx
  50822e:	cmp    DWORD PTR [edi+ebx*8],eax
  508231:	je     508254
  508233:	inc    ebx
  508234:	cmp    ebx,edx
  508236:	jb     50822e
  508238:	mov    DWORD PTR [esp+0x4],eax
  50823c:	mov    DWORD PTR [esp],esi
  50823f:	mov    DWORD PTR [esp+0x8],0x11
  508247:	mov    ebx,DWORD PTR [esp+0x20]
  50824b:	call   1c1964
  508250:	mov    ecx,eax
  508252:	jmp    508263
  508254:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  508258:	lea    ecx,[ecx+eax*8+0x13c]
  50825f:	mov    ebx,DWORD PTR [esp+0x20]
  508263:	mov    eax,DWORD PTR [ecx+0x4]
  508266:	mov    DWORD PTR [esp+0x4],eax
  50826a:	mov    DWORD PTR [esp],esi
  50826d:	call   DWORD PTR [ecx]
  50826f:	test   eax,eax
  508271:	mov    ecx,DWORD PTR [ebp+0xc]
  508274:	je     508289
  508276:	mov    BYTE PTR [eax+0x35],0x1
  50827a:	mov    esi,DWORD PTR [ecx+0x60]
  50827d:	mov    DWORD PTR [esp],ecx
  508280:	jmp    5081a5
  508285:	mov    ebx,DWORD PTR [esp+0x20]
  508289:	call   1fbc48
  50828e:	call   540b98