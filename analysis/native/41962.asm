
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057cd3f:
  57cd3f:	push   ebp
  57cd40:	mov    ebp,esp
  57cd42:	push   ebx
  57cd43:	push   esi
  57cd44:	and    esp,0xfffffff0
  57cd47:	sub    esp,0x20
  57cd4a:	call   57cd4f
  57cd4f:	pop    ebx
  57cd50:	add    ebx,0x19951f5
  57cd56:	mov    eax,DWORD PTR [ebp+0x8]
  57cd59:	mov    ecx,DWORD PTR [ebp+0xc]
  57cd5c:	mov    edx,DWORD PTR [ebp+0x10]
  57cd5f:	mov    esi,DWORD PTR [ebp+0x14]
  57cd62:	mov    DWORD PTR [esp+0x14],esi
  57cd66:	mov    DWORD PTR [esp+0x8],edx
  57cd6a:	mov    DWORD PTR [esp+0x4],ecx
  57cd6e:	mov    DWORD PTR [esp],eax
  57cd71:	mov    DWORD PTR [esp+0x18],0x0
  57cd79:	mov    DWORD PTR [esp+0x10],0x0
  57cd81:	mov    DWORD PTR [esp+0xc],0x1
  57cd89:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  57cd8e:	lea    esp,[ebp-0x8]
  57cd91:	pop    esi
  57cd92:	pop    ebx
  57cd93:	pop    ebp
  57cd94:	ret