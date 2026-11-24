
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec5b02:
  ec5b02:	push   ebp
  ec5b03:	mov    ebp,esp
  ec5b05:	push   ebx
  ec5b06:	push   edi
  ec5b07:	push   esi
  ec5b08:	and    esp,0xfffffff0
  ec5b0b:	sub    esp,0x20
  ec5b0e:	call   ec5b13
  ec5b13:	pop    ebx
  ec5b14:	add    ebx,0x104c431
  ec5b1a:	mov    edi,DWORD PTR [ebp+0x10]
  ec5b1d:	mov    edx,DWORD PTR [ebp+0xc]
  ec5b20:	mov    esi,DWORD PTR [ebp+0x8]
  ec5b23:	mov    al,BYTE PTR [ebx+0x62704]
  ec5b29:	test   al,al
  ec5b2b:	jne    ec5b4b
  ec5b2d:	lea    eax,[ebx-0x66ebf4]
  ec5b33:	mov    eax,DWORD PTR [eax]
  ec5b35:	mov    DWORD PTR [esp],eax
  ec5b38:	mov    esi,edx
  ec5b3a:	call   1ca6e8
  ec5b3f:	mov    edx,esi
  ec5b41:	mov    esi,DWORD PTR [ebp+0x8]
  ec5b44:	mov    BYTE PTR [ebx+0x62704],0x1
  ec5b4b:	lea    eax,[ebx+0x4a294]
  ec5b51:	mov    eax,DWORD PTR [eax]
  ec5b53:	mov    DWORD PTR [esp+0xc],eax
  ec5b57:	mov    DWORD PTR [esp+0x8],edi
  ec5b5b:	mov    DWORD PTR [esp+0x4],edx
  ec5b5f:	mov    DWORD PTR [esp],esi
  ec5b62:	call   16052d8  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::RaiseLevelChanged | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::RaiseLevelChanged | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::RaiseLevelChanged | +2 other aliases
  ec5b67:	lea    eax,[ebx+0x4a298]
  ec5b6d:	mov    eax,DWORD PTR [eax]
  ec5b6f:	mov    DWORD PTR [esp+0x4],eax
  ec5b73:	mov    DWORD PTR [esp],esi
  ec5b76:	call   1604738  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::RaiseBuffsChanged | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::RaiseBuffsChanged | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::RaiseBuffsChanged | +2 other aliases
  ec5b7b:	lea    esp,[ebp-0xc]
  ec5b7e:	pop    esi
  ec5b7f:	pop    edi
  ec5b80:	pop    ebx
  ec5b81:	pop    ebp
  ec5b82:	ret