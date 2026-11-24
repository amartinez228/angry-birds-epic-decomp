
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0051510a:
  51510a:	push   ebp
  51510b:	mov    ebp,esp
  51510d:	push   ebx
  51510e:	push   edi
  51510f:	push   esi
  515110:	and    esp,0xfffffff0
  515113:	sub    esp,0xc0
  515119:	call   51511e
  51511e:	pop    ebx
  51511f:	add    ebx,0x19fce26
  515125:	mov    edi,DWORD PTR [ebp+0xc]
  515128:	mov    al,BYTE PTR [ebx+0x5d53e]
  51512e:	test   al,al
  515130:	jne    515149
  515132:	lea    eax,[ebx-0x66f368]
  515138:	mov    eax,DWORD PTR [eax]
  51513a:	mov    DWORD PTR [esp],eax
  51513d:	call   1ca6e8
  515142:	mov    BYTE PTR [ebx+0x5d53e],0x1
  515149:	xorps  xmm0,xmm0
  51514c:	movaps XMMWORD PTR [esp+0xa0],xmm0
  515154:	mov    DWORD PTR [esp+0xb0],0x0
  51515f:	movaps XMMWORD PTR [esp+0x80],xmm0
  515167:	mov    DWORD PTR [esp+0x90],0x0
  515172:	mov    DWORD PTR [esp+0x7c],0x0
  51517a:	mov    DWORD PTR [esp+0x78],0x0
  515182:	test   edi,edi
  515184:	je     5158c6
  51518a:	mov    esi,DWORD PTR [ebp+0x10]
  51518d:	cmp    DWORD PTR [edi+0x1c],0x0
  515191:	je     5151bd
  515193:	mov    DWORD PTR [esp+0x4],0x0
  51519b:	mov    DWORD PTR [esp],0x0
  5151a2:	call   106f816  ; DIContainerLogic::GetLootOperationService
  5151a7:	test   eax,eax
  5151a9:	je     5158c6
  5151af:	mov    eax,DWORD PTR [edi+0x18]
  5151b2:	lea    ecx,[ebx+0x575b0]  ; literal "Battle_Lost"
  5151b8:	jmp    515893
  5151bd:	mov    DWORD PTR [esp+0x4],0x0
  5151c5:	mov    DWORD PTR [esp],0x0
  5151cc:	call   10934a3  ; DIContainerLogic::get_GetBonusEventService
  5151d1:	test   eax,eax
  5151d3:	je     5158c6
  5151d9:	mov    esi,DWORD PTR [eax+0xc]
  5151dc:	lea    eax,[ebx+0x44d10]
  5151e2:	mov    eax,DWORD PTR [eax]
  5151e4:	mov    DWORD PTR [esp],eax
  5151e7:	call   20bfb2
  5151ec:	mov    DWORD PTR [esp+0x34],eax
  5151f0:	lea    ecx,[ebx+0x49298]
  5151f6:	mov    ecx,DWORD PTR [ecx]
  5151f8:	mov    DWORD PTR [esp+0x4],ecx
  5151fc:	mov    DWORD PTR [esp],eax
  5151ff:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  515204:	test   esi,esi
  515206:	je     515373
  51520c:	mov    al,BYTE PTR [edi+0x4c]
  51520f:	test   al,al
  515211:	je     515373
  515217:	mov    DWORD PTR [esp],esi
  51521a:	mov    DWORD PTR [esp+0x4],0x0
  515222:	call   1704033  ; ABH.Shared.Events.BalancingData.BonusEventBalancingData::get_BonusType
  515227:	cmp    eax,0x1
  51522a:	jne    515373
  515230:	mov    DWORD PTR [esp],esi
  515233:	mov    DWORD PTR [esp+0x4],0x0
  51523b:	call   1704056  ; ABH.Shared.Events.BalancingData.BonusEventBalancingData::get_BonusFactor
  515240:	fstp   DWORD PTR [esp+0x3c]
  515244:	mov    eax,DWORD PTR [edi+0x10]
  515247:	test   eax,eax
  515249:	je     5158c6
  51524f:	movss  xmm0,DWORD PTR [esp+0x3c]
  515255:	movss  DWORD PTR [esp+0x28],xmm0
  51525b:	lea    ecx,[ebx+0x4b368]
  515261:	mov    ecx,DWORD PTR [ecx]
  515263:	mov    DWORD PTR [esp+0x4],ecx
  515267:	mov    DWORD PTR [esp],eax
  51526a:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  51526f:	test   eax,eax
  515271:	je     5158c6
  515277:	lea    ecx,[ebx+0x4b36c]
  51527d:	mov    ecx,DWORD PTR [ecx]
  51527f:	mov    DWORD PTR [esp+0x8],ecx
  515283:	mov    DWORD PTR [esp+0x4],eax
  515287:	lea    eax,[esp+0x60]
  51528b:	mov    DWORD PTR [esp],eax
  51528e:	call   12374c5  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, UnityEngine.GUIStyle>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, ABH.GameDatas.Battle.BattleEffectGameData>::GetEnumerator | +11 other aliases
  515293:	sub    esp,0x4
  515296:	mov    eax,DWORD PTR [esp+0x70]
  51529a:	mov    DWORD PTR [esp+0xb0],eax
  5152a1:	movsd  xmm0,QWORD PTR [esp+0x60]
  5152a7:	movsd  xmm1,QWORD PTR [esp+0x68]
  5152ad:	movsd  QWORD PTR [esp+0xa8],xmm1
  5152b6:	movsd  QWORD PTR [esp+0xa0],xmm0
  5152bf:	movss  xmm0,DWORD PTR [esp+0x28]
  5152c5:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  5152cd:	movss  DWORD PTR [esp+0x2c],xmm0
  5152d3:	lea    eax,[ebx+0x4b374]
  5152d9:	mov    DWORD PTR [esp+0x30],eax
  5152dd:	mov    eax,DWORD PTR [esp+0x30]
  5152e1:	mov    eax,DWORD PTR [eax]
  5152e3:	mov    DWORD PTR [esp+0x4],eax
  5152e7:	lea    eax,[esp+0xa0]
  5152ee:	mov    DWORD PTR [esp],eax
  5152f1:	call   12276c5
  5152f6:	test   al,al
  5152f8:	je     51550f
  5152fe:	lea    eax,[ebx+0x4b370]
  515304:	mov    eax,DWORD PTR [eax]
  515306:	mov    DWORD PTR [esp+0x4],eax
  51530a:	lea    eax,[esp+0xa0]
  515311:	mov    DWORD PTR [esp],eax
  515314:	call   1227754
  515319:	mov    edi,eax
  51531b:	test   edi,edi
  51531d:	je     515519
  515323:	mov    DWORD PTR [esp],edi
  515326:	mov    DWORD PTR [esp+0x4],0x0
  51532e:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  515333:	mov    esi,eax
  515335:	mov    DWORD PTR [esp],edi
  515338:	mov    DWORD PTR [esp+0x4],0x0
  515340:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  515345:	cvtsi2ss xmm0,eax
  515349:	mulss  xmm0,DWORD PTR [esp+0x2c]
  51534f:	cvttss2si eax,xmm0
  515353:	add    eax,esi
  515355:	mov    DWORD PTR [esp],edi
  515358:	mov    DWORD PTR [esp+0x4],eax
  51535c:	mov    DWORD PTR [esp+0x8],0x0
  515364:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  515369:	jmp    5152dd
  51536e:	jmp    515523
  515373:	mov    eax,edi
  515375:	lea    edi,[eax+0x4d]
  515378:	test   esi,esi
  51537a:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
  515382:	je     515507
  515388:	movss  DWORD PTR [esp+0x30],xmm0
  51538e:	mov    al,BYTE PTR [eax+0x4d]
  515391:	test   al,al
  515393:	je     515501
  515399:	mov    DWORD PTR [esp],esi
  51539c:	mov    DWORD PTR [esp+0x4],0x0
  5153a4:	call   1704033  ; ABH.Shared.Events.BalancingData.BonusEventBalancingData::get_BonusType
  5153a9:	cmp    eax,0x2
  5153ac:	movss  xmm0,DWORD PTR [esp+0x30]
  5153b2:	movaps xmm1,xmm0
  5153b5:	jne    515617
  5153bb:	mov    DWORD PTR [esp],esi
  5153be:	mov    DWORD PTR [esp+0x4],0x0
  5153c6:	call   1704056  ; ABH.Shared.Events.BalancingData.BonusEventBalancingData::get_BonusFactor
  5153cb:	fstp   DWORD PTR [esp+0x38]
  5153cf:	mov    eax,DWORD PTR [ebp+0xc]
  5153d2:	mov    eax,DWORD PTR [eax+0x10]
  5153d5:	test   eax,eax
  5153d7:	je     5158c6
  5153dd:	movss  xmm0,DWORD PTR [esp+0x38]
  5153e3:	movss  DWORD PTR [esp+0x30],xmm0
  5153e9:	lea    ecx,[ebx+0x4b368]
  5153ef:	mov    ecx,DWORD PTR [ecx]
  5153f1:	mov    DWORD PTR [esp+0x4],ecx
  5153f5:	mov    DWORD PTR [esp],eax
  5153f8:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  5153fd:	test   eax,eax
  5153ff:	je     5158c6
  515405:	lea    ecx,[ebx+0x4b36c]
  51540b:	mov    ecx,DWORD PTR [ecx]
  51540d:	mov    DWORD PTR [esp+0x8],ecx
  515411:	mov    DWORD PTR [esp+0x4],eax
  515415:	lea    eax,[esp+0x48]
  515419:	mov    DWORD PTR [esp],eax
  51541c:	call   12374c5  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, UnityEngine.GUIStyle>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, ABH.GameDatas.Battle.BattleEffectGameData>::GetEnumerator | +11 other aliases
  515421:	sub    esp,0x4
  515424:	mov    eax,DWORD PTR [esp+0x58]
  515428:	mov    DWORD PTR [esp+0x90],eax
  51542f:	movsd  xmm0,QWORD PTR [esp+0x48]
  515435:	movsd  xmm1,QWORD PTR [esp+0x50]
  51543b:	movsd  QWORD PTR [esp+0x88],xmm1
  515444:	movsd  QWORD PTR [esp+0x80],xmm0
  51544d:	movss  xmm0,DWORD PTR [esp+0x30]
  515453:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  51545b:	movss  DWORD PTR [esp+0x28],xmm0
  515461:	lea    eax,[ebx+0x4b374]
  515467:	mov    DWORD PTR [esp+0x2c],eax
  51546b:	mov    eax,DWORD PTR [esp+0x2c]
  51546f:	mov    eax,DWORD PTR [eax]
  515471:	mov    DWORD PTR [esp+0x4],eax
  515475:	lea    eax,[esp+0x80]
  51547c:	mov    DWORD PTR [esp],eax
  51547f:	call   12276c5
  515484:	test   al,al
  515486:	je     515594
  51548c:	lea    eax,[ebx+0x4b370]
  515492:	mov    eax,DWORD PTR [eax]
  515494:	mov    DWORD PTR [esp+0x4],eax
  515498:	lea    eax,[esp+0x80]
  51549f:	mov    DWORD PTR [esp],eax
  5154a2:	call   1227754
  5154a7:	mov    edi,eax
  5154a9:	test   edi,edi
  5154ab:	je     51559e
  5154b1:	mov    DWORD PTR [esp],edi
  5154b4:	mov    DWORD PTR [esp+0x4],0x0
  5154bc:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  5154c1:	mov    esi,eax
  5154c3:	mov    DWORD PTR [esp],edi
  5154c6:	mov    DWORD PTR [esp+0x4],0x0
  5154ce:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  5154d3:	cvtsi2ss xmm0,eax
  5154d7:	mulss  xmm0,DWORD PTR [esp+0x28]
  5154dd:	cvttss2si eax,xmm0
  5154e1:	add    eax,esi
  5154e3:	mov    DWORD PTR [esp],edi
  5154e6:	mov    DWORD PTR [esp+0x4],eax
  5154ea:	mov    DWORD PTR [esp+0x8],0x0
  5154f2:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  5154f7:	jmp    51546b
  5154fc:	jmp    5155a8
  515501:	movss  xmm0,DWORD PTR [esp+0x30]
  515507:	movaps xmm1,xmm0
  51550a:	jmp    515617
  51550f:	xor    esi,esi
  515511:	mov    al,0x1
  515513:	mov    DWORD PTR [esp+0x30],eax
  515517:	jmp    515543
  515519:	call   1fbc48
  51551e:	jmp    5158d8
  515523:	cmp    edx,0x1
  515526:	jne    5158d0
  51552c:	mov    DWORD PTR [esp],eax
  51552f:	call   1ba3f0
  515534:	mov    esi,DWORD PTR [eax]
  515536:	call   1b9ce0
  51553b:	mov    DWORD PTR [esp+0x30],0x0
  515543:	mov    edi,DWORD PTR [ebp+0xc]
  515546:	lea    eax,[ebx+0x4b378]
  51554c:	mov    eax,DWORD PTR [eax]
  51554e:	mov    DWORD PTR [esp+0x4],eax
  515552:	lea    eax,[esp+0xa0]
  515559:	mov    DWORD PTR [esp],eax
  51555c:	call   122763c
  515561:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
  515569:	mov    eax,DWORD PTR [esp+0x30]
  51556d:	test   al,al
  51556f:	jne    515589
  515571:	test   esi,esi
  515573:	je     515589
  515575:	mov    DWORD PTR [esp],esi
  515578:	movss  DWORD PTR [esp+0x30],xmm0
  51557e:	call   1fbb20
  515583:	movss  xmm0,DWORD PTR [esp+0x30]
  515589:	movss  xmm1,DWORD PTR [esp+0x28]
  51558f:	jmp    515614
  515594:	xor    esi,esi
  515596:	mov    al,0x1
  515598:	mov    DWORD PTR [esp+0x2c],eax
  51559c:	jmp    5155c8
  51559e:	call   1fbc48
  5155a3:	jmp    5158dd
  5155a8:	cmp    edx,0x1
  5155ab:	jne    5158d0
  5155b1:	mov    DWORD PTR [esp],eax
  5155b4:	call   1ba3f0
  5155b9:	mov    esi,DWORD PTR [eax]
  5155bb:	call   1b9ce0
  5155c0:	mov    DWORD PTR [esp+0x2c],0x0
  5155c8:	mov    edi,DWORD PTR [ebp+0xc]
  5155cb:	lea    eax,[ebx+0x4b378]
  5155d1:	mov    eax,DWORD PTR [eax]
  5155d3:	mov    DWORD PTR [esp+0x4],eax
  5155d7:	lea    eax,[esp+0x80]
  5155de:	mov    DWORD PTR [esp],eax
  5155e1:	call   122763c
  5155e6:	movss  xmm1,DWORD PTR [ebx-0x64fc28]
  5155ee:	mov    eax,DWORD PTR [esp+0x2c]
  5155f2:	test   al,al
  5155f4:	jne    51560e
  5155f6:	test   esi,esi
  5155f8:	je     51560e
  5155fa:	mov    DWORD PTR [esp],esi
  5155fd:	movss  DWORD PTR [esp+0x28],xmm1
  515603:	call   1fbb20
  515608:	movss  xmm1,DWORD PTR [esp+0x28]
  51560e:	movss  xmm0,DWORD PTR [esp+0x30]
  515614:	lea    edi,[edi+0x4d]
  515617:	cmp    BYTE PTR [edi],0x0
  51561a:	je     515650
  51561c:	mov    esi,DWORD PTR [ebp+0xc]
  51561f:	mulss  xmm0,DWORD PTR [esi+0x50]
  515624:	movss  DWORD PTR [esp+0x7c],xmm0
  51562a:	lea    eax,[ebx+0x53fd0]  ; literal "##"
  515630:	mov    eax,DWORD PTR [eax]
  515632:	mov    DWORD PTR [esp+0x4],eax
  515636:	lea    eax,[esp+0x7c]
  51563a:	mov    DWORD PTR [esp],eax
  51563d:	mov    DWORD PTR [esp+0x8],0x0
  515645:	call   cb9b7c
  51564a:	mov    edi,DWORD PTR [esp+0x34]
  51564e:	jmp    515698
  515650:	mov    esi,DWORD PTR [ebp+0xc]
  515653:	lea    eax,[esi+0x50]
  515656:	cmp    BYTE PTR [esi+0x4c],0x0
  51565a:	mov    edi,DWORD PTR [esp+0x34]
  51565e:	je     51567c
  515660:	mulss  xmm1,DWORD PTR [eax]
  515664:	movss  DWORD PTR [esp+0x78],xmm1
  51566a:	lea    eax,[ebx+0x53fd0]  ; literal "##"
  515670:	mov    eax,DWORD PTR [eax]
  515672:	mov    DWORD PTR [esp+0x4],eax
  515676:	lea    eax,[esp+0x78]
  51567a:	jmp    515688
  51567c:	lea    ecx,[ebx+0x53fd0]  ; literal "##"
  515682:	mov    ecx,DWORD PTR [ecx]
  515684:	mov    DWORD PTR [esp+0x4],ecx
  515688:	mov    DWORD PTR [esp],eax
  51568b:	mov    DWORD PTR [esp+0x8],0x0
  515693:	call   cb9b7c
  515698:	test   edi,edi
  51569a:	je     5158c6
  5156a0:	lea    ecx,[ebx+0x575a0]  ; literal "BattlerewardBonusMultiplier"
  5156a6:	mov    ecx,DWORD PTR [ecx]
  5156a8:	lea    edx,[ebx+0x4929c]
  5156ae:	mov    edx,DWORD PTR [edx]
  5156b0:	mov    DWORD PTR [esp+0xc],edx
  5156b4:	mov    DWORD PTR [esp+0x8],eax
  5156b8:	mov    DWORD PTR [esp+0x4],ecx
  5156bc:	mov    DWORD PTR [esp],edi
  5156bf:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  5156c4:	mov    eax,DWORD PTR [esi+0x10]
  5156c7:	test   eax,eax
  5156c9:	je     5158c6
  5156cf:	lea    ecx,[ebx+0x4ac6c]
  5156d5:	mov    ecx,DWORD PTR [ecx]
  5156d7:	mov    DWORD PTR [esp+0x4],ecx
  5156db:	mov    DWORD PTR [esp],eax
  5156de:	call   61b443  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Keys | System.Collections.Generic.Dictionary`2<string, string>::get_Keys | System.Collections.Generic.Dictionary`2<string, object>::get_Keys | +10 other aliases
  5156e3:	lea    edi,[ebx+0x45ff0]
  5156e9:	mov    ecx,DWORD PTR [edi]
  5156eb:	mov    ecx,DWORD PTR [ecx+0x50]
  5156ee:	cmp    DWORD PTR [ecx+0x258],0x0
  5156f5:	mov    esi,DWORD PTR [ebp+0x10]
  5156f8:	jne    51575f
  5156fa:	lea    ecx,[ebx+0x4b37c]
  515700:	mov    ecx,DWORD PTR [ecx]
  515702:	mov    DWORD PTR [esp+0x2c],ecx
  515706:	lea    ecx,[ebx+0x45650]
  51570c:	mov    ecx,DWORD PTR [ecx]
  51570e:	mov    DWORD PTR [esp],ecx
  515711:	mov    DWORD PTR [esp+0x30],eax
  515715:	call   20bfb2
  51571a:	mov    esi,eax
  51571c:	mov    eax,DWORD PTR [esp+0x2c]
  515720:	mov    DWORD PTR [esp+0x40],eax
  515724:	lea    eax,[ebx+0x49b8c]
  51572a:	mov    eax,DWORD PTR [eax]
  51572c:	mov    DWORD PTR [esp+0xc],eax
  515730:	mov    eax,DWORD PTR [esp+0x40]
  515734:	mov    DWORD PTR [esp+0x8],eax
  515738:	mov    DWORD PTR [esp],esi
  51573b:	mov    DWORD PTR [esp+0x4],0x0
  515743:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  515748:	mov    eax,DWORD PTR [esp+0x30]
  51574c:	mov    ecx,DWORD PTR [edi]
  51574e:	mov    ecx,DWORD PTR [ecx+0x50]
  515751:	mov    DWORD PTR [ecx+0x258],esi
  515757:	mov    esi,DWORD PTR [ebp+0x10]
  51575a:	mov    ecx,DWORD PTR [edi]
  51575c:	mov    ecx,DWORD PTR [ecx+0x50]
  51575f:	mov    edx,DWORD PTR [ecx+0x258]
  515765:	lea    ecx,[ebx+0x49fd0]
  51576b:	mov    ecx,DWORD PTR [ecx]
  51576d:	mov    DWORD PTR [esp+0xc],ecx
  515771:	mov    DWORD PTR [esp+0x8],edx
  515775:	mov    DWORD PTR [esp+0x4],eax
  515779:	mov    DWORD PTR [esp],0x0
  515780:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  515785:	lea    ecx,[ebx+0x49c20]
  51578b:	mov    ecx,DWORD PTR [ecx]
  51578d:	mov    DWORD PTR [esp+0x8],ecx
  515791:	mov    DWORD PTR [esp+0x4],eax
  515795:	mov    DWORD PTR [esp],0x0
  51579c:	call   ddf8e7  ; shared address: System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | +12 other aliases
  5157a1:	test   eax,eax
  5157a3:	mov    edi,DWORD PTR [ebp+0xc]
  5157a6:	jg     515872
  5157ac:	mov    esi,DWORD PTR [esp+0x34]
  5157b0:	test   esi,esi
  5157b2:	je     5158c6
  5157b8:	lea    eax,[ebx+0x575a4]  ; literal "TypeOfGain"
  5157be:	mov    eax,DWORD PTR [eax]
  5157c0:	lea    ecx,[ebx+0x575a8]  ; literal "Battle_Won"
  5157c6:	mov    ecx,DWORD PTR [ecx]
  5157c8:	lea    edx,[ebx+0x4929c]
  5157ce:	mov    DWORD PTR [esp+0x30],edx
  5157d2:	mov    edx,DWORD PTR [edx]
  5157d4:	mov    DWORD PTR [esp+0xc],edx
  5157d8:	mov    DWORD PTR [esp+0x8],ecx
  5157dc:	mov    DWORD PTR [esp+0x4],eax
  5157e0:	mov    DWORD PTR [esp],esi
  5157e3:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  5157e8:	mov    DWORD PTR [esp+0x4],edi
  5157ec:	call   5158e2  ; ABH.Services.Logic.BattleService::WonSecondaryPrize
  5157f1:	test   al,al
  5157f3:	je     515823
  5157f5:	lea    eax,[ebx+0x575ac]  ; literal "secondaryPrize"
  5157fb:	mov    eax,DWORD PTR [eax]
  5157fd:	lea    ecx,[ebx+0x5226c]  ; literal "true"
  515803:	mov    ecx,DWORD PTR [ecx]
  515805:	mov    edx,DWORD PTR [esp+0x30]
  515809:	mov    edx,DWORD PTR [edx]
  51580b:	mov    DWORD PTR [esp+0xc],edx
  51580f:	mov    DWORD PTR [esp+0x8],ecx
  515813:	mov    DWORD PTR [esp+0x4],eax
  515817:	mov    eax,DWORD PTR [esp+0x34]
  51581b:	mov    DWORD PTR [esp],eax
  51581e:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  515823:	mov    DWORD PTR [esp+0x4],0x0
  51582b:	mov    DWORD PTR [esp],0x0
  515832:	call   106f816  ; DIContainerLogic::GetLootOperationService
  515837:	test   eax,eax
  515839:	je     5158c6
  51583f:	mov    eax,DWORD PTR [edi+0x10]
  515842:	mov    ecx,DWORD PTR [esp+0x34]
  515846:	mov    DWORD PTR [esp+0x10],ecx
  51584a:	mov    DWORD PTR [esp+0xc],eax
  51584e:	mov    esi,DWORD PTR [ebp+0x10]
  515851:	mov    DWORD PTR [esp+0x4],esi
  515855:	mov    DWORD PTR [esp+0x18],0x1
  51585d:	mov    DWORD PTR [esp+0x14],0x0
  515865:	mov    DWORD PTR [esp+0x8],0x0
  51586d:	call   51592b  ; ABH.Services.Logic.LootOperations::RewardLoot
  515872:	mov    DWORD PTR [esp+0x4],0x0
  51587a:	mov    DWORD PTR [esp],0x0
  515881:	call   106f816  ; DIContainerLogic::GetLootOperationService
  515886:	test   eax,eax
  515888:	je     5158c6
  51588a:	mov    eax,DWORD PTR [edi+0x14]
  51588d:	lea    ecx,[ebx+0x575a8]  ; literal "Battle_Won"
  515893:	mov    ecx,DWORD PTR [ecx]
  515895:	mov    DWORD PTR [esp+0x10],ecx
  515899:	mov    DWORD PTR [esp+0xc],eax
  51589d:	mov    DWORD PTR [esp+0x4],esi
  5158a1:	mov    DWORD PTR [esp+0x18],0x1
  5158a9:	mov    DWORD PTR [esp+0x14],0x0
  5158b1:	mov    DWORD PTR [esp+0x8],0x0
  5158b9:	call   515c3c  ; ABH.Services.Logic.LootOperations::RewardLoot
  5158be:	lea    esp,[ebp-0xc]
  5158c1:	pop    esi
  5158c2:	pop    edi
  5158c3:	pop    ebx
  5158c4:	pop    ebp
  5158c5:	ret
  5158c6:	call   1fbc48
  5158cb:	call   540b98
  5158d0:	mov    DWORD PTR [esp],eax
  5158d3:	call   1b9bd0
  5158d8:	call   540b98
  5158dd:	call   540b98