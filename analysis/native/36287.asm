
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01491e1a:
 1491e1a:	push   ebp
 1491e1b:	mov    ebp,esp
 1491e1d:	push   ebx
 1491e1e:	and    esp,0xfffffff0
 1491e21:	sub    esp,0x20
 1491e24:	call   1491e29
 1491e29:	pop    ebx
 1491e2a:	add    ebx,0xa8011b
 1491e30:	mov    eax,DWORD PTR [ebp+0x8]
 1491e33:	mov    DWORD PTR [esp],eax
 1491e36:	mov    DWORD PTR [esp+0x4],0x0
 1491e3e:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
 1491e43:	lea    esp,[ebp-0x4]
 1491e46:	pop    ebx
 1491e47:	pop    ebp
 1491e48:	ret