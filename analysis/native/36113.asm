
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed8346:
  ed8346:	push   ebp
  ed8347:	mov    ebp,esp
  ed8349:	push   ebx
  ed834a:	push   edi
  ed834b:	push   esi
  ed834c:	and    esp,0xfffffff0
  ed834f:	sub    esp,0x50
  ed8352:	call   ed8357
  ed8357:	pop    ebx
  ed8358:	add    ebx,0x1039bed
  ed835e:	mov    edi,DWORD PTR [ebp+0x8]
  ed8361:	mov    al,BYTE PTR [ebx+0x62799]
  ed8367:	test   al,al
  ed8369:	jne    ed8382
  ed836b:	lea    eax,[ebx-0x6705b0]
  ed8371:	mov    eax,DWORD PTR [eax]
  ed8373:	mov    DWORD PTR [esp],eax
  ed8376:	call   1ca6e8
  ed837b:	mov    BYTE PTR [ebx+0x62799],0x1
  ed8382:	mov    esi,DWORD PTR [ebp+0x14]
  ed8385:	mov    DWORD PTR [esp+0x4],0x0
  ed838d:	mov    DWORD PTR [esp],0x0
  ed8394:	call   167eb9e  ; UnityEngine.Random::get_value
  ed8399:	fstp   DWORD PTR [esp+0x48]
  ed839d:	movss  xmm0,DWORD PTR [edi+0x94]
  ed83a5:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ed83ad:	ucomiss xmm0,DWORD PTR [esp+0x48]
  ed83b2:	jb     ed8702
  ed83b8:	lea    eax,[ebx+0x45290]
  ed83be:	mov    eax,DWORD PTR [eax]
  ed83c0:	mov    DWORD PTR [esp],eax
  ed83c3:	call   20bfb2
  ed83c8:	mov    esi,eax
  ed83ca:	lea    eax,[ebx+0x49708]
  ed83d0:	mov    eax,DWORD PTR [eax]
  ed83d2:	mov    DWORD PTR [esp+0x4],eax
  ed83d6:	mov    DWORD PTR [esp],esi
  ed83d9:	call   4d21ef
  ed83de:	test   esi,esi
  ed83e0:	je     ed8786
  ed83e6:	movss  xmm0,DWORD PTR [edi+0x98]
  ed83ee:	lea    eax,[ebx+0x4970c]
  ed83f4:	mov    eax,DWORD PTR [eax]
  ed83f6:	mov    DWORD PTR [esp+0x8],eax
  ed83fa:	movss  DWORD PTR [esp+0x4],xmm0
  ed8400:	mov    DWORD PTR [esp],esi
  ed8403:	mov    DWORD PTR [esp+0x40],esi
  ed8407:	call   4d30f2
  ed840c:	lea    eax,[ebx+0x4589c]
  ed8412:	mov    eax,DWORD PTR [eax]
  ed8414:	mov    DWORD PTR [esp],eax
  ed8417:	call   20bfb2
  ed841c:	mov    DWORD PTR [esp+0x44],eax
  ed8420:	lea    ecx,[ebx+0x4a138]
  ed8426:	mov    ecx,DWORD PTR [ecx]
  ed8428:	mov    DWORD PTR [esp+0x4],ecx
  ed842c:	mov    DWORD PTR [esp],eax
  ed842f:	call   4c15d9
  ed8434:	lea    eax,[ebx+0x454a8]
  ed843a:	mov    eax,DWORD PTR [eax]
  ed843c:	mov    DWORD PTR [esp],eax
  ed843f:	call   20bfb2
  ed8444:	mov    esi,edi
  ed8446:	mov    edi,eax
  ed8448:	mov    DWORD PTR [esp],edi
  ed844b:	mov    DWORD PTR [esp+0x4],0x0
  ed8453:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
  ed8458:	test   edi,edi
  ed845a:	je     ed8786
  ed8460:	mov    DWORD PTR [esp],edi
  ed8463:	mov    DWORD PTR [esp+0x8],0x0
  ed846b:	mov    DWORD PTR [esp+0x4],0x4
  ed8473:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
  ed8478:	mov    DWORD PTR [esp],edi
  ed847b:	mov    DWORD PTR [esp+0x8],0x0
  ed8483:	mov    DWORD PTR [esp+0x4],0x3
  ed848b:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
  ed8490:	mov    eax,DWORD PTR [esp+0x40]
  ed8494:	mov    DWORD PTR [esp+0x4],eax
  ed8498:	mov    DWORD PTR [esp],edi
  ed849b:	mov    DWORD PTR [esp+0x8],0x0
  ed84a3:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
  ed84a8:	mov    eax,DWORD PTR [esi+0x8]
  ed84ab:	test   eax,eax
  ed84ad:	je     ed8786
  ed84b3:	mov    DWORD PTR [esp],eax
  ed84b6:	mov    DWORD PTR [esp+0x4],0x0
  ed84be:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed84c3:	test   eax,eax
  ed84c5:	je     ed8786
  ed84cb:	mov    DWORD PTR [esp],eax
  ed84ce:	mov    DWORD PTR [esp+0x4],0x0
  ed84d6:	call   17031b6  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectType
  ed84db:	mov    DWORD PTR [esp+0x4],eax
  ed84df:	mov    DWORD PTR [esp],edi
  ed84e2:	mov    DWORD PTR [esp+0x8],0x0
  ed84ea:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
  ed84ef:	mov    eax,DWORD PTR [esi+0x8]
  ed84f2:	test   eax,eax
  ed84f4:	je     ed8786
  ed84fa:	mov    DWORD PTR [esp],eax
  ed84fd:	mov    DWORD PTR [esp+0x4],0x0
  ed8505:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed850a:	test   eax,eax
  ed850c:	je     ed8786
  ed8512:	mov    DWORD PTR [esp],eax
  ed8515:	mov    DWORD PTR [esp+0x4],0x0
  ed851d:	call   1703170  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectDuration
  ed8522:	mov    DWORD PTR [esp+0x4],eax
  ed8526:	mov    DWORD PTR [esp],edi
  ed8529:	mov    DWORD PTR [esp+0x8],0x0
  ed8531:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
  ed8536:	mov    eax,DWORD PTR [esi+0x8]
  ed8539:	test   eax,eax
  ed853b:	je     ed8786
  ed8541:	mov    DWORD PTR [esp],eax
  ed8544:	mov    DWORD PTR [esp+0x4],0x0
  ed854c:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed8551:	test   eax,eax
  ed8553:	je     ed8786
  ed8559:	mov    DWORD PTR [esp],eax
  ed855c:	mov    DWORD PTR [esp+0x4],0x0
  ed8564:	call   17032ad  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAssetId
  ed8569:	mov    DWORD PTR [esp+0x4],eax
  ed856d:	mov    DWORD PTR [esp],edi
  ed8570:	mov    DWORD PTR [esp+0x8],0x0
  ed8578:	call   179afdb  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAssetId
  ed857d:	mov    eax,DWORD PTR [esi+0x8]
  ed8580:	test   eax,eax
  ed8582:	je     ed8786
  ed8588:	mov    DWORD PTR [esp],eax
  ed858b:	mov    DWORD PTR [esp+0x4],0x0
  ed8593:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed8598:	test   eax,eax
  ed859a:	je     ed8786
  ed85a0:	mov    DWORD PTR [esp],eax
  ed85a3:	mov    DWORD PTR [esp+0x4],0x0
  ed85ab:	call   170328a  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAtlasId
  ed85b0:	mov    DWORD PTR [esp+0x4],eax
  ed85b4:	mov    DWORD PTR [esp],edi
  ed85b7:	mov    DWORD PTR [esp+0x8],0x0
  ed85bf:	call   179afb8  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAtlasId
  ed85c4:	mov    ecx,DWORD PTR [esp+0x44]
  ed85c8:	test   ecx,ecx
  ed85ca:	je     ed8786
  ed85d0:	lea    eax,[ebx+0x4a144]
  ed85d6:	mov    eax,DWORD PTR [eax]
  ed85d8:	mov    DWORD PTR [esp+0x8],eax
  ed85dc:	mov    DWORD PTR [esp+0x4],edi
  ed85e0:	mov    DWORD PTR [esp],ecx
  ed85e3:	call   4c23b4
  ed85e8:	mov    eax,DWORD PTR [esi+0x8]
  ed85eb:	test   eax,eax
  ed85ed:	je     ed8786
  ed85f3:	mov    DWORD PTR [esp],eax
  ed85f6:	mov    DWORD PTR [esp+0x4],0x0
  ed85fe:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed8603:	test   eax,eax
  ed8605:	je     ed8786
  ed860b:	mov    DWORD PTR [esp],eax
  ed860e:	mov    DWORD PTR [esp+0x4],0x0
  ed8616:	call   1703170  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectDuration
  ed861b:	mov    ecx,DWORD PTR [esi+0x8]
  ed861e:	test   ecx,ecx
  ed8620:	je     ed8786
  ed8626:	mov    DWORD PTR [esp+0x40],eax
  ed862a:	mov    DWORD PTR [esp],ecx
  ed862d:	mov    DWORD PTR [esp+0x4],0x0
  ed8635:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed863a:	test   eax,eax
  ed863c:	je     ed8786
  ed8642:	mov    DWORD PTR [esp],eax
  ed8645:	mov    DWORD PTR [esp+0x4],0x0
  ed864d:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  ed8652:	mov    DWORD PTR [esp+0x3c],eax
  ed8656:	mov    eax,DWORD PTR [esi]
  ed8658:	mov    ecx,DWORD PTR [eax+0x110]
  ed865e:	mov    DWORD PTR [esp+0x4],ecx
  ed8662:	mov    DWORD PTR [esp],esi
  ed8665:	call   DWORD PTR [eax+0x10c]
  ed866b:	mov    DWORD PTR [esp+0x38],eax
  ed866f:	mov    eax,DWORD PTR [esi+0x8]
  ed8672:	test   eax,eax
  ed8674:	je     ed8786
  ed867a:	mov    DWORD PTR [esp],eax
  ed867d:	mov    DWORD PTR [esp+0x4],0x0
  ed8685:	call   6b291c  ; ABH.GameDatas.SkillGameData::get_SkillNameId
  ed868a:	mov    esi,eax
  ed868c:	lea    eax,[ebx+0x458a8]
  ed8692:	mov    eax,DWORD PTR [eax]
  ed8694:	mov    DWORD PTR [esp],eax
  ed8697:	call   20bfb2
  ed869c:	mov    edi,eax
  ed869e:	mov    DWORD PTR [esp+0x28],esi
  ed86a2:	mov    eax,DWORD PTR [esp+0x38]
  ed86a6:	mov    DWORD PTR [esp+0x24],eax
  ed86aa:	mov    eax,DWORD PTR [esp+0x3c]
  ed86ae:	mov    DWORD PTR [esp+0x1c],eax
  ed86b2:	mov    eax,DWORD PTR [ebp+0xc]
  ed86b5:	mov    DWORD PTR [esp+0x18],eax
  ed86b9:	mov    eax,DWORD PTR [esp+0x40]
  ed86bd:	mov    DWORD PTR [esp+0x14],eax
  ed86c1:	mov    eax,DWORD PTR [esp+0x44]
  ed86c5:	mov    DWORD PTR [esp+0x10],eax
  ed86c9:	mov    esi,DWORD PTR [ebp+0x14]
  ed86cc:	mov    DWORD PTR [esp+0x8],esi
  ed86d0:	mov    eax,DWORD PTR [ebp+0x10]
  ed86d3:	mov    DWORD PTR [esp+0x4],eax
  ed86d7:	mov    DWORD PTR [esp],edi
  ed86da:	mov    DWORD PTR [esp+0x20],0x2
  ed86e2:	call   ebd536  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
  ed86e7:	test   edi,edi
  ed86e9:	je     ed8786
  ed86ef:	mov    DWORD PTR [esp],edi
  ed86f2:	mov    DWORD PTR [esp+0x4],0x1
  ed86fa:	call   ebf8b0  ; ABH.GameDatas.Battle.BattleEffectGameData::AddEffect
  ed86ff:	mov    edi,DWORD PTR [ebp+0x8]
  ed8702:	cmp    BYTE PTR [edi+0x9c],0x0
  ed8709:	je     ed877e
  ed870b:	test   esi,esi
  ed870d:	je     ed8786
  ed870f:	lea    eax,[ebx+0x45874]
  ed8715:	mov    eax,DWORD PTR [eax]
  ed8717:	mov    ecx,DWORD PTR [esi]
  ed8719:	movzx  edx,WORD PTR [ecx+0xaa]
  ed8720:	test   edx,edx
  ed8722:	je     ed8733
  ed8724:	mov    esi,DWORD PTR [ecx+0x4c]
  ed8727:	xor    edi,edi
  ed8729:	cmp    DWORD PTR [esi+edi*8],eax
  ed872c:	je     ed874e
  ed872e:	inc    edi
  ed872f:	cmp    edi,edx
  ed8731:	jb     ed8729
  ed8733:	mov    DWORD PTR [esp+0x4],eax
  ed8737:	mov    esi,DWORD PTR [ebp+0x14]
  ed873a:	mov    DWORD PTR [esp],esi
  ed873d:	mov    DWORD PTR [esp+0x8],0x11
  ed8745:	call   1c1964
  ed874a:	mov    ecx,eax
  ed874c:	jmp    ed875c
  ed874e:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ed8752:	lea    ecx,[ecx+eax*8+0x13c]
  ed8759:	mov    esi,DWORD PTR [ebp+0x14]
  ed875c:	mov    eax,DWORD PTR [ecx+0x4]
  ed875f:	mov    DWORD PTR [esp+0x4],eax
  ed8763:	mov    DWORD PTR [esp],esi
  ed8766:	call   DWORD PTR [ecx]
  ed8768:	test   eax,eax
  ed876a:	je     ed8786
  ed876c:	mov    DWORD PTR [esp],eax
  ed876f:	mov    DWORD PTR [esp+0x4],0x0
  ed8777:	call   8dee3c  ; CharacterControllerBattleGroundBase::PlaySurprisedAnimation
  ed877c:	fstp   st(0)
  ed877e:	lea    esp,[ebp-0xc]
  ed8781:	pop    esi
  ed8782:	pop    edi
  ed8783:	pop    ebx
  ed8784:	pop    ebp
  ed8785:	ret
  ed8786:	call   1fbc48
  ed878b:	call   ebbb41