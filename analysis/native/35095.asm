
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f5485:
  6f5485:	push   ebp
  6f5486:	mov    ebp,esp
  6f5488:	push   ebx
  6f5489:	push   edi
  6f548a:	push   esi
  6f548b:	and    esp,0xfffffff0
  6f548e:	sub    esp,0x30
  6f5491:	call   6f5496
  6f5496:	pop    ebx
  6f5497:	add    ebx,0x181caae
  6f549d:	mov    esi,DWORD PTR [ebp+0x8]
  6f54a0:	mov    al,BYTE PTR [ebx+0x5f80e]
  6f54a6:	test   al,al
  6f54a8:	jne    6f54c1
  6f54aa:	lea    eax,[ebx-0x65fccc]
  6f54b0:	mov    eax,DWORD PTR [eax]
  6f54b2:	mov    DWORD PTR [esp],eax
  6f54b5:	call   1ca6e8
  6f54ba:	mov    BYTE PTR [ebx+0x5f80e],0x1
  6f54c1:	mov    DWORD PTR [esp+0x28],0x0
  6f54c9:	mov    DWORD PTR [esp],esi
  6f54cc:	call   6f4ce0  ; ABH.GameDatas.PigGameData::get_ClassItem
  6f54d1:	xorps  xmm0,xmm0
  6f54d4:	test   eax,eax
  6f54d6:	je     6f5689
  6f54dc:	lea    eax,[ebx+0x45820]
  6f54e2:	mov    eax,DWORD PTR [eax]
  6f54e4:	test   BYTE PTR [eax+0xb2],0x1
  6f54eb:	je     6f54fb
  6f54ed:	cmp    DWORD PTR [eax+0x60],0x0
  6f54f1:	jne    6f54fb
  6f54f3:	mov    DWORD PTR [esp],eax
  6f54f6:	call   1db0b8
  6f54fb:	mov    DWORD PTR [esp+0x4],0x0
  6f5503:	mov    DWORD PTR [esp],0x0
  6f550a:	call   107cf95  ; DIContainerBalancing::get_Service
  6f550f:	mov    edi,eax
  6f5511:	mov    DWORD PTR [esp],esi
  6f5514:	call   6f4ce0  ; ABH.GameDatas.PigGameData::get_ClassItem
  6f5519:	test   eax,eax
  6f551b:	je     6f569b
  6f5521:	mov    esi,edi
  6f5523:	lea    ecx,[ebx+0x4a830]
  6f5529:	mov    ecx,DWORD PTR [ecx]
  6f552b:	mov    DWORD PTR [esp+0x4],ecx
  6f552f:	mov    DWORD PTR [esp],eax
  6f5532:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f5537:	test   eax,eax
  6f5539:	je     6f569b
  6f553f:	mov    DWORD PTR [esp],eax
  6f5542:	mov    DWORD PTR [esp+0x4],0x0
  6f554a:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6f554f:	mov    DWORD PTR [esp+0x28],eax
  6f5553:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6f5559:	mov    eax,DWORD PTR [eax]
  6f555b:	mov    DWORD PTR [esp+0x4],eax
  6f555f:	lea    eax,[esp+0x28]
  6f5563:	mov    DWORD PTR [esp],eax
  6f5566:	mov    DWORD PTR [esp+0x8],0x0
  6f556e:	call   fea004
  6f5573:	mov    edi,eax
  6f5575:	lea    eax,[ebx+0x430e4]
  6f557b:	mov    eax,DWORD PTR [eax]
  6f557d:	test   BYTE PTR [eax+0xb2],0x1
  6f5584:	je     6f5594
  6f5586:	cmp    DWORD PTR [eax+0x60],0x0
  6f558a:	jne    6f5594
  6f558c:	mov    DWORD PTR [esp],eax
  6f558f:	call   1db0b8
  6f5594:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  6f559a:	mov    eax,DWORD PTR [eax]
  6f559c:	mov    DWORD PTR [esp+0x8],edi
  6f55a0:	mov    DWORD PTR [esp+0x4],eax
  6f55a4:	mov    DWORD PTR [esp+0xc],0x0
  6f55ac:	mov    DWORD PTR [esp],0x0
  6f55b3:	call   ca462a  ; System.String::Concat
  6f55b8:	mov    DWORD PTR [esp+0x1c],eax
  6f55bc:	test   esi,esi
  6f55be:	je     6f569b
  6f55c4:	lea    eax,[ebx+0x4a834]
  6f55ca:	mov    eax,DWORD PTR [eax]
  6f55cc:	mov    DWORD PTR [esp+0x14],eax
  6f55d0:	mov    ecx,DWORD PTR [eax+0xc]
  6f55d3:	movzx  eax,WORD PTR [eax+0x2c]
  6f55d7:	mov    DWORD PTR [esp+0x10],eax
  6f55db:	mov    edx,DWORD PTR [esi]
  6f55dd:	mov    DWORD PTR [esp+0x18],esi
  6f55e1:	movzx  esi,WORD PTR [edx+0xaa]
  6f55e8:	test   esi,esi
  6f55ea:	je     6f55fb
  6f55ec:	mov    eax,DWORD PTR [edx+0x4c]
  6f55ef:	xor    edi,edi
  6f55f1:	cmp    DWORD PTR [eax+edi*8],ecx
  6f55f4:	je     6f5615
  6f55f6:	inc    edi
  6f55f7:	cmp    edi,esi
  6f55f9:	jb     6f55f1
  6f55fb:	mov    eax,DWORD PTR [esp+0x10]
  6f55ff:	mov    DWORD PTR [esp+0x8],eax
  6f5603:	mov    DWORD PTR [esp+0x4],ecx
  6f5607:	mov    esi,DWORD PTR [esp+0x18]
  6f560b:	mov    DWORD PTR [esp],esi
  6f560e:	call   1c1964
  6f5613:	jmp    6f5628
  6f5615:	mov    ecx,DWORD PTR [esp+0x10]
  6f5619:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  6f561d:	lea    eax,[edx+ecx*8+0xb4]
  6f5624:	mov    esi,DWORD PTR [esp+0x18]
  6f5628:	mov    eax,DWORD PTR [eax+0x4]
  6f562b:	mov    ecx,DWORD PTR [esp+0x14]
  6f562f:	mov    DWORD PTR [esp+0x4],ecx
  6f5633:	mov    DWORD PTR [esp],eax
  6f5636:	call   1da450
  6f563b:	mov    DWORD PTR [esp+0x8],eax
  6f563f:	mov    ecx,DWORD PTR [esp+0x1c]
  6f5643:	mov    DWORD PTR [esp+0x4],ecx
  6f5647:	mov    DWORD PTR [esp],esi
  6f564a:	call   DWORD PTR [eax]
  6f564c:	test   eax,eax
  6f564e:	xorps  xmm0,xmm0
  6f5651:	je     6f5689
  6f5653:	mov    DWORD PTR [esp],eax
  6f5656:	mov    DWORD PTR [esp+0x4],0x0
  6f565e:	call   170105d  ; ABH.Shared.BalancingData.ExperienceMasteryBalancingData::get_StatBonus
  6f5663:	mov    esi,eax
  6f5665:	mov    eax,DWORD PTR [ebp+0x8]
  6f5668:	mov    DWORD PTR [esp],eax
  6f566b:	call   6f53f8  ; ABH.GameDatas.PigGameData::get_ClassIndependentAttack
  6f5670:	fstp   DWORD PTR [esp+0x24]
  6f5674:	xorps  xmm0,xmm0
  6f5677:	cvtsi2ss xmm0,esi
  6f567b:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6f5683:	mulss  xmm0,DWORD PTR [esp+0x24]
  6f5689:	movss  DWORD PTR [esp+0x20],xmm0
  6f568f:	fld    DWORD PTR [esp+0x20]
  6f5693:	lea    esp,[ebp-0xc]
  6f5696:	pop    esi
  6f5697:	pop    edi
  6f5698:	pop    ebx
  6f5699:	pop    ebp
  6f569a:	ret
  6f569b:	call   1fbc48
  6f56a0:	call   6b106a