
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148ed8e:
 148ed8e:	push   ebp
 148ed8f:	mov    ebp,esp
 148ed91:	push   ebx
 148ed92:	and    esp,0xfffffff0
 148ed95:	sub    esp,0x20
 148ed98:	call   148ed9d
 148ed9d:	pop    ebx
 148ed9e:	add    ebx,0xa831a7
 148eda4:	mov    eax,DWORD PTR [ebp+0x8]
 148eda7:	mov    DWORD PTR [eax+0x90],0x3f800000
 148edb1:	mov    DWORD PTR [esp],eax
 148edb4:	mov    DWORD PTR [esp+0x4],0x0
 148edbc:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
 148edc1:	lea    esp,[ebp-0x4]
 148edc4:	pop    ebx
 148edc5:	pop    ebp
 148edc6:	ret