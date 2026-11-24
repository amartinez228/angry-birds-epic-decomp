
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01603d3f:
 1603d3f:	push   ebp
 1603d40:	mov    ebp,esp
 1603d42:	push   ebx
 1603d43:	push   edi
 1603d44:	push   esi
 1603d45:	and    esp,0xfffffff0
 1603d48:	sub    esp,0x30
 1603d4b:	call   1603d50
 1603d50:	pop    ebx
 1603d51:	add    ebx,0x90e1f4
 1603d57:	mov    esi,DWORD PTR [ebp+0x8]
 1603d5a:	test   esi,esi
 1603d5c:	je     1603df0
 1603d62:	mov    edi,DWORD PTR [ebp+0xc]
 1603d65:	mov    eax,DWORD PTR [edi+0xc]
 1603d68:	mov    eax,DWORD PTR [eax+0x54]
 1603d6b:	mov    eax,DWORD PTR [eax+0x14]
 1603d6e:	mov    DWORD PTR [esp+0x4],eax
 1603d72:	mov    DWORD PTR [esp],esi
 1603d75:	call   DWORD PTR [eax]
 1603d77:	fstp   DWORD PTR [esp+0x28]
 1603d7b:	xorps  xmm0,xmm0
 1603d7e:	ucomiss xmm0,DWORD PTR [esp+0x28]
 1603d83:	jbe    1603d8f
 1603d85:	movss  xmm0,DWORD PTR [ebx-0x64fc2c]
 1603d8d:	jmp    1603dde
 1603d8f:	movss  xmm0,DWORD PTR [esi+0x60]
 1603d94:	movss  DWORD PTR [esp+0x1c],xmm0
 1603d9a:	mov    eax,DWORD PTR [edi+0xc]
 1603d9d:	mov    eax,DWORD PTR [eax+0x54]
 1603da0:	mov    eax,DWORD PTR [eax]
 1603da2:	mov    DWORD PTR [esp+0x4],eax
 1603da6:	mov    DWORD PTR [esp],esi
 1603da9:	call   DWORD PTR [eax]
 1603dab:	fstp   DWORD PTR [esp+0x8]
 1603daf:	movss  xmm0,DWORD PTR [esp+0x1c]
 1603db5:	movss  DWORD PTR [esp+0x4],xmm0
 1603dbb:	mov    DWORD PTR [esp+0xc],0x0
 1603dc3:	mov    DWORD PTR [esp],0x0
 1603dca:	call   124e8f9  ; System.Math::Min
 1603dcf:	fstp   DWORD PTR [esp+0x24]
 1603dd3:	movss  xmm0,DWORD PTR [esp+0x24]
 1603dd9:	movss  DWORD PTR [esi+0x60],xmm0
 1603dde:	movss  DWORD PTR [esp+0x20],xmm0
 1603de4:	fld    DWORD PTR [esp+0x20]
 1603de8:	lea    esp,[ebp-0xc]
 1603deb:	pop    esi
 1603dec:	pop    edi
 1603ded:	pop    ebx
 1603dee:	pop    ebp
 1603def:	ret
 1603df0:	call   1fbc48
 1603df5:	call   1608243