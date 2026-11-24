
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

016037d7:
 16037d7:	push   ebp
 16037d8:	mov    ebp,esp
 16037da:	push   ebx
 16037db:	push   edi
 16037dc:	push   esi
 16037dd:	and    esp,0xfffffff0
 16037e0:	sub    esp,0x20
 16037e3:	call   16037e8
 16037e8:	pop    ebx
 16037e9:	add    ebx,0x90e75c
 16037ef:	mov    esi,DWORD PTR [ebp+0x8]
 16037f2:	mov    al,BYTE PTR [ebx+0x66b90]
 16037f8:	test   al,al
 16037fa:	jne    1603813
 16037fc:	lea    eax,[ebx-0x66fdec]
 1603802:	mov    eax,DWORD PTR [eax]
 1603804:	mov    DWORD PTR [esp],eax
 1603807:	call   1ca6e8
 160380c:	mov    BYTE PTR [ebx+0x66b90],0x1
 1603813:	mov    esi,DWORD PTR [esi+0x8]
 1603816:	test   esi,esi
 1603818:	je     160387f
 160381a:	lea    eax,[ebx+0x45884]
 1603820:	mov    eax,DWORD PTR [eax]
 1603822:	mov    ecx,DWORD PTR [esi]
 1603824:	mov    DWORD PTR [esp+0x18],ecx
 1603828:	movzx  edx,WORD PTR [ecx+0xaa]
 160382f:	test   edx,edx
 1603831:	je     1603846
 1603833:	mov    ecx,DWORD PTR [esp+0x18]
 1603837:	mov    edi,DWORD PTR [ecx+0x4c]
 160383a:	xor    ecx,ecx
 160383c:	cmp    DWORD PTR [edi+ecx*8],eax
 160383f:	je     160385c
 1603841:	inc    ecx
 1603842:	cmp    ecx,edx
 1603844:	jb     160383c
 1603846:	mov    DWORD PTR [esp+0x4],eax
 160384a:	mov    DWORD PTR [esp],esi
 160384d:	mov    DWORD PTR [esp+0x8],0x1
 1603855:	call   1c1964
 160385a:	jmp    160386b
 160385c:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 1603860:	mov    ecx,DWORD PTR [esp+0x18]
 1603864:	lea    eax,[ecx+eax*8+0xbc]
 160386b:	mov    ecx,DWORD PTR [eax+0x4]
 160386e:	mov    DWORD PTR [esp+0x4],ecx
 1603872:	mov    DWORD PTR [esp],esi
 1603875:	call   DWORD PTR [eax]
 1603877:	lea    esp,[ebp-0xc]
 160387a:	pop    esi
 160387b:	pop    edi
 160387c:	pop    ebx
 160387d:	pop    ebp
 160387e:	ret
 160387f:	call   1fbc48
 1603884:	call   1608243