
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0141d202:
 141d202:	push   ebp
 141d203:	mov    ebp,esp
 141d205:	push   ebx
 141d206:	push   edi
 141d207:	push   esi
 141d208:	and    esp,0xfffffff0
 141d20b:	sub    esp,0x30
 141d20e:	call   141d213
 141d213:	pop    ebx
 141d214:	add    ebx,0xaf4d31
 141d21a:	mov    esi,DWORD PTR [ebp+0xc]
 141d21d:	mov    edi,DWORD PTR [ebp+0x8]
 141d220:	mov    al,BYTE PTR [ebx+0x655bb]
 141d226:	test   al,al
 141d228:	jne    141d241
 141d22a:	lea    eax,[ebx-0x65ba18]
 141d230:	mov    eax,DWORD PTR [eax]
 141d232:	mov    DWORD PTR [esp],eax
 141d235:	call   1ca6e8
 141d23a:	mov    BYTE PTR [ebx+0x655bb],0x1
 141d241:	mov    DWORD PTR [esp+0x4],esi
 141d245:	mov    DWORD PTR [esp],edi
 141d248:	mov    DWORD PTR [esp+0x8],0x0
 141d250:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
 141d255:	mov    DWORD PTR [esp+0x28],0x0
 141d25d:	mov    DWORD PTR [esp],edi
 141d260:	mov    DWORD PTR [esp+0x4],0x0
 141d268:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 141d26d:	test   eax,eax
 141d26f:	je     141d465
 141d275:	mov    DWORD PTR [esp],eax
 141d278:	mov    DWORD PTR [esp+0x4],0x0
 141d280:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 141d285:	test   eax,eax
 141d287:	je     141d465
 141d28d:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
 141d293:	mov    ecx,DWORD PTR [ecx]
 141d295:	lea    edx,[ebx+0x4a034]
 141d29b:	mov    DWORD PTR [esp+0x1c],edx
 141d29f:	mov    edx,DWORD PTR [edx]
 141d2a1:	mov    DWORD PTR [esp+0xc],edx
 141d2a5:	lea    edx,[esp+0x28]
 141d2a9:	mov    DWORD PTR [esp+0x8],edx
 141d2ad:	mov    DWORD PTR [esp+0x4],ecx
 141d2b1:	mov    DWORD PTR [esp],eax
 141d2b4:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 141d2b9:	movss  xmm0,DWORD PTR [esp+0x28]
 141d2bf:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 141d2c7:	movss  DWORD PTR [edi+0x88],xmm0
 141d2cf:	mov    DWORD PTR [esp],edi
 141d2d2:	mov    DWORD PTR [esp+0x4],0x0
 141d2da:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 141d2df:	test   eax,eax
 141d2e1:	je     141d465
 141d2e7:	mov    DWORD PTR [esp],eax
 141d2ea:	mov    DWORD PTR [esp+0x4],0x0
 141d2f2:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 141d2f7:	test   eax,eax
 141d2f9:	je     141d465
 141d2ff:	lea    ecx,[edi+0x8c]
 141d305:	lea    edx,[ebx+0x56b88]  ; literal "charge"
 141d30b:	mov    edx,DWORD PTR [edx]
 141d30d:	mov    esi,edi
 141d30f:	mov    edi,DWORD PTR [esp+0x1c]
 141d313:	mov    edi,DWORD PTR [edi]
 141d315:	mov    DWORD PTR [esp+0xc],edi
 141d319:	mov    edi,esi
 141d31b:	mov    DWORD PTR [esp+0x8],ecx
 141d31f:	mov    DWORD PTR [esp+0x4],edx
 141d323:	mov    DWORD PTR [esp],eax
 141d326:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 141d32b:	mov    DWORD PTR [esp],edi
 141d32e:	mov    DWORD PTR [esp+0x4],0x0
 141d336:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 141d33b:	test   eax,eax
 141d33d:	je     141d465
 141d343:	mov    DWORD PTR [esp],eax
 141d346:	mov    DWORD PTR [esp+0x4],0x0
 141d34e:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 141d353:	test   eax,eax
 141d355:	je     141d465
 141d35b:	lea    ecx,[edi+0x90]
 141d361:	lea    edx,[ebx+0x56b30]  ; literal "attack_count"
 141d367:	mov    edx,DWORD PTR [edx]
 141d369:	mov    esi,DWORD PTR [esp+0x1c]
 141d36d:	mov    esi,DWORD PTR [esi]
 141d36f:	mov    DWORD PTR [esp+0xc],esi
 141d373:	mov    DWORD PTR [esp+0x8],ecx
 141d377:	mov    DWORD PTR [esp+0x4],edx
 141d37b:	mov    DWORD PTR [esp],eax
 141d37e:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 141d383:	mov    DWORD PTR [esp],edi
 141d386:	mov    DWORD PTR [esp+0x4],0x0
 141d38e:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 141d393:	test   eax,eax
 141d395:	je     141d465
 141d39b:	mov    DWORD PTR [esp],eax
 141d39e:	mov    DWORD PTR [esp+0x4],0x0
 141d3a6:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 141d3ab:	test   eax,eax
 141d3ad:	je     141d465
 141d3b3:	lea    ecx,[ebx+0x4a394]
 141d3b9:	mov    ecx,DWORD PTR [ecx]
 141d3bb:	mov    DWORD PTR [esp+0x4],ecx
 141d3bf:	mov    DWORD PTR [esp],eax
 141d3c2:	call   61f499  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Keys | System.Collections.Generic.Dictionary`2<object, float>::get_Keys
 141d3c7:	lea    ecx,[ebx+0x56c14]  ; literal "surprise"
 141d3cd:	mov    ecx,DWORD PTR [ecx]
 141d3cf:	lea    edx,[ebx+0x4a398]
 141d3d5:	mov    edx,DWORD PTR [edx]
 141d3d7:	mov    DWORD PTR [esp+0xc],edx
 141d3db:	mov    DWORD PTR [esp+0x8],ecx
 141d3df:	mov    DWORD PTR [esp+0x4],eax
 141d3e3:	mov    DWORD PTR [esp],0x0
 141d3ea:	call   9bcc49  ; shared address: System.Linq.Enumerable::Contains | System.Linq.Enumerable::Contains
 141d3ef:	mov    BYTE PTR [edi+0x94],al
 141d3f5:	mov    eax,DWORD PTR [edi+0x6c]
 141d3f8:	mov    DWORD PTR [esp+0x1c],eax
 141d3fc:	lea    eax,[ebx+0x4a748]
 141d402:	mov    edi,DWORD PTR [eax]
 141d404:	lea    eax,[ebx+0x45954]
 141d40a:	mov    eax,DWORD PTR [eax]
 141d40c:	mov    DWORD PTR [esp],eax
 141d40f:	call   20bfb2
 141d414:	mov    esi,eax
 141d416:	mov    DWORD PTR [esp+0x20],edi
 141d41a:	lea    eax,[ebx+0x4a368]
 141d420:	mov    eax,DWORD PTR [eax]
 141d422:	mov    DWORD PTR [esp+0xc],eax
 141d426:	mov    eax,DWORD PTR [esp+0x20]
 141d42a:	mov    DWORD PTR [esp+0x8],eax
 141d42e:	mov    eax,DWORD PTR [ebp+0x8]
 141d431:	mov    DWORD PTR [esp+0x4],eax
 141d435:	mov    DWORD PTR [esp],esi
 141d438:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
 141d43d:	mov    ecx,DWORD PTR [esp+0x1c]
 141d441:	test   ecx,ecx
 141d443:	je     141d465
 141d445:	lea    eax,[ebx+0x4a36c]
 141d44b:	mov    eax,DWORD PTR [eax]
 141d44d:	mov    DWORD PTR [esp+0x8],eax
 141d451:	mov    DWORD PTR [esp+0x4],esi
 141d455:	mov    DWORD PTR [esp],ecx
 141d458:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 141d45d:	lea    esp,[ebp-0xc]
 141d460:	pop    esi
 141d461:	pop    edi
 141d462:	pop    ebx
 141d463:	pop    ebp
 141d464:	ret
 141d465:	call   1fbc48
 141d46a:	call   13f24e0