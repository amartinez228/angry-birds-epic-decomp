
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01604a05:
 1604a05:	push   ebp
 1604a06:	mov    ebp,esp
 1604a08:	and    esp,0xfffffffc
 1604a0b:	mov    eax,DWORD PTR [ebp+0x8]
 1604a0e:	movss  xmm0,DWORD PTR [eax+0x84]
 1604a16:	addss  xmm0,DWORD PTR [ebp+0xc]
 1604a1b:	movss  DWORD PTR [eax+0x84],xmm0
 1604a23:	mov    esp,ebp
 1604a25:	pop    ebp
 1604a26:	ret