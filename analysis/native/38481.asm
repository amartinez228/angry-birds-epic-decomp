
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014b92ed:
 14b92ed:	push   ebp
 14b92ee:	mov    ebp,esp
 14b92f0:	push   ebx
 14b92f1:	push   edi
 14b92f2:	push   esi
 14b92f3:	and    esp,0xfffffff0
 14b92f6:	sub    esp,0x40
 14b92f9:	call   14b92fe
 14b92fe:	pop    ebx
 14b92ff:	add    ebx,0xa58c46
 14b9305:	mov    esi,DWORD PTR [ebp+0x8]
 14b9308:	mov    al,BYTE PTR [ebx+0x65a2a]
 14b930e:	test   al,al
 14b9310:	jne    14b9329
 14b9312:	lea    eax,[ebx-0x665df0]
 14b9318:	mov    eax,DWORD PTR [eax]
 14b931a:	mov    DWORD PTR [esp],eax
 14b931d:	call   1ca6e8
 14b9322:	mov    BYTE PTR [ebx+0x65a2a],0x1
 14b9329:	mov    DWORD PTR [esp+0x38],0x0
 14b9331:	mov    DWORD PTR [esp+0x34],0x0
 14b9339:	mov    DWORD PTR [esp+0x30],0x0
 14b9341:	mov    DWORD PTR [esp+0x2c],0x0
 14b9349:	lea    eax,[ebx+0x44d10]
 14b934f:	mov    eax,DWORD PTR [eax]
 14b9351:	mov    DWORD PTR [esp],eax
 14b9354:	call   20bfb2
 14b9359:	mov    edi,eax
 14b935b:	lea    eax,[ebx+0x49298]
 14b9361:	mov    eax,DWORD PTR [eax]
 14b9363:	mov    DWORD PTR [esp+0x4],eax
 14b9367:	mov    DWORD PTR [esp],edi
 14b936a:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
 14b936f:	cmp    BYTE PTR [esi+0x51],0x0
 14b9373:	jne    14b937f
 14b9375:	cmp    BYTE PTR [esi+0x53],0x0
 14b9379:	je     14b96f3
 14b937f:	mov    DWORD PTR [esp+0x1c],edi
 14b9383:	mov    ecx,DWORD PTR [ebp+0xc]
 14b9386:	test   ecx,ecx
 14b9388:	je     14b97da
 14b938e:	lea    eax,[ebx+0x45874]
 14b9394:	mov    DWORD PTR [esp+0x18],eax
 14b9398:	mov    eax,DWORD PTR [eax]
 14b939a:	mov    ecx,DWORD PTR [ecx]
 14b939c:	movzx  edx,WORD PTR [ecx+0xaa]
 14b93a3:	test   edx,edx
 14b93a5:	je     14b93b6
 14b93a7:	mov    edi,DWORD PTR [ecx+0x4c]
 14b93aa:	xor    esi,esi
 14b93ac:	cmp    DWORD PTR [edi+esi*8],eax
 14b93af:	je     14b93cf
 14b93b1:	inc    esi
 14b93b2:	cmp    esi,edx
 14b93b4:	jb     14b93ac
 14b93b6:	mov    DWORD PTR [esp+0x4],eax
 14b93ba:	mov    edi,DWORD PTR [ebp+0xc]
 14b93bd:	mov    DWORD PTR [esp],edi
 14b93c0:	mov    DWORD PTR [esp+0x8],0x19
 14b93c8:	call   1c1964
 14b93cd:	jmp    14b93dd
 14b93cf:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 14b93d3:	lea    eax,[ecx+eax*8+0x17c]
 14b93da:	mov    edi,DWORD PTR [ebp+0xc]
 14b93dd:	mov    ecx,DWORD PTR [eax+0x4]
 14b93e0:	mov    DWORD PTR [esp+0x4],ecx
 14b93e4:	mov    DWORD PTR [esp],edi
 14b93e7:	call   DWORD PTR [eax]
 14b93e9:	fstp   DWORD PTR [esp+0x28]
 14b93ed:	movss  xmm0,DWORD PTR [esp+0x28]
 14b93f3:	mov    eax,DWORD PTR [ebp+0x8]
 14b93f6:	mulss  xmm0,DWORD PTR [eax+0x40]
 14b93fb:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 14b9403:	movss  DWORD PTR [esp+0x38],xmm0
 14b9409:	lea    eax,[ebx+0x508e0]
 14b940f:	mov    DWORD PTR [esp+0x14],eax
 14b9413:	mov    eax,DWORD PTR [eax]
 14b9415:	mov    DWORD PTR [esp+0x4],eax
 14b9419:	lea    eax,[esp+0x38]
 14b941d:	mov    DWORD PTR [esp],eax
 14b9420:	mov    DWORD PTR [esp+0x8],0x0
 14b9428:	call   cb9b7c
 14b942d:	mov    esi,DWORD PTR [esp+0x1c]
 14b9431:	test   esi,esi
 14b9433:	je     14b97da
 14b9439:	lea    ecx,[ebx+0x56adc]
 14b943f:	mov    ecx,DWORD PTR [ecx]
 14b9441:	lea    edx,[ebx+0x4929c]
 14b9447:	mov    DWORD PTR [esp+0x10],edx
 14b944b:	mov    edx,DWORD PTR [edx]
 14b944d:	mov    DWORD PTR [esp+0xc],edx
 14b9451:	mov    DWORD PTR [esp+0x8],eax
 14b9455:	mov    DWORD PTR [esp+0x4],ecx
 14b9459:	mov    DWORD PTR [esp],esi
 14b945c:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 14b9461:	mov    eax,DWORD PTR [esp+0x18]
 14b9465:	mov    eax,DWORD PTR [eax]
 14b9467:	mov    ecx,DWORD PTR [edi]
 14b9469:	movzx  edx,WORD PTR [ecx+0xaa]
 14b9470:	test   edx,edx
 14b9472:	je     14b9483
 14b9474:	mov    edi,DWORD PTR [ecx+0x4c]
 14b9477:	xor    esi,esi
 14b9479:	cmp    DWORD PTR [edi+esi*8],eax
 14b947c:	je     14b949c
 14b947e:	inc    esi
 14b947f:	cmp    esi,edx
 14b9481:	jb     14b9479
 14b9483:	mov    DWORD PTR [esp+0x4],eax
 14b9487:	mov    esi,DWORD PTR [ebp+0xc]
 14b948a:	mov    DWORD PTR [esp],esi
 14b948d:	mov    DWORD PTR [esp+0x8],0x19
 14b9495:	call   1c1964
 14b949a:	jmp    14b94aa
 14b949c:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 14b94a0:	lea    eax,[ecx+eax*8+0x17c]
 14b94a7:	mov    esi,DWORD PTR [ebp+0xc]
 14b94aa:	mov    ecx,DWORD PTR [eax+0x4]
 14b94ad:	mov    DWORD PTR [esp+0x4],ecx
 14b94b1:	mov    DWORD PTR [esp],esi
 14b94b4:	call   DWORD PTR [eax]
 14b94b6:	fstp   DWORD PTR [esp+0x24]
 14b94ba:	mov    eax,DWORD PTR [ebp+0x8]
 14b94bd:	movss  xmm0,DWORD PTR [eax+0x40]
 14b94c2:	addss  xmm0,DWORD PTR [eax+0x4c]
 14b94c7:	mulss  xmm0,DWORD PTR [esp+0x24]
 14b94cd:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 14b94d5:	movss  DWORD PTR [esp+0x34],xmm0
 14b94db:	mov    eax,DWORD PTR [esp+0x14]
 14b94df:	mov    eax,DWORD PTR [eax]
 14b94e1:	mov    DWORD PTR [esp+0x4],eax
 14b94e5:	lea    eax,[esp+0x34]
 14b94e9:	mov    DWORD PTR [esp],eax
 14b94ec:	mov    DWORD PTR [esp+0x8],0x0
 14b94f4:	call   cb9b7c
 14b94f9:	lea    ecx,[ebx+0x56c04]
 14b94ff:	mov    ecx,DWORD PTR [ecx]
 14b9501:	mov    edx,DWORD PTR [esp+0x10]
 14b9505:	mov    edx,DWORD PTR [edx]
 14b9507:	mov    DWORD PTR [esp+0xc],edx
 14b950b:	mov    DWORD PTR [esp+0x8],eax
 14b950f:	mov    DWORD PTR [esp+0x4],ecx
 14b9513:	mov    eax,DWORD PTR [esp+0x1c]
 14b9517:	mov    DWORD PTR [esp],eax
 14b951a:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 14b951f:	mov    eax,DWORD PTR [esp+0x18]
 14b9523:	mov    eax,DWORD PTR [eax]
 14b9525:	mov    ecx,DWORD PTR [esi]
 14b9527:	movzx  edx,WORD PTR [ecx+0xaa]
 14b952e:	test   edx,edx
 14b9530:	je     14b9541
 14b9532:	mov    edi,DWORD PTR [ecx+0x4c]
 14b9535:	xor    esi,esi
 14b9537:	cmp    DWORD PTR [edi+esi*8],eax
 14b953a:	je     14b955a
 14b953c:	inc    esi
 14b953d:	cmp    esi,edx
 14b953f:	jb     14b9537
 14b9541:	mov    DWORD PTR [esp+0x4],eax
 14b9545:	mov    esi,DWORD PTR [ebp+0xc]
 14b9548:	mov    DWORD PTR [esp],esi
 14b954b:	mov    DWORD PTR [esp+0x8],0x19
 14b9553:	call   1c1964
 14b9558:	jmp    14b9568
 14b955a:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 14b955e:	lea    eax,[ecx+eax*8+0x17c]
 14b9565:	mov    esi,DWORD PTR [ebp+0xc]
 14b9568:	mov    ecx,DWORD PTR [eax+0x4]
 14b956b:	mov    DWORD PTR [esp+0x4],ecx
 14b956f:	mov    DWORD PTR [esp],esi
 14b9572:	call   DWORD PTR [eax]
 14b9574:	fstp   DWORD PTR [esp+0x20]
 14b9578:	movss  xmm0,DWORD PTR [esp+0x20]
 14b957e:	mov    esi,DWORD PTR [ebp+0x8]
 14b9581:	mulss  xmm0,DWORD PTR [esi+0x3c]
 14b9586:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 14b958e:	movss  DWORD PTR [esp+0x30],xmm0
 14b9594:	mov    eax,DWORD PTR [esp+0x14]
 14b9598:	mov    eax,DWORD PTR [eax]
 14b959a:	mov    DWORD PTR [esp+0x4],eax
 14b959e:	lea    eax,[esp+0x30]
 14b95a2:	mov    DWORD PTR [esp],eax
 14b95a5:	mov    DWORD PTR [esp+0x8],0x0
 14b95ad:	call   cb9b7c
 14b95b2:	lea    ecx,[ebx+0x56c10]
 14b95b8:	mov    ecx,DWORD PTR [ecx]
 14b95ba:	mov    edx,DWORD PTR [esp+0x10]
 14b95be:	mov    edx,DWORD PTR [edx]
 14b95c0:	mov    DWORD PTR [esp+0xc],edx
 14b95c4:	mov    DWORD PTR [esp+0x8],eax
 14b95c8:	mov    DWORD PTR [esp+0x4],ecx
 14b95cc:	mov    edi,DWORD PTR [esp+0x1c]
 14b95d0:	mov    DWORD PTR [esp],edi
 14b95d3:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 14b95d8:	lea    eax,[esi+0x48]
 14b95db:	lea    ecx,[ebx+0x508e0]
 14b95e1:	mov    DWORD PTR [esp+0x1c],ecx
 14b95e5:	mov    ecx,DWORD PTR [ecx]
 14b95e7:	mov    DWORD PTR [esp+0x4],ecx
 14b95eb:	mov    DWORD PTR [esp],eax
 14b95ee:	mov    DWORD PTR [esp+0x8],0x0
 14b95f6:	call   cb9b7c
 14b95fb:	mov    esi,eax
 14b95fd:	test   edi,edi
 14b95ff:	mov    eax,edi
 14b9601:	je     14b97da
 14b9607:	lea    ecx,[ebx+0x56b90]
 14b960d:	mov    ecx,DWORD PTR [ecx]
 14b960f:	lea    edi,[ebx+0x4929c]
 14b9615:	mov    edx,DWORD PTR [edi]
 14b9617:	mov    DWORD PTR [esp+0xc],edx
 14b961b:	mov    DWORD PTR [esp+0x8],esi
 14b961f:	mov    DWORD PTR [esp+0x4],ecx
 14b9623:	mov    esi,eax
 14b9625:	mov    DWORD PTR [esp],esi
 14b9628:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 14b962d:	mov    eax,DWORD PTR [ebp+0x8]
 14b9630:	lea    eax,[eax+0x58]
 14b9633:	mov    ecx,DWORD PTR [esp+0x1c]
 14b9637:	mov    ecx,DWORD PTR [ecx]
 14b9639:	mov    DWORD PTR [esp+0x4],ecx
 14b963d:	mov    DWORD PTR [esp],eax
 14b9640:	mov    DWORD PTR [esp+0x8],0x0
 14b9648:	call   cb9b7c
 14b964d:	lea    ecx,[ebx+0x56b94]
 14b9653:	mov    ecx,DWORD PTR [ecx]
 14b9655:	mov    edx,DWORD PTR [edi]
 14b9657:	mov    DWORD PTR [esp+0xc],edx
 14b965b:	mov    DWORD PTR [esp+0x8],eax
 14b965f:	mov    DWORD PTR [esp+0x4],ecx
 14b9663:	mov    DWORD PTR [esp],esi
 14b9666:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 14b966b:	lea    eax,[ebx+0x4584c]
 14b9671:	mov    eax,DWORD PTR [eax]
 14b9673:	test   BYTE PTR [eax+0xb2],0x1
 14b967a:	je     14b968a
 14b967c:	cmp    DWORD PTR [eax+0x60],0x0
 14b9680:	jne    14b968a
 14b9682:	mov    DWORD PTR [esp],eax
 14b9685:	call   1db0b8
 14b968a:	mov    DWORD PTR [esp+0x4],0x0
 14b9692:	mov    DWORD PTR [esp],0x0
 14b9699:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 14b969e:	mov    edi,eax
 14b96a0:	mov    eax,DWORD PTR [ebp+0x8]
 14b96a3:	mov    DWORD PTR [esp],eax
 14b96a6:	mov    DWORD PTR [esp+0x4],0x0
 14b96ae:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b96b3:	test   eax,eax
 14b96b5:	je     14b97da
 14b96bb:	mov    DWORD PTR [esp],eax
 14b96be:	mov    DWORD PTR [esp+0x4],0x0
 14b96c6:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
 14b96cb:	test   edi,edi
 14b96cd:	je     14b97da
 14b96d3:	mov    DWORD PTR [esp+0x8],esi
 14b96d7:	mov    DWORD PTR [esp+0x4],eax
 14b96db:	mov    DWORD PTR [esp],edi
 14b96de:	mov    DWORD PTR [esp+0xc],0x0
 14b96e6:	call   af6df4  ; ABHLocaService::GetSkillDescriptions
 14b96eb:	lea    esp,[ebp-0xc]
 14b96ee:	pop    esi
 14b96ef:	pop    edi
 14b96f0:	pop    ebx
 14b96f1:	pop    ebp
 14b96f2:	ret
 14b96f3:	lea    eax,[esi+0x40]
 14b96f6:	lea    ecx,[ebx+0x508e0]
 14b96fc:	mov    DWORD PTR [esp+0x18],ecx
 14b9700:	mov    ecx,DWORD PTR [ecx]
 14b9702:	mov    DWORD PTR [esp+0x4],ecx
 14b9706:	mov    DWORD PTR [esp],eax
 14b9709:	mov    DWORD PTR [esp+0x8],0x0
 14b9711:	call   cb9b7c
 14b9716:	test   edi,edi
 14b9718:	mov    DWORD PTR [esp+0x1c],edi
 14b971c:	je     14b97da
 14b9722:	lea    ecx,[ebx+0x56adc]
 14b9728:	mov    ecx,DWORD PTR [ecx]
 14b972a:	lea    edx,[ebx+0x4929c]
 14b9730:	mov    DWORD PTR [esp+0x14],edx
 14b9734:	mov    edx,DWORD PTR [edx]
 14b9736:	mov    DWORD PTR [esp+0xc],edx
 14b973a:	mov    DWORD PTR [esp+0x8],eax
 14b973e:	mov    DWORD PTR [esp+0x4],ecx
 14b9742:	mov    edi,DWORD PTR [esp+0x1c]
 14b9746:	mov    DWORD PTR [esp],edi
 14b9749:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 14b974e:	movss  xmm0,DWORD PTR [esi+0x40]
 14b9753:	addss  xmm0,DWORD PTR [esi+0x4c]
 14b9758:	movss  DWORD PTR [esp+0x2c],xmm0
 14b975e:	mov    eax,DWORD PTR [esp+0x18]
 14b9762:	mov    eax,DWORD PTR [eax]
 14b9764:	mov    DWORD PTR [esp+0x4],eax
 14b9768:	lea    eax,[esp+0x2c]
 14b976c:	mov    DWORD PTR [esp],eax
 14b976f:	mov    DWORD PTR [esp+0x8],0x0
 14b9777:	call   cb9b7c
 14b977c:	lea    ecx,[ebx+0x56c04]
 14b9782:	mov    ecx,DWORD PTR [ecx]
 14b9784:	mov    edx,DWORD PTR [esp+0x14]
 14b9788:	mov    edx,DWORD PTR [edx]
 14b978a:	mov    DWORD PTR [esp+0xc],edx
 14b978e:	mov    DWORD PTR [esp+0x8],eax
 14b9792:	mov    DWORD PTR [esp+0x4],ecx
 14b9796:	mov    DWORD PTR [esp],edi
 14b9799:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 14b979e:	lea    eax,[esi+0x3c]
 14b97a1:	mov    ecx,DWORD PTR [esp+0x18]
 14b97a5:	mov    ecx,DWORD PTR [ecx]
 14b97a7:	mov    DWORD PTR [esp+0x4],ecx
 14b97ab:	mov    DWORD PTR [esp],eax
 14b97ae:	mov    DWORD PTR [esp+0x8],0x0
 14b97b6:	call   cb9b7c
 14b97bb:	lea    ecx,[ebx+0x56c10]
 14b97c1:	mov    ecx,DWORD PTR [ecx]
 14b97c3:	mov    edx,DWORD PTR [esp+0x14]
 14b97c7:	mov    edx,DWORD PTR [edx]
 14b97c9:	mov    DWORD PTR [esp+0xc],edx
 14b97cd:	mov    DWORD PTR [esp+0x8],eax
 14b97d1:	mov    DWORD PTR [esp+0x4],ecx
 14b97d5:	jmp    14b95d0
 14b97da:	call   1fbc48
 14b97df:	call   14943fc