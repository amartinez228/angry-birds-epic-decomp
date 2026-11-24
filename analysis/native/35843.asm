
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f6e4d:
  6f6e4d:	push   ebp
  6f6e4e:	mov    ebp,esp
  6f6e50:	push   ebx
  6f6e51:	push   esi
  6f6e52:	and    esp,0xfffffff0
  6f6e55:	sub    esp,0x10
  6f6e58:	call   6f6e5d
  6f6e5d:	pop    ebx
  6f6e5e:	add    ebx,0x181b0e7
  6f6e64:	mov    esi,DWORD PTR [ebp+0x8]
  6f6e67:	mov    al,BYTE PTR [ebx+0x5f81a]
  6f6e6d:	test   al,al
  6f6e6f:	jne    6f6e88
  6f6e71:	lea    eax,[ebx-0x65fa80]
  6f6e77:	mov    eax,DWORD PTR [eax]
  6f6e79:	mov    DWORD PTR [esp],eax
  6f6e7c:	call   1ca6e8
  6f6e81:	mov    BYTE PTR [ebx+0x5f81a],0x1
  6f6e88:	mov    DWORD PTR [esi+0x64],0x42700000
  6f6e8f:	lea    eax,[ebx+0x4ac3c]
  6f6e95:	mov    eax,DWORD PTR [eax]
  6f6e97:	mov    DWORD PTR [esp+0x4],eax
  6f6e9b:	mov    DWORD PTR [esp],esi
  6f6e9e:	call   1606f69  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::.ctor | +3 other aliases
  6f6ea3:	lea    esp,[ebp-0x8]
  6f6ea6:	pop    esi
  6f6ea7:	pop    ebx
  6f6ea8:	pop    ebp
  6f6ea9:	ret