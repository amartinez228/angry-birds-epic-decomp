
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fb704:
 13fb704:	push   ebp
 13fb705:	mov    ebp,esp
 13fb707:	push   ebx
 13fb708:	and    esp,0xfffffff0
 13fb70b:	sub    esp,0x20
 13fb70e:	call   13fb713
 13fb713:	pop    ebx
 13fb714:	add    ebx,0xb16831
 13fb71a:	mov    eax,DWORD PTR [ebp+0x8]
 13fb71d:	mov    DWORD PTR [esp],eax
 13fb720:	mov    DWORD PTR [esp+0x4],0x0
 13fb728:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
 13fb72d:	lea    esp,[ebp-0x4]
 13fb730:	pop    ebx
 13fb731:	pop    ebp
 13fb732:	ret