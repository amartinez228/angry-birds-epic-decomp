
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f60c8:
  6f60c8:	push   ebp
  6f60c9:	mov    ebp,esp
  6f60cb:	push   ebx
  6f60cc:	push   esi
  6f60cd:	and    esp,0xfffffff0
  6f60d0:	sub    esp,0x20
  6f60d3:	call   6f60d8
  6f60d8:	pop    ebx
  6f60d9:	add    ebx,0x181be6c
  6f60df:	mov    esi,DWORD PTR [ebp+0x8]
  6f60e2:	mov    DWORD PTR [esp],esi
  6f60e5:	call   6f5cb0  ; ABH.GameDatas.PigGameData::get_CharacterHealth
  6f60ea:	fstp   DWORD PTR [esp+0x1c]
  6f60ee:	movss  xmm0,DWORD PTR [esp+0x1c]
  6f60f4:	movss  DWORD PTR [esp+0x10],xmm0
  6f60fa:	mov    DWORD PTR [esp],esi
  6f60fd:	call   6f5106  ; ABH.GameDatas.PigGameData::get_OffHandItem
  6f6102:	xorps  xmm0,xmm0
  6f6105:	test   eax,eax
  6f6107:	je     6f6130
  6f6109:	mov    DWORD PTR [esp],esi
  6f610c:	call   6f5106  ; ABH.GameDatas.PigGameData::get_OffHandItem
  6f6111:	test   eax,eax
  6f6113:	je     6f614b
  6f6115:	mov    DWORD PTR [esp+0x4],eax
  6f6119:	mov    DWORD PTR [esp+0x8],0xffffffff
  6f6121:	call   6d3b8d  ; ABH.GameDatas.EquipmentGameData::GetItemMainStat
  6f6126:	fstp   DWORD PTR [esp+0x18]
  6f612a:	movss  xmm0,DWORD PTR [esp+0x18]
  6f6130:	movss  xmm1,DWORD PTR [esp+0x10]
  6f6136:	addss  xmm1,xmm0
  6f613a:	movss  DWORD PTR [esp+0x14],xmm1
  6f6140:	fld    DWORD PTR [esp+0x14]
  6f6144:	lea    esp,[ebp-0x8]
  6f6147:	pop    esi
  6f6148:	pop    ebx
  6f6149:	pop    ebp
  6f614a:	ret
  6f614b:	call   1fbc48
  6f6150:	call   6b106a