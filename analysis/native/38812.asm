
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006bef00:
  6bef00:	push   ebp
  6bef01:	mov    ebp,esp
  6bef03:	push   ebx
  6bef04:	and    esp,0xfffffff0
  6bef07:	sub    esp,0x20
  6bef0a:	call   6bef0f
  6bef0f:	pop    ebx
  6bef10:	add    ebx,0x1853035
  6bef16:	mov    eax,DWORD PTR [ebp+0x8]
  6bef19:	mov    DWORD PTR [esp],eax
  6bef1c:	mov    DWORD PTR [esp+0x4],0x0
  6bef24:	call   eb22e1  ; ABH.GameDatas.Battle.SkillBattleDataBase::.ctor
  6bef29:	lea    esp,[ebp-0x4]
  6bef2c:	pop    ebx
  6bef2d:	pop    ebp
  6bef2e:	ret