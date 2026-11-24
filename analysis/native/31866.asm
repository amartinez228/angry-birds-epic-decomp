
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00f9a313:
  f9a313:	push   ebp
  f9a314:	mov    ebp,esp
  f9a316:	push   ebx
  f9a317:	and    esp,0xfffffff0
  f9a31a:	sub    esp,0x20
  f9a31d:	call   f9a322
  f9a322:	pop    ebx
  f9a323:	add    ebx,0xf77c22
  f9a329:	mov    eax,DWORD PTR [ebp+0x8]
  f9a32c:	mov    eax,DWORD PTR [eax+0x20]
  f9a32f:	test   eax,eax
  f9a331:	je     f9a350
  f9a333:	mov    ecx,DWORD PTR [ebp+0xc]
  f9a336:	mov    DWORD PTR [esp+0x4],ecx
  f9a33a:	mov    DWORD PTR [esp],eax
  f9a33d:	mov    DWORD PTR [esp+0x8],0x0
  f9a345:	call   ec3965  ; ABH.GameDatas.Battle.BattleGameData::OnControllerLevelUp
  f9a34a:	lea    esp,[ebp-0x4]
  f9a34d:	pop    ebx
  f9a34e:	pop    ebp
  f9a34f:	ret
  f9a350:	call   1fbc48
  f9a355:	call   f6e364