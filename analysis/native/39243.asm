
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008dbd22:
  8dbd22:	push   ebp
  8dbd23:	mov    ebp,esp
  8dbd25:	and    esp,0xfffffffc
  8dbd28:	sub    esp,0x8
  8dbd2b:	mov    eax,DWORD PTR [ebp+0x8]
  8dbd2e:	xorps  xmm0,xmm0
  8dbd31:	cmp    BYTE PTR [eax+0x14],0x0
  8dbd35:	je     8dbd3c
  8dbd37:	movss  xmm0,DWORD PTR [eax+0x6c]
  8dbd3c:	movss  DWORD PTR [esp+0x4],xmm0
  8dbd42:	fld    DWORD PTR [esp+0x4]
  8dbd46:	mov    esp,ebp
  8dbd48:	pop    ebp
  8dbd49:	ret