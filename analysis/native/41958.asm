
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057c988:
  57c988:	push   ebp
  57c989:	mov    ebp,esp
  57c98b:	push   ebx
  57c98c:	push   esi
  57c98d:	and    esp,0xfffffff0
  57c990:	sub    esp,0x30
  57c993:	call   57c998
  57c998:	pop    ebx
  57c999:	add    ebx,0x19955ac
  57c99f:	mov    eax,DWORD PTR [ebp+0x8]
  57c9a2:	mov    ecx,DWORD PTR [ebp+0xc]
  57c9a5:	mov    edx,DWORD PTR [ebp+0x10]
  57c9a8:	mov    DWORD PTR [esp+0x2c],0x0
  57c9b0:	lea    esi,[esp+0x2c]
  57c9b4:	mov    DWORD PTR [esp+0x14],esi
  57c9b8:	mov    DWORD PTR [esp+0x8],edx
  57c9bc:	mov    DWORD PTR [esp+0x4],ecx
  57c9c0:	mov    DWORD PTR [esp],eax
  57c9c3:	mov    DWORD PTR [esp+0x18],0x0
  57c9cb:	mov    DWORD PTR [esp+0x10],0x1
  57c9d3:	mov    DWORD PTR [esp+0xc],0x1
  57c9db:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  57c9e0:	lea    esp,[ebp-0x8]
  57c9e3:	pop    esi
  57c9e4:	pop    ebx
  57c9e5:	pop    ebp
  57c9e6:	ret