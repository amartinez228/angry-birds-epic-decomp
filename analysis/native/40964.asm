
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00508293:
  508293:	push   ebp
  508294:	mov    ebp,esp
  508296:	push   ebx
  508297:	push   edi
  508298:	push   esi
  508299:	and    esp,0xfffffff0
  50829c:	sub    esp,0x40
  50829f:	call   5082a4
  5082a4:	pop    ebx
  5082a5:	add    ebx,0x1a09ca0
  5082ab:	mov    DWORD PTR [esp+0x34],ebx
  5082af:	mov    edi,DWORD PTR [ebp+0xc]
  5082b2:	mov    al,BYTE PTR [ebx+0x5d4fa]
  5082b8:	test   al,al
  5082ba:	jne    5082d3
  5082bc:	lea    eax,[ebx-0x66f4e4]
  5082c2:	mov    eax,DWORD PTR [eax]
  5082c4:	mov    DWORD PTR [esp],eax
  5082c7:	call   1ca6e8
  5082cc:	mov    BYTE PTR [ebx+0x5d4fa],0x1
  5082d3:	test   edi,edi
  5082d5:	je     508772
  5082db:	mov    eax,DWORD PTR [edi+0x58]
  5082de:	test   eax,eax
  5082e0:	je     508772
  5082e6:	lea    ecx,[ebx+0x4a048]
  5082ec:	mov    DWORD PTR [esp+0x2c],ecx
  5082f0:	mov    ecx,DWORD PTR [ecx]
  5082f2:	mov    DWORD PTR [esp+0x4],ecx
  5082f6:	mov    DWORD PTR [esp],eax
  5082f9:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  5082fe:	mov    esi,eax
  508300:	jmp    508319
  508302:	mov    ecx,DWORD PTR [eax+0x4]
  508305:	mov    DWORD PTR [esp+0x8],ecx
  508309:	mov    DWORD PTR [esp],edi
  50830c:	mov    DWORD PTR [esp+0x4],0x0
  508314:	call   DWORD PTR [eax]
  508316:	mov    edi,DWORD PTR [ebp+0xc]
  508319:	dec    esi
  50831a:	js     5083ae
  508320:	mov    eax,DWORD PTR [edi+0x58]
  508323:	test   eax,eax
  508325:	je     508772
  50832b:	lea    ecx,[ebx+0x4a0ac]
  508331:	mov    ecx,DWORD PTR [ecx]
  508333:	mov    DWORD PTR [esp+0x8],ecx
  508337:	mov    DWORD PTR [esp+0x4],esi
  50833b:	mov    DWORD PTR [esp],eax
  50833e:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  508343:	mov    edi,eax
  508345:	test   edi,edi
  508347:	je     508772
  50834d:	lea    eax,[ebx+0x45874]
  508353:	mov    eax,DWORD PTR [eax]
  508355:	mov    ecx,DWORD PTR [edi]
  508357:	mov    DWORD PTR [esp+0x30],ecx
  50835b:	movzx  edx,WORD PTR [ecx+0xaa]
  508362:	test   edx,edx
  508364:	je     508379
  508366:	mov    ecx,DWORD PTR [esp+0x30]
  50836a:	mov    ecx,DWORD PTR [ecx+0x4c]
  50836d:	xor    ebx,ebx
  50836f:	cmp    DWORD PTR [ecx+ebx*8],eax
  508372:	je     508396
  508374:	inc    ebx
  508375:	cmp    ebx,edx
  508377:	jb     50836f
  508379:	mov    DWORD PTR [esp+0x4],eax
  50837d:	mov    DWORD PTR [esp],edi
  508380:	mov    DWORD PTR [esp+0x8],0x26
  508388:	mov    ebx,DWORD PTR [esp+0x34]
  50838c:	call   1c1964
  508391:	jmp    508302
  508396:	mov    eax,DWORD PTR [ecx+ebx*8+0x4]
  50839a:	mov    ecx,DWORD PTR [esp+0x30]
  50839e:	lea    eax,[ecx+eax*8+0x1e4]
  5083a5:	mov    ebx,DWORD PTR [esp+0x34]
  5083a9:	jmp    508302
  5083ae:	mov    DWORD PTR [esp],edi
  5083b1:	mov    DWORD PTR [esp+0x4],0x0
  5083b9:	call   ec17ae  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentCombatant
  5083be:	xor    esi,esi
  5083c0:	test   eax,eax
  5083c2:	je     5086a1
  5083c8:	mov    edx,DWORD PTR [edi+0x58]
  5083cb:	lea    esi,[ebx+0x45ff0]
  5083d1:	mov    eax,DWORD PTR [esi]
  5083d3:	mov    eax,DWORD PTR [eax+0x50]
  5083d6:	cmp    DWORD PTR [eax+0x2c],0x0
  5083da:	jne    508433
  5083dc:	lea    eax,[ebx+0x4aff4]
  5083e2:	mov    edi,DWORD PTR [eax]
  5083e4:	lea    eax,[ebx+0x4588c]
  5083ea:	mov    eax,DWORD PTR [eax]
  5083ec:	mov    DWORD PTR [esp],eax
  5083ef:	mov    DWORD PTR [esp+0x30],edx
  5083f3:	call   20bfb2
  5083f8:	mov    DWORD PTR [esp+0x38],edi
  5083fc:	lea    ecx,[ebx+0x4a054]
  508402:	mov    ecx,DWORD PTR [ecx]
  508404:	mov    DWORD PTR [esp+0xc],ecx
  508408:	mov    ecx,DWORD PTR [esp+0x38]
  50840c:	mov    DWORD PTR [esp+0x8],ecx
  508410:	mov    DWORD PTR [esp],eax
  508413:	mov    edi,eax
  508415:	mov    DWORD PTR [esp+0x4],0x0
  50841d:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  508422:	mov    edx,DWORD PTR [esp+0x30]
  508426:	mov    eax,DWORD PTR [esi]
  508428:	mov    eax,DWORD PTR [eax+0x50]
  50842b:	mov    DWORD PTR [eax+0x2c],edi
  50842e:	mov    eax,DWORD PTR [esi]
  508430:	mov    eax,DWORD PTR [eax+0x50]
  508433:	mov    eax,DWORD PTR [eax+0x2c]
  508436:	lea    ecx,[ebx+0x4a058]
  50843c:	mov    ecx,DWORD PTR [ecx]
  50843e:	mov    DWORD PTR [esp+0xc],ecx
  508442:	mov    DWORD PTR [esp+0x8],eax
  508446:	mov    DWORD PTR [esp+0x4],edx
  50844a:	mov    DWORD PTR [esp],0x0
  508451:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  508456:	mov    esi,eax
  508458:	test   esi,esi
  50845a:	je     508772
  508460:	lea    eax,[ebx+0x45944]
  508466:	mov    eax,DWORD PTR [eax]
  508468:	mov    ecx,DWORD PTR [esi]
  50846a:	mov    DWORD PTR [esp+0x30],ecx
  50846e:	movzx  edx,WORD PTR [ecx+0xaa]
  508475:	test   edx,edx
  508477:	je     50848c
  508479:	mov    ecx,DWORD PTR [esp+0x30]
  50847d:	mov    edi,DWORD PTR [ecx+0x4c]
  508480:	xor    ecx,ecx
  508482:	cmp    DWORD PTR [edi+ecx*8],eax
  508485:	je     5084a4
  508487:	inc    ecx
  508488:	cmp    ecx,edx
  50848a:	jb     508482
  50848c:	mov    DWORD PTR [esp+0x4],eax
  508490:	mov    DWORD PTR [esp],esi
  508493:	mov    DWORD PTR [esp+0x8],0x0
  50849b:	call   1c1964
  5084a0:	mov    ecx,eax
  5084a2:	jmp    5084b3
  5084a4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  5084a8:	mov    ecx,DWORD PTR [esp+0x30]
  5084ac:	lea    ecx,[ecx+eax*8+0xb4]
  5084b3:	mov    eax,DWORD PTR [ecx+0x4]
  5084b6:	mov    DWORD PTR [esp+0x4],eax
  5084ba:	mov    DWORD PTR [esp],esi
  5084bd:	call   DWORD PTR [ecx]
  5084bf:	mov    DWORD PTR [esp+0x30],eax
  5084c3:	mov    edi,DWORD PTR [ebp+0xc]
  5084c6:	xor    esi,esi
  5084c8:	mov    ecx,DWORD PTR [esp+0x30]
  5084cc:	test   ecx,ecx
  5084ce:	je     5085d6
  5084d4:	lea    eax,[ebx+0x4319c]
  5084da:	mov    eax,DWORD PTR [eax]
  5084dc:	mov    ecx,DWORD PTR [ecx]
  5084de:	movzx  edx,WORD PTR [ecx+0xaa]
  5084e5:	test   edx,edx
  5084e7:	je     5084f8
  5084e9:	mov    edi,DWORD PTR [ecx+0x4c]
  5084ec:	xor    esi,esi
  5084ee:	cmp    DWORD PTR [edi+esi*8],eax
  5084f1:	je     508517
  5084f3:	inc    esi
  5084f4:	cmp    esi,edx
  5084f6:	jb     5084ee
  5084f8:	mov    DWORD PTR [esp+0x4],eax
  5084fc:	mov    eax,DWORD PTR [esp+0x30]
  508500:	mov    DWORD PTR [esp],eax
  508503:	mov    DWORD PTR [esp+0x8],0x1
  50850b:	mov    edi,DWORD PTR [ebp+0xc]
  50850e:	xor    esi,esi
  508510:	call   1c1964
  508515:	jmp    508527
  508517:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50851b:	lea    eax,[ecx+eax*8+0xbc]
  508522:	mov    edi,DWORD PTR [ebp+0xc]
  508525:	xor    esi,esi
  508527:	mov    ecx,DWORD PTR [eax]
  508529:	mov    eax,DWORD PTR [eax+0x4]
  50852c:	mov    DWORD PTR [esp+0x4],eax
  508530:	mov    eax,DWORD PTR [esp+0x30]
  508534:	mov    DWORD PTR [esp],eax
  508537:	call   ecx
  508539:	test   al,al
  50853b:	je     508760
  508541:	lea    eax,[ebx+0x45948]
  508547:	mov    eax,DWORD PTR [eax]
  508549:	mov    ecx,DWORD PTR [esp+0x30]
  50854d:	mov    ecx,DWORD PTR [ecx]
  50854f:	movzx  edx,WORD PTR [ecx+0xaa]
  508556:	test   edx,edx
  508558:	je     508569
  50855a:	mov    edi,DWORD PTR [ecx+0x4c]
  50855d:	xor    esi,esi
  50855f:	cmp    DWORD PTR [edi+esi*8],eax
  508562:	je     508588
  508564:	inc    esi
  508565:	cmp    esi,edx
  508567:	jb     50855f
  508569:	mov    DWORD PTR [esp+0x4],eax
  50856d:	mov    eax,DWORD PTR [esp+0x30]
  508571:	mov    DWORD PTR [esp],eax
  508574:	mov    DWORD PTR [esp+0x8],0x0
  50857c:	mov    edi,DWORD PTR [ebp+0xc]
  50857f:	xor    esi,esi
  508581:	call   1c1964
  508586:	jmp    508598
  508588:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50858c:	lea    eax,[ecx+eax*8+0xb4]
  508593:	mov    edi,DWORD PTR [ebp+0xc]
  508596:	xor    esi,esi
  508598:	mov    ecx,DWORD PTR [eax]
  50859a:	mov    eax,DWORD PTR [eax+0x4]
  50859d:	mov    DWORD PTR [esp+0x4],eax
  5085a1:	mov    eax,DWORD PTR [esp+0x30]
  5085a5:	mov    DWORD PTR [esp],eax
  5085a8:	call   ecx
  5085aa:	mov    DWORD PTR [esp+0x10],eax
  5085ae:	mov    DWORD PTR [esp+0xc],eax
  5085b2:	mov    eax,DWORD PTR [ebp+0x8]
  5085b5:	mov    DWORD PTR [esp],eax
  5085b8:	mov    DWORD PTR [esp+0x8],0x20
  5085c0:	mov    DWORD PTR [esp+0x4],0x3f800000
  5085c8:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  5085cd:	fstp   st(0)
  5085cf:	jmp    5084c8
  5085d4:	jmp    5085e0
  5085d6:	call   1fbc48
  5085db:	jmp    508784
  5085e0:	cmp    edx,0x1
  5085e3:	jne    50877c
  5085e9:	mov    DWORD PTR [esp],eax
  5085ec:	call   1ba3f0
  5085f1:	mov    eax,DWORD PTR [eax]
  5085f3:	mov    DWORD PTR [esp+0x28],eax
  5085f7:	call   1b9ce0
  5085fc:	xor    eax,eax
  5085fe:	mov    ecx,DWORD PTR [esp+0x30]
  508602:	test   ecx,ecx
  508604:	je     50866c
  508606:	mov    DWORD PTR [esp+0x24],eax
  50860a:	lea    eax,[ebx+0x431a4]
  508610:	mov    eax,DWORD PTR [eax]
  508612:	mov    ecx,DWORD PTR [ecx]
  508614:	movzx  edx,WORD PTR [ecx+0xaa]
  50861b:	test   edx,edx
  50861d:	je     50862e
  50861f:	mov    edi,DWORD PTR [ecx+0x4c]
  508622:	xor    esi,esi
  508624:	cmp    DWORD PTR [edi+esi*8],eax
  508627:	je     508648
  508629:	inc    esi
  50862a:	cmp    esi,edx
  50862c:	jb     508624
  50862e:	mov    DWORD PTR [esp+0x4],eax
  508632:	mov    esi,DWORD PTR [esp+0x30]
  508636:	mov    DWORD PTR [esp],esi
  508639:	mov    DWORD PTR [esp+0x8],0x0
  508641:	call   1c1964
  508646:	jmp    508657
  508648:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50864c:	lea    eax,[ecx+eax*8+0xb4]
  508653:	mov    esi,DWORD PTR [esp+0x30]
  508657:	mov    ecx,DWORD PTR [eax+0x4]
  50865a:	mov    DWORD PTR [esp+0x4],ecx
  50865e:	mov    DWORD PTR [esp],esi
  508661:	call   DWORD PTR [eax]
  508663:	mov    edi,DWORD PTR [ebp+0xc]
  508666:	xor    esi,esi
  508668:	mov    eax,DWORD PTR [esp+0x24]
  50866c:	cmp    eax,0xa8
  508671:	je     5086a1
  508673:	mov    eax,DWORD PTR [esp+0x28]
  508677:	test   eax,eax
  508679:	je     5086a1
  50867b:	mov    DWORD PTR [esp],eax
  50867e:	call   1fbb20
  508683:	jmp    5086a1
  508685:	mov    ecx,DWORD PTR [eax+0x4]
  508688:	mov    DWORD PTR [esp+0x8],ecx
  50868c:	mov    DWORD PTR [esp],esi
  50868f:	mov    DWORD PTR [esp+0x4],0x0
  508697:	call   DWORD PTR [eax]
  508699:	mov    esi,DWORD PTR [esp+0x30]
  50869d:	inc    esi
  50869e:	mov    edi,DWORD PTR [ebp+0xc]
  5086a1:	mov    eax,DWORD PTR [edi+0x58]
  5086a4:	test   eax,eax
  5086a6:	je     508772
  5086ac:	mov    ecx,DWORD PTR [esp+0x2c]
  5086b0:	mov    ecx,DWORD PTR [ecx]
  5086b2:	mov    DWORD PTR [esp+0x4],ecx
  5086b6:	mov    DWORD PTR [esp],eax
  5086b9:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  5086be:	cmp    esi,eax
  5086c0:	jge    508748
  5086c6:	mov    eax,DWORD PTR [edi+0x58]
  5086c9:	test   eax,eax
  5086cb:	je     508772
  5086d1:	lea    ecx,[ebx+0x4a0ac]
  5086d7:	mov    ecx,DWORD PTR [ecx]
  5086d9:	mov    DWORD PTR [esp+0x8],ecx
  5086dd:	mov    DWORD PTR [esp+0x4],esi
  5086e1:	mov    DWORD PTR [esp+0x30],esi
  5086e5:	mov    DWORD PTR [esp],eax
  5086e8:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  5086ed:	mov    esi,eax
  5086ef:	test   esi,esi
  5086f1:	je     508772
  5086f3:	lea    eax,[ebx+0x45874]
  5086f9:	mov    eax,DWORD PTR [eax]
  5086fb:	mov    ecx,DWORD PTR [esi]
  5086fd:	movzx  edx,WORD PTR [ecx+0xaa]
  508704:	test   edx,edx
  508706:	je     508717
  508708:	mov    ebx,DWORD PTR [ecx+0x4c]
  50870b:	xor    edi,edi
  50870d:	cmp    DWORD PTR [ebx+edi*8],eax
  508710:	je     508734
  508712:	inc    edi
  508713:	cmp    edi,edx
  508715:	jb     50870d
  508717:	mov    DWORD PTR [esp+0x4],eax
  50871b:	mov    DWORD PTR [esp],esi
  50871e:	mov    DWORD PTR [esp+0x8],0x2c
  508726:	mov    ebx,DWORD PTR [esp+0x34]
  50872a:	call   1c1964
  50872f:	jmp    508685
  508734:	mov    eax,DWORD PTR [ebx+edi*8+0x4]
  508738:	lea    eax,[ecx+eax*8+0x214]
  50873f:	mov    ebx,DWORD PTR [esp+0x34]
  508743:	jmp    508685
  508748:	mov    DWORD PTR [edi+0xf4],0x0
  508752:	inc    DWORD PTR [edi+0x20]
  508755:	inc    DWORD PTR [edi+0x24]
  508758:	lea    esp,[ebp-0xc]
  50875b:	pop    esi
  50875c:	pop    edi
  50875d:	pop    ebx
  50875e:	pop    ebp
  50875f:	ret
  508760:	mov    DWORD PTR [esp+0x28],0x0
  508768:	mov    eax,0xa8
  50876d:	jmp    5085fe
  508772:	call   1fbc48
  508777:	call   540b98
  50877c:	mov    DWORD PTR [esp],eax
  50877f:	call   1b9bd0
  508784:	call   540b98