
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00504604:
  504604:	push   ebp
  504605:	mov    ebp,esp
  504607:	push   ebx
  504608:	and    esp,0xfffffff0
  50460b:	sub    esp,0x10
  50460e:	call   504613
  504613:	pop    ebx
  504614:	add    ebx,0x1a0d931
  50461a:	mov    eax,DWORD PTR [ebp+0x10]
  50461d:	test   eax,eax
  50461f:	je     504634
  504621:	mov    eax,DWORD PTR [eax+0x14]
  504624:	test   eax,eax
  504626:	je     504634
  504628:	mov    ecx,DWORD PTR [ebp+0xc]
  50462b:	add    DWORD PTR [eax+0x30],ecx
  50462e:	lea    esp,[ebp-0x4]
  504631:	pop    ebx
  504632:	pop    ebp
  504633:	ret
  504634:	call   1fbc48
  504639:	call   540b98