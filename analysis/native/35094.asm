
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f53f8:
  6f53f8:	push   ebp
  6f53f9:	mov    ebp,esp
  6f53fb:	push   ebx
  6f53fc:	push   esi
  6f53fd:	and    esp,0xfffffff0
  6f5400:	sub    esp,0x20
  6f5403:	call   6f5408
  6f5408:	pop    ebx
  6f5409:	add    ebx,0x181cb3c
  6f540f:	mov    esi,DWORD PTR [ebp+0x8]
  6f5412:	mov    DWORD PTR [esp],esi
  6f5415:	call   6f5200  ; ABH.GameDatas.PigGameData::get_CharacterAttack
  6f541a:	fstp   DWORD PTR [esp+0x1c]
  6f541e:	movss  xmm0,DWORD PTR [esp+0x1c]
  6f5424:	movss  DWORD PTR [esp+0x10],xmm0
  6f542a:	mov    DWORD PTR [esp],esi
  6f542d:	call   6f500c  ; ABH.GameDatas.PigGameData::get_MainHandItem
  6f5432:	xorps  xmm0,xmm0
  6f5435:	test   eax,eax
  6f5437:	je     6f5460
  6f5439:	mov    DWORD PTR [esp],esi
  6f543c:	call   6f500c  ; ABH.GameDatas.PigGameData::get_MainHandItem
  6f5441:	test   eax,eax
  6f5443:	je     6f547b
  6f5445:	mov    DWORD PTR [esp+0x4],eax
  6f5449:	mov    DWORD PTR [esp+0x8],0xffffffff
  6f5451:	call   6d3b8d  ; ABH.GameDatas.EquipmentGameData::GetItemMainStat
  6f5456:	fstp   DWORD PTR [esp+0x18]
  6f545a:	movss  xmm0,DWORD PTR [esp+0x18]
  6f5460:	movss  xmm1,DWORD PTR [esp+0x10]
  6f5466:	addss  xmm1,xmm0
  6f546a:	movss  DWORD PTR [esp+0x14],xmm1
  6f5470:	fld    DWORD PTR [esp+0x14]
  6f5474:	lea    esp,[ebp-0x8]
  6f5477:	pop    esi
  6f5478:	pop    ebx
  6f5479:	pop    ebp
  6f547a:	ret
  6f547b:	call   1fbc48
  6f5480:	call   6b106a