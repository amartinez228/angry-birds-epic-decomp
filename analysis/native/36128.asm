
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed9b42:
  ed9b42:	push   ebp
  ed9b43:	mov    ebp,esp
  ed9b45:	push   ebx
  ed9b46:	push   edi
  ed9b47:	push   esi
  ed9b48:	and    esp,0xfffffff0
  ed9b4b:	sub    esp,0x20
  ed9b4e:	call   ed9b53
  ed9b53:	pop    ebx
  ed9b54:	add    ebx,0x10383f1
  ed9b5a:	mov    ecx,DWORD PTR [ebp+0x14]
  ed9b5d:	mov    edx,DWORD PTR [ebp+0x18]
  ed9b60:	mov    esi,DWORD PTR [ebp+0x8]
  ed9b63:	mov    edi,DWORD PTR [esi]
  ed9b65:	mov    eax,DWORD PTR [edi+0xe0]
  ed9b6b:	mov    DWORD PTR [esp+0x14],eax
  ed9b6f:	mov    DWORD PTR [esp+0xc],edx
  ed9b73:	mov    DWORD PTR [esp+0x8],ecx
  ed9b77:	mov    eax,DWORD PTR [ebp+0x10]
  ed9b7a:	mov    DWORD PTR [esp+0x4],eax
  ed9b7e:	mov    DWORD PTR [esp],esi
  ed9b81:	mov    DWORD PTR [esp+0x10],0x0
  ed9b89:	call   DWORD PTR [edi+0xdc]
  ed9b8f:	lea    esp,[ebp-0xc]
  ed9b92:	pop    esi
  ed9b93:	pop    edi
  ed9b94:	pop    ebx
  ed9b95:	pop    ebp
  ed9b96:	ret