
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01604738:
 1604738:	push   ebp
 1604739:	mov    ebp,esp
 160473b:	push   ebx
 160473c:	and    esp,0xfffffff0
 160473f:	sub    esp,0x20
 1604742:	call   1604747
 1604747:	pop    ebx
 1604748:	add    ebx,0x90d7fd
 160474e:	mov    eax,DWORD PTR [ebp+0x8]
 1604751:	mov    BYTE PTR [eax+0x50],0x1
 1604755:	mov    BYTE PTR [eax+0x44],0x1
 1604759:	mov    eax,DWORD PTR [eax+0xc]
 160475c:	test   eax,eax
 160475e:	je     1604770
 1604760:	mov    DWORD PTR [esp],eax
 1604763:	mov    DWORD PTR [esp+0x4],0x0
 160476b:	call   1717700  ; System.Action::Invoke
 1604770:	lea    esp,[ebp-0x4]
 1604773:	pop    ebx
 1604774:	pop    ebp
 1604775:	ret