
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00f9cbb4:
  f9cbb4:	push   ebp
  f9cbb5:	mov    ebp,esp
  f9cbb7:	push   ebx
  f9cbb8:	push   esi
  f9cbb9:	and    esp,0xfffffff0
  f9cbbc:	sub    esp,0x10
  f9cbbf:	call   f9cbc4
  f9cbc4:	pop    ebx
  f9cbc5:	add    ebx,0xf75380
  f9cbcb:	mov    al,BYTE PTR [ebx+0x62dff]
  f9cbd1:	test   al,al
  f9cbd3:	jne    f9cbec
  f9cbd5:	lea    eax,[ebx-0x66fa9c]
  f9cbdb:	mov    eax,DWORD PTR [eax]
  f9cbdd:	mov    DWORD PTR [esp],eax
  f9cbe0:	call   1ca6e8
  f9cbe5:	mov    BYTE PTR [ebx+0x62dff],0x1
  f9cbec:	lea    eax,[ebx+0x467b0]
  f9cbf2:	mov    eax,DWORD PTR [eax]
  f9cbf4:	mov    DWORD PTR [esp],eax
  f9cbf7:	call   20bfb2
  f9cbfc:	mov    esi,eax
  f9cbfe:	mov    DWORD PTR [esp],esi
  f9cc01:	mov    DWORD PTR [esp+0x4],0x0
  f9cc09:	call   124632e  ; System.Object::.ctor
  f9cc0e:	test   esi,esi
  f9cc10:	je     f9cc21
  f9cc12:	mov    eax,DWORD PTR [ebp+0x8]
  f9cc15:	mov    DWORD PTR [esi+0xc],eax
  f9cc18:	mov    eax,esi
  f9cc1a:	lea    esp,[ebp-0x8]
  f9cc1d:	pop    esi
  f9cc1e:	pop    ebx
  f9cc1f:	pop    ebp
  f9cc20:	ret
  f9cc21:	call   1fbc48
  f9cc26:	call   f6e364