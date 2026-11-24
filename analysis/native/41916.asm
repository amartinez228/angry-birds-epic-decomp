
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057634b:
  57634b:	push   ebp
  57634c:	mov    ebp,esp
  57634e:	push   ebx
  57634f:	push   edi
  576350:	push   esi
  576351:	and    esp,0xfffffff0
  576354:	sub    esp,0x40
  576357:	call   57635c
  57635c:	pop    ebx
  57635d:	add    ebx,0x199bbe8
  576363:	mov    esi,DWORD PTR [ebp+0xc]
  576366:	mov    al,BYTE PTR [ebx+0x5d71e]
  57636c:	test   al,al
  57636e:	jne    576387
  576370:	lea    eax,[ebx-0x664c48]
  576376:	mov    eax,DWORD PTR [eax]
  576378:	mov    DWORD PTR [esp],eax
  57637b:	call   1ca6e8
  576380:	mov    BYTE PTR [ebx+0x5d71e],0x1
  576387:	test   esi,esi
  576389:	je     576536
  57638f:	lea    eax,[ebx+0x45850]
  576395:	mov    DWORD PTR [esp+0x38],eax
  576399:	mov    eax,DWORD PTR [eax]
  57639b:	mov    ecx,DWORD PTR [esi]
  57639d:	movzx  edx,WORD PTR [ecx+0xaa]
  5763a4:	test   edx,edx
  5763a6:	je     5763b7
  5763a8:	mov    esi,DWORD PTR [ecx+0x4c]
  5763ab:	xor    edi,edi
  5763ad:	cmp    DWORD PTR [esi+edi*8],eax
  5763b0:	je     5763d2
  5763b2:	inc    edi
  5763b3:	cmp    edi,edx
  5763b5:	jb     5763ad
  5763b7:	mov    DWORD PTR [esp+0x4],eax
  5763bb:	mov    esi,DWORD PTR [ebp+0xc]
  5763be:	mov    DWORD PTR [esp],esi
  5763c1:	mov    DWORD PTR [esp+0x8],0x2
  5763c9:	call   1c1964
  5763ce:	mov    ecx,eax
  5763d0:	jmp    5763e0
  5763d2:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  5763d6:	lea    ecx,[ecx+eax*8+0xc4]
  5763dd:	mov    esi,DWORD PTR [ebp+0xc]
  5763e0:	mov    eax,DWORD PTR [ecx+0x4]
  5763e3:	mov    DWORD PTR [esp+0x4],eax
  5763e7:	mov    DWORD PTR [esp],esi
  5763ea:	call   DWORD PTR [ecx]
  5763ec:	mov    DWORD PTR [esp+0x34],eax
  5763f0:	mov    eax,DWORD PTR [esp+0x38]
  5763f4:	mov    eax,DWORD PTR [eax]
  5763f6:	mov    ecx,DWORD PTR [esi]
  5763f8:	movzx  edx,WORD PTR [ecx+0xaa]
  5763ff:	test   edx,edx
  576401:	je     576412
  576403:	mov    esi,DWORD PTR [ecx+0x4c]
  576406:	xor    edi,edi
  576408:	cmp    DWORD PTR [esi+edi*8],eax
  57640b:	je     57642d
  57640d:	inc    edi
  57640e:	cmp    edi,edx
  576410:	jb     576408
  576412:	mov    DWORD PTR [esp+0x4],eax
  576416:	mov    esi,DWORD PTR [ebp+0xc]
  576419:	mov    DWORD PTR [esp],esi
  57641c:	mov    DWORD PTR [esp+0x8],0x4
  576424:	call   1c1964
  576429:	mov    ecx,eax
  57642b:	jmp    57643b
  57642d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  576431:	lea    ecx,[ecx+eax*8+0xd4]
  576438:	mov    esi,DWORD PTR [ebp+0xc]
  57643b:	mov    eax,DWORD PTR [ecx+0x4]
  57643e:	mov    DWORD PTR [esp+0x4],eax
  576442:	mov    DWORD PTR [esp],esi
  576445:	call   DWORD PTR [ecx]
  576447:	mov    DWORD PTR [esp+0x30],eax
  57644b:	lea    eax,[ebx+0x461e0]
  576451:	mov    eax,DWORD PTR [eax]
  576453:	mov    ecx,DWORD PTR [esi]
  576455:	movzx  edx,WORD PTR [ecx+0xaa]
  57645c:	test   edx,edx
  57645e:	je     57646f
  576460:	mov    esi,DWORD PTR [ecx+0x4c]
  576463:	xor    edi,edi
  576465:	cmp    DWORD PTR [esi+edi*8],eax
  576468:	je     57648a
  57646a:	inc    edi
  57646b:	cmp    edi,edx
  57646d:	jb     576465
  57646f:	mov    DWORD PTR [esp+0x4],eax
  576473:	mov    esi,DWORD PTR [ebp+0xc]
  576476:	mov    DWORD PTR [esp],esi
  576479:	mov    DWORD PTR [esp+0x8],0x0
  576481:	call   1c1964
  576486:	mov    ecx,eax
  576488:	jmp    576498
  57648a:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  57648e:	lea    ecx,[ecx+eax*8+0xb4]
  576495:	mov    esi,DWORD PTR [ebp+0xc]
  576498:	mov    eax,DWORD PTR [ecx+0x4]
  57649b:	mov    DWORD PTR [esp+0x4],eax
  57649f:	mov    DWORD PTR [esp],esi
  5764a2:	call   DWORD PTR [ecx]
  5764a4:	mov    DWORD PTR [esp+0x2c],eax
  5764a8:	mov    eax,DWORD PTR [esp+0x38]
  5764ac:	mov    eax,DWORD PTR [eax]
  5764ae:	mov    ecx,DWORD PTR [esi]
  5764b0:	movzx  edx,WORD PTR [ecx+0xaa]
  5764b7:	test   edx,edx
  5764b9:	je     5764ca
  5764bb:	mov    esi,DWORD PTR [ecx+0x4c]
  5764be:	xor    edi,edi
  5764c0:	cmp    DWORD PTR [esi+edi*8],eax
  5764c3:	je     5764e5
  5764c5:	inc    edi
  5764c6:	cmp    edi,edx
  5764c8:	jb     5764c0
  5764ca:	mov    DWORD PTR [esp+0x4],eax
  5764ce:	mov    esi,DWORD PTR [ebp+0xc]
  5764d1:	mov    DWORD PTR [esp],esi
  5764d4:	mov    DWORD PTR [esp+0x8],0x0
  5764dc:	call   1c1964
  5764e1:	mov    ecx,eax
  5764e3:	jmp    5764f3
  5764e5:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  5764e9:	lea    ecx,[ecx+eax*8+0xb4]
  5764f0:	mov    esi,DWORD PTR [ebp+0xc]
  5764f3:	mov    eax,DWORD PTR [ecx+0x4]
  5764f6:	mov    DWORD PTR [esp+0x4],eax
  5764fa:	mov    DWORD PTR [esp],esi
  5764fd:	call   DWORD PTR [ecx]
  5764ff:	mov    DWORD PTR [esp+0x14],eax
  576503:	mov    eax,DWORD PTR [esp+0x2c]
  576507:	mov    DWORD PTR [esp+0x10],eax
  57650b:	mov    eax,DWORD PTR [esp+0x30]
  57650f:	mov    DWORD PTR [esp+0xc],eax
  576513:	mov    eax,DWORD PTR [esp+0x34]
  576517:	mov    DWORD PTR [esp+0x8],eax
  57651b:	mov    eax,DWORD PTR [ebp+0x8]
  57651e:	mov    DWORD PTR [esp],eax
  576521:	mov    DWORD PTR [esp+0x18],0x0
  576529:	call   547648  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateNewInventoryItemGameData
  57652e:	lea    esp,[ebp-0xc]
  576531:	pop    esi
  576532:	pop    edi
  576533:	pop    ebx
  576534:	pop    ebp
  576535:	ret
  576536:	call   1fbc48
  57653b:	call   540b98