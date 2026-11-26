
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01493380:
 1493380:	push   ebp
 1493381:	mov    ebp,esp
 1493383:	push   ebx
 1493384:	push   edi
 1493385:	push   esi
 1493386:	and    esp,0xfffffff0
 1493389:	sub    esp,0x20
 149338c:	call   1493391
 1493391:	pop    ebx
 1493392:	add    ebx,0xa7ebb3
 1493398:	mov    esi,DWORD PTR [ebp+0x10]
 149339b:	mov    al,BYTE PTR [ebx+0x6592f]
 14933a1:	test   al,al
 14933a3:	jne    14933bc
 14933a5:	lea    eax,[ebx-0x670378]
 14933ab:	mov    eax,DWORD PTR [eax]
 14933ad:	mov    DWORD PTR [esp],eax
 14933b0:	call   1ca6e8
 14933b5:	mov    BYTE PTR [ebx+0x6592f],0x1
 14933bc:	test   esi,esi
 14933be:	je     14934fb
 14933c4:	lea    eax,[ebx+0x45874]
 14933ca:	mov    DWORD PTR [esp+0x18],eax
 14933ce:	mov    eax,DWORD PTR [eax]
 14933d0:	mov    ecx,DWORD PTR [esi]
 14933d2:	movzx  edx,WORD PTR [ecx+0xaa]
 14933d9:	test   edx,edx
 14933db:	je     14933ec
 14933dd:	mov    esi,DWORD PTR [ecx+0x4c]
 14933e0:	xor    edi,edi
 14933e2:	cmp    DWORD PTR [esi+edi*8],eax
 14933e5:	je     1493407
 14933e7:	inc    edi
 14933e8:	cmp    edi,edx
 14933ea:	jb     14933e2
 14933ec:	mov    DWORD PTR [esp+0x4],eax
 14933f0:	mov    edi,DWORD PTR [ebp+0x10]
 14933f3:	mov    DWORD PTR [esp],edi
 14933f6:	mov    DWORD PTR [esp+0x8],0x11
 14933fe:	call   1c1964
 1493403:	mov    ecx,eax
 1493405:	jmp    1493415
 1493407:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 149340b:	lea    ecx,[ecx+eax*8+0x13c]
 1493412:	mov    edi,DWORD PTR [ebp+0x10]
 1493415:	mov    eax,DWORD PTR [ecx+0x4]
 1493418:	mov    DWORD PTR [esp+0x4],eax
 149341c:	mov    DWORD PTR [esp],edi
 149341f:	call   DWORD PTR [ecx]
 1493421:	test   eax,eax
 1493423:	je     14934fb
 1493429:	mov    ecx,DWORD PTR [eax+0x68]
 149342c:	test   ecx,ecx
 149342e:	je     14934f1
 1493434:	lea    eax,[ebx+0x459cc]
 149343a:	mov    DWORD PTR [esp+0x14],eax
 149343e:	mov    eax,DWORD PTR [eax]
 1493440:	mov    ecx,DWORD PTR [ecx]
 1493442:	movzx  edx,BYTE PTR [eax+0xac]
 1493449:	movzx  esi,BYTE PTR [ecx+0xac]
 1493450:	cmp    esi,edx
 1493452:	jb     14934f1
 1493458:	mov    ecx,DWORD PTR [ecx+0x58]
 149345b:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
 149345f:	jne    14934f1
 1493465:	mov    eax,DWORD PTR [esp+0x18]
 1493469:	mov    eax,DWORD PTR [eax]
 149346b:	mov    ecx,DWORD PTR [edi]
 149346d:	movzx  edx,WORD PTR [ecx+0xaa]
 1493474:	test   edx,edx
 1493476:	je     1493487
 1493478:	mov    esi,DWORD PTR [ecx+0x4c]
 149347b:	xor    edi,edi
 149347d:	cmp    DWORD PTR [esi+edi*8],eax
 1493480:	je     14934a2
 1493482:	inc    edi
 1493483:	cmp    edi,edx
 1493485:	jb     149347d
 1493487:	mov    DWORD PTR [esp+0x4],eax
 149348b:	mov    esi,DWORD PTR [ebp+0x10]
 149348e:	mov    DWORD PTR [esp],esi
 1493491:	mov    DWORD PTR [esp+0x8],0x11
 1493499:	call   1c1964
 149349e:	mov    ecx,eax
 14934a0:	jmp    14934b0
 14934a2:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 14934a6:	lea    ecx,[ecx+eax*8+0x13c]
 14934ad:	mov    esi,DWORD PTR [ebp+0x10]
 14934b0:	mov    eax,DWORD PTR [ecx+0x4]
 14934b3:	mov    DWORD PTR [esp+0x4],eax
 14934b7:	mov    DWORD PTR [esp],esi
 14934ba:	call   DWORD PTR [ecx]
 14934bc:	test   eax,eax
 14934be:	je     14934fb
 14934c0:	mov    eax,DWORD PTR [eax+0x68]
 14934c3:	test   eax,eax
 14934c5:	je     14934fb
 14934c7:	mov    ecx,DWORD PTR [esp+0x14]
 14934cb:	mov    ecx,DWORD PTR [ecx]
 14934cd:	mov    edx,DWORD PTR [eax]
 14934cf:	movzx  esi,BYTE PTR [ecx+0xac]
 14934d6:	movzx  edi,BYTE PTR [edx+0xac]
 14934dd:	cmp    edi,esi
 14934df:	jb     14934fb
 14934e1:	mov    edx,DWORD PTR [edx+0x58]
 14934e4:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
 14934e8:	jne    14934fb
 14934ea:	mov    BYTE PTR [eax+0x91],0x1
 14934f1:	fldz
 14934f3:	lea    esp,[ebp-0xc]
 14934f6:	pop    esi
 14934f7:	pop    edi
 14934f8:	pop    ebx
 14934f9:	pop    ebp
 14934fa:	ret
 14934fb:	call   1fbc48
 1493500:	call   14943fc