
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eb2518:
  eb2518:	push   ebp
  eb2519:	mov    ebp,esp
  eb251b:	push   ebx
  eb251c:	push   edi
  eb251d:	push   esi
  eb251e:	and    esp,0xfffffff0
  eb2521:	sub    esp,0x20
  eb2524:	call   eb2529
  eb2529:	pop    ebx
  eb252a:	add    ebx,0x105fa1b
  eb2530:	mov    edi,DWORD PTR [ebp+0x8]
  eb2533:	mov    eax,DWORD PTR [ebp+0xc]
  eb2536:	mov    DWORD PTR [edi+0x8],eax
  eb2539:	mov    DWORD PTR [esp+0x4],0x0
  eb2541:	mov    DWORD PTR [esp],0x0
  eb2548:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  eb254d:	mov    esi,eax
  eb254f:	mov    eax,DWORD PTR [edi+0x8]
  eb2552:	test   eax,eax
  eb2554:	je     eb260d
  eb255a:	mov    DWORD PTR [esp],eax
  eb255d:	mov    DWORD PTR [esp+0x4],0x0
  eb2565:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  eb256a:	test   eax,eax
  eb256c:	je     eb260d
  eb2572:	mov    DWORD PTR [esp],eax
  eb2575:	mov    DWORD PTR [esp+0x4],0x0
  eb257d:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  eb2582:	test   esi,esi
  eb2584:	je     eb260d
  eb258a:	lea    ecx,[edi+0xc]
  eb258d:	mov    DWORD PTR [esp+0x8],ecx
  eb2591:	mov    DWORD PTR [esp+0x4],eax
  eb2595:	mov    DWORD PTR [esp],esi
  eb2598:	mov    DWORD PTR [esp+0xc],0x0
  eb25a0:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  eb25a5:	mov    DWORD PTR [esp+0x4],0x0
  eb25ad:	mov    DWORD PTR [esp],0x0
  eb25b4:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  eb25b9:	mov    esi,eax
  eb25bb:	mov    eax,DWORD PTR [edi+0x8]
  eb25be:	test   eax,eax
  eb25c0:	je     eb260d
  eb25c2:	mov    DWORD PTR [esp],eax
  eb25c5:	mov    DWORD PTR [esp+0x4],0x0
  eb25cd:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  eb25d2:	test   eax,eax
  eb25d4:	je     eb260d
  eb25d6:	mov    DWORD PTR [esp],eax
  eb25d9:	mov    DWORD PTR [esp+0x4],0x0
  eb25e1:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  eb25e6:	test   esi,esi
  eb25e8:	je     eb260d
  eb25ea:	add    edi,0x10
  eb25ed:	mov    DWORD PTR [esp+0x8],edi
  eb25f1:	mov    DWORD PTR [esp+0x4],eax
  eb25f5:	mov    DWORD PTR [esp],esi
  eb25f8:	mov    DWORD PTR [esp+0xc],0x0
  eb2600:	call   11d7de4  ; VisualEffectsBalancing::TryGetBubbleSetting
  eb2605:	lea    esp,[ebp-0xc]
  eb2608:	pop    esi
  eb2609:	pop    edi
  eb260a:	pop    ebx
  eb260b:	pop    ebp
  eb260c:	ret
  eb260d:	call   1fbc48
  eb2612:	call   ebbb41