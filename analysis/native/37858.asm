
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fc2f1:
 13fc2f1:	push   ebp
 13fc2f2:	mov    ebp,esp
 13fc2f4:	push   ebx
 13fc2f5:	push   edi
 13fc2f6:	push   esi
 13fc2f7:	and    esp,0xfffffff0
 13fc2fa:	sub    esp,0x10
 13fc2fd:	call   13fc302
 13fc302:	pop    ebx
 13fc303:	add    ebx,0xb15c42
 13fc309:	mov    esi,DWORD PTR [ebp+0xc]
 13fc30c:	mov    al,BYTE PTR [ebx+0x654e3]
 13fc312:	test   al,al
 13fc314:	jne    13fc32d
 13fc316:	lea    eax,[ebx-0x65e624]
 13fc31c:	mov    eax,DWORD PTR [eax]
 13fc31e:	mov    DWORD PTR [esp],eax
 13fc321:	call   1ca6e8
 13fc326:	mov    BYTE PTR [ebx+0x654e3],0x1
 13fc32d:	test   esi,esi
 13fc32f:	je     13fc3a6
 13fc331:	lea    eax,[ebx+0x45874]
 13fc337:	mov    eax,DWORD PTR [eax]
 13fc339:	mov    ecx,DWORD PTR [esi]
 13fc33b:	movzx  edx,WORD PTR [ecx+0xaa]
 13fc342:	test   edx,edx
 13fc344:	je     13fc355
 13fc346:	mov    edi,DWORD PTR [ecx+0x4c]
 13fc349:	xor    esi,esi
 13fc34b:	cmp    DWORD PTR [edi+esi*8],eax
 13fc34e:	je     13fc370
 13fc350:	inc    esi
 13fc351:	cmp    esi,edx
 13fc353:	jb     13fc34b
 13fc355:	mov    DWORD PTR [esp+0x4],eax
 13fc359:	mov    esi,DWORD PTR [ebp+0xc]
 13fc35c:	mov    DWORD PTR [esp],esi
 13fc35f:	mov    DWORD PTR [esp+0x8],0x11
 13fc367:	call   1c1964
 13fc36c:	mov    ecx,eax
 13fc36e:	jmp    13fc37e
 13fc370:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 13fc374:	lea    ecx,[ecx+eax*8+0x13c]
 13fc37b:	mov    esi,DWORD PTR [ebp+0xc]
 13fc37e:	mov    eax,DWORD PTR [ecx+0x4]
 13fc381:	mov    DWORD PTR [esp+0x4],eax
 13fc385:	mov    DWORD PTR [esp],esi
 13fc388:	call   DWORD PTR [ecx]
 13fc38a:	test   eax,eax
 13fc38c:	je     13fc3a6
 13fc38e:	mov    DWORD PTR [esp],eax
 13fc391:	mov    DWORD PTR [esp+0x4],0x0
 13fc399:	call   8df3e5  ; CharacterControllerBattleGroundBase::PlayRageSkillAnimation
 13fc39e:	lea    esp,[ebp-0xc]
 13fc3a1:	pop    esi
 13fc3a2:	pop    edi
 13fc3a3:	pop    ebx
 13fc3a4:	pop    ebp
 13fc3a5:	ret
 13fc3a6:	call   1fbc48
 13fc3ab:	call   13f24e0