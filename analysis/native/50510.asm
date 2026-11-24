
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008d70dd:
  8d70dd:	push   ebp
  8d70de:	mov    ebp,esp
  8d70e0:	push   ebx
  8d70e1:	and    esp,0xfffffff0
  8d70e4:	sub    esp,0x10
  8d70e7:	call   8d70ec
  8d70ec:	pop    ebx
  8d70ed:	add    ebx,0x163ae58
  8d70f3:	mov    eax,DWORD PTR [ebp+0x8]
  8d70f6:	mov    eax,DWORD PTR [eax+0x14]
  8d70f9:	test   eax,eax
  8d70fb:	je     8d7107
  8d70fd:	mov    BYTE PTR [eax+0x74],0x1
  8d7101:	lea    esp,[ebp-0x4]
  8d7104:	pop    ebx
  8d7105:	pop    ebp
  8d7106:	ret
  8d7107:	call   1fbc48
  8d710c:	call   8b3f00