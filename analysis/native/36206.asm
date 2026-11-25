
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eea1c9:
  eea1c9:	push   ebp
  eea1ca:	mov    ebp,esp
  eea1cc:	push   ebx
  eea1cd:	and    esp,0xfffffff0
  eea1d0:	sub    esp,0x20
  eea1d3:	call   eea1d8
  eea1d8:	pop    ebx
  eea1d9:	add    ebx,0x1027d6c
  eea1df:	mov    eax,DWORD PTR [ebp+0x8]
  eea1e2:	mov    DWORD PTR [eax+0x90],0x42c80000
  eea1ec:	mov    DWORD PTR [eax+0x94],0x3f800000
  eea1f6:	mov    DWORD PTR [esp],eax
  eea1f9:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
  eea1fe:	lea    esp,[ebp-0x4]
  eea201:	pop    ebx
  eea202:	pop    ebp
  eea203:	ret