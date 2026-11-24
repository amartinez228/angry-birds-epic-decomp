
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c5437:
  6c5437:	push   ebp
  6c5438:	mov    ebp,esp
  6c543a:	push   ebx
  6c543b:	push   esi
  6c543c:	and    esp,0xfffffff0
  6c543f:	sub    esp,0x20
  6c5442:	call   6c5447
  6c5447:	pop    ebx
  6c5448:	add    ebx,0x184cafd
  6c544e:	mov    esi,DWORD PTR [ebp+0x8]
  6c5451:	mov    DWORD PTR [esp],esi
  6c5454:	call   6c510a  ; ABH.GameDatas.BirdGameData::get_CharacterHealth
  6c5459:	fstp   DWORD PTR [esp+0x1c]
  6c545d:	movss  xmm0,DWORD PTR [esp+0x1c]
  6c5463:	movss  DWORD PTR [esp+0x10],xmm0
  6c5469:	mov    DWORD PTR [esp],esi
  6c546c:	call   6c4813  ; ABH.GameDatas.BirdGameData::get_OffHandItem
  6c5471:	xorps  xmm0,xmm0
  6c5474:	test   eax,eax
  6c5476:	je     6c549f
  6c5478:	mov    DWORD PTR [esp],esi
  6c547b:	call   6c4813  ; ABH.GameDatas.BirdGameData::get_OffHandItem
  6c5480:	test   eax,eax
  6c5482:	je     6c54ba
  6c5484:	mov    DWORD PTR [esp+0x4],eax
  6c5488:	mov    DWORD PTR [esp+0x8],0xffffffff
  6c5490:	call   6d3b8d  ; ABH.GameDatas.EquipmentGameData::GetItemMainStat
  6c5495:	fstp   DWORD PTR [esp+0x18]
  6c5499:	movss  xmm0,DWORD PTR [esp+0x18]
  6c549f:	movss  xmm1,DWORD PTR [esp+0x10]
  6c54a5:	addss  xmm1,xmm0
  6c54a9:	movss  DWORD PTR [esp+0x14],xmm1
  6c54af:	fld    DWORD PTR [esp+0x14]
  6c54b3:	lea    esp,[ebp-0x8]
  6c54b6:	pop    esi
  6c54b7:	pop    ebx
  6c54b8:	pop    ebp
  6c54b9:	ret
  6c54ba:	call   1fbc48
  6c54bf:	call   6b106a