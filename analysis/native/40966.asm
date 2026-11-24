
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050a1af:
  50a1af:	push   ebp
  50a1b0:	mov    ebp,esp
  50a1b2:	push   ebx
  50a1b3:	push   edi
  50a1b4:	push   esi
  50a1b5:	and    esp,0xfffffff0
  50a1b8:	sub    esp,0x40
  50a1bb:	call   50a1c0
  50a1c0:	pop    ebx
  50a1c1:	add    ebx,0x1a07d84
  50a1c7:	mov    esi,DWORD PTR [ebp+0xc]
  50a1ca:	mov    al,BYTE PTR [ebx+0x5d4fc]
  50a1d0:	test   al,al
  50a1d2:	jne    50a1eb
  50a1d4:	lea    eax,[ebx-0x66f3d4]
  50a1da:	mov    eax,DWORD PTR [eax]
  50a1dc:	mov    DWORD PTR [esp],eax
  50a1df:	call   1ca6e8
  50a1e4:	mov    BYTE PTR [ebx+0x5d4fc],0x1
  50a1eb:	test   esi,esi
  50a1ed:	je     50a5af
  50a1f3:	lea    eax,[ebx+0x45874]
  50a1f9:	mov    DWORD PTR [esp+0x2c],eax
  50a1fd:	mov    DWORD PTR [esp+0x30],ebx
  50a201:	mov    eax,DWORD PTR [eax]
  50a203:	mov    ecx,DWORD PTR [esi]
  50a205:	mov    ebx,esi
  50a207:	movzx  edx,WORD PTR [ecx+0xaa]
  50a20e:	test   edx,edx
  50a210:	je     50a221
  50a212:	mov    esi,DWORD PTR [ecx+0x4c]
  50a215:	xor    edi,edi
  50a217:	cmp    DWORD PTR [esi+edi*8],eax
  50a21a:	je     50a23d
  50a21c:	inc    edi
  50a21d:	cmp    edi,edx
  50a21f:	jb     50a217
  50a221:	mov    DWORD PTR [esp+0x4],eax
  50a225:	mov    esi,ebx
  50a227:	mov    DWORD PTR [esp],esi
  50a22a:	mov    DWORD PTR [esp+0x8],0x27
  50a232:	mov    ebx,DWORD PTR [esp+0x30]
  50a236:	call   1c1964
  50a23b:	jmp    50a24e
  50a23d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50a241:	lea    eax,[ecx+eax*8+0x1ec]
  50a248:	mov    esi,ebx
  50a24a:	mov    ebx,DWORD PTR [esp+0x30]
  50a24e:	mov    ecx,DWORD PTR [eax+0x4]
  50a251:	mov    DWORD PTR [esp+0x4],ecx
  50a255:	mov    DWORD PTR [esp],esi
  50a258:	call   DWORD PTR [eax]
  50a25a:	fstp   DWORD PTR [esp+0x38]
  50a25e:	mov    eax,DWORD PTR [ebp+0x10]
  50a261:	test   eax,eax
  50a263:	je     50a5af
  50a269:	movss  xmm0,DWORD PTR [esp+0x38]
  50a26f:	movss  DWORD PTR [esp+0x28],xmm0
  50a275:	mov    DWORD PTR [esp],eax
  50a278:	mov    DWORD PTR [esp+0x4],0x0
  50a280:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  50a285:	xorps  xmm0,xmm0
  50a288:	movss  xmm1,DWORD PTR [esp+0x28]
  50a28e:	ucomiss xmm1,xmm0
  50a291:	movaps xmm0,xmm1
  50a294:	setbe  cl
  50a297:	cmp    BYTE PTR [ebp+0x20],0x0
  50a29b:	jne    50a2d9
  50a29d:	xor    al,0x1
  50a29f:	or     cl,al
  50a2a1:	jne    50a2d9
  50a2a3:	mov    DWORD PTR [esp+0x4],0x0
  50a2ab:	mov    DWORD PTR [esp],0x0
  50a2b2:	call   1093343  ; DIContainerLogic::GetPvpObjectivesService
  50a2b7:	test   eax,eax
  50a2b9:	je     50a5af
  50a2bf:	mov    DWORD PTR [esp+0x4],esi
  50a2c3:	mov    DWORD PTR [esp],eax
  50a2c6:	mov    DWORD PTR [esp+0x8],0x0
  50a2ce:	call   80ae2d  ; PvPObjectivesService::TargetHealed
  50a2d3:	movss  xmm0,DWORD PTR [esp+0x28]
  50a2d9:	movss  DWORD PTR [esp+0x4],xmm0
  50a2df:	call   509d43  ; ABH.Services.Logic.BattleService::NormalizeDamage
  50a2e4:	test   eax,eax
  50a2e6:	jg     50a325
  50a2e8:	mov    cl,BYTE PTR [ebp+0x14]
  50a2eb:	xor    cl,0x1
  50a2ee:	jne    50a325
  50a2f0:	mov    DWORD PTR [esp+0x28],eax
  50a2f4:	mov    eax,DWORD PTR [esp+0x2c]
  50a2f8:	mov    eax,DWORD PTR [eax]
  50a2fa:	mov    ecx,DWORD PTR [esi]
  50a2fc:	mov    ebx,esi
  50a2fe:	movzx  edx,WORD PTR [ecx+0xaa]
  50a305:	test   edx,edx
  50a307:	je     50a55e
  50a30d:	mov    edi,DWORD PTR [ecx+0x4c]
  50a310:	xor    esi,esi
  50a312:	cmp    DWORD PTR [edi+esi*8],eax
  50a315:	je     50a57a
  50a31b:	inc    esi
  50a31c:	cmp    esi,edx
  50a31e:	jb     50a312
  50a320:	jmp    50a55e
  50a325:	mov    cl,BYTE PTR [ebp+0x1c]
  50a328:	mov    dl,BYTE PTR [ebp+0x18]
  50a32b:	mov    edi,DWORD PTR [ebp+0x8]
  50a32e:	test   cl,cl
  50a330:	jne    50a363
  50a332:	xorps  xmm0,xmm0
  50a335:	cvtsi2ss xmm0,eax
  50a339:	mov    DWORD PTR [esp+0x10],esi
  50a33d:	mov    DWORD PTR [esp+0xc],esi
  50a341:	movss  DWORD PTR [esp+0x4],xmm0
  50a347:	mov    DWORD PTR [esp],edi
  50a34a:	mov    DWORD PTR [esp+0x8],0xf
  50a352:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  50a357:	fstp   DWORD PTR [esp+0x4]
  50a35b:	call   509d43  ; ABH.Services.Logic.BattleService::NormalizeDamage
  50a360:	mov    dl,BYTE PTR [ebp+0x18]
  50a363:	mov    DWORD PTR [esp+0x30],ebx
  50a367:	mov    ebx,DWORD PTR [ebp+0x28]
  50a36a:	test   dl,dl
  50a36c:	jne    50a3a4
  50a36e:	xorps  xmm0,xmm0
  50a371:	cvtsi2ss xmm0,eax
  50a375:	mov    DWORD PTR [esp+0x10],ebx
  50a379:	mov    DWORD PTR [esp+0xc],esi
  50a37d:	movss  DWORD PTR [esp+0x4],xmm0
  50a383:	mov    DWORD PTR [esp],edi
  50a386:	mov    DWORD PTR [esp+0x8],0xa
  50a38e:	mov    edi,ebx
  50a390:	mov    ebx,DWORD PTR [esp+0x30]
  50a394:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  50a399:	fstp   DWORD PTR [esp+0x4]
  50a39d:	call   509d43  ; ABH.Services.Logic.BattleService::NormalizeDamage
  50a3a2:	mov    ebx,edi
  50a3a4:	test   ebx,ebx
  50a3a6:	je     50a3e2
  50a3a8:	mov    cl,BYTE PTR [ebp+0x24]
  50a3ab:	xor    cl,0x1
  50a3ae:	jne    50a3e2
  50a3b0:	cvtsi2ss xmm0,eax
  50a3b4:	mov    DWORD PTR [esp+0x10],ebx
  50a3b8:	mov    DWORD PTR [esp+0xc],ebx
  50a3bc:	movss  DWORD PTR [esp+0x4],xmm0
  50a3c2:	mov    eax,DWORD PTR [ebp+0x8]
  50a3c5:	mov    DWORD PTR [esp],eax
  50a3c8:	mov    DWORD PTR [esp+0x8],0x23
  50a3d0:	mov    ebx,DWORD PTR [esp+0x30]
  50a3d4:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  50a3d9:	fstp   DWORD PTR [esp+0x4]
  50a3dd:	call   509d43  ; ABH.Services.Logic.BattleService::NormalizeDamage
  50a3e2:	mov    DWORD PTR [esp+0x28],eax
  50a3e6:	mov    eax,DWORD PTR [esp+0x2c]
  50a3ea:	mov    eax,DWORD PTR [eax]
  50a3ec:	mov    ecx,DWORD PTR [esi]
  50a3ee:	mov    ebx,esi
  50a3f0:	movzx  edx,WORD PTR [ecx+0xaa]
  50a3f7:	test   edx,edx
  50a3f9:	je     50a40a
  50a3fb:	mov    edi,DWORD PTR [ecx+0x4c]
  50a3fe:	xor    esi,esi
  50a400:	cmp    DWORD PTR [edi+esi*8],eax
  50a403:	je     50a428
  50a405:	inc    esi
  50a406:	cmp    esi,edx
  50a408:	jb     50a400
  50a40a:	mov    DWORD PTR [esp+0x4],eax
  50a40e:	mov    esi,ebx
  50a410:	mov    DWORD PTR [esp],esi
  50a413:	mov    DWORD PTR [esp+0x8],0x2f
  50a41b:	mov    ebx,DWORD PTR [esp+0x30]
  50a41f:	call   1c1964
  50a424:	mov    ecx,eax
  50a426:	jmp    50a439
  50a428:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50a42c:	lea    ecx,[ecx+eax*8+0x22c]
  50a433:	mov    esi,ebx
  50a435:	mov    ebx,DWORD PTR [esp+0x30]
  50a439:	mov    eax,DWORD PTR [ecx+0x4]
  50a43c:	mov    DWORD PTR [esp+0x4],eax
  50a440:	mov    DWORD PTR [esp],esi
  50a443:	call   DWORD PTR [ecx]
  50a445:	test   eax,eax
  50a447:	mov    eax,DWORD PTR [ebp+0x10]
  50a44a:	jne    50a45e
  50a44c:	mov    eax,DWORD PTR [eax+0x14]
  50a44f:	test   eax,eax
  50a451:	je     50a5ab
  50a457:	mov    ecx,DWORD PTR [esp+0x28]
  50a45b:	add    DWORD PTR [eax+0x68],ecx
  50a45e:	mov    eax,DWORD PTR [esp+0x2c]
  50a462:	mov    eax,DWORD PTR [eax]
  50a464:	mov    ecx,DWORD PTR [esi]
  50a466:	mov    ebx,esi
  50a468:	movzx  edx,WORD PTR [ecx+0xaa]
  50a46f:	test   edx,edx
  50a471:	je     50a482
  50a473:	mov    edi,DWORD PTR [ecx+0x4c]
  50a476:	xor    esi,esi
  50a478:	cmp    DWORD PTR [edi+esi*8],eax
  50a47b:	je     50a49e
  50a47d:	inc    esi
  50a47e:	cmp    esi,edx
  50a480:	jb     50a478
  50a482:	mov    DWORD PTR [esp+0x4],eax
  50a486:	mov    esi,ebx
  50a488:	mov    DWORD PTR [esp],esi
  50a48b:	mov    DWORD PTR [esp+0x8],0x1f
  50a493:	mov    ebx,DWORD PTR [esp+0x30]
  50a497:	call   1c1964
  50a49c:	jmp    50a4af
  50a49e:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50a4a2:	lea    eax,[ecx+eax*8+0x1ac]
  50a4a9:	mov    esi,ebx
  50a4ab:	mov    ebx,DWORD PTR [esp+0x30]
  50a4af:	mov    ecx,DWORD PTR [eax+0x4]
  50a4b2:	mov    DWORD PTR [esp+0x4],ecx
  50a4b6:	mov    DWORD PTR [esp],esi
  50a4b9:	call   DWORD PTR [eax]
  50a4bb:	fstp   DWORD PTR [esp+0x34]
  50a4bf:	mov    eax,DWORD PTR [esp+0x2c]
  50a4c3:	mov    eax,DWORD PTR [eax]
  50a4c5:	cvtsi2ss xmm0,DWORD PTR [esp+0x28]
  50a4cb:	addss  xmm0,DWORD PTR [esp+0x34]
  50a4d1:	mov    ecx,DWORD PTR [esi]
  50a4d3:	mov    ebx,esi
  50a4d5:	movzx  edx,WORD PTR [ecx+0xaa]
  50a4dc:	test   edx,edx
  50a4de:	je     50a4ef
  50a4e0:	mov    edi,DWORD PTR [ecx+0x4c]
  50a4e3:	xor    esi,esi
  50a4e5:	cmp    DWORD PTR [edi+esi*8],eax
  50a4e8:	je     50a517
  50a4ea:	inc    esi
  50a4eb:	cmp    esi,edx
  50a4ed:	jb     50a4e5
  50a4ef:	mov    DWORD PTR [esp+0x4],eax
  50a4f3:	mov    esi,ebx
  50a4f5:	mov    DWORD PTR [esp],esi
  50a4f8:	mov    DWORD PTR [esp+0x8],0x20
  50a500:	mov    ebx,DWORD PTR [esp+0x30]
  50a504:	movss  DWORD PTR [esp+0x24],xmm0
  50a50a:	call   1c1964
  50a50f:	movss  xmm0,DWORD PTR [esp+0x24]
  50a515:	jmp    50a528
  50a517:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50a51b:	lea    eax,[ecx+eax*8+0x1b4]
  50a522:	mov    esi,ebx
  50a524:	mov    ebx,DWORD PTR [esp+0x30]
  50a528:	mov    ecx,DWORD PTR [eax+0x4]
  50a52b:	mov    DWORD PTR [esp+0x8],ecx
  50a52f:	movss  DWORD PTR [esp+0x4],xmm0
  50a535:	mov    DWORD PTR [esp],esi
  50a538:	call   DWORD PTR [eax]
  50a53a:	mov    eax,DWORD PTR [esp+0x2c]
  50a53e:	mov    eax,DWORD PTR [eax]
  50a540:	mov    ecx,DWORD PTR [esi]
  50a542:	mov    ebx,esi
  50a544:	movzx  edx,WORD PTR [ecx+0xaa]
  50a54b:	test   edx,edx
  50a54d:	je     50a55e
  50a54f:	mov    edi,DWORD PTR [ecx+0x4c]
  50a552:	xor    esi,esi
  50a554:	cmp    DWORD PTR [edi+esi*8],eax
  50a557:	je     50a57a
  50a559:	inc    esi
  50a55a:	cmp    esi,edx
  50a55c:	jb     50a554
  50a55e:	mov    DWORD PTR [esp+0x4],eax
  50a562:	mov    esi,ebx
  50a564:	mov    DWORD PTR [esp],esi
  50a567:	mov    DWORD PTR [esp+0x8],0x28
  50a56f:	mov    ebx,DWORD PTR [esp+0x30]
  50a573:	call   1c1964
  50a578:	jmp    50a58b
  50a57a:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50a57e:	lea    eax,[ecx+eax*8+0x1f4]
  50a585:	mov    esi,ebx
  50a587:	mov    ebx,DWORD PTR [esp+0x30]
  50a58b:	mov    ecx,DWORD PTR [eax+0x4]
  50a58e:	mov    DWORD PTR [esp+0x8],ecx
  50a592:	mov    DWORD PTR [esp],esi
  50a595:	mov    DWORD PTR [esp+0x4],0x0
  50a59d:	call   DWORD PTR [eax]
  50a59f:	mov    eax,DWORD PTR [esp+0x28]
  50a5a3:	lea    esp,[ebp-0xc]
  50a5a6:	pop    esi
  50a5a7:	pop    edi
  50a5a8:	pop    ebx
  50a5a9:	pop    ebp
  50a5aa:	ret
  50a5ab:	mov    ebx,DWORD PTR [esp+0x30]
  50a5af:	call   1fbc48
  50a5b4:	call   540b98