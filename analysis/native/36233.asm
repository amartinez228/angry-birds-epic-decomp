
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eee0fa:
  eee0fa:	push   ebp
  eee0fb:	mov    ebp,esp
  eee0fd:	push   ebx
  eee0fe:	push   edi
  eee0ff:	push   esi
  eee100:	and    esp,0xfffffff0
  eee103:	sub    esp,0x60
  eee106:	call   eee10b
  eee10b:	pop    ebx
  eee10c:	add    ebx,0x1023e39
  eee112:	mov    esi,DWORD PTR [ebp+0xc]
  eee115:	mov    edi,DWORD PTR [ebp+0x8]
  eee118:	mov    al,BYTE PTR [ebx+0x62804]
  eee11e:	test   al,al
  eee120:	jne    eee139
  eee122:	lea    eax,[ebx-0x670408]
  eee128:	mov    eax,DWORD PTR [eax]
  eee12a:	mov    DWORD PTR [esp],eax
  eee12d:	call   1ca6e8
  eee132:	mov    BYTE PTR [ebx+0x62804],0x1
  eee139:	xorps  xmm0,xmm0
  eee13c:	movaps XMMWORD PTR [esp+0x40],xmm0
  eee141:	mov    DWORD PTR [esp+0x50],0x0
  eee149:	mov    DWORD PTR [esp+0x4],esi
  eee14d:	mov    DWORD PTR [esp],edi
  eee150:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
  eee155:	mov    DWORD PTR [esp+0x58],0x0
  eee15d:	mov    eax,DWORD PTR [edi+0x8]
  eee160:	test   eax,eax
  eee162:	je     eee6ac
  eee168:	mov    DWORD PTR [esp],eax
  eee16b:	mov    DWORD PTR [esp+0x4],0x0
  eee173:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee178:	test   eax,eax
  eee17a:	je     eee6ac
  eee180:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
  eee186:	mov    ecx,DWORD PTR [ecx]
  eee188:	lea    edx,[ebx+0x4a034]
  eee18e:	mov    DWORD PTR [esp+0x28],edx
  eee192:	mov    edx,DWORD PTR [edx]
  eee194:	mov    DWORD PTR [esp+0xc],edx
  eee198:	lea    edx,[esp+0x58]
  eee19c:	mov    DWORD PTR [esp+0x8],edx
  eee1a0:	mov    DWORD PTR [esp+0x4],ecx
  eee1a4:	mov    DWORD PTR [esp],eax
  eee1a7:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eee1ac:	movss  xmm0,DWORD PTR [esp+0x58]
  eee1b2:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eee1ba:	movss  DWORD PTR [edi+0x88],xmm0
  eee1c2:	mov    eax,DWORD PTR [edi+0x8]
  eee1c5:	test   eax,eax
  eee1c7:	je     eee6ac
  eee1cd:	mov    DWORD PTR [esp],eax
  eee1d0:	mov    DWORD PTR [esp+0x4],0x0
  eee1d8:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee1dd:	test   eax,eax
  eee1df:	je     eee6ac
  eee1e5:	lea    ecx,[edi+0x8c]
  eee1eb:	lea    edx,[ebx+0x56b88]  ; literal "charge"
  eee1f1:	mov    edx,DWORD PTR [edx]
  eee1f3:	mov    esi,edi
  eee1f5:	mov    edi,DWORD PTR [esp+0x28]
  eee1f9:	mov    edi,DWORD PTR [edi]
  eee1fb:	mov    DWORD PTR [esp+0xc],edi
  eee1ff:	mov    DWORD PTR [esp+0x8],ecx
  eee203:	mov    DWORD PTR [esp+0x4],edx
  eee207:	mov    DWORD PTR [esp],eax
  eee20a:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eee20f:	mov    eax,DWORD PTR [esi+0x8]
  eee212:	test   eax,eax
  eee214:	je     eee6ac
  eee21a:	mov    DWORD PTR [esp],eax
  eee21d:	mov    DWORD PTR [esp+0x4],0x0
  eee225:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee22a:	test   eax,eax
  eee22c:	je     eee6ac
  eee232:	lea    ecx,[esi+0x90]
  eee238:	lea    edx,[ebx+0x56b30]  ; literal "attack_count"
  eee23e:	mov    edx,DWORD PTR [edx]
  eee240:	mov    edi,DWORD PTR [esp+0x28]
  eee244:	mov    edi,DWORD PTR [edi]
  eee246:	mov    DWORD PTR [esp+0xc],edi
  eee24a:	mov    DWORD PTR [esp+0x8],ecx
  eee24e:	mov    DWORD PTR [esp+0x4],edx
  eee252:	mov    DWORD PTR [esp],eax
  eee255:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eee25a:	mov    eax,DWORD PTR [esi+0x8]
  eee25d:	test   eax,eax
  eee25f:	je     eee6ac
  eee265:	mov    DWORD PTR [esp],eax
  eee268:	mov    DWORD PTR [esp+0x4],0x0
  eee270:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee275:	test   eax,eax
  eee277:	je     eee6ac
  eee27d:	lea    ecx,[esi+0x9c]
  eee283:	lea    edx,[ebx+0x56ce4]  ; literal "additional_enemies_affected"
  eee289:	mov    edx,DWORD PTR [edx]
  eee28b:	mov    edi,DWORD PTR [esp+0x28]
  eee28f:	mov    edi,DWORD PTR [edi]
  eee291:	mov    DWORD PTR [esp+0xc],edi
  eee295:	mov    DWORD PTR [esp+0x8],ecx
  eee299:	mov    DWORD PTR [esp+0x4],edx
  eee29d:	mov    DWORD PTR [esp],eax
  eee2a0:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eee2a5:	mov    eax,DWORD PTR [esi+0x8]
  eee2a8:	test   eax,eax
  eee2aa:	je     eee6ac
  eee2b0:	mov    DWORD PTR [esp],eax
  eee2b3:	mov    DWORD PTR [esp+0x4],0x0
  eee2bb:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee2c0:	test   eax,eax
  eee2c2:	je     eee6ac
  eee2c8:	lea    ecx,[esi+0x98]
  eee2ce:	lea    edx,[ebx+0x56ce8]  ; literal "collateral_damage_in_percent"
  eee2d4:	mov    edx,DWORD PTR [edx]
  eee2d6:	mov    edi,DWORD PTR [esp+0x28]
  eee2da:	mov    edi,DWORD PTR [edi]
  eee2dc:	mov    DWORD PTR [esp+0xc],edi
  eee2e0:	mov    DWORD PTR [esp+0x8],ecx
  eee2e4:	mov    DWORD PTR [esp+0x4],edx
  eee2e8:	mov    DWORD PTR [esp],eax
  eee2eb:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eee2f0:	mov    eax,DWORD PTR [esi+0x8]
  eee2f3:	test   eax,eax
  eee2f5:	je     eee6ac
  eee2fb:	mov    DWORD PTR [esp],eax
  eee2fe:	mov    DWORD PTR [esp+0x4],0x0
  eee306:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee30b:	test   eax,eax
  eee30d:	je     eee6ac
  eee313:	lea    ecx,[esi+0xa4]
  eee319:	lea    edx,[ebx+0x56ba4]  ; literal "chance"
  eee31f:	mov    edx,DWORD PTR [edx]
  eee321:	mov    edi,DWORD PTR [esp+0x28]
  eee325:	mov    edi,DWORD PTR [edi]
  eee327:	mov    DWORD PTR [esp+0xc],edi
  eee32b:	mov    DWORD PTR [esp+0x8],ecx
  eee32f:	mov    DWORD PTR [esp+0x4],edx
  eee333:	mov    DWORD PTR [esp],eax
  eee336:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eee33b:	mov    eax,DWORD PTR [esi+0x8]
  eee33e:	test   eax,eax
  eee340:	je     eee6ac
  eee346:	mov    DWORD PTR [esp],eax
  eee349:	mov    DWORD PTR [esp+0x4],0x0
  eee351:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee356:	test   eax,eax
  eee358:	je     eee6ac
  eee35e:	lea    ecx,[esi+0xa8]
  eee364:	lea    edx,[ebx+0x56cec]  ; literal "collateral_stun_chance"
  eee36a:	mov    edx,DWORD PTR [edx]
  eee36c:	mov    edi,DWORD PTR [esp+0x28]
  eee370:	mov    edi,DWORD PTR [edi]
  eee372:	mov    DWORD PTR [esp+0xc],edi
  eee376:	mov    edi,esi
  eee378:	mov    DWORD PTR [esp+0x8],ecx
  eee37c:	mov    DWORD PTR [esp+0x4],edx
  eee380:	mov    DWORD PTR [esp],eax
  eee383:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eee388:	mov    eax,DWORD PTR [edi+0x8]
  eee38b:	test   eax,eax
  eee38d:	je     eee6ac
  eee393:	mov    DWORD PTR [esp],eax
  eee396:	mov    DWORD PTR [esp+0x4],0x0
  eee39e:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee3a3:	test   eax,eax
  eee3a5:	je     eee6ac
  eee3ab:	lea    ecx,[edi+0xac]
  eee3b1:	lea    edx,[ebx+0x56bc0]  ; literal "stun_duration"
  eee3b7:	mov    edx,DWORD PTR [edx]
  eee3b9:	mov    esi,DWORD PTR [esp+0x28]
  eee3bd:	mov    esi,DWORD PTR [esi]
  eee3bf:	mov    DWORD PTR [esp+0xc],esi
  eee3c3:	mov    DWORD PTR [esp+0x8],ecx
  eee3c7:	mov    DWORD PTR [esp+0x4],edx
  eee3cb:	mov    DWORD PTR [esp],eax
  eee3ce:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eee3d3:	movss  xmm0,DWORD PTR [edi+0x98]
  eee3db:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eee3e3:	movss  DWORD PTR [edi+0x94],xmm0
  eee3eb:	mov    eax,DWORD PTR [edi+0x8]
  eee3ee:	test   eax,eax
  eee3f0:	je     eee6ac
  eee3f6:	mov    DWORD PTR [esp],eax
  eee3f9:	mov    DWORD PTR [esp+0x4],0x0
  eee401:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee406:	test   eax,eax
  eee408:	je     eee6ac
  eee40e:	lea    ecx,[ebx+0x56c74]  ; literal "use_skill_asset"
  eee414:	mov    ecx,DWORD PTR [ecx]
  eee416:	lea    edx,[ebx+0x4a014]
  eee41c:	mov    edx,DWORD PTR [edx]
  eee41e:	mov    DWORD PTR [esp+0x8],edx
  eee422:	mov    DWORD PTR [esp+0x4],ecx
  eee426:	mov    DWORD PTR [esp],eax
  eee429:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eee42e:	mov    BYTE PTR [edi+0xb0],al
  eee434:	mov    eax,DWORD PTR [edi+0x8]
  eee437:	test   eax,eax
  eee439:	je     eee6ac
  eee43f:	mov    DWORD PTR [esp],eax
  eee442:	mov    DWORD PTR [esp+0x4],0x0
  eee44a:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee44f:	test   eax,eax
  eee451:	je     eee6ac
  eee457:	lea    ecx,[ebx+0x4a394]
  eee45d:	mov    ecx,DWORD PTR [ecx]
  eee45f:	mov    DWORD PTR [esp+0x4],ecx
  eee463:	mov    DWORD PTR [esp],eax
  eee466:	call   61f499  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Keys | System.Collections.Generic.Dictionary`2<object, float>::get_Keys
  eee46b:	test   eax,eax
  eee46d:	je     eee6ac
  eee473:	lea    ecx,[ebx+0x4a440]
  eee479:	mov    ecx,DWORD PTR [ecx]
  eee47b:	mov    DWORD PTR [esp+0x8],ecx
  eee47f:	mov    DWORD PTR [esp+0x4],eax
  eee483:	lea    eax,[esp+0x40]
  eee487:	mov    DWORD PTR [esp],eax
  eee48a:	call   15a7e7f  ; shared address: System.Collections.Generic.Dictionary`2+KeyCollection<string, float>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<object, float>::GetEnumerator
  eee48f:	sub    esp,0x4
  eee492:	lea    edi,[ebx+0x4a448]
  eee498:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
  eee4a0:	movss  DWORD PTR [esp+0x28],xmm0
  eee4a6:	movss  xmm0,DWORD PTR [ebx-0x64f964]
  eee4ae:	movss  DWORD PTR [esp+0x24],xmm0
  eee4b4:	jmp    eee4bf
  eee4b6:	mov    eax,DWORD PTR [ebp+0x8]
  eee4b9:	mov    DWORD PTR [eax+0xa0],esi
  eee4bf:	mov    eax,DWORD PTR [edi]
  eee4c1:	mov    DWORD PTR [esp+0x4],eax
  eee4c5:	lea    eax,[esp+0x40]
  eee4c9:	mov    DWORD PTR [esp],eax
  eee4cc:	call   11ad4e3
  eee4d1:	test   al,al
  eee4d3:	je     eee55a
  eee4d9:	lea    eax,[ebx+0x4a444]
  eee4df:	mov    eax,DWORD PTR [eax]
  eee4e1:	mov    DWORD PTR [esp+0x4],eax
  eee4e5:	lea    eax,[esp+0x40]
  eee4e9:	mov    DWORD PTR [esp],eax
  eee4ec:	call   11ad572
  eee4f1:	mov    esi,eax
  eee4f3:	mov    eax,DWORD PTR [ebp+0x8]
  eee4f6:	mov    eax,DWORD PTR [eax+0x8]
  eee4f9:	test   eax,eax
  eee4fb:	je     eee567
  eee4fd:	mov    DWORD PTR [esp],eax
  eee500:	mov    DWORD PTR [esp+0x4],0x0
  eee508:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eee50d:	test   eax,eax
  eee50f:	je     eee571
  eee511:	lea    ecx,[ebx+0x4a0a8]
  eee517:	mov    ecx,DWORD PTR [ecx]
  eee519:	mov    DWORD PTR [esp+0x8],ecx
  eee51d:	mov    DWORD PTR [esp+0x4],esi
  eee521:	mov    DWORD PTR [esp],eax
  eee524:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  eee529:	fstp   DWORD PTR [esp+0x2c]
  eee52d:	movss  xmm0,DWORD PTR [esp+0x2c]
  eee533:	addss  xmm0,DWORD PTR [esp+0x28]
  eee539:	movss  xmm1,DWORD PTR [esp+0x24]
  eee53f:	andps  xmm0,xmm1
  eee542:	movss  xmm1,DWORD PTR [ebx-0x6cefe4]
  eee54a:	ucomiss xmm1,xmm0
  eee54d:	jbe    eee4bf
  eee553:	jmp    eee4b6
  eee558:	jmp    eee57b
  eee55a:	xor    esi,esi
  eee55c:	mov    al,0x1
  eee55e:	mov    DWORD PTR [esp+0x28],eax
  eee562:	mov    edi,DWORD PTR [ebp+0x8]
  eee565:	jmp    eee59e
  eee567:	call   1fbc48
  eee56c:	call   ebbb41
  eee571:	call   1fbc48
  eee576:	jmp    eee6be
  eee57b:	mov    edi,DWORD PTR [ebp+0x8]
  eee57e:	cmp    edx,0x1
  eee581:	jne    eee6b6
  eee587:	mov    DWORD PTR [esp],eax
  eee58a:	call   1ba3f0
  eee58f:	mov    esi,DWORD PTR [eax]
  eee591:	call   1b9ce0
  eee596:	mov    DWORD PTR [esp+0x28],0x0
  eee59e:	lea    eax,[ebx+0x4a44c]
  eee5a4:	mov    eax,DWORD PTR [eax]
  eee5a6:	mov    DWORD PTR [esp+0x4],eax
  eee5aa:	lea    eax,[esp+0x40]
  eee5ae:	mov    DWORD PTR [esp],eax
  eee5b1:	call   11ad478
  eee5b6:	mov    eax,DWORD PTR [esp+0x28]
  eee5ba:	test   al,al
  eee5bc:	jne    eee5ca
  eee5be:	test   esi,esi
  eee5c0:	je     eee5ca
  eee5c2:	mov    DWORD PTR [esp],esi
  eee5c5:	call   1fbb20
  eee5ca:	mov    eax,DWORD PTR [edi+0x74]
  eee5cd:	mov    DWORD PTR [esp+0x28],eax
  eee5d1:	lea    eax,[ebx+0x4a464]
  eee5d7:	mov    edi,DWORD PTR [eax]
  eee5d9:	lea    eax,[ebx+0x45954]
  eee5df:	mov    DWORD PTR [esp+0x24],eax
  eee5e3:	mov    eax,DWORD PTR [eax]
  eee5e5:	mov    DWORD PTR [esp],eax
  eee5e8:	call   20bfb2
  eee5ed:	mov    esi,eax
  eee5ef:	mov    DWORD PTR [esp+0x38],edi
  eee5f3:	mov    edi,DWORD PTR [ebp+0x8]
  eee5f6:	lea    eax,[ebx+0x4a368]
  eee5fc:	mov    DWORD PTR [esp+0x20],eax
  eee600:	mov    eax,DWORD PTR [eax]
  eee602:	mov    DWORD PTR [esp+0xc],eax
  eee606:	mov    eax,DWORD PTR [esp+0x38]
  eee60a:	mov    DWORD PTR [esp+0x8],eax
  eee60e:	mov    DWORD PTR [esp+0x4],edi
  eee612:	mov    DWORD PTR [esp],esi
  eee615:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
  eee61a:	mov    ecx,DWORD PTR [esp+0x28]
  eee61e:	test   ecx,ecx
  eee620:	je     eee6ac
  eee626:	lea    eax,[ebx+0x4a36c]
  eee62c:	mov    DWORD PTR [esp+0x1c],eax
  eee630:	mov    eax,DWORD PTR [eax]
  eee632:	mov    DWORD PTR [esp+0x8],eax
  eee636:	mov    DWORD PTR [esp+0x4],esi
  eee63a:	mov    DWORD PTR [esp],ecx
  eee63d:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eee642:	mov    eax,DWORD PTR [edi+0x6c]
  eee645:	mov    DWORD PTR [esp+0x28],eax
  eee649:	lea    eax,[ebx+0x4a468]
  eee64f:	mov    edi,DWORD PTR [eax]
  eee651:	mov    eax,DWORD PTR [esp+0x24]
  eee655:	mov    eax,DWORD PTR [eax]
  eee657:	mov    DWORD PTR [esp],eax
  eee65a:	call   20bfb2
  eee65f:	mov    esi,eax
  eee661:	mov    DWORD PTR [esp+0x30],edi
  eee665:	mov    eax,DWORD PTR [esp+0x20]
  eee669:	mov    eax,DWORD PTR [eax]
  eee66b:	mov    DWORD PTR [esp+0xc],eax
  eee66f:	mov    eax,DWORD PTR [esp+0x30]
  eee673:	mov    DWORD PTR [esp+0x8],eax
  eee677:	mov    eax,DWORD PTR [ebp+0x8]
  eee67a:	mov    DWORD PTR [esp+0x4],eax
  eee67e:	mov    DWORD PTR [esp],esi
  eee681:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
  eee686:	mov    ecx,DWORD PTR [esp+0x28]
  eee68a:	test   ecx,ecx
  eee68c:	je     eee6ac
  eee68e:	mov    eax,DWORD PTR [esp+0x1c]
  eee692:	mov    eax,DWORD PTR [eax]
  eee694:	mov    DWORD PTR [esp+0x8],eax
  eee698:	mov    DWORD PTR [esp+0x4],esi
  eee69c:	mov    DWORD PTR [esp],ecx
  eee69f:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eee6a4:	lea    esp,[ebp-0xc]
  eee6a7:	pop    esi
  eee6a8:	pop    edi
  eee6a9:	pop    ebx
  eee6aa:	pop    ebp
  eee6ab:	ret
  eee6ac:	call   1fbc48
  eee6b1:	call   ebbb41
  eee6b6:	mov    DWORD PTR [esp],eax
  eee6b9:	call   1b9bd0
  eee6be:	call   ebbb41