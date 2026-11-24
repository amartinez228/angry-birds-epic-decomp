
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed8e76:
  ed8e76:	push   ebp
  ed8e77:	mov    ebp,esp
  ed8e79:	push   ebx
  ed8e7a:	push   edi
  ed8e7b:	push   esi
  ed8e7c:	and    esp,0xfffffff0
  ed8e7f:	sub    esp,0x20
  ed8e82:	call   ed8e87
  ed8e87:	pop    ebx
  ed8e88:	add    ebx,0x10390bd
  ed8e8e:	mov    ecx,DWORD PTR [ebp+0x14]
  ed8e91:	mov    edx,DWORD PTR [ebp+0x18]
  ed8e94:	mov    esi,DWORD PTR [ebp+0x8]
  ed8e97:	mov    edi,DWORD PTR [esi]
  ed8e99:	mov    eax,DWORD PTR [edi+0xe0]
  ed8e9f:	mov    DWORD PTR [esp+0x14],eax
  ed8ea3:	mov    DWORD PTR [esp+0xc],edx
  ed8ea7:	mov    DWORD PTR [esp+0x8],ecx
  ed8eab:	mov    eax,DWORD PTR [ebp+0x10]
  ed8eae:	mov    DWORD PTR [esp+0x4],eax
  ed8eb2:	mov    DWORD PTR [esp],esi
  ed8eb5:	mov    DWORD PTR [esp+0x10],0x0
  ed8ebd:	call   DWORD PTR [edi+0xdc]
  ed8ec3:	lea    esp,[ebp-0xc]
  ed8ec6:	pop    esi
  ed8ec7:	pop    edi
  ed8ec8:	pop    ebx
  ed8ec9:	pop    ebp
  ed8eca:	ret