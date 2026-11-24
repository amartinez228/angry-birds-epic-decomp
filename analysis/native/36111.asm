
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed8058:
  ed8058:	push   ebp
  ed8059:	mov    ebp,esp
  ed805b:	push   ebx
  ed805c:	and    esp,0xfffffff0
  ed805f:	sub    esp,0x20
  ed8062:	call   ed8067
  ed8067:	pop    ebx
  ed8068:	add    ebx,0x1039edd
  ed806e:	mov    eax,DWORD PTR [ebp+0x8]
  ed8071:	mov    DWORD PTR [esp],eax
  ed8074:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
  ed8079:	lea    esp,[ebp-0x4]
  ed807c:	pop    ebx
  ed807d:	pop    ebp
  ed807e:	ret