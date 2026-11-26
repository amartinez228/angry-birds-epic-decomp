
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0051a7ff:
  51a7ff:	push   ebp
  51a800:	mov    ebp,esp
  51a802:	push   ebx
  51a803:	push   esi
  51a804:	and    esp,0xfffffff0
  51a807:	sub    esp,0x20
  51a80a:	call   51a80f
  51a80f:	pop    ebx
  51a810:	add    ebx,0x19f7735
  51a816:	mov    esi,DWORD PTR [ebp+0x14]
  51a819:	mov    al,BYTE PTR [ebx+0x5d55c]
  51a81f:	test   al,al
  51a821:	jne    51a83a
  51a823:	lea    eax,[ebx-0x66f308]
  51a829:	mov    eax,DWORD PTR [eax]
  51a82b:	mov    DWORD PTR [esp],eax
  51a82e:	call   1ca6e8
  51a833:	mov    BYTE PTR [ebx+0x5d55c],0x1
  51a83a:	test   esi,esi
  51a83c:	je     51a8d1
  51a842:	mov    DWORD PTR [esp],esi
  51a845:	mov    DWORD PTR [esp+0x4],0x0
  51a84d:	call   179af85  ; ABH.Shared.Models.Generic.BattleEffect::get_Values
  51a852:	test   eax,eax
  51a854:	je     51a8d1
  51a856:	mov    esi,DWORD PTR [ebp+0x10]
  51a859:	lea    ecx,[ebx+0x4a30c]
  51a85f:	mov    ecx,DWORD PTR [ecx]
  51a861:	mov    DWORD PTR [esp+0x8],ecx
  51a865:	mov    DWORD PTR [esp],eax
  51a868:	mov    DWORD PTR [esp+0x4],0x0
  51a870:	call   4d54a2  ; System.Collections.Generic.List`1<float>::get_Item
  51a875:	fstp   DWORD PTR [esp+0x1c]
  51a879:	test   esi,esi
  51a87b:	je     51a8d1
  51a87d:	movss  xmm0,DWORD PTR [ebx-0x64fc2c]
  51a885:	movss  DWORD PTR [esp+0x14],xmm0
  51a88b:	subss  xmm0,DWORD PTR [esp+0x1c]
  51a891:	mulss  xmm0,DWORD PTR [ebp+0xc]
  51a896:	movss  DWORD PTR [esp+0x10],xmm0
  51a89c:	mov    DWORD PTR [esp],esi
  51a89f:	mov    DWORD PTR [esp+0x8],0x0
  51a8a7:	mov    DWORD PTR [esp+0x4],0x0
  51a8af:	call   ec08b6  ; ABH.GameDatas.Battle.BattleEffectGameData::EvaluateEffect
  51a8b4:	movss  xmm0,DWORD PTR [esp+0x10]
  51a8ba:	divss  xmm0,DWORD PTR [esp+0x14]
  51a8c0:	movss  DWORD PTR [esp+0x18],xmm0
  51a8c6:	fld    DWORD PTR [esp+0x18]
  51a8ca:	lea    esp,[ebp-0x8]
  51a8cd:	pop    esi
  51a8ce:	pop    ebx
  51a8cf:	pop    ebp
  51a8d0:	ret
  51a8d1:	call   1fbc48
  51a8d6:	call   540b98