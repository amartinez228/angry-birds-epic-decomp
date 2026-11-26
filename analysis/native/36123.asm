
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed8ecb:
  ed8ecb:	push   ebp
  ed8ecc:	mov    ebp,esp
  ed8ece:	push   ebx
  ed8ecf:	and    esp,0xfffffff0
  ed8ed2:	sub    esp,0x20
  ed8ed5:	call   ed8eda
  ed8eda:	pop    ebx
  ed8edb:	add    ebx,0x103906a
  ed8ee1:	mov    eax,DWORD PTR [ebp+0x8]
  ed8ee4:	mov    DWORD PTR [esp],eax
  ed8ee7:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
  ed8eec:	lea    esp,[ebp-0x4]
  ed8eef:	pop    ebx
  ed8ef0:	pop    ebp
  ed8ef1:	ret