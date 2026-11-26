
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eea204:
  eea204:	push   ebp
  eea205:	mov    ebp,esp
  eea207:	push   ebx
  eea208:	push   edi
  eea209:	push   esi
  eea20a:	and    esp,0xfffffff0
  eea20d:	sub    esp,0x30
  eea210:	call   eea215
  eea215:	pop    ebx
  eea216:	add    ebx,0x1027d2f
  eea21c:	mov    esi,DWORD PTR [ebp+0xc]
  eea21f:	mov    edi,DWORD PTR [ebp+0x8]
  eea222:	mov    al,BYTE PTR [ebx+0x627ee]
  eea228:	test   al,al
  eea22a:	jne    eea243
  eea22c:	lea    eax,[ebx-0x670454]
  eea232:	mov    eax,DWORD PTR [eax]
  eea234:	mov    DWORD PTR [esp],eax
  eea237:	call   1ca6e8
  eea23c:	mov    BYTE PTR [ebx+0x627ee],0x1
  eea243:	mov    DWORD PTR [esp+0x4],esi
  eea247:	mov    DWORD PTR [esp],edi
  eea24a:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
  eea24f:	mov    DWORD PTR [esp+0x28],0x0
  eea257:	mov    eax,DWORD PTR [edi+0x8]
  eea25a:	test   eax,eax
  eea25c:	je     eea411
  eea262:	mov    DWORD PTR [esp],eax
  eea265:	mov    DWORD PTR [esp+0x4],0x0
  eea26d:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eea272:	test   eax,eax
  eea274:	je     eea411
  eea27a:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
  eea280:	mov    ecx,DWORD PTR [ecx]
  eea282:	lea    edx,[ebx+0x4a034]
  eea288:	mov    DWORD PTR [esp+0x1c],edx
  eea28c:	mov    edx,DWORD PTR [edx]
  eea28e:	mov    DWORD PTR [esp+0xc],edx
  eea292:	lea    edx,[esp+0x28]
  eea296:	mov    DWORD PTR [esp+0x8],edx
  eea29a:	mov    DWORD PTR [esp+0x4],ecx
  eea29e:	mov    DWORD PTR [esp],eax
  eea2a1:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eea2a6:	movss  xmm0,DWORD PTR [esp+0x28]
  eea2ac:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eea2b4:	movss  DWORD PTR [edi+0x88],xmm0
  eea2bc:	mov    eax,DWORD PTR [edi+0x8]
  eea2bf:	test   eax,eax
  eea2c1:	je     eea411
  eea2c7:	mov    DWORD PTR [esp],eax
  eea2ca:	mov    DWORD PTR [esp+0x4],0x0
  eea2d2:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eea2d7:	test   eax,eax
  eea2d9:	je     eea411
  eea2df:	lea    ecx,[edi+0x90]
  eea2e5:	lea    edx,[ebx+0x56cd4]  ; literal "damage_against_debuff"
  eea2eb:	mov    edx,DWORD PTR [edx]
  eea2ed:	mov    esi,edi
  eea2ef:	mov    edi,DWORD PTR [esp+0x1c]
  eea2f3:	mov    edi,DWORD PTR [edi]
  eea2f5:	mov    DWORD PTR [esp+0xc],edi
  eea2f9:	mov    DWORD PTR [esp+0x8],ecx
  eea2fd:	mov    DWORD PTR [esp+0x4],edx
  eea301:	mov    DWORD PTR [esp],eax
  eea304:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eea309:	mov    eax,DWORD PTR [esi+0x8]
  eea30c:	test   eax,eax
  eea30e:	je     eea411
  eea314:	mov    DWORD PTR [esp],eax
  eea317:	mov    DWORD PTR [esp+0x4],0x0
  eea31f:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eea324:	test   eax,eax
  eea326:	je     eea411
  eea32c:	lea    ecx,[esi+0x8c]
  eea332:	lea    edx,[ebx+0x56b88]  ; literal "charge"
  eea338:	mov    edx,DWORD PTR [edx]
  eea33a:	mov    edi,DWORD PTR [esp+0x1c]
  eea33e:	mov    edi,DWORD PTR [edi]
  eea340:	mov    DWORD PTR [esp+0xc],edi
  eea344:	mov    edi,esi
  eea346:	mov    DWORD PTR [esp+0x8],ecx
  eea34a:	mov    DWORD PTR [esp+0x4],edx
  eea34e:	mov    DWORD PTR [esp],eax
  eea351:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eea356:	mov    eax,DWORD PTR [edi+0x8]
  eea359:	test   eax,eax
  eea35b:	je     eea411
  eea361:	mov    DWORD PTR [esp],eax
  eea364:	mov    DWORD PTR [esp+0x4],0x0
  eea36c:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eea371:	test   eax,eax
  eea373:	je     eea411
  eea379:	lea    ecx,[edi+0x94]
  eea37f:	lea    edx,[ebx+0x56b30]  ; literal "attack_count"
  eea385:	mov    edx,DWORD PTR [edx]
  eea387:	mov    esi,DWORD PTR [esp+0x1c]
  eea38b:	mov    esi,DWORD PTR [esi]
  eea38d:	mov    DWORD PTR [esp+0xc],esi
  eea391:	mov    DWORD PTR [esp+0x8],ecx
  eea395:	mov    DWORD PTR [esp+0x4],edx
  eea399:	mov    DWORD PTR [esp],eax
  eea39c:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eea3a1:	mov    eax,DWORD PTR [edi+0x78]
  eea3a4:	mov    DWORD PTR [esp+0x1c],eax
  eea3a8:	lea    eax,[ebx+0x4a42c]
  eea3ae:	mov    edi,DWORD PTR [eax]
  eea3b0:	lea    eax,[ebx+0x4599c]
  eea3b6:	mov    eax,DWORD PTR [eax]
  eea3b8:	mov    DWORD PTR [esp],eax
  eea3bb:	call   20bfb2
  eea3c0:	mov    esi,eax
  eea3c2:	mov    DWORD PTR [esp+0x20],edi
  eea3c6:	lea    eax,[ebx+0x4a424]
  eea3cc:	mov    eax,DWORD PTR [eax]
  eea3ce:	mov    DWORD PTR [esp+0xc],eax
  eea3d2:	mov    eax,DWORD PTR [esp+0x20]
  eea3d6:	mov    DWORD PTR [esp+0x8],eax
  eea3da:	mov    eax,DWORD PTR [ebp+0x8]
  eea3dd:	mov    DWORD PTR [esp+0x4],eax
  eea3e1:	mov    DWORD PTR [esp],esi
  eea3e4:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  eea3e9:	mov    ecx,DWORD PTR [esp+0x1c]
  eea3ed:	test   ecx,ecx
  eea3ef:	je     eea411
  eea3f1:	lea    eax,[ebx+0x4a428]
  eea3f7:	mov    eax,DWORD PTR [eax]
  eea3f9:	mov    DWORD PTR [esp+0x8],eax
  eea3fd:	mov    DWORD PTR [esp+0x4],esi
  eea401:	mov    DWORD PTR [esp],ecx
  eea404:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eea409:	lea    esp,[ebp-0xc]
  eea40c:	pop    esi
  eea40d:	pop    edi
  eea40e:	pop    ebx
  eea40f:	pop    ebp
  eea410:	ret
  eea411:	call   1fbc48
  eea416:	call   ebbb41