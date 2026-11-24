
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

016054ea:
 16054ea:	push   ebp
 16054eb:	mov    ebp,esp
 16054ed:	push   ebx
 16054ee:	push   edi
 16054ef:	push   esi
 16054f0:	and    esp,0xfffffff0
 16054f3:	sub    esp,0x10
 16054f6:	call   16054fb
 16054fb:	pop    ebx
 16054fc:	add    ebx,0x90ca49
 1605502:	mov    esi,DWORD PTR [ebp+0x8]
 1605505:	test   esi,esi
 1605507:	je     1605551
 1605509:	mov    edi,DWORD PTR [ebp+0xc]
 160550c:	mov    eax,DWORD PTR [edi+0xc]
 160550f:	mov    eax,DWORD PTR [eax+0x54]
 1605512:	mov    eax,DWORD PTR [eax+0x5c]
 1605515:	mov    DWORD PTR [esp+0x4],eax
 1605519:	mov    DWORD PTR [esp],esi
 160551c:	call   DWORD PTR [eax]
 160551e:	test   al,al
 1605520:	je     1605538
 1605522:	mov    eax,DWORD PTR [edi+0xc]
 1605525:	mov    eax,DWORD PTR [eax+0x54]
 1605528:	mov    eax,DWORD PTR [eax+0x60]
 160552b:	mov    DWORD PTR [esp+0x4],eax
 160552f:	mov    DWORD PTR [esp],esi
 1605532:	call   DWORD PTR [eax]
 1605534:	test   al,al
 1605536:	je     160553c
 1605538:	xor    eax,eax
 160553a:	jmp    1605546
 160553c:	cmp    BYTE PTR [esi+0xac],0x0
 1605543:	setne  al
 1605546:	movzx  eax,al
 1605549:	lea    esp,[ebp-0xc]
 160554c:	pop    esi
 160554d:	pop    edi
 160554e:	pop    ebx
 160554f:	pop    ebp
 1605550:	ret
 1605551:	call   1fbc48
 1605556:	call   1608243