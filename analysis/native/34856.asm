
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec6181:
  ec6181:	push   ebp
  ec6182:	mov    ebp,esp
  ec6184:	push   ebx
  ec6185:	push   esi
  ec6186:	and    esp,0xfffffff0
  ec6189:	sub    esp,0x10
  ec618c:	call   ec6191
  ec6191:	pop    ebx
  ec6192:	add    ebx,0x104bdb3
  ec6198:	mov    esi,DWORD PTR [ebp+0x8]
  ec619b:	mov    al,BYTE PTR [ebx+0x6270a]
  ec61a1:	test   al,al
  ec61a3:	jne    ec61bc
  ec61a5:	lea    eax,[ebx-0x66ebf0]
  ec61ab:	mov    eax,DWORD PTR [eax]
  ec61ad:	mov    DWORD PTR [esp],eax
  ec61b0:	call   1ca6e8
  ec61b5:	mov    BYTE PTR [ebx+0x6270a],0x1
  ec61bc:	lea    eax,[ebx+0x4a2c0]
  ec61c2:	mov    eax,DWORD PTR [eax]
  ec61c4:	mov    DWORD PTR [esp+0x4],eax
  ec61c8:	mov    DWORD PTR [esp],esi
  ec61cb:	call   1604da8  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::RaiseCombatantDefeated | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::RaiseCombatantDefeated | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::RaiseCombatantDefeated | +2 other aliases
  ec61d0:	lea    esp,[ebp-0x8]
  ec61d3:	pop    esi
  ec61d4:	pop    ebx
  ec61d5:	pop    ebp
  ec61d6:	ret