
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d43c1:
  6d43c1:	push   ebp
  6d43c2:	mov    ebp,esp
  6d43c4:	push   ebx
  6d43c5:	and    esp,0xfffffff0
  6d43c8:	sub    esp,0x20
  6d43cb:	call   6d43d0
  6d43d0:	pop    ebx
  6d43d1:	add    ebx,0x183db74
  6d43d7:	mov    eax,DWORD PTR [ebp+0x8]
  6d43da:	mov    ecx,DWORD PTR [ebp+0xc]
  6d43dd:	mov    DWORD PTR [esp+0x8],ecx
  6d43e1:	mov    DWORD PTR [esp+0x4],eax
  6d43e5:	call   6d3b8d  ; ABH.GameDatas.EquipmentGameData::GetItemMainStat
  6d43ea:	lea    esp,[ebp-0x4]
  6d43ed:	pop    ebx
  6d43ee:	pop    ebp
  6d43ef:	ret