
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00e987ca:
  e987ca:	push   ebp
  e987cb:	mov    ebp,esp
  e987cd:	push   ebx
  e987ce:	and    esp,0xfffffff0
  e987d1:	sub    esp,0x20
  e987d4:	call   e987d9
  e987d9:	pop    ebx
  e987da:	add    ebx,0x107976b
  e987e0:	mov    eax,DWORD PTR [ebp+0x8]
  e987e3:	mov    DWORD PTR [eax+0x14],0x3f800000
  e987ea:	mov    DWORD PTR [eax+0x18],0x3f800000
  e987f1:	mov    DWORD PTR [esp],eax
  e987f4:	mov    DWORD PTR [esp+0x4],0x0
  e987fc:	call   139d87d  ; UnityEngine.MonoBehaviour::.ctor
  e98801:	lea    esp,[ebp-0x4]
  e98804:	pop    ebx
  e98805:	pop    ebp
  e98806:	ret