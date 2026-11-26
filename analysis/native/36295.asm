
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0149355a:
 149355a:	push   ebp
 149355b:	mov    ebp,esp
 149355d:	push   ebx
 149355e:	push   edi
 149355f:	push   esi
 1493560:	and    esp,0xfffffff0
 1493563:	sub    esp,0x20
 1493566:	call   149356b
 149356b:	pop    ebx
 149356c:	add    ebx,0xa7e9d9
 1493572:	mov    esi,DWORD PTR [ebp+0xc]
 1493575:	mov    al,BYTE PTR [ebx+0x65930]
 149357b:	test   al,al
 149357d:	jne    1493596
 149357f:	lea    eax,[ebx-0x670374]
 1493585:	mov    eax,DWORD PTR [eax]
 1493587:	mov    DWORD PTR [esp],eax
 149358a:	call   1ca6e8
 149358f:	mov    BYTE PTR [ebx+0x65930],0x1
 1493596:	test   esi,esi
 1493598:	je     1493620
 149359e:	mov    esi,DWORD PTR [esi+0x20]
 14935a1:	test   esi,esi
 14935a3:	je     1493620
 14935a5:	lea    eax,[ebx+0x45874]
 14935ab:	mov    eax,DWORD PTR [eax]
 14935ad:	mov    ecx,DWORD PTR [esi]
 14935af:	mov    DWORD PTR [esp+0x18],ecx
 14935b3:	movzx  edx,WORD PTR [ecx+0xaa]
 14935ba:	test   edx,edx
 14935bc:	je     14935d1
 14935be:	mov    ecx,DWORD PTR [esp+0x18]
 14935c2:	mov    edi,DWORD PTR [ecx+0x4c]
 14935c5:	xor    ecx,ecx
 14935c7:	cmp    DWORD PTR [edi+ecx*8],eax
 14935ca:	je     14935e9
 14935cc:	inc    ecx
 14935cd:	cmp    ecx,edx
 14935cf:	jb     14935c7
 14935d1:	mov    DWORD PTR [esp+0x4],eax
 14935d5:	mov    DWORD PTR [esp],esi
 14935d8:	mov    DWORD PTR [esp+0x8],0x11
 14935e0:	call   1c1964
 14935e5:	mov    ecx,eax
 14935e7:	jmp    14935f8
 14935e9:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 14935ed:	mov    ecx,DWORD PTR [esp+0x18]
 14935f1:	lea    ecx,[ecx+eax*8+0x13c]
 14935f8:	mov    eax,DWORD PTR [ecx+0x4]
 14935fb:	mov    DWORD PTR [esp+0x4],eax
 14935ff:	mov    DWORD PTR [esp],esi
 1493602:	call   DWORD PTR [ecx]
 1493604:	test   eax,eax
 1493606:	je     1493620
 1493608:	mov    DWORD PTR [esp],eax
 149360b:	mov    DWORD PTR [esp+0x4],0x0
 1493613:	call   8d8278  ; CharacterControllerBattleGroundBase::PlayIdle
 1493618:	lea    esp,[ebp-0xc]
 149361b:	pop    esi
 149361c:	pop    edi
 149361d:	pop    ebx
 149361e:	pop    ebp
 149361f:	ret
 1493620:	call   1fbc48
 1493625:	call   14943fc