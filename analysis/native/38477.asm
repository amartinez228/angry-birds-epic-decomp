
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014b899d:
 14b899d:	push   ebp
 14b899e:	mov    ebp,esp
 14b89a0:	push   ebx
 14b89a1:	and    esp,0xfffffff0
 14b89a4:	sub    esp,0x20
 14b89a7:	call   14b89ac
 14b89ac:	pop    ebx
 14b89ad:	add    ebx,0xa59598
 14b89b3:	mov    eax,DWORD PTR [ebp+0x8]
 14b89b6:	mov    DWORD PTR [esp],eax
 14b89b9:	mov    DWORD PTR [esp+0x4],0x0
 14b89c1:	call   eb22e1  ; ABH.GameDatas.Battle.SkillBattleDataBase::.ctor
 14b89c6:	lea    esp,[ebp-0x4]
 14b89c9:	pop    ebx
 14b89ca:	pop    ebp
 14b89cb:	ret