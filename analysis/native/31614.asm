
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008b9540:
  8b9540:	push   ebp
  8b9541:	mov    ebp,esp
  8b9543:	push   ebx
  8b9544:	push   edi
  8b9545:	push   esi
  8b9546:	and    esp,0xfffffff0
  8b9549:	sub    esp,0x20
  8b954c:	call   8b9551
  8b9551:	pop    ebx
  8b9552:	add    ebx,0x16589f3
  8b9558:	mov    esi,DWORD PTR [ebp+0x8]
  8b955b:	mov    al,BYTE PTR [ebx+0x600dd]
  8b9561:	test   al,al
  8b9563:	jne    8b957c
  8b9565:	lea    eax,[ebx-0x66dc2c]
  8b956b:	mov    eax,DWORD PTR [eax]
  8b956d:	mov    DWORD PTR [esp],eax
  8b9570:	call   1ca6e8
  8b9575:	mov    BYTE PTR [ebx+0x600dd],0x1
  8b957c:	mov    edi,DWORD PTR [esi+0x14]
  8b957f:	test   edi,edi
  8b9581:	je     8b9725
  8b9587:	lea    eax,[ebx+0x45884]
  8b958d:	mov    DWORD PTR [esp+0x10],eax
  8b9591:	mov    DWORD PTR [esp+0x14],ebx
  8b9595:	mov    eax,DWORD PTR [eax]
  8b9597:	mov    ebx,DWORD PTR [edi]
  8b9599:	movzx  edx,WORD PTR [ebx+0xaa]
  8b95a0:	test   edx,edx
  8b95a2:	je     8b95b3
  8b95a4:	mov    esi,DWORD PTR [ebx+0x4c]
  8b95a7:	xor    ecx,ecx
  8b95a9:	cmp    DWORD PTR [esi+ecx*8],eax
  8b95ac:	je     8b95cf
  8b95ae:	inc    ecx
  8b95af:	cmp    ecx,edx
  8b95b1:	jb     8b95a9
  8b95b3:	mov    DWORD PTR [esp+0x4],eax
  8b95b7:	mov    DWORD PTR [esp],edi
  8b95ba:	mov    DWORD PTR [esp+0x8],0x9
  8b95c2:	mov    ebx,DWORD PTR [esp+0x14]
  8b95c6:	call   1c1964
  8b95cb:	mov    ecx,eax
  8b95cd:	jmp    8b95de
  8b95cf:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  8b95d3:	lea    ecx,[ebx+eax*8+0xfc]
  8b95da:	mov    ebx,DWORD PTR [esp+0x14]
  8b95de:	mov    eax,DWORD PTR [ecx+0x4]
  8b95e1:	mov    DWORD PTR [esp+0x4],eax
  8b95e5:	mov    DWORD PTR [esp],edi
  8b95e8:	call   DWORD PTR [ecx]
  8b95ea:	test   eax,eax
  8b95ec:	mov    ecx,DWORD PTR [ebp+0x8]
  8b95ef:	je     8b963e
  8b95f1:	mov    DWORD PTR [esp+0x14],ebx
  8b95f5:	mov    edi,DWORD PTR [ecx+0x14]
  8b95f8:	test   edi,edi
  8b95fa:	je     8b9721
  8b9600:	mov    eax,DWORD PTR [esp+0x10]
  8b9604:	mov    eax,DWORD PTR [eax]
  8b9606:	mov    ecx,DWORD PTR [edi]
  8b9608:	movzx  edx,WORD PTR [ecx+0xaa]
  8b960f:	test   edx,edx
  8b9611:	je     8b9622
  8b9613:	mov    esi,DWORD PTR [ecx+0x4c]
  8b9616:	xor    ebx,ebx
  8b9618:	cmp    DWORD PTR [esi+ebx*8],eax
  8b961b:	je     8b9652
  8b961d:	inc    ebx
  8b961e:	cmp    ebx,edx
  8b9620:	jb     8b9618
  8b9622:	mov    DWORD PTR [esp+0x4],eax
  8b9626:	mov    DWORD PTR [esp],edi
  8b9629:	mov    DWORD PTR [esp+0x8],0x9
  8b9631:	mov    ebx,DWORD PTR [esp+0x14]
  8b9635:	call   1c1964
  8b963a:	mov    ecx,eax
  8b963c:	jmp    8b9661
  8b963e:	lea    eax,[ebx+0x592b0]  ; literal "Action_Attack_1"
  8b9644:	mov    eax,DWORD PTR [eax]
  8b9646:	mov    DWORD PTR [esp+0x4],eax
  8b964a:	mov    DWORD PTR [esp],ecx
  8b964d:	jmp    8b970c
  8b9652:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8b9656:	lea    ecx,[ecx+eax*8+0xfc]
  8b965d:	mov    ebx,DWORD PTR [esp+0x14]
  8b9661:	mov    eax,DWORD PTR [ecx+0x4]
  8b9664:	mov    DWORD PTR [esp+0x4],eax
  8b9668:	mov    DWORD PTR [esp],edi
  8b966b:	call   DWORD PTR [ecx]
  8b966d:	test   eax,eax
  8b966f:	je     8b9725
  8b9675:	lea    ecx,[ebx+0x4a0c8]
  8b967b:	mov    ecx,DWORD PTR [ecx]
  8b967d:	mov    DWORD PTR [esp+0x4],ecx
  8b9681:	mov    DWORD PTR [esp],eax
  8b9684:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  8b9689:	test   eax,eax
  8b968b:	je     8b9725
  8b9691:	mov    DWORD PTR [esp],eax
  8b9694:	mov    DWORD PTR [esp+0x4],0x0
  8b969c:	call   1700b44  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_AnimationIndex
  8b96a1:	mov    DWORD PTR [esp+0x18],eax
  8b96a5:	lea    eax,[ebx+0x43120]
  8b96ab:	mov    eax,DWORD PTR [eax]
  8b96ad:	lea    ecx,[esp+0x18]
  8b96b1:	mov    DWORD PTR [esp+0x4],ecx
  8b96b5:	mov    DWORD PTR [esp],eax
  8b96b8:	call   20bf14
  8b96bd:	mov    esi,eax
  8b96bf:	lea    eax,[ebx+0x430e4]
  8b96c5:	mov    eax,DWORD PTR [eax]
  8b96c7:	test   BYTE PTR [eax+0xb2],0x1
  8b96ce:	je     8b96de
  8b96d0:	cmp    DWORD PTR [eax+0x60],0x0
  8b96d4:	jne    8b96de
  8b96d6:	mov    DWORD PTR [esp],eax
  8b96d9:	call   1db0b8
  8b96de:	lea    eax,[ebx+0x59478]  ; literal "Action_Attack_"
  8b96e4:	mov    eax,DWORD PTR [eax]
  8b96e6:	mov    DWORD PTR [esp+0x8],esi
  8b96ea:	mov    DWORD PTR [esp+0x4],eax
  8b96ee:	mov    DWORD PTR [esp+0xc],0x0
  8b96f6:	mov    DWORD PTR [esp],0x0
  8b96fd:	call   cb2fed  ; System.String::Concat
  8b9702:	mov    DWORD PTR [esp+0x4],eax
  8b9706:	mov    eax,DWORD PTR [ebp+0x8]
  8b9709:	mov    DWORD PTR [esp],eax
  8b970c:	mov    DWORD PTR [esp+0x8],0x0
  8b9714:	call   e4f269  ; AssetControllerWithBoneAnimationBase::GetAnimationLength
  8b9719:	lea    esp,[ebp-0xc]
  8b971c:	pop    esi
  8b971d:	pop    edi
  8b971e:	pop    ebx
  8b971f:	pop    ebp
  8b9720:	ret
  8b9721:	mov    ebx,DWORD PTR [esp+0x14]
  8b9725:	call   1fbc48
  8b972a:	call   8b3f00