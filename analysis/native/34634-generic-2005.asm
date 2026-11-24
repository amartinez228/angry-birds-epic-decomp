
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0160478b:
 160478b:	push   ebp
 160478c:	mov    ebp,esp
 160478e:	push   ebx
 160478f:	and    esp,0xfffffff0
 1604792:	sub    esp,0x20
 1604795:	call   160479a
 160479a:	pop    ebx
 160479b:	add    ebx,0x90d7aa
 16047a1:	mov    eax,DWORD PTR [ebp+0x8]
 16047a4:	test   eax,eax
 16047a6:	je     16047d9
 16047a8:	mov    ecx,DWORD PTR [ebp+0xc]
 16047ab:	mov    ecx,DWORD PTR [ecx+0xc]
 16047ae:	mov    ecx,DWORD PTR [ecx+0x54]
 16047b1:	mov    ecx,DWORD PTR [ecx+0x34]
 16047b4:	mov    DWORD PTR [esp+0x4],ecx
 16047b8:	mov    DWORD PTR [esp],eax
 16047bb:	call   DWORD PTR [ecx]
 16047bd:	fstp   DWORD PTR [esp+0x10]
 16047c1:	movss  xmm0,DWORD PTR [esp+0x10]
 16047c7:	xorps  xmm1,xmm1
 16047ca:	ucomiss xmm0,xmm1
 16047cd:	seta   al
 16047d0:	movzx  eax,al
 16047d3:	lea    esp,[ebp-0x4]
 16047d6:	pop    ebx
 16047d7:	pop    ebp
 16047d8:	ret
 16047d9:	call   1fbc48
 16047de:	call   1608243