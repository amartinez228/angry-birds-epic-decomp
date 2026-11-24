
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0056a6ff:
  56a6ff:	push   ebp
  56a700:	mov    ebp,esp
  56a702:	push   ebx
  56a703:	push   esi
  56a704:	and    esp,0xfffffff0
  56a707:	sub    esp,0x20
  56a70a:	call   56a70f
  56a70f:	pop    ebx
  56a710:	add    ebx,0x19a7835
  56a716:	mov    eax,DWORD PTR [ebp+0x8]
  56a719:	mov    ecx,DWORD PTR [ebp+0xc]
  56a71c:	mov    edx,DWORD PTR [ebp+0x10]
  56a71f:	movzx  esi,BYTE PTR [ebp+0x14]
  56a723:	mov    DWORD PTR [esp+0x10],esi
  56a727:	mov    DWORD PTR [esp+0xc],edx
  56a72b:	mov    DWORD PTR [esp+0x8],ecx
  56a72f:	mov    DWORD PTR [esp],eax
  56a732:	mov    DWORD PTR [esp+0x4],0x0
  56a73a:	call   57d9d0  ; ABH.Services.Logic.LootOperations::GetItemsFromLoot
  56a73f:	lea    esp,[ebp-0x8]
  56a742:	pop    esi
  56a743:	pop    ebx
  56a744:	pop    ebp
  56a745:	ret