
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ee8d57:
  ee8d57:	push   ebp
  ee8d58:	mov    ebp,esp
  ee8d5a:	push   ebx
  ee8d5b:	and    esp,0xfffffff0
  ee8d5e:	sub    esp,0x20
  ee8d61:	call   ee8d66
  ee8d66:	pop    ebx
  ee8d67:	add    ebx,0x10291de
  ee8d6d:	mov    eax,DWORD PTR [ebp+0x8]
  ee8d70:	movaps xmm0,XMMWORD PTR [ebx-0x5de434]
  ee8d77:	movups XMMWORD PTR [eax+0x90],xmm0
  ee8d7e:	movups XMMWORD PTR [eax+0xa0],xmm0
  ee8d85:	mov    DWORD PTR [esp],eax
  ee8d88:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
  ee8d8d:	lea    esp,[ebp-0x4]
  ee8d90:	pop    ebx
  ee8d91:	pop    ebp
  ee8d92:	ret