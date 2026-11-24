
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ebf1fb:
  ebf1fb:	push   ebp
  ebf1fc:	mov    ebp,esp
  ebf1fe:	push   ebx
  ebf1ff:	push   edi
  ebf200:	push   esi
  ebf201:	and    esp,0xfffffff0
  ebf204:	sub    esp,0x50
  ebf207:	call   ebf20c
  ebf20c:	pop    ebx
  ebf20d:	add    ebx,0x1052d38
  ebf213:	mov    esi,DWORD PTR [ebp+0x8]
  ebf216:	mov    al,BYTE PTR [ebx+0x626d0]
  ebf21c:	test   al,al
  ebf21e:	jne    ebf237
  ebf220:	lea    eax,[ebx-0x66fbc0]
  ebf226:	mov    eax,DWORD PTR [eax]
  ebf228:	mov    DWORD PTR [esp],eax
  ebf22b:	call   1ca6e8
  ebf230:	mov    BYTE PTR [ebx+0x626d0],0x1
  ebf237:	xorps  xmm0,xmm0
  ebf23a:	movaps XMMWORD PTR [esp+0x30],xmm0
  ebf23f:	mov    eax,DWORD PTR [esi+0x8]
  ebf242:	test   eax,eax
  ebf244:	je     ebf65c
  ebf24a:	lea    ecx,[ebx+0x4a13c]
  ebf250:	mov    ecx,DWORD PTR [ecx]
  ebf252:	mov    DWORD PTR [esp+0x8],ecx
  ebf256:	mov    DWORD PTR [esp+0x4],eax
  ebf25a:	lea    eax,[esp+0x20]
  ebf25e:	mov    DWORD PTR [esp],eax
  ebf261:	call   4c350f
  ebf266:	sub    esp,0x4
  ebf269:	movsd  xmm0,QWORD PTR [esp+0x20]
  ebf26f:	movsd  xmm1,QWORD PTR [esp+0x28]
  ebf275:	movsd  QWORD PTR [esp+0x38],xmm1
  ebf27b:	movsd  QWORD PTR [esp+0x30],xmm0
  ebf281:	lea    edi,[ebx+0x4a148]
  ebf287:	mov    eax,DWORD PTR [edi]
  ebf289:	mov    DWORD PTR [esp+0x4],eax
  ebf28d:	lea    eax,[esp+0x30]
  ebf291:	mov    DWORD PTR [esp],eax
  ebf294:	call   447e4e
  ebf299:	test   al,al
  ebf29b:	je     ebf2de
  ebf29d:	lea    eax,[ebx+0x4a140]
  ebf2a3:	mov    eax,DWORD PTR [eax]
  ebf2a5:	mov    DWORD PTR [esp+0x4],eax
  ebf2a9:	lea    eax,[esp+0x30]
  ebf2ad:	mov    DWORD PTR [esp],eax
  ebf2b0:	call   447f1e
  ebf2b5:	mov    esi,eax
  ebf2b7:	mov    eax,DWORD PTR [ebp+0x8]
  ebf2ba:	mov    DWORD PTR [esp],eax
  ebf2bd:	call   ebf170  ; ABH.GameDatas.Battle.BattleEffectGameData::GetTurnsLeft
  ebf2c2:	test   esi,esi
  ebf2c4:	je     ebf2eb
  ebf2c6:	mov    DWORD PTR [esp+0x4],eax
  ebf2ca:	mov    DWORD PTR [esp],esi
  ebf2cd:	mov    DWORD PTR [esp+0x8],0x0
  ebf2d5:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
  ebf2da:	jmp    ebf287
  ebf2dc:	jmp    ebf2f5
  ebf2de:	xor    esi,esi
  ebf2e0:	mov    al,0x1
  ebf2e2:	mov    DWORD PTR [esp+0x1c],eax
  ebf2e6:	mov    edi,DWORD PTR [ebp+0x8]
  ebf2e9:	jmp    ebf318
  ebf2eb:	call   1fbc48
  ebf2f0:	jmp    ebf66e
  ebf2f5:	mov    edi,DWORD PTR [ebp+0x8]
  ebf2f8:	cmp    edx,0x1
  ebf2fb:	jne    ebf666
  ebf301:	mov    DWORD PTR [esp],eax
  ebf304:	call   1ba3f0
  ebf309:	mov    esi,DWORD PTR [eax]
  ebf30b:	call   1b9ce0
  ebf310:	mov    DWORD PTR [esp+0x1c],0x0
  ebf318:	lea    eax,[ebx+0x4a14c]
  ebf31e:	mov    eax,DWORD PTR [eax]
  ebf320:	mov    DWORD PTR [esp+0x4],eax
  ebf324:	lea    eax,[esp+0x30]
  ebf328:	mov    DWORD PTR [esp],eax
  ebf32b:	call   447df6
  ebf330:	mov    eax,DWORD PTR [esp+0x1c]
  ebf334:	test   al,al
  ebf336:	jne    ebf344
  ebf338:	test   esi,esi
  ebf33a:	je     ebf344
  ebf33c:	mov    DWORD PTR [esp],esi
  ebf33f:	call   1fbb20
  ebf344:	mov    esi,DWORD PTR [edi+0x20]
  ebf347:	test   esi,esi
  ebf349:	je     ebf65c
  ebf34f:	lea    eax,[ebx+0x45874]
  ebf355:	mov    DWORD PTR [esp+0x1c],eax
  ebf359:	mov    eax,DWORD PTR [eax]
  ebf35b:	mov    ecx,DWORD PTR [esi]
  ebf35d:	mov    DWORD PTR [esp+0x18],ecx
  ebf361:	movzx  edx,WORD PTR [ecx+0xaa]
  ebf368:	test   edx,edx
  ebf36a:	je     ebf37f
  ebf36c:	mov    ecx,DWORD PTR [esp+0x18]
  ebf370:	mov    edi,DWORD PTR [ecx+0x4c]
  ebf373:	xor    ecx,ecx
  ebf375:	cmp    DWORD PTR [edi+ecx*8],eax
  ebf378:	je     ebf397
  ebf37a:	inc    ecx
  ebf37b:	cmp    ecx,edx
  ebf37d:	jb     ebf375
  ebf37f:	mov    DWORD PTR [esp+0x4],eax
  ebf383:	mov    DWORD PTR [esp],esi
  ebf386:	mov    DWORD PTR [esp+0x8],0x11
  ebf38e:	call   1c1964
  ebf393:	mov    ecx,eax
  ebf395:	jmp    ebf3a6
  ebf397:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  ebf39b:	mov    ecx,DWORD PTR [esp+0x18]
  ebf39f:	lea    ecx,[ecx+eax*8+0x13c]
  ebf3a6:	mov    eax,DWORD PTR [ecx+0x4]
  ebf3a9:	mov    DWORD PTR [esp+0x4],eax
  ebf3ad:	mov    DWORD PTR [esp],esi
  ebf3b0:	call   DWORD PTR [ecx]
  ebf3b2:	mov    esi,eax
  ebf3b4:	lea    eax,[ebx+0x44ebc]
  ebf3ba:	mov    eax,DWORD PTR [eax]
  ebf3bc:	test   BYTE PTR [eax+0xb2],0x1
  ebf3c3:	mov    edi,DWORD PTR [ebp+0x8]
  ebf3c6:	je     ebf3d6
  ebf3c8:	cmp    DWORD PTR [eax+0x60],0x0
  ebf3cc:	jne    ebf3d6
  ebf3ce:	mov    DWORD PTR [esp],eax
  ebf3d1:	call   1db0b8
  ebf3d6:	mov    DWORD PTR [esp+0x4],esi
  ebf3da:	mov    DWORD PTR [esp+0xc],0x0
  ebf3e2:	mov    DWORD PTR [esp+0x8],0x0
  ebf3ea:	mov    DWORD PTR [esp],0x0
  ebf3f1:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  ebf3f6:	test   al,al
  ebf3f8:	je     ebf654
  ebf3fe:	mov    esi,DWORD PTR [edi+0x20]
  ebf401:	test   esi,esi
  ebf403:	je     ebf65c
  ebf409:	mov    eax,DWORD PTR [esp+0x1c]
  ebf40d:	mov    eax,DWORD PTR [eax]
  ebf40f:	mov    ecx,DWORD PTR [esi]
  ebf411:	mov    DWORD PTR [esp+0x18],ecx
  ebf415:	movzx  edx,WORD PTR [ecx+0xaa]
  ebf41c:	test   edx,edx
  ebf41e:	je     ebf433
  ebf420:	mov    ecx,DWORD PTR [esp+0x18]
  ebf424:	mov    edi,DWORD PTR [ecx+0x4c]
  ebf427:	xor    ecx,ecx
  ebf429:	cmp    DWORD PTR [edi+ecx*8],eax
  ebf42c:	je     ebf44b
  ebf42e:	inc    ecx
  ebf42f:	cmp    ecx,edx
  ebf431:	jb     ebf429
  ebf433:	mov    DWORD PTR [esp+0x4],eax
  ebf437:	mov    DWORD PTR [esp],esi
  ebf43a:	mov    DWORD PTR [esp+0x8],0x11
  ebf442:	call   1c1964
  ebf447:	mov    ecx,eax
  ebf449:	jmp    ebf45a
  ebf44b:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  ebf44f:	mov    ecx,DWORD PTR [esp+0x18]
  ebf453:	lea    ecx,[ecx+eax*8+0x13c]
  ebf45a:	mov    eax,DWORD PTR [ecx+0x4]
  ebf45d:	mov    DWORD PTR [esp+0x4],eax
  ebf461:	mov    DWORD PTR [esp],esi
  ebf464:	call   DWORD PTR [ecx]
  ebf466:	test   eax,eax
  ebf468:	mov    esi,DWORD PTR [ebp+0x8]
  ebf46b:	je     ebf65c
  ebf471:	mov    eax,DWORD PTR [eax+0x6c]
  ebf474:	test   eax,eax
  ebf476:	je     ebf65c
  ebf47c:	mov    ecx,DWORD PTR [esi+0x1c]
  ebf47f:	lea    edx,[ebx+0x4a170]
  ebf485:	mov    edx,DWORD PTR [edx]
  ebf487:	mov    DWORD PTR [esp+0x8],edx
  ebf48b:	mov    DWORD PTR [esp+0x4],ecx
  ebf48f:	mov    DWORD PTR [esp],eax
  ebf492:	call   61a2f9
  ebf497:	test   al,al
  ebf499:	je     ebf654
  ebf49f:	mov    esi,DWORD PTR [esi+0x20]
  ebf4a2:	test   esi,esi
  ebf4a4:	je     ebf65c
  ebf4aa:	mov    eax,DWORD PTR [esp+0x1c]
  ebf4ae:	mov    eax,DWORD PTR [eax]
  ebf4b0:	mov    ecx,DWORD PTR [esi]
  ebf4b2:	mov    DWORD PTR [esp+0x18],ecx
  ebf4b6:	movzx  edx,WORD PTR [ecx+0xaa]
  ebf4bd:	test   edx,edx
  ebf4bf:	je     ebf4d4
  ebf4c1:	mov    ecx,DWORD PTR [esp+0x18]
  ebf4c5:	mov    edi,DWORD PTR [ecx+0x4c]
  ebf4c8:	xor    ecx,ecx
  ebf4ca:	cmp    DWORD PTR [edi+ecx*8],eax
  ebf4cd:	je     ebf4ec
  ebf4cf:	inc    ecx
  ebf4d0:	cmp    ecx,edx
  ebf4d2:	jb     ebf4ca
  ebf4d4:	mov    DWORD PTR [esp+0x4],eax
  ebf4d8:	mov    DWORD PTR [esp],esi
  ebf4db:	mov    DWORD PTR [esp+0x8],0x11
  ebf4e3:	call   1c1964
  ebf4e8:	mov    ecx,eax
  ebf4ea:	jmp    ebf4fb
  ebf4ec:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  ebf4f0:	mov    ecx,DWORD PTR [esp+0x18]
  ebf4f4:	lea    ecx,[ecx+eax*8+0x13c]
  ebf4fb:	mov    eax,DWORD PTR [ecx+0x4]
  ebf4fe:	mov    DWORD PTR [esp+0x4],eax
  ebf502:	mov    DWORD PTR [esp],esi
  ebf505:	call   DWORD PTR [ecx]
  ebf507:	test   eax,eax
  ebf509:	mov    edi,DWORD PTR [ebp+0x8]
  ebf50c:	je     ebf65c
  ebf512:	mov    eax,DWORD PTR [eax+0x6c]
  ebf515:	test   eax,eax
  ebf517:	je     ebf65c
  ebf51d:	mov    ecx,DWORD PTR [edi+0x1c]
  ebf520:	lea    edx,[ebx+0x4a174]
  ebf526:	mov    edx,DWORD PTR [edx]
  ebf528:	mov    DWORD PTR [esp+0x8],edx
  ebf52c:	mov    DWORD PTR [esp+0x4],ecx
  ebf530:	mov    DWORD PTR [esp],eax
  ebf533:	call   618b6e
  ebf538:	mov    esi,eax
  ebf53a:	mov    DWORD PTR [esp],edi
  ebf53d:	call   ebf170  ; ABH.GameDatas.Battle.BattleEffectGameData::GetTurnsLeft
  ebf542:	test   esi,esi
  ebf544:	je     ebf65c
  ebf54a:	mov    DWORD PTR [esp+0x4],eax
  ebf54e:	mov    DWORD PTR [esp],esi
  ebf551:	mov    DWORD PTR [esp+0x8],0x0
  ebf559:	call   8fdf73  ; CharacterSpeechBubble::UpdateBubbleTurnValue
  ebf55e:	mov    esi,DWORD PTR [edi+0x20]
  ebf561:	test   esi,esi
  ebf563:	je     ebf65c
  ebf569:	mov    eax,DWORD PTR [esp+0x1c]
  ebf56d:	mov    eax,DWORD PTR [eax]
  ebf56f:	mov    ecx,DWORD PTR [esi]
  ebf571:	mov    DWORD PTR [esp+0x18],ecx
  ebf575:	movzx  edx,WORD PTR [ecx+0xaa]
  ebf57c:	test   edx,edx
  ebf57e:	je     ebf593
  ebf580:	mov    ecx,DWORD PTR [esp+0x18]
  ebf584:	mov    edi,DWORD PTR [ecx+0x4c]
  ebf587:	xor    ecx,ecx
  ebf589:	cmp    DWORD PTR [edi+ecx*8],eax
  ebf58c:	je     ebf5ab
  ebf58e:	inc    ecx
  ebf58f:	cmp    ecx,edx
  ebf591:	jb     ebf589
  ebf593:	mov    DWORD PTR [esp+0x4],eax
  ebf597:	mov    DWORD PTR [esp],esi
  ebf59a:	mov    DWORD PTR [esp+0x8],0x56
  ebf5a2:	call   1c1964
  ebf5a7:	mov    ecx,eax
  ebf5a9:	jmp    ebf5ba
  ebf5ab:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  ebf5af:	mov    ecx,DWORD PTR [esp+0x18]
  ebf5b3:	lea    ecx,[ecx+eax*8+0x364]
  ebf5ba:	mov    eax,DWORD PTR [ecx+0x4]
  ebf5bd:	mov    DWORD PTR [esp+0x4],eax
  ebf5c1:	mov    DWORD PTR [esp],esi
  ebf5c4:	call   DWORD PTR [ecx]
  ebf5c6:	test   al,al
  ebf5c8:	mov    ecx,DWORD PTR [ebp+0x8]
  ebf5cb:	je     ebf654
  ebf5d1:	mov    eax,DWORD PTR [ecx+0x10]
  ebf5d4:	dec    eax
  ebf5d5:	cmp    eax,0x1
  ebf5d8:	ja     ebf654
  ebf5da:	mov    esi,DWORD PTR [ecx+0x24]
  ebf5dd:	test   esi,esi
  ebf5df:	je     ebf65c
  ebf5e1:	mov    eax,DWORD PTR [esp+0x1c]
  ebf5e5:	mov    eax,DWORD PTR [eax]
  ebf5e7:	mov    ecx,DWORD PTR [esi]
  ebf5e9:	mov    DWORD PTR [esp+0x1c],ecx
  ebf5ed:	movzx  edx,WORD PTR [ecx+0xaa]
  ebf5f4:	test   edx,edx
  ebf5f6:	je     ebf60b
  ebf5f8:	mov    ecx,DWORD PTR [esp+0x1c]
  ebf5fc:	mov    edi,DWORD PTR [ecx+0x4c]
  ebf5ff:	xor    ecx,ecx
  ebf601:	cmp    DWORD PTR [edi+ecx*8],eax
  ebf604:	je     ebf623
  ebf606:	inc    ecx
  ebf607:	cmp    ecx,edx
  ebf609:	jb     ebf601
  ebf60b:	mov    DWORD PTR [esp+0x4],eax
  ebf60f:	mov    DWORD PTR [esp],esi
  ebf612:	mov    DWORD PTR [esp+0x8],0x11
  ebf61a:	call   1c1964
  ebf61f:	mov    ecx,eax
  ebf621:	jmp    ebf632
  ebf623:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  ebf627:	mov    ecx,DWORD PTR [esp+0x1c]
  ebf62b:	lea    ecx,[ecx+eax*8+0x13c]
  ebf632:	mov    eax,DWORD PTR [ecx+0x4]
  ebf635:	mov    DWORD PTR [esp+0x4],eax
  ebf639:	mov    DWORD PTR [esp],esi
  ebf63c:	call   DWORD PTR [ecx]
  ebf63e:	test   eax,eax
  ebf640:	je     ebf65c
  ebf642:	mov    DWORD PTR [esp],eax
  ebf645:	mov    DWORD PTR [esp+0x4],0x0
  ebf64d:	call   8cca39  ; CharacterControllerBattleGroundBase::PlayAffectedAnimation
  ebf652:	fstp   st(0)
  ebf654:	lea    esp,[ebp-0xc]
  ebf657:	pop    esi
  ebf658:	pop    edi
  ebf659:	pop    ebx
  ebf65a:	pop    ebp
  ebf65b:	ret
  ebf65c:	call   1fbc48
  ebf661:	call   ebbb41
  ebf666:	mov    DWORD PTR [esp],eax
  ebf669:	call   1b9bd0
  ebf66e:	call   ebbb41