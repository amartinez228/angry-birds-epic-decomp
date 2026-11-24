
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01604e0b:
 1604e0b:	push   ebp
 1604e0c:	mov    ebp,esp
 1604e0e:	push   ebx
 1604e0f:	push   esi
 1604e10:	and    esp,0xfffffff0
 1604e13:	sub    esp,0x10
 1604e16:	call   1604e1b
 1604e1b:	pop    ebx
 1604e1c:	add    ebx,0x90d129
 1604e22:	mov    esi,DWORD PTR [ebp+0x8]
 1604e25:	test   esi,esi
 1604e27:	je     1604e67
 1604e29:	mov    eax,DWORD PTR [ebp+0xc]
 1604e2c:	mov    eax,DWORD PTR [eax+0xc]
 1604e2f:	mov    eax,DWORD PTR [eax+0x54]
 1604e32:	mov    eax,DWORD PTR [eax+0x40]
 1604e35:	mov    DWORD PTR [esp+0x8],eax
 1604e39:	mov    DWORD PTR [esp],esi
 1604e3c:	mov    DWORD PTR [esp+0x4],0x0
 1604e44:	call   DWORD PTR [eax]
 1604e46:	mov    eax,DWORD PTR [esi+0xb8]
 1604e4c:	test   eax,eax
 1604e4e:	je     1604e60
 1604e50:	mov    DWORD PTR [esp],eax
 1604e53:	mov    DWORD PTR [esp+0x4],0x0
 1604e5b:	call   1717700  ; System.Action::Invoke
 1604e60:	lea    esp,[ebp-0x8]
 1604e63:	pop    esi
 1604e64:	pop    ebx
 1604e65:	pop    ebp
 1604e66:	ret
 1604e67:	call   1fbc48
 1604e6c:	call   1608243