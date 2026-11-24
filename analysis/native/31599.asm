
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008b8bbe:
  8b8bbe:	push   ebp
  8b8bbf:	mov    ebp,esp
  8b8bc1:	push   ebx
  8b8bc2:	push   esi
  8b8bc3:	and    esp,0xfffffff0
  8b8bc6:	sub    esp,0x10
  8b8bc9:	call   8b8bce
  8b8bce:	pop    ebx
  8b8bcf:	add    ebx,0x1659376
  8b8bd5:	mov    al,BYTE PTR [ebx+0x600ce]
  8b8bdb:	test   al,al
  8b8bdd:	jne    8b8bf6
  8b8bdf:	lea    eax,[ebx-0x66dba8]
  8b8be5:	mov    eax,DWORD PTR [eax]
  8b8be7:	mov    DWORD PTR [esp],eax
  8b8bea:	call   1ca6e8
  8b8bef:	mov    BYTE PTR [ebx+0x600ce],0x1
  8b8bf6:	lea    eax,[ebx+0x46b50]
  8b8bfc:	mov    eax,DWORD PTR [eax]
  8b8bfe:	mov    DWORD PTR [esp],eax
  8b8c01:	call   20bfb2
  8b8c06:	mov    esi,eax
  8b8c08:	mov    DWORD PTR [esp],esi
  8b8c0b:	mov    DWORD PTR [esp+0x4],0x0
  8b8c13:	call   124632e  ; System.Object::.ctor
  8b8c18:	test   esi,esi
  8b8c1a:	je     8b8c2b
  8b8c1c:	mov    eax,DWORD PTR [ebp+0x8]
  8b8c1f:	mov    DWORD PTR [esi+0x8],eax
  8b8c22:	mov    eax,esi
  8b8c24:	lea    esp,[ebp-0x8]
  8b8c27:	pop    esi
  8b8c28:	pop    ebx
  8b8c29:	pop    ebp
  8b8c2a:	ret
  8b8c2b:	call   1fbc48
  8b8c30:	call   8b3f00