
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01603539:
 1603539:	push   ebp
 160353a:	mov    ebp,esp
 160353c:	push   ebx
 160353d:	push   edi
 160353e:	push   esi
 160353f:	and    esp,0xfffffff0
 1603542:	sub    esp,0x10
 1603545:	call   160354a
 160354a:	pop    ebx
 160354b:	add    ebx,0x90e9fa
 1603551:	mov    esi,DWORD PTR [ebp+0x8]
 1603554:	test   esi,esi
 1603556:	je     160358a
 1603558:	mov    edi,DWORD PTR [ebp+0xc]
 160355b:	mov    eax,DWORD PTR [edi+0xc]
 160355e:	mov    eax,DWORD PTR [eax+0x54]
 1603561:	mov    eax,DWORD PTR [eax]
 1603563:	mov    DWORD PTR [esp+0x4],eax
 1603567:	mov    DWORD PTR [esp],esi
 160356a:	call   DWORD PTR [eax]
 160356c:	mov    eax,DWORD PTR [edi+0xc]
 160356f:	mov    eax,DWORD PTR [eax+0x54]
 1603572:	mov    eax,DWORD PTR [eax+0x4]
 1603575:	mov    DWORD PTR [esp+0x8],eax
 1603579:	fstp   DWORD PTR [esp+0x4]
 160357d:	mov    DWORD PTR [esp],esi
 1603580:	call   DWORD PTR [eax]
 1603582:	lea    esp,[ebp-0xc]
 1603585:	pop    esi
 1603586:	pop    edi
 1603587:	pop    ebx
 1603588:	pop    ebp
 1603589:	ret
 160358a:	call   1fbc48
 160358f:	call   1608243