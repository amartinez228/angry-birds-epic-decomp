
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008c2461:
  8c2461:	push   ebp
  8c2462:	mov    ebp,esp
  8c2464:	push   ebx
  8c2465:	push   edi
  8c2466:	push   esi
  8c2467:	and    esp,0xfffffff0
  8c246a:	sub    esp,0x30
  8c246d:	call   8c2472
  8c2472:	pop    ebx
  8c2473:	add    ebx,0x164fad2
  8c2479:	mov    edi,DWORD PTR [ebp+0x8]
  8c247c:	mov    al,BYTE PTR [ebx+0x60176]
  8c2482:	test   al,al
  8c2484:	jne    8c249d
  8c2486:	lea    eax,[ebx-0x66d9e0]
  8c248c:	mov    eax,DWORD PTR [eax]
  8c248e:	mov    DWORD PTR [esp],eax
  8c2491:	call   1ca6e8
  8c2496:	mov    BYTE PTR [ebx+0x60176],0x1
  8c249d:	mov    DWORD PTR [esp+0x4],0x0
  8c24a5:	mov    DWORD PTR [esp],0x0
  8c24ac:	call   109314e  ; DIContainerLogic::GetBattleService
  8c24b1:	mov    esi,eax
  8c24b3:	mov    eax,DWORD PTR [edi+0x14]
  8c24b6:	test   eax,eax
  8c24b8:	je     8c2880
  8c24be:	mov    DWORD PTR [esp],eax
  8c24c1:	mov    DWORD PTR [esp+0x4],0x0
  8c24c9:	call   9f18af  ; BattleMgrBase::get_Model
  8c24ce:	test   esi,esi
  8c24d0:	je     8c2880
  8c24d6:	mov    ecx,DWORD PTR [edi+0x18]
  8c24d9:	mov    DWORD PTR [esp+0x8],ecx
  8c24dd:	mov    DWORD PTR [esp+0x4],eax
  8c24e1:	mov    DWORD PTR [esp],esi
  8c24e4:	mov    DWORD PTR [esp+0xc],0x0
  8c24ec:	call   50a671  ; ABH.Services.Logic.BattleService::RemoveCombatantFromBattle
  8c24f1:	mov    DWORD PTR [esp],edi
  8c24f4:	call   8d9561  ; CharacterControllerBattleGroundBase::RemoveCharacterFromChargeBubbles
  8c24f9:	mov    DWORD PTR [esp],edi
  8c24fc:	call   8d9bb4  ; CharacterControllerBattleGroundBase::RemoveTauntsFromOpponents
  8c2501:	mov    BYTE PTR [edi+0x8c],0x0
  8c2508:	mov    esi,DWORD PTR [edi+0x18]
  8c250b:	test   esi,esi
  8c250d:	je     8c2880
  8c2513:	lea    eax,[ebx+0x45874]
  8c2519:	mov    DWORD PTR [esp+0x24],eax
  8c251d:	mov    DWORD PTR [esp+0x28],ebx
  8c2521:	mov    eax,DWORD PTR [eax]
  8c2523:	mov    ebx,DWORD PTR [esi]
  8c2525:	movzx  edx,WORD PTR [ebx+0xaa]
  8c252c:	test   edx,edx
  8c252e:	je     8c253f
  8c2530:	mov    edi,DWORD PTR [ebx+0x4c]
  8c2533:	xor    ecx,ecx
  8c2535:	cmp    DWORD PTR [edi+ecx*8],eax
  8c2538:	je     8c255b
  8c253a:	inc    ecx
  8c253b:	cmp    ecx,edx
  8c253d:	jb     8c2535
  8c253f:	mov    DWORD PTR [esp+0x4],eax
  8c2543:	mov    DWORD PTR [esp],esi
  8c2546:	mov    DWORD PTR [esp+0x8],0x2f
  8c254e:	mov    ebx,DWORD PTR [esp+0x28]
  8c2552:	call   1c1964
  8c2557:	mov    ecx,eax
  8c2559:	jmp    8c256a
  8c255b:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8c255f:	lea    ecx,[ebx+eax*8+0x22c]
  8c2566:	mov    ebx,DWORD PTR [esp+0x28]
  8c256a:	mov    eax,DWORD PTR [ecx+0x4]
  8c256d:	mov    DWORD PTR [esp+0x4],eax
  8c2571:	mov    DWORD PTR [esp],esi
  8c2574:	call   DWORD PTR [ecx]
  8c2576:	mov    DWORD PTR [esp+0x20],0x0
  8c257e:	cmp    eax,0x1
  8c2581:	mov    edi,DWORD PTR [ebp+0x8]
  8c2584:	jne    8c2725
  8c258a:	mov    DWORD PTR [esp+0x28],ebx
  8c258e:	mov    edi,DWORD PTR [edi+0x18]
  8c2591:	test   edi,edi
  8c2593:	je     8c287c
  8c2599:	mov    eax,DWORD PTR [esp+0x24]
  8c259d:	mov    eax,DWORD PTR [eax]
  8c259f:	mov    ecx,DWORD PTR [edi]
  8c25a1:	movzx  edx,WORD PTR [ecx+0xaa]
  8c25a8:	test   edx,edx
  8c25aa:	je     8c25bb
  8c25ac:	mov    esi,DWORD PTR [ecx+0x4c]
  8c25af:	xor    ebx,ebx
  8c25b1:	cmp    DWORD PTR [esi+ebx*8],eax
  8c25b4:	je     8c25d7
  8c25b6:	inc    ebx
  8c25b7:	cmp    ebx,edx
  8c25b9:	jb     8c25b1
  8c25bb:	mov    DWORD PTR [esp+0x4],eax
  8c25bf:	mov    DWORD PTR [esp],edi
  8c25c2:	mov    DWORD PTR [esp+0x8],0x14
  8c25ca:	mov    ebx,DWORD PTR [esp+0x28]
  8c25ce:	call   1c1964
  8c25d3:	mov    ecx,eax
  8c25d5:	jmp    8c25e6
  8c25d7:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8c25db:	lea    ecx,[ecx+eax*8+0x154]
  8c25e2:	mov    ebx,DWORD PTR [esp+0x28]
  8c25e6:	mov    eax,DWORD PTR [ecx+0x4]
  8c25e9:	mov    DWORD PTR [esp+0x4],eax
  8c25ed:	mov    DWORD PTR [esp],edi
  8c25f0:	call   DWORD PTR [ecx]
  8c25f2:	test   al,al
  8c25f4:	mov    edi,DWORD PTR [ebp+0x8]
  8c25f7:	je     8c2668
  8c25f9:	mov    edi,DWORD PTR [edi+0x18]
  8c25fc:	test   edi,edi
  8c25fe:	je     8c287c
  8c2604:	mov    eax,DWORD PTR [esp+0x24]
  8c2608:	mov    eax,DWORD PTR [eax]
  8c260a:	mov    ecx,DWORD PTR [edi]
  8c260c:	movzx  edx,WORD PTR [ecx+0xaa]
  8c2613:	test   edx,edx
  8c2615:	je     8c2626
  8c2617:	mov    esi,DWORD PTR [ecx+0x4c]
  8c261a:	xor    ebx,ebx
  8c261c:	cmp    DWORD PTR [esi+ebx*8],eax
  8c261f:	je     8c2642
  8c2621:	inc    ebx
  8c2622:	cmp    ebx,edx
  8c2624:	jb     8c261c
  8c2626:	mov    DWORD PTR [esp+0x4],eax
  8c262a:	mov    DWORD PTR [esp],edi
  8c262d:	mov    DWORD PTR [esp+0x8],0x13
  8c2635:	mov    ebx,DWORD PTR [esp+0x28]
  8c2639:	call   1c1964
  8c263e:	mov    ecx,eax
  8c2640:	jmp    8c2651
  8c2642:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8c2646:	lea    ecx,[ecx+eax*8+0x14c]
  8c264d:	mov    ebx,DWORD PTR [esp+0x28]
  8c2651:	mov    eax,DWORD PTR [ecx+0x4]
  8c2654:	mov    DWORD PTR [esp+0x4],eax
  8c2658:	mov    DWORD PTR [esp],edi
  8c265b:	call   DWORD PTR [ecx]
  8c265d:	test   al,al
  8c265f:	mov    edi,DWORD PTR [ebp+0x8]
  8c2662:	je     8c2725
  8c2668:	mov    DWORD PTR [esp+0x4],0x0
  8c2670:	mov    DWORD PTR [esp],0x0
  8c2677:	call   109314e  ; DIContainerLogic::GetBattleService
  8c267c:	mov    esi,eax
  8c267e:	mov    eax,DWORD PTR [edi+0x14]
  8c2681:	test   eax,eax
  8c2683:	je     8c2880
  8c2689:	mov    ecx,DWORD PTR [edi+0x18]
  8c268c:	mov    DWORD PTR [esp+0x20],ecx
  8c2690:	mov    DWORD PTR [esp],eax
  8c2693:	mov    DWORD PTR [esp+0x4],0x0
  8c269b:	call   9f18af  ; BattleMgrBase::get_Model
  8c26a0:	test   esi,esi
  8c26a2:	je     8c2880
  8c26a8:	mov    DWORD PTR [esp+0x8],eax
  8c26ac:	mov    eax,DWORD PTR [esp+0x20]
  8c26b0:	mov    DWORD PTR [esp+0x4],eax
  8c26b4:	mov    DWORD PTR [esp],esi
  8c26b7:	mov    DWORD PTR [esp+0x10],0x0
  8c26bf:	mov    DWORD PTR [esp+0xc],0x1
  8c26c7:	call   502698  ; ABH.Services.Logic.BattleService::GetScoreForPig
  8c26cc:	mov    DWORD PTR [esp+0x20],eax
  8c26d0:	mov    DWORD PTR [esp+0x4],0x0
  8c26d8:	mov    DWORD PTR [esp],0x0
  8c26df:	call   109314e  ; DIContainerLogic::GetBattleService
  8c26e4:	mov    esi,eax
  8c26e6:	mov    eax,DWORD PTR [edi+0x14]
  8c26e9:	test   eax,eax
  8c26eb:	je     8c2880
  8c26f1:	mov    DWORD PTR [esp],eax
  8c26f4:	mov    DWORD PTR [esp+0x4],0x0
  8c26fc:	call   9f18af  ; BattleMgrBase::get_Model
  8c2701:	test   esi,esi
  8c2703:	je     8c2880
  8c2709:	mov    DWORD PTR [esp+0x8],eax
  8c270d:	mov    eax,DWORD PTR [esp+0x20]
  8c2711:	mov    DWORD PTR [esp+0x4],eax
  8c2715:	mov    DWORD PTR [esp],esi
  8c2718:	mov    DWORD PTR [esp+0xc],0x0
  8c2720:	call   504604  ; ABH.Services.Logic.BattleService::AddScore
  8c2725:	mov    DWORD PTR [esp+0x28],ebx
  8c2729:	mov    edi,DWORD PTR [edi+0x18]
  8c272c:	test   edi,edi
  8c272e:	je     8c287c
  8c2734:	mov    eax,DWORD PTR [esp+0x24]
  8c2738:	mov    eax,DWORD PTR [eax]
  8c273a:	mov    ecx,DWORD PTR [edi]
  8c273c:	movzx  edx,WORD PTR [ecx+0xaa]
  8c2743:	test   edx,edx
  8c2745:	je     8c2756
  8c2747:	mov    esi,DWORD PTR [ecx+0x4c]
  8c274a:	xor    ebx,ebx
  8c274c:	cmp    DWORD PTR [esi+ebx*8],eax
  8c274f:	je     8c2772
  8c2751:	inc    ebx
  8c2752:	cmp    ebx,edx
  8c2754:	jb     8c274c
  8c2756:	mov    DWORD PTR [esp+0x4],eax
  8c275a:	mov    DWORD PTR [esp],edi
  8c275d:	mov    DWORD PTR [esp+0x8],0x2f
  8c2765:	mov    ebx,DWORD PTR [esp+0x28]
  8c2769:	call   1c1964
  8c276e:	mov    ecx,eax
  8c2770:	jmp    8c2781
  8c2772:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8c2776:	lea    ecx,[ecx+eax*8+0x22c]
  8c277d:	mov    ebx,DWORD PTR [esp+0x28]
  8c2781:	mov    eax,DWORD PTR [ecx+0x4]
  8c2784:	mov    DWORD PTR [esp+0x4],eax
  8c2788:	mov    DWORD PTR [esp],edi
  8c278b:	call   DWORD PTR [ecx]
  8c278d:	test   eax,eax
  8c278f:	jne    8c283b
  8c2795:	mov    eax,DWORD PTR [ebp+0x8]
  8c2798:	mov    edi,DWORD PTR [eax+0x18]
  8c279b:	test   edi,edi
  8c279d:	je     8c287c
  8c27a3:	mov    eax,DWORD PTR [esp+0x24]
  8c27a7:	mov    eax,DWORD PTR [eax]
  8c27a9:	mov    ecx,DWORD PTR [edi]
  8c27ab:	movzx  edx,WORD PTR [ecx+0xaa]
  8c27b2:	test   edx,edx
  8c27b4:	je     8c27c5
  8c27b6:	mov    esi,DWORD PTR [ecx+0x4c]
  8c27b9:	xor    ebx,ebx
  8c27bb:	cmp    DWORD PTR [esi+ebx*8],eax
  8c27be:	je     8c27e1
  8c27c0:	inc    ebx
  8c27c1:	cmp    ebx,edx
  8c27c3:	jb     8c27bb
  8c27c5:	mov    DWORD PTR [esp+0x4],eax
  8c27c9:	mov    DWORD PTR [esp],edi
  8c27cc:	mov    DWORD PTR [esp+0x8],0x14
  8c27d4:	mov    ebx,DWORD PTR [esp+0x28]
  8c27d8:	call   1c1964
  8c27dd:	mov    ecx,eax
  8c27df:	jmp    8c27f0
  8c27e1:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8c27e5:	lea    ecx,[ecx+eax*8+0x154]
  8c27ec:	mov    ebx,DWORD PTR [esp+0x28]
  8c27f0:	mov    eax,DWORD PTR [ecx+0x4]
  8c27f3:	mov    DWORD PTR [esp+0x4],eax
  8c27f7:	mov    DWORD PTR [esp],edi
  8c27fa:	call   DWORD PTR [ecx]
  8c27fc:	test   al,al
  8c27fe:	jne    8c283b
  8c2800:	mov    DWORD PTR [esp+0x4],0x0
  8c2808:	mov    DWORD PTR [esp],0x0
  8c280f:	call   1074d4d  ; DIContainerConfig::GetClientConfig
  8c2814:	test   eax,eax
  8c2816:	je     8c2880
  8c2818:	mov    DWORD PTR [esp],eax
  8c281b:	mov    DWORD PTR [esp+0x4],0x0
  8c2823:	call   16ff8dc  ; ABH.Shared.BalancingData.ClientConfigBalancingData::get_EnableSingleBirdRevive
  8c2828:	test   al,al
  8c282a:	je     8c283b
  8c282c:	mov    eax,DWORD PTR [ebp+0x8]
  8c282f:	mov    esi,eax
  8c2831:	mov    DWORD PTR [esp],esi
  8c2834:	call   8da580  ; CharacterControllerBattleGroundBase::KnockOutBird
  8c2839:	jmp    8c2860
  8c283b:	mov    eax,DWORD PTR [esp+0x20]
  8c283f:	mov    DWORD PTR [esp+0x4],eax
  8c2843:	mov    eax,DWORD PTR [ebp+0x8]
  8c2846:	mov    esi,eax
  8c2848:	mov    DWORD PTR [esp],esi
  8c284b:	mov    DWORD PTR [esp+0xc],0x0
  8c2853:	mov    DWORD PTR [esp+0x8],0x1
  8c285b:	call   8da794  ; CharacterControllerBattleGroundBase::DefeatCharacter
  8c2860:	mov    DWORD PTR [esp+0x4],eax
  8c2864:	mov    DWORD PTR [esp],esi
  8c2867:	mov    DWORD PTR [esp+0x8],0x0
  8c286f:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8c2874:	lea    esp,[ebp-0xc]
  8c2877:	pop    esi
  8c2878:	pop    edi
  8c2879:	pop    ebx
  8c287a:	pop    ebp
  8c287b:	ret
  8c287c:	mov    ebx,DWORD PTR [esp+0x28]
  8c2880:	call   1fbc48
  8c2885:	call   8b3f00