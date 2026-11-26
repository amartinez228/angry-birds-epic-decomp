
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148def3:
 148def3:	push   ebp
 148def4:	mov    ebp,esp
 148def6:	push   ebx
 148def7:	and    esp,0xfffffff0
 148defa:	sub    esp,0x20
 148defd:	call   148df02
 148df02:	pop    ebx
 148df03:	add    ebx,0xa84042
 148df09:	mov    eax,DWORD PTR [ebp+0x8]
 148df0c:	mov    DWORD PTR [eax+0x90],0x3f800000
 148df16:	mov    DWORD PTR [esp],eax
 148df19:	mov    DWORD PTR [esp+0x4],0x0
 148df21:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
 148df26:	lea    esp,[ebp-0x4]
 148df29:	pop    ebx
 148df2a:	pop    ebp
 148df2b:	ret