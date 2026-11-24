
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c54c4:
  6c54c4:	push   ebp
  6c54c5:	mov    ebp,esp
  6c54c7:	push   ebx
  6c54c8:	push   edi
  6c54c9:	push   esi
  6c54ca:	and    esp,0xfffffff0
  6c54cd:	sub    esp,0x30
  6c54d0:	call   6c54d5
  6c54d5:	pop    ebx
  6c54d6:	add    ebx,0x184ca6f
  6c54dc:	mov    esi,DWORD PTR [ebp+0x8]
  6c54df:	mov    al,BYTE PTR [ebx+0x5f64e]
  6c54e5:	test   al,al
  6c54e7:	jne    6c5500
  6c54e9:	lea    eax,[ebx-0x66eb58]
  6c54ef:	mov    eax,DWORD PTR [eax]
  6c54f1:	mov    DWORD PTR [esp],eax
  6c54f4:	call   1ca6e8
  6c54f9:	mov    BYTE PTR [ebx+0x5f64e],0x1
  6c5500:	mov    DWORD PTR [esp+0x28],0x0
  6c5508:	mov    DWORD PTR [esp],esi
  6c550b:	call   6c425a  ; ABH.GameDatas.BirdGameData::get_ClassItem
  6c5510:	xorps  xmm0,xmm0
  6c5513:	test   eax,eax
  6c5515:	je     6c56c8
  6c551b:	lea    eax,[ebx+0x45820]
  6c5521:	mov    eax,DWORD PTR [eax]
  6c5523:	test   BYTE PTR [eax+0xb2],0x1
  6c552a:	je     6c553a
  6c552c:	cmp    DWORD PTR [eax+0x60],0x0
  6c5530:	jne    6c553a
  6c5532:	mov    DWORD PTR [esp],eax
  6c5535:	call   1db0b8
  6c553a:	mov    DWORD PTR [esp+0x4],0x0
  6c5542:	mov    DWORD PTR [esp],0x0
  6c5549:	call   107cf95  ; DIContainerBalancing::get_Service
  6c554e:	mov    edi,eax
  6c5550:	mov    DWORD PTR [esp],esi
  6c5553:	call   6c425a  ; ABH.GameDatas.BirdGameData::get_ClassItem
  6c5558:	test   eax,eax
  6c555a:	je     6c56da
  6c5560:	mov    esi,edi
  6c5562:	lea    ecx,[ebx+0x4a830]
  6c5568:	mov    ecx,DWORD PTR [ecx]
  6c556a:	mov    DWORD PTR [esp+0x4],ecx
  6c556e:	mov    DWORD PTR [esp],eax
  6c5571:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c5576:	test   eax,eax
  6c5578:	je     6c56da
  6c557e:	mov    DWORD PTR [esp],eax
  6c5581:	mov    DWORD PTR [esp+0x4],0x0
  6c5589:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6c558e:	mov    DWORD PTR [esp+0x28],eax
  6c5592:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6c5598:	mov    eax,DWORD PTR [eax]
  6c559a:	mov    DWORD PTR [esp+0x4],eax
  6c559e:	lea    eax,[esp+0x28]
  6c55a2:	mov    DWORD PTR [esp],eax
  6c55a5:	mov    DWORD PTR [esp+0x8],0x0
  6c55ad:	call   fea004
  6c55b2:	mov    edi,eax
  6c55b4:	lea    eax,[ebx+0x430e4]
  6c55ba:	mov    eax,DWORD PTR [eax]
  6c55bc:	test   BYTE PTR [eax+0xb2],0x1
  6c55c3:	je     6c55d3
  6c55c5:	cmp    DWORD PTR [eax+0x60],0x0
  6c55c9:	jne    6c55d3
  6c55cb:	mov    DWORD PTR [esp],eax
  6c55ce:	call   1db0b8
  6c55d3:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  6c55d9:	mov    eax,DWORD PTR [eax]
  6c55db:	mov    DWORD PTR [esp+0x8],edi
  6c55df:	mov    DWORD PTR [esp+0x4],eax
  6c55e3:	mov    DWORD PTR [esp+0xc],0x0
  6c55eb:	mov    DWORD PTR [esp],0x0
  6c55f2:	call   ca462a  ; System.String::Concat
  6c55f7:	mov    DWORD PTR [esp+0x1c],eax
  6c55fb:	test   esi,esi
  6c55fd:	je     6c56da
  6c5603:	lea    eax,[ebx+0x4a834]
  6c5609:	mov    eax,DWORD PTR [eax]
  6c560b:	mov    DWORD PTR [esp+0x14],eax
  6c560f:	mov    ecx,DWORD PTR [eax+0xc]
  6c5612:	movzx  eax,WORD PTR [eax+0x2c]
  6c5616:	mov    DWORD PTR [esp+0x10],eax
  6c561a:	mov    edx,DWORD PTR [esi]
  6c561c:	mov    DWORD PTR [esp+0x18],esi
  6c5620:	movzx  esi,WORD PTR [edx+0xaa]
  6c5627:	test   esi,esi
  6c5629:	je     6c563a
  6c562b:	mov    eax,DWORD PTR [edx+0x4c]
  6c562e:	xor    edi,edi
  6c5630:	cmp    DWORD PTR [eax+edi*8],ecx
  6c5633:	je     6c5654
  6c5635:	inc    edi
  6c5636:	cmp    edi,esi
  6c5638:	jb     6c5630
  6c563a:	mov    eax,DWORD PTR [esp+0x10]
  6c563e:	mov    DWORD PTR [esp+0x8],eax
  6c5642:	mov    DWORD PTR [esp+0x4],ecx
  6c5646:	mov    esi,DWORD PTR [esp+0x18]
  6c564a:	mov    DWORD PTR [esp],esi
  6c564d:	call   1c1964
  6c5652:	jmp    6c5667
  6c5654:	mov    ecx,DWORD PTR [esp+0x10]
  6c5658:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  6c565c:	lea    eax,[edx+ecx*8+0xb4]
  6c5663:	mov    esi,DWORD PTR [esp+0x18]
  6c5667:	mov    eax,DWORD PTR [eax+0x4]
  6c566a:	mov    ecx,DWORD PTR [esp+0x14]
  6c566e:	mov    DWORD PTR [esp+0x4],ecx
  6c5672:	mov    DWORD PTR [esp],eax
  6c5675:	call   1da450
  6c567a:	mov    DWORD PTR [esp+0x8],eax
  6c567e:	mov    ecx,DWORD PTR [esp+0x1c]
  6c5682:	mov    DWORD PTR [esp+0x4],ecx
  6c5686:	mov    DWORD PTR [esp],esi
  6c5689:	call   DWORD PTR [eax]
  6c568b:	test   eax,eax
  6c568d:	xorps  xmm0,xmm0
  6c5690:	je     6c56c8
  6c5692:	mov    DWORD PTR [esp],eax
  6c5695:	mov    DWORD PTR [esp+0x4],0x0
  6c569d:	call   170105d  ; ABH.Shared.BalancingData.ExperienceMasteryBalancingData::get_StatBonus
  6c56a2:	mov    esi,eax
  6c56a4:	mov    eax,DWORD PTR [ebp+0x8]
  6c56a7:	mov    DWORD PTR [esp],eax
  6c56aa:	call   6c5437  ; ABH.GameDatas.BirdGameData::get_ClassIndependentHealth
  6c56af:	fstp   DWORD PTR [esp+0x24]
  6c56b3:	xorps  xmm0,xmm0
  6c56b6:	cvtsi2ss xmm0,esi
  6c56ba:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6c56c2:	mulss  xmm0,DWORD PTR [esp+0x24]
  6c56c8:	movss  DWORD PTR [esp+0x20],xmm0
  6c56ce:	fld    DWORD PTR [esp+0x20]
  6c56d2:	lea    esp,[ebp-0xc]
  6c56d5:	pop    esi
  6c56d6:	pop    edi
  6c56d7:	pop    ebx
  6c56d8:	pop    ebp
  6c56d9:	ret
  6c56da:	call   1fbc48
  6c56df:	call   6b106a