
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00504374:
  504374:	push   ebp
  504375:	mov    ebp,esp
  504377:	push   ebx
  504378:	push   edi
  504379:	push   esi
  50437a:	and    esp,0xfffffff0
  50437d:	sub    esp,0x20
  504380:	call   504385
  504385:	pop    ebx
  504386:	add    ebx,0x1a0dbbf
  50438c:	mov    esi,DWORD PTR [ebp+0x10]
  50438f:	mov    al,BYTE PTR [ebx+0x5d4e4]
  504395:	test   al,al
  504397:	jne    5043b0
  504399:	lea    eax,[ebx-0x66f478]
  50439f:	mov    eax,DWORD PTR [eax]
  5043a1:	mov    DWORD PTR [esp],eax
  5043a4:	call   1ca6e8
  5043a9:	mov    BYTE PTR [ebx+0x5d4e4],0x1
  5043b0:	test   esi,esi
  5043b2:	je     5045fa
  5043b8:	mov    DWORD PTR [esp],esi
  5043bb:	mov    DWORD PTR [esp+0x4],0x0
  5043c3:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  5043c8:	test   eax,eax
  5043ca:	je     5045fa
  5043d0:	mov    DWORD PTR [esp],eax
  5043d3:	mov    DWORD PTR [esp+0x4],0x0
  5043db:	call   16fe50e  ; ABH.Shared.BalancingData.BattleBalancingData::get_ScoringStrategy
  5043e0:	mov    ecx,eax
  5043e2:	cmp    ecx,0x1
  5043e5:	jne    50448a
  5043eb:	lea    eax,[ebx+0x45820]
  5043f1:	mov    eax,DWORD PTR [eax]
  5043f3:	test   BYTE PTR [eax+0xb2],0x1
  5043fa:	je     50440a
  5043fc:	cmp    DWORD PTR [eax+0x60],0x0
  504400:	jne    50440a
  504402:	mov    DWORD PTR [esp],eax
  504405:	call   1db0b8
  50440a:	mov    DWORD PTR [esp+0x4],0x0
  504412:	mov    DWORD PTR [esp],0x0
  504419:	call   107cf95  ; DIContainerBalancing::get_Service
  50441e:	test   eax,eax
  504420:	je     5045fa
  504426:	lea    ecx,[ebx+0x4afac]
  50442c:	mov    edx,DWORD PTR [ecx]
  50442e:	mov    DWORD PTR [esp+0x10],edx
  504432:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  504438:	mov    ecx,DWORD PTR [ecx]
  50443a:	mov    DWORD PTR [esp+0x14],ecx
  50443e:	mov    ecx,DWORD PTR [edx+0xc]
  504441:	movzx  edx,WORD PTR [edx+0x2c]
  504445:	mov    DWORD PTR [esp+0xc],edx
  504449:	mov    edx,DWORD PTR [eax]
  50444b:	mov    DWORD PTR [esp+0x18],eax
  50444f:	movzx  eax,WORD PTR [edx+0xaa]
  504456:	test   eax,eax
  504458:	je     50446d
  50445a:	mov    esi,DWORD PTR [edx+0x4c]
  50445d:	xor    edi,edi
  50445f:	cmp    DWORD PTR [esi+edi*8],ecx
  504462:	je     504530
  504468:	inc    edi
  504469:	cmp    edi,eax
  50446b:	jb     50445f
  50446d:	mov    eax,DWORD PTR [esp+0xc]
  504471:	mov    DWORD PTR [esp+0x8],eax
  504475:	mov    DWORD PTR [esp+0x4],ecx
  504479:	mov    esi,DWORD PTR [esp+0x18]
  50447d:	mov    DWORD PTR [esp],esi
  504480:	call   1c1964
  504485:	jmp    504543
  50448a:	xor    eax,eax
  50448c:	test   ecx,ecx
  50448e:	jne    5045f2
  504494:	lea    eax,[ebx+0x45820]
  50449a:	mov    eax,DWORD PTR [eax]
  50449c:	test   BYTE PTR [eax+0xb2],0x1
  5044a3:	je     5044b3
  5044a5:	cmp    DWORD PTR [eax+0x60],0x0
  5044a9:	jne    5044b3
  5044ab:	mov    DWORD PTR [esp],eax
  5044ae:	call   1db0b8
  5044b3:	mov    DWORD PTR [esp+0x4],0x0
  5044bb:	mov    DWORD PTR [esp],0x0
  5044c2:	call   107cf95  ; DIContainerBalancing::get_Service
  5044c7:	test   eax,eax
  5044c9:	je     5045fa
  5044cf:	lea    ecx,[ebx+0x4afac]
  5044d5:	mov    edx,DWORD PTR [ecx]
  5044d7:	mov    DWORD PTR [esp+0x10],edx
  5044db:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  5044e1:	mov    ecx,DWORD PTR [ecx]
  5044e3:	mov    DWORD PTR [esp+0x14],ecx
  5044e7:	mov    ecx,DWORD PTR [edx+0xc]
  5044ea:	movzx  edx,WORD PTR [edx+0x2c]
  5044ee:	mov    DWORD PTR [esp+0xc],edx
  5044f2:	mov    edx,DWORD PTR [eax]
  5044f4:	mov    DWORD PTR [esp+0x18],eax
  5044f8:	movzx  eax,WORD PTR [edx+0xaa]
  5044ff:	test   eax,eax
  504501:	je     504516
  504503:	mov    esi,DWORD PTR [edx+0x4c]
  504506:	xor    edi,edi
  504508:	cmp    DWORD PTR [esi+edi*8],ecx
  50450b:	je     504594
  504511:	inc    edi
  504512:	cmp    edi,eax
  504514:	jb     504508
  504516:	mov    eax,DWORD PTR [esp+0xc]
  50451a:	mov    DWORD PTR [esp+0x8],eax
  50451e:	mov    DWORD PTR [esp+0x4],ecx
  504522:	mov    esi,DWORD PTR [esp+0x18]
  504526:	mov    DWORD PTR [esp],esi
  504529:	call   1c1964
  50452e:	jmp    5045a7
  504530:	mov    eax,DWORD PTR [esp+0xc]
  504534:	add    eax,DWORD PTR [esi+edi*8+0x4]
  504538:	lea    eax,[edx+eax*8+0xb4]
  50453f:	mov    esi,DWORD PTR [esp+0x18]
  504543:	mov    eax,DWORD PTR [eax+0x4]
  504546:	mov    ecx,DWORD PTR [esp+0x10]
  50454a:	mov    DWORD PTR [esp+0x4],ecx
  50454e:	mov    DWORD PTR [esp],eax
  504551:	call   1da450
  504556:	mov    DWORD PTR [esp+0x8],eax
  50455a:	mov    ecx,DWORD PTR [esp+0x14]
  50455e:	mov    DWORD PTR [esp+0x4],ecx
  504562:	mov    DWORD PTR [esp],esi
  504565:	call   DWORD PTR [eax]
  504567:	test   eax,eax
  504569:	mov    esi,DWORD PTR [ebp+0xc]
  50456c:	je     5045fa
  504572:	mov    DWORD PTR [esp],eax
  504575:	mov    DWORD PTR [esp+0x4],0x0
  50457d:	call   1702a84  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScorePerBird
  504582:	cvtsi2ss xmm0,eax
  504586:	cvtsi2ss xmm1,esi
  50458a:	mulss  xmm1,xmm0
  50458e:	cvttss2si eax,xmm1
  504592:	jmp    5045f2
  504594:	mov    eax,DWORD PTR [esp+0xc]
  504598:	add    eax,DWORD PTR [esi+edi*8+0x4]
  50459c:	lea    eax,[edx+eax*8+0xb4]
  5045a3:	mov    esi,DWORD PTR [esp+0x18]
  5045a7:	mov    eax,DWORD PTR [eax+0x4]
  5045aa:	mov    ecx,DWORD PTR [esp+0x10]
  5045ae:	mov    DWORD PTR [esp+0x4],ecx
  5045b2:	mov    DWORD PTR [esp],eax
  5045b5:	call   1da450
  5045ba:	mov    DWORD PTR [esp+0x8],eax
  5045be:	mov    ecx,DWORD PTR [esp+0x14]
  5045c2:	mov    DWORD PTR [esp+0x4],ecx
  5045c6:	mov    DWORD PTR [esp],esi
  5045c9:	call   DWORD PTR [eax]
  5045cb:	test   eax,eax
  5045cd:	mov    esi,DWORD PTR [ebp+0xc]
  5045d0:	je     5045fa
  5045d2:	mov    DWORD PTR [esp],eax
  5045d5:	mov    DWORD PTR [esp+0x4],0x0
  5045dd:	call   17029b2  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScoreForAllFullBirds
  5045e2:	cvtsi2ss xmm0,eax
  5045e6:	cvtsi2ss xmm1,esi
  5045ea:	divss  xmm0,xmm1
  5045ee:	cvttss2si eax,xmm0
  5045f2:	lea    esp,[ebp-0xc]
  5045f5:	pop    esi
  5045f6:	pop    edi
  5045f7:	pop    ebx
  5045f8:	pop    ebp
  5045f9:	ret
  5045fa:	call   1fbc48
  5045ff:	call   540b98