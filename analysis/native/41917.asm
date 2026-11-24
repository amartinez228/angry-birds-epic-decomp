
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00576540:
  576540:	push   ebp
  576541:	mov    ebp,esp
  576543:	push   ebx
  576544:	push   edi
  576545:	push   esi
  576546:	and    esp,0xfffffff0
  576549:	sub    esp,0x40
  57654c:	call   576551
  576551:	pop    ebx
  576552:	add    ebx,0x199b9f3
  576558:	mov    esi,DWORD PTR [ebp+0x10]
  57655b:	mov    al,BYTE PTR [ebx+0x5d71f]
  576561:	test   al,al
  576563:	jne    57657c
  576565:	lea    eax,[ebx-0x664c4c]
  57656b:	mov    eax,DWORD PTR [eax]
  57656d:	mov    DWORD PTR [esp],eax
  576570:	call   1ca6e8
  576575:	mov    BYTE PTR [ebx+0x5d71f],0x1
  57657c:	test   esi,esi
  57657e:	je     57672b
  576584:	lea    eax,[ebx+0x45850]
  57658a:	mov    DWORD PTR [esp+0x38],eax
  57658e:	mov    eax,DWORD PTR [eax]
  576590:	mov    ecx,DWORD PTR [esi]
  576592:	movzx  edx,WORD PTR [ecx+0xaa]
  576599:	test   edx,edx
  57659b:	je     5765ac
  57659d:	mov    esi,DWORD PTR [ecx+0x4c]
  5765a0:	xor    edi,edi
  5765a2:	cmp    DWORD PTR [esi+edi*8],eax
  5765a5:	je     5765c7
  5765a7:	inc    edi
  5765a8:	cmp    edi,edx
  5765aa:	jb     5765a2
  5765ac:	mov    DWORD PTR [esp+0x4],eax
  5765b0:	mov    esi,DWORD PTR [ebp+0x10]
  5765b3:	mov    DWORD PTR [esp],esi
  5765b6:	mov    DWORD PTR [esp+0x8],0x2
  5765be:	call   1c1964
  5765c3:	mov    ecx,eax
  5765c5:	jmp    5765d5
  5765c7:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  5765cb:	lea    ecx,[ecx+eax*8+0xc4]
  5765d2:	mov    esi,DWORD PTR [ebp+0x10]
  5765d5:	mov    eax,DWORD PTR [ecx+0x4]
  5765d8:	mov    DWORD PTR [esp+0x4],eax
  5765dc:	mov    DWORD PTR [esp],esi
  5765df:	call   DWORD PTR [ecx]
  5765e1:	mov    DWORD PTR [esp+0x34],eax
  5765e5:	mov    eax,DWORD PTR [esp+0x38]
  5765e9:	mov    eax,DWORD PTR [eax]
  5765eb:	mov    ecx,DWORD PTR [esi]
  5765ed:	movzx  edx,WORD PTR [ecx+0xaa]
  5765f4:	test   edx,edx
  5765f6:	je     576607
  5765f8:	mov    esi,DWORD PTR [ecx+0x4c]
  5765fb:	xor    edi,edi
  5765fd:	cmp    DWORD PTR [esi+edi*8],eax
  576600:	je     576622
  576602:	inc    edi
  576603:	cmp    edi,edx
  576605:	jb     5765fd
  576607:	mov    DWORD PTR [esp+0x4],eax
  57660b:	mov    esi,DWORD PTR [ebp+0x10]
  57660e:	mov    DWORD PTR [esp],esi
  576611:	mov    DWORD PTR [esp+0x8],0x4
  576619:	call   1c1964
  57661e:	mov    ecx,eax
  576620:	jmp    576630
  576622:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  576626:	lea    ecx,[ecx+eax*8+0xd4]
  57662d:	mov    esi,DWORD PTR [ebp+0x10]
  576630:	mov    eax,DWORD PTR [ecx+0x4]
  576633:	mov    DWORD PTR [esp+0x4],eax
  576637:	mov    DWORD PTR [esp],esi
  57663a:	call   DWORD PTR [ecx]
  57663c:	mov    DWORD PTR [esp+0x30],eax
  576640:	lea    eax,[ebx+0x461e0]
  576646:	mov    eax,DWORD PTR [eax]
  576648:	mov    ecx,DWORD PTR [esi]
  57664a:	movzx  edx,WORD PTR [ecx+0xaa]
  576651:	test   edx,edx
  576653:	je     576664
  576655:	mov    esi,DWORD PTR [ecx+0x4c]
  576658:	xor    edi,edi
  57665a:	cmp    DWORD PTR [esi+edi*8],eax
  57665d:	je     57667f
  57665f:	inc    edi
  576660:	cmp    edi,edx
  576662:	jb     57665a
  576664:	mov    DWORD PTR [esp+0x4],eax
  576668:	mov    esi,DWORD PTR [ebp+0x10]
  57666b:	mov    DWORD PTR [esp],esi
  57666e:	mov    DWORD PTR [esp+0x8],0x0
  576676:	call   1c1964
  57667b:	mov    ecx,eax
  57667d:	jmp    57668d
  57667f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  576683:	lea    ecx,[ecx+eax*8+0xb4]
  57668a:	mov    esi,DWORD PTR [ebp+0x10]
  57668d:	mov    eax,DWORD PTR [ecx+0x4]
  576690:	mov    DWORD PTR [esp+0x4],eax
  576694:	mov    DWORD PTR [esp],esi
  576697:	call   DWORD PTR [ecx]
  576699:	mov    DWORD PTR [esp+0x2c],eax
  57669d:	mov    eax,DWORD PTR [esp+0x38]
  5766a1:	mov    eax,DWORD PTR [eax]
  5766a3:	mov    ecx,DWORD PTR [esi]
  5766a5:	movzx  edx,WORD PTR [ecx+0xaa]
  5766ac:	test   edx,edx
  5766ae:	je     5766bf
  5766b0:	mov    esi,DWORD PTR [ecx+0x4c]
  5766b3:	xor    edi,edi
  5766b5:	cmp    DWORD PTR [esi+edi*8],eax
  5766b8:	je     5766da
  5766ba:	inc    edi
  5766bb:	cmp    edi,edx
  5766bd:	jb     5766b5
  5766bf:	mov    DWORD PTR [esp+0x4],eax
  5766c3:	mov    esi,DWORD PTR [ebp+0x10]
  5766c6:	mov    DWORD PTR [esp],esi
  5766c9:	mov    DWORD PTR [esp+0x8],0x0
  5766d1:	call   1c1964
  5766d6:	mov    ecx,eax
  5766d8:	jmp    5766e8
  5766da:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  5766de:	lea    ecx,[ecx+eax*8+0xb4]
  5766e5:	mov    esi,DWORD PTR [ebp+0x10]
  5766e8:	mov    eax,DWORD PTR [ecx+0x4]
  5766eb:	mov    DWORD PTR [esp+0x4],eax
  5766ef:	mov    DWORD PTR [esp],esi
  5766f2:	call   DWORD PTR [ecx]
  5766f4:	mov    DWORD PTR [esp+0x14],eax
  5766f8:	mov    eax,DWORD PTR [esp+0x2c]
  5766fc:	mov    DWORD PTR [esp+0x10],eax
  576700:	mov    eax,DWORD PTR [esp+0x30]
  576704:	mov    DWORD PTR [esp+0xc],eax
  576708:	mov    eax,DWORD PTR [esp+0x34]
  57670c:	mov    DWORD PTR [esp+0x8],eax
  576710:	mov    eax,DWORD PTR [ebp+0x8]
  576713:	mov    DWORD PTR [esp],eax
  576716:	mov    DWORD PTR [esp+0x18],0x0
  57671e:	call   547648  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateNewInventoryItemGameData
  576723:	lea    esp,[ebp-0xc]
  576726:	pop    esi
  576727:	pop    edi
  576728:	pop    ebx
  576729:	pop    ebp
  57672a:	ret
  57672b:	call   1fbc48
  576730:	call   540b98