
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d57f0:
  6d57f0:	push   ebp
  6d57f1:	mov    ebp,esp
  6d57f3:	push   ebx
  6d57f4:	and    esp,0xfffffff0
  6d57f7:	sub    esp,0x20
  6d57fa:	call   6d57ff
  6d57ff:	pop    ebx
  6d5800:	add    ebx,0x183c745
  6d5806:	mov    eax,DWORD PTR [ebp+0x8]
  6d5809:	mov    DWORD PTR [esp+0x4],eax
  6d580d:	call   6d5818  ; ABH.GameDatas.EquipmentGameData::GetProjectileAssetId
  6d5812:	lea    esp,[ebp-0x4]
  6d5815:	pop    ebx
  6d5816:	pop    ebp
  6d5817:	ret