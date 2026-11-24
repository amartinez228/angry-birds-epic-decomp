
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c4b3d:
  6c4b3d:	push   ebp
  6c4b3e:	mov    ebp,esp
  6c4b40:	push   ebx
  6c4b41:	push   esi
  6c4b42:	and    esp,0xfffffff0
  6c4b45:	sub    esp,0x20
  6c4b48:	call   6c4b4d
  6c4b4d:	pop    ebx
  6c4b4e:	add    ebx,0x184d3f7
  6c4b54:	mov    esi,DWORD PTR [ebp+0x8]
  6c4b57:	mov    DWORD PTR [esp],esi
  6c4b5a:	call   6c490d  ; ABH.GameDatas.BirdGameData::get_CharacterAttack
  6c4b5f:	fstp   DWORD PTR [esp+0x1c]
  6c4b63:	movss  xmm0,DWORD PTR [esp+0x1c]
  6c4b69:	movss  DWORD PTR [esp+0x10],xmm0
  6c4b6f:	mov    DWORD PTR [esp],esi
  6c4b72:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  6c4b77:	xorps  xmm0,xmm0
  6c4b7a:	test   eax,eax
  6c4b7c:	je     6c4ba5
  6c4b7e:	mov    DWORD PTR [esp],esi
  6c4b81:	call   6c4719  ; ABH.GameDatas.BirdGameData::get_MainHandItem
  6c4b86:	test   eax,eax
  6c4b88:	je     6c4bc0
  6c4b8a:	mov    DWORD PTR [esp+0x4],eax
  6c4b8e:	mov    DWORD PTR [esp+0x8],0xffffffff
  6c4b96:	call   6d3b8d  ; ABH.GameDatas.EquipmentGameData::GetItemMainStat
  6c4b9b:	fstp   DWORD PTR [esp+0x18]
  6c4b9f:	movss  xmm0,DWORD PTR [esp+0x18]
  6c4ba5:	movss  xmm1,DWORD PTR [esp+0x10]
  6c4bab:	addss  xmm1,xmm0
  6c4baf:	movss  DWORD PTR [esp+0x14],xmm1
  6c4bb5:	fld    DWORD PTR [esp+0x14]
  6c4bb9:	lea    esp,[ebp-0x8]
  6c4bbc:	pop    esi
  6c4bbd:	pop    ebx
  6c4bbe:	pop    ebp
  6c4bbf:	ret
  6c4bc0:	call   1fbc48
  6c4bc5:	call   6b106a