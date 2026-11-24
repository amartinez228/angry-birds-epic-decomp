
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d5408:
  6d5408:	push   ebp
  6d5409:	mov    ebp,esp
  6d540b:	push   ebx
  6d540c:	push   edi
  6d540d:	push   esi
  6d540e:	and    esp,0xfffffff0
  6d5411:	sub    esp,0x20
  6d5414:	call   6d5419
  6d5419:	pop    ebx
  6d541a:	add    ebx,0x183cb2b
  6d5420:	mov    esi,DWORD PTR [ebp+0xc]
  6d5423:	mov    al,BYTE PTR [ebx+0x5f714]
  6d5429:	test   al,al
  6d542b:	jne    6d5444
  6d542d:	lea    eax,[ebx-0x668444]
  6d5433:	mov    eax,DWORD PTR [eax]
  6d5435:	mov    DWORD PTR [esp],eax
  6d5438:	call   1ca6e8
  6d543d:	mov    BYTE PTR [ebx+0x5f714],0x1
  6d5444:	mov    DWORD PTR [esp+0x18],0x0
  6d544c:	test   esi,esi
  6d544e:	je     6d55ab
  6d5454:	mov    DWORD PTR [esp],esi
  6d5457:	mov    DWORD PTR [esp+0x4],0x0
  6d545f:	call   1700bd1  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_RestrictedBirdId
  6d5464:	mov    edi,eax
  6d5466:	lea    eax,[ebx+0x430e4]
  6d546c:	mov    DWORD PTR [esp+0x14],eax
  6d5470:	mov    eax,DWORD PTR [eax]
  6d5472:	test   BYTE PTR [eax+0xb2],0x1
  6d5479:	je     6d5489
  6d547b:	cmp    DWORD PTR [eax+0x60],0x0
  6d547f:	jne    6d5489
  6d5481:	mov    DWORD PTR [esp],eax
  6d5484:	call   1db0b8
  6d5489:	mov    DWORD PTR [esp+0x4],edi
  6d548d:	mov    DWORD PTR [esp+0x8],0x0
  6d5495:	mov    DWORD PTR [esp],0x0
  6d549c:	call   cbedf7  ; System.String::IsNullOrEmpty
  6d54a1:	test   al,al
  6d54a3:	jne    6d55a0
  6d54a9:	mov    edi,DWORD PTR [ebp+0x10]
  6d54ac:	mov    DWORD PTR [esp],esi
  6d54af:	mov    DWORD PTR [esp+0x4],0x0
  6d54b7:	call   1700bf4  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_DirectAssetAndLoca
  6d54bc:	test   edi,edi
  6d54be:	js     6d55a0
  6d54c4:	test   al,al
  6d54c6:	jne    6d55a0
  6d54cc:	mov    DWORD PTR [esp],esi
  6d54cf:	mov    DWORD PTR [esp+0x4],0x0
  6d54d7:	call   1700a2c  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_ItemType
  6d54dc:	cmp    eax,0x3
  6d54df:	je     6d54fa
  6d54e1:	mov    DWORD PTR [esp],esi
  6d54e4:	mov    DWORD PTR [esp+0x4],0x0
  6d54ec:	call   1700a2c  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_ItemType
  6d54f1:	cmp    eax,0x4
  6d54f4:	jne    6d55a0
  6d54fa:	mov    DWORD PTR [esp+0x8],edi
  6d54fe:	mov    DWORD PTR [esp+0x4],esi
  6d5502:	call   6d5764  ; ABH.GameDatas.EquipmentGameData::GetAssetAndLocaBaseLevel
  6d5507:	mov    edi,eax
  6d5509:	mov    DWORD PTR [esp],esi
  6d550c:	mov    DWORD PTR [esp+0x4],0x0
  6d5514:	call   1700c5e  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_AssetCycleCount
  6d5519:	mov    ecx,eax
  6d551b:	dec    edi
  6d551c:	mov    edx,0x55555556
  6d5521:	mov    eax,edi
  6d5523:	imul   edx
  6d5525:	mov    eax,edx
  6d5527:	shr    eax,0x1f
  6d552a:	add    eax,edx
  6d552c:	cdq
  6d552d:	idiv   ecx
  6d552f:	inc    edx
  6d5530:	mov    DWORD PTR [esp+0x18],edx
  6d5534:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6d553a:	mov    eax,DWORD PTR [eax]
  6d553c:	mov    DWORD PTR [esp+0x4],eax
  6d5540:	lea    eax,[esp+0x18]
  6d5544:	mov    DWORD PTR [esp],eax
  6d5547:	mov    DWORD PTR [esp+0x8],0x0
  6d554f:	call   fea004
  6d5554:	mov    edi,eax
  6d5556:	mov    eax,DWORD PTR [esp+0x14]
  6d555a:	mov    eax,DWORD PTR [eax]
  6d555c:	test   BYTE PTR [eax+0xb2],0x1
  6d5563:	je     6d5573
  6d5565:	cmp    DWORD PTR [eax+0x60],0x0
  6d5569:	jne    6d5573
  6d556b:	mov    DWORD PTR [esp],eax
  6d556e:	call   1db0b8
  6d5573:	lea    eax,[ebx+0x52488]  ; literal "_"
  6d5579:	mov    eax,DWORD PTR [eax]
  6d557b:	mov    DWORD PTR [esp+0xc],edi
  6d557f:	mov    DWORD PTR [esp+0x8],eax
  6d5583:	mov    eax,DWORD PTR [ebp+0x14]
  6d5586:	mov    DWORD PTR [esp+0x4],eax
  6d558a:	mov    DWORD PTR [esp+0x10],0x0
  6d5592:	mov    DWORD PTR [esp],0x0
  6d5599:	call   caa312  ; System.String::Concat
  6d559e:	jmp    6d55a3
  6d55a0:	mov    eax,DWORD PTR [ebp+0x14]
  6d55a3:	lea    esp,[ebp-0xc]
  6d55a6:	pop    esi
  6d55a7:	pop    edi
  6d55a8:	pop    ebx
  6d55a9:	pop    ebp
  6d55aa:	ret
  6d55ab:	call   1fbc48
  6d55b0:	call   6b106a