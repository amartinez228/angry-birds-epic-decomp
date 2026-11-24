
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0054edd8:
  54edd8:	push   ebp
  54edd9:	mov    ebp,esp
  54eddb:	push   ebx
  54eddc:	push   edi
  54eddd:	push   esi
  54edde:	and    esp,0xfffffff0
  54ede1:	sub    esp,0x30
  54ede4:	call   54ede9
  54ede9:	pop    ebx
  54edea:	add    ebx,0x19c315b
  54edf0:	mov    eax,DWORD PTR [ebp+0x8]
  54edf3:	mov    ecx,DWORD PTR [ebp+0xc]
  54edf6:	mov    edx,DWORD PTR [ebp+0x10]
  54edf9:	mov    esi,DWORD PTR [ebp+0x14]
  54edfc:	mov    edi,DWORD PTR [ebp+0x18]
  54edff:	mov    DWORD PTR [esp+0x14],edi
  54ee03:	mov    DWORD PTR [esp+0xc],esi
  54ee07:	mov    DWORD PTR [esp+0x8],edx
  54ee0b:	mov    DWORD PTR [esp+0x4],ecx
  54ee0f:	mov    DWORD PTR [esp],eax
  54ee12:	mov    DWORD PTR [esp+0x18],0x1
  54ee1a:	mov    DWORD PTR [esp+0x10],0x0
  54ee22:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  54ee27:	lea    esp,[ebp-0xc]
  54ee2a:	pop    esi
  54ee2b:	pop    edi
  54ee2c:	pop    ebx
  54ee2d:	pop    ebp
  54ee2e:	ret