
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

005003b2:
  5003b2:	push   ebp
  5003b3:	mov    ebp,esp
  5003b5:	push   ebx
  5003b6:	push   esi
  5003b7:	and    esp,0xfffffff0
  5003ba:	sub    esp,0x30
  5003bd:	call   5003c2
  5003c2:	pop    ebx
  5003c3:	add    ebx,0x1a11b82
  5003c9:	mov    eax,DWORD PTR [ebp+0x8]
  5003cc:	mov    ecx,DWORD PTR [ebp+0xc]
  5003cf:	mov    edx,DWORD PTR [ebp+0x10]
  5003d2:	mov    DWORD PTR [esp+0x2c],0x0
  5003da:	lea    esi,[esp+0x2c]
  5003de:	mov    DWORD PTR [esp+0x14],esi
  5003e2:	mov    DWORD PTR [esp+0x8],edx
  5003e6:	mov    DWORD PTR [esp+0x4],ecx
  5003ea:	mov    DWORD PTR [esp],eax
  5003ed:	mov    DWORD PTR [esp+0x18],0x0
  5003f5:	mov    DWORD PTR [esp+0x10],0x0
  5003fd:	mov    DWORD PTR [esp+0xc],0x1
  500405:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  50040a:	lea    esp,[ebp-0x8]
  50040d:	pop    esi
  50040e:	pop    ebx
  50040f:	pop    ebp
  500410:	ret