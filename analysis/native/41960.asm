
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050035b:
  50035b:	push   ebp
  50035c:	mov    ebp,esp
  50035e:	push   ebx
  50035f:	push   edi
  500360:	push   esi
  500361:	and    esp,0xfffffff0
  500364:	sub    esp,0x30
  500367:	call   50036c
  50036c:	pop    ebx
  50036d:	add    ebx,0x1a11bd8
  500373:	mov    eax,DWORD PTR [ebp+0x8]
  500376:	mov    ecx,DWORD PTR [ebp+0xc]
  500379:	mov    edx,DWORD PTR [ebp+0x10]
  50037c:	mov    esi,DWORD PTR [ebp+0x14]
  50037f:	mov    edi,DWORD PTR [ebp+0x18]
  500382:	mov    DWORD PTR [esp+0x14],edi
  500386:	mov    DWORD PTR [esp+0xc],esi
  50038a:	mov    DWORD PTR [esp+0x8],edx
  50038e:	mov    DWORD PTR [esp+0x4],ecx
  500392:	mov    DWORD PTR [esp],eax
  500395:	mov    DWORD PTR [esp+0x18],0x0
  50039d:	mov    DWORD PTR [esp+0x10],0x0
  5003a5:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  5003aa:	lea    esp,[ebp-0xc]
  5003ad:	pop    esi
  5003ae:	pop    edi
  5003af:	pop    ebx
  5003b0:	pop    ebp
  5003b1:	ret