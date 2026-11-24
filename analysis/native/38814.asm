
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006bf088:
  6bf088:	push   ebp
  6bf089:	mov    ebp,esp
  6bf08b:	push   ebx
  6bf08c:	and    esp,0xfffffff0
  6bf08f:	sub    esp,0x20
  6bf092:	call   6bf097
  6bf097:	pop    ebx
  6bf098:	add    ebx,0x1852ead
  6bf09e:	mov    eax,DWORD PTR [ebp+0x8]
  6bf0a1:	mov    ecx,DWORD PTR [ebp+0xc]
  6bf0a4:	mov    DWORD PTR [esp+0x4],ecx
  6bf0a8:	mov    DWORD PTR [esp],eax
  6bf0ab:	mov    DWORD PTR [esp+0x8],0x0
  6bf0b3:	call   ec8e95  ; ABH.GameDatas.Battle.SkillBattleDataBase::BoneAnimationUserTrigger
  6bf0b8:	lea    esp,[ebp-0x4]
  6bf0bb:	pop    ebx
  6bf0bc:	pop    ebp
  6bf0bd:	ret