
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec4427:
  ec4427:	push   ebp
  ec4428:	mov    ebp,esp
  ec442a:	push   ebx
  ec442b:	push   edi
  ec442c:	push   esi
  ec442d:	and    esp,0xfffffff0
  ec4430:	sub    esp,0x10
  ec4433:	call   ec4438
  ec4438:	pop    ebx
  ec4439:	add    ebx,0x104db0c
  ec443f:	mov    edi,DWORD PTR [ebp+0xc]
  ec4442:	mov    esi,DWORD PTR [ebp+0x8]
  ec4445:	mov    al,BYTE PTR [ebx+0x62700]
  ec444b:	test   al,al
  ec444d:	jne    ec4466
  ec444f:	lea    eax,[ebx-0x66ec24]
  ec4455:	mov    eax,DWORD PTR [eax]
  ec4457:	mov    DWORD PTR [esp],eax
  ec445a:	call   1ca6e8
  ec445f:	mov    BYTE PTR [ebx+0x62700],0x1
  ec4466:	lea    eax,[ebx+0x4a248]
  ec446c:	mov    eax,DWORD PTR [eax]
  ec446e:	mov    DWORD PTR [esp+0x8],eax
  ec4472:	mov    DWORD PTR [esp+0x4],edi
  ec4476:	mov    DWORD PTR [esp],esi
  ec4479:	call   1602e1b  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::.ctor | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::.ctor | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::.ctor | +2 other aliases
  ec447e:	lea    eax,[ebx+0x4a24c]
  ec4484:	mov    eax,DWORD PTR [eax]
  ec4486:	mov    DWORD PTR [esp+0x8],eax
  ec448a:	mov    DWORD PTR [esp],esi
  ec448d:	mov    DWORD PTR [esp+0x4],0x1
  ec4495:	call   160560d  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::set_KnockOutOnDefeat | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::set_KnockOutOnDefeat | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::set_KnockOutOnDefeat | +2 other aliases
  ec449a:	lea    esp,[ebp-0xc]
  ec449d:	pop    esi
  ec449e:	pop    edi
  ec449f:	pop    ebx
  ec44a0:	pop    ebp
  ec44a1:	ret