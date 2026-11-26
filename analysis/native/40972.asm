
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

004f0392:
  4f0392:	push   ebp
  4f0393:	mov    ebp,esp
  4f0395:	push   ebx
  4f0396:	push   edi
  4f0397:	push   esi
  4f0398:	and    esp,0xfffffff0
  4f039b:	sub    esp,0x4e0
  4f03a1:	call   4f03a6
  4f03a6:	pop    ebx
  4f03a7:	add    ebx,0x1a21b9e
  4f03ad:	mov    edi,DWORD PTR [ebp+0x8]
  4f03b0:	mov    al,BYTE PTR [ebx+0x5d502]
  4f03b6:	test   al,al
  4f03b8:	jne    4f03d1
  4f03ba:	lea    eax,[ebx-0x66f3cc]
  4f03c0:	mov    eax,DWORD PTR [eax]
  4f03c2:	mov    DWORD PTR [esp],eax
  4f03c5:	call   1ca6e8
  4f03ca:	mov    BYTE PTR [ebx+0x5d502],0x1
  4f03d1:	mov    eax,DWORD PTR [edi+0x14]
  4f03d4:	test   eax,eax
  4f03d6:	je     4f7cc1
  4f03dc:	lea    ecx,[ebx+0x4b000]
  4f03e2:	mov    ecx,DWORD PTR [ecx]
  4f03e4:	mov    DWORD PTR [esp+0x4],ecx
  4f03e8:	mov    DWORD PTR [esp],eax
  4f03eb:	call   123fe14  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Clear | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Clear
  4f03f0:	mov    eax,DWORD PTR [edi+0x14]
  4f03f3:	mov    DWORD PTR [esp+0x3c],eax
  4f03f7:	lea    eax,[ebx+0x46020]
  4f03fd:	mov    DWORD PTR [esp+0x20],eax
  4f0401:	mov    eax,DWORD PTR [eax]
  4f0403:	mov    DWORD PTR [esp],eax
  4f0406:	call   20bfb2
  4f040b:	mov    esi,eax
  4f040d:	lea    eax,[ebx+0x4b004]
  4f0413:	mov    DWORD PTR [esp+0x28],eax
  4f0417:	mov    eax,DWORD PTR [eax]
  4f0419:	mov    DWORD PTR [esp+0x4],eax
  4f041d:	mov    DWORD PTR [esp],esi
  4f0420:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f0425:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0429:	test   ecx,ecx
  4f042b:	je     4f7cc1
  4f0431:	lea    eax,[ebx+0x4b008]
  4f0437:	mov    DWORD PTR [esp+0x24],eax
  4f043b:	mov    eax,DWORD PTR [eax]
  4f043d:	mov    DWORD PTR [esp+0xc],eax
  4f0441:	mov    DWORD PTR [esp+0x8],esi
  4f0445:	mov    DWORD PTR [esp],ecx
  4f0448:	mov    DWORD PTR [esp+0x4],0x9
  4f0450:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f0455:	mov    eax,DWORD PTR [edi+0x14]
  4f0458:	test   eax,eax
  4f045a:	je     4f7cc1
  4f0460:	lea    ecx,[ebx+0x4b00c]
  4f0466:	mov    DWORD PTR [esp+0x3c],ecx
  4f046a:	mov    ecx,DWORD PTR [ecx]
  4f046c:	mov    DWORD PTR [esp+0x8],ecx
  4f0470:	mov    DWORD PTR [esp],eax
  4f0473:	mov    DWORD PTR [esp+0x4],0x9
  4f047b:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0480:	mov    edx,eax
  4f0482:	lea    esi,[ebx+0x45ff0]
  4f0488:	mov    eax,DWORD PTR [esi]
  4f048a:	mov    eax,DWORD PTR [eax+0x50]
  4f048d:	cmp    DWORD PTR [eax+0x30],0x0
  4f0491:	jne    4f04fa
  4f0493:	lea    eax,[ebx+0x4b010]
  4f0499:	mov    eax,DWORD PTR [eax]
  4f049b:	mov    DWORD PTR [esp+0x38],eax
  4f049f:	lea    eax,[ebx+0x46024]
  4f04a5:	mov    eax,DWORD PTR [eax]
  4f04a7:	mov    DWORD PTR [esp],eax
  4f04aa:	mov    DWORD PTR [esp+0x34],esi
  4f04ae:	mov    esi,edx
  4f04b0:	call   20bfb2
  4f04b5:	mov    edi,eax
  4f04b7:	mov    eax,DWORD PTR [esp+0x38]
  4f04bb:	mov    DWORD PTR [esp+0x4d8],eax
  4f04c2:	lea    eax,[ebx+0x4b014]
  4f04c8:	mov    eax,DWORD PTR [eax]
  4f04ca:	mov    DWORD PTR [esp+0xc],eax
  4f04ce:	mov    eax,DWORD PTR [esp+0x4d8]
  4f04d5:	mov    DWORD PTR [esp+0x8],eax
  4f04d9:	mov    DWORD PTR [esp],edi
  4f04dc:	mov    DWORD PTR [esp+0x4],0x0
  4f04e4:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f04e9:	mov    edx,esi
  4f04eb:	mov    esi,DWORD PTR [esp+0x34]
  4f04ef:	mov    eax,DWORD PTR [esi]
  4f04f1:	mov    eax,DWORD PTR [eax+0x50]
  4f04f4:	mov    DWORD PTR [eax+0x30],edi
  4f04f7:	mov    edi,DWORD PTR [ebp+0x8]
  4f04fa:	test   edx,edx
  4f04fc:	je     4f7cc1
  4f0502:	mov    eax,DWORD PTR [esi]
  4f0504:	mov    eax,DWORD PTR [eax+0x50]
  4f0507:	mov    eax,DWORD PTR [eax+0x30]
  4f050a:	lea    ecx,[ebx+0x4b018]
  4f0510:	mov    DWORD PTR [esp+0x38],ecx
  4f0514:	mov    ecx,DWORD PTR [ecx]
  4f0516:	mov    DWORD PTR [esp+0xc],ecx
  4f051a:	mov    DWORD PTR [esp+0x8],eax
  4f051e:	mov    DWORD PTR [esp],edx
  4f0521:	mov    DWORD PTR [esp+0x4],0x1f
  4f0529:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f052e:	mov    eax,DWORD PTR [edi+0x14]
  4f0531:	test   eax,eax
  4f0533:	je     4f7cc1
  4f0539:	mov    ecx,DWORD PTR [esp+0x3c]
  4f053d:	mov    ecx,DWORD PTR [ecx]
  4f053f:	mov    DWORD PTR [esp+0x8],ecx
  4f0543:	mov    DWORD PTR [esp],eax
  4f0546:	mov    DWORD PTR [esp+0x4],0x9
  4f054e:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0553:	mov    edx,eax
  4f0555:	mov    eax,DWORD PTR [esi]
  4f0557:	mov    eax,DWORD PTR [eax+0x50]
  4f055a:	cmp    DWORD PTR [eax+0x34],0x0
  4f055e:	jne    4f05c7
  4f0560:	lea    eax,[ebx+0x4b01c]
  4f0566:	mov    eax,DWORD PTR [eax]
  4f0568:	mov    DWORD PTR [esp+0x30],eax
  4f056c:	lea    eax,[ebx+0x46024]
  4f0572:	mov    eax,DWORD PTR [eax]
  4f0574:	mov    DWORD PTR [esp],eax
  4f0577:	mov    DWORD PTR [esp+0x34],esi
  4f057b:	mov    esi,edx
  4f057d:	call   20bfb2
  4f0582:	mov    edi,eax
  4f0584:	mov    eax,DWORD PTR [esp+0x30]
  4f0588:	mov    DWORD PTR [esp+0x4d0],eax
  4f058f:	lea    eax,[ebx+0x4b014]
  4f0595:	mov    eax,DWORD PTR [eax]
  4f0597:	mov    DWORD PTR [esp+0xc],eax
  4f059b:	mov    eax,DWORD PTR [esp+0x4d0]
  4f05a2:	mov    DWORD PTR [esp+0x8],eax
  4f05a6:	mov    DWORD PTR [esp],edi
  4f05a9:	mov    DWORD PTR [esp+0x4],0x0
  4f05b1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f05b6:	mov    edx,esi
  4f05b8:	mov    esi,DWORD PTR [esp+0x34]
  4f05bc:	mov    eax,DWORD PTR [esi]
  4f05be:	mov    eax,DWORD PTR [eax+0x50]
  4f05c1:	mov    DWORD PTR [eax+0x34],edi
  4f05c4:	mov    edi,DWORD PTR [ebp+0x8]
  4f05c7:	test   edx,edx
  4f05c9:	je     4f7cc1
  4f05cf:	mov    eax,DWORD PTR [esi]
  4f05d1:	mov    DWORD PTR [esp+0x34],esi
  4f05d5:	mov    eax,DWORD PTR [eax+0x50]
  4f05d8:	mov    eax,DWORD PTR [eax+0x34]
  4f05db:	mov    ecx,DWORD PTR [esp+0x38]
  4f05df:	mov    ecx,DWORD PTR [ecx]
  4f05e1:	mov    DWORD PTR [esp+0xc],ecx
  4f05e5:	mov    DWORD PTR [esp+0x8],eax
  4f05e9:	mov    DWORD PTR [esp],edx
  4f05ec:	mov    DWORD PTR [esp+0x4],0xa
  4f05f4:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f05f9:	mov    eax,DWORD PTR [edi+0x14]
  4f05fc:	mov    DWORD PTR [esp+0x30],eax
  4f0600:	mov    eax,DWORD PTR [esp+0x20]
  4f0604:	mov    eax,DWORD PTR [eax]
  4f0606:	mov    DWORD PTR [esp],eax
  4f0609:	call   20bfb2
  4f060e:	mov    esi,eax
  4f0610:	mov    eax,DWORD PTR [esp+0x28]
  4f0614:	mov    eax,DWORD PTR [eax]
  4f0616:	mov    DWORD PTR [esp+0x4],eax
  4f061a:	mov    DWORD PTR [esp],esi
  4f061d:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f0622:	mov    ecx,DWORD PTR [esp+0x30]
  4f0626:	test   ecx,ecx
  4f0628:	je     4f7cc1
  4f062e:	mov    eax,DWORD PTR [esp+0x24]
  4f0632:	mov    eax,DWORD PTR [eax]
  4f0634:	mov    DWORD PTR [esp+0xc],eax
  4f0638:	mov    DWORD PTR [esp+0x8],esi
  4f063c:	mov    DWORD PTR [esp],ecx
  4f063f:	mov    DWORD PTR [esp+0x4],0x23
  4f0647:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f064c:	mov    eax,DWORD PTR [edi+0x14]
  4f064f:	test   eax,eax
  4f0651:	je     4f7cc1
  4f0657:	mov    ecx,DWORD PTR [esp+0x3c]
  4f065b:	mov    ecx,DWORD PTR [ecx]
  4f065d:	mov    DWORD PTR [esp+0x8],ecx
  4f0661:	mov    DWORD PTR [esp],eax
  4f0664:	mov    DWORD PTR [esp+0x4],0x23
  4f066c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0671:	mov    esi,eax
  4f0673:	mov    ecx,DWORD PTR [esp+0x34]
  4f0677:	mov    eax,DWORD PTR [ecx]
  4f0679:	mov    eax,DWORD PTR [eax+0x50]
  4f067c:	cmp    DWORD PTR [eax+0x38],0x0
  4f0680:	jne    4f06e1
  4f0682:	lea    eax,[ebx+0x4b020]
  4f0688:	mov    eax,DWORD PTR [eax]
  4f068a:	mov    DWORD PTR [esp+0x30],eax
  4f068e:	lea    eax,[ebx+0x46024]
  4f0694:	mov    eax,DWORD PTR [eax]
  4f0696:	mov    DWORD PTR [esp],eax
  4f0699:	call   20bfb2
  4f069e:	mov    edi,eax
  4f06a0:	mov    eax,DWORD PTR [esp+0x30]
  4f06a4:	mov    DWORD PTR [esp+0x4c8],eax
  4f06ab:	lea    eax,[ebx+0x4b014]
  4f06b1:	mov    eax,DWORD PTR [eax]
  4f06b3:	mov    DWORD PTR [esp+0xc],eax
  4f06b7:	mov    eax,DWORD PTR [esp+0x4c8]
  4f06be:	mov    DWORD PTR [esp+0x8],eax
  4f06c2:	mov    DWORD PTR [esp],edi
  4f06c5:	mov    DWORD PTR [esp+0x4],0x0
  4f06cd:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f06d2:	mov    ecx,DWORD PTR [esp+0x34]
  4f06d6:	mov    eax,DWORD PTR [ecx]
  4f06d8:	mov    eax,DWORD PTR [eax+0x50]
  4f06db:	mov    DWORD PTR [eax+0x38],edi
  4f06de:	mov    edi,DWORD PTR [ebp+0x8]
  4f06e1:	test   esi,esi
  4f06e3:	je     4f7cc1
  4f06e9:	mov    eax,DWORD PTR [ecx]
  4f06eb:	mov    DWORD PTR [esp+0x34],ecx
  4f06ef:	mov    eax,DWORD PTR [eax+0x50]
  4f06f2:	mov    eax,DWORD PTR [eax+0x38]
  4f06f5:	mov    ecx,DWORD PTR [esp+0x38]
  4f06f9:	mov    ecx,DWORD PTR [ecx]
  4f06fb:	mov    DWORD PTR [esp+0xc],ecx
  4f06ff:	mov    DWORD PTR [esp+0x8],eax
  4f0703:	mov    DWORD PTR [esp],esi
  4f0706:	mov    DWORD PTR [esp+0x4],0x67
  4f070e:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0713:	mov    edi,DWORD PTR [edi+0x14]
  4f0716:	mov    eax,DWORD PTR [esp+0x20]
  4f071a:	mov    eax,DWORD PTR [eax]
  4f071c:	mov    DWORD PTR [esp],eax
  4f071f:	call   20bfb2
  4f0724:	mov    esi,eax
  4f0726:	mov    eax,DWORD PTR [esp+0x28]
  4f072a:	mov    eax,DWORD PTR [eax]
  4f072c:	mov    DWORD PTR [esp+0x4],eax
  4f0730:	mov    DWORD PTR [esp],esi
  4f0733:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f0738:	test   edi,edi
  4f073a:	je     4f7cc1
  4f0740:	mov    eax,DWORD PTR [esp+0x24]
  4f0744:	mov    eax,DWORD PTR [eax]
  4f0746:	mov    DWORD PTR [esp+0xc],eax
  4f074a:	mov    DWORD PTR [esp+0x8],esi
  4f074e:	mov    DWORD PTR [esp],edi
  4f0751:	mov    DWORD PTR [esp+0x4],0xa
  4f0759:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f075e:	mov    eax,DWORD PTR [ebp+0x8]
  4f0761:	mov    eax,DWORD PTR [eax+0x14]
  4f0764:	test   eax,eax
  4f0766:	je     4f7cc1
  4f076c:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0770:	mov    ecx,DWORD PTR [ecx]
  4f0772:	mov    DWORD PTR [esp+0x8],ecx
  4f0776:	mov    DWORD PTR [esp],eax
  4f0779:	mov    DWORD PTR [esp+0x4],0xa
  4f0781:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0786:	mov    DWORD PTR [esp+0x1c],eax
  4f078a:	lea    eax,[ebx+0x4b024]
  4f0790:	mov    esi,DWORD PTR [eax]
  4f0792:	lea    eax,[ebx+0x46024]
  4f0798:	mov    DWORD PTR [esp+0x30],eax
  4f079c:	mov    eax,DWORD PTR [eax]
  4f079e:	mov    DWORD PTR [esp],eax
  4f07a1:	call   20bfb2
  4f07a6:	mov    edi,eax
  4f07a8:	mov    DWORD PTR [esp+0x4c0],esi
  4f07af:	lea    eax,[ebx+0x4b014]
  4f07b5:	mov    DWORD PTR [esp+0x2c],eax
  4f07b9:	mov    eax,DWORD PTR [eax]
  4f07bb:	mov    DWORD PTR [esp+0xc],eax
  4f07bf:	mov    eax,DWORD PTR [esp+0x4c0]
  4f07c6:	mov    DWORD PTR [esp+0x8],eax
  4f07ca:	mov    eax,DWORD PTR [ebp+0x8]
  4f07cd:	mov    DWORD PTR [esp+0x4],eax
  4f07d1:	mov    DWORD PTR [esp],edi
  4f07d4:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f07d9:	mov    ecx,DWORD PTR [esp+0x1c]
  4f07dd:	test   ecx,ecx
  4f07df:	je     4f7cc1
  4f07e5:	mov    eax,DWORD PTR [esp+0x38]
  4f07e9:	mov    eax,DWORD PTR [eax]
  4f07eb:	mov    DWORD PTR [esp+0xc],eax
  4f07ef:	mov    DWORD PTR [esp+0x8],edi
  4f07f3:	mov    DWORD PTR [esp],ecx
  4f07f6:	mov    DWORD PTR [esp+0x4],0x38
  4f07fe:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0803:	mov    eax,DWORD PTR [ebp+0x8]
  4f0806:	mov    eax,DWORD PTR [eax+0x14]
  4f0809:	test   eax,eax
  4f080b:	je     4f7cc1
  4f0811:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0815:	mov    ecx,DWORD PTR [ecx]
  4f0817:	mov    DWORD PTR [esp+0x8],ecx
  4f081b:	mov    DWORD PTR [esp],eax
  4f081e:	mov    DWORD PTR [esp+0x4],0xa
  4f0826:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f082b:	mov    esi,eax
  4f082d:	mov    ecx,DWORD PTR [esp+0x34]
  4f0831:	mov    eax,DWORD PTR [ecx]
  4f0833:	mov    eax,DWORD PTR [eax+0x50]
  4f0836:	cmp    DWORD PTR [eax+0x3c],0x0
  4f083a:	jne    4f0894
  4f083c:	lea    eax,[ebx+0x4b028]
  4f0842:	mov    eax,DWORD PTR [eax]
  4f0844:	mov    DWORD PTR [esp+0x1c],eax
  4f0848:	mov    eax,DWORD PTR [esp+0x30]
  4f084c:	mov    eax,DWORD PTR [eax]
  4f084e:	mov    DWORD PTR [esp],eax
  4f0851:	call   20bfb2
  4f0856:	mov    edi,eax
  4f0858:	mov    eax,DWORD PTR [esp+0x1c]
  4f085c:	mov    DWORD PTR [esp+0x4b8],eax
  4f0863:	mov    eax,DWORD PTR [esp+0x2c]
  4f0867:	mov    eax,DWORD PTR [eax]
  4f0869:	mov    DWORD PTR [esp+0xc],eax
  4f086d:	mov    eax,DWORD PTR [esp+0x4b8]
  4f0874:	mov    DWORD PTR [esp+0x8],eax
  4f0878:	mov    DWORD PTR [esp],edi
  4f087b:	mov    DWORD PTR [esp+0x4],0x0
  4f0883:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0888:	mov    ecx,DWORD PTR [esp+0x34]
  4f088c:	mov    eax,DWORD PTR [ecx]
  4f088e:	mov    eax,DWORD PTR [eax+0x50]
  4f0891:	mov    DWORD PTR [eax+0x3c],edi
  4f0894:	test   esi,esi
  4f0896:	je     4f7cc1
  4f089c:	mov    eax,DWORD PTR [ecx]
  4f089e:	mov    eax,DWORD PTR [eax+0x50]
  4f08a1:	mov    eax,DWORD PTR [eax+0x3c]
  4f08a4:	mov    edi,ecx
  4f08a6:	mov    ecx,DWORD PTR [esp+0x38]
  4f08aa:	mov    ecx,DWORD PTR [ecx]
  4f08ac:	mov    DWORD PTR [esp+0xc],ecx
  4f08b0:	mov    DWORD PTR [esp+0x8],eax
  4f08b4:	mov    DWORD PTR [esp],esi
  4f08b7:	mov    DWORD PTR [esp+0x4],0x20
  4f08bf:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f08c4:	mov    eax,DWORD PTR [ebp+0x8]
  4f08c7:	mov    eax,DWORD PTR [eax+0x14]
  4f08ca:	test   eax,eax
  4f08cc:	je     4f7cc1
  4f08d2:	mov    ecx,DWORD PTR [esp+0x3c]
  4f08d6:	mov    ecx,DWORD PTR [ecx]
  4f08d8:	mov    DWORD PTR [esp+0x8],ecx
  4f08dc:	mov    DWORD PTR [esp],eax
  4f08df:	mov    DWORD PTR [esp+0x4],0xa
  4f08e7:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f08ec:	mov    esi,eax
  4f08ee:	mov    eax,DWORD PTR [edi]
  4f08f0:	mov    eax,DWORD PTR [eax+0x50]
  4f08f3:	cmp    DWORD PTR [eax+0x40],0x0
  4f08f7:	mov    ecx,edi
  4f08f9:	jne    4f0953
  4f08fb:	lea    eax,[ebx+0x4b02c]
  4f0901:	mov    eax,DWORD PTR [eax]
  4f0903:	mov    DWORD PTR [esp+0x1c],eax
  4f0907:	mov    eax,DWORD PTR [esp+0x30]
  4f090b:	mov    eax,DWORD PTR [eax]
  4f090d:	mov    DWORD PTR [esp],eax
  4f0910:	call   20bfb2
  4f0915:	mov    edi,eax
  4f0917:	mov    eax,DWORD PTR [esp+0x1c]
  4f091b:	mov    DWORD PTR [esp+0x4b0],eax
  4f0922:	mov    eax,DWORD PTR [esp+0x2c]
  4f0926:	mov    eax,DWORD PTR [eax]
  4f0928:	mov    DWORD PTR [esp+0xc],eax
  4f092c:	mov    eax,DWORD PTR [esp+0x4b0]
  4f0933:	mov    DWORD PTR [esp+0x8],eax
  4f0937:	mov    DWORD PTR [esp],edi
  4f093a:	mov    DWORD PTR [esp+0x4],0x0
  4f0942:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0947:	mov    ecx,DWORD PTR [esp+0x34]
  4f094b:	mov    eax,DWORD PTR [ecx]
  4f094d:	mov    eax,DWORD PTR [eax+0x50]
  4f0950:	mov    DWORD PTR [eax+0x40],edi
  4f0953:	test   esi,esi
  4f0955:	je     4f7cc1
  4f095b:	mov    eax,DWORD PTR [ecx]
  4f095d:	mov    eax,DWORD PTR [eax+0x50]
  4f0960:	mov    eax,DWORD PTR [eax+0x40]
  4f0963:	mov    edi,ecx
  4f0965:	mov    ecx,DWORD PTR [esp+0x38]
  4f0969:	mov    ecx,DWORD PTR [ecx]
  4f096b:	mov    DWORD PTR [esp+0xc],ecx
  4f096f:	mov    DWORD PTR [esp+0x8],eax
  4f0973:	mov    DWORD PTR [esp],esi
  4f0976:	mov    DWORD PTR [esp+0x4],0x63
  4f097e:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0983:	mov    eax,DWORD PTR [ebp+0x8]
  4f0986:	mov    eax,DWORD PTR [eax+0x14]
  4f0989:	test   eax,eax
  4f098b:	je     4f7cc1
  4f0991:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0995:	mov    ecx,DWORD PTR [ecx]
  4f0997:	mov    DWORD PTR [esp+0x8],ecx
  4f099b:	mov    DWORD PTR [esp],eax
  4f099e:	mov    DWORD PTR [esp+0x4],0xa
  4f09a6:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f09ab:	mov    esi,eax
  4f09ad:	mov    eax,DWORD PTR [edi]
  4f09af:	mov    eax,DWORD PTR [eax+0x50]
  4f09b2:	cmp    DWORD PTR [eax+0x44],0x0
  4f09b6:	mov    ecx,edi
  4f09b8:	jne    4f0a12
  4f09ba:	lea    eax,[ebx+0x4b030]
  4f09c0:	mov    eax,DWORD PTR [eax]
  4f09c2:	mov    DWORD PTR [esp+0x1c],eax
  4f09c6:	mov    eax,DWORD PTR [esp+0x30]
  4f09ca:	mov    eax,DWORD PTR [eax]
  4f09cc:	mov    DWORD PTR [esp],eax
  4f09cf:	call   20bfb2
  4f09d4:	mov    edi,eax
  4f09d6:	mov    eax,DWORD PTR [esp+0x1c]
  4f09da:	mov    DWORD PTR [esp+0x4a8],eax
  4f09e1:	mov    eax,DWORD PTR [esp+0x2c]
  4f09e5:	mov    eax,DWORD PTR [eax]
  4f09e7:	mov    DWORD PTR [esp+0xc],eax
  4f09eb:	mov    eax,DWORD PTR [esp+0x4a8]
  4f09f2:	mov    DWORD PTR [esp+0x8],eax
  4f09f6:	mov    DWORD PTR [esp],edi
  4f09f9:	mov    DWORD PTR [esp+0x4],0x0
  4f0a01:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0a06:	mov    ecx,DWORD PTR [esp+0x34]
  4f0a0a:	mov    eax,DWORD PTR [ecx]
  4f0a0c:	mov    eax,DWORD PTR [eax+0x50]
  4f0a0f:	mov    DWORD PTR [eax+0x44],edi
  4f0a12:	test   esi,esi
  4f0a14:	je     4f7cc1
  4f0a1a:	mov    eax,DWORD PTR [ecx]
  4f0a1c:	mov    DWORD PTR [esp+0x34],ecx
  4f0a20:	mov    eax,DWORD PTR [eax+0x50]
  4f0a23:	mov    eax,DWORD PTR [eax+0x44]
  4f0a26:	mov    ecx,DWORD PTR [esp+0x38]
  4f0a2a:	mov    ecx,DWORD PTR [ecx]
  4f0a2c:	mov    DWORD PTR [esp+0xc],ecx
  4f0a30:	mov    DWORD PTR [esp+0x8],eax
  4f0a34:	mov    DWORD PTR [esp],esi
  4f0a37:	mov    DWORD PTR [esp+0x4],0x2b
  4f0a3f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0a44:	mov    eax,DWORD PTR [ebp+0x8]
  4f0a47:	mov    eax,DWORD PTR [eax+0x14]
  4f0a4a:	test   eax,eax
  4f0a4c:	je     4f7cc1
  4f0a52:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0a56:	mov    ecx,DWORD PTR [ecx]
  4f0a58:	mov    DWORD PTR [esp+0x8],ecx
  4f0a5c:	mov    DWORD PTR [esp],eax
  4f0a5f:	mov    DWORD PTR [esp+0x4],0xa
  4f0a67:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0a6c:	mov    DWORD PTR [esp+0x1c],eax
  4f0a70:	lea    eax,[ebx+0x4b034]
  4f0a76:	mov    esi,DWORD PTR [eax]
  4f0a78:	mov    eax,DWORD PTR [esp+0x30]
  4f0a7c:	mov    eax,DWORD PTR [eax]
  4f0a7e:	mov    DWORD PTR [esp],eax
  4f0a81:	call   20bfb2
  4f0a86:	mov    edi,eax
  4f0a88:	mov    DWORD PTR [esp+0x4a0],esi
  4f0a8f:	mov    eax,DWORD PTR [esp+0x2c]
  4f0a93:	mov    eax,DWORD PTR [eax]
  4f0a95:	mov    DWORD PTR [esp+0xc],eax
  4f0a99:	mov    eax,DWORD PTR [esp+0x4a0]
  4f0aa0:	mov    DWORD PTR [esp+0x8],eax
  4f0aa4:	mov    eax,DWORD PTR [ebp+0x8]
  4f0aa7:	mov    DWORD PTR [esp+0x4],eax
  4f0aab:	mov    DWORD PTR [esp],edi
  4f0aae:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0ab3:	mov    ecx,DWORD PTR [esp+0x1c]
  4f0ab7:	test   ecx,ecx
  4f0ab9:	je     4f7cc1
  4f0abf:	mov    eax,DWORD PTR [esp+0x38]
  4f0ac3:	mov    eax,DWORD PTR [eax]
  4f0ac5:	mov    DWORD PTR [esp+0xc],eax
  4f0ac9:	mov    DWORD PTR [esp+0x8],edi
  4f0acd:	mov    DWORD PTR [esp],ecx
  4f0ad0:	mov    DWORD PTR [esp+0x4],0x2c
  4f0ad8:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0add:	mov    eax,DWORD PTR [ebp+0x8]
  4f0ae0:	mov    edi,DWORD PTR [eax+0x14]
  4f0ae3:	mov    eax,DWORD PTR [esp+0x20]
  4f0ae7:	mov    eax,DWORD PTR [eax]
  4f0ae9:	mov    DWORD PTR [esp],eax
  4f0aec:	call   20bfb2
  4f0af1:	mov    esi,eax
  4f0af3:	mov    eax,DWORD PTR [esp+0x28]
  4f0af7:	mov    eax,DWORD PTR [eax]
  4f0af9:	mov    DWORD PTR [esp+0x4],eax
  4f0afd:	mov    DWORD PTR [esp],esi
  4f0b00:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f0b05:	test   edi,edi
  4f0b07:	je     4f7cc1
  4f0b0d:	mov    eax,DWORD PTR [esp+0x24]
  4f0b11:	mov    eax,DWORD PTR [eax]
  4f0b13:	mov    DWORD PTR [esp+0xc],eax
  4f0b17:	mov    DWORD PTR [esp+0x8],esi
  4f0b1b:	mov    DWORD PTR [esp],edi
  4f0b1e:	mov    DWORD PTR [esp+0x4],0xf
  4f0b26:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f0b2b:	mov    eax,DWORD PTR [ebp+0x8]
  4f0b2e:	mov    eax,DWORD PTR [eax+0x14]
  4f0b31:	test   eax,eax
  4f0b33:	je     4f7cc1
  4f0b39:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0b3d:	mov    ecx,DWORD PTR [ecx]
  4f0b3f:	mov    DWORD PTR [esp+0x8],ecx
  4f0b43:	mov    DWORD PTR [esp],eax
  4f0b46:	mov    DWORD PTR [esp+0x4],0xf
  4f0b4e:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0b53:	mov    DWORD PTR [esp+0x1c],eax
  4f0b57:	lea    eax,[ebx+0x4b038]
  4f0b5d:	mov    esi,DWORD PTR [eax]
  4f0b5f:	mov    eax,DWORD PTR [esp+0x30]
  4f0b63:	mov    eax,DWORD PTR [eax]
  4f0b65:	mov    DWORD PTR [esp],eax
  4f0b68:	call   20bfb2
  4f0b6d:	mov    edi,eax
  4f0b6f:	mov    DWORD PTR [esp+0x498],esi
  4f0b76:	mov    eax,DWORD PTR [esp+0x2c]
  4f0b7a:	mov    eax,DWORD PTR [eax]
  4f0b7c:	mov    DWORD PTR [esp+0xc],eax
  4f0b80:	mov    eax,DWORD PTR [esp+0x498]
  4f0b87:	mov    DWORD PTR [esp+0x8],eax
  4f0b8b:	mov    eax,DWORD PTR [ebp+0x8]
  4f0b8e:	mov    DWORD PTR [esp+0x4],eax
  4f0b92:	mov    DWORD PTR [esp],edi
  4f0b95:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0b9a:	mov    ecx,DWORD PTR [esp+0x1c]
  4f0b9e:	test   ecx,ecx
  4f0ba0:	je     4f7cc1
  4f0ba6:	mov    eax,DWORD PTR [esp+0x38]
  4f0baa:	mov    eax,DWORD PTR [eax]
  4f0bac:	mov    DWORD PTR [esp+0xc],eax
  4f0bb0:	mov    DWORD PTR [esp+0x8],edi
  4f0bb4:	mov    DWORD PTR [esp],ecx
  4f0bb7:	mov    DWORD PTR [esp+0x4],0x2c
  4f0bbf:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0bc4:	mov    eax,DWORD PTR [ebp+0x8]
  4f0bc7:	mov    ecx,eax
  4f0bc9:	mov    eax,DWORD PTR [ecx+0x14]
  4f0bcc:	test   eax,eax
  4f0bce:	mov    edi,ecx
  4f0bd0:	je     4f7cc1
  4f0bd6:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0bda:	mov    ecx,DWORD PTR [ecx]
  4f0bdc:	mov    DWORD PTR [esp+0x8],ecx
  4f0be0:	mov    DWORD PTR [esp],eax
  4f0be3:	mov    DWORD PTR [esp+0x4],0xf
  4f0beb:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0bf0:	mov    esi,eax
  4f0bf2:	mov    ecx,DWORD PTR [esp+0x34]
  4f0bf6:	mov    eax,DWORD PTR [ecx]
  4f0bf8:	mov    eax,DWORD PTR [eax+0x50]
  4f0bfb:	cmp    DWORD PTR [eax+0x48],0x0
  4f0bff:	jne    4f0c5c
  4f0c01:	lea    eax,[ebx+0x4b03c]
  4f0c07:	mov    eax,DWORD PTR [eax]
  4f0c09:	mov    DWORD PTR [esp+0x1c],eax
  4f0c0d:	mov    eax,DWORD PTR [esp+0x30]
  4f0c11:	mov    eax,DWORD PTR [eax]
  4f0c13:	mov    DWORD PTR [esp],eax
  4f0c16:	call   20bfb2
  4f0c1b:	mov    edi,eax
  4f0c1d:	mov    eax,DWORD PTR [esp+0x1c]
  4f0c21:	mov    DWORD PTR [esp+0x490],eax
  4f0c28:	mov    eax,DWORD PTR [esp+0x2c]
  4f0c2c:	mov    eax,DWORD PTR [eax]
  4f0c2e:	mov    DWORD PTR [esp+0xc],eax
  4f0c32:	mov    eax,DWORD PTR [esp+0x490]
  4f0c39:	mov    DWORD PTR [esp+0x8],eax
  4f0c3d:	mov    DWORD PTR [esp],edi
  4f0c40:	mov    DWORD PTR [esp+0x4],0x0
  4f0c48:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0c4d:	mov    ecx,DWORD PTR [esp+0x34]
  4f0c51:	mov    eax,DWORD PTR [ecx]
  4f0c53:	mov    eax,DWORD PTR [eax+0x50]
  4f0c56:	mov    DWORD PTR [eax+0x48],edi
  4f0c59:	mov    edi,DWORD PTR [ebp+0x8]
  4f0c5c:	test   esi,esi
  4f0c5e:	je     4f7cc1
  4f0c64:	mov    eax,DWORD PTR [ecx]
  4f0c66:	mov    eax,DWORD PTR [eax+0x50]
  4f0c69:	mov    eax,DWORD PTR [eax+0x48]
  4f0c6c:	mov    ecx,DWORD PTR [esp+0x38]
  4f0c70:	mov    ecx,DWORD PTR [ecx]
  4f0c72:	mov    DWORD PTR [esp+0xc],ecx
  4f0c76:	mov    DWORD PTR [esp+0x8],eax
  4f0c7a:	mov    DWORD PTR [esp],esi
  4f0c7d:	mov    DWORD PTR [esp+0x4],0x2b
  4f0c85:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0c8a:	mov    eax,DWORD PTR [edi+0x14]
  4f0c8d:	test   eax,eax
  4f0c8f:	je     4f7cc1
  4f0c95:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0c99:	mov    ecx,DWORD PTR [ecx]
  4f0c9b:	mov    DWORD PTR [esp+0x8],ecx
  4f0c9f:	mov    DWORD PTR [esp],eax
  4f0ca2:	mov    DWORD PTR [esp+0x4],0xf
  4f0caa:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0caf:	mov    DWORD PTR [esp+0x1c],eax
  4f0cb3:	lea    eax,[ebx+0x4b040]
  4f0cb9:	mov    esi,DWORD PTR [eax]
  4f0cbb:	mov    eax,DWORD PTR [esp+0x30]
  4f0cbf:	mov    eax,DWORD PTR [eax]
  4f0cc1:	mov    DWORD PTR [esp],eax
  4f0cc4:	call   20bfb2
  4f0cc9:	mov    edi,eax
  4f0ccb:	mov    DWORD PTR [esp+0x488],esi
  4f0cd2:	mov    eax,DWORD PTR [esp+0x2c]
  4f0cd6:	mov    eax,DWORD PTR [eax]
  4f0cd8:	mov    DWORD PTR [esp+0xc],eax
  4f0cdc:	mov    eax,DWORD PTR [esp+0x488]
  4f0ce3:	mov    DWORD PTR [esp+0x8],eax
  4f0ce7:	mov    eax,DWORD PTR [ebp+0x8]
  4f0cea:	mov    DWORD PTR [esp+0x4],eax
  4f0cee:	mov    DWORD PTR [esp],edi
  4f0cf1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0cf6:	mov    ecx,DWORD PTR [esp+0x1c]
  4f0cfa:	test   ecx,ecx
  4f0cfc:	je     4f7cc1
  4f0d02:	mov    eax,DWORD PTR [esp+0x38]
  4f0d06:	mov    eax,DWORD PTR [eax]
  4f0d08:	mov    DWORD PTR [esp+0xc],eax
  4f0d0c:	mov    DWORD PTR [esp+0x8],edi
  4f0d10:	mov    DWORD PTR [esp],ecx
  4f0d13:	mov    DWORD PTR [esp+0x4],0x25
  4f0d1b:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0d20:	mov    eax,DWORD PTR [ebp+0x8]
  4f0d23:	mov    edi,DWORD PTR [eax+0x14]
  4f0d26:	mov    eax,DWORD PTR [esp+0x20]
  4f0d2a:	mov    eax,DWORD PTR [eax]
  4f0d2c:	mov    DWORD PTR [esp],eax
  4f0d2f:	call   20bfb2
  4f0d34:	mov    esi,eax
  4f0d36:	mov    eax,DWORD PTR [esp+0x28]
  4f0d3a:	mov    eax,DWORD PTR [eax]
  4f0d3c:	mov    DWORD PTR [esp+0x4],eax
  4f0d40:	mov    DWORD PTR [esp],esi
  4f0d43:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f0d48:	test   edi,edi
  4f0d4a:	je     4f7cc1
  4f0d50:	mov    eax,DWORD PTR [esp+0x24]
  4f0d54:	mov    eax,DWORD PTR [eax]
  4f0d56:	mov    DWORD PTR [esp+0xc],eax
  4f0d5a:	mov    DWORD PTR [esp+0x8],esi
  4f0d5e:	mov    DWORD PTR [esp],edi
  4f0d61:	mov    DWORD PTR [esp+0x4],0xd
  4f0d69:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f0d6e:	mov    eax,DWORD PTR [ebp+0x8]
  4f0d71:	mov    eax,DWORD PTR [eax+0x14]
  4f0d74:	test   eax,eax
  4f0d76:	je     4f7cc1
  4f0d7c:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0d80:	mov    ecx,DWORD PTR [ecx]
  4f0d82:	mov    DWORD PTR [esp+0x8],ecx
  4f0d86:	mov    DWORD PTR [esp],eax
  4f0d89:	mov    DWORD PTR [esp+0x4],0xd
  4f0d91:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0d96:	mov    esi,eax
  4f0d98:	mov    ecx,DWORD PTR [esp+0x34]
  4f0d9c:	mov    eax,DWORD PTR [ecx]
  4f0d9e:	mov    eax,DWORD PTR [eax+0x50]
  4f0da1:	cmp    DWORD PTR [eax+0x4c],0x0
  4f0da5:	jne    4f0dff
  4f0da7:	lea    eax,[ebx+0x4b044]
  4f0dad:	mov    eax,DWORD PTR [eax]
  4f0daf:	mov    DWORD PTR [esp+0x1c],eax
  4f0db3:	mov    eax,DWORD PTR [esp+0x30]
  4f0db7:	mov    eax,DWORD PTR [eax]
  4f0db9:	mov    DWORD PTR [esp],eax
  4f0dbc:	call   20bfb2
  4f0dc1:	mov    edi,eax
  4f0dc3:	mov    eax,DWORD PTR [esp+0x1c]
  4f0dc7:	mov    DWORD PTR [esp+0x480],eax
  4f0dce:	mov    eax,DWORD PTR [esp+0x2c]
  4f0dd2:	mov    eax,DWORD PTR [eax]
  4f0dd4:	mov    DWORD PTR [esp+0xc],eax
  4f0dd8:	mov    eax,DWORD PTR [esp+0x480]
  4f0ddf:	mov    DWORD PTR [esp+0x8],eax
  4f0de3:	mov    DWORD PTR [esp],edi
  4f0de6:	mov    DWORD PTR [esp+0x4],0x0
  4f0dee:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0df3:	mov    ecx,DWORD PTR [esp+0x34]
  4f0df7:	mov    eax,DWORD PTR [ecx]
  4f0df9:	mov    eax,DWORD PTR [eax+0x50]
  4f0dfc:	mov    DWORD PTR [eax+0x4c],edi
  4f0dff:	test   esi,esi
  4f0e01:	je     4f7cc1
  4f0e07:	mov    eax,DWORD PTR [ecx]
  4f0e09:	mov    eax,DWORD PTR [eax+0x50]
  4f0e0c:	mov    eax,DWORD PTR [eax+0x4c]
  4f0e0f:	mov    edi,ecx
  4f0e11:	mov    ecx,DWORD PTR [esp+0x38]
  4f0e15:	mov    ecx,DWORD PTR [ecx]
  4f0e17:	mov    DWORD PTR [esp+0xc],ecx
  4f0e1b:	mov    DWORD PTR [esp+0x8],eax
  4f0e1f:	mov    DWORD PTR [esp],esi
  4f0e22:	mov    DWORD PTR [esp+0x4],0x27
  4f0e2a:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0e2f:	mov    eax,DWORD PTR [ebp+0x8]
  4f0e32:	mov    eax,DWORD PTR [eax+0x14]
  4f0e35:	test   eax,eax
  4f0e37:	je     4f7cc1
  4f0e3d:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0e41:	mov    ecx,DWORD PTR [ecx]
  4f0e43:	mov    DWORD PTR [esp+0x8],ecx
  4f0e47:	mov    DWORD PTR [esp],eax
  4f0e4a:	mov    DWORD PTR [esp+0x4],0xd
  4f0e52:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0e57:	mov    esi,eax
  4f0e59:	mov    eax,DWORD PTR [edi]
  4f0e5b:	mov    eax,DWORD PTR [eax+0x50]
  4f0e5e:	cmp    DWORD PTR [eax+0x50],0x0
  4f0e62:	mov    ecx,edi
  4f0e64:	jne    4f0ebe
  4f0e66:	lea    eax,[ebx+0x4b048]
  4f0e6c:	mov    eax,DWORD PTR [eax]
  4f0e6e:	mov    DWORD PTR [esp+0x1c],eax
  4f0e72:	mov    eax,DWORD PTR [esp+0x30]
  4f0e76:	mov    eax,DWORD PTR [eax]
  4f0e78:	mov    DWORD PTR [esp],eax
  4f0e7b:	call   20bfb2
  4f0e80:	mov    edi,eax
  4f0e82:	mov    eax,DWORD PTR [esp+0x1c]
  4f0e86:	mov    DWORD PTR [esp+0x478],eax
  4f0e8d:	mov    eax,DWORD PTR [esp+0x2c]
  4f0e91:	mov    eax,DWORD PTR [eax]
  4f0e93:	mov    DWORD PTR [esp+0xc],eax
  4f0e97:	mov    eax,DWORD PTR [esp+0x478]
  4f0e9e:	mov    DWORD PTR [esp+0x8],eax
  4f0ea2:	mov    DWORD PTR [esp],edi
  4f0ea5:	mov    DWORD PTR [esp+0x4],0x0
  4f0ead:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0eb2:	mov    ecx,DWORD PTR [esp+0x34]
  4f0eb6:	mov    eax,DWORD PTR [ecx]
  4f0eb8:	mov    eax,DWORD PTR [eax+0x50]
  4f0ebb:	mov    DWORD PTR [eax+0x50],edi
  4f0ebe:	test   esi,esi
  4f0ec0:	je     4f7cc1
  4f0ec6:	mov    eax,DWORD PTR [ecx]
  4f0ec8:	mov    eax,DWORD PTR [eax+0x50]
  4f0ecb:	mov    eax,DWORD PTR [eax+0x50]
  4f0ece:	mov    ecx,DWORD PTR [esp+0x38]
  4f0ed2:	mov    ecx,DWORD PTR [ecx]
  4f0ed4:	mov    DWORD PTR [esp+0xc],ecx
  4f0ed8:	mov    DWORD PTR [esp+0x8],eax
  4f0edc:	mov    DWORD PTR [esp],esi
  4f0edf:	mov    DWORD PTR [esp+0x4],0x28
  4f0ee7:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f0eec:	mov    edi,DWORD PTR [ebp+0x8]
  4f0eef:	mov    eax,DWORD PTR [edi+0x14]
  4f0ef2:	mov    DWORD PTR [esp+0x1c],eax
  4f0ef6:	mov    eax,DWORD PTR [esp+0x20]
  4f0efa:	mov    eax,DWORD PTR [eax]
  4f0efc:	mov    DWORD PTR [esp],eax
  4f0eff:	call   20bfb2
  4f0f04:	mov    esi,eax
  4f0f06:	mov    eax,DWORD PTR [esp+0x28]
  4f0f0a:	mov    eax,DWORD PTR [eax]
  4f0f0c:	mov    DWORD PTR [esp+0x4],eax
  4f0f10:	mov    DWORD PTR [esp],esi
  4f0f13:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f0f18:	mov    ecx,DWORD PTR [esp+0x1c]
  4f0f1c:	test   ecx,ecx
  4f0f1e:	je     4f7cc1
  4f0f24:	mov    eax,DWORD PTR [esp+0x24]
  4f0f28:	mov    eax,DWORD PTR [eax]
  4f0f2a:	mov    DWORD PTR [esp+0xc],eax
  4f0f2e:	mov    DWORD PTR [esp+0x8],esi
  4f0f32:	mov    DWORD PTR [esp],ecx
  4f0f35:	mov    DWORD PTR [esp+0x4],0x19
  4f0f3d:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f0f42:	mov    eax,DWORD PTR [edi+0x14]
  4f0f45:	test   eax,eax
  4f0f47:	je     4f7cc1
  4f0f4d:	mov    ecx,DWORD PTR [esp+0x3c]
  4f0f51:	mov    ecx,DWORD PTR [ecx]
  4f0f53:	mov    DWORD PTR [esp+0x8],ecx
  4f0f57:	mov    DWORD PTR [esp],eax
  4f0f5a:	mov    DWORD PTR [esp+0x4],0x19
  4f0f62:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f0f67:	mov    esi,eax
  4f0f69:	mov    ecx,DWORD PTR [esp+0x34]
  4f0f6d:	mov    eax,DWORD PTR [ecx]
  4f0f6f:	mov    eax,DWORD PTR [eax+0x50]
  4f0f72:	cmp    DWORD PTR [eax+0x54],0x0
  4f0f76:	jne    4f0fd3
  4f0f78:	lea    eax,[ebx+0x4b04c]
  4f0f7e:	mov    eax,DWORD PTR [eax]
  4f0f80:	mov    DWORD PTR [esp+0x1c],eax
  4f0f84:	mov    eax,DWORD PTR [esp+0x30]
  4f0f88:	mov    eax,DWORD PTR [eax]
  4f0f8a:	mov    DWORD PTR [esp],eax
  4f0f8d:	call   20bfb2
  4f0f92:	mov    edi,eax
  4f0f94:	mov    eax,DWORD PTR [esp+0x1c]
  4f0f98:	mov    DWORD PTR [esp+0x470],eax
  4f0f9f:	mov    eax,DWORD PTR [esp+0x2c]
  4f0fa3:	mov    eax,DWORD PTR [eax]
  4f0fa5:	mov    DWORD PTR [esp+0xc],eax
  4f0fa9:	mov    eax,DWORD PTR [esp+0x470]
  4f0fb0:	mov    DWORD PTR [esp+0x8],eax
  4f0fb4:	mov    DWORD PTR [esp],edi
  4f0fb7:	mov    DWORD PTR [esp+0x4],0x0
  4f0fbf:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f0fc4:	mov    ecx,DWORD PTR [esp+0x34]
  4f0fc8:	mov    eax,DWORD PTR [ecx]
  4f0fca:	mov    eax,DWORD PTR [eax+0x50]
  4f0fcd:	mov    DWORD PTR [eax+0x54],edi
  4f0fd0:	mov    edi,DWORD PTR [ebp+0x8]
  4f0fd3:	test   esi,esi
  4f0fd5:	je     4f7cc1
  4f0fdb:	mov    eax,DWORD PTR [ecx]
  4f0fdd:	mov    eax,DWORD PTR [eax+0x50]
  4f0fe0:	mov    eax,DWORD PTR [eax+0x54]
  4f0fe3:	mov    ecx,DWORD PTR [esp+0x38]
  4f0fe7:	mov    ecx,DWORD PTR [ecx]
  4f0fe9:	mov    DWORD PTR [esp+0xc],ecx
  4f0fed:	mov    DWORD PTR [esp+0x8],eax
  4f0ff1:	mov    DWORD PTR [esp],esi
  4f0ff4:	mov    DWORD PTR [esp+0x4],0x4f
  4f0ffc:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1001:	mov    eax,DWORD PTR [edi+0x14]
  4f1004:	mov    DWORD PTR [esp+0x1c],eax
  4f1008:	mov    eax,DWORD PTR [esp+0x20]
  4f100c:	mov    eax,DWORD PTR [eax]
  4f100e:	mov    DWORD PTR [esp],eax
  4f1011:	call   20bfb2
  4f1016:	mov    esi,eax
  4f1018:	mov    eax,DWORD PTR [esp+0x28]
  4f101c:	mov    eax,DWORD PTR [eax]
  4f101e:	mov    DWORD PTR [esp+0x4],eax
  4f1022:	mov    DWORD PTR [esp],esi
  4f1025:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f102a:	mov    ecx,DWORD PTR [esp+0x1c]
  4f102e:	test   ecx,ecx
  4f1030:	je     4f7cc1
  4f1036:	mov    eax,DWORD PTR [esp+0x24]
  4f103a:	mov    eax,DWORD PTR [eax]
  4f103c:	mov    DWORD PTR [esp+0xc],eax
  4f1040:	mov    DWORD PTR [esp+0x8],esi
  4f1044:	mov    DWORD PTR [esp],ecx
  4f1047:	mov    DWORD PTR [esp+0x4],0x16
  4f104f:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f1054:	mov    eax,DWORD PTR [edi+0x14]
  4f1057:	test   eax,eax
  4f1059:	je     4f7cc1
  4f105f:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1063:	mov    ecx,DWORD PTR [ecx]
  4f1065:	mov    DWORD PTR [esp+0x8],ecx
  4f1069:	mov    DWORD PTR [esp],eax
  4f106c:	mov    DWORD PTR [esp+0x4],0x16
  4f1074:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1079:	mov    esi,eax
  4f107b:	mov    ecx,DWORD PTR [esp+0x34]
  4f107f:	mov    eax,DWORD PTR [ecx]
  4f1081:	mov    eax,DWORD PTR [eax+0x50]
  4f1084:	cmp    DWORD PTR [eax+0x58],0x0
  4f1088:	jne    4f10e5
  4f108a:	lea    eax,[ebx+0x4b050]
  4f1090:	mov    eax,DWORD PTR [eax]
  4f1092:	mov    DWORD PTR [esp+0x1c],eax
  4f1096:	mov    eax,DWORD PTR [esp+0x30]
  4f109a:	mov    eax,DWORD PTR [eax]
  4f109c:	mov    DWORD PTR [esp],eax
  4f109f:	call   20bfb2
  4f10a4:	mov    edi,eax
  4f10a6:	mov    eax,DWORD PTR [esp+0x1c]
  4f10aa:	mov    DWORD PTR [esp+0x468],eax
  4f10b1:	mov    eax,DWORD PTR [esp+0x2c]
  4f10b5:	mov    eax,DWORD PTR [eax]
  4f10b7:	mov    DWORD PTR [esp+0xc],eax
  4f10bb:	mov    eax,DWORD PTR [esp+0x468]
  4f10c2:	mov    DWORD PTR [esp+0x8],eax
  4f10c6:	mov    DWORD PTR [esp],edi
  4f10c9:	mov    DWORD PTR [esp+0x4],0x0
  4f10d1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f10d6:	mov    ecx,DWORD PTR [esp+0x34]
  4f10da:	mov    eax,DWORD PTR [ecx]
  4f10dc:	mov    eax,DWORD PTR [eax+0x50]
  4f10df:	mov    DWORD PTR [eax+0x58],edi
  4f10e2:	mov    edi,DWORD PTR [ebp+0x8]
  4f10e5:	test   esi,esi
  4f10e7:	je     4f7cc1
  4f10ed:	mov    eax,DWORD PTR [ecx]
  4f10ef:	mov    eax,DWORD PTR [eax+0x50]
  4f10f2:	mov    eax,DWORD PTR [eax+0x58]
  4f10f5:	mov    ecx,DWORD PTR [esp+0x38]
  4f10f9:	mov    ecx,DWORD PTR [ecx]
  4f10fb:	mov    DWORD PTR [esp+0xc],ecx
  4f10ff:	mov    DWORD PTR [esp+0x8],eax
  4f1103:	mov    DWORD PTR [esp],esi
  4f1106:	mov    DWORD PTR [esp+0x4],0x11
  4f110e:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1113:	mov    edi,DWORD PTR [edi+0x14]
  4f1116:	mov    eax,DWORD PTR [esp+0x20]
  4f111a:	mov    eax,DWORD PTR [eax]
  4f111c:	mov    DWORD PTR [esp],eax
  4f111f:	call   20bfb2
  4f1124:	mov    esi,eax
  4f1126:	mov    eax,DWORD PTR [esp+0x28]
  4f112a:	mov    eax,DWORD PTR [eax]
  4f112c:	mov    DWORD PTR [esp+0x4],eax
  4f1130:	mov    DWORD PTR [esp],esi
  4f1133:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f1138:	test   edi,edi
  4f113a:	je     4f7cc1
  4f1140:	mov    eax,DWORD PTR [esp+0x24]
  4f1144:	mov    eax,DWORD PTR [eax]
  4f1146:	mov    DWORD PTR [esp+0xc],eax
  4f114a:	mov    DWORD PTR [esp+0x8],esi
  4f114e:	mov    DWORD PTR [esp],edi
  4f1151:	mov    DWORD PTR [esp+0x4],0x5
  4f1159:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f115e:	mov    eax,DWORD PTR [ebp+0x8]
  4f1161:	mov    eax,DWORD PTR [eax+0x14]
  4f1164:	test   eax,eax
  4f1166:	je     4f7cc1
  4f116c:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1170:	mov    ecx,DWORD PTR [ecx]
  4f1172:	mov    DWORD PTR [esp+0x8],ecx
  4f1176:	mov    DWORD PTR [esp],eax
  4f1179:	mov    DWORD PTR [esp+0x4],0x5
  4f1181:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1186:	mov    DWORD PTR [esp+0x1c],eax
  4f118a:	lea    eax,[ebx+0x4b054]
  4f1190:	mov    esi,DWORD PTR [eax]
  4f1192:	mov    eax,DWORD PTR [esp+0x30]
  4f1196:	mov    eax,DWORD PTR [eax]
  4f1198:	mov    DWORD PTR [esp],eax
  4f119b:	call   20bfb2
  4f11a0:	mov    edi,eax
  4f11a2:	mov    DWORD PTR [esp+0x460],esi
  4f11a9:	mov    eax,DWORD PTR [esp+0x2c]
  4f11ad:	mov    eax,DWORD PTR [eax]
  4f11af:	mov    DWORD PTR [esp+0xc],eax
  4f11b3:	mov    eax,DWORD PTR [esp+0x460]
  4f11ba:	mov    DWORD PTR [esp+0x8],eax
  4f11be:	mov    eax,DWORD PTR [ebp+0x8]
  4f11c1:	mov    DWORD PTR [esp+0x4],eax
  4f11c5:	mov    DWORD PTR [esp],edi
  4f11c8:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f11cd:	mov    ecx,DWORD PTR [esp+0x1c]
  4f11d1:	test   ecx,ecx
  4f11d3:	je     4f7cc1
  4f11d9:	mov    eax,DWORD PTR [esp+0x38]
  4f11dd:	mov    eax,DWORD PTR [eax]
  4f11df:	mov    DWORD PTR [esp+0xc],eax
  4f11e3:	mov    DWORD PTR [esp+0x8],edi
  4f11e7:	mov    DWORD PTR [esp],ecx
  4f11ea:	mov    DWORD PTR [esp+0x4],0x12
  4f11f2:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f11f7:	mov    eax,DWORD PTR [ebp+0x8]
  4f11fa:	mov    eax,DWORD PTR [eax+0x14]
  4f11fd:	test   eax,eax
  4f11ff:	je     4f7cc1
  4f1205:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1209:	mov    ecx,DWORD PTR [ecx]
  4f120b:	mov    DWORD PTR [esp+0x8],ecx
  4f120f:	mov    DWORD PTR [esp],eax
  4f1212:	mov    DWORD PTR [esp+0x4],0x5
  4f121a:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f121f:	mov    esi,eax
  4f1221:	mov    ecx,DWORD PTR [esp+0x34]
  4f1225:	mov    eax,DWORD PTR [ecx]
  4f1227:	mov    eax,DWORD PTR [eax+0x50]
  4f122a:	cmp    DWORD PTR [eax+0x5c],0x0
  4f122e:	jne    4f1288
  4f1230:	lea    eax,[ebx+0x4b058]
  4f1236:	mov    eax,DWORD PTR [eax]
  4f1238:	mov    DWORD PTR [esp+0x1c],eax
  4f123c:	mov    eax,DWORD PTR [esp+0x30]
  4f1240:	mov    eax,DWORD PTR [eax]
  4f1242:	mov    DWORD PTR [esp],eax
  4f1245:	call   20bfb2
  4f124a:	mov    edi,eax
  4f124c:	mov    eax,DWORD PTR [esp+0x1c]
  4f1250:	mov    DWORD PTR [esp+0x458],eax
  4f1257:	mov    eax,DWORD PTR [esp+0x2c]
  4f125b:	mov    eax,DWORD PTR [eax]
  4f125d:	mov    DWORD PTR [esp+0xc],eax
  4f1261:	mov    eax,DWORD PTR [esp+0x458]
  4f1268:	mov    DWORD PTR [esp+0x8],eax
  4f126c:	mov    DWORD PTR [esp],edi
  4f126f:	mov    DWORD PTR [esp+0x4],0x0
  4f1277:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f127c:	mov    ecx,DWORD PTR [esp+0x34]
  4f1280:	mov    eax,DWORD PTR [ecx]
  4f1282:	mov    eax,DWORD PTR [eax+0x50]
  4f1285:	mov    DWORD PTR [eax+0x5c],edi
  4f1288:	test   esi,esi
  4f128a:	je     4f7cc1
  4f1290:	mov    eax,DWORD PTR [ecx]
  4f1292:	mov    eax,DWORD PTR [eax+0x50]
  4f1295:	mov    eax,DWORD PTR [eax+0x5c]
  4f1298:	mov    edi,ecx
  4f129a:	mov    ecx,DWORD PTR [esp+0x38]
  4f129e:	mov    ecx,DWORD PTR [ecx]
  4f12a0:	mov    DWORD PTR [esp+0xc],ecx
  4f12a4:	mov    DWORD PTR [esp+0x8],eax
  4f12a8:	mov    DWORD PTR [esp],esi
  4f12ab:	mov    DWORD PTR [esp+0x4],0x2d
  4f12b3:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f12b8:	mov    eax,DWORD PTR [ebp+0x8]
  4f12bb:	mov    eax,DWORD PTR [eax+0x14]
  4f12be:	test   eax,eax
  4f12c0:	je     4f7cc1
  4f12c6:	mov    ecx,DWORD PTR [esp+0x3c]
  4f12ca:	mov    ecx,DWORD PTR [ecx]
  4f12cc:	mov    DWORD PTR [esp+0x8],ecx
  4f12d0:	mov    DWORD PTR [esp],eax
  4f12d3:	mov    DWORD PTR [esp+0x4],0x5
  4f12db:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f12e0:	mov    esi,eax
  4f12e2:	mov    eax,DWORD PTR [edi]
  4f12e4:	mov    eax,DWORD PTR [eax+0x50]
  4f12e7:	cmp    DWORD PTR [eax+0x60],0x0
  4f12eb:	mov    ecx,edi
  4f12ed:	jne    4f1347
  4f12ef:	lea    eax,[ebx+0x4b05c]
  4f12f5:	mov    eax,DWORD PTR [eax]
  4f12f7:	mov    DWORD PTR [esp+0x1c],eax
  4f12fb:	mov    eax,DWORD PTR [esp+0x30]
  4f12ff:	mov    eax,DWORD PTR [eax]
  4f1301:	mov    DWORD PTR [esp],eax
  4f1304:	call   20bfb2
  4f1309:	mov    edi,eax
  4f130b:	mov    eax,DWORD PTR [esp+0x1c]
  4f130f:	mov    DWORD PTR [esp+0x450],eax
  4f1316:	mov    eax,DWORD PTR [esp+0x2c]
  4f131a:	mov    eax,DWORD PTR [eax]
  4f131c:	mov    DWORD PTR [esp+0xc],eax
  4f1320:	mov    eax,DWORD PTR [esp+0x450]
  4f1327:	mov    DWORD PTR [esp+0x8],eax
  4f132b:	mov    DWORD PTR [esp],edi
  4f132e:	mov    DWORD PTR [esp+0x4],0x0
  4f1336:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f133b:	mov    ecx,DWORD PTR [esp+0x34]
  4f133f:	mov    eax,DWORD PTR [ecx]
  4f1341:	mov    eax,DWORD PTR [eax+0x50]
  4f1344:	mov    DWORD PTR [eax+0x60],edi
  4f1347:	test   esi,esi
  4f1349:	je     4f7cc1
  4f134f:	mov    eax,DWORD PTR [ecx]
  4f1351:	mov    DWORD PTR [esp+0x34],ecx
  4f1355:	mov    eax,DWORD PTR [eax+0x50]
  4f1358:	mov    eax,DWORD PTR [eax+0x60]
  4f135b:	mov    ecx,DWORD PTR [esp+0x38]
  4f135f:	mov    ecx,DWORD PTR [ecx]
  4f1361:	mov    DWORD PTR [esp+0xc],ecx
  4f1365:	mov    DWORD PTR [esp+0x8],eax
  4f1369:	mov    DWORD PTR [esp],esi
  4f136c:	mov    DWORD PTR [esp+0x4],0x33
  4f1374:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1379:	mov    eax,DWORD PTR [ebp+0x8]
  4f137c:	mov    edi,DWORD PTR [eax+0x14]
  4f137f:	mov    eax,DWORD PTR [esp+0x20]
  4f1383:	mov    eax,DWORD PTR [eax]
  4f1385:	mov    DWORD PTR [esp],eax
  4f1388:	call   20bfb2
  4f138d:	mov    esi,eax
  4f138f:	mov    eax,DWORD PTR [esp+0x28]
  4f1393:	mov    eax,DWORD PTR [eax]
  4f1395:	mov    DWORD PTR [esp+0x4],eax
  4f1399:	mov    DWORD PTR [esp],esi
  4f139c:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f13a1:	test   edi,edi
  4f13a3:	je     4f7cc1
  4f13a9:	mov    eax,DWORD PTR [esp+0x24]
  4f13ad:	mov    eax,DWORD PTR [eax]
  4f13af:	mov    DWORD PTR [esp+0xc],eax
  4f13b3:	mov    DWORD PTR [esp+0x8],esi
  4f13b7:	mov    DWORD PTR [esp],edi
  4f13ba:	mov    DWORD PTR [esp+0x4],0x14
  4f13c2:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f13c7:	mov    eax,DWORD PTR [ebp+0x8]
  4f13ca:	mov    eax,DWORD PTR [eax+0x14]
  4f13cd:	test   eax,eax
  4f13cf:	je     4f7cc1
  4f13d5:	mov    ecx,DWORD PTR [esp+0x3c]
  4f13d9:	mov    ecx,DWORD PTR [ecx]
  4f13db:	mov    DWORD PTR [esp+0x8],ecx
  4f13df:	mov    DWORD PTR [esp],eax
  4f13e2:	mov    DWORD PTR [esp+0x4],0x14
  4f13ea:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f13ef:	mov    DWORD PTR [esp+0x1c],eax
  4f13f3:	lea    eax,[ebx+0x4b060]
  4f13f9:	mov    esi,DWORD PTR [eax]
  4f13fb:	mov    eax,DWORD PTR [esp+0x30]
  4f13ff:	mov    eax,DWORD PTR [eax]
  4f1401:	mov    DWORD PTR [esp],eax
  4f1404:	call   20bfb2
  4f1409:	mov    edi,eax
  4f140b:	mov    DWORD PTR [esp+0x448],esi
  4f1412:	mov    eax,DWORD PTR [esp+0x2c]
  4f1416:	mov    eax,DWORD PTR [eax]
  4f1418:	mov    DWORD PTR [esp+0xc],eax
  4f141c:	mov    eax,DWORD PTR [esp+0x448]
  4f1423:	mov    DWORD PTR [esp+0x8],eax
  4f1427:	mov    eax,DWORD PTR [ebp+0x8]
  4f142a:	mov    DWORD PTR [esp+0x4],eax
  4f142e:	mov    DWORD PTR [esp],edi
  4f1431:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1436:	mov    ecx,DWORD PTR [esp+0x1c]
  4f143a:	test   ecx,ecx
  4f143c:	je     4f7cc1
  4f1442:	mov    eax,DWORD PTR [esp+0x38]
  4f1446:	mov    eax,DWORD PTR [eax]
  4f1448:	mov    DWORD PTR [esp+0xc],eax
  4f144c:	mov    DWORD PTR [esp+0x8],edi
  4f1450:	mov    DWORD PTR [esp],ecx
  4f1453:	mov    DWORD PTR [esp+0x4],0x45
  4f145b:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1460:	mov    eax,DWORD PTR [ebp+0x8]
  4f1463:	mov    eax,DWORD PTR [eax+0x14]
  4f1466:	test   eax,eax
  4f1468:	je     4f7cc1
  4f146e:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1472:	mov    ecx,DWORD PTR [ecx]
  4f1474:	mov    DWORD PTR [esp+0x8],ecx
  4f1478:	mov    DWORD PTR [esp],eax
  4f147b:	mov    DWORD PTR [esp+0x4],0x14
  4f1483:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1488:	mov    DWORD PTR [esp+0x1c],eax
  4f148c:	lea    eax,[ebx+0x4b064]
  4f1492:	mov    esi,DWORD PTR [eax]
  4f1494:	mov    eax,DWORD PTR [esp+0x30]
  4f1498:	mov    eax,DWORD PTR [eax]
  4f149a:	mov    DWORD PTR [esp],eax
  4f149d:	call   20bfb2
  4f14a2:	mov    edi,eax
  4f14a4:	mov    DWORD PTR [esp+0x440],esi
  4f14ab:	mov    eax,DWORD PTR [esp+0x2c]
  4f14af:	mov    eax,DWORD PTR [eax]
  4f14b1:	mov    DWORD PTR [esp+0xc],eax
  4f14b5:	mov    eax,DWORD PTR [esp+0x440]
  4f14bc:	mov    DWORD PTR [esp+0x8],eax
  4f14c0:	mov    eax,DWORD PTR [ebp+0x8]
  4f14c3:	mov    DWORD PTR [esp+0x4],eax
  4f14c7:	mov    DWORD PTR [esp],edi
  4f14ca:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f14cf:	mov    ecx,DWORD PTR [esp+0x1c]
  4f14d3:	test   ecx,ecx
  4f14d5:	je     4f7cc1
  4f14db:	mov    eax,DWORD PTR [esp+0x38]
  4f14df:	mov    eax,DWORD PTR [eax]
  4f14e1:	mov    DWORD PTR [esp+0xc],eax
  4f14e5:	mov    DWORD PTR [esp+0x8],edi
  4f14e9:	mov    DWORD PTR [esp],ecx
  4f14ec:	mov    DWORD PTR [esp+0x4],0x46
  4f14f4:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f14f9:	mov    eax,DWORD PTR [ebp+0x8]
  4f14fc:	mov    edi,DWORD PTR [eax+0x14]
  4f14ff:	mov    eax,DWORD PTR [esp+0x20]
  4f1503:	mov    eax,DWORD PTR [eax]
  4f1505:	mov    DWORD PTR [esp],eax
  4f1508:	call   20bfb2
  4f150d:	mov    esi,eax
  4f150f:	mov    eax,DWORD PTR [esp+0x28]
  4f1513:	mov    eax,DWORD PTR [eax]
  4f1515:	mov    DWORD PTR [esp+0x4],eax
  4f1519:	mov    DWORD PTR [esp],esi
  4f151c:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f1521:	test   edi,edi
  4f1523:	je     4f7cc1
  4f1529:	mov    eax,DWORD PTR [esp+0x24]
  4f152d:	mov    eax,DWORD PTR [eax]
  4f152f:	mov    DWORD PTR [esp+0xc],eax
  4f1533:	mov    DWORD PTR [esp+0x8],esi
  4f1537:	mov    DWORD PTR [esp],edi
  4f153a:	mov    DWORD PTR [esp+0x4],0x25
  4f1542:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f1547:	mov    eax,DWORD PTR [ebp+0x8]
  4f154a:	mov    ecx,eax
  4f154c:	mov    eax,DWORD PTR [ecx+0x14]
  4f154f:	test   eax,eax
  4f1551:	mov    edi,ecx
  4f1553:	je     4f7cc1
  4f1559:	mov    ecx,DWORD PTR [esp+0x3c]
  4f155d:	mov    ecx,DWORD PTR [ecx]
  4f155f:	mov    DWORD PTR [esp+0x8],ecx
  4f1563:	mov    DWORD PTR [esp],eax
  4f1566:	mov    DWORD PTR [esp+0x4],0x25
  4f156e:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1573:	mov    esi,eax
  4f1575:	mov    ecx,DWORD PTR [esp+0x34]
  4f1579:	mov    eax,DWORD PTR [ecx]
  4f157b:	mov    eax,DWORD PTR [eax+0x50]
  4f157e:	cmp    DWORD PTR [eax+0x64],0x0
  4f1582:	jne    4f15df
  4f1584:	lea    eax,[ebx+0x4b068]
  4f158a:	mov    eax,DWORD PTR [eax]
  4f158c:	mov    DWORD PTR [esp+0x1c],eax
  4f1590:	mov    eax,DWORD PTR [esp+0x30]
  4f1594:	mov    eax,DWORD PTR [eax]
  4f1596:	mov    DWORD PTR [esp],eax
  4f1599:	call   20bfb2
  4f159e:	mov    edi,eax
  4f15a0:	mov    eax,DWORD PTR [esp+0x1c]
  4f15a4:	mov    DWORD PTR [esp+0x438],eax
  4f15ab:	mov    eax,DWORD PTR [esp+0x2c]
  4f15af:	mov    eax,DWORD PTR [eax]
  4f15b1:	mov    DWORD PTR [esp+0xc],eax
  4f15b5:	mov    eax,DWORD PTR [esp+0x438]
  4f15bc:	mov    DWORD PTR [esp+0x8],eax
  4f15c0:	mov    DWORD PTR [esp],edi
  4f15c3:	mov    DWORD PTR [esp+0x4],0x0
  4f15cb:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f15d0:	mov    ecx,DWORD PTR [esp+0x34]
  4f15d4:	mov    eax,DWORD PTR [ecx]
  4f15d6:	mov    eax,DWORD PTR [eax+0x50]
  4f15d9:	mov    DWORD PTR [eax+0x64],edi
  4f15dc:	mov    edi,DWORD PTR [ebp+0x8]
  4f15df:	test   esi,esi
  4f15e1:	je     4f7cc1
  4f15e7:	mov    eax,DWORD PTR [ecx]
  4f15e9:	mov    eax,DWORD PTR [eax+0x50]
  4f15ec:	mov    eax,DWORD PTR [eax+0x64]
  4f15ef:	mov    ecx,DWORD PTR [esp+0x38]
  4f15f3:	mov    ecx,DWORD PTR [ecx]
  4f15f5:	mov    DWORD PTR [esp+0xc],ecx
  4f15f9:	mov    DWORD PTR [esp+0x8],eax
  4f15fd:	mov    DWORD PTR [esp],esi
  4f1600:	mov    DWORD PTR [esp+0x4],0x6a
  4f1608:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f160d:	mov    edi,DWORD PTR [edi+0x14]
  4f1610:	mov    eax,DWORD PTR [esp+0x20]
  4f1614:	mov    eax,DWORD PTR [eax]
  4f1616:	mov    DWORD PTR [esp],eax
  4f1619:	call   20bfb2
  4f161e:	mov    esi,eax
  4f1620:	mov    eax,DWORD PTR [esp+0x28]
  4f1624:	mov    eax,DWORD PTR [eax]
  4f1626:	mov    DWORD PTR [esp+0x4],eax
  4f162a:	mov    DWORD PTR [esp],esi
  4f162d:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f1632:	test   edi,edi
  4f1634:	je     4f7cc1
  4f163a:	mov    eax,DWORD PTR [esp+0x24]
  4f163e:	mov    eax,DWORD PTR [eax]
  4f1640:	mov    DWORD PTR [esp+0xc],eax
  4f1644:	mov    DWORD PTR [esp+0x8],esi
  4f1648:	mov    DWORD PTR [esp],edi
  4f164b:	mov    DWORD PTR [esp+0x4],0x27
  4f1653:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f1658:	mov    eax,DWORD PTR [ebp+0x8]
  4f165b:	mov    eax,DWORD PTR [eax+0x14]
  4f165e:	test   eax,eax
  4f1660:	je     4f7cc1
  4f1666:	mov    ecx,DWORD PTR [esp+0x3c]
  4f166a:	mov    ecx,DWORD PTR [ecx]
  4f166c:	mov    DWORD PTR [esp+0x8],ecx
  4f1670:	mov    DWORD PTR [esp],eax
  4f1673:	mov    DWORD PTR [esp+0x4],0x27
  4f167b:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1680:	mov    DWORD PTR [esp+0x1c],eax
  4f1684:	lea    eax,[ebx+0x4b06c]
  4f168a:	mov    esi,DWORD PTR [eax]
  4f168c:	mov    eax,DWORD PTR [esp+0x30]
  4f1690:	mov    eax,DWORD PTR [eax]
  4f1692:	mov    DWORD PTR [esp],eax
  4f1695:	call   20bfb2
  4f169a:	mov    edi,eax
  4f169c:	mov    DWORD PTR [esp+0x430],esi
  4f16a3:	mov    eax,DWORD PTR [esp+0x2c]
  4f16a7:	mov    eax,DWORD PTR [eax]
  4f16a9:	mov    DWORD PTR [esp+0xc],eax
  4f16ad:	mov    eax,DWORD PTR [esp+0x430]
  4f16b4:	mov    DWORD PTR [esp+0x8],eax
  4f16b8:	mov    eax,DWORD PTR [ebp+0x8]
  4f16bb:	mov    DWORD PTR [esp+0x4],eax
  4f16bf:	mov    DWORD PTR [esp],edi
  4f16c2:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f16c7:	mov    ecx,DWORD PTR [esp+0x1c]
  4f16cb:	test   ecx,ecx
  4f16cd:	je     4f7cc1
  4f16d3:	mov    eax,DWORD PTR [esp+0x38]
  4f16d7:	mov    eax,DWORD PTR [eax]
  4f16d9:	mov    DWORD PTR [esp+0xc],eax
  4f16dd:	mov    DWORD PTR [esp+0x8],edi
  4f16e1:	mov    DWORD PTR [esp],ecx
  4f16e4:	mov    DWORD PTR [esp+0x4],0x8
  4f16ec:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f16f1:	mov    edi,DWORD PTR [ebp+0x8]
  4f16f4:	mov    eax,DWORD PTR [edi+0x14]
  4f16f7:	test   eax,eax
  4f16f9:	je     4f7cc1
  4f16ff:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1703:	mov    ecx,DWORD PTR [ecx]
  4f1705:	mov    DWORD PTR [esp+0x8],ecx
  4f1709:	mov    DWORD PTR [esp],eax
  4f170c:	mov    DWORD PTR [esp+0x4],0x27
  4f1714:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1719:	mov    esi,eax
  4f171b:	mov    ecx,DWORD PTR [esp+0x34]
  4f171f:	mov    eax,DWORD PTR [ecx]
  4f1721:	mov    eax,DWORD PTR [eax+0x50]
  4f1724:	cmp    DWORD PTR [eax+0x68],0x0
  4f1728:	jne    4f1785
  4f172a:	lea    eax,[ebx+0x4b070]
  4f1730:	mov    eax,DWORD PTR [eax]
  4f1732:	mov    DWORD PTR [esp+0x1c],eax
  4f1736:	mov    eax,DWORD PTR [esp+0x30]
  4f173a:	mov    eax,DWORD PTR [eax]
  4f173c:	mov    DWORD PTR [esp],eax
  4f173f:	call   20bfb2
  4f1744:	mov    edi,eax
  4f1746:	mov    eax,DWORD PTR [esp+0x1c]
  4f174a:	mov    DWORD PTR [esp+0x428],eax
  4f1751:	mov    eax,DWORD PTR [esp+0x2c]
  4f1755:	mov    eax,DWORD PTR [eax]
  4f1757:	mov    DWORD PTR [esp+0xc],eax
  4f175b:	mov    eax,DWORD PTR [esp+0x428]
  4f1762:	mov    DWORD PTR [esp+0x8],eax
  4f1766:	mov    DWORD PTR [esp],edi
  4f1769:	mov    DWORD PTR [esp+0x4],0x0
  4f1771:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1776:	mov    ecx,DWORD PTR [esp+0x34]
  4f177a:	mov    eax,DWORD PTR [ecx]
  4f177c:	mov    eax,DWORD PTR [eax+0x50]
  4f177f:	mov    DWORD PTR [eax+0x68],edi
  4f1782:	mov    edi,DWORD PTR [ebp+0x8]
  4f1785:	test   esi,esi
  4f1787:	je     4f7cc1
  4f178d:	mov    eax,DWORD PTR [ecx]
  4f178f:	mov    eax,DWORD PTR [eax+0x50]
  4f1792:	mov    eax,DWORD PTR [eax+0x68]
  4f1795:	mov    ecx,DWORD PTR [esp+0x38]
  4f1799:	mov    ecx,DWORD PTR [ecx]
  4f179b:	mov    DWORD PTR [esp+0xc],ecx
  4f179f:	mov    DWORD PTR [esp+0x8],eax
  4f17a3:	mov    DWORD PTR [esp],esi
  4f17a6:	mov    DWORD PTR [esp+0x4],0x6a
  4f17ae:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f17b3:	mov    eax,DWORD PTR [edi+0x14]
  4f17b6:	mov    DWORD PTR [esp+0x1c],eax
  4f17ba:	mov    eax,DWORD PTR [esp+0x20]
  4f17be:	mov    eax,DWORD PTR [eax]
  4f17c0:	mov    DWORD PTR [esp],eax
  4f17c3:	call   20bfb2
  4f17c8:	mov    esi,eax
  4f17ca:	mov    eax,DWORD PTR [esp+0x28]
  4f17ce:	mov    eax,DWORD PTR [eax]
  4f17d0:	mov    DWORD PTR [esp+0x4],eax
  4f17d4:	mov    DWORD PTR [esp],esi
  4f17d7:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f17dc:	mov    ecx,DWORD PTR [esp+0x1c]
  4f17e0:	test   ecx,ecx
  4f17e2:	je     4f7cc1
  4f17e8:	mov    eax,DWORD PTR [esp+0x24]
  4f17ec:	mov    eax,DWORD PTR [eax]
  4f17ee:	mov    DWORD PTR [esp+0xc],eax
  4f17f2:	mov    DWORD PTR [esp+0x8],esi
  4f17f6:	mov    DWORD PTR [esp],ecx
  4f17f9:	mov    DWORD PTR [esp+0x4],0x24
  4f1801:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f1806:	mov    eax,DWORD PTR [edi+0x14]
  4f1809:	test   eax,eax
  4f180b:	je     4f7cc1
  4f1811:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1815:	mov    ecx,DWORD PTR [ecx]
  4f1817:	mov    DWORD PTR [esp+0x8],ecx
  4f181b:	mov    DWORD PTR [esp],eax
  4f181e:	mov    DWORD PTR [esp+0x4],0x24
  4f1826:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f182b:	mov    esi,eax
  4f182d:	mov    ecx,DWORD PTR [esp+0x34]
  4f1831:	mov    eax,DWORD PTR [ecx]
  4f1833:	mov    eax,DWORD PTR [eax+0x50]
  4f1836:	cmp    DWORD PTR [eax+0x6c],0x0
  4f183a:	jne    4f1897
  4f183c:	lea    eax,[ebx+0x4b074]
  4f1842:	mov    eax,DWORD PTR [eax]
  4f1844:	mov    DWORD PTR [esp+0x1c],eax
  4f1848:	mov    eax,DWORD PTR [esp+0x30]
  4f184c:	mov    eax,DWORD PTR [eax]
  4f184e:	mov    DWORD PTR [esp],eax
  4f1851:	call   20bfb2
  4f1856:	mov    edi,eax
  4f1858:	mov    eax,DWORD PTR [esp+0x1c]
  4f185c:	mov    DWORD PTR [esp+0x420],eax
  4f1863:	mov    eax,DWORD PTR [esp+0x2c]
  4f1867:	mov    eax,DWORD PTR [eax]
  4f1869:	mov    DWORD PTR [esp+0xc],eax
  4f186d:	mov    eax,DWORD PTR [esp+0x420]
  4f1874:	mov    DWORD PTR [esp+0x8],eax
  4f1878:	mov    DWORD PTR [esp],edi
  4f187b:	mov    DWORD PTR [esp+0x4],0x0
  4f1883:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1888:	mov    ecx,DWORD PTR [esp+0x34]
  4f188c:	mov    eax,DWORD PTR [ecx]
  4f188e:	mov    eax,DWORD PTR [eax+0x50]
  4f1891:	mov    DWORD PTR [eax+0x6c],edi
  4f1894:	mov    edi,DWORD PTR [ebp+0x8]
  4f1897:	test   esi,esi
  4f1899:	je     4f7cc1
  4f189f:	mov    eax,DWORD PTR [ecx]
  4f18a1:	mov    eax,DWORD PTR [eax+0x50]
  4f18a4:	mov    eax,DWORD PTR [eax+0x6c]
  4f18a7:	mov    ecx,DWORD PTR [esp+0x38]
  4f18ab:	mov    ecx,DWORD PTR [ecx]
  4f18ad:	mov    DWORD PTR [esp+0xc],ecx
  4f18b1:	mov    DWORD PTR [esp+0x8],eax
  4f18b5:	mov    DWORD PTR [esp],esi
  4f18b8:	mov    DWORD PTR [esp+0x4],0x6a
  4f18c0:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f18c5:	mov    eax,DWORD PTR [edi+0x14]
  4f18c8:	mov    DWORD PTR [esp+0x1c],eax
  4f18cc:	mov    eax,DWORD PTR [esp+0x20]
  4f18d0:	mov    eax,DWORD PTR [eax]
  4f18d2:	mov    DWORD PTR [esp],eax
  4f18d5:	call   20bfb2
  4f18da:	mov    esi,eax
  4f18dc:	mov    eax,DWORD PTR [esp+0x28]
  4f18e0:	mov    eax,DWORD PTR [eax]
  4f18e2:	mov    DWORD PTR [esp+0x4],eax
  4f18e6:	mov    DWORD PTR [esp],esi
  4f18e9:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f18ee:	mov    ecx,DWORD PTR [esp+0x1c]
  4f18f2:	test   ecx,ecx
  4f18f4:	je     4f7cc1
  4f18fa:	mov    eax,DWORD PTR [esp+0x24]
  4f18fe:	mov    eax,DWORD PTR [eax]
  4f1900:	mov    DWORD PTR [esp+0xc],eax
  4f1904:	mov    DWORD PTR [esp+0x8],esi
  4f1908:	mov    DWORD PTR [esp],ecx
  4f190b:	mov    DWORD PTR [esp+0x4],0x26
  4f1913:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f1918:	mov    eax,DWORD PTR [edi+0x14]
  4f191b:	test   eax,eax
  4f191d:	je     4f7cc1
  4f1923:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1927:	mov    ecx,DWORD PTR [ecx]
  4f1929:	mov    DWORD PTR [esp+0x8],ecx
  4f192d:	mov    DWORD PTR [esp],eax
  4f1930:	mov    DWORD PTR [esp+0x4],0x26
  4f1938:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f193d:	mov    esi,eax
  4f193f:	mov    ecx,DWORD PTR [esp+0x34]
  4f1943:	mov    eax,DWORD PTR [ecx]
  4f1945:	mov    eax,DWORD PTR [eax+0x50]
  4f1948:	cmp    DWORD PTR [eax+0x70],0x0
  4f194c:	jne    4f19a9
  4f194e:	lea    eax,[ebx+0x4b078]
  4f1954:	mov    eax,DWORD PTR [eax]
  4f1956:	mov    DWORD PTR [esp+0x1c],eax
  4f195a:	mov    eax,DWORD PTR [esp+0x30]
  4f195e:	mov    eax,DWORD PTR [eax]
  4f1960:	mov    DWORD PTR [esp],eax
  4f1963:	call   20bfb2
  4f1968:	mov    edi,eax
  4f196a:	mov    eax,DWORD PTR [esp+0x1c]
  4f196e:	mov    DWORD PTR [esp+0x418],eax
  4f1975:	mov    eax,DWORD PTR [esp+0x2c]
  4f1979:	mov    eax,DWORD PTR [eax]
  4f197b:	mov    DWORD PTR [esp+0xc],eax
  4f197f:	mov    eax,DWORD PTR [esp+0x418]
  4f1986:	mov    DWORD PTR [esp+0x8],eax
  4f198a:	mov    DWORD PTR [esp],edi
  4f198d:	mov    DWORD PTR [esp+0x4],0x0
  4f1995:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f199a:	mov    ecx,DWORD PTR [esp+0x34]
  4f199e:	mov    eax,DWORD PTR [ecx]
  4f19a0:	mov    eax,DWORD PTR [eax+0x50]
  4f19a3:	mov    DWORD PTR [eax+0x70],edi
  4f19a6:	mov    edi,DWORD PTR [ebp+0x8]
  4f19a9:	test   esi,esi
  4f19ab:	je     4f7cc1
  4f19b1:	mov    eax,DWORD PTR [ecx]
  4f19b3:	mov    eax,DWORD PTR [eax+0x50]
  4f19b6:	mov    eax,DWORD PTR [eax+0x70]
  4f19b9:	mov    ecx,DWORD PTR [esp+0x38]
  4f19bd:	mov    ecx,DWORD PTR [ecx]
  4f19bf:	mov    DWORD PTR [esp+0xc],ecx
  4f19c3:	mov    DWORD PTR [esp+0x8],eax
  4f19c7:	mov    DWORD PTR [esp],esi
  4f19ca:	mov    DWORD PTR [esp+0x4],0x27
  4f19d2:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f19d7:	mov    eax,DWORD PTR [edi+0x14]
  4f19da:	mov    DWORD PTR [esp+0x1c],eax
  4f19de:	mov    eax,DWORD PTR [esp+0x20]
  4f19e2:	mov    eax,DWORD PTR [eax]
  4f19e4:	mov    DWORD PTR [esp],eax
  4f19e7:	call   20bfb2
  4f19ec:	mov    esi,eax
  4f19ee:	mov    eax,DWORD PTR [esp+0x28]
  4f19f2:	mov    eax,DWORD PTR [eax]
  4f19f4:	mov    DWORD PTR [esp+0x4],eax
  4f19f8:	mov    DWORD PTR [esp],esi
  4f19fb:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f1a00:	mov    ecx,DWORD PTR [esp+0x1c]
  4f1a04:	test   ecx,ecx
  4f1a06:	je     4f7cc1
  4f1a0c:	mov    eax,DWORD PTR [esp+0x24]
  4f1a10:	mov    eax,DWORD PTR [eax]
  4f1a12:	mov    DWORD PTR [esp+0xc],eax
  4f1a16:	mov    DWORD PTR [esp+0x8],esi
  4f1a1a:	mov    DWORD PTR [esp],ecx
  4f1a1d:	mov    DWORD PTR [esp+0x4],0x15
  4f1a25:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f1a2a:	mov    eax,DWORD PTR [edi+0x14]
  4f1a2d:	test   eax,eax
  4f1a2f:	je     4f7cc1
  4f1a35:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1a39:	mov    ecx,DWORD PTR [ecx]
  4f1a3b:	mov    DWORD PTR [esp+0x8],ecx
  4f1a3f:	mov    DWORD PTR [esp],eax
  4f1a42:	mov    DWORD PTR [esp+0x4],0x15
  4f1a4a:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1a4f:	mov    edx,eax
  4f1a51:	mov    esi,DWORD PTR [esp+0x34]
  4f1a55:	mov    eax,DWORD PTR [esi]
  4f1a57:	mov    eax,DWORD PTR [eax+0x50]
  4f1a5a:	cmp    DWORD PTR [eax+0x74],0x0
  4f1a5e:	jne    4f1abf
  4f1a60:	lea    eax,[ebx+0x4b07c]
  4f1a66:	mov    eax,DWORD PTR [eax]
  4f1a68:	mov    DWORD PTR [esp+0x1c],eax
  4f1a6c:	mov    eax,DWORD PTR [esp+0x30]
  4f1a70:	mov    eax,DWORD PTR [eax]
  4f1a72:	mov    DWORD PTR [esp],eax
  4f1a75:	mov    esi,edx
  4f1a77:	call   20bfb2
  4f1a7c:	mov    edi,eax
  4f1a7e:	mov    eax,DWORD PTR [esp+0x1c]
  4f1a82:	mov    DWORD PTR [esp+0x410],eax
  4f1a89:	mov    eax,DWORD PTR [esp+0x2c]
  4f1a8d:	mov    eax,DWORD PTR [eax]
  4f1a8f:	mov    DWORD PTR [esp+0xc],eax
  4f1a93:	mov    eax,DWORD PTR [esp+0x410]
  4f1a9a:	mov    DWORD PTR [esp+0x8],eax
  4f1a9e:	mov    DWORD PTR [esp],edi
  4f1aa1:	mov    DWORD PTR [esp+0x4],0x0
  4f1aa9:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1aae:	mov    edx,esi
  4f1ab0:	mov    esi,DWORD PTR [esp+0x34]
  4f1ab4:	mov    eax,DWORD PTR [esi]
  4f1ab6:	mov    eax,DWORD PTR [eax+0x50]
  4f1ab9:	mov    DWORD PTR [eax+0x74],edi
  4f1abc:	mov    edi,DWORD PTR [ebp+0x8]
  4f1abf:	test   edx,edx
  4f1ac1:	je     4f7cc1
  4f1ac7:	mov    eax,DWORD PTR [esi]
  4f1ac9:	mov    eax,DWORD PTR [eax+0x50]
  4f1acc:	mov    eax,DWORD PTR [eax+0x74]
  4f1acf:	mov    ecx,DWORD PTR [esp+0x38]
  4f1ad3:	mov    ecx,DWORD PTR [ecx]
  4f1ad5:	mov    DWORD PTR [esp+0xc],ecx
  4f1ad9:	mov    DWORD PTR [esp+0x8],eax
  4f1add:	mov    DWORD PTR [esp],edx
  4f1ae0:	mov    DWORD PTR [esp+0x4],0x39
  4f1ae8:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1aed:	mov    eax,DWORD PTR [edi+0x14]
  4f1af0:	test   eax,eax
  4f1af2:	je     4f7cc1
  4f1af8:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1afc:	mov    ecx,DWORD PTR [ecx]
  4f1afe:	mov    DWORD PTR [esp+0x8],ecx
  4f1b02:	mov    DWORD PTR [esp],eax
  4f1b05:	mov    DWORD PTR [esp+0x4],0x15
  4f1b0d:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1b12:	mov    edx,eax
  4f1b14:	mov    eax,DWORD PTR [esi]
  4f1b16:	mov    eax,DWORD PTR [eax+0x50]
  4f1b19:	cmp    DWORD PTR [eax+0x78],0x0
  4f1b1d:	jne    4f1b7e
  4f1b1f:	lea    eax,[ebx+0x4b080]
  4f1b25:	mov    eax,DWORD PTR [eax]
  4f1b27:	mov    DWORD PTR [esp+0x1c],eax
  4f1b2b:	mov    eax,DWORD PTR [esp+0x30]
  4f1b2f:	mov    eax,DWORD PTR [eax]
  4f1b31:	mov    DWORD PTR [esp],eax
  4f1b34:	mov    esi,edx
  4f1b36:	call   20bfb2
  4f1b3b:	mov    edi,eax
  4f1b3d:	mov    eax,DWORD PTR [esp+0x1c]
  4f1b41:	mov    DWORD PTR [esp+0x408],eax
  4f1b48:	mov    eax,DWORD PTR [esp+0x2c]
  4f1b4c:	mov    eax,DWORD PTR [eax]
  4f1b4e:	mov    DWORD PTR [esp+0xc],eax
  4f1b52:	mov    eax,DWORD PTR [esp+0x408]
  4f1b59:	mov    DWORD PTR [esp+0x8],eax
  4f1b5d:	mov    DWORD PTR [esp],edi
  4f1b60:	mov    DWORD PTR [esp+0x4],0x0
  4f1b68:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1b6d:	mov    edx,esi
  4f1b6f:	mov    esi,DWORD PTR [esp+0x34]
  4f1b73:	mov    eax,DWORD PTR [esi]
  4f1b75:	mov    eax,DWORD PTR [eax+0x50]
  4f1b78:	mov    DWORD PTR [eax+0x78],edi
  4f1b7b:	mov    edi,DWORD PTR [ebp+0x8]
  4f1b7e:	test   edx,edx
  4f1b80:	je     4f7cc1
  4f1b86:	mov    eax,DWORD PTR [esi]
  4f1b88:	mov    eax,DWORD PTR [eax+0x50]
  4f1b8b:	mov    eax,DWORD PTR [eax+0x78]
  4f1b8e:	mov    ecx,DWORD PTR [esp+0x38]
  4f1b92:	mov    ecx,DWORD PTR [ecx]
  4f1b94:	mov    DWORD PTR [esp+0xc],ecx
  4f1b98:	mov    DWORD PTR [esp+0x8],eax
  4f1b9c:	mov    DWORD PTR [esp],edx
  4f1b9f:	mov    DWORD PTR [esp+0x4],0x71
  4f1ba7:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1bac:	mov    eax,DWORD PTR [edi+0x14]
  4f1baf:	test   eax,eax
  4f1bb1:	je     4f7cc1
  4f1bb7:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1bbb:	mov    ecx,DWORD PTR [ecx]
  4f1bbd:	mov    DWORD PTR [esp+0x8],ecx
  4f1bc1:	mov    DWORD PTR [esp],eax
  4f1bc4:	mov    DWORD PTR [esp+0x4],0x15
  4f1bcc:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1bd1:	mov    edx,eax
  4f1bd3:	mov    eax,DWORD PTR [esi]
  4f1bd5:	mov    eax,DWORD PTR [eax+0x50]
  4f1bd8:	cmp    DWORD PTR [eax+0x7c],0x0
  4f1bdc:	jne    4f1c3d
  4f1bde:	lea    eax,[ebx+0x4b084]
  4f1be4:	mov    eax,DWORD PTR [eax]
  4f1be6:	mov    DWORD PTR [esp+0x1c],eax
  4f1bea:	mov    eax,DWORD PTR [esp+0x30]
  4f1bee:	mov    eax,DWORD PTR [eax]
  4f1bf0:	mov    DWORD PTR [esp],eax
  4f1bf3:	mov    esi,edx
  4f1bf5:	call   20bfb2
  4f1bfa:	mov    edi,eax
  4f1bfc:	mov    eax,DWORD PTR [esp+0x1c]
  4f1c00:	mov    DWORD PTR [esp+0x400],eax
  4f1c07:	mov    eax,DWORD PTR [esp+0x2c]
  4f1c0b:	mov    eax,DWORD PTR [eax]
  4f1c0d:	mov    DWORD PTR [esp+0xc],eax
  4f1c11:	mov    eax,DWORD PTR [esp+0x400]
  4f1c18:	mov    DWORD PTR [esp+0x8],eax
  4f1c1c:	mov    DWORD PTR [esp],edi
  4f1c1f:	mov    DWORD PTR [esp+0x4],0x0
  4f1c27:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1c2c:	mov    edx,esi
  4f1c2e:	mov    esi,DWORD PTR [esp+0x34]
  4f1c32:	mov    eax,DWORD PTR [esi]
  4f1c34:	mov    eax,DWORD PTR [eax+0x50]
  4f1c37:	mov    DWORD PTR [eax+0x7c],edi
  4f1c3a:	mov    edi,DWORD PTR [ebp+0x8]
  4f1c3d:	test   edx,edx
  4f1c3f:	je     4f7cc1
  4f1c45:	mov    eax,DWORD PTR [esi]
  4f1c47:	mov    DWORD PTR [esp+0x34],esi
  4f1c4b:	mov    eax,DWORD PTR [eax+0x50]
  4f1c4e:	mov    eax,DWORD PTR [eax+0x7c]
  4f1c51:	mov    ecx,DWORD PTR [esp+0x38]
  4f1c55:	mov    ecx,DWORD PTR [ecx]
  4f1c57:	mov    DWORD PTR [esp+0xc],ecx
  4f1c5b:	mov    DWORD PTR [esp+0x8],eax
  4f1c5f:	mov    DWORD PTR [esp],edx
  4f1c62:	mov    DWORD PTR [esp+0x4],0x6a
  4f1c6a:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1c6f:	mov    eax,DWORD PTR [edi+0x14]
  4f1c72:	test   eax,eax
  4f1c74:	je     4f7cc1
  4f1c7a:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1c7e:	mov    ecx,DWORD PTR [ecx]
  4f1c80:	mov    DWORD PTR [esp+0x8],ecx
  4f1c84:	mov    DWORD PTR [esp],eax
  4f1c87:	mov    DWORD PTR [esp+0x4],0x15
  4f1c8f:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1c94:	mov    DWORD PTR [esp+0x1c],eax
  4f1c98:	lea    eax,[ebx+0x4b088]
  4f1c9e:	mov    esi,DWORD PTR [eax]
  4f1ca0:	mov    eax,DWORD PTR [esp+0x30]
  4f1ca4:	mov    eax,DWORD PTR [eax]
  4f1ca6:	mov    DWORD PTR [esp],eax
  4f1ca9:	call   20bfb2
  4f1cae:	mov    edi,eax
  4f1cb0:	mov    DWORD PTR [esp+0x3f8],esi
  4f1cb7:	mov    eax,DWORD PTR [esp+0x2c]
  4f1cbb:	mov    eax,DWORD PTR [eax]
  4f1cbd:	mov    DWORD PTR [esp+0xc],eax
  4f1cc1:	mov    eax,DWORD PTR [esp+0x3f8]
  4f1cc8:	mov    DWORD PTR [esp+0x8],eax
  4f1ccc:	mov    esi,DWORD PTR [ebp+0x8]
  4f1ccf:	mov    DWORD PTR [esp+0x4],esi
  4f1cd3:	mov    DWORD PTR [esp],edi
  4f1cd6:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1cdb:	mov    ecx,DWORD PTR [esp+0x1c]
  4f1cdf:	test   ecx,ecx
  4f1ce1:	je     4f7cc1
  4f1ce7:	mov    eax,DWORD PTR [esp+0x38]
  4f1ceb:	mov    eax,DWORD PTR [eax]
  4f1ced:	mov    DWORD PTR [esp+0xc],eax
  4f1cf1:	mov    DWORD PTR [esp+0x8],edi
  4f1cf5:	mov    DWORD PTR [esp],ecx
  4f1cf8:	mov    DWORD PTR [esp+0x4],0x6d
  4f1d00:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1d05:	mov    eax,DWORD PTR [esi+0x14]
  4f1d08:	test   eax,eax
  4f1d0a:	je     4f7cc1
  4f1d10:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1d14:	mov    ecx,DWORD PTR [ecx]
  4f1d16:	mov    DWORD PTR [esp+0x8],ecx
  4f1d1a:	mov    DWORD PTR [esp],eax
  4f1d1d:	mov    DWORD PTR [esp+0x4],0x15
  4f1d25:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1d2a:	mov    DWORD PTR [esp+0x1c],eax
  4f1d2e:	lea    eax,[ebx+0x4b08c]
  4f1d34:	mov    esi,DWORD PTR [eax]
  4f1d36:	mov    eax,DWORD PTR [esp+0x30]
  4f1d3a:	mov    eax,DWORD PTR [eax]
  4f1d3c:	mov    DWORD PTR [esp],eax
  4f1d3f:	call   20bfb2
  4f1d44:	mov    edi,eax
  4f1d46:	mov    DWORD PTR [esp+0x3f0],esi
  4f1d4d:	mov    eax,DWORD PTR [esp+0x2c]
  4f1d51:	mov    eax,DWORD PTR [eax]
  4f1d53:	mov    DWORD PTR [esp+0xc],eax
  4f1d57:	mov    eax,DWORD PTR [esp+0x3f0]
  4f1d5e:	mov    DWORD PTR [esp+0x8],eax
  4f1d62:	mov    esi,DWORD PTR [ebp+0x8]
  4f1d65:	mov    DWORD PTR [esp+0x4],esi
  4f1d69:	mov    DWORD PTR [esp],edi
  4f1d6c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1d71:	mov    ecx,DWORD PTR [esp+0x1c]
  4f1d75:	test   ecx,ecx
  4f1d77:	je     4f7cc1
  4f1d7d:	mov    eax,DWORD PTR [esp+0x38]
  4f1d81:	mov    eax,DWORD PTR [eax]
  4f1d83:	mov    DWORD PTR [esp+0xc],eax
  4f1d87:	mov    DWORD PTR [esp+0x8],edi
  4f1d8b:	mov    DWORD PTR [esp],ecx
  4f1d8e:	mov    DWORD PTR [esp+0x4],0x3
  4f1d96:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1d9b:	mov    eax,DWORD PTR [esi+0x14]
  4f1d9e:	test   eax,eax
  4f1da0:	je     4f7cc1
  4f1da6:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1daa:	mov    ecx,DWORD PTR [ecx]
  4f1dac:	mov    DWORD PTR [esp+0x8],ecx
  4f1db0:	mov    DWORD PTR [esp],eax
  4f1db3:	mov    DWORD PTR [esp+0x4],0x15
  4f1dbb:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1dc0:	mov    DWORD PTR [esp+0x1c],eax
  4f1dc4:	lea    eax,[ebx+0x4b090]
  4f1dca:	mov    esi,DWORD PTR [eax]
  4f1dcc:	mov    eax,DWORD PTR [esp+0x30]
  4f1dd0:	mov    eax,DWORD PTR [eax]
  4f1dd2:	mov    DWORD PTR [esp],eax
  4f1dd5:	call   20bfb2
  4f1dda:	mov    edi,eax
  4f1ddc:	mov    DWORD PTR [esp+0x3e8],esi
  4f1de3:	mov    eax,DWORD PTR [esp+0x2c]
  4f1de7:	mov    eax,DWORD PTR [eax]
  4f1de9:	mov    DWORD PTR [esp+0xc],eax
  4f1ded:	mov    eax,DWORD PTR [esp+0x3e8]
  4f1df4:	mov    DWORD PTR [esp+0x8],eax
  4f1df8:	mov    esi,DWORD PTR [ebp+0x8]
  4f1dfb:	mov    DWORD PTR [esp+0x4],esi
  4f1dff:	mov    DWORD PTR [esp],edi
  4f1e02:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1e07:	mov    ecx,DWORD PTR [esp+0x1c]
  4f1e0b:	test   ecx,ecx
  4f1e0d:	je     4f7cc1
  4f1e13:	mov    eax,DWORD PTR [esp+0x38]
  4f1e17:	mov    eax,DWORD PTR [eax]
  4f1e19:	mov    DWORD PTR [esp+0xc],eax
  4f1e1d:	mov    DWORD PTR [esp+0x8],edi
  4f1e21:	mov    DWORD PTR [esp],ecx
  4f1e24:	mov    DWORD PTR [esp+0x4],0x5
  4f1e2c:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1e31:	mov    eax,DWORD PTR [esi+0x14]
  4f1e34:	test   eax,eax
  4f1e36:	je     4f7cc1
  4f1e3c:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1e40:	mov    ecx,DWORD PTR [ecx]
  4f1e42:	mov    DWORD PTR [esp+0x8],ecx
  4f1e46:	mov    DWORD PTR [esp],eax
  4f1e49:	mov    DWORD PTR [esp+0x4],0x15
  4f1e51:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1e56:	mov    DWORD PTR [esp+0x1c],eax
  4f1e5a:	lea    eax,[ebx+0x4b094]
  4f1e60:	mov    esi,DWORD PTR [eax]
  4f1e62:	mov    eax,DWORD PTR [esp+0x30]
  4f1e66:	mov    eax,DWORD PTR [eax]
  4f1e68:	mov    DWORD PTR [esp],eax
  4f1e6b:	call   20bfb2
  4f1e70:	mov    edi,eax
  4f1e72:	mov    DWORD PTR [esp+0x3e0],esi
  4f1e79:	mov    eax,DWORD PTR [esp+0x2c]
  4f1e7d:	mov    eax,DWORD PTR [eax]
  4f1e7f:	mov    DWORD PTR [esp+0xc],eax
  4f1e83:	mov    eax,DWORD PTR [esp+0x3e0]
  4f1e8a:	mov    DWORD PTR [esp+0x8],eax
  4f1e8e:	mov    esi,DWORD PTR [ebp+0x8]
  4f1e91:	mov    DWORD PTR [esp+0x4],esi
  4f1e95:	mov    DWORD PTR [esp],edi
  4f1e98:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1e9d:	mov    ecx,DWORD PTR [esp+0x1c]
  4f1ea1:	test   ecx,ecx
  4f1ea3:	je     4f7cc1
  4f1ea9:	mov    eax,DWORD PTR [esp+0x38]
  4f1ead:	mov    eax,DWORD PTR [eax]
  4f1eaf:	mov    DWORD PTR [esp+0xc],eax
  4f1eb3:	mov    DWORD PTR [esp+0x8],edi
  4f1eb7:	mov    DWORD PTR [esp],ecx
  4f1eba:	mov    DWORD PTR [esp+0x4],0x47
  4f1ec2:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1ec7:	mov    eax,DWORD PTR [esi+0x14]
  4f1eca:	test   eax,eax
  4f1ecc:	je     4f7cc1
  4f1ed2:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1ed6:	mov    ecx,DWORD PTR [ecx]
  4f1ed8:	mov    DWORD PTR [esp+0x8],ecx
  4f1edc:	mov    DWORD PTR [esp],eax
  4f1edf:	mov    DWORD PTR [esp+0x4],0x15
  4f1ee7:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1eec:	mov    esi,eax
  4f1eee:	mov    ecx,DWORD PTR [esp+0x34]
  4f1ef2:	mov    eax,DWORD PTR [ecx]
  4f1ef4:	mov    eax,DWORD PTR [eax+0x50]
  4f1ef7:	cmp    DWORD PTR [eax+0x80],0x0
  4f1efe:	jne    4f1f5b
  4f1f00:	lea    eax,[ebx+0x4b098]
  4f1f06:	mov    eax,DWORD PTR [eax]
  4f1f08:	mov    DWORD PTR [esp+0x1c],eax
  4f1f0c:	mov    eax,DWORD PTR [esp+0x30]
  4f1f10:	mov    eax,DWORD PTR [eax]
  4f1f12:	mov    DWORD PTR [esp],eax
  4f1f15:	call   20bfb2
  4f1f1a:	mov    edi,eax
  4f1f1c:	mov    eax,DWORD PTR [esp+0x1c]
  4f1f20:	mov    DWORD PTR [esp+0x3d8],eax
  4f1f27:	mov    eax,DWORD PTR [esp+0x2c]
  4f1f2b:	mov    eax,DWORD PTR [eax]
  4f1f2d:	mov    DWORD PTR [esp+0xc],eax
  4f1f31:	mov    eax,DWORD PTR [esp+0x3d8]
  4f1f38:	mov    DWORD PTR [esp+0x8],eax
  4f1f3c:	mov    DWORD PTR [esp],edi
  4f1f3f:	mov    DWORD PTR [esp+0x4],0x0
  4f1f47:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f1f4c:	mov    ecx,DWORD PTR [esp+0x34]
  4f1f50:	mov    eax,DWORD PTR [ecx]
  4f1f52:	mov    eax,DWORD PTR [eax+0x50]
  4f1f55:	mov    DWORD PTR [eax+0x80],edi
  4f1f5b:	test   esi,esi
  4f1f5d:	je     4f7cc1
  4f1f63:	mov    eax,DWORD PTR [ecx]
  4f1f65:	mov    eax,DWORD PTR [eax+0x50]
  4f1f68:	mov    eax,DWORD PTR [eax+0x80]
  4f1f6e:	mov    edi,ecx
  4f1f70:	mov    ecx,DWORD PTR [esp+0x38]
  4f1f74:	mov    ecx,DWORD PTR [ecx]
  4f1f76:	mov    DWORD PTR [esp+0xc],ecx
  4f1f7a:	mov    DWORD PTR [esp+0x8],eax
  4f1f7e:	mov    DWORD PTR [esp],esi
  4f1f81:	mov    DWORD PTR [esp+0x4],0x6
  4f1f89:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f1f8e:	mov    eax,DWORD PTR [ebp+0x8]
  4f1f91:	mov    eax,DWORD PTR [eax+0x14]
  4f1f94:	test   eax,eax
  4f1f96:	je     4f7cc1
  4f1f9c:	mov    ecx,DWORD PTR [esp+0x3c]
  4f1fa0:	mov    ecx,DWORD PTR [ecx]
  4f1fa2:	mov    DWORD PTR [esp+0x8],ecx
  4f1fa6:	mov    DWORD PTR [esp],eax
  4f1fa9:	mov    DWORD PTR [esp+0x4],0x15
  4f1fb1:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f1fb6:	mov    esi,eax
  4f1fb8:	mov    eax,DWORD PTR [edi]
  4f1fba:	mov    eax,DWORD PTR [eax+0x50]
  4f1fbd:	cmp    DWORD PTR [eax+0x84],0x0
  4f1fc4:	mov    ecx,edi
  4f1fc6:	jne    4f2023
  4f1fc8:	lea    eax,[ebx+0x4b09c]
  4f1fce:	mov    eax,DWORD PTR [eax]
  4f1fd0:	mov    DWORD PTR [esp+0x1c],eax
  4f1fd4:	mov    eax,DWORD PTR [esp+0x30]
  4f1fd8:	mov    eax,DWORD PTR [eax]
  4f1fda:	mov    DWORD PTR [esp],eax
  4f1fdd:	call   20bfb2
  4f1fe2:	mov    edi,eax
  4f1fe4:	mov    eax,DWORD PTR [esp+0x1c]
  4f1fe8:	mov    DWORD PTR [esp+0x3d0],eax
  4f1fef:	mov    eax,DWORD PTR [esp+0x2c]
  4f1ff3:	mov    eax,DWORD PTR [eax]
  4f1ff5:	mov    DWORD PTR [esp+0xc],eax
  4f1ff9:	mov    eax,DWORD PTR [esp+0x3d0]
  4f2000:	mov    DWORD PTR [esp+0x8],eax
  4f2004:	mov    DWORD PTR [esp],edi
  4f2007:	mov    DWORD PTR [esp+0x4],0x0
  4f200f:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2014:	mov    ecx,DWORD PTR [esp+0x34]
  4f2018:	mov    eax,DWORD PTR [ecx]
  4f201a:	mov    eax,DWORD PTR [eax+0x50]
  4f201d:	mov    DWORD PTR [eax+0x84],edi
  4f2023:	test   esi,esi
  4f2025:	je     4f7cc1
  4f202b:	mov    eax,DWORD PTR [ecx]
  4f202d:	mov    eax,DWORD PTR [eax+0x50]
  4f2030:	mov    eax,DWORD PTR [eax+0x84]
  4f2036:	mov    ecx,DWORD PTR [esp+0x38]
  4f203a:	mov    ecx,DWORD PTR [ecx]
  4f203c:	mov    DWORD PTR [esp+0xc],ecx
  4f2040:	mov    DWORD PTR [esp+0x8],eax
  4f2044:	mov    DWORD PTR [esp],esi
  4f2047:	mov    DWORD PTR [esp+0x4],0x33
  4f204f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2054:	mov    edi,DWORD PTR [ebp+0x8]
  4f2057:	mov    eax,DWORD PTR [edi+0x14]
  4f205a:	mov    DWORD PTR [esp+0x1c],eax
  4f205e:	mov    eax,DWORD PTR [esp+0x20]
  4f2062:	mov    eax,DWORD PTR [eax]
  4f2064:	mov    DWORD PTR [esp],eax
  4f2067:	call   20bfb2
  4f206c:	mov    esi,eax
  4f206e:	mov    eax,DWORD PTR [esp+0x28]
  4f2072:	mov    eax,DWORD PTR [eax]
  4f2074:	mov    DWORD PTR [esp+0x4],eax
  4f2078:	mov    DWORD PTR [esp],esi
  4f207b:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f2080:	mov    ecx,DWORD PTR [esp+0x1c]
  4f2084:	test   ecx,ecx
  4f2086:	je     4f7cc1
  4f208c:	mov    eax,DWORD PTR [esp+0x24]
  4f2090:	mov    eax,DWORD PTR [eax]
  4f2092:	mov    DWORD PTR [esp+0xc],eax
  4f2096:	mov    DWORD PTR [esp+0x8],esi
  4f209a:	mov    DWORD PTR [esp],ecx
  4f209d:	mov    DWORD PTR [esp+0x4],0x1
  4f20a5:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f20aa:	mov    eax,DWORD PTR [edi+0x14]
  4f20ad:	test   eax,eax
  4f20af:	je     4f7cc1
  4f20b5:	mov    ecx,DWORD PTR [esp+0x3c]
  4f20b9:	mov    ecx,DWORD PTR [ecx]
  4f20bb:	mov    DWORD PTR [esp+0x8],ecx
  4f20bf:	mov    DWORD PTR [esp],eax
  4f20c2:	mov    DWORD PTR [esp+0x4],0x1
  4f20ca:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f20cf:	mov    edx,eax
  4f20d1:	mov    esi,DWORD PTR [esp+0x34]
  4f20d5:	mov    eax,DWORD PTR [esi]
  4f20d7:	mov    eax,DWORD PTR [eax+0x50]
  4f20da:	cmp    DWORD PTR [eax+0x88],0x0
  4f20e1:	jne    4f2145
  4f20e3:	lea    eax,[ebx+0x4b0a0]
  4f20e9:	mov    eax,DWORD PTR [eax]
  4f20eb:	mov    DWORD PTR [esp+0x1c],eax
  4f20ef:	mov    eax,DWORD PTR [esp+0x30]
  4f20f3:	mov    eax,DWORD PTR [eax]
  4f20f5:	mov    DWORD PTR [esp],eax
  4f20f8:	mov    esi,edx
  4f20fa:	call   20bfb2
  4f20ff:	mov    edi,eax
  4f2101:	mov    eax,DWORD PTR [esp+0x1c]
  4f2105:	mov    DWORD PTR [esp+0x3c8],eax
  4f210c:	mov    eax,DWORD PTR [esp+0x2c]
  4f2110:	mov    eax,DWORD PTR [eax]
  4f2112:	mov    DWORD PTR [esp+0xc],eax
  4f2116:	mov    eax,DWORD PTR [esp+0x3c8]
  4f211d:	mov    DWORD PTR [esp+0x8],eax
  4f2121:	mov    DWORD PTR [esp],edi
  4f2124:	mov    DWORD PTR [esp+0x4],0x0
  4f212c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2131:	mov    edx,esi
  4f2133:	mov    esi,DWORD PTR [esp+0x34]
  4f2137:	mov    eax,DWORD PTR [esi]
  4f2139:	mov    eax,DWORD PTR [eax+0x50]
  4f213c:	mov    DWORD PTR [eax+0x88],edi
  4f2142:	mov    edi,DWORD PTR [ebp+0x8]
  4f2145:	test   edx,edx
  4f2147:	je     4f7cc1
  4f214d:	mov    eax,DWORD PTR [esi]
  4f214f:	mov    eax,DWORD PTR [eax+0x50]
  4f2152:	mov    eax,DWORD PTR [eax+0x88]
  4f2158:	mov    ecx,DWORD PTR [esp+0x38]
  4f215c:	mov    ecx,DWORD PTR [ecx]
  4f215e:	mov    DWORD PTR [esp+0xc],ecx
  4f2162:	mov    DWORD PTR [esp+0x8],eax
  4f2166:	mov    DWORD PTR [esp],edx
  4f2169:	mov    DWORD PTR [esp+0x4],0x34
  4f2171:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2176:	mov    eax,DWORD PTR [edi+0x14]
  4f2179:	test   eax,eax
  4f217b:	je     4f7cc1
  4f2181:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2185:	mov    ecx,DWORD PTR [ecx]
  4f2187:	mov    DWORD PTR [esp+0x8],ecx
  4f218b:	mov    DWORD PTR [esp],eax
  4f218e:	mov    DWORD PTR [esp+0x4],0x1
  4f2196:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f219b:	mov    edx,eax
  4f219d:	mov    eax,DWORD PTR [esi]
  4f219f:	mov    eax,DWORD PTR [eax+0x50]
  4f21a2:	cmp    DWORD PTR [eax+0x8c],0x0
  4f21a9:	jne    4f220d
  4f21ab:	lea    eax,[ebx+0x4b0a4]
  4f21b1:	mov    eax,DWORD PTR [eax]
  4f21b3:	mov    DWORD PTR [esp+0x1c],eax
  4f21b7:	mov    eax,DWORD PTR [esp+0x30]
  4f21bb:	mov    eax,DWORD PTR [eax]
  4f21bd:	mov    DWORD PTR [esp],eax
  4f21c0:	mov    esi,edx
  4f21c2:	call   20bfb2
  4f21c7:	mov    edi,eax
  4f21c9:	mov    eax,DWORD PTR [esp+0x1c]
  4f21cd:	mov    DWORD PTR [esp+0x3c0],eax
  4f21d4:	mov    eax,DWORD PTR [esp+0x2c]
  4f21d8:	mov    eax,DWORD PTR [eax]
  4f21da:	mov    DWORD PTR [esp+0xc],eax
  4f21de:	mov    eax,DWORD PTR [esp+0x3c0]
  4f21e5:	mov    DWORD PTR [esp+0x8],eax
  4f21e9:	mov    DWORD PTR [esp],edi
  4f21ec:	mov    DWORD PTR [esp+0x4],0x0
  4f21f4:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f21f9:	mov    edx,esi
  4f21fb:	mov    esi,DWORD PTR [esp+0x34]
  4f21ff:	mov    eax,DWORD PTR [esi]
  4f2201:	mov    eax,DWORD PTR [eax+0x50]
  4f2204:	mov    DWORD PTR [eax+0x8c],edi
  4f220a:	mov    edi,DWORD PTR [ebp+0x8]
  4f220d:	test   edx,edx
  4f220f:	je     4f7cc1
  4f2215:	mov    eax,DWORD PTR [esi]
  4f2217:	mov    eax,DWORD PTR [eax+0x50]
  4f221a:	mov    eax,DWORD PTR [eax+0x8c]
  4f2220:	mov    ecx,DWORD PTR [esp+0x38]
  4f2224:	mov    ecx,DWORD PTR [ecx]
  4f2226:	mov    DWORD PTR [esp+0xc],ecx
  4f222a:	mov    DWORD PTR [esp+0x8],eax
  4f222e:	mov    DWORD PTR [esp],edx
  4f2231:	mov    DWORD PTR [esp+0x4],0x35
  4f2239:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f223e:	mov    eax,DWORD PTR [edi+0x14]
  4f2241:	test   eax,eax
  4f2243:	je     4f7cc1
  4f2249:	mov    ecx,DWORD PTR [esp+0x3c]
  4f224d:	mov    ecx,DWORD PTR [ecx]
  4f224f:	mov    DWORD PTR [esp+0x8],ecx
  4f2253:	mov    DWORD PTR [esp],eax
  4f2256:	mov    DWORD PTR [esp+0x4],0x1
  4f225e:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2263:	mov    edx,eax
  4f2265:	mov    eax,DWORD PTR [esi]
  4f2267:	mov    eax,DWORD PTR [eax+0x50]
  4f226a:	cmp    DWORD PTR [eax+0x90],0x0
  4f2271:	jne    4f22d5
  4f2273:	lea    eax,[ebx+0x4b0a8]
  4f2279:	mov    eax,DWORD PTR [eax]
  4f227b:	mov    DWORD PTR [esp+0x1c],eax
  4f227f:	mov    eax,DWORD PTR [esp+0x30]
  4f2283:	mov    eax,DWORD PTR [eax]
  4f2285:	mov    DWORD PTR [esp],eax
  4f2288:	mov    esi,edx
  4f228a:	call   20bfb2
  4f228f:	mov    edi,eax
  4f2291:	mov    eax,DWORD PTR [esp+0x1c]
  4f2295:	mov    DWORD PTR [esp+0x3b8],eax
  4f229c:	mov    eax,DWORD PTR [esp+0x2c]
  4f22a0:	mov    eax,DWORD PTR [eax]
  4f22a2:	mov    DWORD PTR [esp+0xc],eax
  4f22a6:	mov    eax,DWORD PTR [esp+0x3b8]
  4f22ad:	mov    DWORD PTR [esp+0x8],eax
  4f22b1:	mov    DWORD PTR [esp],edi
  4f22b4:	mov    DWORD PTR [esp+0x4],0x0
  4f22bc:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f22c1:	mov    edx,esi
  4f22c3:	mov    esi,DWORD PTR [esp+0x34]
  4f22c7:	mov    eax,DWORD PTR [esi]
  4f22c9:	mov    eax,DWORD PTR [eax+0x50]
  4f22cc:	mov    DWORD PTR [eax+0x90],edi
  4f22d2:	mov    edi,DWORD PTR [ebp+0x8]
  4f22d5:	test   edx,edx
  4f22d7:	je     4f7cc1
  4f22dd:	mov    eax,DWORD PTR [esi]
  4f22df:	mov    eax,DWORD PTR [eax+0x50]
  4f22e2:	mov    eax,DWORD PTR [eax+0x90]
  4f22e8:	mov    ecx,DWORD PTR [esp+0x38]
  4f22ec:	mov    ecx,DWORD PTR [ecx]
  4f22ee:	mov    DWORD PTR [esp+0xc],ecx
  4f22f2:	mov    DWORD PTR [esp+0x8],eax
  4f22f6:	mov    DWORD PTR [esp],edx
  4f22f9:	mov    DWORD PTR [esp+0x4],0x36
  4f2301:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2306:	mov    eax,DWORD PTR [edi+0x14]
  4f2309:	mov    DWORD PTR [esp+0x1c],eax
  4f230d:	mov    eax,DWORD PTR [esp+0x20]
  4f2311:	mov    eax,DWORD PTR [eax]
  4f2313:	mov    DWORD PTR [esp],eax
  4f2316:	call   20bfb2
  4f231b:	mov    esi,eax
  4f231d:	mov    eax,DWORD PTR [esp+0x28]
  4f2321:	mov    eax,DWORD PTR [eax]
  4f2323:	mov    DWORD PTR [esp+0x4],eax
  4f2327:	mov    DWORD PTR [esp],esi
  4f232a:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f232f:	mov    ecx,DWORD PTR [esp+0x1c]
  4f2333:	test   ecx,ecx
  4f2335:	je     4f7cc1
  4f233b:	mov    eax,DWORD PTR [esp+0x24]
  4f233f:	mov    eax,DWORD PTR [eax]
  4f2341:	mov    DWORD PTR [esp+0xc],eax
  4f2345:	mov    DWORD PTR [esp+0x8],esi
  4f2349:	mov    DWORD PTR [esp],ecx
  4f234c:	mov    DWORD PTR [esp+0x4],0x1c
  4f2354:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f2359:	mov    eax,DWORD PTR [edi+0x14]
  4f235c:	test   eax,eax
  4f235e:	je     4f7cc1
  4f2364:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2368:	mov    ecx,DWORD PTR [ecx]
  4f236a:	mov    DWORD PTR [esp+0x8],ecx
  4f236e:	mov    DWORD PTR [esp],eax
  4f2371:	mov    DWORD PTR [esp+0x4],0x1c
  4f2379:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f237e:	mov    edx,eax
  4f2380:	mov    esi,DWORD PTR [esp+0x34]
  4f2384:	mov    eax,DWORD PTR [esi]
  4f2386:	mov    eax,DWORD PTR [eax+0x50]
  4f2389:	cmp    DWORD PTR [eax+0x94],0x0
  4f2390:	jne    4f23f4
  4f2392:	lea    eax,[ebx+0x4b0ac]
  4f2398:	mov    eax,DWORD PTR [eax]
  4f239a:	mov    DWORD PTR [esp+0x1c],eax
  4f239e:	mov    eax,DWORD PTR [esp+0x30]
  4f23a2:	mov    eax,DWORD PTR [eax]
  4f23a4:	mov    DWORD PTR [esp],eax
  4f23a7:	mov    esi,edx
  4f23a9:	call   20bfb2
  4f23ae:	mov    edi,eax
  4f23b0:	mov    eax,DWORD PTR [esp+0x1c]
  4f23b4:	mov    DWORD PTR [esp+0x3b0],eax
  4f23bb:	mov    eax,DWORD PTR [esp+0x2c]
  4f23bf:	mov    eax,DWORD PTR [eax]
  4f23c1:	mov    DWORD PTR [esp+0xc],eax
  4f23c5:	mov    eax,DWORD PTR [esp+0x3b0]
  4f23cc:	mov    DWORD PTR [esp+0x8],eax
  4f23d0:	mov    DWORD PTR [esp],edi
  4f23d3:	mov    DWORD PTR [esp+0x4],0x0
  4f23db:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f23e0:	mov    edx,esi
  4f23e2:	mov    esi,DWORD PTR [esp+0x34]
  4f23e6:	mov    eax,DWORD PTR [esi]
  4f23e8:	mov    eax,DWORD PTR [eax+0x50]
  4f23eb:	mov    DWORD PTR [eax+0x94],edi
  4f23f1:	mov    edi,DWORD PTR [ebp+0x8]
  4f23f4:	test   edx,edx
  4f23f6:	je     4f7cc1
  4f23fc:	mov    eax,DWORD PTR [esi]
  4f23fe:	mov    eax,DWORD PTR [eax+0x50]
  4f2401:	mov    eax,DWORD PTR [eax+0x94]
  4f2407:	mov    ecx,DWORD PTR [esp+0x38]
  4f240b:	mov    ecx,DWORD PTR [ecx]
  4f240d:	mov    DWORD PTR [esp+0xc],ecx
  4f2411:	mov    DWORD PTR [esp+0x8],eax
  4f2415:	mov    DWORD PTR [esp],edx
  4f2418:	mov    DWORD PTR [esp+0x4],0x77
  4f2420:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2425:	mov    eax,DWORD PTR [edi+0x14]
  4f2428:	test   eax,eax
  4f242a:	je     4f7cc1
  4f2430:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2434:	mov    ecx,DWORD PTR [ecx]
  4f2436:	mov    DWORD PTR [esp+0x8],ecx
  4f243a:	mov    DWORD PTR [esp],eax
  4f243d:	mov    DWORD PTR [esp+0x4],0x1c
  4f2445:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f244a:	mov    edx,eax
  4f244c:	mov    eax,DWORD PTR [esi]
  4f244e:	mov    eax,DWORD PTR [eax+0x50]
  4f2451:	cmp    DWORD PTR [eax+0x98],0x0
  4f2458:	jne    4f24bc
  4f245a:	lea    eax,[ebx+0x4b0b0]
  4f2460:	mov    eax,DWORD PTR [eax]
  4f2462:	mov    DWORD PTR [esp+0x1c],eax
  4f2466:	mov    eax,DWORD PTR [esp+0x30]
  4f246a:	mov    eax,DWORD PTR [eax]
  4f246c:	mov    DWORD PTR [esp],eax
  4f246f:	mov    esi,edx
  4f2471:	call   20bfb2
  4f2476:	mov    edi,eax
  4f2478:	mov    eax,DWORD PTR [esp+0x1c]
  4f247c:	mov    DWORD PTR [esp+0x3a8],eax
  4f2483:	mov    eax,DWORD PTR [esp+0x2c]
  4f2487:	mov    eax,DWORD PTR [eax]
  4f2489:	mov    DWORD PTR [esp+0xc],eax
  4f248d:	mov    eax,DWORD PTR [esp+0x3a8]
  4f2494:	mov    DWORD PTR [esp+0x8],eax
  4f2498:	mov    DWORD PTR [esp],edi
  4f249b:	mov    DWORD PTR [esp+0x4],0x0
  4f24a3:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f24a8:	mov    edx,esi
  4f24aa:	mov    esi,DWORD PTR [esp+0x34]
  4f24ae:	mov    eax,DWORD PTR [esi]
  4f24b0:	mov    eax,DWORD PTR [eax+0x50]
  4f24b3:	mov    DWORD PTR [eax+0x98],edi
  4f24b9:	mov    edi,DWORD PTR [ebp+0x8]
  4f24bc:	test   edx,edx
  4f24be:	je     4f7cc1
  4f24c4:	mov    eax,DWORD PTR [esi]
  4f24c6:	mov    eax,DWORD PTR [eax+0x50]
  4f24c9:	mov    eax,DWORD PTR [eax+0x98]
  4f24cf:	mov    ecx,DWORD PTR [esp+0x38]
  4f24d3:	mov    ecx,DWORD PTR [ecx]
  4f24d5:	mov    DWORD PTR [esp+0xc],ecx
  4f24d9:	mov    DWORD PTR [esp+0x8],eax
  4f24dd:	mov    DWORD PTR [esp],edx
  4f24e0:	mov    DWORD PTR [esp+0x4],0x79
  4f24e8:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f24ed:	mov    eax,DWORD PTR [edi+0x14]
  4f24f0:	test   eax,eax
  4f24f2:	je     4f7cc1
  4f24f8:	mov    ecx,DWORD PTR [esp+0x3c]
  4f24fc:	mov    ecx,DWORD PTR [ecx]
  4f24fe:	mov    DWORD PTR [esp+0x8],ecx
  4f2502:	mov    DWORD PTR [esp],eax
  4f2505:	mov    DWORD PTR [esp+0x4],0x1c
  4f250d:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2512:	mov    edx,eax
  4f2514:	mov    eax,DWORD PTR [esi]
  4f2516:	mov    eax,DWORD PTR [eax+0x50]
  4f2519:	cmp    DWORD PTR [eax+0x9c],0x0
  4f2520:	jne    4f2584
  4f2522:	lea    eax,[ebx+0x4b0b4]
  4f2528:	mov    eax,DWORD PTR [eax]
  4f252a:	mov    DWORD PTR [esp+0x1c],eax
  4f252e:	mov    eax,DWORD PTR [esp+0x30]
  4f2532:	mov    eax,DWORD PTR [eax]
  4f2534:	mov    DWORD PTR [esp],eax
  4f2537:	mov    esi,edx
  4f2539:	call   20bfb2
  4f253e:	mov    edi,eax
  4f2540:	mov    eax,DWORD PTR [esp+0x1c]
  4f2544:	mov    DWORD PTR [esp+0x3a0],eax
  4f254b:	mov    eax,DWORD PTR [esp+0x2c]
  4f254f:	mov    eax,DWORD PTR [eax]
  4f2551:	mov    DWORD PTR [esp+0xc],eax
  4f2555:	mov    eax,DWORD PTR [esp+0x3a0]
  4f255c:	mov    DWORD PTR [esp+0x8],eax
  4f2560:	mov    DWORD PTR [esp],edi
  4f2563:	mov    DWORD PTR [esp+0x4],0x0
  4f256b:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2570:	mov    edx,esi
  4f2572:	mov    esi,DWORD PTR [esp+0x34]
  4f2576:	mov    eax,DWORD PTR [esi]
  4f2578:	mov    eax,DWORD PTR [eax+0x50]
  4f257b:	mov    DWORD PTR [eax+0x9c],edi
  4f2581:	mov    edi,DWORD PTR [ebp+0x8]
  4f2584:	test   edx,edx
  4f2586:	je     4f7cc1
  4f258c:	mov    eax,DWORD PTR [esi]
  4f258e:	mov    eax,DWORD PTR [eax+0x50]
  4f2591:	mov    eax,DWORD PTR [eax+0x9c]
  4f2597:	mov    ecx,DWORD PTR [esp+0x38]
  4f259b:	mov    ecx,DWORD PTR [ecx]
  4f259d:	mov    DWORD PTR [esp+0xc],ecx
  4f25a1:	mov    DWORD PTR [esp+0x8],eax
  4f25a5:	mov    DWORD PTR [esp],edx
  4f25a8:	mov    DWORD PTR [esp+0x4],0x7b
  4f25b0:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f25b5:	mov    eax,DWORD PTR [edi+0x14]
  4f25b8:	test   eax,eax
  4f25ba:	je     4f7cc1
  4f25c0:	mov    ecx,DWORD PTR [esp+0x3c]
  4f25c4:	mov    ecx,DWORD PTR [ecx]
  4f25c6:	mov    DWORD PTR [esp+0x8],ecx
  4f25ca:	mov    DWORD PTR [esp],eax
  4f25cd:	mov    DWORD PTR [esp+0x4],0x1c
  4f25d5:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f25da:	mov    edx,eax
  4f25dc:	mov    eax,DWORD PTR [esi]
  4f25de:	mov    eax,DWORD PTR [eax+0x50]
  4f25e1:	cmp    DWORD PTR [eax+0xa0],0x0
  4f25e8:	jne    4f264c
  4f25ea:	lea    eax,[ebx+0x4b0b8]
  4f25f0:	mov    eax,DWORD PTR [eax]
  4f25f2:	mov    DWORD PTR [esp+0x1c],eax
  4f25f6:	mov    eax,DWORD PTR [esp+0x30]
  4f25fa:	mov    eax,DWORD PTR [eax]
  4f25fc:	mov    DWORD PTR [esp],eax
  4f25ff:	mov    esi,edx
  4f2601:	call   20bfb2
  4f2606:	mov    edi,eax
  4f2608:	mov    eax,DWORD PTR [esp+0x1c]
  4f260c:	mov    DWORD PTR [esp+0x398],eax
  4f2613:	mov    eax,DWORD PTR [esp+0x2c]
  4f2617:	mov    eax,DWORD PTR [eax]
  4f2619:	mov    DWORD PTR [esp+0xc],eax
  4f261d:	mov    eax,DWORD PTR [esp+0x398]
  4f2624:	mov    DWORD PTR [esp+0x8],eax
  4f2628:	mov    DWORD PTR [esp],edi
  4f262b:	mov    DWORD PTR [esp+0x4],0x0
  4f2633:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2638:	mov    edx,esi
  4f263a:	mov    esi,DWORD PTR [esp+0x34]
  4f263e:	mov    eax,DWORD PTR [esi]
  4f2640:	mov    eax,DWORD PTR [eax+0x50]
  4f2643:	mov    DWORD PTR [eax+0xa0],edi
  4f2649:	mov    edi,DWORD PTR [ebp+0x8]
  4f264c:	test   edx,edx
  4f264e:	je     4f7cc1
  4f2654:	mov    eax,DWORD PTR [esi]
  4f2656:	mov    eax,DWORD PTR [eax+0x50]
  4f2659:	mov    eax,DWORD PTR [eax+0xa0]
  4f265f:	mov    ecx,DWORD PTR [esp+0x38]
  4f2663:	mov    ecx,DWORD PTR [ecx]
  4f2665:	mov    DWORD PTR [esp+0xc],ecx
  4f2669:	mov    DWORD PTR [esp+0x8],eax
  4f266d:	mov    DWORD PTR [esp],edx
  4f2670:	mov    DWORD PTR [esp+0x4],0x78
  4f2678:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f267d:	mov    eax,DWORD PTR [edi+0x14]
  4f2680:	mov    DWORD PTR [esp+0x1c],eax
  4f2684:	mov    eax,DWORD PTR [esp+0x20]
  4f2688:	mov    eax,DWORD PTR [eax]
  4f268a:	mov    DWORD PTR [esp],eax
  4f268d:	call   20bfb2
  4f2692:	mov    esi,eax
  4f2694:	mov    eax,DWORD PTR [esp+0x28]
  4f2698:	mov    eax,DWORD PTR [eax]
  4f269a:	mov    DWORD PTR [esp+0x4],eax
  4f269e:	mov    DWORD PTR [esp],esi
  4f26a1:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f26a6:	mov    ecx,DWORD PTR [esp+0x1c]
  4f26aa:	test   ecx,ecx
  4f26ac:	je     4f7cc1
  4f26b2:	mov    eax,DWORD PTR [esp+0x24]
  4f26b6:	mov    eax,DWORD PTR [eax]
  4f26b8:	mov    DWORD PTR [esp+0xc],eax
  4f26bc:	mov    DWORD PTR [esp+0x8],esi
  4f26c0:	mov    DWORD PTR [esp],ecx
  4f26c3:	mov    DWORD PTR [esp+0x4],0x13
  4f26cb:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f26d0:	mov    eax,DWORD PTR [edi+0x14]
  4f26d3:	test   eax,eax
  4f26d5:	je     4f7cc1
  4f26db:	mov    ecx,DWORD PTR [esp+0x3c]
  4f26df:	mov    ecx,DWORD PTR [ecx]
  4f26e1:	mov    DWORD PTR [esp+0x8],ecx
  4f26e5:	mov    DWORD PTR [esp],eax
  4f26e8:	mov    DWORD PTR [esp+0x4],0x13
  4f26f0:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f26f5:	mov    edx,eax
  4f26f7:	mov    esi,DWORD PTR [esp+0x34]
  4f26fb:	mov    eax,DWORD PTR [esi]
  4f26fd:	mov    eax,DWORD PTR [eax+0x50]
  4f2700:	cmp    DWORD PTR [eax+0xa4],0x0
  4f2707:	jne    4f276b
  4f2709:	lea    eax,[ebx+0x4b0bc]
  4f270f:	mov    eax,DWORD PTR [eax]
  4f2711:	mov    DWORD PTR [esp+0x1c],eax
  4f2715:	mov    eax,DWORD PTR [esp+0x30]
  4f2719:	mov    eax,DWORD PTR [eax]
  4f271b:	mov    DWORD PTR [esp],eax
  4f271e:	mov    esi,edx
  4f2720:	call   20bfb2
  4f2725:	mov    edi,eax
  4f2727:	mov    eax,DWORD PTR [esp+0x1c]
  4f272b:	mov    DWORD PTR [esp+0x390],eax
  4f2732:	mov    eax,DWORD PTR [esp+0x2c]
  4f2736:	mov    eax,DWORD PTR [eax]
  4f2738:	mov    DWORD PTR [esp+0xc],eax
  4f273c:	mov    eax,DWORD PTR [esp+0x390]
  4f2743:	mov    DWORD PTR [esp+0x8],eax
  4f2747:	mov    DWORD PTR [esp],edi
  4f274a:	mov    DWORD PTR [esp+0x4],0x0
  4f2752:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2757:	mov    edx,esi
  4f2759:	mov    esi,DWORD PTR [esp+0x34]
  4f275d:	mov    eax,DWORD PTR [esi]
  4f275f:	mov    eax,DWORD PTR [eax+0x50]
  4f2762:	mov    DWORD PTR [eax+0xa4],edi
  4f2768:	mov    edi,DWORD PTR [ebp+0x8]
  4f276b:	test   edx,edx
  4f276d:	je     4f7cc1
  4f2773:	mov    eax,DWORD PTR [esi]
  4f2775:	mov    eax,DWORD PTR [eax+0x50]
  4f2778:	mov    eax,DWORD PTR [eax+0xa4]
  4f277e:	mov    ecx,DWORD PTR [esp+0x38]
  4f2782:	mov    ecx,DWORD PTR [ecx]
  4f2784:	mov    DWORD PTR [esp+0xc],ecx
  4f2788:	mov    DWORD PTR [esp+0x8],eax
  4f278c:	mov    DWORD PTR [esp],edx
  4f278f:	mov    DWORD PTR [esp+0x4],0x78
  4f2797:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f279c:	mov    eax,DWORD PTR [edi+0x14]
  4f279f:	test   eax,eax
  4f27a1:	je     4f7cc1
  4f27a7:	mov    ecx,DWORD PTR [esp+0x3c]
  4f27ab:	mov    ecx,DWORD PTR [ecx]
  4f27ad:	mov    DWORD PTR [esp+0x8],ecx
  4f27b1:	mov    DWORD PTR [esp],eax
  4f27b4:	mov    DWORD PTR [esp+0x4],0x13
  4f27bc:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f27c1:	mov    edx,eax
  4f27c3:	mov    eax,DWORD PTR [esi]
  4f27c5:	mov    eax,DWORD PTR [eax+0x50]
  4f27c8:	cmp    DWORD PTR [eax+0xa8],0x0
  4f27cf:	jne    4f2833
  4f27d1:	lea    eax,[ebx+0x4b0c0]
  4f27d7:	mov    eax,DWORD PTR [eax]
  4f27d9:	mov    DWORD PTR [esp+0x1c],eax
  4f27dd:	mov    eax,DWORD PTR [esp+0x30]
  4f27e1:	mov    eax,DWORD PTR [eax]
  4f27e3:	mov    DWORD PTR [esp],eax
  4f27e6:	mov    esi,edx
  4f27e8:	call   20bfb2
  4f27ed:	mov    edi,eax
  4f27ef:	mov    eax,DWORD PTR [esp+0x1c]
  4f27f3:	mov    DWORD PTR [esp+0x388],eax
  4f27fa:	mov    eax,DWORD PTR [esp+0x2c]
  4f27fe:	mov    eax,DWORD PTR [eax]
  4f2800:	mov    DWORD PTR [esp+0xc],eax
  4f2804:	mov    eax,DWORD PTR [esp+0x388]
  4f280b:	mov    DWORD PTR [esp+0x8],eax
  4f280f:	mov    DWORD PTR [esp],edi
  4f2812:	mov    DWORD PTR [esp+0x4],0x0
  4f281a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f281f:	mov    edx,esi
  4f2821:	mov    esi,DWORD PTR [esp+0x34]
  4f2825:	mov    eax,DWORD PTR [esi]
  4f2827:	mov    eax,DWORD PTR [eax+0x50]
  4f282a:	mov    DWORD PTR [eax+0xa8],edi
  4f2830:	mov    edi,DWORD PTR [ebp+0x8]
  4f2833:	test   edx,edx
  4f2835:	je     4f7cc1
  4f283b:	mov    eax,DWORD PTR [esi]
  4f283d:	mov    eax,DWORD PTR [eax+0x50]
  4f2840:	mov    eax,DWORD PTR [eax+0xa8]
  4f2846:	mov    ecx,DWORD PTR [esp+0x38]
  4f284a:	mov    ecx,DWORD PTR [ecx]
  4f284c:	mov    DWORD PTR [esp+0xc],ecx
  4f2850:	mov    DWORD PTR [esp+0x8],eax
  4f2854:	mov    DWORD PTR [esp],edx
  4f2857:	mov    DWORD PTR [esp+0x4],0x7c
  4f285f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2864:	mov    eax,DWORD PTR [edi+0x14]
  4f2867:	test   eax,eax
  4f2869:	je     4f7cc1
  4f286f:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2873:	mov    ecx,DWORD PTR [ecx]
  4f2875:	mov    DWORD PTR [esp+0x8],ecx
  4f2879:	mov    DWORD PTR [esp],eax
  4f287c:	mov    DWORD PTR [esp+0x4],0x13
  4f2884:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2889:	mov    edx,eax
  4f288b:	mov    eax,DWORD PTR [esi]
  4f288d:	mov    eax,DWORD PTR [eax+0x50]
  4f2890:	cmp    DWORD PTR [eax+0xac],0x0
  4f2897:	jne    4f28fb
  4f2899:	lea    eax,[ebx+0x4b0c4]
  4f289f:	mov    eax,DWORD PTR [eax]
  4f28a1:	mov    DWORD PTR [esp+0x1c],eax
  4f28a5:	mov    eax,DWORD PTR [esp+0x30]
  4f28a9:	mov    eax,DWORD PTR [eax]
  4f28ab:	mov    DWORD PTR [esp],eax
  4f28ae:	mov    esi,edx
  4f28b0:	call   20bfb2
  4f28b5:	mov    edi,eax
  4f28b7:	mov    eax,DWORD PTR [esp+0x1c]
  4f28bb:	mov    DWORD PTR [esp+0x380],eax
  4f28c2:	mov    eax,DWORD PTR [esp+0x2c]
  4f28c6:	mov    eax,DWORD PTR [eax]
  4f28c8:	mov    DWORD PTR [esp+0xc],eax
  4f28cc:	mov    eax,DWORD PTR [esp+0x380]
  4f28d3:	mov    DWORD PTR [esp+0x8],eax
  4f28d7:	mov    DWORD PTR [esp],edi
  4f28da:	mov    DWORD PTR [esp+0x4],0x0
  4f28e2:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f28e7:	mov    edx,esi
  4f28e9:	mov    esi,DWORD PTR [esp+0x34]
  4f28ed:	mov    eax,DWORD PTR [esi]
  4f28ef:	mov    eax,DWORD PTR [eax+0x50]
  4f28f2:	mov    DWORD PTR [eax+0xac],edi
  4f28f8:	mov    edi,DWORD PTR [ebp+0x8]
  4f28fb:	test   edx,edx
  4f28fd:	je     4f7cc1
  4f2903:	mov    eax,DWORD PTR [esi]
  4f2905:	mov    eax,DWORD PTR [eax+0x50]
  4f2908:	mov    eax,DWORD PTR [eax+0xac]
  4f290e:	mov    ecx,DWORD PTR [esp+0x38]
  4f2912:	mov    ecx,DWORD PTR [ecx]
  4f2914:	mov    DWORD PTR [esp+0xc],ecx
  4f2918:	mov    DWORD PTR [esp+0x8],eax
  4f291c:	mov    DWORD PTR [esp],edx
  4f291f:	mov    DWORD PTR [esp+0x4],0x77
  4f2927:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f292c:	mov    eax,DWORD PTR [edi+0x14]
  4f292f:	test   eax,eax
  4f2931:	je     4f7cc1
  4f2937:	mov    ecx,DWORD PTR [esp+0x3c]
  4f293b:	mov    ecx,DWORD PTR [ecx]
  4f293d:	mov    DWORD PTR [esp+0x8],ecx
  4f2941:	mov    DWORD PTR [esp],eax
  4f2944:	mov    DWORD PTR [esp+0x4],0x13
  4f294c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2951:	mov    edx,eax
  4f2953:	mov    eax,DWORD PTR [esi]
  4f2955:	mov    eax,DWORD PTR [eax+0x50]
  4f2958:	cmp    DWORD PTR [eax+0xb0],0x0
  4f295f:	jne    4f29c3
  4f2961:	lea    eax,[ebx+0x4b0c8]
  4f2967:	mov    eax,DWORD PTR [eax]
  4f2969:	mov    DWORD PTR [esp+0x1c],eax
  4f296d:	mov    eax,DWORD PTR [esp+0x30]
  4f2971:	mov    eax,DWORD PTR [eax]
  4f2973:	mov    DWORD PTR [esp],eax
  4f2976:	mov    esi,edx
  4f2978:	call   20bfb2
  4f297d:	mov    edi,eax
  4f297f:	mov    eax,DWORD PTR [esp+0x1c]
  4f2983:	mov    DWORD PTR [esp+0x378],eax
  4f298a:	mov    eax,DWORD PTR [esp+0x2c]
  4f298e:	mov    eax,DWORD PTR [eax]
  4f2990:	mov    DWORD PTR [esp+0xc],eax
  4f2994:	mov    eax,DWORD PTR [esp+0x378]
  4f299b:	mov    DWORD PTR [esp+0x8],eax
  4f299f:	mov    DWORD PTR [esp],edi
  4f29a2:	mov    DWORD PTR [esp+0x4],0x0
  4f29aa:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f29af:	mov    edx,esi
  4f29b1:	mov    esi,DWORD PTR [esp+0x34]
  4f29b5:	mov    eax,DWORD PTR [esi]
  4f29b7:	mov    eax,DWORD PTR [eax+0x50]
  4f29ba:	mov    DWORD PTR [eax+0xb0],edi
  4f29c0:	mov    edi,DWORD PTR [ebp+0x8]
  4f29c3:	test   edx,edx
  4f29c5:	je     4f7cc1
  4f29cb:	mov    eax,DWORD PTR [esi]
  4f29cd:	mov    eax,DWORD PTR [eax+0x50]
  4f29d0:	mov    eax,DWORD PTR [eax+0xb0]
  4f29d6:	mov    ecx,DWORD PTR [esp+0x38]
  4f29da:	mov    ecx,DWORD PTR [ecx]
  4f29dc:	mov    DWORD PTR [esp+0xc],ecx
  4f29e0:	mov    DWORD PTR [esp+0x8],eax
  4f29e4:	mov    DWORD PTR [esp],edx
  4f29e7:	mov    DWORD PTR [esp+0x4],0x7a
  4f29ef:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f29f4:	mov    edi,DWORD PTR [edi+0x14]
  4f29f7:	mov    eax,DWORD PTR [esp+0x20]
  4f29fb:	mov    eax,DWORD PTR [eax]
  4f29fd:	mov    DWORD PTR [esp],eax
  4f2a00:	call   20bfb2
  4f2a05:	mov    esi,eax
  4f2a07:	mov    eax,DWORD PTR [esp+0x28]
  4f2a0b:	mov    eax,DWORD PTR [eax]
  4f2a0d:	mov    DWORD PTR [esp+0x4],eax
  4f2a11:	mov    DWORD PTR [esp],esi
  4f2a14:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f2a19:	test   edi,edi
  4f2a1b:	je     4f7cc1
  4f2a21:	mov    eax,DWORD PTR [esp+0x24]
  4f2a25:	mov    eax,DWORD PTR [eax]
  4f2a27:	mov    DWORD PTR [esp+0xc],eax
  4f2a2b:	mov    DWORD PTR [esp+0x8],esi
  4f2a2f:	mov    DWORD PTR [esp],edi
  4f2a32:	mov    DWORD PTR [esp+0x4],0x12
  4f2a3a:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f2a3f:	mov    eax,DWORD PTR [ebp+0x8]
  4f2a42:	mov    eax,DWORD PTR [eax+0x14]
  4f2a45:	test   eax,eax
  4f2a47:	je     4f7cc1
  4f2a4d:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2a51:	mov    ecx,DWORD PTR [ecx]
  4f2a53:	mov    DWORD PTR [esp+0x8],ecx
  4f2a57:	mov    DWORD PTR [esp],eax
  4f2a5a:	mov    DWORD PTR [esp+0x4],0x12
  4f2a62:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2a67:	mov    DWORD PTR [esp+0x1c],eax
  4f2a6b:	lea    eax,[ebx+0x4b0cc]
  4f2a71:	mov    esi,DWORD PTR [eax]
  4f2a73:	mov    eax,DWORD PTR [esp+0x30]
  4f2a77:	mov    eax,DWORD PTR [eax]
  4f2a79:	mov    DWORD PTR [esp],eax
  4f2a7c:	call   20bfb2
  4f2a81:	mov    edi,eax
  4f2a83:	mov    DWORD PTR [esp+0x370],esi
  4f2a8a:	mov    eax,DWORD PTR [esp+0x2c]
  4f2a8e:	mov    eax,DWORD PTR [eax]
  4f2a90:	mov    DWORD PTR [esp+0xc],eax
  4f2a94:	mov    eax,DWORD PTR [esp+0x370]
  4f2a9b:	mov    DWORD PTR [esp+0x8],eax
  4f2a9f:	mov    eax,DWORD PTR [ebp+0x8]
  4f2aa2:	mov    DWORD PTR [esp+0x4],eax
  4f2aa6:	mov    DWORD PTR [esp],edi
  4f2aa9:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2aae:	mov    ecx,DWORD PTR [esp+0x1c]
  4f2ab2:	test   ecx,ecx
  4f2ab4:	je     4f7cc1
  4f2aba:	mov    eax,DWORD PTR [esp+0x38]
  4f2abe:	mov    eax,DWORD PTR [eax]
  4f2ac0:	mov    DWORD PTR [esp+0xc],eax
  4f2ac4:	mov    DWORD PTR [esp+0x8],edi
  4f2ac8:	mov    DWORD PTR [esp],ecx
  4f2acb:	mov    DWORD PTR [esp+0x4],0x5d
  4f2ad3:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2ad8:	mov    eax,DWORD PTR [ebp+0x8]
  4f2adb:	mov    ecx,eax
  4f2add:	mov    eax,DWORD PTR [ecx+0x14]
  4f2ae0:	test   eax,eax
  4f2ae2:	mov    edi,ecx
  4f2ae4:	je     4f7cc1
  4f2aea:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2aee:	mov    ecx,DWORD PTR [ecx]
  4f2af0:	mov    DWORD PTR [esp+0x8],ecx
  4f2af4:	mov    DWORD PTR [esp],eax
  4f2af7:	mov    DWORD PTR [esp+0x4],0x12
  4f2aff:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2b04:	mov    edx,eax
  4f2b06:	mov    esi,DWORD PTR [esp+0x34]
  4f2b0a:	mov    eax,DWORD PTR [esi]
  4f2b0c:	mov    eax,DWORD PTR [eax+0x50]
  4f2b0f:	cmp    DWORD PTR [eax+0xb4],0x0
  4f2b16:	jne    4f2b7a
  4f2b18:	lea    eax,[ebx+0x4b0d0]
  4f2b1e:	mov    eax,DWORD PTR [eax]
  4f2b20:	mov    DWORD PTR [esp+0x1c],eax
  4f2b24:	mov    eax,DWORD PTR [esp+0x30]
  4f2b28:	mov    eax,DWORD PTR [eax]
  4f2b2a:	mov    DWORD PTR [esp],eax
  4f2b2d:	mov    esi,edx
  4f2b2f:	call   20bfb2
  4f2b34:	mov    edi,eax
  4f2b36:	mov    eax,DWORD PTR [esp+0x1c]
  4f2b3a:	mov    DWORD PTR [esp+0x368],eax
  4f2b41:	mov    eax,DWORD PTR [esp+0x2c]
  4f2b45:	mov    eax,DWORD PTR [eax]
  4f2b47:	mov    DWORD PTR [esp+0xc],eax
  4f2b4b:	mov    eax,DWORD PTR [esp+0x368]
  4f2b52:	mov    DWORD PTR [esp+0x8],eax
  4f2b56:	mov    DWORD PTR [esp],edi
  4f2b59:	mov    DWORD PTR [esp+0x4],0x0
  4f2b61:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2b66:	mov    edx,esi
  4f2b68:	mov    esi,DWORD PTR [esp+0x34]
  4f2b6c:	mov    eax,DWORD PTR [esi]
  4f2b6e:	mov    eax,DWORD PTR [eax+0x50]
  4f2b71:	mov    DWORD PTR [eax+0xb4],edi
  4f2b77:	mov    edi,DWORD PTR [ebp+0x8]
  4f2b7a:	test   edx,edx
  4f2b7c:	je     4f7cc1
  4f2b82:	mov    eax,DWORD PTR [esi]
  4f2b84:	mov    eax,DWORD PTR [eax+0x50]
  4f2b87:	mov    eax,DWORD PTR [eax+0xb4]
  4f2b8d:	mov    ecx,DWORD PTR [esp+0x38]
  4f2b91:	mov    ecx,DWORD PTR [ecx]
  4f2b93:	mov    DWORD PTR [esp+0xc],ecx
  4f2b97:	mov    DWORD PTR [esp+0x8],eax
  4f2b9b:	mov    DWORD PTR [esp],edx
  4f2b9e:	mov    DWORD PTR [esp+0x4],0x76
  4f2ba6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2bab:	mov    eax,DWORD PTR [edi+0x14]
  4f2bae:	test   eax,eax
  4f2bb0:	je     4f7cc1
  4f2bb6:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2bba:	mov    ecx,DWORD PTR [ecx]
  4f2bbc:	mov    DWORD PTR [esp+0x8],ecx
  4f2bc0:	mov    DWORD PTR [esp],eax
  4f2bc3:	mov    DWORD PTR [esp+0x4],0x12
  4f2bcb:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2bd0:	mov    edx,eax
  4f2bd2:	mov    eax,DWORD PTR [esi]
  4f2bd4:	mov    eax,DWORD PTR [eax+0x50]
  4f2bd7:	cmp    DWORD PTR [eax+0xb8],0x0
  4f2bde:	jne    4f2c42
  4f2be0:	lea    eax,[ebx+0x4b0d4]
  4f2be6:	mov    eax,DWORD PTR [eax]
  4f2be8:	mov    DWORD PTR [esp+0x1c],eax
  4f2bec:	mov    eax,DWORD PTR [esp+0x30]
  4f2bf0:	mov    eax,DWORD PTR [eax]
  4f2bf2:	mov    DWORD PTR [esp],eax
  4f2bf5:	mov    esi,edx
  4f2bf7:	call   20bfb2
  4f2bfc:	mov    edi,eax
  4f2bfe:	mov    eax,DWORD PTR [esp+0x1c]
  4f2c02:	mov    DWORD PTR [esp+0x360],eax
  4f2c09:	mov    eax,DWORD PTR [esp+0x2c]
  4f2c0d:	mov    eax,DWORD PTR [eax]
  4f2c0f:	mov    DWORD PTR [esp+0xc],eax
  4f2c13:	mov    eax,DWORD PTR [esp+0x360]
  4f2c1a:	mov    DWORD PTR [esp+0x8],eax
  4f2c1e:	mov    DWORD PTR [esp],edi
  4f2c21:	mov    DWORD PTR [esp+0x4],0x0
  4f2c29:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2c2e:	mov    edx,esi
  4f2c30:	mov    esi,DWORD PTR [esp+0x34]
  4f2c34:	mov    eax,DWORD PTR [esi]
  4f2c36:	mov    eax,DWORD PTR [eax+0x50]
  4f2c39:	mov    DWORD PTR [eax+0xb8],edi
  4f2c3f:	mov    edi,DWORD PTR [ebp+0x8]
  4f2c42:	test   edx,edx
  4f2c44:	je     4f7cc1
  4f2c4a:	mov    eax,DWORD PTR [esi]
  4f2c4c:	mov    eax,DWORD PTR [eax+0x50]
  4f2c4f:	mov    eax,DWORD PTR [eax+0xb8]
  4f2c55:	mov    ecx,DWORD PTR [esp+0x38]
  4f2c59:	mov    ecx,DWORD PTR [ecx]
  4f2c5b:	mov    DWORD PTR [esp+0xc],ecx
  4f2c5f:	mov    DWORD PTR [esp+0x8],eax
  4f2c63:	mov    DWORD PTR [esp],edx
  4f2c66:	mov    DWORD PTR [esp+0x4],0x72
  4f2c6e:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2c73:	mov    eax,DWORD PTR [edi+0x14]
  4f2c76:	test   eax,eax
  4f2c78:	je     4f7cc1
  4f2c7e:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2c82:	mov    ecx,DWORD PTR [ecx]
  4f2c84:	mov    DWORD PTR [esp+0x8],ecx
  4f2c88:	mov    DWORD PTR [esp],eax
  4f2c8b:	mov    DWORD PTR [esp+0x4],0x12
  4f2c93:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2c98:	mov    DWORD PTR [esp+0x1c],eax
  4f2c9c:	lea    eax,[ebx+0x4b0d8]
  4f2ca2:	mov    esi,DWORD PTR [eax]
  4f2ca4:	mov    eax,DWORD PTR [esp+0x30]
  4f2ca8:	mov    eax,DWORD PTR [eax]
  4f2caa:	mov    DWORD PTR [esp],eax
  4f2cad:	call   20bfb2
  4f2cb2:	mov    edi,eax
  4f2cb4:	mov    DWORD PTR [esp+0x358],esi
  4f2cbb:	mov    eax,DWORD PTR [esp+0x2c]
  4f2cbf:	mov    eax,DWORD PTR [eax]
  4f2cc1:	mov    DWORD PTR [esp+0xc],eax
  4f2cc5:	mov    eax,DWORD PTR [esp+0x358]
  4f2ccc:	mov    DWORD PTR [esp+0x8],eax
  4f2cd0:	mov    esi,DWORD PTR [ebp+0x8]
  4f2cd3:	mov    DWORD PTR [esp+0x4],esi
  4f2cd7:	mov    DWORD PTR [esp],edi
  4f2cda:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2cdf:	mov    ecx,DWORD PTR [esp+0x1c]
  4f2ce3:	test   ecx,ecx
  4f2ce5:	je     4f7cc1
  4f2ceb:	mov    eax,DWORD PTR [esp+0x38]
  4f2cef:	mov    eax,DWORD PTR [eax]
  4f2cf1:	mov    DWORD PTR [esp+0xc],eax
  4f2cf5:	mov    DWORD PTR [esp+0x8],edi
  4f2cf9:	mov    DWORD PTR [esp],ecx
  4f2cfc:	mov    DWORD PTR [esp+0x4],0x3
  4f2d04:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2d09:	mov    eax,DWORD PTR [esi+0x14]
  4f2d0c:	test   eax,eax
  4f2d0e:	mov    edi,esi
  4f2d10:	je     4f7cc1
  4f2d16:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2d1a:	mov    ecx,DWORD PTR [ecx]
  4f2d1c:	mov    DWORD PTR [esp+0x8],ecx
  4f2d20:	mov    DWORD PTR [esp],eax
  4f2d23:	mov    DWORD PTR [esp+0x4],0x12
  4f2d2b:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2d30:	mov    esi,eax
  4f2d32:	mov    ecx,DWORD PTR [esp+0x34]
  4f2d36:	mov    eax,DWORD PTR [ecx]
  4f2d38:	mov    eax,DWORD PTR [eax+0x50]
  4f2d3b:	cmp    DWORD PTR [eax+0xbc],0x0
  4f2d42:	jne    4f2da2
  4f2d44:	lea    eax,[ebx+0x4b0dc]
  4f2d4a:	mov    eax,DWORD PTR [eax]
  4f2d4c:	mov    DWORD PTR [esp+0x1c],eax
  4f2d50:	mov    eax,DWORD PTR [esp+0x30]
  4f2d54:	mov    eax,DWORD PTR [eax]
  4f2d56:	mov    DWORD PTR [esp],eax
  4f2d59:	call   20bfb2
  4f2d5e:	mov    edi,eax
  4f2d60:	mov    eax,DWORD PTR [esp+0x1c]
  4f2d64:	mov    DWORD PTR [esp+0x350],eax
  4f2d6b:	mov    eax,DWORD PTR [esp+0x2c]
  4f2d6f:	mov    eax,DWORD PTR [eax]
  4f2d71:	mov    DWORD PTR [esp+0xc],eax
  4f2d75:	mov    eax,DWORD PTR [esp+0x350]
  4f2d7c:	mov    DWORD PTR [esp+0x8],eax
  4f2d80:	mov    DWORD PTR [esp],edi
  4f2d83:	mov    DWORD PTR [esp+0x4],0x0
  4f2d8b:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2d90:	mov    ecx,DWORD PTR [esp+0x34]
  4f2d94:	mov    eax,DWORD PTR [ecx]
  4f2d96:	mov    eax,DWORD PTR [eax+0x50]
  4f2d99:	mov    DWORD PTR [eax+0xbc],edi
  4f2d9f:	mov    edi,DWORD PTR [ebp+0x8]
  4f2da2:	test   esi,esi
  4f2da4:	je     4f7cc1
  4f2daa:	mov    eax,DWORD PTR [ecx]
  4f2dac:	mov    eax,DWORD PTR [eax+0x50]
  4f2daf:	mov    eax,DWORD PTR [eax+0xbc]
  4f2db5:	mov    ecx,DWORD PTR [esp+0x38]
  4f2db9:	mov    ecx,DWORD PTR [ecx]
  4f2dbb:	mov    DWORD PTR [esp+0xc],ecx
  4f2dbf:	mov    DWORD PTR [esp+0x8],eax
  4f2dc3:	mov    DWORD PTR [esp],esi
  4f2dc6:	mov    DWORD PTR [esp+0x4],0x6f
  4f2dce:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2dd3:	mov    eax,DWORD PTR [edi+0x14]
  4f2dd6:	test   eax,eax
  4f2dd8:	je     4f7cc1
  4f2dde:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2de2:	mov    ecx,DWORD PTR [ecx]
  4f2de4:	mov    DWORD PTR [esp+0x8],ecx
  4f2de8:	mov    DWORD PTR [esp],eax
  4f2deb:	mov    DWORD PTR [esp+0x4],0x12
  4f2df3:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2df8:	mov    DWORD PTR [esp+0x1c],eax
  4f2dfc:	lea    eax,[ebx+0x4b0e0]
  4f2e02:	mov    esi,DWORD PTR [eax]
  4f2e04:	mov    eax,DWORD PTR [esp+0x30]
  4f2e08:	mov    eax,DWORD PTR [eax]
  4f2e0a:	mov    DWORD PTR [esp],eax
  4f2e0d:	call   20bfb2
  4f2e12:	mov    edi,eax
  4f2e14:	mov    DWORD PTR [esp+0x348],esi
  4f2e1b:	mov    eax,DWORD PTR [esp+0x2c]
  4f2e1f:	mov    eax,DWORD PTR [eax]
  4f2e21:	mov    DWORD PTR [esp+0xc],eax
  4f2e25:	mov    eax,DWORD PTR [esp+0x348]
  4f2e2c:	mov    DWORD PTR [esp+0x8],eax
  4f2e30:	mov    esi,DWORD PTR [ebp+0x8]
  4f2e33:	mov    DWORD PTR [esp+0x4],esi
  4f2e37:	mov    DWORD PTR [esp],edi
  4f2e3a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2e3f:	mov    ecx,DWORD PTR [esp+0x1c]
  4f2e43:	test   ecx,ecx
  4f2e45:	je     4f7cc1
  4f2e4b:	mov    eax,DWORD PTR [esp+0x38]
  4f2e4f:	mov    eax,DWORD PTR [eax]
  4f2e51:	mov    DWORD PTR [esp+0xc],eax
  4f2e55:	mov    DWORD PTR [esp+0x8],edi
  4f2e59:	mov    DWORD PTR [esp],ecx
  4f2e5c:	mov    DWORD PTR [esp+0x4],0x8
  4f2e64:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2e69:	mov    eax,DWORD PTR [esi+0x14]
  4f2e6c:	test   eax,eax
  4f2e6e:	je     4f7cc1
  4f2e74:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2e78:	mov    ecx,DWORD PTR [ecx]
  4f2e7a:	mov    DWORD PTR [esp+0x8],ecx
  4f2e7e:	mov    DWORD PTR [esp],eax
  4f2e81:	mov    DWORD PTR [esp+0x4],0x12
  4f2e89:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2e8e:	mov    esi,eax
  4f2e90:	mov    ecx,DWORD PTR [esp+0x34]
  4f2e94:	mov    eax,DWORD PTR [ecx]
  4f2e96:	mov    eax,DWORD PTR [eax+0x50]
  4f2e99:	cmp    DWORD PTR [eax+0xc0],0x0
  4f2ea0:	jne    4f2efd
  4f2ea2:	lea    eax,[ebx+0x4b0e4]
  4f2ea8:	mov    eax,DWORD PTR [eax]
  4f2eaa:	mov    DWORD PTR [esp+0x1c],eax
  4f2eae:	mov    eax,DWORD PTR [esp+0x30]
  4f2eb2:	mov    eax,DWORD PTR [eax]
  4f2eb4:	mov    DWORD PTR [esp],eax
  4f2eb7:	call   20bfb2
  4f2ebc:	mov    edi,eax
  4f2ebe:	mov    eax,DWORD PTR [esp+0x1c]
  4f2ec2:	mov    DWORD PTR [esp+0x340],eax
  4f2ec9:	mov    eax,DWORD PTR [esp+0x2c]
  4f2ecd:	mov    eax,DWORD PTR [eax]
  4f2ecf:	mov    DWORD PTR [esp+0xc],eax
  4f2ed3:	mov    eax,DWORD PTR [esp+0x340]
  4f2eda:	mov    DWORD PTR [esp+0x8],eax
  4f2ede:	mov    DWORD PTR [esp],edi
  4f2ee1:	mov    DWORD PTR [esp+0x4],0x0
  4f2ee9:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2eee:	mov    ecx,DWORD PTR [esp+0x34]
  4f2ef2:	mov    eax,DWORD PTR [ecx]
  4f2ef4:	mov    eax,DWORD PTR [eax+0x50]
  4f2ef7:	mov    DWORD PTR [eax+0xc0],edi
  4f2efd:	test   esi,esi
  4f2eff:	je     4f7cc1
  4f2f05:	mov    eax,DWORD PTR [ecx]
  4f2f07:	mov    eax,DWORD PTR [eax+0x50]
  4f2f0a:	mov    eax,DWORD PTR [eax+0xc0]
  4f2f10:	mov    edi,ecx
  4f2f12:	mov    ecx,DWORD PTR [esp+0x38]
  4f2f16:	mov    ecx,DWORD PTR [ecx]
  4f2f18:	mov    DWORD PTR [esp+0xc],ecx
  4f2f1c:	mov    DWORD PTR [esp+0x8],eax
  4f2f20:	mov    DWORD PTR [esp],esi
  4f2f23:	mov    DWORD PTR [esp+0x4],0x3d
  4f2f2b:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2f30:	mov    eax,DWORD PTR [ebp+0x8]
  4f2f33:	mov    eax,DWORD PTR [eax+0x14]
  4f2f36:	test   eax,eax
  4f2f38:	je     4f7cc1
  4f2f3e:	mov    ecx,DWORD PTR [esp+0x3c]
  4f2f42:	mov    ecx,DWORD PTR [ecx]
  4f2f44:	mov    DWORD PTR [esp+0x8],ecx
  4f2f48:	mov    DWORD PTR [esp],eax
  4f2f4b:	mov    DWORD PTR [esp+0x4],0x12
  4f2f53:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f2f58:	mov    esi,eax
  4f2f5a:	mov    eax,DWORD PTR [edi]
  4f2f5c:	mov    eax,DWORD PTR [eax+0x50]
  4f2f5f:	cmp    DWORD PTR [eax+0xc4],0x0
  4f2f66:	mov    ecx,edi
  4f2f68:	jne    4f2fc5
  4f2f6a:	lea    eax,[ebx+0x4b0e8]
  4f2f70:	mov    eax,DWORD PTR [eax]
  4f2f72:	mov    DWORD PTR [esp+0x1c],eax
  4f2f76:	mov    eax,DWORD PTR [esp+0x30]
  4f2f7a:	mov    eax,DWORD PTR [eax]
  4f2f7c:	mov    DWORD PTR [esp],eax
  4f2f7f:	call   20bfb2
  4f2f84:	mov    edi,eax
  4f2f86:	mov    eax,DWORD PTR [esp+0x1c]
  4f2f8a:	mov    DWORD PTR [esp+0x338],eax
  4f2f91:	mov    eax,DWORD PTR [esp+0x2c]
  4f2f95:	mov    eax,DWORD PTR [eax]
  4f2f97:	mov    DWORD PTR [esp+0xc],eax
  4f2f9b:	mov    eax,DWORD PTR [esp+0x338]
  4f2fa2:	mov    DWORD PTR [esp+0x8],eax
  4f2fa6:	mov    DWORD PTR [esp],edi
  4f2fa9:	mov    DWORD PTR [esp+0x4],0x0
  4f2fb1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f2fb6:	mov    ecx,DWORD PTR [esp+0x34]
  4f2fba:	mov    eax,DWORD PTR [ecx]
  4f2fbc:	mov    eax,DWORD PTR [eax+0x50]
  4f2fbf:	mov    DWORD PTR [eax+0xc4],edi
  4f2fc5:	test   esi,esi
  4f2fc7:	je     4f7cc1
  4f2fcd:	mov    eax,DWORD PTR [ecx]
  4f2fcf:	mov    eax,DWORD PTR [eax+0x50]
  4f2fd2:	mov    eax,DWORD PTR [eax+0xc4]
  4f2fd8:	mov    ecx,DWORD PTR [esp+0x38]
  4f2fdc:	mov    ecx,DWORD PTR [ecx]
  4f2fde:	mov    DWORD PTR [esp+0xc],ecx
  4f2fe2:	mov    DWORD PTR [esp+0x8],eax
  4f2fe6:	mov    DWORD PTR [esp],esi
  4f2fe9:	mov    DWORD PTR [esp+0x4],0x52
  4f2ff1:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f2ff6:	mov    edi,DWORD PTR [ebp+0x8]
  4f2ff9:	mov    eax,DWORD PTR [edi+0x14]
  4f2ffc:	mov    DWORD PTR [esp+0x1c],eax
  4f3000:	mov    eax,DWORD PTR [esp+0x20]
  4f3004:	mov    eax,DWORD PTR [eax]
  4f3006:	mov    DWORD PTR [esp],eax
  4f3009:	call   20bfb2
  4f300e:	mov    esi,eax
  4f3010:	mov    eax,DWORD PTR [esp+0x28]
  4f3014:	mov    eax,DWORD PTR [eax]
  4f3016:	mov    DWORD PTR [esp+0x4],eax
  4f301a:	mov    DWORD PTR [esp],esi
  4f301d:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f3022:	mov    ecx,DWORD PTR [esp+0x1c]
  4f3026:	test   ecx,ecx
  4f3028:	je     4f7cc1
  4f302e:	mov    eax,DWORD PTR [esp+0x24]
  4f3032:	mov    eax,DWORD PTR [eax]
  4f3034:	mov    DWORD PTR [esp+0xc],eax
  4f3038:	mov    DWORD PTR [esp+0x8],esi
  4f303c:	mov    DWORD PTR [esp],ecx
  4f303f:	mov    DWORD PTR [esp+0x4],0x1b
  4f3047:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f304c:	mov    eax,DWORD PTR [edi+0x14]
  4f304f:	test   eax,eax
  4f3051:	je     4f7cc1
  4f3057:	mov    ecx,DWORD PTR [esp+0x3c]
  4f305b:	mov    ecx,DWORD PTR [ecx]
  4f305d:	mov    DWORD PTR [esp+0x8],ecx
  4f3061:	mov    DWORD PTR [esp],eax
  4f3064:	mov    DWORD PTR [esp+0x4],0x1b
  4f306c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3071:	mov    esi,eax
  4f3073:	mov    ecx,DWORD PTR [esp+0x34]
  4f3077:	mov    eax,DWORD PTR [ecx]
  4f3079:	mov    eax,DWORD PTR [eax+0x50]
  4f307c:	cmp    DWORD PTR [eax+0xc8],0x0
  4f3083:	jne    4f30e3
  4f3085:	lea    eax,[ebx+0x4b0ec]
  4f308b:	mov    eax,DWORD PTR [eax]
  4f308d:	mov    DWORD PTR [esp+0x1c],eax
  4f3091:	mov    eax,DWORD PTR [esp+0x30]
  4f3095:	mov    eax,DWORD PTR [eax]
  4f3097:	mov    DWORD PTR [esp],eax
  4f309a:	call   20bfb2
  4f309f:	mov    edi,eax
  4f30a1:	mov    eax,DWORD PTR [esp+0x1c]
  4f30a5:	mov    DWORD PTR [esp+0x330],eax
  4f30ac:	mov    eax,DWORD PTR [esp+0x2c]
  4f30b0:	mov    eax,DWORD PTR [eax]
  4f30b2:	mov    DWORD PTR [esp+0xc],eax
  4f30b6:	mov    eax,DWORD PTR [esp+0x330]
  4f30bd:	mov    DWORD PTR [esp+0x8],eax
  4f30c1:	mov    DWORD PTR [esp],edi
  4f30c4:	mov    DWORD PTR [esp+0x4],0x0
  4f30cc:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f30d1:	mov    ecx,DWORD PTR [esp+0x34]
  4f30d5:	mov    eax,DWORD PTR [ecx]
  4f30d7:	mov    eax,DWORD PTR [eax+0x50]
  4f30da:	mov    DWORD PTR [eax+0xc8],edi
  4f30e0:	mov    edi,DWORD PTR [ebp+0x8]
  4f30e3:	test   esi,esi
  4f30e5:	je     4f7cc1
  4f30eb:	mov    eax,DWORD PTR [ecx]
  4f30ed:	mov    eax,DWORD PTR [eax+0x50]
  4f30f0:	mov    eax,DWORD PTR [eax+0xc8]
  4f30f6:	mov    ecx,DWORD PTR [esp+0x38]
  4f30fa:	mov    ecx,DWORD PTR [ecx]
  4f30fc:	mov    DWORD PTR [esp+0xc],ecx
  4f3100:	mov    DWORD PTR [esp+0x8],eax
  4f3104:	mov    DWORD PTR [esp],esi
  4f3107:	mov    DWORD PTR [esp+0x4],0x7f
  4f310f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3114:	mov    eax,DWORD PTR [edi+0x14]
  4f3117:	test   eax,eax
  4f3119:	je     4f7cc1
  4f311f:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3123:	mov    ecx,DWORD PTR [ecx]
  4f3125:	mov    DWORD PTR [esp+0x8],ecx
  4f3129:	mov    DWORD PTR [esp],eax
  4f312c:	mov    DWORD PTR [esp+0x4],0x1b
  4f3134:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3139:	mov    DWORD PTR [esp+0x1c],eax
  4f313d:	lea    eax,[ebx+0x4b0f0]
  4f3143:	mov    esi,DWORD PTR [eax]
  4f3145:	mov    eax,DWORD PTR [esp+0x30]
  4f3149:	mov    eax,DWORD PTR [eax]
  4f314b:	mov    DWORD PTR [esp],eax
  4f314e:	call   20bfb2
  4f3153:	mov    edi,eax
  4f3155:	mov    DWORD PTR [esp+0x328],esi
  4f315c:	mov    eax,DWORD PTR [esp+0x2c]
  4f3160:	mov    eax,DWORD PTR [eax]
  4f3162:	mov    DWORD PTR [esp+0xc],eax
  4f3166:	mov    eax,DWORD PTR [esp+0x328]
  4f316d:	mov    DWORD PTR [esp+0x8],eax
  4f3171:	mov    eax,DWORD PTR [ebp+0x8]
  4f3174:	mov    DWORD PTR [esp+0x4],eax
  4f3178:	mov    DWORD PTR [esp],edi
  4f317b:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3180:	mov    ecx,DWORD PTR [esp+0x1c]
  4f3184:	test   ecx,ecx
  4f3186:	je     4f7cc1
  4f318c:	mov    eax,DWORD PTR [esp+0x38]
  4f3190:	mov    eax,DWORD PTR [eax]
  4f3192:	mov    DWORD PTR [esp+0xc],eax
  4f3196:	mov    DWORD PTR [esp+0x8],edi
  4f319a:	mov    DWORD PTR [esp],ecx
  4f319d:	mov    DWORD PTR [esp+0x4],0x80
  4f31a5:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f31aa:	mov    eax,DWORD PTR [ebp+0x8]
  4f31ad:	mov    edi,DWORD PTR [eax+0x14]
  4f31b0:	mov    eax,DWORD PTR [esp+0x20]
  4f31b4:	mov    eax,DWORD PTR [eax]
  4f31b6:	mov    DWORD PTR [esp],eax
  4f31b9:	call   20bfb2
  4f31be:	mov    esi,eax
  4f31c0:	mov    eax,DWORD PTR [esp+0x28]
  4f31c4:	mov    eax,DWORD PTR [eax]
  4f31c6:	mov    DWORD PTR [esp+0x4],eax
  4f31ca:	mov    DWORD PTR [esp],esi
  4f31cd:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f31d2:	test   edi,edi
  4f31d4:	je     4f7cc1
  4f31da:	mov    eax,DWORD PTR [esp+0x24]
  4f31de:	mov    eax,DWORD PTR [eax]
  4f31e0:	mov    DWORD PTR [esp+0xc],eax
  4f31e4:	mov    DWORD PTR [esp+0x8],esi
  4f31e8:	mov    DWORD PTR [esp],edi
  4f31eb:	mov    DWORD PTR [esp+0x4],0x20
  4f31f3:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f31f8:	mov    eax,DWORD PTR [ebp+0x8]
  4f31fb:	mov    eax,DWORD PTR [eax+0x14]
  4f31fe:	test   eax,eax
  4f3200:	je     4f7cc1
  4f3206:	mov    ecx,DWORD PTR [esp+0x3c]
  4f320a:	mov    ecx,DWORD PTR [ecx]
  4f320c:	mov    DWORD PTR [esp+0x8],ecx
  4f3210:	mov    DWORD PTR [esp],eax
  4f3213:	mov    DWORD PTR [esp+0x4],0x20
  4f321b:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3220:	mov    DWORD PTR [esp+0x1c],eax
  4f3224:	lea    eax,[ebx+0x4b0f4]
  4f322a:	mov    esi,DWORD PTR [eax]
  4f322c:	mov    eax,DWORD PTR [esp+0x30]
  4f3230:	mov    eax,DWORD PTR [eax]
  4f3232:	mov    DWORD PTR [esp],eax
  4f3235:	call   20bfb2
  4f323a:	mov    edi,eax
  4f323c:	mov    DWORD PTR [esp+0x320],esi
  4f3243:	mov    eax,DWORD PTR [esp+0x2c]
  4f3247:	mov    eax,DWORD PTR [eax]
  4f3249:	mov    DWORD PTR [esp+0xc],eax
  4f324d:	mov    eax,DWORD PTR [esp+0x320]
  4f3254:	mov    DWORD PTR [esp+0x8],eax
  4f3258:	mov    eax,DWORD PTR [ebp+0x8]
  4f325b:	mov    DWORD PTR [esp+0x4],eax
  4f325f:	mov    DWORD PTR [esp],edi
  4f3262:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3267:	mov    ecx,DWORD PTR [esp+0x1c]
  4f326b:	test   ecx,ecx
  4f326d:	je     4f7cc1
  4f3273:	mov    eax,DWORD PTR [esp+0x38]
  4f3277:	mov    eax,DWORD PTR [eax]
  4f3279:	mov    DWORD PTR [esp+0xc],eax
  4f327d:	mov    DWORD PTR [esp+0x8],edi
  4f3281:	mov    DWORD PTR [esp],ecx
  4f3284:	mov    DWORD PTR [esp+0x4],0x26
  4f328c:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3291:	mov    eax,DWORD PTR [ebp+0x8]
  4f3294:	mov    edi,DWORD PTR [eax+0x14]
  4f3297:	mov    eax,DWORD PTR [esp+0x20]
  4f329b:	mov    eax,DWORD PTR [eax]
  4f329d:	mov    DWORD PTR [esp],eax
  4f32a0:	call   20bfb2
  4f32a5:	mov    esi,eax
  4f32a7:	mov    eax,DWORD PTR [esp+0x28]
  4f32ab:	mov    eax,DWORD PTR [eax]
  4f32ad:	mov    DWORD PTR [esp+0x4],eax
  4f32b1:	mov    DWORD PTR [esp],esi
  4f32b4:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f32b9:	test   edi,edi
  4f32bb:	je     4f7cc1
  4f32c1:	mov    eax,DWORD PTR [esp+0x24]
  4f32c5:	mov    eax,DWORD PTR [eax]
  4f32c7:	mov    DWORD PTR [esp+0xc],eax
  4f32cb:	mov    DWORD PTR [esp+0x8],esi
  4f32cf:	mov    DWORD PTR [esp],edi
  4f32d2:	mov    DWORD PTR [esp+0x4],0x3
  4f32da:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f32df:	mov    eax,DWORD PTR [ebp+0x8]
  4f32e2:	mov    eax,DWORD PTR [eax+0x14]
  4f32e5:	test   eax,eax
  4f32e7:	je     4f7cc1
  4f32ed:	mov    ecx,DWORD PTR [esp+0x3c]
  4f32f1:	mov    ecx,DWORD PTR [ecx]
  4f32f3:	mov    DWORD PTR [esp+0x8],ecx
  4f32f7:	mov    DWORD PTR [esp],eax
  4f32fa:	mov    DWORD PTR [esp+0x4],0x3
  4f3302:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3307:	mov    esi,eax
  4f3309:	mov    ecx,DWORD PTR [esp+0x34]
  4f330d:	mov    eax,DWORD PTR [ecx]
  4f330f:	mov    eax,DWORD PTR [eax+0x50]
  4f3312:	cmp    DWORD PTR [eax+0xcc],0x0
  4f3319:	jne    4f3376
  4f331b:	lea    eax,[ebx+0x4b0f8]
  4f3321:	mov    eax,DWORD PTR [eax]
  4f3323:	mov    DWORD PTR [esp+0x1c],eax
  4f3327:	mov    eax,DWORD PTR [esp+0x30]
  4f332b:	mov    eax,DWORD PTR [eax]
  4f332d:	mov    DWORD PTR [esp],eax
  4f3330:	call   20bfb2
  4f3335:	mov    edi,eax
  4f3337:	mov    eax,DWORD PTR [esp+0x1c]
  4f333b:	mov    DWORD PTR [esp+0x318],eax
  4f3342:	mov    eax,DWORD PTR [esp+0x2c]
  4f3346:	mov    eax,DWORD PTR [eax]
  4f3348:	mov    DWORD PTR [esp+0xc],eax
  4f334c:	mov    eax,DWORD PTR [esp+0x318]
  4f3353:	mov    DWORD PTR [esp+0x8],eax
  4f3357:	mov    DWORD PTR [esp],edi
  4f335a:	mov    DWORD PTR [esp+0x4],0x0
  4f3362:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3367:	mov    ecx,DWORD PTR [esp+0x34]
  4f336b:	mov    eax,DWORD PTR [ecx]
  4f336d:	mov    eax,DWORD PTR [eax+0x50]
  4f3370:	mov    DWORD PTR [eax+0xcc],edi
  4f3376:	test   esi,esi
  4f3378:	je     4f7cc1
  4f337e:	mov    eax,DWORD PTR [ecx]
  4f3380:	mov    eax,DWORD PTR [eax+0x50]
  4f3383:	mov    eax,DWORD PTR [eax+0xcc]
  4f3389:	mov    edi,ecx
  4f338b:	mov    ecx,DWORD PTR [esp+0x38]
  4f338f:	mov    ecx,DWORD PTR [ecx]
  4f3391:	mov    DWORD PTR [esp+0xc],ecx
  4f3395:	mov    DWORD PTR [esp+0x8],eax
  4f3399:	mov    DWORD PTR [esp],esi
  4f339c:	mov    DWORD PTR [esp+0x4],0x9
  4f33a4:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f33a9:	mov    eax,DWORD PTR [ebp+0x8]
  4f33ac:	mov    eax,DWORD PTR [eax+0x14]
  4f33af:	test   eax,eax
  4f33b1:	je     4f7cc1
  4f33b7:	mov    ecx,DWORD PTR [esp+0x3c]
  4f33bb:	mov    ecx,DWORD PTR [ecx]
  4f33bd:	mov    DWORD PTR [esp+0x8],ecx
  4f33c1:	mov    DWORD PTR [esp],eax
  4f33c4:	mov    DWORD PTR [esp+0x4],0x3
  4f33cc:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f33d1:	mov    esi,eax
  4f33d3:	mov    eax,DWORD PTR [edi]
  4f33d5:	mov    eax,DWORD PTR [eax+0x50]
  4f33d8:	cmp    DWORD PTR [eax+0xd0],0x0
  4f33df:	mov    ecx,edi
  4f33e1:	jne    4f343e
  4f33e3:	lea    eax,[ebx+0x4b0fc]
  4f33e9:	mov    eax,DWORD PTR [eax]
  4f33eb:	mov    DWORD PTR [esp+0x1c],eax
  4f33ef:	mov    eax,DWORD PTR [esp+0x30]
  4f33f3:	mov    eax,DWORD PTR [eax]
  4f33f5:	mov    DWORD PTR [esp],eax
  4f33f8:	call   20bfb2
  4f33fd:	mov    edi,eax
  4f33ff:	mov    eax,DWORD PTR [esp+0x1c]
  4f3403:	mov    DWORD PTR [esp+0x310],eax
  4f340a:	mov    eax,DWORD PTR [esp+0x2c]
  4f340e:	mov    eax,DWORD PTR [eax]
  4f3410:	mov    DWORD PTR [esp+0xc],eax
  4f3414:	mov    eax,DWORD PTR [esp+0x310]
  4f341b:	mov    DWORD PTR [esp+0x8],eax
  4f341f:	mov    DWORD PTR [esp],edi
  4f3422:	mov    DWORD PTR [esp+0x4],0x0
  4f342a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f342f:	mov    ecx,DWORD PTR [esp+0x34]
  4f3433:	mov    eax,DWORD PTR [ecx]
  4f3435:	mov    eax,DWORD PTR [eax+0x50]
  4f3438:	mov    DWORD PTR [eax+0xd0],edi
  4f343e:	test   esi,esi
  4f3440:	je     4f7cc1
  4f3446:	mov    eax,DWORD PTR [ecx]
  4f3448:	mov    eax,DWORD PTR [eax+0x50]
  4f344b:	mov    eax,DWORD PTR [eax+0xd0]
  4f3451:	mov    edi,ecx
  4f3453:	mov    ecx,DWORD PTR [esp+0x38]
  4f3457:	mov    ecx,DWORD PTR [ecx]
  4f3459:	mov    DWORD PTR [esp+0xc],ecx
  4f345d:	mov    DWORD PTR [esp+0x8],eax
  4f3461:	mov    DWORD PTR [esp],esi
  4f3464:	mov    DWORD PTR [esp+0x4],0x1c
  4f346c:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3471:	mov    eax,DWORD PTR [ebp+0x8]
  4f3474:	mov    eax,DWORD PTR [eax+0x14]
  4f3477:	test   eax,eax
  4f3479:	je     4f7cc1
  4f347f:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3483:	mov    ecx,DWORD PTR [ecx]
  4f3485:	mov    DWORD PTR [esp+0x8],ecx
  4f3489:	mov    DWORD PTR [esp],eax
  4f348c:	mov    DWORD PTR [esp+0x4],0x3
  4f3494:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3499:	mov    esi,eax
  4f349b:	mov    eax,DWORD PTR [edi]
  4f349d:	mov    eax,DWORD PTR [eax+0x50]
  4f34a0:	cmp    DWORD PTR [eax+0xd4],0x0
  4f34a7:	mov    ecx,edi
  4f34a9:	jne    4f3506
  4f34ab:	lea    eax,[ebx+0x4b100]
  4f34b1:	mov    eax,DWORD PTR [eax]
  4f34b3:	mov    DWORD PTR [esp+0x1c],eax
  4f34b7:	mov    eax,DWORD PTR [esp+0x30]
  4f34bb:	mov    eax,DWORD PTR [eax]
  4f34bd:	mov    DWORD PTR [esp],eax
  4f34c0:	call   20bfb2
  4f34c5:	mov    edi,eax
  4f34c7:	mov    eax,DWORD PTR [esp+0x1c]
  4f34cb:	mov    DWORD PTR [esp+0x308],eax
  4f34d2:	mov    eax,DWORD PTR [esp+0x2c]
  4f34d6:	mov    eax,DWORD PTR [eax]
  4f34d8:	mov    DWORD PTR [esp+0xc],eax
  4f34dc:	mov    eax,DWORD PTR [esp+0x308]
  4f34e3:	mov    DWORD PTR [esp+0x8],eax
  4f34e7:	mov    DWORD PTR [esp],edi
  4f34ea:	mov    DWORD PTR [esp+0x4],0x0
  4f34f2:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f34f7:	mov    ecx,DWORD PTR [esp+0x34]
  4f34fb:	mov    eax,DWORD PTR [ecx]
  4f34fd:	mov    eax,DWORD PTR [eax+0x50]
  4f3500:	mov    DWORD PTR [eax+0xd4],edi
  4f3506:	test   esi,esi
  4f3508:	je     4f7cc1
  4f350e:	mov    eax,DWORD PTR [ecx]
  4f3510:	mov    eax,DWORD PTR [eax+0x50]
  4f3513:	mov    eax,DWORD PTR [eax+0xd4]
  4f3519:	mov    ecx,DWORD PTR [esp+0x38]
  4f351d:	mov    ecx,DWORD PTR [ecx]
  4f351f:	mov    DWORD PTR [esp+0xc],ecx
  4f3523:	mov    DWORD PTR [esp+0x8],eax
  4f3527:	mov    DWORD PTR [esp],esi
  4f352a:	mov    DWORD PTR [esp+0x4],0x26
  4f3532:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3537:	mov    edi,DWORD PTR [ebp+0x8]
  4f353a:	mov    eax,DWORD PTR [edi+0x14]
  4f353d:	mov    DWORD PTR [esp+0x1c],eax
  4f3541:	mov    eax,DWORD PTR [esp+0x20]
  4f3545:	mov    eax,DWORD PTR [eax]
  4f3547:	mov    DWORD PTR [esp],eax
  4f354a:	call   20bfb2
  4f354f:	mov    esi,eax
  4f3551:	mov    eax,DWORD PTR [esp+0x28]
  4f3555:	mov    eax,DWORD PTR [eax]
  4f3557:	mov    DWORD PTR [esp+0x4],eax
  4f355b:	mov    DWORD PTR [esp],esi
  4f355e:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f3563:	mov    ecx,DWORD PTR [esp+0x1c]
  4f3567:	test   ecx,ecx
  4f3569:	je     4f7cc1
  4f356f:	mov    eax,DWORD PTR [esp+0x24]
  4f3573:	mov    eax,DWORD PTR [eax]
  4f3575:	mov    DWORD PTR [esp+0xc],eax
  4f3579:	mov    DWORD PTR [esp+0x8],esi
  4f357d:	mov    DWORD PTR [esp],ecx
  4f3580:	mov    DWORD PTR [esp+0x4],0x10
  4f3588:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f358d:	mov    eax,DWORD PTR [edi+0x14]
  4f3590:	test   eax,eax
  4f3592:	je     4f7cc1
  4f3598:	mov    ecx,DWORD PTR [esp+0x3c]
  4f359c:	mov    ecx,DWORD PTR [ecx]
  4f359e:	mov    DWORD PTR [esp+0x8],ecx
  4f35a2:	mov    DWORD PTR [esp],eax
  4f35a5:	mov    DWORD PTR [esp+0x4],0x10
  4f35ad:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f35b2:	mov    esi,eax
  4f35b4:	mov    ecx,DWORD PTR [esp+0x34]
  4f35b8:	mov    eax,DWORD PTR [ecx]
  4f35ba:	mov    eax,DWORD PTR [eax+0x50]
  4f35bd:	cmp    DWORD PTR [eax+0xd8],0x0
  4f35c4:	jne    4f3624
  4f35c6:	lea    eax,[ebx+0x4b104]
  4f35cc:	mov    eax,DWORD PTR [eax]
  4f35ce:	mov    DWORD PTR [esp+0x1c],eax
  4f35d2:	mov    eax,DWORD PTR [esp+0x30]
  4f35d6:	mov    eax,DWORD PTR [eax]
  4f35d8:	mov    DWORD PTR [esp],eax
  4f35db:	call   20bfb2
  4f35e0:	mov    edi,eax
  4f35e2:	mov    eax,DWORD PTR [esp+0x1c]
  4f35e6:	mov    DWORD PTR [esp+0x300],eax
  4f35ed:	mov    eax,DWORD PTR [esp+0x2c]
  4f35f1:	mov    eax,DWORD PTR [eax]
  4f35f3:	mov    DWORD PTR [esp+0xc],eax
  4f35f7:	mov    eax,DWORD PTR [esp+0x300]
  4f35fe:	mov    DWORD PTR [esp+0x8],eax
  4f3602:	mov    DWORD PTR [esp],edi
  4f3605:	mov    DWORD PTR [esp+0x4],0x0
  4f360d:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3612:	mov    ecx,DWORD PTR [esp+0x34]
  4f3616:	mov    eax,DWORD PTR [ecx]
  4f3618:	mov    eax,DWORD PTR [eax+0x50]
  4f361b:	mov    DWORD PTR [eax+0xd8],edi
  4f3621:	mov    edi,DWORD PTR [ebp+0x8]
  4f3624:	test   esi,esi
  4f3626:	je     4f7cc1
  4f362c:	mov    eax,DWORD PTR [ecx]
  4f362e:	mov    eax,DWORD PTR [eax+0x50]
  4f3631:	mov    eax,DWORD PTR [eax+0xd8]
  4f3637:	mov    ecx,DWORD PTR [esp+0x38]
  4f363b:	mov    ecx,DWORD PTR [ecx]
  4f363d:	mov    DWORD PTR [esp+0xc],ecx
  4f3641:	mov    DWORD PTR [esp+0x8],eax
  4f3645:	mov    DWORD PTR [esp],esi
  4f3648:	mov    DWORD PTR [esp+0x4],0x14
  4f3650:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3655:	mov    edi,DWORD PTR [edi+0x14]
  4f3658:	mov    eax,DWORD PTR [esp+0x20]
  4f365c:	mov    eax,DWORD PTR [eax]
  4f365e:	mov    DWORD PTR [esp],eax
  4f3661:	call   20bfb2
  4f3666:	mov    esi,eax
  4f3668:	mov    eax,DWORD PTR [esp+0x28]
  4f366c:	mov    eax,DWORD PTR [eax]
  4f366e:	mov    DWORD PTR [esp+0x4],eax
  4f3672:	mov    DWORD PTR [esp],esi
  4f3675:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f367a:	test   edi,edi
  4f367c:	je     4f7cc1
  4f3682:	mov    eax,DWORD PTR [esp+0x24]
  4f3686:	mov    eax,DWORD PTR [eax]
  4f3688:	mov    DWORD PTR [esp+0xc],eax
  4f368c:	mov    DWORD PTR [esp+0x8],esi
  4f3690:	mov    DWORD PTR [esp],edi
  4f3693:	mov    DWORD PTR [esp+0x4],0x21
  4f369b:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f36a0:	mov    eax,DWORD PTR [ebp+0x8]
  4f36a3:	mov    eax,DWORD PTR [eax+0x14]
  4f36a6:	test   eax,eax
  4f36a8:	je     4f7cc1
  4f36ae:	mov    ecx,DWORD PTR [esp+0x3c]
  4f36b2:	mov    ecx,DWORD PTR [ecx]
  4f36b4:	mov    DWORD PTR [esp+0x8],ecx
  4f36b8:	mov    DWORD PTR [esp],eax
  4f36bb:	mov    DWORD PTR [esp+0x4],0x21
  4f36c3:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f36c8:	mov    DWORD PTR [esp+0x1c],eax
  4f36cc:	lea    eax,[ebx+0x4b108]
  4f36d2:	mov    esi,DWORD PTR [eax]
  4f36d4:	mov    eax,DWORD PTR [esp+0x30]
  4f36d8:	mov    eax,DWORD PTR [eax]
  4f36da:	mov    DWORD PTR [esp],eax
  4f36dd:	call   20bfb2
  4f36e2:	mov    edi,eax
  4f36e4:	mov    DWORD PTR [esp+0x2f8],esi
  4f36eb:	mov    eax,DWORD PTR [esp+0x2c]
  4f36ef:	mov    eax,DWORD PTR [eax]
  4f36f1:	mov    DWORD PTR [esp+0xc],eax
  4f36f5:	mov    eax,DWORD PTR [esp+0x2f8]
  4f36fc:	mov    DWORD PTR [esp+0x8],eax
  4f3700:	mov    eax,DWORD PTR [ebp+0x8]
  4f3703:	mov    DWORD PTR [esp+0x4],eax
  4f3707:	mov    DWORD PTR [esp],edi
  4f370a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f370f:	mov    ecx,DWORD PTR [esp+0x1c]
  4f3713:	test   ecx,ecx
  4f3715:	je     4f7cc1
  4f371b:	mov    eax,DWORD PTR [esp+0x38]
  4f371f:	mov    eax,DWORD PTR [eax]
  4f3721:	mov    DWORD PTR [esp+0xc],eax
  4f3725:	mov    DWORD PTR [esp+0x8],edi
  4f3729:	mov    DWORD PTR [esp],ecx
  4f372c:	mov    DWORD PTR [esp+0x4],0x8
  4f3734:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3739:	mov    eax,DWORD PTR [ebp+0x8]
  4f373c:	mov    edi,DWORD PTR [eax+0x14]
  4f373f:	mov    eax,DWORD PTR [esp+0x20]
  4f3743:	mov    eax,DWORD PTR [eax]
  4f3745:	mov    DWORD PTR [esp],eax
  4f3748:	call   20bfb2
  4f374d:	mov    esi,eax
  4f374f:	mov    eax,DWORD PTR [esp+0x28]
  4f3753:	mov    eax,DWORD PTR [eax]
  4f3755:	mov    DWORD PTR [esp+0x4],eax
  4f3759:	mov    DWORD PTR [esp],esi
  4f375c:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f3761:	test   edi,edi
  4f3763:	je     4f7cc1
  4f3769:	mov    eax,DWORD PTR [esp+0x24]
  4f376d:	mov    eax,DWORD PTR [eax]
  4f376f:	mov    DWORD PTR [esp+0xc],eax
  4f3773:	mov    DWORD PTR [esp+0x8],esi
  4f3777:	mov    DWORD PTR [esp],edi
  4f377a:	mov    DWORD PTR [esp+0x4],0x4
  4f3782:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f3787:	mov    eax,DWORD PTR [ebp+0x8]
  4f378a:	mov    eax,DWORD PTR [eax+0x14]
  4f378d:	test   eax,eax
  4f378f:	je     4f7cc1
  4f3795:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3799:	mov    ecx,DWORD PTR [ecx]
  4f379b:	mov    DWORD PTR [esp+0x8],ecx
  4f379f:	mov    DWORD PTR [esp],eax
  4f37a2:	mov    DWORD PTR [esp+0x4],0x4
  4f37aa:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f37af:	mov    DWORD PTR [esp+0x1c],eax
  4f37b3:	lea    eax,[ebx+0x4b10c]
  4f37b9:	mov    esi,DWORD PTR [eax]
  4f37bb:	mov    eax,DWORD PTR [esp+0x30]
  4f37bf:	mov    eax,DWORD PTR [eax]
  4f37c1:	mov    DWORD PTR [esp],eax
  4f37c4:	call   20bfb2
  4f37c9:	mov    edi,eax
  4f37cb:	mov    DWORD PTR [esp+0x2f0],esi
  4f37d2:	mov    eax,DWORD PTR [esp+0x2c]
  4f37d6:	mov    eax,DWORD PTR [eax]
  4f37d8:	mov    DWORD PTR [esp+0xc],eax
  4f37dc:	mov    eax,DWORD PTR [esp+0x2f0]
  4f37e3:	mov    DWORD PTR [esp+0x8],eax
  4f37e7:	mov    eax,DWORD PTR [ebp+0x8]
  4f37ea:	mov    DWORD PTR [esp+0x4],eax
  4f37ee:	mov    DWORD PTR [esp],edi
  4f37f1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f37f6:	mov    ecx,DWORD PTR [esp+0x1c]
  4f37fa:	test   ecx,ecx
  4f37fc:	je     4f7cc1
  4f3802:	mov    eax,DWORD PTR [esp+0x38]
  4f3806:	mov    eax,DWORD PTR [eax]
  4f3808:	mov    DWORD PTR [esp+0xc],eax
  4f380c:	mov    DWORD PTR [esp+0x8],edi
  4f3810:	mov    DWORD PTR [esp],ecx
  4f3813:	mov    DWORD PTR [esp+0x4],0x3
  4f381b:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3820:	mov    eax,DWORD PTR [ebp+0x8]
  4f3823:	mov    ecx,eax
  4f3825:	mov    eax,DWORD PTR [ecx+0x14]
  4f3828:	test   eax,eax
  4f382a:	mov    edi,ecx
  4f382c:	je     4f7cc1
  4f3832:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3836:	mov    ecx,DWORD PTR [ecx]
  4f3838:	mov    DWORD PTR [esp+0x8],ecx
  4f383c:	mov    DWORD PTR [esp],eax
  4f383f:	mov    DWORD PTR [esp+0x4],0x4
  4f3847:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f384c:	mov    edx,eax
  4f384e:	mov    esi,DWORD PTR [esp+0x34]
  4f3852:	mov    eax,DWORD PTR [esi]
  4f3854:	mov    eax,DWORD PTR [eax+0x50]
  4f3857:	cmp    DWORD PTR [eax+0xdc],0x0
  4f385e:	jne    4f38c2
  4f3860:	lea    eax,[ebx+0x4b110]
  4f3866:	mov    eax,DWORD PTR [eax]
  4f3868:	mov    DWORD PTR [esp+0x1c],eax
  4f386c:	mov    eax,DWORD PTR [esp+0x30]
  4f3870:	mov    eax,DWORD PTR [eax]
  4f3872:	mov    DWORD PTR [esp],eax
  4f3875:	mov    esi,edx
  4f3877:	call   20bfb2
  4f387c:	mov    edi,eax
  4f387e:	mov    eax,DWORD PTR [esp+0x1c]
  4f3882:	mov    DWORD PTR [esp+0x2e8],eax
  4f3889:	mov    eax,DWORD PTR [esp+0x2c]
  4f388d:	mov    eax,DWORD PTR [eax]
  4f388f:	mov    DWORD PTR [esp+0xc],eax
  4f3893:	mov    eax,DWORD PTR [esp+0x2e8]
  4f389a:	mov    DWORD PTR [esp+0x8],eax
  4f389e:	mov    DWORD PTR [esp],edi
  4f38a1:	mov    DWORD PTR [esp+0x4],0x0
  4f38a9:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f38ae:	mov    edx,esi
  4f38b0:	mov    esi,DWORD PTR [esp+0x34]
  4f38b4:	mov    eax,DWORD PTR [esi]
  4f38b6:	mov    eax,DWORD PTR [eax+0x50]
  4f38b9:	mov    DWORD PTR [eax+0xdc],edi
  4f38bf:	mov    edi,DWORD PTR [ebp+0x8]
  4f38c2:	test   edx,edx
  4f38c4:	je     4f7ccb
  4f38ca:	mov    eax,DWORD PTR [esi]
  4f38cc:	mov    eax,DWORD PTR [eax+0x50]
  4f38cf:	mov    eax,DWORD PTR [eax+0xdc]
  4f38d5:	mov    ecx,DWORD PTR [esp+0x38]
  4f38d9:	mov    ecx,DWORD PTR [ecx]
  4f38db:	mov    DWORD PTR [esp+0xc],ecx
  4f38df:	mov    DWORD PTR [esp+0x8],eax
  4f38e3:	mov    DWORD PTR [esp],edx
  4f38e6:	mov    DWORD PTR [esp+0x4],0x38
  4f38ee:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f38f3:	mov    eax,DWORD PTR [edi+0x14]
  4f38f6:	test   eax,eax
  4f38f8:	je     4f7ccb
  4f38fe:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3902:	mov    ecx,DWORD PTR [ecx]
  4f3904:	mov    DWORD PTR [esp+0x8],ecx
  4f3908:	mov    DWORD PTR [esp],eax
  4f390b:	mov    DWORD PTR [esp+0x4],0x4
  4f3913:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3918:	mov    edx,eax
  4f391a:	mov    eax,DWORD PTR [esi]
  4f391c:	mov    eax,DWORD PTR [eax+0x50]
  4f391f:	cmp    DWORD PTR [eax+0xe0],0x0
  4f3926:	jne    4f398a
  4f3928:	lea    eax,[ebx+0x4b114]
  4f392e:	mov    eax,DWORD PTR [eax]
  4f3930:	mov    DWORD PTR [esp+0x1c],eax
  4f3934:	mov    eax,DWORD PTR [esp+0x30]
  4f3938:	mov    eax,DWORD PTR [eax]
  4f393a:	mov    DWORD PTR [esp],eax
  4f393d:	mov    esi,edx
  4f393f:	call   20bfb2
  4f3944:	mov    edi,eax
  4f3946:	mov    eax,DWORD PTR [esp+0x1c]
  4f394a:	mov    DWORD PTR [esp+0x2e0],eax
  4f3951:	mov    eax,DWORD PTR [esp+0x2c]
  4f3955:	mov    eax,DWORD PTR [eax]
  4f3957:	mov    DWORD PTR [esp+0xc],eax
  4f395b:	mov    eax,DWORD PTR [esp+0x2e0]
  4f3962:	mov    DWORD PTR [esp+0x8],eax
  4f3966:	mov    DWORD PTR [esp],edi
  4f3969:	mov    DWORD PTR [esp+0x4],0x0
  4f3971:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3976:	mov    edx,esi
  4f3978:	mov    esi,DWORD PTR [esp+0x34]
  4f397c:	mov    eax,DWORD PTR [esi]
  4f397e:	mov    eax,DWORD PTR [eax+0x50]
  4f3981:	mov    DWORD PTR [eax+0xe0],edi
  4f3987:	mov    edi,DWORD PTR [ebp+0x8]
  4f398a:	test   edx,edx
  4f398c:	je     4f7ccb
  4f3992:	mov    eax,DWORD PTR [esi]
  4f3994:	mov    eax,DWORD PTR [eax+0x50]
  4f3997:	mov    eax,DWORD PTR [eax+0xe0]
  4f399d:	mov    ecx,DWORD PTR [esp+0x38]
  4f39a1:	mov    ecx,DWORD PTR [ecx]
  4f39a3:	mov    DWORD PTR [esp+0xc],ecx
  4f39a7:	mov    DWORD PTR [esp+0x8],eax
  4f39ab:	mov    DWORD PTR [esp],edx
  4f39ae:	mov    DWORD PTR [esp+0x4],0x42
  4f39b6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f39bb:	mov    eax,DWORD PTR [edi+0x14]
  4f39be:	test   eax,eax
  4f39c0:	je     4f7ccb
  4f39c6:	mov    ecx,DWORD PTR [esp+0x3c]
  4f39ca:	mov    ecx,DWORD PTR [ecx]
  4f39cc:	mov    DWORD PTR [esp+0x8],ecx
  4f39d0:	mov    DWORD PTR [esp],eax
  4f39d3:	mov    DWORD PTR [esp+0x4],0x4
  4f39db:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f39e0:	mov    DWORD PTR [esp+0x1c],eax
  4f39e4:	lea    eax,[ebx+0x4b118]
  4f39ea:	mov    esi,DWORD PTR [eax]
  4f39ec:	mov    eax,DWORD PTR [esp+0x30]
  4f39f0:	mov    eax,DWORD PTR [eax]
  4f39f2:	mov    DWORD PTR [esp],eax
  4f39f5:	call   20bfb2
  4f39fa:	mov    edi,eax
  4f39fc:	mov    DWORD PTR [esp+0x2d8],esi
  4f3a03:	mov    eax,DWORD PTR [esp+0x2c]
  4f3a07:	mov    eax,DWORD PTR [eax]
  4f3a09:	mov    DWORD PTR [esp+0xc],eax
  4f3a0d:	mov    eax,DWORD PTR [esp+0x2d8]
  4f3a14:	mov    DWORD PTR [esp+0x8],eax
  4f3a18:	mov    esi,DWORD PTR [ebp+0x8]
  4f3a1b:	mov    DWORD PTR [esp+0x4],esi
  4f3a1f:	mov    DWORD PTR [esp],edi
  4f3a22:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3a27:	mov    ecx,DWORD PTR [esp+0x1c]
  4f3a2b:	test   ecx,ecx
  4f3a2d:	je     4f7ccb
  4f3a33:	mov    eax,DWORD PTR [esp+0x38]
  4f3a37:	mov    eax,DWORD PTR [eax]
  4f3a39:	mov    DWORD PTR [esp+0xc],eax
  4f3a3d:	mov    DWORD PTR [esp+0x8],edi
  4f3a41:	mov    DWORD PTR [esp],ecx
  4f3a44:	mov    DWORD PTR [esp+0x4],0x5a
  4f3a4c:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3a51:	mov    eax,DWORD PTR [esi+0x14]
  4f3a54:	test   eax,eax
  4f3a56:	je     4f7ccb
  4f3a5c:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3a60:	mov    ecx,DWORD PTR [ecx]
  4f3a62:	mov    DWORD PTR [esp+0x8],ecx
  4f3a66:	mov    DWORD PTR [esp],eax
  4f3a69:	mov    DWORD PTR [esp+0x4],0x4
  4f3a71:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3a76:	mov    esi,eax
  4f3a78:	mov    ecx,DWORD PTR [esp+0x34]
  4f3a7c:	mov    eax,DWORD PTR [ecx]
  4f3a7e:	mov    eax,DWORD PTR [eax+0x50]
  4f3a81:	cmp    DWORD PTR [eax+0xe4],0x0
  4f3a88:	jne    4f3ae5
  4f3a8a:	lea    eax,[ebx+0x4b11c]
  4f3a90:	mov    eax,DWORD PTR [eax]
  4f3a92:	mov    DWORD PTR [esp+0x1c],eax
  4f3a96:	mov    eax,DWORD PTR [esp+0x30]
  4f3a9a:	mov    eax,DWORD PTR [eax]
  4f3a9c:	mov    DWORD PTR [esp],eax
  4f3a9f:	call   20bfb2
  4f3aa4:	mov    edi,eax
  4f3aa6:	mov    eax,DWORD PTR [esp+0x1c]
  4f3aaa:	mov    DWORD PTR [esp+0x2d0],eax
  4f3ab1:	mov    eax,DWORD PTR [esp+0x2c]
  4f3ab5:	mov    eax,DWORD PTR [eax]
  4f3ab7:	mov    DWORD PTR [esp+0xc],eax
  4f3abb:	mov    eax,DWORD PTR [esp+0x2d0]
  4f3ac2:	mov    DWORD PTR [esp+0x8],eax
  4f3ac6:	mov    DWORD PTR [esp],edi
  4f3ac9:	mov    DWORD PTR [esp+0x4],0x0
  4f3ad1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3ad6:	mov    ecx,DWORD PTR [esp+0x34]
  4f3ada:	mov    eax,DWORD PTR [ecx]
  4f3adc:	mov    eax,DWORD PTR [eax+0x50]
  4f3adf:	mov    DWORD PTR [eax+0xe4],edi
  4f3ae5:	test   esi,esi
  4f3ae7:	je     4f7ccb
  4f3aed:	mov    eax,DWORD PTR [ecx]
  4f3aef:	mov    eax,DWORD PTR [eax+0x50]
  4f3af2:	mov    eax,DWORD PTR [eax+0xe4]
  4f3af8:	mov    edi,ecx
  4f3afa:	mov    ecx,DWORD PTR [esp+0x38]
  4f3afe:	mov    ecx,DWORD PTR [ecx]
  4f3b00:	mov    DWORD PTR [esp+0xc],ecx
  4f3b04:	mov    DWORD PTR [esp+0x8],eax
  4f3b08:	mov    DWORD PTR [esp],esi
  4f3b0b:	mov    DWORD PTR [esp+0x4],0x47
  4f3b13:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3b18:	mov    eax,DWORD PTR [ebp+0x8]
  4f3b1b:	mov    eax,DWORD PTR [eax+0x14]
  4f3b1e:	test   eax,eax
  4f3b20:	je     4f7ccb
  4f3b26:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3b2a:	mov    ecx,DWORD PTR [ecx]
  4f3b2c:	mov    DWORD PTR [esp+0x8],ecx
  4f3b30:	mov    DWORD PTR [esp],eax
  4f3b33:	mov    DWORD PTR [esp+0x4],0x4
  4f3b3b:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3b40:	mov    esi,eax
  4f3b42:	mov    eax,DWORD PTR [edi]
  4f3b44:	mov    eax,DWORD PTR [eax+0x50]
  4f3b47:	cmp    DWORD PTR [eax+0xe8],0x0
  4f3b4e:	mov    ecx,edi
  4f3b50:	jne    4f3bad
  4f3b52:	lea    eax,[ebx+0x4b120]
  4f3b58:	mov    eax,DWORD PTR [eax]
  4f3b5a:	mov    DWORD PTR [esp+0x1c],eax
  4f3b5e:	mov    eax,DWORD PTR [esp+0x30]
  4f3b62:	mov    eax,DWORD PTR [eax]
  4f3b64:	mov    DWORD PTR [esp],eax
  4f3b67:	call   20bfb2
  4f3b6c:	mov    edi,eax
  4f3b6e:	mov    eax,DWORD PTR [esp+0x1c]
  4f3b72:	mov    DWORD PTR [esp+0x2c8],eax
  4f3b79:	mov    eax,DWORD PTR [esp+0x2c]
  4f3b7d:	mov    eax,DWORD PTR [eax]
  4f3b7f:	mov    DWORD PTR [esp+0xc],eax
  4f3b83:	mov    eax,DWORD PTR [esp+0x2c8]
  4f3b8a:	mov    DWORD PTR [esp+0x8],eax
  4f3b8e:	mov    DWORD PTR [esp],edi
  4f3b91:	mov    DWORD PTR [esp+0x4],0x0
  4f3b99:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3b9e:	mov    ecx,DWORD PTR [esp+0x34]
  4f3ba2:	mov    eax,DWORD PTR [ecx]
  4f3ba4:	mov    eax,DWORD PTR [eax+0x50]
  4f3ba7:	mov    DWORD PTR [eax+0xe8],edi
  4f3bad:	test   esi,esi
  4f3baf:	je     4f7ccb
  4f3bb5:	mov    eax,DWORD PTR [ecx]
  4f3bb7:	mov    eax,DWORD PTR [eax+0x50]
  4f3bba:	mov    eax,DWORD PTR [eax+0xe8]
  4f3bc0:	mov    edi,ecx
  4f3bc2:	mov    ecx,DWORD PTR [esp+0x38]
  4f3bc6:	mov    ecx,DWORD PTR [ecx]
  4f3bc8:	mov    DWORD PTR [esp+0xc],ecx
  4f3bcc:	mov    DWORD PTR [esp+0x8],eax
  4f3bd0:	mov    DWORD PTR [esp],esi
  4f3bd3:	mov    DWORD PTR [esp+0x4],0x43
  4f3bdb:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3be0:	mov    eax,DWORD PTR [ebp+0x8]
  4f3be3:	mov    eax,DWORD PTR [eax+0x14]
  4f3be6:	test   eax,eax
  4f3be8:	je     4f7ccb
  4f3bee:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3bf2:	mov    ecx,DWORD PTR [ecx]
  4f3bf4:	mov    DWORD PTR [esp+0x8],ecx
  4f3bf8:	mov    DWORD PTR [esp],eax
  4f3bfb:	mov    DWORD PTR [esp+0x4],0x4
  4f3c03:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3c08:	mov    esi,eax
  4f3c0a:	mov    eax,DWORD PTR [edi]
  4f3c0c:	mov    eax,DWORD PTR [eax+0x50]
  4f3c0f:	cmp    DWORD PTR [eax+0xec],0x0
  4f3c16:	mov    ecx,edi
  4f3c18:	jne    4f3c75
  4f3c1a:	lea    eax,[ebx+0x4b124]
  4f3c20:	mov    eax,DWORD PTR [eax]
  4f3c22:	mov    DWORD PTR [esp+0x1c],eax
  4f3c26:	mov    eax,DWORD PTR [esp+0x30]
  4f3c2a:	mov    eax,DWORD PTR [eax]
  4f3c2c:	mov    DWORD PTR [esp],eax
  4f3c2f:	call   20bfb2
  4f3c34:	mov    edi,eax
  4f3c36:	mov    eax,DWORD PTR [esp+0x1c]
  4f3c3a:	mov    DWORD PTR [esp+0x2c0],eax
  4f3c41:	mov    eax,DWORD PTR [esp+0x2c]
  4f3c45:	mov    eax,DWORD PTR [eax]
  4f3c47:	mov    DWORD PTR [esp+0xc],eax
  4f3c4b:	mov    eax,DWORD PTR [esp+0x2c0]
  4f3c52:	mov    DWORD PTR [esp+0x8],eax
  4f3c56:	mov    DWORD PTR [esp],edi
  4f3c59:	mov    DWORD PTR [esp+0x4],0x0
  4f3c61:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3c66:	mov    ecx,DWORD PTR [esp+0x34]
  4f3c6a:	mov    eax,DWORD PTR [ecx]
  4f3c6c:	mov    eax,DWORD PTR [eax+0x50]
  4f3c6f:	mov    DWORD PTR [eax+0xec],edi
  4f3c75:	test   esi,esi
  4f3c77:	je     4f7ccb
  4f3c7d:	mov    eax,DWORD PTR [ecx]
  4f3c7f:	mov    eax,DWORD PTR [eax+0x50]
  4f3c82:	mov    eax,DWORD PTR [eax+0xec]
  4f3c88:	mov    edi,ecx
  4f3c8a:	mov    ecx,DWORD PTR [esp+0x38]
  4f3c8e:	mov    ecx,DWORD PTR [ecx]
  4f3c90:	mov    DWORD PTR [esp+0xc],ecx
  4f3c94:	mov    DWORD PTR [esp+0x8],eax
  4f3c98:	mov    DWORD PTR [esp],esi
  4f3c9b:	mov    DWORD PTR [esp+0x4],0x44
  4f3ca3:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3ca8:	mov    eax,DWORD PTR [ebp+0x8]
  4f3cab:	mov    eax,DWORD PTR [eax+0x14]
  4f3cae:	test   eax,eax
  4f3cb0:	je     4f7ccb
  4f3cb6:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3cba:	mov    ecx,DWORD PTR [ecx]
  4f3cbc:	mov    DWORD PTR [esp+0x8],ecx
  4f3cc0:	mov    DWORD PTR [esp],eax
  4f3cc3:	mov    DWORD PTR [esp+0x4],0x4
  4f3ccb:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3cd0:	mov    esi,eax
  4f3cd2:	mov    eax,DWORD PTR [edi]
  4f3cd4:	mov    eax,DWORD PTR [eax+0x50]
  4f3cd7:	cmp    DWORD PTR [eax+0xf0],0x0
  4f3cde:	mov    ecx,edi
  4f3ce0:	jne    4f3d3d
  4f3ce2:	lea    eax,[ebx+0x4b128]
  4f3ce8:	mov    eax,DWORD PTR [eax]
  4f3cea:	mov    DWORD PTR [esp+0x1c],eax
  4f3cee:	mov    eax,DWORD PTR [esp+0x30]
  4f3cf2:	mov    eax,DWORD PTR [eax]
  4f3cf4:	mov    DWORD PTR [esp],eax
  4f3cf7:	call   20bfb2
  4f3cfc:	mov    edi,eax
  4f3cfe:	mov    eax,DWORD PTR [esp+0x1c]
  4f3d02:	mov    DWORD PTR [esp+0x2b8],eax
  4f3d09:	mov    eax,DWORD PTR [esp+0x2c]
  4f3d0d:	mov    eax,DWORD PTR [eax]
  4f3d0f:	mov    DWORD PTR [esp+0xc],eax
  4f3d13:	mov    eax,DWORD PTR [esp+0x2b8]
  4f3d1a:	mov    DWORD PTR [esp+0x8],eax
  4f3d1e:	mov    DWORD PTR [esp],edi
  4f3d21:	mov    DWORD PTR [esp+0x4],0x0
  4f3d29:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3d2e:	mov    ecx,DWORD PTR [esp+0x34]
  4f3d32:	mov    eax,DWORD PTR [ecx]
  4f3d34:	mov    eax,DWORD PTR [eax+0x50]
  4f3d37:	mov    DWORD PTR [eax+0xf0],edi
  4f3d3d:	test   esi,esi
  4f3d3f:	je     4f7ccb
  4f3d45:	mov    eax,DWORD PTR [ecx]
  4f3d47:	mov    eax,DWORD PTR [eax+0x50]
  4f3d4a:	mov    eax,DWORD PTR [eax+0xf0]
  4f3d50:	mov    edi,ecx
  4f3d52:	mov    ecx,DWORD PTR [esp+0x38]
  4f3d56:	mov    ecx,DWORD PTR [ecx]
  4f3d58:	mov    DWORD PTR [esp+0xc],ecx
  4f3d5c:	mov    DWORD PTR [esp+0x8],eax
  4f3d60:	mov    DWORD PTR [esp],esi
  4f3d63:	mov    DWORD PTR [esp+0x4],0x48
  4f3d6b:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3d70:	mov    eax,DWORD PTR [ebp+0x8]
  4f3d73:	mov    eax,DWORD PTR [eax+0x14]
  4f3d76:	test   eax,eax
  4f3d78:	je     4f7ccb
  4f3d7e:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3d82:	mov    ecx,DWORD PTR [ecx]
  4f3d84:	mov    DWORD PTR [esp+0x8],ecx
  4f3d88:	mov    DWORD PTR [esp],eax
  4f3d8b:	mov    DWORD PTR [esp+0x4],0x4
  4f3d93:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3d98:	mov    esi,eax
  4f3d9a:	mov    eax,DWORD PTR [edi]
  4f3d9c:	mov    eax,DWORD PTR [eax+0x50]
  4f3d9f:	cmp    DWORD PTR [eax+0xf4],0x0
  4f3da6:	mov    ecx,edi
  4f3da8:	jne    4f3e05
  4f3daa:	lea    eax,[ebx+0x4b12c]
  4f3db0:	mov    eax,DWORD PTR [eax]
  4f3db2:	mov    DWORD PTR [esp+0x1c],eax
  4f3db6:	mov    eax,DWORD PTR [esp+0x30]
  4f3dba:	mov    eax,DWORD PTR [eax]
  4f3dbc:	mov    DWORD PTR [esp],eax
  4f3dbf:	call   20bfb2
  4f3dc4:	mov    edi,eax
  4f3dc6:	mov    eax,DWORD PTR [esp+0x1c]
  4f3dca:	mov    DWORD PTR [esp+0x2b0],eax
  4f3dd1:	mov    eax,DWORD PTR [esp+0x2c]
  4f3dd5:	mov    eax,DWORD PTR [eax]
  4f3dd7:	mov    DWORD PTR [esp+0xc],eax
  4f3ddb:	mov    eax,DWORD PTR [esp+0x2b0]
  4f3de2:	mov    DWORD PTR [esp+0x8],eax
  4f3de6:	mov    DWORD PTR [esp],edi
  4f3de9:	mov    DWORD PTR [esp+0x4],0x0
  4f3df1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3df6:	mov    ecx,DWORD PTR [esp+0x34]
  4f3dfa:	mov    eax,DWORD PTR [ecx]
  4f3dfc:	mov    eax,DWORD PTR [eax+0x50]
  4f3dff:	mov    DWORD PTR [eax+0xf4],edi
  4f3e05:	test   esi,esi
  4f3e07:	je     4f7ccb
  4f3e0d:	mov    eax,DWORD PTR [ecx]
  4f3e0f:	mov    eax,DWORD PTR [eax+0x50]
  4f3e12:	mov    eax,DWORD PTR [eax+0xf4]
  4f3e18:	mov    edi,ecx
  4f3e1a:	mov    ecx,DWORD PTR [esp+0x38]
  4f3e1e:	mov    ecx,DWORD PTR [ecx]
  4f3e20:	mov    DWORD PTR [esp+0xc],ecx
  4f3e24:	mov    DWORD PTR [esp+0x8],eax
  4f3e28:	mov    DWORD PTR [esp],esi
  4f3e2b:	mov    DWORD PTR [esp+0x4],0x49
  4f3e33:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3e38:	mov    eax,DWORD PTR [ebp+0x8]
  4f3e3b:	mov    eax,DWORD PTR [eax+0x14]
  4f3e3e:	test   eax,eax
  4f3e40:	je     4f7ccb
  4f3e46:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3e4a:	mov    ecx,DWORD PTR [ecx]
  4f3e4c:	mov    DWORD PTR [esp+0x8],ecx
  4f3e50:	mov    DWORD PTR [esp],eax
  4f3e53:	mov    DWORD PTR [esp+0x4],0x4
  4f3e5b:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3e60:	mov    esi,eax
  4f3e62:	mov    eax,DWORD PTR [edi]
  4f3e64:	mov    eax,DWORD PTR [eax+0x50]
  4f3e67:	cmp    DWORD PTR [eax+0xf8],0x0
  4f3e6e:	mov    ecx,edi
  4f3e70:	jne    4f3ecd
  4f3e72:	lea    eax,[ebx+0x4b130]
  4f3e78:	mov    eax,DWORD PTR [eax]
  4f3e7a:	mov    DWORD PTR [esp+0x1c],eax
  4f3e7e:	mov    eax,DWORD PTR [esp+0x30]
  4f3e82:	mov    eax,DWORD PTR [eax]
  4f3e84:	mov    DWORD PTR [esp],eax
  4f3e87:	call   20bfb2
  4f3e8c:	mov    edi,eax
  4f3e8e:	mov    eax,DWORD PTR [esp+0x1c]
  4f3e92:	mov    DWORD PTR [esp+0x2a8],eax
  4f3e99:	mov    eax,DWORD PTR [esp+0x2c]
  4f3e9d:	mov    eax,DWORD PTR [eax]
  4f3e9f:	mov    DWORD PTR [esp+0xc],eax
  4f3ea3:	mov    eax,DWORD PTR [esp+0x2a8]
  4f3eaa:	mov    DWORD PTR [esp+0x8],eax
  4f3eae:	mov    DWORD PTR [esp],edi
  4f3eb1:	mov    DWORD PTR [esp+0x4],0x0
  4f3eb9:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3ebe:	mov    ecx,DWORD PTR [esp+0x34]
  4f3ec2:	mov    eax,DWORD PTR [ecx]
  4f3ec4:	mov    eax,DWORD PTR [eax+0x50]
  4f3ec7:	mov    DWORD PTR [eax+0xf8],edi
  4f3ecd:	test   esi,esi
  4f3ecf:	je     4f7ccb
  4f3ed5:	mov    eax,DWORD PTR [ecx]
  4f3ed7:	mov    eax,DWORD PTR [eax+0x50]
  4f3eda:	mov    eax,DWORD PTR [eax+0xf8]
  4f3ee0:	mov    edi,ecx
  4f3ee2:	mov    ecx,DWORD PTR [esp+0x38]
  4f3ee6:	mov    ecx,DWORD PTR [ecx]
  4f3ee8:	mov    DWORD PTR [esp+0xc],ecx
  4f3eec:	mov    DWORD PTR [esp+0x8],eax
  4f3ef0:	mov    DWORD PTR [esp],esi
  4f3ef3:	mov    DWORD PTR [esp+0x4],0x4a
  4f3efb:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3f00:	mov    eax,DWORD PTR [ebp+0x8]
  4f3f03:	mov    eax,DWORD PTR [eax+0x14]
  4f3f06:	test   eax,eax
  4f3f08:	je     4f7ccb
  4f3f0e:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3f12:	mov    ecx,DWORD PTR [ecx]
  4f3f14:	mov    DWORD PTR [esp+0x8],ecx
  4f3f18:	mov    DWORD PTR [esp],eax
  4f3f1b:	mov    DWORD PTR [esp+0x4],0x4
  4f3f23:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3f28:	mov    esi,eax
  4f3f2a:	mov    eax,DWORD PTR [edi]
  4f3f2c:	mov    eax,DWORD PTR [eax+0x50]
  4f3f2f:	cmp    DWORD PTR [eax+0xfc],0x0
  4f3f36:	mov    ecx,edi
  4f3f38:	jne    4f3f95
  4f3f3a:	lea    eax,[ebx+0x4b134]
  4f3f40:	mov    eax,DWORD PTR [eax]
  4f3f42:	mov    DWORD PTR [esp+0x1c],eax
  4f3f46:	mov    eax,DWORD PTR [esp+0x30]
  4f3f4a:	mov    eax,DWORD PTR [eax]
  4f3f4c:	mov    DWORD PTR [esp],eax
  4f3f4f:	call   20bfb2
  4f3f54:	mov    edi,eax
  4f3f56:	mov    eax,DWORD PTR [esp+0x1c]
  4f3f5a:	mov    DWORD PTR [esp+0x2a0],eax
  4f3f61:	mov    eax,DWORD PTR [esp+0x2c]
  4f3f65:	mov    eax,DWORD PTR [eax]
  4f3f67:	mov    DWORD PTR [esp+0xc],eax
  4f3f6b:	mov    eax,DWORD PTR [esp+0x2a0]
  4f3f72:	mov    DWORD PTR [esp+0x8],eax
  4f3f76:	mov    DWORD PTR [esp],edi
  4f3f79:	mov    DWORD PTR [esp+0x4],0x0
  4f3f81:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f3f86:	mov    ecx,DWORD PTR [esp+0x34]
  4f3f8a:	mov    eax,DWORD PTR [ecx]
  4f3f8c:	mov    eax,DWORD PTR [eax+0x50]
  4f3f8f:	mov    DWORD PTR [eax+0xfc],edi
  4f3f95:	test   esi,esi
  4f3f97:	je     4f7ccb
  4f3f9d:	mov    eax,DWORD PTR [ecx]
  4f3f9f:	mov    eax,DWORD PTR [eax+0x50]
  4f3fa2:	mov    eax,DWORD PTR [eax+0xfc]
  4f3fa8:	mov    ecx,DWORD PTR [esp+0x38]
  4f3fac:	mov    ecx,DWORD PTR [ecx]
  4f3fae:	mov    DWORD PTR [esp+0xc],ecx
  4f3fb2:	mov    DWORD PTR [esp+0x8],eax
  4f3fb6:	mov    DWORD PTR [esp],esi
  4f3fb9:	mov    DWORD PTR [esp+0x4],0x8
  4f3fc1:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f3fc6:	mov    eax,DWORD PTR [ebp+0x8]
  4f3fc9:	mov    eax,DWORD PTR [eax+0x14]
  4f3fcc:	test   eax,eax
  4f3fce:	je     4f7ccb
  4f3fd4:	mov    ecx,DWORD PTR [esp+0x3c]
  4f3fd8:	mov    ecx,DWORD PTR [ecx]
  4f3fda:	mov    DWORD PTR [esp+0x8],ecx
  4f3fde:	mov    DWORD PTR [esp],eax
  4f3fe1:	mov    DWORD PTR [esp+0x4],0x4
  4f3fe9:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f3fee:	mov    DWORD PTR [esp+0x1c],eax
  4f3ff2:	lea    eax,[ebx+0x4b138]
  4f3ff8:	mov    esi,DWORD PTR [eax]
  4f3ffa:	mov    eax,DWORD PTR [esp+0x30]
  4f3ffe:	mov    eax,DWORD PTR [eax]
  4f4000:	mov    DWORD PTR [esp],eax
  4f4003:	call   20bfb2
  4f4008:	mov    edi,eax
  4f400a:	mov    DWORD PTR [esp+0x298],esi
  4f4011:	mov    eax,DWORD PTR [esp+0x2c]
  4f4015:	mov    eax,DWORD PTR [eax]
  4f4017:	mov    DWORD PTR [esp+0xc],eax
  4f401b:	mov    eax,DWORD PTR [esp+0x298]
  4f4022:	mov    DWORD PTR [esp+0x8],eax
  4f4026:	mov    esi,DWORD PTR [ebp+0x8]
  4f4029:	mov    DWORD PTR [esp+0x4],esi
  4f402d:	mov    DWORD PTR [esp],edi
  4f4030:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4035:	mov    ecx,DWORD PTR [esp+0x1c]
  4f4039:	test   ecx,ecx
  4f403b:	je     4f7ccb
  4f4041:	mov    eax,DWORD PTR [esp+0x38]
  4f4045:	mov    eax,DWORD PTR [eax]
  4f4047:	mov    DWORD PTR [esp+0xc],eax
  4f404b:	mov    DWORD PTR [esp+0x8],edi
  4f404f:	mov    DWORD PTR [esp],ecx
  4f4052:	mov    DWORD PTR [esp+0x4],0x24
  4f405a:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f405f:	mov    eax,DWORD PTR [esi+0x14]
  4f4062:	test   eax,eax
  4f4064:	je     4f7ccb
  4f406a:	mov    ecx,DWORD PTR [esp+0x3c]
  4f406e:	mov    ecx,DWORD PTR [ecx]
  4f4070:	mov    DWORD PTR [esp+0x8],ecx
  4f4074:	mov    DWORD PTR [esp],eax
  4f4077:	mov    DWORD PTR [esp+0x4],0x4
  4f407f:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4084:	mov    esi,eax
  4f4086:	mov    ecx,DWORD PTR [esp+0x34]
  4f408a:	mov    eax,DWORD PTR [ecx]
  4f408c:	mov    eax,DWORD PTR [eax+0x50]
  4f408f:	cmp    DWORD PTR [eax+0x100],0x0
  4f4096:	jne    4f40f3
  4f4098:	lea    eax,[ebx+0x4b13c]
  4f409e:	mov    eax,DWORD PTR [eax]
  4f40a0:	mov    DWORD PTR [esp+0x1c],eax
  4f40a4:	mov    eax,DWORD PTR [esp+0x30]
  4f40a8:	mov    eax,DWORD PTR [eax]
  4f40aa:	mov    DWORD PTR [esp],eax
  4f40ad:	call   20bfb2
  4f40b2:	mov    edi,eax
  4f40b4:	mov    eax,DWORD PTR [esp+0x1c]
  4f40b8:	mov    DWORD PTR [esp+0x290],eax
  4f40bf:	mov    eax,DWORD PTR [esp+0x2c]
  4f40c3:	mov    eax,DWORD PTR [eax]
  4f40c5:	mov    DWORD PTR [esp+0xc],eax
  4f40c9:	mov    eax,DWORD PTR [esp+0x290]
  4f40d0:	mov    DWORD PTR [esp+0x8],eax
  4f40d4:	mov    DWORD PTR [esp],edi
  4f40d7:	mov    DWORD PTR [esp+0x4],0x0
  4f40df:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f40e4:	mov    ecx,DWORD PTR [esp+0x34]
  4f40e8:	mov    eax,DWORD PTR [ecx]
  4f40ea:	mov    eax,DWORD PTR [eax+0x50]
  4f40ed:	mov    DWORD PTR [eax+0x100],edi
  4f40f3:	test   esi,esi
  4f40f5:	je     4f7ccb
  4f40fb:	mov    eax,DWORD PTR [ecx]
  4f40fd:	mov    eax,DWORD PTR [eax+0x50]
  4f4100:	mov    eax,DWORD PTR [eax+0x100]
  4f4106:	mov    edi,ecx
  4f4108:	mov    ecx,DWORD PTR [esp+0x38]
  4f410c:	mov    ecx,DWORD PTR [ecx]
  4f410e:	mov    DWORD PTR [esp+0xc],ecx
  4f4112:	mov    DWORD PTR [esp+0x8],eax
  4f4116:	mov    DWORD PTR [esp],esi
  4f4119:	mov    DWORD PTR [esp+0x4],0x13
  4f4121:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4126:	mov    eax,DWORD PTR [ebp+0x8]
  4f4129:	mov    eax,DWORD PTR [eax+0x14]
  4f412c:	test   eax,eax
  4f412e:	je     4f7ccb
  4f4134:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4138:	mov    ecx,DWORD PTR [ecx]
  4f413a:	mov    DWORD PTR [esp+0x8],ecx
  4f413e:	mov    DWORD PTR [esp],eax
  4f4141:	mov    DWORD PTR [esp+0x4],0x4
  4f4149:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f414e:	mov    esi,eax
  4f4150:	mov    eax,DWORD PTR [edi]
  4f4152:	mov    eax,DWORD PTR [eax+0x50]
  4f4155:	cmp    DWORD PTR [eax+0x104],0x0
  4f415c:	mov    ecx,edi
  4f415e:	jne    4f41bb
  4f4160:	lea    eax,[ebx+0x4b140]
  4f4166:	mov    eax,DWORD PTR [eax]
  4f4168:	mov    DWORD PTR [esp+0x1c],eax
  4f416c:	mov    eax,DWORD PTR [esp+0x30]
  4f4170:	mov    eax,DWORD PTR [eax]
  4f4172:	mov    DWORD PTR [esp],eax
  4f4175:	call   20bfb2
  4f417a:	mov    edi,eax
  4f417c:	mov    eax,DWORD PTR [esp+0x1c]
  4f4180:	mov    DWORD PTR [esp+0x288],eax
  4f4187:	mov    eax,DWORD PTR [esp+0x2c]
  4f418b:	mov    eax,DWORD PTR [eax]
  4f418d:	mov    DWORD PTR [esp+0xc],eax
  4f4191:	mov    eax,DWORD PTR [esp+0x288]
  4f4198:	mov    DWORD PTR [esp+0x8],eax
  4f419c:	mov    DWORD PTR [esp],edi
  4f419f:	mov    DWORD PTR [esp+0x4],0x0
  4f41a7:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f41ac:	mov    ecx,DWORD PTR [esp+0x34]
  4f41b0:	mov    eax,DWORD PTR [ecx]
  4f41b2:	mov    eax,DWORD PTR [eax+0x50]
  4f41b5:	mov    DWORD PTR [eax+0x104],edi
  4f41bb:	test   esi,esi
  4f41bd:	je     4f7ccb
  4f41c3:	mov    eax,DWORD PTR [ecx]
  4f41c5:	mov    eax,DWORD PTR [eax+0x50]
  4f41c8:	mov    eax,DWORD PTR [eax+0x104]
  4f41ce:	mov    edi,ecx
  4f41d0:	mov    ecx,DWORD PTR [esp+0x38]
  4f41d4:	mov    ecx,DWORD PTR [ecx]
  4f41d6:	mov    DWORD PTR [esp+0xc],ecx
  4f41da:	mov    DWORD PTR [esp+0x8],eax
  4f41de:	mov    DWORD PTR [esp],esi
  4f41e1:	mov    DWORD PTR [esp+0x4],0x45
  4f41e9:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f41ee:	mov    eax,DWORD PTR [ebp+0x8]
  4f41f1:	mov    eax,DWORD PTR [eax+0x14]
  4f41f4:	test   eax,eax
  4f41f6:	je     4f7ccb
  4f41fc:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4200:	mov    ecx,DWORD PTR [ecx]
  4f4202:	mov    DWORD PTR [esp+0x8],ecx
  4f4206:	mov    DWORD PTR [esp],eax
  4f4209:	mov    DWORD PTR [esp+0x4],0x4
  4f4211:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4216:	mov    esi,eax
  4f4218:	mov    eax,DWORD PTR [edi]
  4f421a:	mov    eax,DWORD PTR [eax+0x50]
  4f421d:	cmp    DWORD PTR [eax+0x108],0x0
  4f4224:	mov    ecx,edi
  4f4226:	jne    4f4283
  4f4228:	lea    eax,[ebx+0x4b144]
  4f422e:	mov    eax,DWORD PTR [eax]
  4f4230:	mov    DWORD PTR [esp+0x1c],eax
  4f4234:	mov    eax,DWORD PTR [esp+0x30]
  4f4238:	mov    eax,DWORD PTR [eax]
  4f423a:	mov    DWORD PTR [esp],eax
  4f423d:	call   20bfb2
  4f4242:	mov    edi,eax
  4f4244:	mov    eax,DWORD PTR [esp+0x1c]
  4f4248:	mov    DWORD PTR [esp+0x280],eax
  4f424f:	mov    eax,DWORD PTR [esp+0x2c]
  4f4253:	mov    eax,DWORD PTR [eax]
  4f4255:	mov    DWORD PTR [esp+0xc],eax
  4f4259:	mov    eax,DWORD PTR [esp+0x280]
  4f4260:	mov    DWORD PTR [esp+0x8],eax
  4f4264:	mov    DWORD PTR [esp],edi
  4f4267:	mov    DWORD PTR [esp+0x4],0x0
  4f426f:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4274:	mov    ecx,DWORD PTR [esp+0x34]
  4f4278:	mov    eax,DWORD PTR [ecx]
  4f427a:	mov    eax,DWORD PTR [eax+0x50]
  4f427d:	mov    DWORD PTR [eax+0x108],edi
  4f4283:	test   esi,esi
  4f4285:	je     4f7ccb
  4f428b:	mov    eax,DWORD PTR [ecx]
  4f428d:	mov    eax,DWORD PTR [eax+0x50]
  4f4290:	mov    eax,DWORD PTR [eax+0x108]
  4f4296:	mov    ecx,DWORD PTR [esp+0x38]
  4f429a:	mov    ecx,DWORD PTR [ecx]
  4f429c:	mov    DWORD PTR [esp+0xc],ecx
  4f42a0:	mov    DWORD PTR [esp+0x8],eax
  4f42a4:	mov    DWORD PTR [esp],esi
  4f42a7:	mov    DWORD PTR [esp+0x4],0x46
  4f42af:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f42b4:	mov    edi,DWORD PTR [ebp+0x8]
  4f42b7:	mov    eax,DWORD PTR [edi+0x14]
  4f42ba:	mov    DWORD PTR [esp+0x1c],eax
  4f42be:	mov    eax,DWORD PTR [esp+0x20]
  4f42c2:	mov    eax,DWORD PTR [eax]
  4f42c4:	mov    DWORD PTR [esp],eax
  4f42c7:	call   20bfb2
  4f42cc:	mov    esi,eax
  4f42ce:	mov    eax,DWORD PTR [esp+0x28]
  4f42d2:	mov    eax,DWORD PTR [eax]
  4f42d4:	mov    DWORD PTR [esp+0x4],eax
  4f42d8:	mov    DWORD PTR [esp],esi
  4f42db:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f42e0:	mov    ecx,DWORD PTR [esp+0x1c]
  4f42e4:	test   ecx,ecx
  4f42e6:	je     4f7ccb
  4f42ec:	mov    eax,DWORD PTR [esp+0x24]
  4f42f0:	mov    eax,DWORD PTR [eax]
  4f42f2:	mov    DWORD PTR [esp+0xc],eax
  4f42f6:	mov    DWORD PTR [esp+0x8],esi
  4f42fa:	mov    DWORD PTR [esp],ecx
  4f42fd:	mov    DWORD PTR [esp+0x4],0x11
  4f4305:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f430a:	mov    eax,DWORD PTR [edi+0x14]
  4f430d:	test   eax,eax
  4f430f:	je     4f7ccb
  4f4315:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4319:	mov    ecx,DWORD PTR [ecx]
  4f431b:	mov    DWORD PTR [esp+0x8],ecx
  4f431f:	mov    DWORD PTR [esp],eax
  4f4322:	mov    DWORD PTR [esp+0x4],0x11
  4f432a:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f432f:	mov    edx,eax
  4f4331:	mov    esi,DWORD PTR [esp+0x34]
  4f4335:	mov    eax,DWORD PTR [esi]
  4f4337:	mov    eax,DWORD PTR [eax+0x50]
  4f433a:	cmp    DWORD PTR [eax+0x10c],0x0
  4f4341:	jne    4f43a5
  4f4343:	lea    eax,[ebx+0x4b148]
  4f4349:	mov    eax,DWORD PTR [eax]
  4f434b:	mov    DWORD PTR [esp+0x1c],eax
  4f434f:	mov    eax,DWORD PTR [esp+0x30]
  4f4353:	mov    eax,DWORD PTR [eax]
  4f4355:	mov    DWORD PTR [esp],eax
  4f4358:	mov    esi,edx
  4f435a:	call   20bfb2
  4f435f:	mov    edi,eax
  4f4361:	mov    eax,DWORD PTR [esp+0x1c]
  4f4365:	mov    DWORD PTR [esp+0x278],eax
  4f436c:	mov    eax,DWORD PTR [esp+0x2c]
  4f4370:	mov    eax,DWORD PTR [eax]
  4f4372:	mov    DWORD PTR [esp+0xc],eax
  4f4376:	mov    eax,DWORD PTR [esp+0x278]
  4f437d:	mov    DWORD PTR [esp+0x8],eax
  4f4381:	mov    DWORD PTR [esp],edi
  4f4384:	mov    DWORD PTR [esp+0x4],0x0
  4f438c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4391:	mov    edx,esi
  4f4393:	mov    esi,DWORD PTR [esp+0x34]
  4f4397:	mov    eax,DWORD PTR [esi]
  4f4399:	mov    eax,DWORD PTR [eax+0x50]
  4f439c:	mov    DWORD PTR [eax+0x10c],edi
  4f43a2:	mov    edi,DWORD PTR [ebp+0x8]
  4f43a5:	test   edx,edx
  4f43a7:	je     4f7ccb
  4f43ad:	mov    eax,DWORD PTR [esi]
  4f43af:	mov    eax,DWORD PTR [eax+0x50]
  4f43b2:	mov    eax,DWORD PTR [eax+0x10c]
  4f43b8:	mov    ecx,DWORD PTR [esp+0x38]
  4f43bc:	mov    ecx,DWORD PTR [ecx]
  4f43be:	mov    DWORD PTR [esp+0xc],ecx
  4f43c2:	mov    DWORD PTR [esp+0x8],eax
  4f43c6:	mov    DWORD PTR [esp],edx
  4f43c9:	mov    DWORD PTR [esp+0x4],0x3f
  4f43d1:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f43d6:	mov    eax,DWORD PTR [edi+0x14]
  4f43d9:	test   eax,eax
  4f43db:	je     4f7ccb
  4f43e1:	mov    ecx,DWORD PTR [esp+0x3c]
  4f43e5:	mov    ecx,DWORD PTR [ecx]
  4f43e7:	mov    DWORD PTR [esp+0x8],ecx
  4f43eb:	mov    DWORD PTR [esp],eax
  4f43ee:	mov    DWORD PTR [esp+0x4],0x11
  4f43f6:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f43fb:	mov    edx,eax
  4f43fd:	mov    eax,DWORD PTR [esi]
  4f43ff:	mov    eax,DWORD PTR [eax+0x50]
  4f4402:	cmp    DWORD PTR [eax+0x110],0x0
  4f4409:	jne    4f446d
  4f440b:	lea    eax,[ebx+0x4b14c]
  4f4411:	mov    eax,DWORD PTR [eax]
  4f4413:	mov    DWORD PTR [esp+0x1c],eax
  4f4417:	mov    eax,DWORD PTR [esp+0x30]
  4f441b:	mov    eax,DWORD PTR [eax]
  4f441d:	mov    DWORD PTR [esp],eax
  4f4420:	mov    esi,edx
  4f4422:	call   20bfb2
  4f4427:	mov    edi,eax
  4f4429:	mov    eax,DWORD PTR [esp+0x1c]
  4f442d:	mov    DWORD PTR [esp+0x270],eax
  4f4434:	mov    eax,DWORD PTR [esp+0x2c]
  4f4438:	mov    eax,DWORD PTR [eax]
  4f443a:	mov    DWORD PTR [esp+0xc],eax
  4f443e:	mov    eax,DWORD PTR [esp+0x270]
  4f4445:	mov    DWORD PTR [esp+0x8],eax
  4f4449:	mov    DWORD PTR [esp],edi
  4f444c:	mov    DWORD PTR [esp+0x4],0x0
  4f4454:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4459:	mov    edx,esi
  4f445b:	mov    esi,DWORD PTR [esp+0x34]
  4f445f:	mov    eax,DWORD PTR [esi]
  4f4461:	mov    eax,DWORD PTR [eax+0x50]
  4f4464:	mov    DWORD PTR [eax+0x110],edi
  4f446a:	mov    edi,DWORD PTR [ebp+0x8]
  4f446d:	test   edx,edx
  4f446f:	je     4f7ccb
  4f4475:	mov    eax,DWORD PTR [esi]
  4f4477:	mov    eax,DWORD PTR [eax+0x50]
  4f447a:	mov    eax,DWORD PTR [eax+0x110]
  4f4480:	mov    ecx,DWORD PTR [esp+0x38]
  4f4484:	mov    ecx,DWORD PTR [ecx]
  4f4486:	mov    DWORD PTR [esp+0xc],ecx
  4f448a:	mov    DWORD PTR [esp+0x8],eax
  4f448e:	mov    DWORD PTR [esp],edx
  4f4491:	mov    DWORD PTR [esp+0x4],0x40
  4f4499:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f449e:	mov    eax,DWORD PTR [edi+0x14]
  4f44a1:	test   eax,eax
  4f44a3:	je     4f7ccb
  4f44a9:	mov    ecx,DWORD PTR [esp+0x3c]
  4f44ad:	mov    ecx,DWORD PTR [ecx]
  4f44af:	mov    DWORD PTR [esp+0x8],ecx
  4f44b3:	mov    DWORD PTR [esp],eax
  4f44b6:	mov    DWORD PTR [esp+0x4],0x11
  4f44be:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f44c3:	mov    edx,eax
  4f44c5:	mov    eax,DWORD PTR [esi]
  4f44c7:	mov    eax,DWORD PTR [eax+0x50]
  4f44ca:	cmp    DWORD PTR [eax+0x114],0x0
  4f44d1:	jne    4f4535
  4f44d3:	lea    eax,[ebx+0x4b150]
  4f44d9:	mov    eax,DWORD PTR [eax]
  4f44db:	mov    DWORD PTR [esp+0x1c],eax
  4f44df:	mov    eax,DWORD PTR [esp+0x30]
  4f44e3:	mov    eax,DWORD PTR [eax]
  4f44e5:	mov    DWORD PTR [esp],eax
  4f44e8:	mov    esi,edx
  4f44ea:	call   20bfb2
  4f44ef:	mov    edi,eax
  4f44f1:	mov    eax,DWORD PTR [esp+0x1c]
  4f44f5:	mov    DWORD PTR [esp+0x268],eax
  4f44fc:	mov    eax,DWORD PTR [esp+0x2c]
  4f4500:	mov    eax,DWORD PTR [eax]
  4f4502:	mov    DWORD PTR [esp+0xc],eax
  4f4506:	mov    eax,DWORD PTR [esp+0x268]
  4f450d:	mov    DWORD PTR [esp+0x8],eax
  4f4511:	mov    DWORD PTR [esp],edi
  4f4514:	mov    DWORD PTR [esp+0x4],0x0
  4f451c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4521:	mov    edx,esi
  4f4523:	mov    esi,DWORD PTR [esp+0x34]
  4f4527:	mov    eax,DWORD PTR [esi]
  4f4529:	mov    eax,DWORD PTR [eax+0x50]
  4f452c:	mov    DWORD PTR [eax+0x114],edi
  4f4532:	mov    edi,DWORD PTR [ebp+0x8]
  4f4535:	test   edx,edx
  4f4537:	je     4f7ccb
  4f453d:	mov    eax,DWORD PTR [esi]
  4f453f:	mov    eax,DWORD PTR [eax+0x50]
  4f4542:	mov    eax,DWORD PTR [eax+0x114]
  4f4548:	mov    ecx,DWORD PTR [esp+0x38]
  4f454c:	mov    ecx,DWORD PTR [ecx]
  4f454e:	mov    DWORD PTR [esp+0xc],ecx
  4f4552:	mov    DWORD PTR [esp+0x8],eax
  4f4556:	mov    DWORD PTR [esp],edx
  4f4559:	mov    DWORD PTR [esp+0x4],0x60
  4f4561:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4566:	mov    eax,DWORD PTR [edi+0x14]
  4f4569:	test   eax,eax
  4f456b:	je     4f7ccb
  4f4571:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4575:	mov    ecx,DWORD PTR [ecx]
  4f4577:	mov    DWORD PTR [esp+0x8],ecx
  4f457b:	mov    DWORD PTR [esp],eax
  4f457e:	mov    DWORD PTR [esp+0x4],0x11
  4f4586:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f458b:	mov    edx,eax
  4f458d:	mov    eax,DWORD PTR [esi]
  4f458f:	mov    eax,DWORD PTR [eax+0x50]
  4f4592:	cmp    DWORD PTR [eax+0x118],0x0
  4f4599:	jne    4f45fd
  4f459b:	lea    eax,[ebx+0x4b154]
  4f45a1:	mov    eax,DWORD PTR [eax]
  4f45a3:	mov    DWORD PTR [esp+0x1c],eax
  4f45a7:	mov    eax,DWORD PTR [esp+0x30]
  4f45ab:	mov    eax,DWORD PTR [eax]
  4f45ad:	mov    DWORD PTR [esp],eax
  4f45b0:	mov    esi,edx
  4f45b2:	call   20bfb2
  4f45b7:	mov    edi,eax
  4f45b9:	mov    eax,DWORD PTR [esp+0x1c]
  4f45bd:	mov    DWORD PTR [esp+0x260],eax
  4f45c4:	mov    eax,DWORD PTR [esp+0x2c]
  4f45c8:	mov    eax,DWORD PTR [eax]
  4f45ca:	mov    DWORD PTR [esp+0xc],eax
  4f45ce:	mov    eax,DWORD PTR [esp+0x260]
  4f45d5:	mov    DWORD PTR [esp+0x8],eax
  4f45d9:	mov    DWORD PTR [esp],edi
  4f45dc:	mov    DWORD PTR [esp+0x4],0x0
  4f45e4:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f45e9:	mov    edx,esi
  4f45eb:	mov    esi,DWORD PTR [esp+0x34]
  4f45ef:	mov    eax,DWORD PTR [esi]
  4f45f1:	mov    eax,DWORD PTR [eax+0x50]
  4f45f4:	mov    DWORD PTR [eax+0x118],edi
  4f45fa:	mov    edi,DWORD PTR [ebp+0x8]
  4f45fd:	test   edx,edx
  4f45ff:	je     4f7ccb
  4f4605:	mov    eax,DWORD PTR [esi]
  4f4607:	mov    eax,DWORD PTR [eax+0x50]
  4f460a:	mov    eax,DWORD PTR [eax+0x118]
  4f4610:	mov    ecx,DWORD PTR [esp+0x38]
  4f4614:	mov    ecx,DWORD PTR [ecx]
  4f4616:	mov    DWORD PTR [esp+0xc],ecx
  4f461a:	mov    DWORD PTR [esp+0x8],eax
  4f461e:	mov    DWORD PTR [esp],edx
  4f4621:	mov    DWORD PTR [esp+0x4],0x68
  4f4629:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f462e:	mov    eax,DWORD PTR [edi+0x14]
  4f4631:	mov    DWORD PTR [esp+0x1c],eax
  4f4635:	mov    eax,DWORD PTR [esp+0x20]
  4f4639:	mov    eax,DWORD PTR [eax]
  4f463b:	mov    DWORD PTR [esp],eax
  4f463e:	call   20bfb2
  4f4643:	mov    esi,eax
  4f4645:	mov    eax,DWORD PTR [esp+0x28]
  4f4649:	mov    eax,DWORD PTR [eax]
  4f464b:	mov    DWORD PTR [esp+0x4],eax
  4f464f:	mov    DWORD PTR [esp],esi
  4f4652:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f4657:	mov    ecx,DWORD PTR [esp+0x1c]
  4f465b:	test   ecx,ecx
  4f465d:	je     4f7ccb
  4f4663:	mov    eax,DWORD PTR [esp+0x24]
  4f4667:	mov    eax,DWORD PTR [eax]
  4f4669:	mov    DWORD PTR [esp+0xc],eax
  4f466d:	mov    DWORD PTR [esp+0x8],esi
  4f4671:	mov    DWORD PTR [esp],ecx
  4f4674:	mov    DWORD PTR [esp+0x4],0x17
  4f467c:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f4681:	mov    eax,DWORD PTR [edi+0x14]
  4f4684:	test   eax,eax
  4f4686:	je     4f7ccb
  4f468c:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4690:	mov    ecx,DWORD PTR [ecx]
  4f4692:	mov    DWORD PTR [esp+0x8],ecx
  4f4696:	mov    DWORD PTR [esp],eax
  4f4699:	mov    DWORD PTR [esp+0x4],0x17
  4f46a1:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f46a6:	mov    esi,eax
  4f46a8:	mov    ecx,DWORD PTR [esp+0x34]
  4f46ac:	mov    eax,DWORD PTR [ecx]
  4f46ae:	mov    eax,DWORD PTR [eax+0x50]
  4f46b1:	cmp    DWORD PTR [eax+0x11c],0x0
  4f46b8:	jne    4f4718
  4f46ba:	lea    eax,[ebx+0x4b158]
  4f46c0:	mov    eax,DWORD PTR [eax]
  4f46c2:	mov    DWORD PTR [esp+0x1c],eax
  4f46c6:	mov    eax,DWORD PTR [esp+0x30]
  4f46ca:	mov    eax,DWORD PTR [eax]
  4f46cc:	mov    DWORD PTR [esp],eax
  4f46cf:	call   20bfb2
  4f46d4:	mov    edi,eax
  4f46d6:	mov    eax,DWORD PTR [esp+0x1c]
  4f46da:	mov    DWORD PTR [esp+0x258],eax
  4f46e1:	mov    eax,DWORD PTR [esp+0x2c]
  4f46e5:	mov    eax,DWORD PTR [eax]
  4f46e7:	mov    DWORD PTR [esp+0xc],eax
  4f46eb:	mov    eax,DWORD PTR [esp+0x258]
  4f46f2:	mov    DWORD PTR [esp+0x8],eax
  4f46f6:	mov    DWORD PTR [esp],edi
  4f46f9:	mov    DWORD PTR [esp+0x4],0x0
  4f4701:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4706:	mov    ecx,DWORD PTR [esp+0x34]
  4f470a:	mov    eax,DWORD PTR [ecx]
  4f470c:	mov    eax,DWORD PTR [eax+0x50]
  4f470f:	mov    DWORD PTR [eax+0x11c],edi
  4f4715:	mov    edi,DWORD PTR [ebp+0x8]
  4f4718:	test   esi,esi
  4f471a:	je     4f7ccb
  4f4720:	mov    eax,DWORD PTR [ecx]
  4f4722:	mov    eax,DWORD PTR [eax+0x50]
  4f4725:	mov    eax,DWORD PTR [eax+0x11c]
  4f472b:	mov    ecx,DWORD PTR [esp+0x38]
  4f472f:	mov    ecx,DWORD PTR [ecx]
  4f4731:	mov    DWORD PTR [esp+0xc],ecx
  4f4735:	mov    DWORD PTR [esp+0x8],eax
  4f4739:	mov    DWORD PTR [esp],esi
  4f473c:	mov    DWORD PTR [esp+0x4],0x4b
  4f4744:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4749:	mov    eax,DWORD PTR [edi+0x14]
  4f474c:	mov    DWORD PTR [esp+0x1c],eax
  4f4750:	mov    eax,DWORD PTR [esp+0x20]
  4f4754:	mov    eax,DWORD PTR [eax]
  4f4756:	mov    DWORD PTR [esp],eax
  4f4759:	call   20bfb2
  4f475e:	mov    esi,eax
  4f4760:	mov    eax,DWORD PTR [esp+0x28]
  4f4764:	mov    eax,DWORD PTR [eax]
  4f4766:	mov    DWORD PTR [esp+0x4],eax
  4f476a:	mov    DWORD PTR [esp],esi
  4f476d:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f4772:	mov    ecx,DWORD PTR [esp+0x1c]
  4f4776:	test   ecx,ecx
  4f4778:	je     4f7ccb
  4f477e:	mov    eax,DWORD PTR [esp+0x24]
  4f4782:	mov    eax,DWORD PTR [eax]
  4f4784:	mov    DWORD PTR [esp+0xc],eax
  4f4788:	mov    DWORD PTR [esp+0x8],esi
  4f478c:	mov    DWORD PTR [esp],ecx
  4f478f:	mov    DWORD PTR [esp+0x4],0x28
  4f4797:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f479c:	mov    eax,DWORD PTR [edi+0x14]
  4f479f:	test   eax,eax
  4f47a1:	je     4f7ccb
  4f47a7:	mov    ecx,DWORD PTR [esp+0x3c]
  4f47ab:	mov    ecx,DWORD PTR [ecx]
  4f47ad:	mov    DWORD PTR [esp+0x8],ecx
  4f47b1:	mov    DWORD PTR [esp],eax
  4f47b4:	mov    DWORD PTR [esp+0x4],0x28
  4f47bc:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f47c1:	mov    edx,eax
  4f47c3:	mov    esi,DWORD PTR [esp+0x34]
  4f47c7:	mov    eax,DWORD PTR [esi]
  4f47c9:	mov    eax,DWORD PTR [eax+0x50]
  4f47cc:	cmp    DWORD PTR [eax+0x120],0x0
  4f47d3:	jne    4f4837
  4f47d5:	lea    eax,[ebx+0x4b15c]
  4f47db:	mov    eax,DWORD PTR [eax]
  4f47dd:	mov    DWORD PTR [esp+0x1c],eax
  4f47e1:	mov    eax,DWORD PTR [esp+0x30]
  4f47e5:	mov    eax,DWORD PTR [eax]
  4f47e7:	mov    DWORD PTR [esp],eax
  4f47ea:	mov    esi,edx
  4f47ec:	call   20bfb2
  4f47f1:	mov    edi,eax
  4f47f3:	mov    eax,DWORD PTR [esp+0x1c]
  4f47f7:	mov    DWORD PTR [esp+0x250],eax
  4f47fe:	mov    eax,DWORD PTR [esp+0x2c]
  4f4802:	mov    eax,DWORD PTR [eax]
  4f4804:	mov    DWORD PTR [esp+0xc],eax
  4f4808:	mov    eax,DWORD PTR [esp+0x250]
  4f480f:	mov    DWORD PTR [esp+0x8],eax
  4f4813:	mov    DWORD PTR [esp],edi
  4f4816:	mov    DWORD PTR [esp+0x4],0x0
  4f481e:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4823:	mov    edx,esi
  4f4825:	mov    esi,DWORD PTR [esp+0x34]
  4f4829:	mov    eax,DWORD PTR [esi]
  4f482b:	mov    eax,DWORD PTR [eax+0x50]
  4f482e:	mov    DWORD PTR [eax+0x120],edi
  4f4834:	mov    edi,DWORD PTR [ebp+0x8]
  4f4837:	test   edx,edx
  4f4839:	je     4f7ccb
  4f483f:	mov    eax,DWORD PTR [esi]
  4f4841:	mov    eax,DWORD PTR [eax+0x50]
  4f4844:	mov    eax,DWORD PTR [eax+0x120]
  4f484a:	mov    ecx,DWORD PTR [esp+0x38]
  4f484e:	mov    ecx,DWORD PTR [ecx]
  4f4850:	mov    DWORD PTR [esp+0xc],ecx
  4f4854:	mov    DWORD PTR [esp+0x8],eax
  4f4858:	mov    DWORD PTR [esp],edx
  4f485b:	mov    DWORD PTR [esp+0x4],0x6e
  4f4863:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4868:	mov    eax,DWORD PTR [edi+0x14]
  4f486b:	test   eax,eax
  4f486d:	je     4f7ccb
  4f4873:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4877:	mov    ecx,DWORD PTR [ecx]
  4f4879:	mov    DWORD PTR [esp+0x8],ecx
  4f487d:	mov    DWORD PTR [esp],eax
  4f4880:	mov    DWORD PTR [esp+0x4],0x28
  4f4888:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f488d:	mov    edx,eax
  4f488f:	mov    eax,DWORD PTR [esi]
  4f4891:	mov    eax,DWORD PTR [eax+0x50]
  4f4894:	cmp    DWORD PTR [eax+0x124],0x0
  4f489b:	jne    4f48ff
  4f489d:	lea    eax,[ebx+0x4b160]
  4f48a3:	mov    eax,DWORD PTR [eax]
  4f48a5:	mov    DWORD PTR [esp+0x1c],eax
  4f48a9:	mov    eax,DWORD PTR [esp+0x30]
  4f48ad:	mov    eax,DWORD PTR [eax]
  4f48af:	mov    DWORD PTR [esp],eax
  4f48b2:	mov    esi,edx
  4f48b4:	call   20bfb2
  4f48b9:	mov    edi,eax
  4f48bb:	mov    eax,DWORD PTR [esp+0x1c]
  4f48bf:	mov    DWORD PTR [esp+0x248],eax
  4f48c6:	mov    eax,DWORD PTR [esp+0x2c]
  4f48ca:	mov    eax,DWORD PTR [eax]
  4f48cc:	mov    DWORD PTR [esp+0xc],eax
  4f48d0:	mov    eax,DWORD PTR [esp+0x248]
  4f48d7:	mov    DWORD PTR [esp+0x8],eax
  4f48db:	mov    DWORD PTR [esp],edi
  4f48de:	mov    DWORD PTR [esp+0x4],0x0
  4f48e6:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f48eb:	mov    edx,esi
  4f48ed:	mov    esi,DWORD PTR [esp+0x34]
  4f48f1:	mov    eax,DWORD PTR [esi]
  4f48f3:	mov    eax,DWORD PTR [eax+0x50]
  4f48f6:	mov    DWORD PTR [eax+0x124],edi
  4f48fc:	mov    edi,DWORD PTR [ebp+0x8]
  4f48ff:	test   edx,edx
  4f4901:	je     4f7ccb
  4f4907:	mov    eax,DWORD PTR [esi]
  4f4909:	mov    eax,DWORD PTR [eax+0x50]
  4f490c:	mov    eax,DWORD PTR [eax+0x124]
  4f4912:	mov    ecx,DWORD PTR [esp+0x38]
  4f4916:	mov    ecx,DWORD PTR [ecx]
  4f4918:	mov    DWORD PTR [esp+0xc],ecx
  4f491c:	mov    DWORD PTR [esp+0x8],eax
  4f4920:	mov    DWORD PTR [esp],edx
  4f4923:	mov    DWORD PTR [esp+0x4],0x70
  4f492b:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4930:	mov    eax,DWORD PTR [edi+0x14]
  4f4933:	mov    DWORD PTR [esp+0x1c],eax
  4f4937:	mov    eax,DWORD PTR [esp+0x20]
  4f493b:	mov    eax,DWORD PTR [eax]
  4f493d:	mov    DWORD PTR [esp],eax
  4f4940:	call   20bfb2
  4f4945:	mov    esi,eax
  4f4947:	mov    eax,DWORD PTR [esp+0x28]
  4f494b:	mov    eax,DWORD PTR [eax]
  4f494d:	mov    DWORD PTR [esp+0x4],eax
  4f4951:	mov    DWORD PTR [esp],esi
  4f4954:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f4959:	mov    ecx,DWORD PTR [esp+0x1c]
  4f495d:	test   ecx,ecx
  4f495f:	je     4f7ccb
  4f4965:	mov    eax,DWORD PTR [esp+0x24]
  4f4969:	mov    eax,DWORD PTR [eax]
  4f496b:	mov    DWORD PTR [esp+0xc],eax
  4f496f:	mov    DWORD PTR [esp+0x8],esi
  4f4973:	mov    DWORD PTR [esp],ecx
  4f4976:	mov    DWORD PTR [esp+0x4],0xe
  4f497e:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f4983:	mov    eax,DWORD PTR [edi+0x14]
  4f4986:	test   eax,eax
  4f4988:	je     4f7ccb
  4f498e:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4992:	mov    ecx,DWORD PTR [ecx]
  4f4994:	mov    DWORD PTR [esp+0x8],ecx
  4f4998:	mov    DWORD PTR [esp],eax
  4f499b:	mov    DWORD PTR [esp+0x4],0xe
  4f49a3:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f49a8:	mov    edx,eax
  4f49aa:	mov    esi,DWORD PTR [esp+0x34]
  4f49ae:	mov    eax,DWORD PTR [esi]
  4f49b0:	mov    eax,DWORD PTR [eax+0x50]
  4f49b3:	cmp    DWORD PTR [eax+0x128],0x0
  4f49ba:	jne    4f4a1e
  4f49bc:	lea    eax,[ebx+0x4b164]
  4f49c2:	mov    eax,DWORD PTR [eax]
  4f49c4:	mov    DWORD PTR [esp+0x1c],eax
  4f49c8:	mov    eax,DWORD PTR [esp+0x30]
  4f49cc:	mov    eax,DWORD PTR [eax]
  4f49ce:	mov    DWORD PTR [esp],eax
  4f49d1:	mov    esi,edx
  4f49d3:	call   20bfb2
  4f49d8:	mov    edi,eax
  4f49da:	mov    eax,DWORD PTR [esp+0x1c]
  4f49de:	mov    DWORD PTR [esp+0x240],eax
  4f49e5:	mov    eax,DWORD PTR [esp+0x2c]
  4f49e9:	mov    eax,DWORD PTR [eax]
  4f49eb:	mov    DWORD PTR [esp+0xc],eax
  4f49ef:	mov    eax,DWORD PTR [esp+0x240]
  4f49f6:	mov    DWORD PTR [esp+0x8],eax
  4f49fa:	mov    DWORD PTR [esp],edi
  4f49fd:	mov    DWORD PTR [esp+0x4],0x0
  4f4a05:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4a0a:	mov    edx,esi
  4f4a0c:	mov    esi,DWORD PTR [esp+0x34]
  4f4a10:	mov    eax,DWORD PTR [esi]
  4f4a12:	mov    eax,DWORD PTR [eax+0x50]
  4f4a15:	mov    DWORD PTR [eax+0x128],edi
  4f4a1b:	mov    edi,DWORD PTR [ebp+0x8]
  4f4a1e:	test   edx,edx
  4f4a20:	je     4f7ccb
  4f4a26:	mov    eax,DWORD PTR [esi]
  4f4a28:	mov    eax,DWORD PTR [eax+0x50]
  4f4a2b:	mov    eax,DWORD PTR [eax+0x128]
  4f4a31:	mov    ecx,DWORD PTR [esp+0x38]
  4f4a35:	mov    ecx,DWORD PTR [ecx]
  4f4a37:	mov    DWORD PTR [esp+0xc],ecx
  4f4a3b:	mov    DWORD PTR [esp+0x8],eax
  4f4a3f:	mov    DWORD PTR [esp],edx
  4f4a42:	mov    DWORD PTR [esp+0x4],0x17
  4f4a4a:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4a4f:	mov    eax,DWORD PTR [edi+0x14]
  4f4a52:	test   eax,eax
  4f4a54:	je     4f7ccb
  4f4a5a:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4a5e:	mov    ecx,DWORD PTR [ecx]
  4f4a60:	mov    DWORD PTR [esp+0x8],ecx
  4f4a64:	mov    DWORD PTR [esp],eax
  4f4a67:	mov    DWORD PTR [esp+0x4],0xe
  4f4a6f:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4a74:	mov    edx,eax
  4f4a76:	mov    eax,DWORD PTR [esi]
  4f4a78:	mov    eax,DWORD PTR [eax+0x50]
  4f4a7b:	cmp    DWORD PTR [eax+0x12c],0x0
  4f4a82:	jne    4f4ae6
  4f4a84:	lea    eax,[ebx+0x4b168]
  4f4a8a:	mov    eax,DWORD PTR [eax]
  4f4a8c:	mov    DWORD PTR [esp+0x1c],eax
  4f4a90:	mov    eax,DWORD PTR [esp+0x30]
  4f4a94:	mov    eax,DWORD PTR [eax]
  4f4a96:	mov    DWORD PTR [esp],eax
  4f4a99:	mov    esi,edx
  4f4a9b:	call   20bfb2
  4f4aa0:	mov    edi,eax
  4f4aa2:	mov    eax,DWORD PTR [esp+0x1c]
  4f4aa6:	mov    DWORD PTR [esp+0x238],eax
  4f4aad:	mov    eax,DWORD PTR [esp+0x2c]
  4f4ab1:	mov    eax,DWORD PTR [eax]
  4f4ab3:	mov    DWORD PTR [esp+0xc],eax
  4f4ab7:	mov    eax,DWORD PTR [esp+0x238]
  4f4abe:	mov    DWORD PTR [esp+0x8],eax
  4f4ac2:	mov    DWORD PTR [esp],edi
  4f4ac5:	mov    DWORD PTR [esp+0x4],0x0
  4f4acd:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4ad2:	mov    edx,esi
  4f4ad4:	mov    esi,DWORD PTR [esp+0x34]
  4f4ad8:	mov    eax,DWORD PTR [esi]
  4f4ada:	mov    eax,DWORD PTR [eax+0x50]
  4f4add:	mov    DWORD PTR [eax+0x12c],edi
  4f4ae3:	mov    edi,DWORD PTR [ebp+0x8]
  4f4ae6:	test   edx,edx
  4f4ae8:	je     4f7ccb
  4f4aee:	mov    eax,DWORD PTR [esi]
  4f4af0:	mov    eax,DWORD PTR [eax+0x50]
  4f4af3:	mov    eax,DWORD PTR [eax+0x12c]
  4f4af9:	mov    ecx,DWORD PTR [esp+0x38]
  4f4afd:	mov    ecx,DWORD PTR [ecx]
  4f4aff:	mov    DWORD PTR [esp+0xc],ecx
  4f4b03:	mov    DWORD PTR [esp+0x8],eax
  4f4b07:	mov    DWORD PTR [esp],edx
  4f4b0a:	mov    DWORD PTR [esp+0x4],0x18
  4f4b12:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4b17:	mov    edi,DWORD PTR [edi+0x14]
  4f4b1a:	mov    eax,DWORD PTR [esp+0x20]
  4f4b1e:	mov    eax,DWORD PTR [eax]
  4f4b20:	mov    DWORD PTR [esp],eax
  4f4b23:	call   20bfb2
  4f4b28:	mov    esi,eax
  4f4b2a:	mov    eax,DWORD PTR [esp+0x28]
  4f4b2e:	mov    eax,DWORD PTR [eax]
  4f4b30:	mov    DWORD PTR [esp+0x4],eax
  4f4b34:	mov    DWORD PTR [esp],esi
  4f4b37:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f4b3c:	test   edi,edi
  4f4b3e:	je     4f7ccb
  4f4b44:	mov    eax,DWORD PTR [esp+0x24]
  4f4b48:	mov    eax,DWORD PTR [eax]
  4f4b4a:	mov    DWORD PTR [esp+0xc],eax
  4f4b4e:	mov    DWORD PTR [esp+0x8],esi
  4f4b52:	mov    DWORD PTR [esp],edi
  4f4b55:	mov    DWORD PTR [esp+0x4],0x7
  4f4b5d:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f4b62:	mov    eax,DWORD PTR [ebp+0x8]
  4f4b65:	mov    eax,DWORD PTR [eax+0x14]
  4f4b68:	test   eax,eax
  4f4b6a:	je     4f7ccb
  4f4b70:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4b74:	mov    ecx,DWORD PTR [ecx]
  4f4b76:	mov    DWORD PTR [esp+0x8],ecx
  4f4b7a:	mov    DWORD PTR [esp],eax
  4f4b7d:	mov    DWORD PTR [esp+0x4],0x7
  4f4b85:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4b8a:	mov    DWORD PTR [esp+0x1c],eax
  4f4b8e:	lea    eax,[ebx+0x4b16c]
  4f4b94:	mov    esi,DWORD PTR [eax]
  4f4b96:	mov    eax,DWORD PTR [esp+0x30]
  4f4b9a:	mov    eax,DWORD PTR [eax]
  4f4b9c:	mov    DWORD PTR [esp],eax
  4f4b9f:	call   20bfb2
  4f4ba4:	mov    edi,eax
  4f4ba6:	mov    DWORD PTR [esp+0x230],esi
  4f4bad:	mov    eax,DWORD PTR [esp+0x2c]
  4f4bb1:	mov    eax,DWORD PTR [eax]
  4f4bb3:	mov    DWORD PTR [esp+0xc],eax
  4f4bb7:	mov    eax,DWORD PTR [esp+0x230]
  4f4bbe:	mov    DWORD PTR [esp+0x8],eax
  4f4bc2:	mov    eax,DWORD PTR [ebp+0x8]
  4f4bc5:	mov    DWORD PTR [esp+0x4],eax
  4f4bc9:	mov    DWORD PTR [esp],edi
  4f4bcc:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4bd1:	mov    ecx,DWORD PTR [esp+0x1c]
  4f4bd5:	test   ecx,ecx
  4f4bd7:	je     4f7ccb
  4f4bdd:	mov    eax,DWORD PTR [esp+0x38]
  4f4be1:	mov    eax,DWORD PTR [eax]
  4f4be3:	mov    DWORD PTR [esp+0xc],eax
  4f4be7:	mov    DWORD PTR [esp+0x8],edi
  4f4beb:	mov    DWORD PTR [esp],ecx
  4f4bee:	mov    DWORD PTR [esp+0x4],0x1
  4f4bf6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4bfb:	mov    eax,DWORD PTR [ebp+0x8]
  4f4bfe:	mov    edi,DWORD PTR [eax+0x14]
  4f4c01:	mov    eax,DWORD PTR [esp+0x20]
  4f4c05:	mov    eax,DWORD PTR [eax]
  4f4c07:	mov    DWORD PTR [esp],eax
  4f4c0a:	call   20bfb2
  4f4c0f:	mov    esi,eax
  4f4c11:	mov    eax,DWORD PTR [esp+0x28]
  4f4c15:	mov    eax,DWORD PTR [eax]
  4f4c17:	mov    DWORD PTR [esp+0x4],eax
  4f4c1b:	mov    DWORD PTR [esp],esi
  4f4c1e:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f4c23:	test   edi,edi
  4f4c25:	je     4f7ccb
  4f4c2b:	mov    eax,DWORD PTR [esp+0x24]
  4f4c2f:	mov    eax,DWORD PTR [eax]
  4f4c31:	mov    DWORD PTR [esp+0xc],eax
  4f4c35:	mov    DWORD PTR [esp+0x8],esi
  4f4c39:	mov    DWORD PTR [esp],edi
  4f4c3c:	mov    DWORD PTR [esp+0x4],0x22
  4f4c44:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f4c49:	mov    eax,DWORD PTR [ebp+0x8]
  4f4c4c:	mov    ecx,eax
  4f4c4e:	mov    eax,DWORD PTR [ecx+0x14]
  4f4c51:	test   eax,eax
  4f4c53:	mov    edi,ecx
  4f4c55:	je     4f7ccb
  4f4c5b:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4c5f:	mov    ecx,DWORD PTR [ecx]
  4f4c61:	mov    DWORD PTR [esp+0x8],ecx
  4f4c65:	mov    DWORD PTR [esp],eax
  4f4c68:	mov    DWORD PTR [esp+0x4],0x22
  4f4c70:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4c75:	mov    esi,eax
  4f4c77:	mov    ecx,DWORD PTR [esp+0x34]
  4f4c7b:	mov    eax,DWORD PTR [ecx]
  4f4c7d:	mov    eax,DWORD PTR [eax+0x50]
  4f4c80:	cmp    DWORD PTR [eax+0x130],0x0
  4f4c87:	jne    4f4ce7
  4f4c89:	lea    eax,[ebx+0x4b170]
  4f4c8f:	mov    eax,DWORD PTR [eax]
  4f4c91:	mov    DWORD PTR [esp+0x1c],eax
  4f4c95:	mov    eax,DWORD PTR [esp+0x30]
  4f4c99:	mov    eax,DWORD PTR [eax]
  4f4c9b:	mov    DWORD PTR [esp],eax
  4f4c9e:	call   20bfb2
  4f4ca3:	mov    edi,eax
  4f4ca5:	mov    eax,DWORD PTR [esp+0x1c]
  4f4ca9:	mov    DWORD PTR [esp+0x228],eax
  4f4cb0:	mov    eax,DWORD PTR [esp+0x2c]
  4f4cb4:	mov    eax,DWORD PTR [eax]
  4f4cb6:	mov    DWORD PTR [esp+0xc],eax
  4f4cba:	mov    eax,DWORD PTR [esp+0x228]
  4f4cc1:	mov    DWORD PTR [esp+0x8],eax
  4f4cc5:	mov    DWORD PTR [esp],edi
  4f4cc8:	mov    DWORD PTR [esp+0x4],0x0
  4f4cd0:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4cd5:	mov    ecx,DWORD PTR [esp+0x34]
  4f4cd9:	mov    eax,DWORD PTR [ecx]
  4f4cdb:	mov    eax,DWORD PTR [eax+0x50]
  4f4cde:	mov    DWORD PTR [eax+0x130],edi
  4f4ce4:	mov    edi,DWORD PTR [ebp+0x8]
  4f4ce7:	test   esi,esi
  4f4ce9:	je     4f7ccb
  4f4cef:	mov    eax,DWORD PTR [ecx]
  4f4cf1:	mov    DWORD PTR [esp+0x34],ecx
  4f4cf5:	mov    eax,DWORD PTR [eax+0x50]
  4f4cf8:	mov    eax,DWORD PTR [eax+0x130]
  4f4cfe:	mov    ecx,DWORD PTR [esp+0x38]
  4f4d02:	mov    ecx,DWORD PTR [ecx]
  4f4d04:	mov    DWORD PTR [esp+0xc],ecx
  4f4d08:	mov    DWORD PTR [esp+0x8],eax
  4f4d0c:	mov    DWORD PTR [esp],esi
  4f4d0f:	mov    DWORD PTR [esp+0x4],0x4e
  4f4d17:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4d1c:	mov    edi,DWORD PTR [edi+0x14]
  4f4d1f:	mov    eax,DWORD PTR [esp+0x20]
  4f4d23:	mov    eax,DWORD PTR [eax]
  4f4d25:	mov    DWORD PTR [esp],eax
  4f4d28:	call   20bfb2
  4f4d2d:	mov    esi,eax
  4f4d2f:	mov    eax,DWORD PTR [esp+0x28]
  4f4d33:	mov    eax,DWORD PTR [eax]
  4f4d35:	mov    DWORD PTR [esp+0x4],eax
  4f4d39:	mov    DWORD PTR [esp],esi
  4f4d3c:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f4d41:	test   edi,edi
  4f4d43:	je     4f7ccb
  4f4d49:	mov    eax,DWORD PTR [esp+0x24]
  4f4d4d:	mov    eax,DWORD PTR [eax]
  4f4d4f:	mov    DWORD PTR [esp+0xc],eax
  4f4d53:	mov    DWORD PTR [esp+0x8],esi
  4f4d57:	mov    DWORD PTR [esp],edi
  4f4d5a:	mov    DWORD PTR [esp+0x4],0x8
  4f4d62:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f4d67:	mov    eax,DWORD PTR [ebp+0x8]
  4f4d6a:	mov    eax,DWORD PTR [eax+0x14]
  4f4d6d:	test   eax,eax
  4f4d6f:	je     4f7ccb
  4f4d75:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4d79:	mov    ecx,DWORD PTR [ecx]
  4f4d7b:	mov    DWORD PTR [esp+0x8],ecx
  4f4d7f:	mov    DWORD PTR [esp],eax
  4f4d82:	mov    DWORD PTR [esp+0x4],0x8
  4f4d8a:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4d8f:	mov    DWORD PTR [esp+0x1c],eax
  4f4d93:	lea    eax,[ebx+0x4b174]
  4f4d99:	mov    esi,DWORD PTR [eax]
  4f4d9b:	mov    eax,DWORD PTR [esp+0x30]
  4f4d9f:	mov    eax,DWORD PTR [eax]
  4f4da1:	mov    DWORD PTR [esp],eax
  4f4da4:	call   20bfb2
  4f4da9:	mov    edi,eax
  4f4dab:	mov    DWORD PTR [esp+0x220],esi
  4f4db2:	mov    eax,DWORD PTR [esp+0x2c]
  4f4db6:	mov    eax,DWORD PTR [eax]
  4f4db8:	mov    DWORD PTR [esp+0xc],eax
  4f4dbc:	mov    eax,DWORD PTR [esp+0x220]
  4f4dc3:	mov    DWORD PTR [esp+0x8],eax
  4f4dc7:	mov    eax,DWORD PTR [ebp+0x8]
  4f4dca:	mov    DWORD PTR [esp+0x4],eax
  4f4dce:	mov    DWORD PTR [esp],edi
  4f4dd1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4dd6:	mov    ecx,DWORD PTR [esp+0x1c]
  4f4dda:	test   ecx,ecx
  4f4ddc:	je     4f7ccb
  4f4de2:	mov    eax,DWORD PTR [esp+0x38]
  4f4de6:	mov    eax,DWORD PTR [eax]
  4f4de8:	mov    DWORD PTR [esp+0xc],eax
  4f4dec:	mov    DWORD PTR [esp+0x8],edi
  4f4df0:	mov    DWORD PTR [esp],ecx
  4f4df3:	mov    DWORD PTR [esp+0x4],0x2
  4f4dfb:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4e00:	mov    eax,DWORD PTR [ebp+0x8]
  4f4e03:	mov    eax,DWORD PTR [eax+0x14]
  4f4e06:	test   eax,eax
  4f4e08:	je     4f7ccb
  4f4e0e:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4e12:	mov    ecx,DWORD PTR [ecx]
  4f4e14:	mov    DWORD PTR [esp+0x8],ecx
  4f4e18:	mov    DWORD PTR [esp],eax
  4f4e1b:	mov    DWORD PTR [esp+0x4],0x8
  4f4e23:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4e28:	mov    DWORD PTR [esp+0x1c],eax
  4f4e2c:	lea    eax,[ebx+0x4b178]
  4f4e32:	mov    esi,DWORD PTR [eax]
  4f4e34:	mov    eax,DWORD PTR [esp+0x30]
  4f4e38:	mov    eax,DWORD PTR [eax]
  4f4e3a:	mov    DWORD PTR [esp],eax
  4f4e3d:	call   20bfb2
  4f4e42:	mov    edi,eax
  4f4e44:	mov    DWORD PTR [esp+0x218],esi
  4f4e4b:	mov    eax,DWORD PTR [esp+0x2c]
  4f4e4f:	mov    eax,DWORD PTR [eax]
  4f4e51:	mov    DWORD PTR [esp+0xc],eax
  4f4e55:	mov    eax,DWORD PTR [esp+0x218]
  4f4e5c:	mov    DWORD PTR [esp+0x8],eax
  4f4e60:	mov    eax,DWORD PTR [ebp+0x8]
  4f4e63:	mov    DWORD PTR [esp+0x4],eax
  4f4e67:	mov    DWORD PTR [esp],edi
  4f4e6a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4e6f:	mov    ecx,DWORD PTR [esp+0x1c]
  4f4e73:	test   ecx,ecx
  4f4e75:	je     4f7ccb
  4f4e7b:	mov    eax,DWORD PTR [esp+0x38]
  4f4e7f:	mov    eax,DWORD PTR [eax]
  4f4e81:	mov    DWORD PTR [esp+0xc],eax
  4f4e85:	mov    DWORD PTR [esp+0x8],edi
  4f4e89:	mov    DWORD PTR [esp],ecx
  4f4e8c:	mov    DWORD PTR [esp+0x4],0x50
  4f4e94:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4e99:	mov    eax,DWORD PTR [ebp+0x8]
  4f4e9c:	mov    eax,DWORD PTR [eax+0x14]
  4f4e9f:	test   eax,eax
  4f4ea1:	je     4f7ccb
  4f4ea7:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4eab:	mov    ecx,DWORD PTR [ecx]
  4f4ead:	mov    DWORD PTR [esp+0x8],ecx
  4f4eb1:	mov    DWORD PTR [esp],eax
  4f4eb4:	mov    DWORD PTR [esp+0x4],0x8
  4f4ebc:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4ec1:	mov    DWORD PTR [esp+0x1c],eax
  4f4ec5:	lea    eax,[ebx+0x4b17c]
  4f4ecb:	mov    esi,DWORD PTR [eax]
  4f4ecd:	mov    eax,DWORD PTR [esp+0x30]
  4f4ed1:	mov    eax,DWORD PTR [eax]
  4f4ed3:	mov    DWORD PTR [esp],eax
  4f4ed6:	call   20bfb2
  4f4edb:	mov    edi,eax
  4f4edd:	mov    DWORD PTR [esp+0x210],esi
  4f4ee4:	mov    eax,DWORD PTR [esp+0x2c]
  4f4ee8:	mov    eax,DWORD PTR [eax]
  4f4eea:	mov    DWORD PTR [esp+0xc],eax
  4f4eee:	mov    eax,DWORD PTR [esp+0x210]
  4f4ef5:	mov    DWORD PTR [esp+0x8],eax
  4f4ef9:	mov    eax,DWORD PTR [ebp+0x8]
  4f4efc:	mov    DWORD PTR [esp+0x4],eax
  4f4f00:	mov    DWORD PTR [esp],edi
  4f4f03:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4f08:	mov    ecx,DWORD PTR [esp+0x1c]
  4f4f0c:	test   ecx,ecx
  4f4f0e:	je     4f7ccb
  4f4f14:	mov    eax,DWORD PTR [esp+0x38]
  4f4f18:	mov    eax,DWORD PTR [eax]
  4f4f1a:	mov    DWORD PTR [esp+0xc],eax
  4f4f1e:	mov    DWORD PTR [esp+0x8],edi
  4f4f22:	mov    DWORD PTR [esp],ecx
  4f4f25:	mov    DWORD PTR [esp+0x4],0x5f
  4f4f2d:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4f32:	mov    eax,DWORD PTR [ebp+0x8]
  4f4f35:	mov    eax,DWORD PTR [eax+0x14]
  4f4f38:	test   eax,eax
  4f4f3a:	je     4f7ccb
  4f4f40:	mov    ecx,DWORD PTR [esp+0x3c]
  4f4f44:	mov    ecx,DWORD PTR [ecx]
  4f4f46:	mov    DWORD PTR [esp+0x8],ecx
  4f4f4a:	mov    DWORD PTR [esp],eax
  4f4f4d:	mov    DWORD PTR [esp+0x4],0x8
  4f4f55:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f4f5a:	mov    DWORD PTR [esp+0x1c],eax
  4f4f5e:	lea    eax,[ebx+0x4b180]
  4f4f64:	mov    esi,DWORD PTR [eax]
  4f4f66:	mov    eax,DWORD PTR [esp+0x30]
  4f4f6a:	mov    eax,DWORD PTR [eax]
  4f4f6c:	mov    DWORD PTR [esp],eax
  4f4f6f:	call   20bfb2
  4f4f74:	mov    edi,eax
  4f4f76:	mov    DWORD PTR [esp+0x208],esi
  4f4f7d:	mov    eax,DWORD PTR [esp+0x2c]
  4f4f81:	mov    eax,DWORD PTR [eax]
  4f4f83:	mov    DWORD PTR [esp+0xc],eax
  4f4f87:	mov    eax,DWORD PTR [esp+0x208]
  4f4f8e:	mov    DWORD PTR [esp+0x8],eax
  4f4f92:	mov    eax,DWORD PTR [ebp+0x8]
  4f4f95:	mov    DWORD PTR [esp+0x4],eax
  4f4f99:	mov    DWORD PTR [esp],edi
  4f4f9c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f4fa1:	mov    ecx,DWORD PTR [esp+0x1c]
  4f4fa5:	test   ecx,ecx
  4f4fa7:	je     4f7ccb
  4f4fad:	mov    eax,DWORD PTR [esp+0x38]
  4f4fb1:	mov    eax,DWORD PTR [eax]
  4f4fb3:	mov    DWORD PTR [esp+0xc],eax
  4f4fb7:	mov    DWORD PTR [esp+0x8],edi
  4f4fbb:	mov    DWORD PTR [esp],ecx
  4f4fbe:	mov    DWORD PTR [esp+0x4],0x5c
  4f4fc6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f4fcb:	mov    eax,DWORD PTR [ebp+0x8]
  4f4fce:	mov    edi,DWORD PTR [eax+0x14]
  4f4fd1:	mov    eax,DWORD PTR [esp+0x20]
  4f4fd5:	mov    eax,DWORD PTR [eax]
  4f4fd7:	mov    DWORD PTR [esp],eax
  4f4fda:	call   20bfb2
  4f4fdf:	mov    esi,eax
  4f4fe1:	mov    eax,DWORD PTR [esp+0x28]
  4f4fe5:	mov    eax,DWORD PTR [eax]
  4f4fe7:	mov    DWORD PTR [esp+0x4],eax
  4f4feb:	mov    DWORD PTR [esp],esi
  4f4fee:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f4ff3:	test   edi,edi
  4f4ff5:	je     4f7ccb
  4f4ffb:	mov    eax,DWORD PTR [esp+0x24]
  4f4fff:	mov    eax,DWORD PTR [eax]
  4f5001:	mov    DWORD PTR [esp+0xc],eax
  4f5005:	mov    DWORD PTR [esp+0x8],esi
  4f5009:	mov    DWORD PTR [esp],edi
  4f500c:	mov    DWORD PTR [esp+0x4],0x2
  4f5014:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f5019:	mov    eax,DWORD PTR [ebp+0x8]
  4f501c:	mov    eax,DWORD PTR [eax+0x14]
  4f501f:	test   eax,eax
  4f5021:	je     4f7ccb
  4f5027:	mov    ecx,DWORD PTR [esp+0x3c]
  4f502b:	mov    ecx,DWORD PTR [ecx]
  4f502d:	mov    DWORD PTR [esp+0x8],ecx
  4f5031:	mov    DWORD PTR [esp],eax
  4f5034:	mov    DWORD PTR [esp+0x4],0x2
  4f503c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5041:	mov    esi,eax
  4f5043:	mov    ecx,DWORD PTR [esp+0x34]
  4f5047:	mov    eax,DWORD PTR [ecx]
  4f5049:	mov    eax,DWORD PTR [eax+0x50]
  4f504c:	cmp    DWORD PTR [eax+0x134],0x0
  4f5053:	jne    4f50b0
  4f5055:	lea    eax,[ebx+0x4b184]
  4f505b:	mov    eax,DWORD PTR [eax]
  4f505d:	mov    DWORD PTR [esp+0x1c],eax
  4f5061:	mov    eax,DWORD PTR [esp+0x30]
  4f5065:	mov    eax,DWORD PTR [eax]
  4f5067:	mov    DWORD PTR [esp],eax
  4f506a:	call   20bfb2
  4f506f:	mov    edi,eax
  4f5071:	mov    eax,DWORD PTR [esp+0x1c]
  4f5075:	mov    DWORD PTR [esp+0x200],eax
  4f507c:	mov    eax,DWORD PTR [esp+0x2c]
  4f5080:	mov    eax,DWORD PTR [eax]
  4f5082:	mov    DWORD PTR [esp+0xc],eax
  4f5086:	mov    eax,DWORD PTR [esp+0x200]
  4f508d:	mov    DWORD PTR [esp+0x8],eax
  4f5091:	mov    DWORD PTR [esp],edi
  4f5094:	mov    DWORD PTR [esp+0x4],0x0
  4f509c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f50a1:	mov    ecx,DWORD PTR [esp+0x34]
  4f50a5:	mov    eax,DWORD PTR [ecx]
  4f50a7:	mov    eax,DWORD PTR [eax+0x50]
  4f50aa:	mov    DWORD PTR [eax+0x134],edi
  4f50b0:	test   esi,esi
  4f50b2:	je     4f7ccb
  4f50b8:	mov    eax,DWORD PTR [ecx]
  4f50ba:	mov    eax,DWORD PTR [eax+0x50]
  4f50bd:	mov    eax,DWORD PTR [eax+0x134]
  4f50c3:	mov    edi,ecx
  4f50c5:	mov    ecx,DWORD PTR [esp+0x38]
  4f50c9:	mov    ecx,DWORD PTR [ecx]
  4f50cb:	mov    DWORD PTR [esp+0xc],ecx
  4f50cf:	mov    DWORD PTR [esp+0x8],eax
  4f50d3:	mov    DWORD PTR [esp],esi
  4f50d6:	mov    DWORD PTR [esp+0x4],0x22
  4f50de:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f50e3:	mov    eax,DWORD PTR [ebp+0x8]
  4f50e6:	mov    eax,DWORD PTR [eax+0x14]
  4f50e9:	test   eax,eax
  4f50eb:	je     4f7ccb
  4f50f1:	mov    ecx,DWORD PTR [esp+0x3c]
  4f50f5:	mov    ecx,DWORD PTR [ecx]
  4f50f7:	mov    DWORD PTR [esp+0x8],ecx
  4f50fb:	mov    DWORD PTR [esp],eax
  4f50fe:	mov    DWORD PTR [esp+0x4],0x2
  4f5106:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f510b:	mov    esi,eax
  4f510d:	mov    eax,DWORD PTR [edi]
  4f510f:	mov    eax,DWORD PTR [eax+0x50]
  4f5112:	cmp    DWORD PTR [eax+0x138],0x0
  4f5119:	mov    ecx,edi
  4f511b:	jne    4f5178
  4f511d:	lea    eax,[ebx+0x4b188]
  4f5123:	mov    eax,DWORD PTR [eax]
  4f5125:	mov    DWORD PTR [esp+0x1c],eax
  4f5129:	mov    eax,DWORD PTR [esp+0x30]
  4f512d:	mov    eax,DWORD PTR [eax]
  4f512f:	mov    DWORD PTR [esp],eax
  4f5132:	call   20bfb2
  4f5137:	mov    edi,eax
  4f5139:	mov    eax,DWORD PTR [esp+0x1c]
  4f513d:	mov    DWORD PTR [esp+0x1f8],eax
  4f5144:	mov    eax,DWORD PTR [esp+0x2c]
  4f5148:	mov    eax,DWORD PTR [eax]
  4f514a:	mov    DWORD PTR [esp+0xc],eax
  4f514e:	mov    eax,DWORD PTR [esp+0x1f8]
  4f5155:	mov    DWORD PTR [esp+0x8],eax
  4f5159:	mov    DWORD PTR [esp],edi
  4f515c:	mov    DWORD PTR [esp+0x4],0x0
  4f5164:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5169:	mov    ecx,DWORD PTR [esp+0x34]
  4f516d:	mov    eax,DWORD PTR [ecx]
  4f516f:	mov    eax,DWORD PTR [eax+0x50]
  4f5172:	mov    DWORD PTR [eax+0x138],edi
  4f5178:	test   esi,esi
  4f517a:	je     4f7ccb
  4f5180:	mov    eax,DWORD PTR [ecx]
  4f5182:	mov    eax,DWORD PTR [eax+0x50]
  4f5185:	mov    eax,DWORD PTR [eax+0x138]
  4f518b:	mov    edi,ecx
  4f518d:	mov    ecx,DWORD PTR [esp+0x38]
  4f5191:	mov    ecx,DWORD PTR [ecx]
  4f5193:	mov    DWORD PTR [esp+0xc],ecx
  4f5197:	mov    DWORD PTR [esp+0x8],eax
  4f519b:	mov    DWORD PTR [esp],esi
  4f519e:	mov    DWORD PTR [esp+0x4],0x10
  4f51a6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f51ab:	mov    eax,DWORD PTR [ebp+0x8]
  4f51ae:	mov    eax,DWORD PTR [eax+0x14]
  4f51b1:	test   eax,eax
  4f51b3:	je     4f7ccb
  4f51b9:	mov    ecx,DWORD PTR [esp+0x3c]
  4f51bd:	mov    ecx,DWORD PTR [ecx]
  4f51bf:	mov    DWORD PTR [esp+0x8],ecx
  4f51c3:	mov    DWORD PTR [esp],eax
  4f51c6:	mov    DWORD PTR [esp+0x4],0x2
  4f51ce:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f51d3:	mov    esi,eax
  4f51d5:	mov    eax,DWORD PTR [edi]
  4f51d7:	mov    eax,DWORD PTR [eax+0x50]
  4f51da:	cmp    DWORD PTR [eax+0x13c],0x0
  4f51e1:	mov    ecx,edi
  4f51e3:	jne    4f5240
  4f51e5:	lea    eax,[ebx+0x4b18c]
  4f51eb:	mov    eax,DWORD PTR [eax]
  4f51ed:	mov    DWORD PTR [esp+0x1c],eax
  4f51f1:	mov    eax,DWORD PTR [esp+0x30]
  4f51f5:	mov    eax,DWORD PTR [eax]
  4f51f7:	mov    DWORD PTR [esp],eax
  4f51fa:	call   20bfb2
  4f51ff:	mov    edi,eax
  4f5201:	mov    eax,DWORD PTR [esp+0x1c]
  4f5205:	mov    DWORD PTR [esp+0x1f0],eax
  4f520c:	mov    eax,DWORD PTR [esp+0x2c]
  4f5210:	mov    eax,DWORD PTR [eax]
  4f5212:	mov    DWORD PTR [esp+0xc],eax
  4f5216:	mov    eax,DWORD PTR [esp+0x1f0]
  4f521d:	mov    DWORD PTR [esp+0x8],eax
  4f5221:	mov    DWORD PTR [esp],edi
  4f5224:	mov    DWORD PTR [esp+0x4],0x0
  4f522c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5231:	mov    ecx,DWORD PTR [esp+0x34]
  4f5235:	mov    eax,DWORD PTR [ecx]
  4f5237:	mov    eax,DWORD PTR [eax+0x50]
  4f523a:	mov    DWORD PTR [eax+0x13c],edi
  4f5240:	test   esi,esi
  4f5242:	je     4f7ccb
  4f5248:	mov    eax,DWORD PTR [ecx]
  4f524a:	mov    eax,DWORD PTR [eax+0x50]
  4f524d:	mov    eax,DWORD PTR [eax+0x13c]
  4f5253:	mov    edi,ecx
  4f5255:	mov    ecx,DWORD PTR [esp+0x38]
  4f5259:	mov    ecx,DWORD PTR [ecx]
  4f525b:	mov    DWORD PTR [esp+0xc],ecx
  4f525f:	mov    DWORD PTR [esp+0x8],eax
  4f5263:	mov    DWORD PTR [esp],esi
  4f5266:	mov    DWORD PTR [esp+0x4],0xa
  4f526e:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5273:	mov    eax,DWORD PTR [ebp+0x8]
  4f5276:	mov    eax,DWORD PTR [eax+0x14]
  4f5279:	test   eax,eax
  4f527b:	je     4f7ccb
  4f5281:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5285:	mov    ecx,DWORD PTR [ecx]
  4f5287:	mov    DWORD PTR [esp+0x8],ecx
  4f528b:	mov    DWORD PTR [esp],eax
  4f528e:	mov    DWORD PTR [esp+0x4],0x2
  4f5296:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f529b:	mov    esi,eax
  4f529d:	mov    eax,DWORD PTR [edi]
  4f529f:	mov    eax,DWORD PTR [eax+0x50]
  4f52a2:	cmp    DWORD PTR [eax+0x140],0x0
  4f52a9:	mov    ecx,edi
  4f52ab:	jne    4f5308
  4f52ad:	lea    eax,[ebx+0x4b190]
  4f52b3:	mov    eax,DWORD PTR [eax]
  4f52b5:	mov    DWORD PTR [esp+0x1c],eax
  4f52b9:	mov    eax,DWORD PTR [esp+0x30]
  4f52bd:	mov    eax,DWORD PTR [eax]
  4f52bf:	mov    DWORD PTR [esp],eax
  4f52c2:	call   20bfb2
  4f52c7:	mov    edi,eax
  4f52c9:	mov    eax,DWORD PTR [esp+0x1c]
  4f52cd:	mov    DWORD PTR [esp+0x1e8],eax
  4f52d4:	mov    eax,DWORD PTR [esp+0x2c]
  4f52d8:	mov    eax,DWORD PTR [eax]
  4f52da:	mov    DWORD PTR [esp+0xc],eax
  4f52de:	mov    eax,DWORD PTR [esp+0x1e8]
  4f52e5:	mov    DWORD PTR [esp+0x8],eax
  4f52e9:	mov    DWORD PTR [esp],edi
  4f52ec:	mov    DWORD PTR [esp+0x4],0x0
  4f52f4:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f52f9:	mov    ecx,DWORD PTR [esp+0x34]
  4f52fd:	mov    eax,DWORD PTR [ecx]
  4f52ff:	mov    eax,DWORD PTR [eax+0x50]
  4f5302:	mov    DWORD PTR [eax+0x140],edi
  4f5308:	test   esi,esi
  4f530a:	je     4f7ccb
  4f5310:	mov    eax,DWORD PTR [ecx]
  4f5312:	mov    eax,DWORD PTR [eax+0x50]
  4f5315:	mov    eax,DWORD PTR [eax+0x140]
  4f531b:	mov    edi,ecx
  4f531d:	mov    ecx,DWORD PTR [esp+0x38]
  4f5321:	mov    ecx,DWORD PTR [ecx]
  4f5323:	mov    DWORD PTR [esp+0xc],ecx
  4f5327:	mov    DWORD PTR [esp+0x8],eax
  4f532b:	mov    DWORD PTR [esp],esi
  4f532e:	mov    DWORD PTR [esp+0x4],0x28
  4f5336:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f533b:	mov    eax,DWORD PTR [ebp+0x8]
  4f533e:	mov    eax,DWORD PTR [eax+0x14]
  4f5341:	test   eax,eax
  4f5343:	je     4f7ccb
  4f5349:	mov    ecx,DWORD PTR [esp+0x3c]
  4f534d:	mov    ecx,DWORD PTR [ecx]
  4f534f:	mov    DWORD PTR [esp+0x8],ecx
  4f5353:	mov    DWORD PTR [esp],eax
  4f5356:	mov    DWORD PTR [esp+0x4],0x2
  4f535e:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5363:	mov    esi,eax
  4f5365:	mov    eax,DWORD PTR [edi]
  4f5367:	mov    eax,DWORD PTR [eax+0x50]
  4f536a:	cmp    DWORD PTR [eax+0x144],0x0
  4f5371:	mov    ecx,edi
  4f5373:	jne    4f53d0
  4f5375:	lea    eax,[ebx+0x4b194]
  4f537b:	mov    eax,DWORD PTR [eax]
  4f537d:	mov    DWORD PTR [esp+0x1c],eax
  4f5381:	mov    eax,DWORD PTR [esp+0x30]
  4f5385:	mov    eax,DWORD PTR [eax]
  4f5387:	mov    DWORD PTR [esp],eax
  4f538a:	call   20bfb2
  4f538f:	mov    edi,eax
  4f5391:	mov    eax,DWORD PTR [esp+0x1c]
  4f5395:	mov    DWORD PTR [esp+0x1e0],eax
  4f539c:	mov    eax,DWORD PTR [esp+0x2c]
  4f53a0:	mov    eax,DWORD PTR [eax]
  4f53a2:	mov    DWORD PTR [esp+0xc],eax
  4f53a6:	mov    eax,DWORD PTR [esp+0x1e0]
  4f53ad:	mov    DWORD PTR [esp+0x8],eax
  4f53b1:	mov    DWORD PTR [esp],edi
  4f53b4:	mov    DWORD PTR [esp+0x4],0x0
  4f53bc:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f53c1:	mov    ecx,DWORD PTR [esp+0x34]
  4f53c5:	mov    eax,DWORD PTR [ecx]
  4f53c7:	mov    eax,DWORD PTR [eax+0x50]
  4f53ca:	mov    DWORD PTR [eax+0x144],edi
  4f53d0:	test   esi,esi
  4f53d2:	je     4f7ccb
  4f53d8:	mov    eax,DWORD PTR [ecx]
  4f53da:	mov    eax,DWORD PTR [eax+0x50]
  4f53dd:	mov    eax,DWORD PTR [eax+0x144]
  4f53e3:	mov    edi,ecx
  4f53e5:	mov    ecx,DWORD PTR [esp+0x38]
  4f53e9:	mov    ecx,DWORD PTR [ecx]
  4f53eb:	mov    DWORD PTR [esp+0xc],ecx
  4f53ef:	mov    DWORD PTR [esp+0x8],eax
  4f53f3:	mov    DWORD PTR [esp],esi
  4f53f6:	mov    DWORD PTR [esp+0x4],0x3d
  4f53fe:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5403:	mov    eax,DWORD PTR [ebp+0x8]
  4f5406:	mov    eax,DWORD PTR [eax+0x14]
  4f5409:	test   eax,eax
  4f540b:	je     4f7ccb
  4f5411:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5415:	mov    ecx,DWORD PTR [ecx]
  4f5417:	mov    DWORD PTR [esp+0x8],ecx
  4f541b:	mov    DWORD PTR [esp],eax
  4f541e:	mov    DWORD PTR [esp+0x4],0x2
  4f5426:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f542b:	mov    esi,eax
  4f542d:	mov    eax,DWORD PTR [edi]
  4f542f:	mov    eax,DWORD PTR [eax+0x50]
  4f5432:	cmp    DWORD PTR [eax+0x148],0x0
  4f5439:	mov    ecx,edi
  4f543b:	jne    4f5498
  4f543d:	lea    eax,[ebx+0x4b198]
  4f5443:	mov    eax,DWORD PTR [eax]
  4f5445:	mov    DWORD PTR [esp+0x1c],eax
  4f5449:	mov    eax,DWORD PTR [esp+0x30]
  4f544d:	mov    eax,DWORD PTR [eax]
  4f544f:	mov    DWORD PTR [esp],eax
  4f5452:	call   20bfb2
  4f5457:	mov    edi,eax
  4f5459:	mov    eax,DWORD PTR [esp+0x1c]
  4f545d:	mov    DWORD PTR [esp+0x1d8],eax
  4f5464:	mov    eax,DWORD PTR [esp+0x2c]
  4f5468:	mov    eax,DWORD PTR [eax]
  4f546a:	mov    DWORD PTR [esp+0xc],eax
  4f546e:	mov    eax,DWORD PTR [esp+0x1d8]
  4f5475:	mov    DWORD PTR [esp+0x8],eax
  4f5479:	mov    DWORD PTR [esp],edi
  4f547c:	mov    DWORD PTR [esp+0x4],0x0
  4f5484:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5489:	mov    ecx,DWORD PTR [esp+0x34]
  4f548d:	mov    eax,DWORD PTR [ecx]
  4f548f:	mov    eax,DWORD PTR [eax+0x50]
  4f5492:	mov    DWORD PTR [eax+0x148],edi
  4f5498:	test   esi,esi
  4f549a:	je     4f7ccb
  4f54a0:	mov    eax,DWORD PTR [ecx]
  4f54a2:	mov    eax,DWORD PTR [eax+0x50]
  4f54a5:	mov    eax,DWORD PTR [eax+0x148]
  4f54ab:	mov    edi,ecx
  4f54ad:	mov    ecx,DWORD PTR [esp+0x38]
  4f54b1:	mov    ecx,DWORD PTR [ecx]
  4f54b3:	mov    DWORD PTR [esp+0xc],ecx
  4f54b7:	mov    DWORD PTR [esp+0x8],eax
  4f54bb:	mov    DWORD PTR [esp],esi
  4f54be:	mov    DWORD PTR [esp+0x4],0x2a
  4f54c6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f54cb:	mov    eax,DWORD PTR [ebp+0x8]
  4f54ce:	mov    eax,DWORD PTR [eax+0x14]
  4f54d1:	test   eax,eax
  4f54d3:	je     4f7ccb
  4f54d9:	mov    ecx,DWORD PTR [esp+0x3c]
  4f54dd:	mov    ecx,DWORD PTR [ecx]
  4f54df:	mov    DWORD PTR [esp+0x8],ecx
  4f54e3:	mov    DWORD PTR [esp],eax
  4f54e6:	mov    DWORD PTR [esp+0x4],0x2
  4f54ee:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f54f3:	mov    esi,eax
  4f54f5:	mov    eax,DWORD PTR [edi]
  4f54f7:	mov    eax,DWORD PTR [eax+0x50]
  4f54fa:	cmp    DWORD PTR [eax+0x14c],0x0
  4f5501:	mov    ecx,edi
  4f5503:	jne    4f5560
  4f5505:	lea    eax,[ebx+0x4b19c]
  4f550b:	mov    eax,DWORD PTR [eax]
  4f550d:	mov    DWORD PTR [esp+0x1c],eax
  4f5511:	mov    eax,DWORD PTR [esp+0x30]
  4f5515:	mov    eax,DWORD PTR [eax]
  4f5517:	mov    DWORD PTR [esp],eax
  4f551a:	call   20bfb2
  4f551f:	mov    edi,eax
  4f5521:	mov    eax,DWORD PTR [esp+0x1c]
  4f5525:	mov    DWORD PTR [esp+0x1d0],eax
  4f552c:	mov    eax,DWORD PTR [esp+0x2c]
  4f5530:	mov    eax,DWORD PTR [eax]
  4f5532:	mov    DWORD PTR [esp+0xc],eax
  4f5536:	mov    eax,DWORD PTR [esp+0x1d0]
  4f553d:	mov    DWORD PTR [esp+0x8],eax
  4f5541:	mov    DWORD PTR [esp],edi
  4f5544:	mov    DWORD PTR [esp+0x4],0x0
  4f554c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5551:	mov    ecx,DWORD PTR [esp+0x34]
  4f5555:	mov    eax,DWORD PTR [ecx]
  4f5557:	mov    eax,DWORD PTR [eax+0x50]
  4f555a:	mov    DWORD PTR [eax+0x14c],edi
  4f5560:	test   esi,esi
  4f5562:	je     4f7ccb
  4f5568:	mov    eax,DWORD PTR [ecx]
  4f556a:	mov    eax,DWORD PTR [eax+0x50]
  4f556d:	mov    eax,DWORD PTR [eax+0x14c]
  4f5573:	mov    edi,ecx
  4f5575:	mov    ecx,DWORD PTR [esp+0x38]
  4f5579:	mov    ecx,DWORD PTR [ecx]
  4f557b:	mov    DWORD PTR [esp+0xc],ecx
  4f557f:	mov    DWORD PTR [esp+0x8],eax
  4f5583:	mov    DWORD PTR [esp],esi
  4f5586:	mov    DWORD PTR [esp+0x4],0x23
  4f558e:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5593:	mov    eax,DWORD PTR [ebp+0x8]
  4f5596:	mov    eax,DWORD PTR [eax+0x14]
  4f5599:	test   eax,eax
  4f559b:	je     4f7ccb
  4f55a1:	mov    ecx,DWORD PTR [esp+0x3c]
  4f55a5:	mov    ecx,DWORD PTR [ecx]
  4f55a7:	mov    DWORD PTR [esp+0x8],ecx
  4f55ab:	mov    DWORD PTR [esp],eax
  4f55ae:	mov    DWORD PTR [esp+0x4],0x2
  4f55b6:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f55bb:	mov    esi,eax
  4f55bd:	mov    eax,DWORD PTR [edi]
  4f55bf:	mov    eax,DWORD PTR [eax+0x50]
  4f55c2:	cmp    DWORD PTR [eax+0x150],0x0
  4f55c9:	mov    ecx,edi
  4f55cb:	jne    4f5628
  4f55cd:	lea    eax,[ebx+0x4b1a0]
  4f55d3:	mov    eax,DWORD PTR [eax]
  4f55d5:	mov    DWORD PTR [esp+0x1c],eax
  4f55d9:	mov    eax,DWORD PTR [esp+0x30]
  4f55dd:	mov    eax,DWORD PTR [eax]
  4f55df:	mov    DWORD PTR [esp],eax
  4f55e2:	call   20bfb2
  4f55e7:	mov    edi,eax
  4f55e9:	mov    eax,DWORD PTR [esp+0x1c]
  4f55ed:	mov    DWORD PTR [esp+0x1c8],eax
  4f55f4:	mov    eax,DWORD PTR [esp+0x2c]
  4f55f8:	mov    eax,DWORD PTR [eax]
  4f55fa:	mov    DWORD PTR [esp+0xc],eax
  4f55fe:	mov    eax,DWORD PTR [esp+0x1c8]
  4f5605:	mov    DWORD PTR [esp+0x8],eax
  4f5609:	mov    DWORD PTR [esp],edi
  4f560c:	mov    DWORD PTR [esp+0x4],0x0
  4f5614:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5619:	mov    ecx,DWORD PTR [esp+0x34]
  4f561d:	mov    eax,DWORD PTR [ecx]
  4f561f:	mov    eax,DWORD PTR [eax+0x50]
  4f5622:	mov    DWORD PTR [eax+0x150],edi
  4f5628:	test   esi,esi
  4f562a:	je     4f7ccb
  4f5630:	mov    eax,DWORD PTR [ecx]
  4f5632:	mov    eax,DWORD PTR [eax+0x50]
  4f5635:	mov    eax,DWORD PTR [eax+0x150]
  4f563b:	mov    edi,ecx
  4f563d:	mov    ecx,DWORD PTR [esp+0x38]
  4f5641:	mov    ecx,DWORD PTR [ecx]
  4f5643:	mov    DWORD PTR [esp+0xc],ecx
  4f5647:	mov    DWORD PTR [esp+0x8],eax
  4f564b:	mov    DWORD PTR [esp],esi
  4f564e:	mov    DWORD PTR [esp+0x4],0x6c
  4f5656:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f565b:	mov    eax,DWORD PTR [ebp+0x8]
  4f565e:	mov    eax,DWORD PTR [eax+0x14]
  4f5661:	test   eax,eax
  4f5663:	je     4f7ccb
  4f5669:	mov    ecx,DWORD PTR [esp+0x3c]
  4f566d:	mov    ecx,DWORD PTR [ecx]
  4f566f:	mov    DWORD PTR [esp+0x8],ecx
  4f5673:	mov    DWORD PTR [esp],eax
  4f5676:	mov    DWORD PTR [esp+0x4],0x2
  4f567e:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5683:	mov    esi,eax
  4f5685:	mov    eax,DWORD PTR [edi]
  4f5687:	mov    eax,DWORD PTR [eax+0x50]
  4f568a:	cmp    DWORD PTR [eax+0x154],0x0
  4f5691:	mov    ecx,edi
  4f5693:	jne    4f56f0
  4f5695:	lea    eax,[ebx+0x4b1a4]
  4f569b:	mov    eax,DWORD PTR [eax]
  4f569d:	mov    DWORD PTR [esp+0x1c],eax
  4f56a1:	mov    eax,DWORD PTR [esp+0x30]
  4f56a5:	mov    eax,DWORD PTR [eax]
  4f56a7:	mov    DWORD PTR [esp],eax
  4f56aa:	call   20bfb2
  4f56af:	mov    edi,eax
  4f56b1:	mov    eax,DWORD PTR [esp+0x1c]
  4f56b5:	mov    DWORD PTR [esp+0x1c0],eax
  4f56bc:	mov    eax,DWORD PTR [esp+0x2c]
  4f56c0:	mov    eax,DWORD PTR [eax]
  4f56c2:	mov    DWORD PTR [esp+0xc],eax
  4f56c6:	mov    eax,DWORD PTR [esp+0x1c0]
  4f56cd:	mov    DWORD PTR [esp+0x8],eax
  4f56d1:	mov    DWORD PTR [esp],edi
  4f56d4:	mov    DWORD PTR [esp+0x4],0x0
  4f56dc:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f56e1:	mov    ecx,DWORD PTR [esp+0x34]
  4f56e5:	mov    eax,DWORD PTR [ecx]
  4f56e7:	mov    eax,DWORD PTR [eax+0x50]
  4f56ea:	mov    DWORD PTR [eax+0x154],edi
  4f56f0:	test   esi,esi
  4f56f2:	je     4f7ccb
  4f56f8:	mov    eax,DWORD PTR [ecx]
  4f56fa:	mov    eax,DWORD PTR [eax+0x50]
  4f56fd:	mov    eax,DWORD PTR [eax+0x154]
  4f5703:	mov    edi,ecx
  4f5705:	mov    ecx,DWORD PTR [esp+0x38]
  4f5709:	mov    ecx,DWORD PTR [ecx]
  4f570b:	mov    DWORD PTR [esp+0xc],ecx
  4f570f:	mov    DWORD PTR [esp+0x8],eax
  4f5713:	mov    DWORD PTR [esp],esi
  4f5716:	mov    DWORD PTR [esp+0x4],0x21
  4f571e:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5723:	mov    eax,DWORD PTR [ebp+0x8]
  4f5726:	mov    eax,DWORD PTR [eax+0x14]
  4f5729:	test   eax,eax
  4f572b:	je     4f7ccb
  4f5731:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5735:	mov    ecx,DWORD PTR [ecx]
  4f5737:	mov    DWORD PTR [esp+0x8],ecx
  4f573b:	mov    DWORD PTR [esp],eax
  4f573e:	mov    DWORD PTR [esp+0x4],0x2
  4f5746:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f574b:	mov    esi,eax
  4f574d:	mov    eax,DWORD PTR [edi]
  4f574f:	mov    eax,DWORD PTR [eax+0x50]
  4f5752:	cmp    DWORD PTR [eax+0x158],0x0
  4f5759:	mov    ecx,edi
  4f575b:	jne    4f57b8
  4f575d:	lea    eax,[ebx+0x4b1a8]
  4f5763:	mov    eax,DWORD PTR [eax]
  4f5765:	mov    DWORD PTR [esp+0x1c],eax
  4f5769:	mov    eax,DWORD PTR [esp+0x30]
  4f576d:	mov    eax,DWORD PTR [eax]
  4f576f:	mov    DWORD PTR [esp],eax
  4f5772:	call   20bfb2
  4f5777:	mov    edi,eax
  4f5779:	mov    eax,DWORD PTR [esp+0x1c]
  4f577d:	mov    DWORD PTR [esp+0x1b8],eax
  4f5784:	mov    eax,DWORD PTR [esp+0x2c]
  4f5788:	mov    eax,DWORD PTR [eax]
  4f578a:	mov    DWORD PTR [esp+0xc],eax
  4f578e:	mov    eax,DWORD PTR [esp+0x1b8]
  4f5795:	mov    DWORD PTR [esp+0x8],eax
  4f5799:	mov    DWORD PTR [esp],edi
  4f579c:	mov    DWORD PTR [esp+0x4],0x0
  4f57a4:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f57a9:	mov    ecx,DWORD PTR [esp+0x34]
  4f57ad:	mov    eax,DWORD PTR [ecx]
  4f57af:	mov    eax,DWORD PTR [eax+0x50]
  4f57b2:	mov    DWORD PTR [eax+0x158],edi
  4f57b8:	test   esi,esi
  4f57ba:	je     4f7ccb
  4f57c0:	mov    eax,DWORD PTR [ecx]
  4f57c2:	mov    eax,DWORD PTR [eax+0x50]
  4f57c5:	mov    eax,DWORD PTR [eax+0x158]
  4f57cb:	mov    edi,ecx
  4f57cd:	mov    ecx,DWORD PTR [esp+0x38]
  4f57d1:	mov    ecx,DWORD PTR [ecx]
  4f57d3:	mov    DWORD PTR [esp+0xc],ecx
  4f57d7:	mov    DWORD PTR [esp+0x8],eax
  4f57db:	mov    DWORD PTR [esp],esi
  4f57de:	mov    DWORD PTR [esp+0x4],0x16
  4f57e6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f57eb:	mov    eax,DWORD PTR [ebp+0x8]
  4f57ee:	mov    eax,DWORD PTR [eax+0x14]
  4f57f1:	test   eax,eax
  4f57f3:	je     4f7ccb
  4f57f9:	mov    ecx,DWORD PTR [esp+0x3c]
  4f57fd:	mov    ecx,DWORD PTR [ecx]
  4f57ff:	mov    DWORD PTR [esp+0x8],ecx
  4f5803:	mov    DWORD PTR [esp],eax
  4f5806:	mov    DWORD PTR [esp+0x4],0x2
  4f580e:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5813:	mov    esi,eax
  4f5815:	mov    eax,DWORD PTR [edi]
  4f5817:	mov    eax,DWORD PTR [eax+0x50]
  4f581a:	cmp    DWORD PTR [eax+0x15c],0x0
  4f5821:	mov    ecx,edi
  4f5823:	jne    4f5880
  4f5825:	lea    eax,[ebx+0x4b1ac]
  4f582b:	mov    eax,DWORD PTR [eax]
  4f582d:	mov    DWORD PTR [esp+0x1c],eax
  4f5831:	mov    eax,DWORD PTR [esp+0x30]
  4f5835:	mov    eax,DWORD PTR [eax]
  4f5837:	mov    DWORD PTR [esp],eax
  4f583a:	call   20bfb2
  4f583f:	mov    edi,eax
  4f5841:	mov    eax,DWORD PTR [esp+0x1c]
  4f5845:	mov    DWORD PTR [esp+0x1b0],eax
  4f584c:	mov    eax,DWORD PTR [esp+0x2c]
  4f5850:	mov    eax,DWORD PTR [eax]
  4f5852:	mov    DWORD PTR [esp+0xc],eax
  4f5856:	mov    eax,DWORD PTR [esp+0x1b0]
  4f585d:	mov    DWORD PTR [esp+0x8],eax
  4f5861:	mov    DWORD PTR [esp],edi
  4f5864:	mov    DWORD PTR [esp+0x4],0x0
  4f586c:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5871:	mov    ecx,DWORD PTR [esp+0x34]
  4f5875:	mov    eax,DWORD PTR [ecx]
  4f5877:	mov    eax,DWORD PTR [eax+0x50]
  4f587a:	mov    DWORD PTR [eax+0x15c],edi
  4f5880:	test   esi,esi
  4f5882:	je     4f7ccb
  4f5888:	mov    eax,DWORD PTR [ecx]
  4f588a:	mov    eax,DWORD PTR [eax+0x50]
  4f588d:	mov    eax,DWORD PTR [eax+0x15c]
  4f5893:	mov    edi,ecx
  4f5895:	mov    ecx,DWORD PTR [esp+0x38]
  4f5899:	mov    ecx,DWORD PTR [ecx]
  4f589b:	mov    DWORD PTR [esp+0xc],ecx
  4f589f:	mov    DWORD PTR [esp+0x8],eax
  4f58a3:	mov    DWORD PTR [esp],esi
  4f58a6:	mov    DWORD PTR [esp+0x4],0x57
  4f58ae:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f58b3:	mov    eax,DWORD PTR [ebp+0x8]
  4f58b6:	mov    eax,DWORD PTR [eax+0x14]
  4f58b9:	test   eax,eax
  4f58bb:	je     4f7ccb
  4f58c1:	mov    ecx,DWORD PTR [esp+0x3c]
  4f58c5:	mov    ecx,DWORD PTR [ecx]
  4f58c7:	mov    DWORD PTR [esp+0x8],ecx
  4f58cb:	mov    DWORD PTR [esp],eax
  4f58ce:	mov    DWORD PTR [esp+0x4],0x2
  4f58d6:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f58db:	mov    esi,eax
  4f58dd:	mov    eax,DWORD PTR [edi]
  4f58df:	mov    eax,DWORD PTR [eax+0x50]
  4f58e2:	cmp    DWORD PTR [eax+0x160],0x0
  4f58e9:	mov    ecx,edi
  4f58eb:	jne    4f5948
  4f58ed:	lea    eax,[ebx+0x4b1b0]
  4f58f3:	mov    eax,DWORD PTR [eax]
  4f58f5:	mov    DWORD PTR [esp+0x1c],eax
  4f58f9:	mov    eax,DWORD PTR [esp+0x30]
  4f58fd:	mov    eax,DWORD PTR [eax]
  4f58ff:	mov    DWORD PTR [esp],eax
  4f5902:	call   20bfb2
  4f5907:	mov    edi,eax
  4f5909:	mov    eax,DWORD PTR [esp+0x1c]
  4f590d:	mov    DWORD PTR [esp+0x1a8],eax
  4f5914:	mov    eax,DWORD PTR [esp+0x2c]
  4f5918:	mov    eax,DWORD PTR [eax]
  4f591a:	mov    DWORD PTR [esp+0xc],eax
  4f591e:	mov    eax,DWORD PTR [esp+0x1a8]
  4f5925:	mov    DWORD PTR [esp+0x8],eax
  4f5929:	mov    DWORD PTR [esp],edi
  4f592c:	mov    DWORD PTR [esp+0x4],0x0
  4f5934:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5939:	mov    ecx,DWORD PTR [esp+0x34]
  4f593d:	mov    eax,DWORD PTR [ecx]
  4f593f:	mov    eax,DWORD PTR [eax+0x50]
  4f5942:	mov    DWORD PTR [eax+0x160],edi
  4f5948:	test   esi,esi
  4f594a:	je     4f7ccb
  4f5950:	mov    eax,DWORD PTR [ecx]
  4f5952:	mov    eax,DWORD PTR [eax+0x50]
  4f5955:	mov    eax,DWORD PTR [eax+0x160]
  4f595b:	mov    ecx,DWORD PTR [esp+0x38]
  4f595f:	mov    ecx,DWORD PTR [ecx]
  4f5961:	mov    DWORD PTR [esp+0xc],ecx
  4f5965:	mov    DWORD PTR [esp+0x8],eax
  4f5969:	mov    DWORD PTR [esp],esi
  4f596c:	mov    DWORD PTR [esp+0x4],0x19
  4f5974:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5979:	mov    eax,DWORD PTR [ebp+0x8]
  4f597c:	mov    eax,DWORD PTR [eax+0x14]
  4f597f:	test   eax,eax
  4f5981:	je     4f7ccb
  4f5987:	mov    ecx,DWORD PTR [esp+0x3c]
  4f598b:	mov    ecx,DWORD PTR [ecx]
  4f598d:	mov    DWORD PTR [esp+0x8],ecx
  4f5991:	mov    DWORD PTR [esp],eax
  4f5994:	mov    DWORD PTR [esp+0x4],0x2
  4f599c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f59a1:	mov    DWORD PTR [esp+0x1c],eax
  4f59a5:	lea    eax,[ebx+0x4b1b4]
  4f59ab:	mov    esi,DWORD PTR [eax]
  4f59ad:	mov    eax,DWORD PTR [esp+0x30]
  4f59b1:	mov    eax,DWORD PTR [eax]
  4f59b3:	mov    DWORD PTR [esp],eax
  4f59b6:	call   20bfb2
  4f59bb:	mov    edi,eax
  4f59bd:	mov    DWORD PTR [esp+0x1a0],esi
  4f59c4:	mov    eax,DWORD PTR [esp+0x2c]
  4f59c8:	mov    eax,DWORD PTR [eax]
  4f59ca:	mov    DWORD PTR [esp+0xc],eax
  4f59ce:	mov    eax,DWORD PTR [esp+0x1a0]
  4f59d5:	mov    DWORD PTR [esp+0x8],eax
  4f59d9:	mov    eax,DWORD PTR [ebp+0x8]
  4f59dc:	mov    DWORD PTR [esp+0x4],eax
  4f59e0:	mov    DWORD PTR [esp],edi
  4f59e3:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f59e8:	mov    ecx,DWORD PTR [esp+0x1c]
  4f59ec:	test   ecx,ecx
  4f59ee:	je     4f7ccb
  4f59f4:	mov    eax,DWORD PTR [esp+0x38]
  4f59f8:	mov    eax,DWORD PTR [eax]
  4f59fa:	mov    DWORD PTR [esp+0xc],eax
  4f59fe:	mov    DWORD PTR [esp+0x8],edi
  4f5a02:	mov    DWORD PTR [esp],ecx
  4f5a05:	mov    DWORD PTR [esp+0x4],0x4c
  4f5a0d:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5a12:	mov    eax,DWORD PTR [ebp+0x8]
  4f5a15:	mov    edi,DWORD PTR [eax+0x14]
  4f5a18:	mov    eax,DWORD PTR [esp+0x20]
  4f5a1c:	mov    eax,DWORD PTR [eax]
  4f5a1e:	mov    DWORD PTR [esp],eax
  4f5a21:	call   20bfb2
  4f5a26:	mov    esi,eax
  4f5a28:	mov    eax,DWORD PTR [esp+0x28]
  4f5a2c:	mov    eax,DWORD PTR [eax]
  4f5a2e:	mov    DWORD PTR [esp+0x4],eax
  4f5a32:	mov    DWORD PTR [esp],esi
  4f5a35:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f5a3a:	test   edi,edi
  4f5a3c:	je     4f7ccb
  4f5a42:	mov    eax,DWORD PTR [esp+0x24]
  4f5a46:	mov    eax,DWORD PTR [eax]
  4f5a48:	mov    DWORD PTR [esp+0xc],eax
  4f5a4c:	mov    DWORD PTR [esp+0x8],esi
  4f5a50:	mov    DWORD PTR [esp],edi
  4f5a53:	mov    DWORD PTR [esp+0x4],0x18
  4f5a5b:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f5a60:	mov    eax,DWORD PTR [ebp+0x8]
  4f5a63:	mov    ecx,eax
  4f5a65:	mov    eax,DWORD PTR [ecx+0x14]
  4f5a68:	test   eax,eax
  4f5a6a:	mov    edi,ecx
  4f5a6c:	je     4f7ccb
  4f5a72:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5a76:	mov    ecx,DWORD PTR [ecx]
  4f5a78:	mov    DWORD PTR [esp+0x8],ecx
  4f5a7c:	mov    DWORD PTR [esp],eax
  4f5a7f:	mov    DWORD PTR [esp+0x4],0x18
  4f5a87:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5a8c:	mov    esi,eax
  4f5a8e:	mov    ecx,DWORD PTR [esp+0x34]
  4f5a92:	mov    eax,DWORD PTR [ecx]
  4f5a94:	mov    eax,DWORD PTR [eax+0x50]
  4f5a97:	cmp    DWORD PTR [eax+0x164],0x0
  4f5a9e:	jne    4f5afe
  4f5aa0:	lea    eax,[ebx+0x4b1b8]
  4f5aa6:	mov    eax,DWORD PTR [eax]
  4f5aa8:	mov    DWORD PTR [esp+0x1c],eax
  4f5aac:	mov    eax,DWORD PTR [esp+0x30]
  4f5ab0:	mov    eax,DWORD PTR [eax]
  4f5ab2:	mov    DWORD PTR [esp],eax
  4f5ab5:	call   20bfb2
  4f5aba:	mov    edi,eax
  4f5abc:	mov    eax,DWORD PTR [esp+0x1c]
  4f5ac0:	mov    DWORD PTR [esp+0x198],eax
  4f5ac7:	mov    eax,DWORD PTR [esp+0x2c]
  4f5acb:	mov    eax,DWORD PTR [eax]
  4f5acd:	mov    DWORD PTR [esp+0xc],eax
  4f5ad1:	mov    eax,DWORD PTR [esp+0x198]
  4f5ad8:	mov    DWORD PTR [esp+0x8],eax
  4f5adc:	mov    DWORD PTR [esp],edi
  4f5adf:	mov    DWORD PTR [esp+0x4],0x0
  4f5ae7:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5aec:	mov    ecx,DWORD PTR [esp+0x34]
  4f5af0:	mov    eax,DWORD PTR [ecx]
  4f5af2:	mov    eax,DWORD PTR [eax+0x50]
  4f5af5:	mov    DWORD PTR [eax+0x164],edi
  4f5afb:	mov    edi,DWORD PTR [ebp+0x8]
  4f5afe:	test   esi,esi
  4f5b00:	je     4f7ccb
  4f5b06:	mov    eax,DWORD PTR [ecx]
  4f5b08:	mov    eax,DWORD PTR [eax+0x50]
  4f5b0b:	mov    eax,DWORD PTR [eax+0x164]
  4f5b11:	mov    ecx,DWORD PTR [esp+0x38]
  4f5b15:	mov    ecx,DWORD PTR [ecx]
  4f5b17:	mov    DWORD PTR [esp+0xc],ecx
  4f5b1b:	mov    DWORD PTR [esp+0x8],eax
  4f5b1f:	mov    DWORD PTR [esp],esi
  4f5b22:	mov    DWORD PTR [esp+0x4],0x4d
  4f5b2a:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5b2f:	mov    eax,DWORD PTR [edi+0x14]
  4f5b32:	test   eax,eax
  4f5b34:	je     4f7ccb
  4f5b3a:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5b3e:	mov    ecx,DWORD PTR [ecx]
  4f5b40:	mov    DWORD PTR [esp+0x8],ecx
  4f5b44:	mov    DWORD PTR [esp],eax
  4f5b47:	mov    DWORD PTR [esp+0x4],0x12
  4f5b4f:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5b54:	mov    DWORD PTR [esp+0x1c],eax
  4f5b58:	lea    eax,[ebx+0x4b1bc]
  4f5b5e:	mov    esi,DWORD PTR [eax]
  4f5b60:	mov    eax,DWORD PTR [esp+0x30]
  4f5b64:	mov    eax,DWORD PTR [eax]
  4f5b66:	mov    DWORD PTR [esp],eax
  4f5b69:	call   20bfb2
  4f5b6e:	mov    edi,eax
  4f5b70:	mov    DWORD PTR [esp+0x190],esi
  4f5b77:	mov    eax,DWORD PTR [esp+0x2c]
  4f5b7b:	mov    eax,DWORD PTR [eax]
  4f5b7d:	mov    DWORD PTR [esp+0xc],eax
  4f5b81:	mov    eax,DWORD PTR [esp+0x190]
  4f5b88:	mov    DWORD PTR [esp+0x8],eax
  4f5b8c:	mov    esi,DWORD PTR [ebp+0x8]
  4f5b8f:	mov    DWORD PTR [esp+0x4],esi
  4f5b93:	mov    DWORD PTR [esp],edi
  4f5b96:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5b9b:	mov    ecx,DWORD PTR [esp+0x1c]
  4f5b9f:	test   ecx,ecx
  4f5ba1:	je     4f7ccb
  4f5ba7:	mov    eax,DWORD PTR [esp+0x38]
  4f5bab:	mov    eax,DWORD PTR [eax]
  4f5bad:	mov    DWORD PTR [esp+0xc],eax
  4f5bb1:	mov    DWORD PTR [esp+0x8],edi
  4f5bb5:	mov    DWORD PTR [esp],ecx
  4f5bb8:	mov    DWORD PTR [esp+0x4],0x4e
  4f5bc0:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5bc5:	mov    eax,DWORD PTR [esi+0x14]
  4f5bc8:	test   eax,eax
  4f5bca:	je     4f7ccb
  4f5bd0:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5bd4:	mov    ecx,DWORD PTR [ecx]
  4f5bd6:	mov    DWORD PTR [esp+0x8],ecx
  4f5bda:	mov    DWORD PTR [esp],eax
  4f5bdd:	mov    DWORD PTR [esp+0x4],0xe
  4f5be5:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5bea:	mov    esi,eax
  4f5bec:	mov    ecx,DWORD PTR [esp+0x34]
  4f5bf0:	mov    eax,DWORD PTR [ecx]
  4f5bf2:	mov    eax,DWORD PTR [eax+0x50]
  4f5bf5:	cmp    DWORD PTR [eax+0x168],0x0
  4f5bfc:	jne    4f5c59
  4f5bfe:	lea    eax,[ebx+0x4b1c0]
  4f5c04:	mov    eax,DWORD PTR [eax]
  4f5c06:	mov    DWORD PTR [esp+0x1c],eax
  4f5c0a:	mov    eax,DWORD PTR [esp+0x30]
  4f5c0e:	mov    eax,DWORD PTR [eax]
  4f5c10:	mov    DWORD PTR [esp],eax
  4f5c13:	call   20bfb2
  4f5c18:	mov    edi,eax
  4f5c1a:	mov    eax,DWORD PTR [esp+0x1c]
  4f5c1e:	mov    DWORD PTR [esp+0x188],eax
  4f5c25:	mov    eax,DWORD PTR [esp+0x2c]
  4f5c29:	mov    eax,DWORD PTR [eax]
  4f5c2b:	mov    DWORD PTR [esp+0xc],eax
  4f5c2f:	mov    eax,DWORD PTR [esp+0x188]
  4f5c36:	mov    DWORD PTR [esp+0x8],eax
  4f5c3a:	mov    DWORD PTR [esp],edi
  4f5c3d:	mov    DWORD PTR [esp+0x4],0x0
  4f5c45:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5c4a:	mov    ecx,DWORD PTR [esp+0x34]
  4f5c4e:	mov    eax,DWORD PTR [ecx]
  4f5c50:	mov    eax,DWORD PTR [eax+0x50]
  4f5c53:	mov    DWORD PTR [eax+0x168],edi
  4f5c59:	test   esi,esi
  4f5c5b:	je     4f7ccb
  4f5c61:	mov    eax,DWORD PTR [ecx]
  4f5c63:	mov    eax,DWORD PTR [eax+0x50]
  4f5c66:	mov    eax,DWORD PTR [eax+0x168]
  4f5c6c:	mov    edi,ecx
  4f5c6e:	mov    ecx,DWORD PTR [esp+0x38]
  4f5c72:	mov    ecx,DWORD PTR [ecx]
  4f5c74:	mov    DWORD PTR [esp+0xc],ecx
  4f5c78:	mov    DWORD PTR [esp+0x8],eax
  4f5c7c:	mov    DWORD PTR [esp],esi
  4f5c7f:	mov    DWORD PTR [esp+0x4],0x1a
  4f5c87:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5c8c:	mov    eax,DWORD PTR [ebp+0x8]
  4f5c8f:	mov    eax,DWORD PTR [eax+0x14]
  4f5c92:	test   eax,eax
  4f5c94:	je     4f7ccb
  4f5c9a:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5c9e:	mov    ecx,DWORD PTR [ecx]
  4f5ca0:	mov    DWORD PTR [esp+0x8],ecx
  4f5ca4:	mov    DWORD PTR [esp],eax
  4f5ca7:	mov    DWORD PTR [esp+0x4],0x2
  4f5caf:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5cb4:	mov    esi,eax
  4f5cb6:	mov    eax,DWORD PTR [edi]
  4f5cb8:	mov    eax,DWORD PTR [eax+0x50]
  4f5cbb:	cmp    DWORD PTR [eax+0x16c],0x0
  4f5cc2:	mov    ecx,edi
  4f5cc4:	jne    4f5d21
  4f5cc6:	lea    eax,[ebx+0x4b1c4]
  4f5ccc:	mov    eax,DWORD PTR [eax]
  4f5cce:	mov    DWORD PTR [esp+0x1c],eax
  4f5cd2:	mov    eax,DWORD PTR [esp+0x30]
  4f5cd6:	mov    eax,DWORD PTR [eax]
  4f5cd8:	mov    DWORD PTR [esp],eax
  4f5cdb:	call   20bfb2
  4f5ce0:	mov    edi,eax
  4f5ce2:	mov    eax,DWORD PTR [esp+0x1c]
  4f5ce6:	mov    DWORD PTR [esp+0x180],eax
  4f5ced:	mov    eax,DWORD PTR [esp+0x2c]
  4f5cf1:	mov    eax,DWORD PTR [eax]
  4f5cf3:	mov    DWORD PTR [esp+0xc],eax
  4f5cf7:	mov    eax,DWORD PTR [esp+0x180]
  4f5cfe:	mov    DWORD PTR [esp+0x8],eax
  4f5d02:	mov    DWORD PTR [esp],edi
  4f5d05:	mov    DWORD PTR [esp+0x4],0x0
  4f5d0d:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5d12:	mov    ecx,DWORD PTR [esp+0x34]
  4f5d16:	mov    eax,DWORD PTR [ecx]
  4f5d18:	mov    eax,DWORD PTR [eax+0x50]
  4f5d1b:	mov    DWORD PTR [eax+0x16c],edi
  4f5d21:	test   esi,esi
  4f5d23:	je     4f7ccb
  4f5d29:	mov    eax,DWORD PTR [ecx]
  4f5d2b:	mov    eax,DWORD PTR [eax+0x50]
  4f5d2e:	mov    eax,DWORD PTR [eax+0x16c]
  4f5d34:	mov    edi,ecx
  4f5d36:	mov    ecx,DWORD PTR [esp+0x38]
  4f5d3a:	mov    ecx,DWORD PTR [ecx]
  4f5d3c:	mov    DWORD PTR [esp+0xc],ecx
  4f5d40:	mov    DWORD PTR [esp+0x8],eax
  4f5d44:	mov    DWORD PTR [esp],esi
  4f5d47:	mov    DWORD PTR [esp+0x4],0xf
  4f5d4f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5d54:	mov    eax,DWORD PTR [ebp+0x8]
  4f5d57:	mov    eax,DWORD PTR [eax+0x14]
  4f5d5a:	test   eax,eax
  4f5d5c:	je     4f7ccb
  4f5d62:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5d66:	mov    ecx,DWORD PTR [ecx]
  4f5d68:	mov    DWORD PTR [esp+0x8],ecx
  4f5d6c:	mov    DWORD PTR [esp],eax
  4f5d6f:	mov    DWORD PTR [esp+0x4],0x2
  4f5d77:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5d7c:	mov    esi,eax
  4f5d7e:	mov    eax,DWORD PTR [edi]
  4f5d80:	mov    eax,DWORD PTR [eax+0x50]
  4f5d83:	cmp    DWORD PTR [eax+0x170],0x0
  4f5d8a:	mov    ecx,edi
  4f5d8c:	jne    4f5de9
  4f5d8e:	lea    eax,[ebx+0x4b1c8]
  4f5d94:	mov    eax,DWORD PTR [eax]
  4f5d96:	mov    DWORD PTR [esp+0x1c],eax
  4f5d9a:	mov    eax,DWORD PTR [esp+0x30]
  4f5d9e:	mov    eax,DWORD PTR [eax]
  4f5da0:	mov    DWORD PTR [esp],eax
  4f5da3:	call   20bfb2
  4f5da8:	mov    edi,eax
  4f5daa:	mov    eax,DWORD PTR [esp+0x1c]
  4f5dae:	mov    DWORD PTR [esp+0x178],eax
  4f5db5:	mov    eax,DWORD PTR [esp+0x2c]
  4f5db9:	mov    eax,DWORD PTR [eax]
  4f5dbb:	mov    DWORD PTR [esp+0xc],eax
  4f5dbf:	mov    eax,DWORD PTR [esp+0x178]
  4f5dc6:	mov    DWORD PTR [esp+0x8],eax
  4f5dca:	mov    DWORD PTR [esp],edi
  4f5dcd:	mov    DWORD PTR [esp+0x4],0x0
  4f5dd5:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5dda:	mov    ecx,DWORD PTR [esp+0x34]
  4f5dde:	mov    eax,DWORD PTR [ecx]
  4f5de0:	mov    eax,DWORD PTR [eax+0x50]
  4f5de3:	mov    DWORD PTR [eax+0x170],edi
  4f5de9:	test   esi,esi
  4f5deb:	je     4f7ccb
  4f5df1:	mov    eax,DWORD PTR [ecx]
  4f5df3:	mov    eax,DWORD PTR [eax+0x50]
  4f5df6:	mov    eax,DWORD PTR [eax+0x170]
  4f5dfc:	mov    edi,ecx
  4f5dfe:	mov    ecx,DWORD PTR [esp+0x38]
  4f5e02:	mov    ecx,DWORD PTR [ecx]
  4f5e04:	mov    DWORD PTR [esp+0xc],ecx
  4f5e08:	mov    DWORD PTR [esp+0x8],eax
  4f5e0c:	mov    DWORD PTR [esp],esi
  4f5e0f:	mov    DWORD PTR [esp+0x4],0x3a
  4f5e17:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5e1c:	mov    eax,DWORD PTR [ebp+0x8]
  4f5e1f:	mov    eax,DWORD PTR [eax+0x14]
  4f5e22:	test   eax,eax
  4f5e24:	je     4f7ccb
  4f5e2a:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5e2e:	mov    ecx,DWORD PTR [ecx]
  4f5e30:	mov    DWORD PTR [esp+0x8],ecx
  4f5e34:	mov    DWORD PTR [esp],eax
  4f5e37:	mov    DWORD PTR [esp+0x4],0x2
  4f5e3f:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5e44:	mov    esi,eax
  4f5e46:	mov    eax,DWORD PTR [edi]
  4f5e48:	mov    eax,DWORD PTR [eax+0x50]
  4f5e4b:	cmp    DWORD PTR [eax+0x174],0x0
  4f5e52:	mov    ecx,edi
  4f5e54:	jne    4f5eb1
  4f5e56:	lea    eax,[ebx+0x4b1cc]
  4f5e5c:	mov    eax,DWORD PTR [eax]
  4f5e5e:	mov    DWORD PTR [esp+0x1c],eax
  4f5e62:	mov    eax,DWORD PTR [esp+0x30]
  4f5e66:	mov    eax,DWORD PTR [eax]
  4f5e68:	mov    DWORD PTR [esp],eax
  4f5e6b:	call   20bfb2
  4f5e70:	mov    edi,eax
  4f5e72:	mov    eax,DWORD PTR [esp+0x1c]
  4f5e76:	mov    DWORD PTR [esp+0x170],eax
  4f5e7d:	mov    eax,DWORD PTR [esp+0x2c]
  4f5e81:	mov    eax,DWORD PTR [eax]
  4f5e83:	mov    DWORD PTR [esp+0xc],eax
  4f5e87:	mov    eax,DWORD PTR [esp+0x170]
  4f5e8e:	mov    DWORD PTR [esp+0x8],eax
  4f5e92:	mov    DWORD PTR [esp],edi
  4f5e95:	mov    DWORD PTR [esp+0x4],0x0
  4f5e9d:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5ea2:	mov    ecx,DWORD PTR [esp+0x34]
  4f5ea6:	mov    eax,DWORD PTR [ecx]
  4f5ea8:	mov    eax,DWORD PTR [eax+0x50]
  4f5eab:	mov    DWORD PTR [eax+0x174],edi
  4f5eb1:	test   esi,esi
  4f5eb3:	je     4f7ccb
  4f5eb9:	mov    eax,DWORD PTR [ecx]
  4f5ebb:	mov    eax,DWORD PTR [eax+0x50]
  4f5ebe:	mov    eax,DWORD PTR [eax+0x174]
  4f5ec4:	mov    edi,ecx
  4f5ec6:	mov    ecx,DWORD PTR [esp+0x38]
  4f5eca:	mov    ecx,DWORD PTR [ecx]
  4f5ecc:	mov    DWORD PTR [esp+0xc],ecx
  4f5ed0:	mov    DWORD PTR [esp+0x8],eax
  4f5ed4:	mov    DWORD PTR [esp],esi
  4f5ed7:	mov    DWORD PTR [esp+0x4],0xd
  4f5edf:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5ee4:	mov    eax,DWORD PTR [ebp+0x8]
  4f5ee7:	mov    eax,DWORD PTR [eax+0x14]
  4f5eea:	test   eax,eax
  4f5eec:	je     4f7ccb
  4f5ef2:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5ef6:	mov    ecx,DWORD PTR [ecx]
  4f5ef8:	mov    DWORD PTR [esp+0x8],ecx
  4f5efc:	mov    DWORD PTR [esp],eax
  4f5eff:	mov    DWORD PTR [esp+0x4],0x2
  4f5f07:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5f0c:	mov    esi,eax
  4f5f0e:	mov    eax,DWORD PTR [edi]
  4f5f10:	mov    eax,DWORD PTR [eax+0x50]
  4f5f13:	cmp    DWORD PTR [eax+0x178],0x0
  4f5f1a:	mov    ecx,edi
  4f5f1c:	jne    4f5f79
  4f5f1e:	lea    eax,[ebx+0x4b1d0]
  4f5f24:	mov    eax,DWORD PTR [eax]
  4f5f26:	mov    DWORD PTR [esp+0x1c],eax
  4f5f2a:	mov    eax,DWORD PTR [esp+0x30]
  4f5f2e:	mov    eax,DWORD PTR [eax]
  4f5f30:	mov    DWORD PTR [esp],eax
  4f5f33:	call   20bfb2
  4f5f38:	mov    edi,eax
  4f5f3a:	mov    eax,DWORD PTR [esp+0x1c]
  4f5f3e:	mov    DWORD PTR [esp+0x168],eax
  4f5f45:	mov    eax,DWORD PTR [esp+0x2c]
  4f5f49:	mov    eax,DWORD PTR [eax]
  4f5f4b:	mov    DWORD PTR [esp+0xc],eax
  4f5f4f:	mov    eax,DWORD PTR [esp+0x168]
  4f5f56:	mov    DWORD PTR [esp+0x8],eax
  4f5f5a:	mov    DWORD PTR [esp],edi
  4f5f5d:	mov    DWORD PTR [esp+0x4],0x0
  4f5f65:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f5f6a:	mov    ecx,DWORD PTR [esp+0x34]
  4f5f6e:	mov    eax,DWORD PTR [ecx]
  4f5f70:	mov    eax,DWORD PTR [eax+0x50]
  4f5f73:	mov    DWORD PTR [eax+0x178],edi
  4f5f79:	test   esi,esi
  4f5f7b:	je     4f7ccb
  4f5f81:	mov    eax,DWORD PTR [ecx]
  4f5f83:	mov    eax,DWORD PTR [eax+0x50]
  4f5f86:	mov    eax,DWORD PTR [eax+0x178]
  4f5f8c:	mov    edi,ecx
  4f5f8e:	mov    ecx,DWORD PTR [esp+0x38]
  4f5f92:	mov    ecx,DWORD PTR [ecx]
  4f5f94:	mov    DWORD PTR [esp+0xc],ecx
  4f5f98:	mov    DWORD PTR [esp+0x8],eax
  4f5f9c:	mov    DWORD PTR [esp],esi
  4f5f9f:	mov    DWORD PTR [esp+0x4],0x69
  4f5fa7:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f5fac:	mov    eax,DWORD PTR [ebp+0x8]
  4f5faf:	mov    eax,DWORD PTR [eax+0x14]
  4f5fb2:	test   eax,eax
  4f5fb4:	je     4f7ccb
  4f5fba:	mov    ecx,DWORD PTR [esp+0x3c]
  4f5fbe:	mov    ecx,DWORD PTR [ecx]
  4f5fc0:	mov    DWORD PTR [esp+0x8],ecx
  4f5fc4:	mov    DWORD PTR [esp],eax
  4f5fc7:	mov    DWORD PTR [esp+0x4],0x2
  4f5fcf:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f5fd4:	mov    esi,eax
  4f5fd6:	mov    eax,DWORD PTR [edi]
  4f5fd8:	mov    eax,DWORD PTR [eax+0x50]
  4f5fdb:	cmp    DWORD PTR [eax+0x17c],0x0
  4f5fe2:	mov    ecx,edi
  4f5fe4:	jne    4f6041
  4f5fe6:	lea    eax,[ebx+0x4b1d4]
  4f5fec:	mov    eax,DWORD PTR [eax]
  4f5fee:	mov    DWORD PTR [esp+0x1c],eax
  4f5ff2:	mov    eax,DWORD PTR [esp+0x30]
  4f5ff6:	mov    eax,DWORD PTR [eax]
  4f5ff8:	mov    DWORD PTR [esp],eax
  4f5ffb:	call   20bfb2
  4f6000:	mov    edi,eax
  4f6002:	mov    eax,DWORD PTR [esp+0x1c]
  4f6006:	mov    DWORD PTR [esp+0x160],eax
  4f600d:	mov    eax,DWORD PTR [esp+0x2c]
  4f6011:	mov    eax,DWORD PTR [eax]
  4f6013:	mov    DWORD PTR [esp+0xc],eax
  4f6017:	mov    eax,DWORD PTR [esp+0x160]
  4f601e:	mov    DWORD PTR [esp+0x8],eax
  4f6022:	mov    DWORD PTR [esp],edi
  4f6025:	mov    DWORD PTR [esp+0x4],0x0
  4f602d:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6032:	mov    ecx,DWORD PTR [esp+0x34]
  4f6036:	mov    eax,DWORD PTR [ecx]
  4f6038:	mov    eax,DWORD PTR [eax+0x50]
  4f603b:	mov    DWORD PTR [eax+0x17c],edi
  4f6041:	test   esi,esi
  4f6043:	je     4f7ccb
  4f6049:	mov    eax,DWORD PTR [ecx]
  4f604b:	mov    eax,DWORD PTR [eax+0x50]
  4f604e:	mov    eax,DWORD PTR [eax+0x17c]
  4f6054:	mov    edi,ecx
  4f6056:	mov    ecx,DWORD PTR [esp+0x38]
  4f605a:	mov    ecx,DWORD PTR [ecx]
  4f605c:	mov    DWORD PTR [esp+0xc],ecx
  4f6060:	mov    DWORD PTR [esp+0x8],eax
  4f6064:	mov    DWORD PTR [esp],esi
  4f6067:	mov    DWORD PTR [esp+0x4],0x73
  4f606f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6074:	mov    eax,DWORD PTR [ebp+0x8]
  4f6077:	mov    eax,DWORD PTR [eax+0x14]
  4f607a:	test   eax,eax
  4f607c:	je     4f7ccb
  4f6082:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6086:	mov    ecx,DWORD PTR [ecx]
  4f6088:	mov    DWORD PTR [esp+0x8],ecx
  4f608c:	mov    DWORD PTR [esp],eax
  4f608f:	mov    DWORD PTR [esp+0x4],0x2
  4f6097:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f609c:	mov    esi,eax
  4f609e:	mov    eax,DWORD PTR [edi]
  4f60a0:	mov    eax,DWORD PTR [eax+0x50]
  4f60a3:	cmp    DWORD PTR [eax+0x180],0x0
  4f60aa:	mov    ecx,edi
  4f60ac:	jne    4f6109
  4f60ae:	lea    eax,[ebx+0x4b1d8]
  4f60b4:	mov    eax,DWORD PTR [eax]
  4f60b6:	mov    DWORD PTR [esp+0x1c],eax
  4f60ba:	mov    eax,DWORD PTR [esp+0x30]
  4f60be:	mov    eax,DWORD PTR [eax]
  4f60c0:	mov    DWORD PTR [esp],eax
  4f60c3:	call   20bfb2
  4f60c8:	mov    edi,eax
  4f60ca:	mov    eax,DWORD PTR [esp+0x1c]
  4f60ce:	mov    DWORD PTR [esp+0x158],eax
  4f60d5:	mov    eax,DWORD PTR [esp+0x2c]
  4f60d9:	mov    eax,DWORD PTR [eax]
  4f60db:	mov    DWORD PTR [esp+0xc],eax
  4f60df:	mov    eax,DWORD PTR [esp+0x158]
  4f60e6:	mov    DWORD PTR [esp+0x8],eax
  4f60ea:	mov    DWORD PTR [esp],edi
  4f60ed:	mov    DWORD PTR [esp+0x4],0x0
  4f60f5:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f60fa:	mov    ecx,DWORD PTR [esp+0x34]
  4f60fe:	mov    eax,DWORD PTR [ecx]
  4f6100:	mov    eax,DWORD PTR [eax+0x50]
  4f6103:	mov    DWORD PTR [eax+0x180],edi
  4f6109:	test   esi,esi
  4f610b:	je     4f7ccb
  4f6111:	mov    eax,DWORD PTR [ecx]
  4f6113:	mov    eax,DWORD PTR [eax+0x50]
  4f6116:	mov    eax,DWORD PTR [eax+0x180]
  4f611c:	mov    edi,ecx
  4f611e:	mov    ecx,DWORD PTR [esp+0x38]
  4f6122:	mov    ecx,DWORD PTR [ecx]
  4f6124:	mov    DWORD PTR [esp+0xc],ecx
  4f6128:	mov    DWORD PTR [esp+0x8],eax
  4f612c:	mov    DWORD PTR [esp],esi
  4f612f:	mov    DWORD PTR [esp+0x4],0x61
  4f6137:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f613c:	mov    eax,DWORD PTR [ebp+0x8]
  4f613f:	mov    eax,DWORD PTR [eax+0x14]
  4f6142:	test   eax,eax
  4f6144:	je     4f7ccb
  4f614a:	mov    ecx,DWORD PTR [esp+0x3c]
  4f614e:	mov    ecx,DWORD PTR [ecx]
  4f6150:	mov    DWORD PTR [esp+0x8],ecx
  4f6154:	mov    DWORD PTR [esp],eax
  4f6157:	mov    DWORD PTR [esp+0x4],0x2
  4f615f:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6164:	mov    esi,eax
  4f6166:	mov    eax,DWORD PTR [edi]
  4f6168:	mov    eax,DWORD PTR [eax+0x50]
  4f616b:	cmp    DWORD PTR [eax+0x184],0x0
  4f6172:	mov    ecx,edi
  4f6174:	jne    4f61d1
  4f6176:	lea    eax,[ebx+0x4b1dc]
  4f617c:	mov    eax,DWORD PTR [eax]
  4f617e:	mov    DWORD PTR [esp+0x1c],eax
  4f6182:	mov    eax,DWORD PTR [esp+0x30]
  4f6186:	mov    eax,DWORD PTR [eax]
  4f6188:	mov    DWORD PTR [esp],eax
  4f618b:	call   20bfb2
  4f6190:	mov    edi,eax
  4f6192:	mov    eax,DWORD PTR [esp+0x1c]
  4f6196:	mov    DWORD PTR [esp+0x150],eax
  4f619d:	mov    eax,DWORD PTR [esp+0x2c]
  4f61a1:	mov    eax,DWORD PTR [eax]
  4f61a3:	mov    DWORD PTR [esp+0xc],eax
  4f61a7:	mov    eax,DWORD PTR [esp+0x150]
  4f61ae:	mov    DWORD PTR [esp+0x8],eax
  4f61b2:	mov    DWORD PTR [esp],edi
  4f61b5:	mov    DWORD PTR [esp+0x4],0x0
  4f61bd:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f61c2:	mov    ecx,DWORD PTR [esp+0x34]
  4f61c6:	mov    eax,DWORD PTR [ecx]
  4f61c8:	mov    eax,DWORD PTR [eax+0x50]
  4f61cb:	mov    DWORD PTR [eax+0x184],edi
  4f61d1:	test   esi,esi
  4f61d3:	je     4f7ccb
  4f61d9:	mov    eax,DWORD PTR [ecx]
  4f61db:	mov    eax,DWORD PTR [eax+0x50]
  4f61de:	mov    eax,DWORD PTR [eax+0x184]
  4f61e4:	mov    edi,ecx
  4f61e6:	mov    ecx,DWORD PTR [esp+0x38]
  4f61ea:	mov    ecx,DWORD PTR [ecx]
  4f61ec:	mov    DWORD PTR [esp+0xc],ecx
  4f61f0:	mov    DWORD PTR [esp+0x8],eax
  4f61f4:	mov    DWORD PTR [esp],esi
  4f61f7:	mov    DWORD PTR [esp+0x4],0x5e
  4f61ff:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6204:	mov    eax,DWORD PTR [ebp+0x8]
  4f6207:	mov    eax,DWORD PTR [eax+0x14]
  4f620a:	test   eax,eax
  4f620c:	je     4f7ccb
  4f6212:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6216:	mov    ecx,DWORD PTR [ecx]
  4f6218:	mov    DWORD PTR [esp+0x8],ecx
  4f621c:	mov    DWORD PTR [esp],eax
  4f621f:	mov    DWORD PTR [esp+0x4],0x2
  4f6227:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f622c:	mov    esi,eax
  4f622e:	mov    eax,DWORD PTR [edi]
  4f6230:	mov    eax,DWORD PTR [eax+0x50]
  4f6233:	cmp    DWORD PTR [eax+0x188],0x0
  4f623a:	mov    ecx,edi
  4f623c:	jne    4f6299
  4f623e:	lea    eax,[ebx+0x4b1e0]
  4f6244:	mov    eax,DWORD PTR [eax]
  4f6246:	mov    DWORD PTR [esp+0x1c],eax
  4f624a:	mov    eax,DWORD PTR [esp+0x30]
  4f624e:	mov    eax,DWORD PTR [eax]
  4f6250:	mov    DWORD PTR [esp],eax
  4f6253:	call   20bfb2
  4f6258:	mov    edi,eax
  4f625a:	mov    eax,DWORD PTR [esp+0x1c]
  4f625e:	mov    DWORD PTR [esp+0x148],eax
  4f6265:	mov    eax,DWORD PTR [esp+0x2c]
  4f6269:	mov    eax,DWORD PTR [eax]
  4f626b:	mov    DWORD PTR [esp+0xc],eax
  4f626f:	mov    eax,DWORD PTR [esp+0x148]
  4f6276:	mov    DWORD PTR [esp+0x8],eax
  4f627a:	mov    DWORD PTR [esp],edi
  4f627d:	mov    DWORD PTR [esp+0x4],0x0
  4f6285:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f628a:	mov    ecx,DWORD PTR [esp+0x34]
  4f628e:	mov    eax,DWORD PTR [ecx]
  4f6290:	mov    eax,DWORD PTR [eax+0x50]
  4f6293:	mov    DWORD PTR [eax+0x188],edi
  4f6299:	test   esi,esi
  4f629b:	je     4f7ccb
  4f62a1:	mov    eax,DWORD PTR [ecx]
  4f62a3:	mov    eax,DWORD PTR [eax+0x50]
  4f62a6:	mov    eax,DWORD PTR [eax+0x188]
  4f62ac:	mov    edi,ecx
  4f62ae:	mov    ecx,DWORD PTR [esp+0x38]
  4f62b2:	mov    ecx,DWORD PTR [ecx]
  4f62b4:	mov    DWORD PTR [esp+0xc],ecx
  4f62b8:	mov    DWORD PTR [esp+0x8],eax
  4f62bc:	mov    DWORD PTR [esp],esi
  4f62bf:	mov    DWORD PTR [esp+0x4],0x55
  4f62c7:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f62cc:	mov    eax,DWORD PTR [ebp+0x8]
  4f62cf:	mov    eax,DWORD PTR [eax+0x14]
  4f62d2:	test   eax,eax
  4f62d4:	je     4f7ccb
  4f62da:	mov    ecx,DWORD PTR [esp+0x3c]
  4f62de:	mov    ecx,DWORD PTR [ecx]
  4f62e0:	mov    DWORD PTR [esp+0x8],ecx
  4f62e4:	mov    DWORD PTR [esp],eax
  4f62e7:	mov    DWORD PTR [esp+0x4],0x2
  4f62ef:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f62f4:	mov    esi,eax
  4f62f6:	mov    eax,DWORD PTR [edi]
  4f62f8:	mov    eax,DWORD PTR [eax+0x50]
  4f62fb:	cmp    DWORD PTR [eax+0x18c],0x0
  4f6302:	mov    ecx,edi
  4f6304:	jne    4f6361
  4f6306:	lea    eax,[ebx+0x4b1e4]
  4f630c:	mov    eax,DWORD PTR [eax]
  4f630e:	mov    DWORD PTR [esp+0x1c],eax
  4f6312:	mov    eax,DWORD PTR [esp+0x30]
  4f6316:	mov    eax,DWORD PTR [eax]
  4f6318:	mov    DWORD PTR [esp],eax
  4f631b:	call   20bfb2
  4f6320:	mov    edi,eax
  4f6322:	mov    eax,DWORD PTR [esp+0x1c]
  4f6326:	mov    DWORD PTR [esp+0x140],eax
  4f632d:	mov    eax,DWORD PTR [esp+0x2c]
  4f6331:	mov    eax,DWORD PTR [eax]
  4f6333:	mov    DWORD PTR [esp+0xc],eax
  4f6337:	mov    eax,DWORD PTR [esp+0x140]
  4f633e:	mov    DWORD PTR [esp+0x8],eax
  4f6342:	mov    DWORD PTR [esp],edi
  4f6345:	mov    DWORD PTR [esp+0x4],0x0
  4f634d:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6352:	mov    ecx,DWORD PTR [esp+0x34]
  4f6356:	mov    eax,DWORD PTR [ecx]
  4f6358:	mov    eax,DWORD PTR [eax+0x50]
  4f635b:	mov    DWORD PTR [eax+0x18c],edi
  4f6361:	test   esi,esi
  4f6363:	je     4f7ccb
  4f6369:	mov    eax,DWORD PTR [ecx]
  4f636b:	mov    eax,DWORD PTR [eax+0x50]
  4f636e:	mov    eax,DWORD PTR [eax+0x18c]
  4f6374:	mov    edi,ecx
  4f6376:	mov    ecx,DWORD PTR [esp+0x38]
  4f637a:	mov    ecx,DWORD PTR [ecx]
  4f637c:	mov    DWORD PTR [esp+0xc],ecx
  4f6380:	mov    DWORD PTR [esp+0x8],eax
  4f6384:	mov    DWORD PTR [esp],esi
  4f6387:	mov    DWORD PTR [esp+0x4],0xc
  4f638f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6394:	mov    eax,DWORD PTR [ebp+0x8]
  4f6397:	mov    eax,DWORD PTR [eax+0x14]
  4f639a:	test   eax,eax
  4f639c:	je     4f7ccb
  4f63a2:	mov    ecx,DWORD PTR [esp+0x3c]
  4f63a6:	mov    ecx,DWORD PTR [ecx]
  4f63a8:	mov    DWORD PTR [esp+0x8],ecx
  4f63ac:	mov    DWORD PTR [esp],eax
  4f63af:	mov    DWORD PTR [esp+0x4],0x2
  4f63b7:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f63bc:	mov    esi,eax
  4f63be:	mov    eax,DWORD PTR [edi]
  4f63c0:	mov    eax,DWORD PTR [eax+0x50]
  4f63c3:	cmp    DWORD PTR [eax+0x190],0x0
  4f63ca:	mov    ecx,edi
  4f63cc:	jne    4f6429
  4f63ce:	lea    eax,[ebx+0x4b1e8]
  4f63d4:	mov    eax,DWORD PTR [eax]
  4f63d6:	mov    DWORD PTR [esp+0x1c],eax
  4f63da:	mov    eax,DWORD PTR [esp+0x30]
  4f63de:	mov    eax,DWORD PTR [eax]
  4f63e0:	mov    DWORD PTR [esp],eax
  4f63e3:	call   20bfb2
  4f63e8:	mov    edi,eax
  4f63ea:	mov    eax,DWORD PTR [esp+0x1c]
  4f63ee:	mov    DWORD PTR [esp+0x138],eax
  4f63f5:	mov    eax,DWORD PTR [esp+0x2c]
  4f63f9:	mov    eax,DWORD PTR [eax]
  4f63fb:	mov    DWORD PTR [esp+0xc],eax
  4f63ff:	mov    eax,DWORD PTR [esp+0x138]
  4f6406:	mov    DWORD PTR [esp+0x8],eax
  4f640a:	mov    DWORD PTR [esp],edi
  4f640d:	mov    DWORD PTR [esp+0x4],0x0
  4f6415:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f641a:	mov    ecx,DWORD PTR [esp+0x34]
  4f641e:	mov    eax,DWORD PTR [ecx]
  4f6420:	mov    eax,DWORD PTR [eax+0x50]
  4f6423:	mov    DWORD PTR [eax+0x190],edi
  4f6429:	test   esi,esi
  4f642b:	je     4f7ccb
  4f6431:	mov    eax,DWORD PTR [ecx]
  4f6433:	mov    eax,DWORD PTR [eax+0x50]
  4f6436:	mov    eax,DWORD PTR [eax+0x190]
  4f643c:	mov    ecx,DWORD PTR [esp+0x38]
  4f6440:	mov    ecx,DWORD PTR [ecx]
  4f6442:	mov    DWORD PTR [esp+0xc],ecx
  4f6446:	mov    DWORD PTR [esp+0x8],eax
  4f644a:	mov    DWORD PTR [esp],esi
  4f644d:	mov    DWORD PTR [esp+0x4],0xb
  4f6455:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f645a:	mov    edi,DWORD PTR [ebp+0x8]
  4f645d:	mov    eax,DWORD PTR [edi+0x14]
  4f6460:	mov    DWORD PTR [esp+0x1c],eax
  4f6464:	mov    eax,DWORD PTR [esp+0x20]
  4f6468:	mov    eax,DWORD PTR [eax]
  4f646a:	mov    DWORD PTR [esp],eax
  4f646d:	call   20bfb2
  4f6472:	mov    esi,eax
  4f6474:	mov    eax,DWORD PTR [esp+0x28]
  4f6478:	mov    eax,DWORD PTR [eax]
  4f647a:	mov    DWORD PTR [esp+0x4],eax
  4f647e:	mov    DWORD PTR [esp],esi
  4f6481:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f6486:	mov    ecx,DWORD PTR [esp+0x1c]
  4f648a:	test   ecx,ecx
  4f648c:	je     4f7ccb
  4f6492:	mov    eax,DWORD PTR [esp+0x24]
  4f6496:	mov    eax,DWORD PTR [eax]
  4f6498:	mov    DWORD PTR [esp+0xc],eax
  4f649c:	mov    DWORD PTR [esp+0x8],esi
  4f64a0:	mov    DWORD PTR [esp],ecx
  4f64a3:	mov    DWORD PTR [esp+0x4],0x6
  4f64ab:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f64b0:	mov    eax,DWORD PTR [edi+0x14]
  4f64b3:	test   eax,eax
  4f64b5:	je     4f7ccb
  4f64bb:	mov    ecx,DWORD PTR [esp+0x3c]
  4f64bf:	mov    ecx,DWORD PTR [ecx]
  4f64c1:	mov    DWORD PTR [esp+0x8],ecx
  4f64c5:	mov    DWORD PTR [esp],eax
  4f64c8:	mov    DWORD PTR [esp+0x4],0x6
  4f64d0:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f64d5:	mov    edx,eax
  4f64d7:	mov    esi,DWORD PTR [esp+0x34]
  4f64db:	mov    eax,DWORD PTR [esi]
  4f64dd:	mov    eax,DWORD PTR [eax+0x50]
  4f64e0:	cmp    DWORD PTR [eax+0x194],0x0
  4f64e7:	jne    4f654b
  4f64e9:	lea    eax,[ebx+0x4b1ec]
  4f64ef:	mov    eax,DWORD PTR [eax]
  4f64f1:	mov    DWORD PTR [esp+0x1c],eax
  4f64f5:	mov    eax,DWORD PTR [esp+0x30]
  4f64f9:	mov    eax,DWORD PTR [eax]
  4f64fb:	mov    DWORD PTR [esp],eax
  4f64fe:	mov    esi,edx
  4f6500:	call   20bfb2
  4f6505:	mov    edi,eax
  4f6507:	mov    eax,DWORD PTR [esp+0x1c]
  4f650b:	mov    DWORD PTR [esp+0x130],eax
  4f6512:	mov    eax,DWORD PTR [esp+0x2c]
  4f6516:	mov    eax,DWORD PTR [eax]
  4f6518:	mov    DWORD PTR [esp+0xc],eax
  4f651c:	mov    eax,DWORD PTR [esp+0x130]
  4f6523:	mov    DWORD PTR [esp+0x8],eax
  4f6527:	mov    DWORD PTR [esp],edi
  4f652a:	mov    DWORD PTR [esp+0x4],0x0
  4f6532:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6537:	mov    edx,esi
  4f6539:	mov    esi,DWORD PTR [esp+0x34]
  4f653d:	mov    eax,DWORD PTR [esi]
  4f653f:	mov    eax,DWORD PTR [eax+0x50]
  4f6542:	mov    DWORD PTR [eax+0x194],edi
  4f6548:	mov    edi,DWORD PTR [ebp+0x8]
  4f654b:	test   edx,edx
  4f654d:	je     4f7ccb
  4f6553:	mov    eax,DWORD PTR [esi]
  4f6555:	mov    eax,DWORD PTR [eax+0x50]
  4f6558:	mov    eax,DWORD PTR [eax+0x194]
  4f655e:	mov    ecx,DWORD PTR [esp+0x38]
  4f6562:	mov    ecx,DWORD PTR [ecx]
  4f6564:	mov    DWORD PTR [esp+0xc],ecx
  4f6568:	mov    DWORD PTR [esp+0x8],eax
  4f656c:	mov    DWORD PTR [esp],edx
  4f656f:	mov    DWORD PTR [esp+0x4],0x2e
  4f6577:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f657c:	mov    eax,DWORD PTR [edi+0x14]
  4f657f:	test   eax,eax
  4f6581:	je     4f7ccb
  4f6587:	mov    ecx,DWORD PTR [esp+0x3c]
  4f658b:	mov    ecx,DWORD PTR [ecx]
  4f658d:	mov    DWORD PTR [esp+0x8],ecx
  4f6591:	mov    DWORD PTR [esp],eax
  4f6594:	mov    DWORD PTR [esp+0x4],0x6
  4f659c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f65a1:	mov    edx,eax
  4f65a3:	mov    eax,DWORD PTR [esi]
  4f65a5:	mov    eax,DWORD PTR [eax+0x50]
  4f65a8:	cmp    DWORD PTR [eax+0x198],0x0
  4f65af:	jne    4f6613
  4f65b1:	lea    eax,[ebx+0x4b1f0]
  4f65b7:	mov    eax,DWORD PTR [eax]
  4f65b9:	mov    DWORD PTR [esp+0x1c],eax
  4f65bd:	mov    eax,DWORD PTR [esp+0x30]
  4f65c1:	mov    eax,DWORD PTR [eax]
  4f65c3:	mov    DWORD PTR [esp],eax
  4f65c6:	mov    esi,edx
  4f65c8:	call   20bfb2
  4f65cd:	mov    edi,eax
  4f65cf:	mov    eax,DWORD PTR [esp+0x1c]
  4f65d3:	mov    DWORD PTR [esp+0x128],eax
  4f65da:	mov    eax,DWORD PTR [esp+0x2c]
  4f65de:	mov    eax,DWORD PTR [eax]
  4f65e0:	mov    DWORD PTR [esp+0xc],eax
  4f65e4:	mov    eax,DWORD PTR [esp+0x128]
  4f65eb:	mov    DWORD PTR [esp+0x8],eax
  4f65ef:	mov    DWORD PTR [esp],edi
  4f65f2:	mov    DWORD PTR [esp+0x4],0x0
  4f65fa:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f65ff:	mov    edx,esi
  4f6601:	mov    esi,DWORD PTR [esp+0x34]
  4f6605:	mov    eax,DWORD PTR [esi]
  4f6607:	mov    eax,DWORD PTR [eax+0x50]
  4f660a:	mov    DWORD PTR [eax+0x198],edi
  4f6610:	mov    edi,DWORD PTR [ebp+0x8]
  4f6613:	test   edx,edx
  4f6615:	je     4f7ccb
  4f661b:	mov    eax,DWORD PTR [esi]
  4f661d:	mov    eax,DWORD PTR [eax+0x50]
  4f6620:	mov    eax,DWORD PTR [eax+0x198]
  4f6626:	mov    ecx,DWORD PTR [esp+0x38]
  4f662a:	mov    ecx,DWORD PTR [ecx]
  4f662c:	mov    DWORD PTR [esp+0xc],ecx
  4f6630:	mov    DWORD PTR [esp+0x8],eax
  4f6634:	mov    DWORD PTR [esp],edx
  4f6637:	mov    DWORD PTR [esp+0x4],0x2f
  4f663f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6644:	mov    eax,DWORD PTR [edi+0x14]
  4f6647:	test   eax,eax
  4f6649:	je     4f7ccb
  4f664f:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6653:	mov    ecx,DWORD PTR [ecx]
  4f6655:	mov    DWORD PTR [esp+0x8],ecx
  4f6659:	mov    DWORD PTR [esp],eax
  4f665c:	mov    DWORD PTR [esp+0x4],0x6
  4f6664:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6669:	mov    edx,eax
  4f666b:	mov    eax,DWORD PTR [esi]
  4f666d:	mov    eax,DWORD PTR [eax+0x50]
  4f6670:	cmp    DWORD PTR [eax+0x19c],0x0
  4f6677:	jne    4f66db
  4f6679:	lea    eax,[ebx+0x4b1f4]
  4f667f:	mov    eax,DWORD PTR [eax]
  4f6681:	mov    DWORD PTR [esp+0x1c],eax
  4f6685:	mov    eax,DWORD PTR [esp+0x30]
  4f6689:	mov    eax,DWORD PTR [eax]
  4f668b:	mov    DWORD PTR [esp],eax
  4f668e:	mov    esi,edx
  4f6690:	call   20bfb2
  4f6695:	mov    edi,eax
  4f6697:	mov    eax,DWORD PTR [esp+0x1c]
  4f669b:	mov    DWORD PTR [esp+0x120],eax
  4f66a2:	mov    eax,DWORD PTR [esp+0x2c]
  4f66a6:	mov    eax,DWORD PTR [eax]
  4f66a8:	mov    DWORD PTR [esp+0xc],eax
  4f66ac:	mov    eax,DWORD PTR [esp+0x120]
  4f66b3:	mov    DWORD PTR [esp+0x8],eax
  4f66b7:	mov    DWORD PTR [esp],edi
  4f66ba:	mov    DWORD PTR [esp+0x4],0x0
  4f66c2:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f66c7:	mov    edx,esi
  4f66c9:	mov    esi,DWORD PTR [esp+0x34]
  4f66cd:	mov    eax,DWORD PTR [esi]
  4f66cf:	mov    eax,DWORD PTR [eax+0x50]
  4f66d2:	mov    DWORD PTR [eax+0x19c],edi
  4f66d8:	mov    edi,DWORD PTR [ebp+0x8]
  4f66db:	test   edx,edx
  4f66dd:	je     4f7ccb
  4f66e3:	mov    eax,DWORD PTR [esi]
  4f66e5:	mov    eax,DWORD PTR [eax+0x50]
  4f66e8:	mov    eax,DWORD PTR [eax+0x19c]
  4f66ee:	mov    ecx,DWORD PTR [esp+0x38]
  4f66f2:	mov    ecx,DWORD PTR [ecx]
  4f66f4:	mov    DWORD PTR [esp+0xc],ecx
  4f66f8:	mov    DWORD PTR [esp+0x8],eax
  4f66fc:	mov    DWORD PTR [esp],edx
  4f66ff:	mov    DWORD PTR [esp+0x4],0x30
  4f6707:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f670c:	mov    eax,DWORD PTR [edi+0x14]
  4f670f:	test   eax,eax
  4f6711:	je     4f7ccb
  4f6717:	mov    ecx,DWORD PTR [esp+0x3c]
  4f671b:	mov    ecx,DWORD PTR [ecx]
  4f671d:	mov    DWORD PTR [esp+0x8],ecx
  4f6721:	mov    DWORD PTR [esp],eax
  4f6724:	mov    DWORD PTR [esp+0x4],0x6
  4f672c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6731:	mov    edx,eax
  4f6733:	mov    eax,DWORD PTR [esi]
  4f6735:	mov    eax,DWORD PTR [eax+0x50]
  4f6738:	cmp    DWORD PTR [eax+0x1a0],0x0
  4f673f:	jne    4f67a3
  4f6741:	lea    eax,[ebx+0x4b1f8]
  4f6747:	mov    eax,DWORD PTR [eax]
  4f6749:	mov    DWORD PTR [esp+0x1c],eax
  4f674d:	mov    eax,DWORD PTR [esp+0x30]
  4f6751:	mov    eax,DWORD PTR [eax]
  4f6753:	mov    DWORD PTR [esp],eax
  4f6756:	mov    esi,edx
  4f6758:	call   20bfb2
  4f675d:	mov    edi,eax
  4f675f:	mov    eax,DWORD PTR [esp+0x1c]
  4f6763:	mov    DWORD PTR [esp+0x118],eax
  4f676a:	mov    eax,DWORD PTR [esp+0x2c]
  4f676e:	mov    eax,DWORD PTR [eax]
  4f6770:	mov    DWORD PTR [esp+0xc],eax
  4f6774:	mov    eax,DWORD PTR [esp+0x118]
  4f677b:	mov    DWORD PTR [esp+0x8],eax
  4f677f:	mov    DWORD PTR [esp],edi
  4f6782:	mov    DWORD PTR [esp+0x4],0x0
  4f678a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f678f:	mov    edx,esi
  4f6791:	mov    esi,DWORD PTR [esp+0x34]
  4f6795:	mov    eax,DWORD PTR [esi]
  4f6797:	mov    eax,DWORD PTR [eax+0x50]
  4f679a:	mov    DWORD PTR [eax+0x1a0],edi
  4f67a0:	mov    edi,DWORD PTR [ebp+0x8]
  4f67a3:	test   edx,edx
  4f67a5:	je     4f7ccb
  4f67ab:	mov    eax,DWORD PTR [esi]
  4f67ad:	mov    eax,DWORD PTR [eax+0x50]
  4f67b0:	mov    eax,DWORD PTR [eax+0x1a0]
  4f67b6:	mov    ecx,DWORD PTR [esp+0x38]
  4f67ba:	mov    ecx,DWORD PTR [ecx]
  4f67bc:	mov    DWORD PTR [esp+0xc],ecx
  4f67c0:	mov    DWORD PTR [esp+0x8],eax
  4f67c4:	mov    DWORD PTR [esp],edx
  4f67c7:	mov    DWORD PTR [esp+0x4],0x31
  4f67cf:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f67d4:	mov    eax,DWORD PTR [edi+0x14]
  4f67d7:	test   eax,eax
  4f67d9:	je     4f7ccb
  4f67df:	mov    ecx,DWORD PTR [esp+0x3c]
  4f67e3:	mov    ecx,DWORD PTR [ecx]
  4f67e5:	mov    DWORD PTR [esp+0x8],ecx
  4f67e9:	mov    DWORD PTR [esp],eax
  4f67ec:	mov    DWORD PTR [esp+0x4],0x6
  4f67f4:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f67f9:	mov    edx,eax
  4f67fb:	mov    eax,DWORD PTR [esi]
  4f67fd:	mov    eax,DWORD PTR [eax+0x50]
  4f6800:	cmp    DWORD PTR [eax+0x1a4],0x0
  4f6807:	jne    4f686b
  4f6809:	lea    eax,[ebx+0x4b1fc]
  4f680f:	mov    eax,DWORD PTR [eax]
  4f6811:	mov    DWORD PTR [esp+0x1c],eax
  4f6815:	mov    eax,DWORD PTR [esp+0x30]
  4f6819:	mov    eax,DWORD PTR [eax]
  4f681b:	mov    DWORD PTR [esp],eax
  4f681e:	mov    esi,edx
  4f6820:	call   20bfb2
  4f6825:	mov    edi,eax
  4f6827:	mov    eax,DWORD PTR [esp+0x1c]
  4f682b:	mov    DWORD PTR [esp+0x110],eax
  4f6832:	mov    eax,DWORD PTR [esp+0x2c]
  4f6836:	mov    eax,DWORD PTR [eax]
  4f6838:	mov    DWORD PTR [esp+0xc],eax
  4f683c:	mov    eax,DWORD PTR [esp+0x110]
  4f6843:	mov    DWORD PTR [esp+0x8],eax
  4f6847:	mov    DWORD PTR [esp],edi
  4f684a:	mov    DWORD PTR [esp+0x4],0x0
  4f6852:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6857:	mov    edx,esi
  4f6859:	mov    esi,DWORD PTR [esp+0x34]
  4f685d:	mov    eax,DWORD PTR [esi]
  4f685f:	mov    eax,DWORD PTR [eax+0x50]
  4f6862:	mov    DWORD PTR [eax+0x1a4],edi
  4f6868:	mov    edi,DWORD PTR [ebp+0x8]
  4f686b:	test   edx,edx
  4f686d:	je     4f7ccb
  4f6873:	mov    eax,DWORD PTR [esi]
  4f6875:	mov    eax,DWORD PTR [eax+0x50]
  4f6878:	mov    eax,DWORD PTR [eax+0x1a4]
  4f687e:	mov    ecx,DWORD PTR [esp+0x38]
  4f6882:	mov    ecx,DWORD PTR [ecx]
  4f6884:	mov    DWORD PTR [esp+0xc],ecx
  4f6888:	mov    DWORD PTR [esp+0x8],eax
  4f688c:	mov    DWORD PTR [esp],edx
  4f688f:	mov    DWORD PTR [esp+0x4],0x32
  4f6897:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f689c:	mov    eax,DWORD PTR [edi+0x14]
  4f689f:	test   eax,eax
  4f68a1:	je     4f7ccb
  4f68a7:	mov    ecx,DWORD PTR [esp+0x3c]
  4f68ab:	mov    ecx,DWORD PTR [ecx]
  4f68ad:	mov    DWORD PTR [esp+0x8],ecx
  4f68b1:	mov    DWORD PTR [esp],eax
  4f68b4:	mov    DWORD PTR [esp+0x4],0x6
  4f68bc:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f68c1:	mov    edx,eax
  4f68c3:	mov    eax,DWORD PTR [esi]
  4f68c5:	mov    eax,DWORD PTR [eax+0x50]
  4f68c8:	cmp    DWORD PTR [eax+0x1a8],0x0
  4f68cf:	jne    4f6933
  4f68d1:	lea    eax,[ebx+0x4b200]
  4f68d7:	mov    eax,DWORD PTR [eax]
  4f68d9:	mov    DWORD PTR [esp+0x1c],eax
  4f68dd:	mov    eax,DWORD PTR [esp+0x30]
  4f68e1:	mov    eax,DWORD PTR [eax]
  4f68e3:	mov    DWORD PTR [esp],eax
  4f68e6:	mov    esi,edx
  4f68e8:	call   20bfb2
  4f68ed:	mov    edi,eax
  4f68ef:	mov    eax,DWORD PTR [esp+0x1c]
  4f68f3:	mov    DWORD PTR [esp+0x108],eax
  4f68fa:	mov    eax,DWORD PTR [esp+0x2c]
  4f68fe:	mov    eax,DWORD PTR [eax]
  4f6900:	mov    DWORD PTR [esp+0xc],eax
  4f6904:	mov    eax,DWORD PTR [esp+0x108]
  4f690b:	mov    DWORD PTR [esp+0x8],eax
  4f690f:	mov    DWORD PTR [esp],edi
  4f6912:	mov    DWORD PTR [esp+0x4],0x0
  4f691a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f691f:	mov    edx,esi
  4f6921:	mov    esi,DWORD PTR [esp+0x34]
  4f6925:	mov    eax,DWORD PTR [esi]
  4f6927:	mov    eax,DWORD PTR [eax+0x50]
  4f692a:	mov    DWORD PTR [eax+0x1a8],edi
  4f6930:	mov    edi,DWORD PTR [ebp+0x8]
  4f6933:	test   edx,edx
  4f6935:	je     4f7ccb
  4f693b:	mov    eax,DWORD PTR [esi]
  4f693d:	mov    eax,DWORD PTR [eax+0x50]
  4f6940:	mov    eax,DWORD PTR [eax+0x1a8]
  4f6946:	mov    ecx,DWORD PTR [esp+0x38]
  4f694a:	mov    ecx,DWORD PTR [ecx]
  4f694c:	mov    DWORD PTR [esp+0xc],ecx
  4f6950:	mov    DWORD PTR [esp+0x8],eax
  4f6954:	mov    DWORD PTR [esp],edx
  4f6957:	mov    DWORD PTR [esp+0x4],0x75
  4f695f:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6964:	mov    eax,DWORD PTR [edi+0x14]
  4f6967:	test   eax,eax
  4f6969:	je     4f7ccb
  4f696f:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6973:	mov    ecx,DWORD PTR [ecx]
  4f6975:	mov    DWORD PTR [esp+0x8],ecx
  4f6979:	mov    DWORD PTR [esp],eax
  4f697c:	mov    DWORD PTR [esp+0x4],0x6
  4f6984:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6989:	mov    edx,eax
  4f698b:	mov    eax,DWORD PTR [esi]
  4f698d:	mov    eax,DWORD PTR [eax+0x50]
  4f6990:	cmp    DWORD PTR [eax+0x1ac],0x0
  4f6997:	jne    4f69fb
  4f6999:	lea    eax,[ebx+0x4b204]
  4f699f:	mov    eax,DWORD PTR [eax]
  4f69a1:	mov    DWORD PTR [esp+0x1c],eax
  4f69a5:	mov    eax,DWORD PTR [esp+0x30]
  4f69a9:	mov    eax,DWORD PTR [eax]
  4f69ab:	mov    DWORD PTR [esp],eax
  4f69ae:	mov    esi,edx
  4f69b0:	call   20bfb2
  4f69b5:	mov    edi,eax
  4f69b7:	mov    eax,DWORD PTR [esp+0x1c]
  4f69bb:	mov    DWORD PTR [esp+0x100],eax
  4f69c2:	mov    eax,DWORD PTR [esp+0x2c]
  4f69c6:	mov    eax,DWORD PTR [eax]
  4f69c8:	mov    DWORD PTR [esp+0xc],eax
  4f69cc:	mov    eax,DWORD PTR [esp+0x100]
  4f69d3:	mov    DWORD PTR [esp+0x8],eax
  4f69d7:	mov    DWORD PTR [esp],edi
  4f69da:	mov    DWORD PTR [esp+0x4],0x0
  4f69e2:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f69e7:	mov    edx,esi
  4f69e9:	mov    esi,DWORD PTR [esp+0x34]
  4f69ed:	mov    eax,DWORD PTR [esi]
  4f69ef:	mov    eax,DWORD PTR [eax+0x50]
  4f69f2:	mov    DWORD PTR [eax+0x1ac],edi
  4f69f8:	mov    edi,DWORD PTR [ebp+0x8]
  4f69fb:	test   edx,edx
  4f69fd:	je     4f7ccb
  4f6a03:	mov    eax,DWORD PTR [esi]
  4f6a05:	mov    eax,DWORD PTR [eax+0x50]
  4f6a08:	mov    eax,DWORD PTR [eax+0x1ac]
  4f6a0e:	mov    ecx,DWORD PTR [esp+0x38]
  4f6a12:	mov    ecx,DWORD PTR [ecx]
  4f6a14:	mov    DWORD PTR [esp+0xc],ecx
  4f6a18:	mov    DWORD PTR [esp+0x8],eax
  4f6a1c:	mov    DWORD PTR [esp],edx
  4f6a1f:	mov    DWORD PTR [esp+0x4],0x74
  4f6a27:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6a2c:	mov    eax,DWORD PTR [edi+0x14]
  4f6a2f:	test   eax,eax
  4f6a31:	je     4f7ccb
  4f6a37:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6a3b:	mov    ecx,DWORD PTR [ecx]
  4f6a3d:	mov    DWORD PTR [esp+0x8],ecx
  4f6a41:	mov    DWORD PTR [esp],eax
  4f6a44:	mov    DWORD PTR [esp+0x4],0x6
  4f6a4c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6a51:	mov    DWORD PTR [esp+0x1c],eax
  4f6a55:	lea    eax,[ebx+0x4b208]
  4f6a5b:	mov    esi,DWORD PTR [eax]
  4f6a5d:	mov    eax,DWORD PTR [esp+0x30]
  4f6a61:	mov    eax,DWORD PTR [eax]
  4f6a63:	mov    DWORD PTR [esp],eax
  4f6a66:	call   20bfb2
  4f6a6b:	mov    edi,eax
  4f6a6d:	mov    DWORD PTR [esp+0xf8],esi
  4f6a74:	mov    eax,DWORD PTR [esp+0x2c]
  4f6a78:	mov    eax,DWORD PTR [eax]
  4f6a7a:	mov    DWORD PTR [esp+0xc],eax
  4f6a7e:	mov    eax,DWORD PTR [esp+0xf8]
  4f6a85:	mov    DWORD PTR [esp+0x8],eax
  4f6a89:	mov    esi,DWORD PTR [ebp+0x8]
  4f6a8c:	mov    DWORD PTR [esp+0x4],esi
  4f6a90:	mov    DWORD PTR [esp],edi
  4f6a93:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6a98:	mov    ecx,DWORD PTR [esp+0x1c]
  4f6a9c:	test   ecx,ecx
  4f6a9e:	je     4f7ccb
  4f6aa4:	mov    eax,DWORD PTR [esp+0x38]
  4f6aa8:	mov    eax,DWORD PTR [eax]
  4f6aaa:	mov    DWORD PTR [esp+0xc],eax
  4f6aae:	mov    DWORD PTR [esp+0x8],edi
  4f6ab2:	mov    DWORD PTR [esp],ecx
  4f6ab5:	mov    DWORD PTR [esp+0x4],0x64
  4f6abd:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6ac2:	mov    eax,DWORD PTR [esi+0x14]
  4f6ac5:	test   eax,eax
  4f6ac7:	je     4f7ccb
  4f6acd:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6ad1:	mov    ecx,DWORD PTR [ecx]
  4f6ad3:	mov    DWORD PTR [esp+0x8],ecx
  4f6ad7:	mov    DWORD PTR [esp],eax
  4f6ada:	mov    DWORD PTR [esp+0x4],0x6
  4f6ae2:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6ae7:	mov    esi,eax
  4f6ae9:	mov    ecx,DWORD PTR [esp+0x34]
  4f6aed:	mov    eax,DWORD PTR [ecx]
  4f6aef:	mov    eax,DWORD PTR [eax+0x50]
  4f6af2:	cmp    DWORD PTR [eax+0x1b0],0x0
  4f6af9:	jne    4f6b56
  4f6afb:	lea    eax,[ebx+0x4b20c]
  4f6b01:	mov    eax,DWORD PTR [eax]
  4f6b03:	mov    DWORD PTR [esp+0x1c],eax
  4f6b07:	mov    eax,DWORD PTR [esp+0x30]
  4f6b0b:	mov    eax,DWORD PTR [eax]
  4f6b0d:	mov    DWORD PTR [esp],eax
  4f6b10:	call   20bfb2
  4f6b15:	mov    edi,eax
  4f6b17:	mov    eax,DWORD PTR [esp+0x1c]
  4f6b1b:	mov    DWORD PTR [esp+0xf0],eax
  4f6b22:	mov    eax,DWORD PTR [esp+0x2c]
  4f6b26:	mov    eax,DWORD PTR [eax]
  4f6b28:	mov    DWORD PTR [esp+0xc],eax
  4f6b2c:	mov    eax,DWORD PTR [esp+0xf0]
  4f6b33:	mov    DWORD PTR [esp+0x8],eax
  4f6b37:	mov    DWORD PTR [esp],edi
  4f6b3a:	mov    DWORD PTR [esp+0x4],0x0
  4f6b42:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6b47:	mov    ecx,DWORD PTR [esp+0x34]
  4f6b4b:	mov    eax,DWORD PTR [ecx]
  4f6b4d:	mov    eax,DWORD PTR [eax+0x50]
  4f6b50:	mov    DWORD PTR [eax+0x1b0],edi
  4f6b56:	test   esi,esi
  4f6b58:	je     4f7ccb
  4f6b5e:	mov    eax,DWORD PTR [ecx]
  4f6b60:	mov    eax,DWORD PTR [eax+0x50]
  4f6b63:	mov    eax,DWORD PTR [eax+0x1b0]
  4f6b69:	mov    edi,ecx
  4f6b6b:	mov    ecx,DWORD PTR [esp+0x38]
  4f6b6f:	mov    ecx,DWORD PTR [ecx]
  4f6b71:	mov    DWORD PTR [esp+0xc],ecx
  4f6b75:	mov    DWORD PTR [esp+0x8],eax
  4f6b79:	mov    DWORD PTR [esp],esi
  4f6b7c:	mov    DWORD PTR [esp+0x4],0x65
  4f6b84:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6b89:	mov    eax,DWORD PTR [ebp+0x8]
  4f6b8c:	mov    eax,DWORD PTR [eax+0x14]
  4f6b8f:	test   eax,eax
  4f6b91:	je     4f7ccb
  4f6b97:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6b9b:	mov    ecx,DWORD PTR [ecx]
  4f6b9d:	mov    DWORD PTR [esp+0x8],ecx
  4f6ba1:	mov    DWORD PTR [esp],eax
  4f6ba4:	mov    DWORD PTR [esp+0x4],0x6
  4f6bac:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6bb1:	mov    esi,eax
  4f6bb3:	mov    eax,DWORD PTR [edi]
  4f6bb5:	mov    eax,DWORD PTR [eax+0x50]
  4f6bb8:	cmp    DWORD PTR [eax+0x1b4],0x0
  4f6bbf:	mov    ecx,edi
  4f6bc1:	jne    4f6c1e
  4f6bc3:	lea    eax,[ebx+0x4b210]
  4f6bc9:	mov    eax,DWORD PTR [eax]
  4f6bcb:	mov    DWORD PTR [esp+0x1c],eax
  4f6bcf:	mov    eax,DWORD PTR [esp+0x30]
  4f6bd3:	mov    eax,DWORD PTR [eax]
  4f6bd5:	mov    DWORD PTR [esp],eax
  4f6bd8:	call   20bfb2
  4f6bdd:	mov    edi,eax
  4f6bdf:	mov    eax,DWORD PTR [esp+0x1c]
  4f6be3:	mov    DWORD PTR [esp+0xe8],eax
  4f6bea:	mov    eax,DWORD PTR [esp+0x2c]
  4f6bee:	mov    eax,DWORD PTR [eax]
  4f6bf0:	mov    DWORD PTR [esp+0xc],eax
  4f6bf4:	mov    eax,DWORD PTR [esp+0xe8]
  4f6bfb:	mov    DWORD PTR [esp+0x8],eax
  4f6bff:	mov    DWORD PTR [esp],edi
  4f6c02:	mov    DWORD PTR [esp+0x4],0x0
  4f6c0a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6c0f:	mov    ecx,DWORD PTR [esp+0x34]
  4f6c13:	mov    eax,DWORD PTR [ecx]
  4f6c15:	mov    eax,DWORD PTR [eax+0x50]
  4f6c18:	mov    DWORD PTR [eax+0x1b4],edi
  4f6c1e:	test   esi,esi
  4f6c20:	je     4f7ccb
  4f6c26:	mov    eax,DWORD PTR [ecx]
  4f6c28:	mov    eax,DWORD PTR [eax+0x50]
  4f6c2b:	mov    eax,DWORD PTR [eax+0x1b4]
  4f6c31:	mov    edi,ecx
  4f6c33:	mov    ecx,DWORD PTR [esp+0x38]
  4f6c37:	mov    ecx,DWORD PTR [ecx]
  4f6c39:	mov    DWORD PTR [esp+0xc],ecx
  4f6c3d:	mov    DWORD PTR [esp+0x8],eax
  4f6c41:	mov    DWORD PTR [esp],esi
  4f6c44:	mov    DWORD PTR [esp+0x4],0x15
  4f6c4c:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6c51:	mov    eax,DWORD PTR [ebp+0x8]
  4f6c54:	mov    eax,DWORD PTR [eax+0x14]
  4f6c57:	test   eax,eax
  4f6c59:	je     4f7ccb
  4f6c5f:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6c63:	mov    ecx,DWORD PTR [ecx]
  4f6c65:	mov    DWORD PTR [esp+0x8],ecx
  4f6c69:	mov    DWORD PTR [esp],eax
  4f6c6c:	mov    DWORD PTR [esp+0x4],0x6
  4f6c74:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6c79:	mov    esi,eax
  4f6c7b:	mov    eax,DWORD PTR [edi]
  4f6c7d:	mov    eax,DWORD PTR [eax+0x50]
  4f6c80:	cmp    DWORD PTR [eax+0x1b8],0x0
  4f6c87:	mov    ecx,edi
  4f6c89:	jne    4f6ce6
  4f6c8b:	lea    eax,[ebx+0x4b214]
  4f6c91:	mov    eax,DWORD PTR [eax]
  4f6c93:	mov    DWORD PTR [esp+0x1c],eax
  4f6c97:	mov    eax,DWORD PTR [esp+0x30]
  4f6c9b:	mov    eax,DWORD PTR [eax]
  4f6c9d:	mov    DWORD PTR [esp],eax
  4f6ca0:	call   20bfb2
  4f6ca5:	mov    edi,eax
  4f6ca7:	mov    eax,DWORD PTR [esp+0x1c]
  4f6cab:	mov    DWORD PTR [esp+0xe0],eax
  4f6cb2:	mov    eax,DWORD PTR [esp+0x2c]
  4f6cb6:	mov    eax,DWORD PTR [eax]
  4f6cb8:	mov    DWORD PTR [esp+0xc],eax
  4f6cbc:	mov    eax,DWORD PTR [esp+0xe0]
  4f6cc3:	mov    DWORD PTR [esp+0x8],eax
  4f6cc7:	mov    DWORD PTR [esp],edi
  4f6cca:	mov    DWORD PTR [esp+0x4],0x0
  4f6cd2:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6cd7:	mov    ecx,DWORD PTR [esp+0x34]
  4f6cdb:	mov    eax,DWORD PTR [ecx]
  4f6cdd:	mov    eax,DWORD PTR [eax+0x50]
  4f6ce0:	mov    DWORD PTR [eax+0x1b8],edi
  4f6ce6:	test   esi,esi
  4f6ce8:	je     4f7ccb
  4f6cee:	mov    eax,DWORD PTR [ecx]
  4f6cf0:	mov    eax,DWORD PTR [eax+0x50]
  4f6cf3:	mov    eax,DWORD PTR [eax+0x1b8]
  4f6cf9:	mov    edi,ecx
  4f6cfb:	mov    ecx,DWORD PTR [esp+0x38]
  4f6cff:	mov    ecx,DWORD PTR [ecx]
  4f6d01:	mov    DWORD PTR [esp+0xc],ecx
  4f6d05:	mov    DWORD PTR [esp+0x8],eax
  4f6d09:	mov    DWORD PTR [esp],esi
  4f6d0c:	mov    DWORD PTR [esp+0x4],0x37
  4f6d14:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6d19:	mov    eax,DWORD PTR [ebp+0x8]
  4f6d1c:	mov    eax,DWORD PTR [eax+0x14]
  4f6d1f:	test   eax,eax
  4f6d21:	je     4f7ccb
  4f6d27:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6d2b:	mov    ecx,DWORD PTR [ecx]
  4f6d2d:	mov    DWORD PTR [esp+0x8],ecx
  4f6d31:	mov    DWORD PTR [esp],eax
  4f6d34:	mov    DWORD PTR [esp+0x4],0x6
  4f6d3c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6d41:	mov    esi,eax
  4f6d43:	mov    eax,DWORD PTR [edi]
  4f6d45:	mov    eax,DWORD PTR [eax+0x50]
  4f6d48:	cmp    DWORD PTR [eax+0x1bc],0x0
  4f6d4f:	mov    ecx,edi
  4f6d51:	jne    4f6dae
  4f6d53:	lea    eax,[ebx+0x4b218]
  4f6d59:	mov    eax,DWORD PTR [eax]
  4f6d5b:	mov    DWORD PTR [esp+0x1c],eax
  4f6d5f:	mov    eax,DWORD PTR [esp+0x30]
  4f6d63:	mov    eax,DWORD PTR [eax]
  4f6d65:	mov    DWORD PTR [esp],eax
  4f6d68:	call   20bfb2
  4f6d6d:	mov    edi,eax
  4f6d6f:	mov    eax,DWORD PTR [esp+0x1c]
  4f6d73:	mov    DWORD PTR [esp+0xd8],eax
  4f6d7a:	mov    eax,DWORD PTR [esp+0x2c]
  4f6d7e:	mov    eax,DWORD PTR [eax]
  4f6d80:	mov    DWORD PTR [esp+0xc],eax
  4f6d84:	mov    eax,DWORD PTR [esp+0xd8]
  4f6d8b:	mov    DWORD PTR [esp+0x8],eax
  4f6d8f:	mov    DWORD PTR [esp],edi
  4f6d92:	mov    DWORD PTR [esp+0x4],0x0
  4f6d9a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6d9f:	mov    ecx,DWORD PTR [esp+0x34]
  4f6da3:	mov    eax,DWORD PTR [ecx]
  4f6da5:	mov    eax,DWORD PTR [eax+0x50]
  4f6da8:	mov    DWORD PTR [eax+0x1bc],edi
  4f6dae:	test   esi,esi
  4f6db0:	je     4f7ccb
  4f6db6:	mov    eax,DWORD PTR [ecx]
  4f6db8:	mov    eax,DWORD PTR [eax+0x50]
  4f6dbb:	mov    eax,DWORD PTR [eax+0x1bc]
  4f6dc1:	mov    edi,ecx
  4f6dc3:	mov    ecx,DWORD PTR [esp+0x38]
  4f6dc7:	mov    ecx,DWORD PTR [ecx]
  4f6dc9:	mov    DWORD PTR [esp+0xc],ecx
  4f6dcd:	mov    DWORD PTR [esp+0x8],eax
  4f6dd1:	mov    DWORD PTR [esp],esi
  4f6dd4:	mov    DWORD PTR [esp+0x4],0x54
  4f6ddc:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6de1:	mov    eax,DWORD PTR [ebp+0x8]
  4f6de4:	mov    eax,DWORD PTR [eax+0x14]
  4f6de7:	test   eax,eax
  4f6de9:	je     4f7ccb
  4f6def:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6df3:	mov    ecx,DWORD PTR [ecx]
  4f6df5:	mov    DWORD PTR [esp+0x8],ecx
  4f6df9:	mov    DWORD PTR [esp],eax
  4f6dfc:	mov    DWORD PTR [esp+0x4],0x6
  4f6e04:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6e09:	mov    esi,eax
  4f6e0b:	mov    eax,DWORD PTR [edi]
  4f6e0d:	mov    eax,DWORD PTR [eax+0x50]
  4f6e10:	cmp    DWORD PTR [eax+0x1c0],0x0
  4f6e17:	mov    ecx,edi
  4f6e19:	jne    4f6e76
  4f6e1b:	lea    eax,[ebx+0x4b21c]
  4f6e21:	mov    eax,DWORD PTR [eax]
  4f6e23:	mov    DWORD PTR [esp+0x1c],eax
  4f6e27:	mov    eax,DWORD PTR [esp+0x30]
  4f6e2b:	mov    eax,DWORD PTR [eax]
  4f6e2d:	mov    DWORD PTR [esp],eax
  4f6e30:	call   20bfb2
  4f6e35:	mov    edi,eax
  4f6e37:	mov    eax,DWORD PTR [esp+0x1c]
  4f6e3b:	mov    DWORD PTR [esp+0xd0],eax
  4f6e42:	mov    eax,DWORD PTR [esp+0x2c]
  4f6e46:	mov    eax,DWORD PTR [eax]
  4f6e48:	mov    DWORD PTR [esp+0xc],eax
  4f6e4c:	mov    eax,DWORD PTR [esp+0xd0]
  4f6e53:	mov    DWORD PTR [esp+0x8],eax
  4f6e57:	mov    DWORD PTR [esp],edi
  4f6e5a:	mov    DWORD PTR [esp+0x4],0x0
  4f6e62:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6e67:	mov    ecx,DWORD PTR [esp+0x34]
  4f6e6b:	mov    eax,DWORD PTR [ecx]
  4f6e6d:	mov    eax,DWORD PTR [eax+0x50]
  4f6e70:	mov    DWORD PTR [eax+0x1c0],edi
  4f6e76:	test   esi,esi
  4f6e78:	je     4f7ccb
  4f6e7e:	mov    eax,DWORD PTR [ecx]
  4f6e80:	mov    eax,DWORD PTR [eax+0x50]
  4f6e83:	mov    eax,DWORD PTR [eax+0x1c0]
  4f6e89:	mov    edi,ecx
  4f6e8b:	mov    ecx,DWORD PTR [esp+0x38]
  4f6e8f:	mov    ecx,DWORD PTR [ecx]
  4f6e91:	mov    DWORD PTR [esp+0xc],ecx
  4f6e95:	mov    DWORD PTR [esp+0x8],eax
  4f6e99:	mov    DWORD PTR [esp],esi
  4f6e9c:	mov    DWORD PTR [esp+0x4],0x8
  4f6ea4:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6ea9:	mov    eax,DWORD PTR [ebp+0x8]
  4f6eac:	mov    eax,DWORD PTR [eax+0x14]
  4f6eaf:	test   eax,eax
  4f6eb1:	je     4f7ccb
  4f6eb7:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6ebb:	mov    ecx,DWORD PTR [ecx]
  4f6ebd:	mov    DWORD PTR [esp+0x8],ecx
  4f6ec1:	mov    DWORD PTR [esp],eax
  4f6ec4:	mov    DWORD PTR [esp+0x4],0x6
  4f6ecc:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6ed1:	mov    esi,eax
  4f6ed3:	mov    eax,DWORD PTR [edi]
  4f6ed5:	mov    eax,DWORD PTR [eax+0x50]
  4f6ed8:	cmp    DWORD PTR [eax+0x1c4],0x0
  4f6edf:	mov    ecx,edi
  4f6ee1:	jne    4f6f3e
  4f6ee3:	lea    eax,[ebx+0x4b220]
  4f6ee9:	mov    eax,DWORD PTR [eax]
  4f6eeb:	mov    DWORD PTR [esp+0x1c],eax
  4f6eef:	mov    eax,DWORD PTR [esp+0x30]
  4f6ef3:	mov    eax,DWORD PTR [eax]
  4f6ef5:	mov    DWORD PTR [esp],eax
  4f6ef8:	call   20bfb2
  4f6efd:	mov    edi,eax
  4f6eff:	mov    eax,DWORD PTR [esp+0x1c]
  4f6f03:	mov    DWORD PTR [esp+0xc8],eax
  4f6f0a:	mov    eax,DWORD PTR [esp+0x2c]
  4f6f0e:	mov    eax,DWORD PTR [eax]
  4f6f10:	mov    DWORD PTR [esp+0xc],eax
  4f6f14:	mov    eax,DWORD PTR [esp+0xc8]
  4f6f1b:	mov    DWORD PTR [esp+0x8],eax
  4f6f1f:	mov    DWORD PTR [esp],edi
  4f6f22:	mov    DWORD PTR [esp+0x4],0x0
  4f6f2a:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6f2f:	mov    ecx,DWORD PTR [esp+0x34]
  4f6f33:	mov    eax,DWORD PTR [ecx]
  4f6f35:	mov    eax,DWORD PTR [eax+0x50]
  4f6f38:	mov    DWORD PTR [eax+0x1c4],edi
  4f6f3e:	test   esi,esi
  4f6f40:	je     4f7ccb
  4f6f46:	mov    eax,DWORD PTR [ecx]
  4f6f48:	mov    eax,DWORD PTR [eax+0x50]
  4f6f4b:	mov    eax,DWORD PTR [eax+0x1c4]
  4f6f51:	mov    edi,ecx
  4f6f53:	mov    ecx,DWORD PTR [esp+0x38]
  4f6f57:	mov    ecx,DWORD PTR [ecx]
  4f6f59:	mov    DWORD PTR [esp+0xc],ecx
  4f6f5d:	mov    DWORD PTR [esp+0x8],eax
  4f6f61:	mov    DWORD PTR [esp],esi
  4f6f64:	mov    DWORD PTR [esp+0x4],0x51
  4f6f6c:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f6f71:	mov    eax,DWORD PTR [ebp+0x8]
  4f6f74:	mov    eax,DWORD PTR [eax+0x14]
  4f6f77:	test   eax,eax
  4f6f79:	je     4f7ccb
  4f6f7f:	mov    ecx,DWORD PTR [esp+0x3c]
  4f6f83:	mov    ecx,DWORD PTR [ecx]
  4f6f85:	mov    DWORD PTR [esp+0x8],ecx
  4f6f89:	mov    DWORD PTR [esp],eax
  4f6f8c:	mov    DWORD PTR [esp+0x4],0x6
  4f6f94:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f6f99:	mov    esi,eax
  4f6f9b:	mov    eax,DWORD PTR [edi]
  4f6f9d:	mov    eax,DWORD PTR [eax+0x50]
  4f6fa0:	cmp    DWORD PTR [eax+0x1c8],0x0
  4f6fa7:	mov    ecx,edi
  4f6fa9:	jne    4f7006
  4f6fab:	lea    eax,[ebx+0x4b224]
  4f6fb1:	mov    eax,DWORD PTR [eax]
  4f6fb3:	mov    DWORD PTR [esp+0x1c],eax
  4f6fb7:	mov    eax,DWORD PTR [esp+0x30]
  4f6fbb:	mov    eax,DWORD PTR [eax]
  4f6fbd:	mov    DWORD PTR [esp],eax
  4f6fc0:	call   20bfb2
  4f6fc5:	mov    edi,eax
  4f6fc7:	mov    eax,DWORD PTR [esp+0x1c]
  4f6fcb:	mov    DWORD PTR [esp+0xc0],eax
  4f6fd2:	mov    eax,DWORD PTR [esp+0x2c]
  4f6fd6:	mov    eax,DWORD PTR [eax]
  4f6fd8:	mov    DWORD PTR [esp+0xc],eax
  4f6fdc:	mov    eax,DWORD PTR [esp+0xc0]
  4f6fe3:	mov    DWORD PTR [esp+0x8],eax
  4f6fe7:	mov    DWORD PTR [esp],edi
  4f6fea:	mov    DWORD PTR [esp+0x4],0x0
  4f6ff2:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f6ff7:	mov    ecx,DWORD PTR [esp+0x34]
  4f6ffb:	mov    eax,DWORD PTR [ecx]
  4f6ffd:	mov    eax,DWORD PTR [eax+0x50]
  4f7000:	mov    DWORD PTR [eax+0x1c8],edi
  4f7006:	test   esi,esi
  4f7008:	je     4f7ccb
  4f700e:	mov    eax,DWORD PTR [ecx]
  4f7010:	mov    eax,DWORD PTR [eax+0x50]
  4f7013:	mov    eax,DWORD PTR [eax+0x1c8]
  4f7019:	mov    ecx,DWORD PTR [esp+0x38]
  4f701d:	mov    ecx,DWORD PTR [ecx]
  4f701f:	mov    DWORD PTR [esp+0xc],ecx
  4f7023:	mov    DWORD PTR [esp+0x8],eax
  4f7027:	mov    DWORD PTR [esp],esi
  4f702a:	mov    DWORD PTR [esp+0x4],0x53
  4f7032:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7037:	mov    eax,DWORD PTR [ebp+0x8]
  4f703a:	mov    eax,DWORD PTR [eax+0x14]
  4f703d:	test   eax,eax
  4f703f:	je     4f7cd5
  4f7045:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7049:	mov    ecx,DWORD PTR [ecx]
  4f704b:	mov    DWORD PTR [esp+0x8],ecx
  4f704f:	mov    DWORD PTR [esp],eax
  4f7052:	mov    DWORD PTR [esp+0x4],0x6
  4f705a:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f705f:	mov    DWORD PTR [esp+0x1c],eax
  4f7063:	lea    eax,[ebx+0x4b228]
  4f7069:	mov    esi,DWORD PTR [eax]
  4f706b:	mov    eax,DWORD PTR [esp+0x30]
  4f706f:	mov    eax,DWORD PTR [eax]
  4f7071:	mov    DWORD PTR [esp],eax
  4f7074:	call   20bfb2
  4f7079:	mov    edi,eax
  4f707b:	mov    DWORD PTR [esp+0xb8],esi
  4f7082:	mov    eax,DWORD PTR [esp+0x2c]
  4f7086:	mov    eax,DWORD PTR [eax]
  4f7088:	mov    DWORD PTR [esp+0xc],eax
  4f708c:	mov    eax,DWORD PTR [esp+0xb8]
  4f7093:	mov    DWORD PTR [esp+0x8],eax
  4f7097:	mov    esi,DWORD PTR [ebp+0x8]
  4f709a:	mov    DWORD PTR [esp+0x4],esi
  4f709e:	mov    DWORD PTR [esp],edi
  4f70a1:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f70a6:	mov    ecx,DWORD PTR [esp+0x1c]
  4f70aa:	test   ecx,ecx
  4f70ac:	je     4f7cd5
  4f70b2:	mov    eax,DWORD PTR [esp+0x38]
  4f70b6:	mov    eax,DWORD PTR [eax]
  4f70b8:	mov    DWORD PTR [esp+0xc],eax
  4f70bc:	mov    DWORD PTR [esp+0x8],edi
  4f70c0:	mov    DWORD PTR [esp],ecx
  4f70c3:	mov    DWORD PTR [esp+0x4],0x38
  4f70cb:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f70d0:	mov    eax,DWORD PTR [esi+0x14]
  4f70d3:	test   eax,eax
  4f70d5:	je     4f7cd5
  4f70db:	mov    ecx,DWORD PTR [esp+0x3c]
  4f70df:	mov    ecx,DWORD PTR [ecx]
  4f70e1:	mov    DWORD PTR [esp+0x8],ecx
  4f70e5:	mov    DWORD PTR [esp],eax
  4f70e8:	mov    DWORD PTR [esp+0x4],0x6
  4f70f0:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f70f5:	mov    esi,eax
  4f70f7:	mov    ecx,DWORD PTR [esp+0x34]
  4f70fb:	mov    eax,DWORD PTR [ecx]
  4f70fd:	mov    eax,DWORD PTR [eax+0x50]
  4f7100:	cmp    DWORD PTR [eax+0x1cc],0x0
  4f7107:	jne    4f7164
  4f7109:	lea    eax,[ebx+0x4b22c]
  4f710f:	mov    eax,DWORD PTR [eax]
  4f7111:	mov    DWORD PTR [esp+0x1c],eax
  4f7115:	mov    eax,DWORD PTR [esp+0x30]
  4f7119:	mov    eax,DWORD PTR [eax]
  4f711b:	mov    DWORD PTR [esp],eax
  4f711e:	call   20bfb2
  4f7123:	mov    edi,eax
  4f7125:	mov    eax,DWORD PTR [esp+0x1c]
  4f7129:	mov    DWORD PTR [esp+0xb0],eax
  4f7130:	mov    eax,DWORD PTR [esp+0x2c]
  4f7134:	mov    eax,DWORD PTR [eax]
  4f7136:	mov    DWORD PTR [esp+0xc],eax
  4f713a:	mov    eax,DWORD PTR [esp+0xb0]
  4f7141:	mov    DWORD PTR [esp+0x8],eax
  4f7145:	mov    DWORD PTR [esp],edi
  4f7148:	mov    DWORD PTR [esp+0x4],0x0
  4f7150:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f7155:	mov    ecx,DWORD PTR [esp+0x34]
  4f7159:	mov    eax,DWORD PTR [ecx]
  4f715b:	mov    eax,DWORD PTR [eax+0x50]
  4f715e:	mov    DWORD PTR [eax+0x1cc],edi
  4f7164:	test   esi,esi
  4f7166:	je     4f7cd5
  4f716c:	mov    eax,DWORD PTR [ecx]
  4f716e:	mov    eax,DWORD PTR [eax+0x50]
  4f7171:	mov    eax,DWORD PTR [eax+0x1cc]
  4f7177:	mov    edi,ecx
  4f7179:	mov    ecx,DWORD PTR [esp+0x38]
  4f717d:	mov    ecx,DWORD PTR [ecx]
  4f717f:	mov    DWORD PTR [esp+0xc],ecx
  4f7183:	mov    DWORD PTR [esp+0x8],eax
  4f7187:	mov    DWORD PTR [esp],esi
  4f718a:	mov    DWORD PTR [esp+0x4],0x1d
  4f7192:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7197:	mov    eax,DWORD PTR [ebp+0x8]
  4f719a:	mov    eax,DWORD PTR [eax+0x14]
  4f719d:	test   eax,eax
  4f719f:	je     4f7cd5
  4f71a5:	mov    ecx,DWORD PTR [esp+0x3c]
  4f71a9:	mov    ecx,DWORD PTR [ecx]
  4f71ab:	mov    DWORD PTR [esp+0x8],ecx
  4f71af:	mov    DWORD PTR [esp],eax
  4f71b2:	mov    DWORD PTR [esp+0x4],0x6
  4f71ba:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f71bf:	mov    esi,eax
  4f71c1:	mov    eax,DWORD PTR [edi]
  4f71c3:	mov    eax,DWORD PTR [eax+0x50]
  4f71c6:	cmp    DWORD PTR [eax+0x1d0],0x0
  4f71cd:	mov    ecx,edi
  4f71cf:	jne    4f722c
  4f71d1:	lea    eax,[ebx+0x4b230]
  4f71d7:	mov    eax,DWORD PTR [eax]
  4f71d9:	mov    DWORD PTR [esp+0x1c],eax
  4f71dd:	mov    eax,DWORD PTR [esp+0x30]
  4f71e1:	mov    eax,DWORD PTR [eax]
  4f71e3:	mov    DWORD PTR [esp],eax
  4f71e6:	call   20bfb2
  4f71eb:	mov    edi,eax
  4f71ed:	mov    eax,DWORD PTR [esp+0x1c]
  4f71f1:	mov    DWORD PTR [esp+0xa8],eax
  4f71f8:	mov    eax,DWORD PTR [esp+0x2c]
  4f71fc:	mov    eax,DWORD PTR [eax]
  4f71fe:	mov    DWORD PTR [esp+0xc],eax
  4f7202:	mov    eax,DWORD PTR [esp+0xa8]
  4f7209:	mov    DWORD PTR [esp+0x8],eax
  4f720d:	mov    DWORD PTR [esp],edi
  4f7210:	mov    DWORD PTR [esp+0x4],0x0
  4f7218:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f721d:	mov    ecx,DWORD PTR [esp+0x34]
  4f7221:	mov    eax,DWORD PTR [ecx]
  4f7223:	mov    eax,DWORD PTR [eax+0x50]
  4f7226:	mov    DWORD PTR [eax+0x1d0],edi
  4f722c:	test   esi,esi
  4f722e:	je     4f7cd5
  4f7234:	mov    eax,DWORD PTR [ecx]
  4f7236:	mov    eax,DWORD PTR [eax+0x50]
  4f7239:	mov    eax,DWORD PTR [eax+0x1d0]
  4f723f:	mov    edi,ecx
  4f7241:	mov    ecx,DWORD PTR [esp+0x38]
  4f7245:	mov    ecx,DWORD PTR [ecx]
  4f7247:	mov    DWORD PTR [esp+0xc],ecx
  4f724b:	mov    DWORD PTR [esp+0x8],eax
  4f724f:	mov    DWORD PTR [esp],esi
  4f7252:	mov    DWORD PTR [esp+0x4],0x1e
  4f725a:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f725f:	mov    eax,DWORD PTR [ebp+0x8]
  4f7262:	mov    eax,DWORD PTR [eax+0x14]
  4f7265:	test   eax,eax
  4f7267:	je     4f7cd5
  4f726d:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7271:	mov    ecx,DWORD PTR [ecx]
  4f7273:	mov    DWORD PTR [esp+0x8],ecx
  4f7277:	mov    DWORD PTR [esp],eax
  4f727a:	mov    DWORD PTR [esp+0x4],0x6
  4f7282:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f7287:	mov    esi,eax
  4f7289:	mov    eax,DWORD PTR [edi]
  4f728b:	mov    eax,DWORD PTR [eax+0x50]
  4f728e:	cmp    DWORD PTR [eax+0x1d4],0x0
  4f7295:	mov    ecx,edi
  4f7297:	jne    4f72f4
  4f7299:	lea    eax,[ebx+0x4b234]
  4f729f:	mov    eax,DWORD PTR [eax]
  4f72a1:	mov    DWORD PTR [esp+0x1c],eax
  4f72a5:	mov    eax,DWORD PTR [esp+0x30]
  4f72a9:	mov    eax,DWORD PTR [eax]
  4f72ab:	mov    DWORD PTR [esp],eax
  4f72ae:	call   20bfb2
  4f72b3:	mov    edi,eax
  4f72b5:	mov    eax,DWORD PTR [esp+0x1c]
  4f72b9:	mov    DWORD PTR [esp+0xa0],eax
  4f72c0:	mov    eax,DWORD PTR [esp+0x2c]
  4f72c4:	mov    eax,DWORD PTR [eax]
  4f72c6:	mov    DWORD PTR [esp+0xc],eax
  4f72ca:	mov    eax,DWORD PTR [esp+0xa0]
  4f72d1:	mov    DWORD PTR [esp+0x8],eax
  4f72d5:	mov    DWORD PTR [esp],edi
  4f72d8:	mov    DWORD PTR [esp+0x4],0x0
  4f72e0:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f72e5:	mov    ecx,DWORD PTR [esp+0x34]
  4f72e9:	mov    eax,DWORD PTR [ecx]
  4f72eb:	mov    eax,DWORD PTR [eax+0x50]
  4f72ee:	mov    DWORD PTR [eax+0x1d4],edi
  4f72f4:	test   esi,esi
  4f72f6:	je     4f7cd5
  4f72fc:	mov    eax,DWORD PTR [ecx]
  4f72fe:	mov    eax,DWORD PTR [eax+0x50]
  4f7301:	mov    eax,DWORD PTR [eax+0x1d4]
  4f7307:	mov    edi,ecx
  4f7309:	mov    ecx,DWORD PTR [esp+0x38]
  4f730d:	mov    ecx,DWORD PTR [ecx]
  4f730f:	mov    DWORD PTR [esp+0xc],ecx
  4f7313:	mov    DWORD PTR [esp+0x8],eax
  4f7317:	mov    DWORD PTR [esp],esi
  4f731a:	mov    DWORD PTR [esp+0x4],0x3e
  4f7322:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7327:	mov    eax,DWORD PTR [ebp+0x8]
  4f732a:	mov    eax,DWORD PTR [eax+0x14]
  4f732d:	test   eax,eax
  4f732f:	je     4f7cd5
  4f7335:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7339:	mov    ecx,DWORD PTR [ecx]
  4f733b:	mov    DWORD PTR [esp+0x8],ecx
  4f733f:	mov    DWORD PTR [esp],eax
  4f7342:	mov    DWORD PTR [esp+0x4],0x2
  4f734a:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f734f:	mov    esi,eax
  4f7351:	mov    eax,DWORD PTR [edi]
  4f7353:	mov    eax,DWORD PTR [eax+0x50]
  4f7356:	cmp    DWORD PTR [eax+0x1d8],0x0
  4f735d:	mov    ecx,edi
  4f735f:	jne    4f73bc
  4f7361:	lea    eax,[ebx+0x4b238]
  4f7367:	mov    eax,DWORD PTR [eax]
  4f7369:	mov    DWORD PTR [esp+0x1c],eax
  4f736d:	mov    eax,DWORD PTR [esp+0x30]
  4f7371:	mov    eax,DWORD PTR [eax]
  4f7373:	mov    DWORD PTR [esp],eax
  4f7376:	call   20bfb2
  4f737b:	mov    edi,eax
  4f737d:	mov    eax,DWORD PTR [esp+0x1c]
  4f7381:	mov    DWORD PTR [esp+0x98],eax
  4f7388:	mov    eax,DWORD PTR [esp+0x2c]
  4f738c:	mov    eax,DWORD PTR [eax]
  4f738e:	mov    DWORD PTR [esp+0xc],eax
  4f7392:	mov    eax,DWORD PTR [esp+0x98]
  4f7399:	mov    DWORD PTR [esp+0x8],eax
  4f739d:	mov    DWORD PTR [esp],edi
  4f73a0:	mov    DWORD PTR [esp+0x4],0x0
  4f73a8:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f73ad:	mov    ecx,DWORD PTR [esp+0x34]
  4f73b1:	mov    eax,DWORD PTR [ecx]
  4f73b3:	mov    eax,DWORD PTR [eax+0x50]
  4f73b6:	mov    DWORD PTR [eax+0x1d8],edi
  4f73bc:	test   esi,esi
  4f73be:	je     4f7cd5
  4f73c4:	mov    eax,DWORD PTR [ecx]
  4f73c6:	mov    eax,DWORD PTR [eax+0x50]
  4f73c9:	mov    eax,DWORD PTR [eax+0x1d8]
  4f73cf:	mov    edi,ecx
  4f73d1:	mov    ecx,DWORD PTR [esp+0x38]
  4f73d5:	mov    ecx,DWORD PTR [ecx]
  4f73d7:	mov    DWORD PTR [esp+0xc],ecx
  4f73db:	mov    DWORD PTR [esp+0x8],eax
  4f73df:	mov    DWORD PTR [esp],esi
  4f73e2:	mov    DWORD PTR [esp+0x4],0x56
  4f73ea:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f73ef:	mov    eax,DWORD PTR [ebp+0x8]
  4f73f2:	mov    eax,DWORD PTR [eax+0x14]
  4f73f5:	test   eax,eax
  4f73f7:	je     4f7cd5
  4f73fd:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7401:	mov    ecx,DWORD PTR [ecx]
  4f7403:	mov    DWORD PTR [esp+0x8],ecx
  4f7407:	mov    DWORD PTR [esp],eax
  4f740a:	mov    DWORD PTR [esp+0x4],0x6
  4f7412:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f7417:	mov    esi,eax
  4f7419:	mov    eax,DWORD PTR [edi]
  4f741b:	mov    eax,DWORD PTR [eax+0x50]
  4f741e:	cmp    DWORD PTR [eax+0x1dc],0x0
  4f7425:	mov    ecx,edi
  4f7427:	jne    4f7484
  4f7429:	lea    eax,[ebx+0x4b23c]
  4f742f:	mov    eax,DWORD PTR [eax]
  4f7431:	mov    DWORD PTR [esp+0x1c],eax
  4f7435:	mov    eax,DWORD PTR [esp+0x30]
  4f7439:	mov    eax,DWORD PTR [eax]
  4f743b:	mov    DWORD PTR [esp],eax
  4f743e:	call   20bfb2
  4f7443:	mov    edi,eax
  4f7445:	mov    eax,DWORD PTR [esp+0x1c]
  4f7449:	mov    DWORD PTR [esp+0x90],eax
  4f7450:	mov    eax,DWORD PTR [esp+0x2c]
  4f7454:	mov    eax,DWORD PTR [eax]
  4f7456:	mov    DWORD PTR [esp+0xc],eax
  4f745a:	mov    eax,DWORD PTR [esp+0x90]
  4f7461:	mov    DWORD PTR [esp+0x8],eax
  4f7465:	mov    DWORD PTR [esp],edi
  4f7468:	mov    DWORD PTR [esp+0x4],0x0
  4f7470:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f7475:	mov    ecx,DWORD PTR [esp+0x34]
  4f7479:	mov    eax,DWORD PTR [ecx]
  4f747b:	mov    eax,DWORD PTR [eax+0x50]
  4f747e:	mov    DWORD PTR [eax+0x1dc],edi
  4f7484:	test   esi,esi
  4f7486:	je     4f7cd5
  4f748c:	mov    eax,DWORD PTR [ecx]
  4f748e:	mov    eax,DWORD PTR [eax+0x50]
  4f7491:	mov    eax,DWORD PTR [eax+0x1dc]
  4f7497:	mov    edi,ecx
  4f7499:	mov    ecx,DWORD PTR [esp+0x38]
  4f749d:	mov    ecx,DWORD PTR [ecx]
  4f749f:	mov    DWORD PTR [esp+0xc],ecx
  4f74a3:	mov    DWORD PTR [esp+0x8],eax
  4f74a7:	mov    DWORD PTR [esp],esi
  4f74aa:	mov    DWORD PTR [esp+0x4],0x1b
  4f74b2:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f74b7:	mov    eax,DWORD PTR [ebp+0x8]
  4f74ba:	mov    eax,DWORD PTR [eax+0x14]
  4f74bd:	test   eax,eax
  4f74bf:	je     4f7cd5
  4f74c5:	mov    ecx,DWORD PTR [esp+0x3c]
  4f74c9:	mov    ecx,DWORD PTR [ecx]
  4f74cb:	mov    DWORD PTR [esp+0x8],ecx
  4f74cf:	mov    DWORD PTR [esp],eax
  4f74d2:	mov    DWORD PTR [esp+0x4],0x6
  4f74da:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f74df:	mov    esi,eax
  4f74e1:	mov    eax,DWORD PTR [edi]
  4f74e3:	mov    eax,DWORD PTR [eax+0x50]
  4f74e6:	cmp    DWORD PTR [eax+0x1e0],0x0
  4f74ed:	mov    ecx,edi
  4f74ef:	jne    4f754c
  4f74f1:	lea    eax,[ebx+0x4b240]
  4f74f7:	mov    eax,DWORD PTR [eax]
  4f74f9:	mov    DWORD PTR [esp+0x1c],eax
  4f74fd:	mov    eax,DWORD PTR [esp+0x30]
  4f7501:	mov    eax,DWORD PTR [eax]
  4f7503:	mov    DWORD PTR [esp],eax
  4f7506:	call   20bfb2
  4f750b:	mov    edi,eax
  4f750d:	mov    eax,DWORD PTR [esp+0x1c]
  4f7511:	mov    DWORD PTR [esp+0x88],eax
  4f7518:	mov    eax,DWORD PTR [esp+0x2c]
  4f751c:	mov    eax,DWORD PTR [eax]
  4f751e:	mov    DWORD PTR [esp+0xc],eax
  4f7522:	mov    eax,DWORD PTR [esp+0x88]
  4f7529:	mov    DWORD PTR [esp+0x8],eax
  4f752d:	mov    DWORD PTR [esp],edi
  4f7530:	mov    DWORD PTR [esp+0x4],0x0
  4f7538:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f753d:	mov    ecx,DWORD PTR [esp+0x34]
  4f7541:	mov    eax,DWORD PTR [ecx]
  4f7543:	mov    eax,DWORD PTR [eax+0x50]
  4f7546:	mov    DWORD PTR [eax+0x1e0],edi
  4f754c:	test   esi,esi
  4f754e:	je     4f7cd5
  4f7554:	mov    eax,DWORD PTR [ecx]
  4f7556:	mov    eax,DWORD PTR [eax+0x50]
  4f7559:	mov    eax,DWORD PTR [eax+0x1e0]
  4f755f:	mov    edi,ecx
  4f7561:	mov    ecx,DWORD PTR [esp+0x38]
  4f7565:	mov    ecx,DWORD PTR [ecx]
  4f7567:	mov    DWORD PTR [esp+0xc],ecx
  4f756b:	mov    DWORD PTR [esp+0x8],eax
  4f756f:	mov    DWORD PTR [esp],esi
  4f7572:	mov    DWORD PTR [esp+0x4],0x69
  4f757a:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f757f:	mov    eax,DWORD PTR [ebp+0x8]
  4f7582:	mov    eax,DWORD PTR [eax+0x14]
  4f7585:	test   eax,eax
  4f7587:	je     4f7cd5
  4f758d:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7591:	mov    ecx,DWORD PTR [ecx]
  4f7593:	mov    DWORD PTR [esp+0x8],ecx
  4f7597:	mov    DWORD PTR [esp],eax
  4f759a:	mov    DWORD PTR [esp+0x4],0x6
  4f75a2:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f75a7:	mov    esi,eax
  4f75a9:	mov    eax,DWORD PTR [edi]
  4f75ab:	mov    eax,DWORD PTR [eax+0x50]
  4f75ae:	cmp    DWORD PTR [eax+0x1e4],0x0
  4f75b5:	mov    ecx,edi
  4f75b7:	jne    4f7614
  4f75b9:	lea    eax,[ebx+0x4b244]
  4f75bf:	mov    eax,DWORD PTR [eax]
  4f75c1:	mov    DWORD PTR [esp+0x1c],eax
  4f75c5:	mov    eax,DWORD PTR [esp+0x30]
  4f75c9:	mov    eax,DWORD PTR [eax]
  4f75cb:	mov    DWORD PTR [esp],eax
  4f75ce:	call   20bfb2
  4f75d3:	mov    edi,eax
  4f75d5:	mov    eax,DWORD PTR [esp+0x1c]
  4f75d9:	mov    DWORD PTR [esp+0x80],eax
  4f75e0:	mov    eax,DWORD PTR [esp+0x2c]
  4f75e4:	mov    eax,DWORD PTR [eax]
  4f75e6:	mov    DWORD PTR [esp+0xc],eax
  4f75ea:	mov    eax,DWORD PTR [esp+0x80]
  4f75f1:	mov    DWORD PTR [esp+0x8],eax
  4f75f5:	mov    DWORD PTR [esp],edi
  4f75f8:	mov    DWORD PTR [esp+0x4],0x0
  4f7600:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f7605:	mov    ecx,DWORD PTR [esp+0x34]
  4f7609:	mov    eax,DWORD PTR [ecx]
  4f760b:	mov    eax,DWORD PTR [eax+0x50]
  4f760e:	mov    DWORD PTR [eax+0x1e4],edi
  4f7614:	test   esi,esi
  4f7616:	je     4f7cd5
  4f761c:	mov    eax,DWORD PTR [ecx]
  4f761e:	mov    eax,DWORD PTR [eax+0x50]
  4f7621:	mov    eax,DWORD PTR [eax+0x1e4]
  4f7627:	mov    ecx,DWORD PTR [esp+0x38]
  4f762b:	mov    ecx,DWORD PTR [ecx]
  4f762d:	mov    DWORD PTR [esp+0xc],ecx
  4f7631:	mov    DWORD PTR [esp+0x8],eax
  4f7635:	mov    DWORD PTR [esp],esi
  4f7638:	mov    DWORD PTR [esp+0x4],0x5d
  4f7640:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7645:	mov    eax,DWORD PTR [ebp+0x8]
  4f7648:	mov    eax,DWORD PTR [eax+0x14]
  4f764b:	test   eax,eax
  4f764d:	je     4f7cd5
  4f7653:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7657:	mov    ecx,DWORD PTR [ecx]
  4f7659:	mov    DWORD PTR [esp+0x8],ecx
  4f765d:	mov    DWORD PTR [esp],eax
  4f7660:	mov    DWORD PTR [esp+0x4],0x2
  4f7668:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f766d:	mov    DWORD PTR [esp+0x1c],eax
  4f7671:	lea    eax,[ebx+0x4b248]
  4f7677:	mov    esi,DWORD PTR [eax]
  4f7679:	mov    eax,DWORD PTR [esp+0x30]
  4f767d:	mov    eax,DWORD PTR [eax]
  4f767f:	mov    DWORD PTR [esp],eax
  4f7682:	call   20bfb2
  4f7687:	mov    edi,eax
  4f7689:	mov    DWORD PTR [esp+0x78],esi
  4f768d:	mov    eax,DWORD PTR [esp+0x2c]
  4f7691:	mov    eax,DWORD PTR [eax]
  4f7693:	mov    DWORD PTR [esp+0xc],eax
  4f7697:	mov    eax,DWORD PTR [esp+0x78]
  4f769b:	mov    DWORD PTR [esp+0x8],eax
  4f769f:	mov    esi,DWORD PTR [ebp+0x8]
  4f76a2:	mov    DWORD PTR [esp+0x4],esi
  4f76a6:	mov    DWORD PTR [esp],edi
  4f76a9:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f76ae:	mov    ecx,DWORD PTR [esp+0x1c]
  4f76b2:	test   ecx,ecx
  4f76b4:	je     4f7cd5
  4f76ba:	mov    eax,DWORD PTR [esp+0x38]
  4f76be:	mov    eax,DWORD PTR [eax]
  4f76c0:	mov    DWORD PTR [esp+0xc],eax
  4f76c4:	mov    DWORD PTR [esp+0x8],edi
  4f76c8:	mov    DWORD PTR [esp],ecx
  4f76cb:	mov    DWORD PTR [esp+0x4],0x3c
  4f76d3:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f76d8:	mov    eax,DWORD PTR [esi+0x14]
  4f76db:	test   eax,eax
  4f76dd:	je     4f7cd5
  4f76e3:	mov    ecx,DWORD PTR [esp+0x3c]
  4f76e7:	mov    ecx,DWORD PTR [ecx]
  4f76e9:	mov    DWORD PTR [esp+0x8],ecx
  4f76ed:	mov    DWORD PTR [esp],eax
  4f76f0:	mov    DWORD PTR [esp+0x4],0x2
  4f76f8:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f76fd:	mov    DWORD PTR [esp+0x1c],eax
  4f7701:	lea    eax,[ebx+0x4b24c]
  4f7707:	mov    esi,DWORD PTR [eax]
  4f7709:	mov    eax,DWORD PTR [esp+0x30]
  4f770d:	mov    eax,DWORD PTR [eax]
  4f770f:	mov    DWORD PTR [esp],eax
  4f7712:	call   20bfb2
  4f7717:	mov    edi,eax
  4f7719:	mov    DWORD PTR [esp+0x70],esi
  4f771d:	mov    eax,DWORD PTR [esp+0x2c]
  4f7721:	mov    eax,DWORD PTR [eax]
  4f7723:	mov    DWORD PTR [esp+0xc],eax
  4f7727:	mov    eax,DWORD PTR [esp+0x70]
  4f772b:	mov    DWORD PTR [esp+0x8],eax
  4f772f:	mov    esi,DWORD PTR [ebp+0x8]
  4f7732:	mov    DWORD PTR [esp+0x4],esi
  4f7736:	mov    DWORD PTR [esp],edi
  4f7739:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f773e:	mov    ecx,DWORD PTR [esp+0x1c]
  4f7742:	test   ecx,ecx
  4f7744:	je     4f7cd5
  4f774a:	mov    eax,DWORD PTR [esp+0x38]
  4f774e:	mov    eax,DWORD PTR [eax]
  4f7750:	mov    DWORD PTR [esp+0xc],eax
  4f7754:	mov    DWORD PTR [esp+0x8],edi
  4f7758:	mov    DWORD PTR [esp],ecx
  4f775b:	mov    DWORD PTR [esp+0x4],0x3b
  4f7763:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7768:	mov    eax,DWORD PTR [esi+0x14]
  4f776b:	test   eax,eax
  4f776d:	je     4f7cd5
  4f7773:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7777:	mov    ecx,DWORD PTR [ecx]
  4f7779:	mov    DWORD PTR [esp+0x8],ecx
  4f777d:	mov    DWORD PTR [esp],eax
  4f7780:	mov    DWORD PTR [esp+0x4],0x6
  4f7788:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f778d:	mov    esi,eax
  4f778f:	mov    ecx,DWORD PTR [esp+0x34]
  4f7793:	mov    eax,DWORD PTR [ecx]
  4f7795:	mov    eax,DWORD PTR [eax+0x50]
  4f7798:	cmp    DWORD PTR [eax+0x1e8],0x0
  4f779f:	jne    4f77f6
  4f77a1:	lea    eax,[ebx+0x4b250]
  4f77a7:	mov    eax,DWORD PTR [eax]
  4f77a9:	mov    DWORD PTR [esp+0x1c],eax
  4f77ad:	mov    eax,DWORD PTR [esp+0x30]
  4f77b1:	mov    eax,DWORD PTR [eax]
  4f77b3:	mov    DWORD PTR [esp],eax
  4f77b6:	call   20bfb2
  4f77bb:	mov    edi,eax
  4f77bd:	mov    eax,DWORD PTR [esp+0x1c]
  4f77c1:	mov    DWORD PTR [esp+0x68],eax
  4f77c5:	mov    eax,DWORD PTR [esp+0x2c]
  4f77c9:	mov    eax,DWORD PTR [eax]
  4f77cb:	mov    DWORD PTR [esp+0xc],eax
  4f77cf:	mov    eax,DWORD PTR [esp+0x68]
  4f77d3:	mov    DWORD PTR [esp+0x8],eax
  4f77d7:	mov    DWORD PTR [esp],edi
  4f77da:	mov    DWORD PTR [esp+0x4],0x0
  4f77e2:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f77e7:	mov    ecx,DWORD PTR [esp+0x34]
  4f77eb:	mov    eax,DWORD PTR [ecx]
  4f77ed:	mov    eax,DWORD PTR [eax+0x50]
  4f77f0:	mov    DWORD PTR [eax+0x1e8],edi
  4f77f6:	test   esi,esi
  4f77f8:	je     4f7cd5
  4f77fe:	mov    eax,DWORD PTR [ecx]
  4f7800:	mov    eax,DWORD PTR [eax+0x50]
  4f7803:	mov    eax,DWORD PTR [eax+0x1e8]
  4f7809:	mov    edi,ecx
  4f780b:	mov    ecx,DWORD PTR [esp+0x38]
  4f780f:	mov    ecx,DWORD PTR [ecx]
  4f7811:	mov    DWORD PTR [esp+0xc],ecx
  4f7815:	mov    DWORD PTR [esp+0x8],eax
  4f7819:	mov    DWORD PTR [esp],esi
  4f781c:	mov    DWORD PTR [esp+0x4],0x6
  4f7824:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7829:	mov    eax,DWORD PTR [ebp+0x8]
  4f782c:	mov    eax,DWORD PTR [eax+0x14]
  4f782f:	test   eax,eax
  4f7831:	je     4f7cd5
  4f7837:	mov    ecx,DWORD PTR [esp+0x3c]
  4f783b:	mov    ecx,DWORD PTR [ecx]
  4f783d:	mov    DWORD PTR [esp+0x8],ecx
  4f7841:	mov    DWORD PTR [esp],eax
  4f7844:	mov    DWORD PTR [esp+0x4],0x6
  4f784c:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f7851:	mov    esi,eax
  4f7853:	mov    eax,DWORD PTR [edi]
  4f7855:	mov    eax,DWORD PTR [eax+0x50]
  4f7858:	cmp    DWORD PTR [eax+0x1ec],0x0
  4f785f:	mov    ecx,edi
  4f7861:	jne    4f78b8
  4f7863:	lea    eax,[ebx+0x4b254]
  4f7869:	mov    eax,DWORD PTR [eax]
  4f786b:	mov    DWORD PTR [esp+0x1c],eax
  4f786f:	mov    eax,DWORD PTR [esp+0x30]
  4f7873:	mov    eax,DWORD PTR [eax]
  4f7875:	mov    DWORD PTR [esp],eax
  4f7878:	call   20bfb2
  4f787d:	mov    edi,eax
  4f787f:	mov    eax,DWORD PTR [esp+0x1c]
  4f7883:	mov    DWORD PTR [esp+0x60],eax
  4f7887:	mov    eax,DWORD PTR [esp+0x2c]
  4f788b:	mov    eax,DWORD PTR [eax]
  4f788d:	mov    DWORD PTR [esp+0xc],eax
  4f7891:	mov    eax,DWORD PTR [esp+0x60]
  4f7895:	mov    DWORD PTR [esp+0x8],eax
  4f7899:	mov    DWORD PTR [esp],edi
  4f789c:	mov    DWORD PTR [esp+0x4],0x0
  4f78a4:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f78a9:	mov    ecx,DWORD PTR [esp+0x34]
  4f78ad:	mov    eax,DWORD PTR [ecx]
  4f78af:	mov    eax,DWORD PTR [eax+0x50]
  4f78b2:	mov    DWORD PTR [eax+0x1ec],edi
  4f78b8:	test   esi,esi
  4f78ba:	je     4f7cd5
  4f78c0:	mov    eax,DWORD PTR [ecx]
  4f78c2:	mov    eax,DWORD PTR [eax+0x50]
  4f78c5:	mov    eax,DWORD PTR [eax+0x1ec]
  4f78cb:	mov    edi,ecx
  4f78cd:	mov    ecx,DWORD PTR [esp+0x38]
  4f78d1:	mov    ecx,DWORD PTR [ecx]
  4f78d3:	mov    DWORD PTR [esp+0xc],ecx
  4f78d7:	mov    DWORD PTR [esp+0x8],eax
  4f78db:	mov    DWORD PTR [esp],esi
  4f78de:	mov    DWORD PTR [esp+0x4],0x7
  4f78e6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f78eb:	mov    eax,DWORD PTR [ebp+0x8]
  4f78ee:	mov    eax,DWORD PTR [eax+0x14]
  4f78f1:	test   eax,eax
  4f78f3:	je     4f7cd5
  4f78f9:	mov    ecx,DWORD PTR [esp+0x3c]
  4f78fd:	mov    ecx,DWORD PTR [ecx]
  4f78ff:	mov    DWORD PTR [esp+0x8],ecx
  4f7903:	mov    DWORD PTR [esp],eax
  4f7906:	mov    DWORD PTR [esp+0x4],0x6
  4f790e:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f7913:	mov    esi,eax
  4f7915:	mov    eax,DWORD PTR [edi]
  4f7917:	mov    eax,DWORD PTR [eax+0x50]
  4f791a:	cmp    DWORD PTR [eax+0x1f0],0x0
  4f7921:	mov    ecx,edi
  4f7923:	jne    4f797a
  4f7925:	lea    eax,[ebx+0x4b258]
  4f792b:	mov    eax,DWORD PTR [eax]
  4f792d:	mov    DWORD PTR [esp+0x1c],eax
  4f7931:	mov    eax,DWORD PTR [esp+0x30]
  4f7935:	mov    eax,DWORD PTR [eax]
  4f7937:	mov    DWORD PTR [esp],eax
  4f793a:	call   20bfb2
  4f793f:	mov    edi,eax
  4f7941:	mov    eax,DWORD PTR [esp+0x1c]
  4f7945:	mov    DWORD PTR [esp+0x58],eax
  4f7949:	mov    eax,DWORD PTR [esp+0x2c]
  4f794d:	mov    eax,DWORD PTR [eax]
  4f794f:	mov    DWORD PTR [esp+0xc],eax
  4f7953:	mov    eax,DWORD PTR [esp+0x58]
  4f7957:	mov    DWORD PTR [esp+0x8],eax
  4f795b:	mov    DWORD PTR [esp],edi
  4f795e:	mov    DWORD PTR [esp+0x4],0x0
  4f7966:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f796b:	mov    ecx,DWORD PTR [esp+0x34]
  4f796f:	mov    eax,DWORD PTR [ecx]
  4f7971:	mov    eax,DWORD PTR [eax+0x50]
  4f7974:	mov    DWORD PTR [eax+0x1f0],edi
  4f797a:	test   esi,esi
  4f797c:	je     4f7cd5
  4f7982:	mov    eax,DWORD PTR [ecx]
  4f7984:	mov    eax,DWORD PTR [eax+0x50]
  4f7987:	mov    eax,DWORD PTR [eax+0x1f0]
  4f798d:	mov    ecx,DWORD PTR [esp+0x38]
  4f7991:	mov    ecx,DWORD PTR [ecx]
  4f7993:	mov    DWORD PTR [esp+0xc],ecx
  4f7997:	mov    DWORD PTR [esp+0x8],eax
  4f799b:	mov    DWORD PTR [esp],esi
  4f799e:	mov    DWORD PTR [esp+0x4],0x66
  4f79a6:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f79ab:	mov    eax,DWORD PTR [ebp+0x8]
  4f79ae:	mov    eax,DWORD PTR [eax+0x14]
  4f79b1:	mov    DWORD PTR [esp+0x1c],eax
  4f79b5:	mov    edi,DWORD PTR [esp+0x20]
  4f79b9:	mov    eax,DWORD PTR [edi]
  4f79bb:	mov    DWORD PTR [esp],eax
  4f79be:	call   20bfb2
  4f79c3:	mov    esi,eax
  4f79c5:	mov    eax,DWORD PTR [esp+0x28]
  4f79c9:	mov    eax,DWORD PTR [eax]
  4f79cb:	mov    DWORD PTR [esp+0x4],eax
  4f79cf:	mov    DWORD PTR [esp],esi
  4f79d2:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f79d7:	mov    ecx,DWORD PTR [esp+0x1c]
  4f79db:	test   ecx,ecx
  4f79dd:	je     4f7cd5
  4f79e3:	mov    eax,DWORD PTR [esp+0x24]
  4f79e7:	mov    eax,DWORD PTR [eax]
  4f79e9:	mov    DWORD PTR [esp+0xc],eax
  4f79ed:	mov    DWORD PTR [esp+0x8],esi
  4f79f1:	mov    DWORD PTR [esp],ecx
  4f79f4:	mov    DWORD PTR [esp+0x4],0x1d
  4f79fc:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f7a01:	mov    eax,DWORD PTR [ebp+0x8]
  4f7a04:	mov    eax,DWORD PTR [eax+0x14]
  4f7a07:	mov    DWORD PTR [esp+0x1c],eax
  4f7a0b:	mov    eax,DWORD PTR [edi]
  4f7a0d:	mov    DWORD PTR [esp],eax
  4f7a10:	call   20bfb2
  4f7a15:	mov    esi,eax
  4f7a17:	mov    eax,DWORD PTR [esp+0x28]
  4f7a1b:	mov    eax,DWORD PTR [eax]
  4f7a1d:	mov    DWORD PTR [esp+0x4],eax
  4f7a21:	mov    DWORD PTR [esp],esi
  4f7a24:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f7a29:	mov    ecx,DWORD PTR [esp+0x1c]
  4f7a2d:	test   ecx,ecx
  4f7a2f:	je     4f7cd5
  4f7a35:	mov    eax,DWORD PTR [esp+0x24]
  4f7a39:	mov    eax,DWORD PTR [eax]
  4f7a3b:	mov    DWORD PTR [esp+0xc],eax
  4f7a3f:	mov    DWORD PTR [esp+0x8],esi
  4f7a43:	mov    DWORD PTR [esp],ecx
  4f7a46:	mov    DWORD PTR [esp+0x4],0x1e
  4f7a4e:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f7a53:	mov    edi,DWORD PTR [ebp+0x8]
  4f7a56:	mov    eax,DWORD PTR [edi+0x14]
  4f7a59:	test   eax,eax
  4f7a5b:	je     4f7cd5
  4f7a61:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7a65:	mov    ecx,DWORD PTR [ecx]
  4f7a67:	mov    DWORD PTR [esp+0x8],ecx
  4f7a6b:	mov    DWORD PTR [esp],eax
  4f7a6e:	mov    DWORD PTR [esp+0x4],0x1d
  4f7a76:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f7a7b:	mov    esi,eax
  4f7a7d:	mov    ecx,DWORD PTR [esp+0x34]
  4f7a81:	mov    eax,DWORD PTR [ecx]
  4f7a83:	mov    eax,DWORD PTR [eax+0x50]
  4f7a86:	cmp    DWORD PTR [eax+0x1f4],0x0
  4f7a8d:	jne    4f7ae7
  4f7a8f:	lea    eax,[ebx+0x4b25c]
  4f7a95:	mov    eax,DWORD PTR [eax]
  4f7a97:	mov    DWORD PTR [esp+0x1c],eax
  4f7a9b:	mov    eax,DWORD PTR [esp+0x30]
  4f7a9f:	mov    eax,DWORD PTR [eax]
  4f7aa1:	mov    DWORD PTR [esp],eax
  4f7aa4:	call   20bfb2
  4f7aa9:	mov    edi,eax
  4f7aab:	mov    eax,DWORD PTR [esp+0x1c]
  4f7aaf:	mov    DWORD PTR [esp+0x50],eax
  4f7ab3:	mov    eax,DWORD PTR [esp+0x2c]
  4f7ab7:	mov    eax,DWORD PTR [eax]
  4f7ab9:	mov    DWORD PTR [esp+0xc],eax
  4f7abd:	mov    eax,DWORD PTR [esp+0x50]
  4f7ac1:	mov    DWORD PTR [esp+0x8],eax
  4f7ac5:	mov    DWORD PTR [esp],edi
  4f7ac8:	mov    DWORD PTR [esp+0x4],0x0
  4f7ad0:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f7ad5:	mov    ecx,DWORD PTR [esp+0x34]
  4f7ad9:	mov    eax,DWORD PTR [ecx]
  4f7adb:	mov    eax,DWORD PTR [eax+0x50]
  4f7ade:	mov    DWORD PTR [eax+0x1f4],edi
  4f7ae4:	mov    edi,DWORD PTR [ebp+0x8]
  4f7ae7:	test   esi,esi
  4f7ae9:	je     4f7cd5
  4f7aef:	mov    eax,DWORD PTR [ecx]
  4f7af1:	mov    eax,DWORD PTR [eax+0x50]
  4f7af4:	mov    eax,DWORD PTR [eax+0x1f4]
  4f7afa:	mov    ecx,DWORD PTR [esp+0x38]
  4f7afe:	mov    ecx,DWORD PTR [ecx]
  4f7b00:	mov    DWORD PTR [esp+0xc],ecx
  4f7b04:	mov    DWORD PTR [esp+0x8],eax
  4f7b08:	mov    DWORD PTR [esp],esi
  4f7b0b:	mov    DWORD PTR [esp+0x4],0x58
  4f7b13:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7b18:	mov    eax,DWORD PTR [edi+0x14]
  4f7b1b:	mov    DWORD PTR [esp+0x1c],eax
  4f7b1f:	mov    eax,DWORD PTR [esp+0x20]
  4f7b23:	mov    eax,DWORD PTR [eax]
  4f7b25:	mov    DWORD PTR [esp],eax
  4f7b28:	call   20bfb2
  4f7b2d:	mov    esi,eax
  4f7b2f:	mov    eax,DWORD PTR [esp+0x28]
  4f7b33:	mov    eax,DWORD PTR [eax]
  4f7b35:	mov    DWORD PTR [esp+0x4],eax
  4f7b39:	mov    DWORD PTR [esp],esi
  4f7b3c:	call   12398a5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::.ctor
  4f7b41:	mov    ecx,DWORD PTR [esp+0x1c]
  4f7b45:	test   ecx,ecx
  4f7b47:	je     4f7cd5
  4f7b4d:	mov    eax,DWORD PTR [esp+0x24]
  4f7b51:	mov    eax,DWORD PTR [eax]
  4f7b53:	mov    DWORD PTR [esp+0xc],eax
  4f7b57:	mov    DWORD PTR [esp+0x8],esi
  4f7b5b:	mov    DWORD PTR [esp],ecx
  4f7b5e:	mov    DWORD PTR [esp+0x4],0x1f
  4f7b66:	call   123f9bc  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::Add
  4f7b6b:	mov    eax,DWORD PTR [edi+0x14]
  4f7b6e:	test   eax,eax
  4f7b70:	je     4f7cd5
  4f7b76:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7b7a:	mov    ecx,DWORD PTR [ecx]
  4f7b7c:	mov    DWORD PTR [esp+0x8],ecx
  4f7b80:	mov    DWORD PTR [esp],eax
  4f7b83:	mov    DWORD PTR [esp+0x4],0x1f
  4f7b8b:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f7b90:	mov    esi,eax
  4f7b92:	mov    ecx,DWORD PTR [esp+0x34]
  4f7b96:	mov    eax,DWORD PTR [ecx]
  4f7b98:	mov    eax,DWORD PTR [eax+0x50]
  4f7b9b:	cmp    DWORD PTR [eax+0x1f8],0x0
  4f7ba2:	jne    4f7bfc
  4f7ba4:	lea    eax,[ebx+0x4b260]
  4f7baa:	mov    eax,DWORD PTR [eax]
  4f7bac:	mov    DWORD PTR [esp+0x28],eax
  4f7bb0:	mov    eax,DWORD PTR [esp+0x30]
  4f7bb4:	mov    eax,DWORD PTR [eax]
  4f7bb6:	mov    DWORD PTR [esp],eax
  4f7bb9:	call   20bfb2
  4f7bbe:	mov    edi,eax
  4f7bc0:	mov    eax,DWORD PTR [esp+0x28]
  4f7bc4:	mov    DWORD PTR [esp+0x48],eax
  4f7bc8:	mov    eax,DWORD PTR [esp+0x2c]
  4f7bcc:	mov    eax,DWORD PTR [eax]
  4f7bce:	mov    DWORD PTR [esp+0xc],eax
  4f7bd2:	mov    eax,DWORD PTR [esp+0x48]
  4f7bd6:	mov    DWORD PTR [esp+0x8],eax
  4f7bda:	mov    DWORD PTR [esp],edi
  4f7bdd:	mov    DWORD PTR [esp+0x4],0x0
  4f7be5:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f7bea:	mov    ecx,DWORD PTR [esp+0x34]
  4f7bee:	mov    eax,DWORD PTR [ecx]
  4f7bf0:	mov    eax,DWORD PTR [eax+0x50]
  4f7bf3:	mov    DWORD PTR [eax+0x1f8],edi
  4f7bf9:	mov    edi,DWORD PTR [ebp+0x8]
  4f7bfc:	test   esi,esi
  4f7bfe:	je     4f7cd5
  4f7c04:	mov    eax,DWORD PTR [ecx]
  4f7c06:	mov    eax,DWORD PTR [eax+0x50]
  4f7c09:	mov    eax,DWORD PTR [eax+0x1f8]
  4f7c0f:	mov    ecx,DWORD PTR [esp+0x38]
  4f7c13:	mov    ecx,DWORD PTR [ecx]
  4f7c15:	mov    DWORD PTR [esp+0xc],ecx
  4f7c19:	mov    DWORD PTR [esp+0x8],eax
  4f7c1d:	mov    DWORD PTR [esp],esi
  4f7c20:	mov    DWORD PTR [esp+0x4],0x59
  4f7c28:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7c2d:	mov    eax,DWORD PTR [edi+0x14]
  4f7c30:	test   eax,eax
  4f7c32:	je     4f7cd5
  4f7c38:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7c3c:	mov    ecx,DWORD PTR [ecx]
  4f7c3e:	mov    DWORD PTR [esp+0x8],ecx
  4f7c42:	mov    DWORD PTR [esp],eax
  4f7c45:	mov    DWORD PTR [esp+0x4],0x1f
  4f7c4d:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  4f7c52:	mov    DWORD PTR [esp+0x3c],eax
  4f7c56:	lea    eax,[ebx+0x4b264]
  4f7c5c:	mov    esi,DWORD PTR [eax]
  4f7c5e:	mov    eax,DWORD PTR [esp+0x30]
  4f7c62:	mov    eax,DWORD PTR [eax]
  4f7c64:	mov    DWORD PTR [esp],eax
  4f7c67:	call   20bfb2
  4f7c6c:	mov    edi,eax
  4f7c6e:	mov    DWORD PTR [esp+0x40],esi
  4f7c72:	mov    eax,DWORD PTR [esp+0x2c]
  4f7c76:	mov    eax,DWORD PTR [eax]
  4f7c78:	mov    DWORD PTR [esp+0xc],eax
  4f7c7c:	mov    eax,DWORD PTR [esp+0x40]
  4f7c80:	mov    DWORD PTR [esp+0x8],eax
  4f7c84:	mov    eax,DWORD PTR [ebp+0x8]
  4f7c87:	mov    DWORD PTR [esp+0x4],eax
  4f7c8b:	mov    DWORD PTR [esp],edi
  4f7c8e:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  4f7c93:	mov    ecx,DWORD PTR [esp+0x3c]
  4f7c97:	test   ecx,ecx
  4f7c99:	je     4f7cd5
  4f7c9b:	mov    eax,DWORD PTR [esp+0x38]
  4f7c9f:	mov    eax,DWORD PTR [eax]
  4f7ca1:	mov    DWORD PTR [esp+0xc],eax
  4f7ca5:	mov    DWORD PTR [esp+0x8],edi
  4f7ca9:	mov    DWORD PTR [esp],ecx
  4f7cac:	mov    DWORD PTR [esp+0x4],0x50
  4f7cb4:	call   123bac5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::Add
  4f7cb9:	lea    esp,[ebp-0xc]
  4f7cbc:	pop    esi
  4f7cbd:	pop    edi
  4f7cbe:	pop    ebx
  4f7cbf:	pop    ebp
  4f7cc0:	ret
  4f7cc1:	call   1fbc48
  4f7cc6:	call   540b98
  4f7ccb:	call   1fbc48
  4f7cd0:	call   540b98
  4f7cd5:	call   1fbc48
  4f7cda:	call   540b98