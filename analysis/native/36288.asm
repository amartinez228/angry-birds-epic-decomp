
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01491e49:
 1491e49:	push   ebp
 1491e4a:	mov    ebp,esp
 1491e4c:	push   ebx
 1491e4d:	push   edi
 1491e4e:	push   esi
 1491e4f:	and    esp,0xfffffff0
 1491e52:	sub    esp,0x30
 1491e55:	call   1491e5a
 1491e5a:	pop    ebx
 1491e5b:	add    ebx,0xa800ea
 1491e61:	mov    esi,DWORD PTR [ebp+0xc]
 1491e64:	mov    edi,DWORD PTR [ebp+0x8]
 1491e67:	mov    al,BYTE PTR [ebx+0x6592a]
 1491e6d:	test   al,al
 1491e6f:	jne    1491e88
 1491e71:	lea    eax,[ebx-0x670384]
 1491e77:	mov    eax,DWORD PTR [eax]
 1491e79:	mov    DWORD PTR [esp],eax
 1491e7c:	call   1ca6e8
 1491e81:	mov    BYTE PTR [ebx+0x6592a],0x1
 1491e88:	mov    DWORD PTR [esp+0x4],esi
 1491e8c:	mov    DWORD PTR [esp],edi
 1491e8f:	mov    DWORD PTR [esp+0x8],0x0
 1491e97:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
 1491e9c:	mov    DWORD PTR [esp+0x28],0x0
 1491ea4:	mov    DWORD PTR [esp],edi
 1491ea7:	mov    DWORD PTR [esp+0x4],0x0
 1491eaf:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1491eb4:	test   eax,eax
 1491eb6:	je     1492344
 1491ebc:	mov    DWORD PTR [esp],eax
 1491ebf:	mov    DWORD PTR [esp+0x4],0x0
 1491ec7:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1491ecc:	test   eax,eax
 1491ece:	je     1492344
 1491ed4:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
 1491eda:	mov    ecx,DWORD PTR [ecx]
 1491edc:	lea    edx,[ebx+0x4a034]
 1491ee2:	mov    DWORD PTR [esp+0x14],edx
 1491ee6:	mov    edx,DWORD PTR [edx]
 1491ee8:	mov    DWORD PTR [esp+0xc],edx
 1491eec:	lea    edx,[esp+0x28]
 1491ef0:	mov    DWORD PTR [esp+0x8],edx
 1491ef4:	mov    DWORD PTR [esp+0x4],ecx
 1491ef8:	mov    DWORD PTR [esp],eax
 1491efb:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1491f00:	movss  xmm0,DWORD PTR [esp+0x28]
 1491f06:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 1491f0e:	movss  DWORD PTR [edi+0x88],xmm0
 1491f16:	mov    DWORD PTR [esp],edi
 1491f19:	mov    DWORD PTR [esp+0x4],0x0
 1491f21:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1491f26:	test   eax,eax
 1491f28:	je     1492344
 1491f2e:	mov    DWORD PTR [esp],eax
 1491f31:	mov    DWORD PTR [esp+0x4],0x0
 1491f39:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1491f3e:	test   eax,eax
 1491f40:	je     1492344
 1491f46:	lea    ecx,[edi+0x8c]
 1491f4c:	lea    edx,[ebx+0x56b88]  ; literal "charge"
 1491f52:	mov    edx,DWORD PTR [edx]
 1491f54:	mov    esi,DWORD PTR [esp+0x14]
 1491f58:	mov    esi,DWORD PTR [esi]
 1491f5a:	mov    DWORD PTR [esp+0xc],esi
 1491f5e:	mov    DWORD PTR [esp+0x8],ecx
 1491f62:	mov    DWORD PTR [esp+0x4],edx
 1491f66:	mov    DWORD PTR [esp],eax
 1491f69:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1491f6e:	mov    DWORD PTR [esp],edi
 1491f71:	mov    DWORD PTR [esp+0x4],0x0
 1491f79:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1491f7e:	test   eax,eax
 1491f80:	je     1492344
 1491f86:	mov    DWORD PTR [esp],eax
 1491f89:	mov    DWORD PTR [esp+0x4],0x0
 1491f91:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1491f96:	test   eax,eax
 1491f98:	je     1492344
 1491f9e:	lea    ecx,[edi+0x90]
 1491fa4:	lea    edx,[ebx+0x56b30]  ; literal "attack_count"
 1491faa:	mov    edx,DWORD PTR [edx]
 1491fac:	mov    esi,DWORD PTR [esp+0x14]
 1491fb0:	mov    esi,DWORD PTR [esi]
 1491fb2:	mov    DWORD PTR [esp+0xc],esi
 1491fb6:	mov    DWORD PTR [esp+0x8],ecx
 1491fba:	mov    DWORD PTR [esp+0x4],edx
 1491fbe:	mov    DWORD PTR [esp],eax
 1491fc1:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1491fc6:	mov    DWORD PTR [esp],edi
 1491fc9:	mov    DWORD PTR [esp+0x4],0x0
 1491fd1:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1491fd6:	test   eax,eax
 1491fd8:	je     1492344
 1491fde:	mov    DWORD PTR [esp],eax
 1491fe1:	mov    DWORD PTR [esp+0x4],0x0
 1491fe9:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1491fee:	test   eax,eax
 1491ff0:	je     1492344
 1491ff6:	lea    ecx,[edi+0x94]
 1491ffc:	lea    edx,[ebx+0x56ba4]  ; literal "chance"
 1492002:	mov    edx,DWORD PTR [edx]
 1492004:	mov    esi,DWORD PTR [esp+0x14]
 1492008:	mov    esi,DWORD PTR [esi]
 149200a:	mov    DWORD PTR [esp+0xc],esi
 149200e:	mov    DWORD PTR [esp+0x8],ecx
 1492012:	mov    DWORD PTR [esp+0x4],edx
 1492016:	mov    DWORD PTR [esp],eax
 1492019:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 149201e:	mov    DWORD PTR [esp],edi
 1492021:	mov    DWORD PTR [esp+0x4],0x0
 1492029:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 149202e:	test   eax,eax
 1492030:	je     1492344
 1492036:	mov    DWORD PTR [esp],eax
 1492039:	mov    DWORD PTR [esp+0x4],0x0
 1492041:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1492046:	test   eax,eax
 1492048:	je     1492344
 149204e:	lea    ecx,[edi+0x9c]
 1492054:	lea    edx,[ebx+0x53b94]  ; literal "duration"
 149205a:	mov    edx,DWORD PTR [edx]
 149205c:	mov    esi,DWORD PTR [esp+0x14]
 1492060:	mov    esi,DWORD PTR [esi]
 1492062:	mov    DWORD PTR [esp+0xc],esi
 1492066:	mov    DWORD PTR [esp+0x8],ecx
 149206a:	mov    DWORD PTR [esp+0x4],edx
 149206e:	mov    DWORD PTR [esp],eax
 1492071:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1492076:	mov    DWORD PTR [esp],edi
 1492079:	mov    DWORD PTR [esp+0x4],0x0
 1492081:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1492086:	test   eax,eax
 1492088:	je     1492344
 149208e:	mov    DWORD PTR [esp],eax
 1492091:	mov    DWORD PTR [esp+0x4],0x0
 1492099:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 149209e:	test   eax,eax
 14920a0:	je     1492344
 14920a6:	lea    ecx,[ebx+0x56d20]  ; literal "freeze"
 14920ac:	mov    ecx,DWORD PTR [ecx]
 14920ae:	lea    esi,[ebx+0x4a014]
 14920b4:	mov    edx,DWORD PTR [esi]
 14920b6:	mov    DWORD PTR [esp+0x8],edx
 14920ba:	mov    DWORD PTR [esp+0x4],ecx
 14920be:	mov    DWORD PTR [esp],eax
 14920c1:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 14920c6:	mov    BYTE PTR [edi+0xa2],al
 14920cc:	mov    DWORD PTR [esp],edi
 14920cf:	mov    DWORD PTR [esp+0x4],0x0
 14920d7:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14920dc:	test   eax,eax
 14920de:	je     1492344
 14920e4:	mov    DWORD PTR [esp],eax
 14920e7:	mov    DWORD PTR [esp+0x4],0x0
 14920ef:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14920f4:	test   eax,eax
 14920f6:	je     1492344
 14920fc:	lea    ecx,[ebx+0x56d24]  ; literal "tentacle_grab"
 1492102:	mov    ecx,DWORD PTR [ecx]
 1492104:	mov    edx,DWORD PTR [esi]
 1492106:	mov    DWORD PTR [esp+0x8],edx
 149210a:	mov    DWORD PTR [esp+0x4],ecx
 149210e:	mov    DWORD PTR [esp],eax
 1492111:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 1492116:	mov    BYTE PTR [edi+0xa3],al
 149211c:	mov    DWORD PTR [esp],edi
 149211f:	mov    DWORD PTR [esp+0x4],0x0
 1492127:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 149212c:	test   eax,eax
 149212e:	je     1492344
 1492134:	mov    DWORD PTR [esp],eax
 1492137:	mov    DWORD PTR [esp+0x4],0x0
 149213f:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1492144:	test   eax,eax
 1492146:	je     1492344
 149214c:	lea    ecx,[ebx+0x56d28]  ; literal "release_on_death"
 1492152:	mov    ecx,DWORD PTR [ecx]
 1492154:	mov    edx,DWORD PTR [esi]
 1492156:	mov    DWORD PTR [esp+0x8],edx
 149215a:	mov    DWORD PTR [esp+0x4],ecx
 149215e:	mov    DWORD PTR [esp],eax
 1492161:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 1492166:	mov    BYTE PTR [edi+0xa4],al
 149216c:	mov    DWORD PTR [esp],edi
 149216f:	mov    DWORD PTR [esp+0x4],0x0
 1492177:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 149217c:	test   eax,eax
 149217e:	je     1492344
 1492184:	mov    DWORD PTR [esp+0x10],esi
 1492188:	mov    DWORD PTR [esp],eax
 149218b:	mov    DWORD PTR [esp+0x4],0x0
 1492193:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1492198:	test   eax,eax
 149219a:	je     1492344
 14921a0:	lea    esi,[edi+0x98]
 14921a6:	lea    ecx,[ebx+0x56d2c]  ; literal "chance_to_stun_vs_wet"
 14921ac:	mov    ecx,DWORD PTR [ecx]
 14921ae:	mov    edx,DWORD PTR [esp+0x14]
 14921b2:	mov    edx,DWORD PTR [edx]
 14921b4:	mov    DWORD PTR [esp+0xc],edx
 14921b8:	mov    DWORD PTR [esp+0x8],esi
 14921bc:	mov    DWORD PTR [esp+0x4],ecx
 14921c0:	mov    DWORD PTR [esp],eax
 14921c3:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 14921c8:	test   al,al
 14921ca:	je     14921e7
 14921cc:	movss  xmm0,DWORD PTR [esi]
 14921d0:	xorps  xmm1,xmm1
 14921d3:	ucomiss xmm0,xmm1
 14921d6:	jbe    14921e7
 14921d8:	mov    BYTE PTR [edi+0xa1],0x1
 14921df:	movss  DWORD PTR [edi+0x94],xmm0
 14921e7:	mov    DWORD PTR [esp],edi
 14921ea:	mov    DWORD PTR [esp+0x4],0x0
 14921f2:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14921f7:	test   eax,eax
 14921f9:	mov    esi,DWORD PTR [esp+0x10]
 14921fd:	je     1492344
 1492203:	mov    DWORD PTR [esp],eax
 1492206:	mov    DWORD PTR [esp+0x4],0x0
 149220e:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1492213:	test   eax,eax
 1492215:	je     1492344
 149221b:	lea    ecx,[ebx+0x56c74]  ; literal "use_skill_asset"
 1492221:	mov    ecx,DWORD PTR [ecx]
 1492223:	mov    edx,DWORD PTR [esi]
 1492225:	mov    DWORD PTR [esp+0x8],edx
 1492229:	mov    DWORD PTR [esp+0x4],ecx
 149222d:	mov    DWORD PTR [esp],eax
 1492230:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 1492235:	mov    BYTE PTR [edi+0xa0],al
 149223b:	mov    edi,DWORD PTR [edi+0x50]
 149223e:	lea    esi,[ebx+0x459c4]
 1492244:	mov    eax,DWORD PTR [esi]
 1492246:	mov    eax,DWORD PTR [eax+0x50]
 1492249:	cmp    DWORD PTR [eax],0x0
 149224c:	jne    14922a5
 149224e:	lea    eax,[ebx+0x4a49c]
 1492254:	mov    eax,DWORD PTR [eax]
 1492256:	mov    DWORD PTR [esp+0x14],eax
 149225a:	lea    eax,[ebx+0x459c8]
 1492260:	mov    eax,DWORD PTR [eax]
 1492262:	mov    DWORD PTR [esp],eax
 1492265:	call   20bfb2
 149226a:	mov    DWORD PTR [esp+0x10],eax
 149226e:	mov    ecx,DWORD PTR [esp+0x14]
 1492272:	mov    DWORD PTR [esp+0x20],ecx
 1492276:	lea    ecx,[ebx+0x4a4a0]
 149227c:	mov    ecx,DWORD PTR [ecx]
 149227e:	mov    DWORD PTR [esp+0xc],ecx
 1492282:	mov    ecx,DWORD PTR [esp+0x20]
 1492286:	mov    DWORD PTR [esp+0x8],ecx
 149228a:	mov    DWORD PTR [esp],eax
 149228d:	mov    DWORD PTR [esp+0x4],0x0
 1492295:	call   17d8881  ; shared address: System.Func`4<ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`4<object, object, object, float>::.ctor
 149229a:	mov    eax,DWORD PTR [esi]
 149229c:	mov    eax,DWORD PTR [eax+0x50]
 149229f:	mov    ecx,DWORD PTR [esp+0x10]
 14922a3:	mov    DWORD PTR [eax],ecx
 14922a5:	test   edi,edi
 14922a7:	je     1492344
 14922ad:	mov    eax,DWORD PTR [esi]
 14922af:	mov    eax,DWORD PTR [eax+0x50]
 14922b2:	mov    eax,DWORD PTR [eax]
 14922b4:	lea    ecx,[ebx+0x4a4a4]
 14922ba:	mov    ecx,DWORD PTR [ecx]
 14922bc:	mov    DWORD PTR [esp+0x8],ecx
 14922c0:	mov    DWORD PTR [esp+0x4],eax
 14922c4:	mov    DWORD PTR [esp],edi
 14922c7:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 14922cc:	mov    edi,DWORD PTR [ebp+0x8]
 14922cf:	mov    eax,DWORD PTR [edi+0x6c]
 14922d2:	mov    DWORD PTR [esp+0x14],eax
 14922d6:	lea    eax,[ebx+0x4a4a8]
 14922dc:	mov    eax,DWORD PTR [eax]
 14922de:	mov    DWORD PTR [esp+0x10],eax
 14922e2:	lea    eax,[ebx+0x45954]
 14922e8:	mov    eax,DWORD PTR [eax]
 14922ea:	mov    DWORD PTR [esp],eax
 14922ed:	call   20bfb2
 14922f2:	mov    esi,eax
 14922f4:	mov    eax,DWORD PTR [esp+0x10]
 14922f8:	mov    DWORD PTR [esp+0x18],eax
 14922fc:	lea    eax,[ebx+0x4a368]
 1492302:	mov    eax,DWORD PTR [eax]
 1492304:	mov    DWORD PTR [esp+0xc],eax
 1492308:	mov    eax,DWORD PTR [esp+0x18]
 149230c:	mov    DWORD PTR [esp+0x8],eax
 1492310:	mov    DWORD PTR [esp+0x4],edi
 1492314:	mov    DWORD PTR [esp],esi
 1492317:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
 149231c:	mov    ecx,DWORD PTR [esp+0x14]
 1492320:	test   ecx,ecx
 1492322:	je     1492344
 1492324:	lea    eax,[ebx+0x4a36c]
 149232a:	mov    eax,DWORD PTR [eax]
 149232c:	mov    DWORD PTR [esp+0x8],eax
 1492330:	mov    DWORD PTR [esp+0x4],esi
 1492334:	mov    DWORD PTR [esp],ecx
 1492337:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 149233c:	lea    esp,[ebp-0xc]
 149233f:	pop    esi
 1492340:	pop    edi
 1492341:	pop    ebx
 1492342:	pop    ebp
 1492343:	ret
 1492344:	call   1fbc48
 1492349:	call   14943fc