
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00f9cb0e:
  f9cb0e:	push   ebp
  f9cb0f:	mov    ebp,esp
  f9cb11:	push   ebx
  f9cb12:	push   esi
  f9cb13:	and    esp,0xfffffff0
  f9cb16:	sub    esp,0x10
  f9cb19:	call   f9cb1e
  f9cb1e:	pop    ebx
  f9cb1f:	add    ebx,0xf75426
  f9cb25:	mov    al,BYTE PTR [ebx+0x62dfe]
  f9cb2b:	test   al,al
  f9cb2d:	jne    f9cb46
  f9cb2f:	lea    eax,[ebx-0x66faac]
  f9cb35:	mov    eax,DWORD PTR [eax]
  f9cb37:	mov    DWORD PTR [esp],eax
  f9cb3a:	call   1ca6e8
  f9cb3f:	mov    BYTE PTR [ebx+0x62dfe],0x1
  f9cb46:	lea    eax,[ebx+0x467ac]
  f9cb4c:	mov    eax,DWORD PTR [eax]
  f9cb4e:	mov    DWORD PTR [esp],eax
  f9cb51:	call   20bfb2
  f9cb56:	mov    esi,eax
  f9cb58:	mov    DWORD PTR [esp],esi
  f9cb5b:	mov    DWORD PTR [esp+0x4],0x0
  f9cb63:	call   124632e  ; System.Object::.ctor
  f9cb68:	test   esi,esi
  f9cb6a:	je     f9cb7b
  f9cb6c:	mov    eax,DWORD PTR [ebp+0x8]
  f9cb6f:	mov    DWORD PTR [esi+0x20],eax
  f9cb72:	mov    eax,esi
  f9cb74:	lea    esp,[ebp-0x8]
  f9cb77:	pop    esi
  f9cb78:	pop    ebx
  f9cb79:	pop    ebp
  f9cb7a:	ret
  f9cb7b:	call   1fbc48
  f9cb80:	call   f6e364