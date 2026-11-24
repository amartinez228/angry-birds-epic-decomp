
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008e733c:
  8e733c:	push   ebp
  8e733d:	mov    ebp,esp
  8e733f:	push   ebx
  8e7340:	push   edi
  8e7341:	push   esi
  8e7342:	and    esp,0xfffffff0
  8e7345:	sub    esp,0x10
  8e7348:	call   8e734d
  8e734d:	pop    ebx
  8e734e:	add    ebx,0x162abf7
  8e7354:	mov    esi,DWORD PTR [ebp+0xc]
  8e7357:	mov    al,BYTE PTR [ebx+0x601c6]
  8e735d:	test   al,al
  8e735f:	jne    8e7378
  8e7361:	lea    eax,[ebx-0x658578]
  8e7367:	mov    eax,DWORD PTR [eax]
  8e7369:	mov    DWORD PTR [esp],eax
  8e736c:	call   1ca6e8
  8e7371:	mov    BYTE PTR [ebx+0x601c6],0x1
  8e7378:	test   esi,esi
  8e737a:	je     8e73e0
  8e737c:	lea    eax,[ebx+0x45874]
  8e7382:	mov    eax,DWORD PTR [eax]
  8e7384:	mov    ecx,DWORD PTR [esi]
  8e7386:	movzx  edx,WORD PTR [ecx+0xaa]
  8e738d:	test   edx,edx
  8e738f:	je     8e73a0
  8e7391:	mov    edi,DWORD PTR [ecx+0x4c]
  8e7394:	xor    esi,esi
  8e7396:	cmp    DWORD PTR [edi+esi*8],eax
  8e7399:	je     8e73bb
  8e739b:	inc    esi
  8e739c:	cmp    esi,edx
  8e739e:	jb     8e7396
  8e73a0:	mov    DWORD PTR [esp+0x4],eax
  8e73a4:	mov    esi,DWORD PTR [ebp+0xc]
  8e73a7:	mov    DWORD PTR [esp],esi
  8e73aa:	mov    DWORD PTR [esp+0x8],0x55
  8e73b2:	call   1c1964
  8e73b7:	mov    ecx,eax
  8e73b9:	jmp    8e73c9
  8e73bb:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  8e73bf:	lea    ecx,[ecx+eax*8+0x35c]
  8e73c6:	mov    esi,DWORD PTR [ebp+0xc]
  8e73c9:	mov    eax,DWORD PTR [ecx+0x4]
  8e73cc:	mov    DWORD PTR [esp+0x4],eax
  8e73d0:	mov    DWORD PTR [esp],esi
  8e73d3:	call   DWORD PTR [ecx]
  8e73d5:	movzx  eax,al
  8e73d8:	lea    esp,[ebp-0xc]
  8e73db:	pop    esi
  8e73dc:	pop    edi
  8e73dd:	pop    ebx
  8e73de:	pop    ebp
  8e73df:	ret
  8e73e0:	call   1fbc48
  8e73e5:	call   8b3f00