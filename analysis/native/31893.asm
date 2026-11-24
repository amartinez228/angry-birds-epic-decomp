
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00f9cc5a:
  f9cc5a:	push   ebp
  f9cc5b:	mov    ebp,esp
  f9cc5d:	push   ebx
  f9cc5e:	push   esi
  f9cc5f:	and    esp,0xfffffff0
  f9cc62:	sub    esp,0x10
  f9cc65:	call   f9cc6a
  f9cc6a:	pop    ebx
  f9cc6b:	add    ebx,0xf752da
  f9cc71:	mov    al,BYTE PTR [ebx+0x62e00]
  f9cc77:	test   al,al
  f9cc79:	jne    f9cc92
  f9cc7b:	lea    eax,[ebx-0x66faa0]
  f9cc81:	mov    eax,DWORD PTR [eax]
  f9cc83:	mov    DWORD PTR [esp],eax
  f9cc86:	call   1ca6e8
  f9cc8b:	mov    BYTE PTR [ebx+0x62e00],0x1
  f9cc92:	lea    eax,[ebx+0x467b4]
  f9cc98:	mov    eax,DWORD PTR [eax]
  f9cc9a:	mov    DWORD PTR [esp],eax
  f9cc9d:	call   20bfb2
  f9cca2:	mov    esi,eax
  f9cca4:	mov    DWORD PTR [esp],esi
  f9cca7:	mov    DWORD PTR [esp+0x4],0x0
  f9ccaf:	call   124632e  ; System.Object::.ctor
  f9ccb4:	test   esi,esi
  f9ccb6:	je     f9cccd
  f9ccb8:	mov    eax,DWORD PTR [ebp+0xc]
  f9ccbb:	mov    ecx,DWORD PTR [ebp+0x8]
  f9ccbe:	mov    DWORD PTR [esi+0x8],eax
  f9ccc1:	mov    DWORD PTR [esi+0x24],ecx
  f9ccc4:	mov    eax,esi
  f9ccc6:	lea    esp,[ebp-0x8]
  f9ccc9:	pop    esi
  f9ccca:	pop    ebx
  f9cccb:	pop    ebp
  f9cccc:	ret
  f9cccd:	call   1fbc48
  f9ccd2:	call   f6e364