
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006e65e1:
  6e65e1:	push   ebp
  6e65e2:	mov    ebp,esp
  6e65e4:	push   ebx
  6e65e5:	push   edi
  6e65e6:	push   esi
  6e65e7:	and    esp,0xfffffff0
  6e65ea:	sub    esp,0x20
  6e65ed:	call   6e65f2
  6e65f2:	pop    ebx
  6e65f3:	add    ebx,0x182b952
  6e65f9:	mov    edi,DWORD PTR [ebp+0xc]
  6e65fc:	mov    esi,DWORD PTR [ebp+0x8]
  6e65ff:	mov    DWORD PTR [esp+0x8],edi
  6e6603:	mov    DWORD PTR [esp],esi
  6e6606:	mov    DWORD PTR [esp+0x4],0xa
  6e660e:	call   6e62de  ; ABH.GameDatas.InventoryGameData::HasNewItemBird
  6e6613:	test   al,al
  6e6615:	je     6e661b
  6e6617:	mov    al,0x1
  6e6619:	jmp    6e6649
  6e661b:	mov    DWORD PTR [esp+0x8],edi
  6e661f:	mov    DWORD PTR [esp],esi
  6e6622:	mov    DWORD PTR [esp+0x4],0x3
  6e662a:	call   6e62de  ; ABH.GameDatas.InventoryGameData::HasNewItemBird
  6e662f:	test   al,al
  6e6631:	mov    al,0x1
  6e6633:	jne    6e6649
  6e6635:	mov    DWORD PTR [esp+0x8],edi
  6e6639:	mov    DWORD PTR [esp],esi
  6e663c:	mov    DWORD PTR [esp+0x4],0x4
  6e6644:	call   6e62de  ; ABH.GameDatas.InventoryGameData::HasNewItemBird
  6e6649:	movzx  eax,al
  6e664c:	lea    esp,[ebp-0xc]
  6e664f:	pop    esi
  6e6650:	pop    edi
  6e6651:	pop    ebx
  6e6652:	pop    ebp
  6e6653:	ret