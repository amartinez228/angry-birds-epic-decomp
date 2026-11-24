
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ebd4cc:
  ebd4cc:	push   ebp
  ebd4cd:	mov    ebp,esp
  ebd4cf:	push   ebx
  ebd4d0:	push   edi
  ebd4d1:	push   esi
  ebd4d2:	and    esp,0xfffffff0
  ebd4d5:	sub    esp,0x40
  ebd4d8:	call   ebd4dd
  ebd4dd:	pop    ebx
  ebd4de:	add    ebx,0x1054a67
  ebd4e4:	mov    edi,DWORD PTR [ebp+0x1c]
  ebd4e7:	mov    esi,DWORD PTR [ebp+0x20]
  ebd4ea:	mov    edx,DWORD PTR [ebp+0x24]
  ebd4ed:	mov    ecx,DWORD PTR [ebp+0x28]
  ebd4f0:	mov    eax,DWORD PTR [ebp+0x2c]
  ebd4f3:	mov    DWORD PTR [esp+0x28],eax
  ebd4f7:	mov    DWORD PTR [esp+0x24],ecx
  ebd4fb:	mov    DWORD PTR [esp+0x20],edx
  ebd4ff:	mov    DWORD PTR [esp+0x1c],esi
  ebd503:	mov    DWORD PTR [esp+0x18],edi
  ebd507:	mov    eax,DWORD PTR [ebp+0x18]
  ebd50a:	mov    DWORD PTR [esp+0x14],eax
  ebd50e:	mov    eax,DWORD PTR [ebp+0x14]
  ebd511:	mov    DWORD PTR [esp+0x10],eax
  ebd515:	mov    eax,DWORD PTR [ebp+0x10]
  ebd518:	mov    DWORD PTR [esp+0x8],eax
  ebd51c:	mov    eax,DWORD PTR [ebp+0xc]
  ebd51f:	mov    DWORD PTR [esp+0x4],eax
  ebd523:	mov    eax,DWORD PTR [ebp+0x8]
  ebd526:	mov    DWORD PTR [esp],eax
  ebd529:	call   ebd536  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
  ebd52e:	lea    esp,[ebp-0xc]
  ebd531:	pop    esi
  ebd532:	pop    edi
  ebd533:	pop    ebx
  ebd534:	pop    ebp
  ebd535:	ret