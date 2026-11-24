
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ebd536:
  ebd536:	push   ebp
  ebd537:	mov    ebp,esp
  ebd539:	push   ebx
  ebd53a:	push   edi
  ebd53b:	push   esi
  ebd53c:	and    esp,0xfffffff0
  ebd53f:	sub    esp,0x20
  ebd542:	call   ebd547
  ebd547:	pop    ebx
  ebd548:	add    ebx,0x10549fd
  ebd54e:	mov    esi,DWORD PTR [ebp+0x20]
  ebd551:	mov    al,BYTE PTR [ebx+0x626c9]
  ebd557:	test   al,al
  ebd559:	mov    edi,DWORD PTR [ebp+0x8]
  ebd55c:	jne    ebd575
  ebd55e:	lea    eax,[ebx-0x66fbf4]
  ebd564:	mov    eax,DWORD PTR [eax]
  ebd566:	mov    DWORD PTR [esp],eax
  ebd569:	call   1ca6e8
  ebd56e:	mov    BYTE PTR [ebx+0x626c9],0x1
  ebd575:	mov    BYTE PTR [edi+0x3b],0x1
  ebd579:	mov    DWORD PTR [esp],edi
  ebd57c:	mov    DWORD PTR [esp+0x4],0x0
  ebd584:	call   124632e  ; System.Object::.ctor
  ebd589:	mov    ecx,DWORD PTR [ebp+0x18]
  ebd58c:	mov    DWORD PTR [edi+0x8],ecx
  ebd58f:	mov    DWORD PTR [edi+0xc],esi
  ebd592:	mov    eax,DWORD PTR [ebp+0x30]
  ebd595:	mov    DWORD PTR [edi+0x28],eax
  ebd598:	mov    eax,DWORD PTR [ebp+0x2c]
  ebd59b:	mov    DWORD PTR [edi+0x2c],eax
  ebd59e:	mov    eax,DWORD PTR [ebp+0x28]
  ebd5a1:	mov    DWORD PTR [edi+0x10],eax
  ebd5a4:	mov    eax,DWORD PTR [ebp+0x10]
  ebd5a7:	mov    DWORD PTR [edi+0x20],eax
  ebd5aa:	mov    eax,DWORD PTR [ebp+0xc]
  ebd5ad:	mov    DWORD PTR [edi+0x24],eax
  ebd5b0:	test   esi,esi
  ebd5b2:	je     ebd656
  ebd5b8:	mov    eax,DWORD PTR [esi+0x20]
  ebd5bb:	mov    DWORD PTR [edi+0x3c],eax
  ebd5be:	lea    esi,[ebx+0x4a150]
  ebd5c4:	mov    eax,DWORD PTR [esi]
  ebd5c6:	mov    DWORD PTR [esp+0x8],eax
  ebd5ca:	mov    DWORD PTR [esp+0x4],ecx
  ebd5ce:	mov    DWORD PTR [esp],0x0
  ebd5d5:	call   15eff96
  ebd5da:	test   eax,eax
  ebd5dc:	je     ebd656
  ebd5de:	mov    DWORD PTR [esp],eax
  ebd5e1:	mov    DWORD PTR [esp+0x4],0x0
  ebd5e9:	call   179afcb  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectAssetId
  ebd5ee:	mov    DWORD PTR [edi+0x30],eax
  ebd5f1:	mov    eax,DWORD PTR [esi]
  ebd5f3:	mov    DWORD PTR [esp+0x8],eax
  ebd5f7:	mov    eax,DWORD PTR [ebp+0x18]
  ebd5fa:	mov    DWORD PTR [esp+0x4],eax
  ebd5fe:	mov    DWORD PTR [esp],0x0
  ebd605:	call   15eff96
  ebd60a:	test   eax,eax
  ebd60c:	je     ebd656
  ebd60e:	mov    esi,DWORD PTR [ebp+0x1c]
  ebd611:	mov    DWORD PTR [esp],eax
  ebd614:	mov    DWORD PTR [esp+0x4],0x0
  ebd61c:	call   179afa8  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectAtlasId
  ebd621:	mov    DWORD PTR [edi+0x34],eax
  ebd624:	mov    DWORD PTR [edi+0x44],esi
  ebd627:	mov    DWORD PTR [edi+0x40],esi
  ebd62a:	mov    eax,DWORD PTR [ebp+0x24]
  ebd62d:	mov    DWORD PTR [edi+0x1c],eax
  ebd630:	mov    eax,DWORD PTR [ebp+0x20]
  ebd633:	mov    esi,eax
  ebd635:	mov    DWORD PTR [esp+0x8],esi
  ebd639:	mov    eax,DWORD PTR [ebp+0xc]
  ebd63c:	mov    DWORD PTR [esp+0x4],eax
  ebd640:	mov    DWORD PTR [esp],edi
  ebd643:	call   ebcf15  ; ABH.GameDatas.Battle.BattleEffectGameData::InitActions
  ebd648:	mov    eax,DWORD PTR [esi+0x20]
  ebd64b:	mov    DWORD PTR [edi+0x48],eax
  ebd64e:	lea    esp,[ebp-0xc]
  ebd651:	pop    esi
  ebd652:	pop    edi
  ebd653:	pop    ebx
  ebd654:	pop    ebp
  ebd655:	ret
  ebd656:	call   1fbc48
  ebd65b:	call   ebbb41