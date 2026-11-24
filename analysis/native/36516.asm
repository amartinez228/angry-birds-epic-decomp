
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eb23c3:
  eb23c3:	push   ebp
  eb23c4:	mov    ebp,esp
  eb23c6:	push   ebx
  eb23c7:	push   edi
  eb23c8:	push   esi
  eb23c9:	and    esp,0xfffffff0
  eb23cc:	sub    esp,0x20
  eb23cf:	call   eb23d4
  eb23d4:	pop    ebx
  eb23d5:	add    ebx,0x105fb70
  eb23db:	mov    esi,DWORD PTR [ebp+0xc]
  eb23de:	mov    edi,DWORD PTR [ebp+0x8]
  eb23e1:	mov    al,BYTE PTR [ebx+0x626ad]
  eb23e7:	test   al,al
  eb23e9:	jne    eb2402
  eb23eb:	lea    eax,[ebx-0x670478]
  eb23f1:	mov    eax,DWORD PTR [eax]
  eb23f3:	mov    DWORD PTR [esp],eax
  eb23f6:	call   1ca6e8
  eb23fb:	mov    BYTE PTR [ebx+0x626ad],0x1
  eb2402:	mov    DWORD PTR [esp+0x4],esi
  eb2406:	mov    DWORD PTR [esp],edi
  eb2409:	call   eb2518  ; ABH.GameDatas.Battle.SkillBattleDataBase::Init
  eb240e:	mov    eax,DWORD PTR [edi+0x8]
  eb2411:	test   eax,eax
  eb2413:	je     eb250e
  eb2419:	mov    DWORD PTR [esp],eax
  eb241c:	mov    DWORD PTR [esp+0x4],0x0
  eb2424:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb2429:	test   eax,eax
  eb242b:	je     eb250e
  eb2431:	lea    ecx,[ebx+0x56b04]  ; literal "use_offhandanim"
  eb2437:	mov    ecx,DWORD PTR [ecx]
  eb2439:	lea    edx,[ebx+0x4a014]
  eb243f:	mov    DWORD PTR [esp+0x14],edx
  eb2443:	mov    edx,DWORD PTR [edx]
  eb2445:	mov    DWORD PTR [esp+0x8],edx
  eb2449:	mov    DWORD PTR [esp+0x4],ecx
  eb244d:	mov    DWORD PTR [esp],eax
  eb2450:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eb2455:	mov    BYTE PTR [edi+0x84],al
  eb245b:	lea    eax,[ebx+0x4a018]
  eb2461:	mov    edi,DWORD PTR [eax]
  eb2463:	lea    eax,[ebx+0x45870]
  eb2469:	mov    eax,DWORD PTR [eax]
  eb246b:	mov    DWORD PTR [esp],eax
  eb246e:	call   20bfb2
  eb2473:	mov    esi,eax
  eb2475:	mov    DWORD PTR [esp+0x18],edi
  eb2479:	mov    edi,DWORD PTR [ebp+0x8]
  eb247c:	lea    eax,[ebx+0x4a01c]
  eb2482:	mov    eax,DWORD PTR [eax]
  eb2484:	mov    DWORD PTR [esp+0xc],eax
  eb2488:	mov    eax,DWORD PTR [esp+0x18]
  eb248c:	mov    DWORD PTR [esp+0x8],eax
  eb2490:	mov    DWORD PTR [esp+0x4],edi
  eb2494:	mov    DWORD PTR [esp],esi
  eb2497:	call   17d7670  ; shared address: System.Func`2<ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`2<ABH.GameDatas.IInventoryItemGameData, float>::.ctor | System.Func`2<ABH.Shared.BalancingData.ExperienceScalingBalancingData, float>::.ctor | +2 other aliases
  eb249c:	mov    DWORD PTR [edi+0x4c],esi
  eb249f:	mov    DWORD PTR [esp+0x4],0x0
  eb24a7:	mov    DWORD PTR [esp],0x0
  eb24ae:	call   10659dc  ; DIContainerLogic::GetPacingBalancing
  eb24b3:	test   eax,eax
  eb24b5:	je     eb250e
  eb24b7:	mov    DWORD PTR [esp],eax
  eb24ba:	mov    DWORD PTR [esp+0x4],0x0
  eb24c2:	call   78194e  ; PacingBalancing::get_FallBackTimeWaitForSkillImpact
  eb24c7:	fstp   DWORD PTR [edi+0x48]
  eb24ca:	mov    eax,DWORD PTR [edi+0x8]
  eb24cd:	test   eax,eax
  eb24cf:	je     eb250e
  eb24d1:	mov    DWORD PTR [esp],eax
  eb24d4:	mov    DWORD PTR [esp+0x4],0x0
  eb24dc:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb24e1:	test   eax,eax
  eb24e3:	je     eb250e
  eb24e5:	lea    ecx,[ebx+0x56b08]  ; literal "nodamage"
  eb24eb:	mov    ecx,DWORD PTR [ecx]
  eb24ed:	mov    edx,DWORD PTR [esp+0x14]
  eb24f1:	mov    edx,DWORD PTR [edx]
  eb24f3:	mov    DWORD PTR [esp+0x8],edx
  eb24f7:	mov    DWORD PTR [esp+0x4],ecx
  eb24fb:	mov    DWORD PTR [esp],eax
  eb24fe:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eb2503:	mov    BYTE PTR [edi+0x3e],al
  eb2506:	lea    esp,[ebp-0xc]
  eb2509:	pop    esi
  eb250a:	pop    edi
  eb250b:	pop    ebx
  eb250c:	pop    ebp
  eb250d:	ret
  eb250e:	call   1fbc48
  eb2513:	call   ebbb41