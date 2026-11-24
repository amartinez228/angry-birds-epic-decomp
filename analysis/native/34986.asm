
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c25df:
  6c25df:	push   ebp
  6c25e0:	mov    ebp,esp
  6c25e2:	push   ebx
  6c25e3:	push   edi
  6c25e4:	push   esi
  6c25e5:	and    esp,0xfffffff0
  6c25e8:	sub    esp,0x80
  6c25ee:	call   6c25f3
  6c25f3:	pop    ebx
  6c25f4:	add    ebx,0x184f951
  6c25fa:	mov    esi,DWORD PTR [ebp+0x8]
  6c25fd:	mov    al,BYTE PTR [ebx+0x5f640]
  6c2603:	test   al,al
  6c2605:	jne    6c261e
  6c2607:	lea    eax,[ebx-0x66eb78]
  6c260d:	mov    eax,DWORD PTR [eax]
  6c260f:	mov    DWORD PTR [esp],eax
  6c2612:	call   1ca6e8
  6c2617:	mov    BYTE PTR [ebx+0x5f640],0x1
  6c261e:	mov    DWORD PTR [esp+0x78],0x0
  6c2626:	xorps  xmm0,xmm0
  6c2629:	movaps XMMWORD PTR [esp+0x60],xmm0
  6c262e:	lea    eax,[ebx+0x4a260]
  6c2634:	mov    DWORD PTR [esp+0x38],eax
  6c2638:	mov    eax,DWORD PTR [eax]
  6c263a:	mov    DWORD PTR [esp+0x4],eax
  6c263e:	mov    DWORD PTR [esp],esi
  6c2641:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c2646:	test   eax,eax
  6c2648:	je     6c2b92
  6c264e:	mov    DWORD PTR [esp],eax
  6c2651:	mov    DWORD PTR [esp+0x4],0x0
  6c2659:	call   16fe9ca  ; ABH.Shared.BalancingData.BirdBalancingData::get_DefaultInventoryNameId
  6c265e:	mov    esi,eax
  6c2660:	lea    eax,[ebx+0x45824]
  6c2666:	mov    eax,DWORD PTR [eax]
  6c2668:	mov    DWORD PTR [esp],eax
  6c266b:	call   20bfb2
  6c2670:	mov    edi,eax
  6c2672:	mov    DWORD PTR [esp+0x4],esi
  6c2676:	mov    DWORD PTR [esp],edi
  6c2679:	call   6c3a7b  ; ABH.GameDatas.InventoryGameData::.ctor
  6c267e:	mov    eax,DWORD PTR [ebp+0x8]
  6c2681:	mov    DWORD PTR [eax+0x18],edi
  6c2684:	mov    edi,eax
  6c2686:	mov    DWORD PTR [esp+0x78],0x0
  6c268e:	lea    eax,[ebx+0x454dc]
  6c2694:	mov    eax,DWORD PTR [eax]
  6c2696:	mov    DWORD PTR [esp],eax
  6c2699:	call   20bfb2
  6c269e:	mov    esi,eax
  6c26a0:	mov    DWORD PTR [esp],esi
  6c26a3:	mov    DWORD PTR [esp+0x4],0x0
  6c26ab:	call   179a1c5  ; ABH.Shared.Models.Character.BirdData::.ctor
  6c26b0:	mov    ecx,esi
  6c26b2:	test   ecx,ecx
  6c26b4:	mov    esi,edi
  6c26b6:	je     6c2b92
  6c26bc:	mov    eax,DWORD PTR [ebp+0xc]
  6c26bf:	mov    DWORD PTR [esp+0x4],eax
  6c26c3:	mov    DWORD PTR [esp],ecx
  6c26c6:	mov    DWORD PTR [esp+0x8],0x0
  6c26ce:	mov    edi,ecx
  6c26d0:	call   179a148  ; ABH.Shared.Models.Character.BirdData::set_NameId
  6c26d5:	mov    eax,DWORD PTR [esi+0x18]
  6c26d8:	test   eax,eax
  6c26da:	je     6c2b92
  6c26e0:	lea    ecx,[ebx+0x49f7c]
  6c26e6:	mov    ecx,DWORD PTR [ecx]
  6c26e8:	mov    DWORD PTR [esp+0x4],ecx
  6c26ec:	mov    DWORD PTR [esp],eax
  6c26ef:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c26f4:	mov    DWORD PTR [esp+0x4],eax
  6c26f8:	mov    DWORD PTR [esp],edi
  6c26fb:	mov    DWORD PTR [esp+0x8],0x0
  6c2703:	call   179a18e  ; ABH.Shared.Models.Character.BirdData::set_Inventory
  6c2708:	mov    eax,DWORD PTR [ebp+0x10]
  6c270b:	mov    DWORD PTR [esp+0x4],eax
  6c270f:	mov    DWORD PTR [esp],edi
  6c2712:	mov    DWORD PTR [esp+0x34],edi
  6c2716:	mov    DWORD PTR [esp+0x8],0x0
  6c271e:	call   179a16b  ; ABH.Shared.Models.Character.BirdData::set_Level
  6c2723:	mov    DWORD PTR [esp+0x4],0x0
  6c272b:	mov    DWORD PTR [esp],0x0
  6c2732:	call   106f816  ; DIContainerLogic::GetLootOperationService
  6c2737:	mov    DWORD PTR [esp+0x2c],eax
  6c273b:	mov    eax,DWORD PTR [esi+0x18]
  6c273e:	mov    DWORD PTR [esp+0x28],eax
  6c2742:	mov    DWORD PTR [esp+0x4],0x0
  6c274a:	mov    DWORD PTR [esp],0x0
  6c2751:	call   106f816  ; DIContainerLogic::GetLootOperationService
  6c2756:	mov    DWORD PTR [esp+0x30],eax
  6c275a:	mov    eax,DWORD PTR [esi+0x18]
  6c275d:	test   eax,eax
  6c275f:	je     6c2b92
  6c2765:	lea    edi,[ebx+0x49f80]
  6c276b:	mov    ecx,DWORD PTR [edi]
  6c276d:	mov    DWORD PTR [esp+0x4],ecx
  6c2771:	mov    DWORD PTR [esp],eax
  6c2774:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c2779:	test   eax,eax
  6c277b:	je     6c2b92
  6c2781:	mov    DWORD PTR [esp],eax
  6c2784:	mov    DWORD PTR [esp+0x4],0x0
  6c278c:	call   17014ff  ; ABH.Shared.BalancingData.InventoryBalancingData::get_DefaultInventoryContent
  6c2791:	mov    esi,eax
  6c2793:	mov    eax,DWORD PTR [ebp+0x8]
  6c2796:	mov    eax,DWORD PTR [eax+0x18]
  6c2799:	test   eax,eax
  6c279b:	je     6c2b92
  6c27a1:	mov    ecx,DWORD PTR [edi]
  6c27a3:	mov    DWORD PTR [esp+0x4],ecx
  6c27a7:	mov    DWORD PTR [esp],eax
  6c27aa:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c27af:	test   eax,eax
  6c27b1:	je     6c2b92
  6c27b7:	mov    DWORD PTR [esp],eax
  6c27ba:	mov    DWORD PTR [esp+0x4],0x0
  6c27c2:	call   1701522  ; ABH.Shared.BalancingData.InventoryBalancingData::get_InitializingLevel
  6c27c7:	test   eax,eax
  6c27c9:	je     6c2801
  6c27cb:	mov    eax,DWORD PTR [ebp+0x8]
  6c27ce:	mov    eax,DWORD PTR [eax+0x18]
  6c27d1:	test   eax,eax
  6c27d3:	je     6c2b92
  6c27d9:	mov    ecx,DWORD PTR [edi]
  6c27db:	mov    DWORD PTR [esp+0x4],ecx
  6c27df:	mov    DWORD PTR [esp],eax
  6c27e2:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c27e7:	test   eax,eax
  6c27e9:	je     6c2b92
  6c27ef:	mov    DWORD PTR [esp],eax
  6c27f2:	mov    DWORD PTR [esp+0x4],0x0
  6c27fa:	call   1701522  ; ABH.Shared.BalancingData.InventoryBalancingData::get_InitializingLevel
  6c27ff:	jmp    6c2815
  6c2801:	mov    eax,DWORD PTR [esp+0x34]
  6c2805:	mov    DWORD PTR [esp],eax
  6c2808:	mov    DWORD PTR [esp+0x4],0x0
  6c2810:	call   179a15b  ; ABH.Shared.Models.Character.BirdData::get_Level
  6c2815:	mov    edx,DWORD PTR [esp+0x30]
  6c2819:	test   edx,edx
  6c281b:	je     6c2b92
  6c2821:	lea    ecx,[esp+0x78]
  6c2825:	mov    DWORD PTR [esp+0xc],ecx
  6c2829:	mov    DWORD PTR [esp+0x8],eax
  6c282d:	mov    DWORD PTR [esp+0x4],esi
  6c2831:	mov    DWORD PTR [esp],edx
  6c2834:	mov    DWORD PTR [esp+0x10],0x0
  6c283c:	call   57cd3f  ; ABH.Services.Logic.LootOperations::GenerateLoot
  6c2841:	mov    esi,eax
  6c2843:	mov    eax,DWORD PTR [esp+0x38]
  6c2847:	mov    eax,DWORD PTR [eax]
  6c2849:	mov    DWORD PTR [esp+0x4],eax
  6c284d:	mov    eax,DWORD PTR [ebp+0x8]
  6c2850:	mov    DWORD PTR [esp],eax
  6c2853:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c2858:	test   eax,eax
  6c285a:	je     6c2b92
  6c2860:	mov    DWORD PTR [esp],eax
  6c2863:	mov    DWORD PTR [esp+0x4],0x0
  6c286b:	call   16fe961  ; ABH.Shared.BalancingData.BirdBalancingData::get_NameId
  6c2870:	mov    edi,eax
  6c2872:	lea    eax,[ebx+0x430e4]
  6c2878:	mov    eax,DWORD PTR [eax]
  6c287a:	test   BYTE PTR [eax+0xb2],0x1
  6c2881:	je     6c2891
  6c2883:	cmp    DWORD PTR [eax+0x60],0x0
  6c2887:	jne    6c2891
  6c2889:	mov    DWORD PTR [esp],eax
  6c288c:	call   1db0b8
  6c2891:	mov    DWORD PTR [esp+0x3c],ebx
  6c2895:	lea    eax,[ebx+0x56ff4]  ; literal "bird_creation_"
  6c289b:	mov    eax,DWORD PTR [eax]
  6c289d:	mov    DWORD PTR [esp+0x8],edi
  6c28a1:	mov    DWORD PTR [esp+0x4],eax
  6c28a5:	mov    DWORD PTR [esp+0xc],0x0
  6c28ad:	mov    DWORD PTR [esp],0x0
  6c28b4:	call   ca462a  ; System.String::Concat
  6c28b9:	mov    ecx,DWORD PTR [esp+0x2c]
  6c28bd:	test   ecx,ecx
  6c28bf:	je     6c2b92
  6c28c5:	mov    DWORD PTR [esp+0x10],eax
  6c28c9:	mov    DWORD PTR [esp+0xc],esi
  6c28cd:	mov    eax,DWORD PTR [esp+0x28]
  6c28d1:	mov    DWORD PTR [esp+0x4],eax
  6c28d5:	mov    DWORD PTR [esp],ecx
  6c28d8:	mov    DWORD PTR [esp+0x1c],0x0
  6c28e0:	mov    DWORD PTR [esp+0x18],0x1
  6c28e8:	mov    DWORD PTR [esp+0x14],0x4
  6c28f0:	mov    DWORD PTR [esp+0x8],0x0
  6c28f8:	call   515c3c  ; ABH.Services.Logic.LootOperations::RewardLoot
  6c28fd:	test   eax,eax
  6c28ff:	je     6c2b92
  6c2905:	lea    ecx,[ebx+0x4a81c]
  6c290b:	mov    ecx,DWORD PTR [ecx]
  6c290d:	mov    DWORD PTR [esp+0x8],ecx
  6c2911:	mov    DWORD PTR [esp+0x4],eax
  6c2915:	lea    eax,[esp+0x50]
  6c2919:	mov    DWORD PTR [esp],eax
  6c291c:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  6c2921:	sub    esp,0x4
  6c2924:	movsd  xmm0,QWORD PTR [esp+0x50]
  6c292a:	movsd  xmm1,QWORD PTR [esp+0x58]
  6c2930:	movsd  QWORD PTR [esp+0x68],xmm1
  6c2936:	movsd  QWORD PTR [esp+0x60],xmm0
  6c293c:	lea    eax,[ebx+0x4a824]
  6c2942:	mov    DWORD PTR [esp+0x38],eax
  6c2946:	mov    eax,DWORD PTR [esp+0x38]
  6c294a:	mov    eax,DWORD PTR [eax]
  6c294c:	mov    DWORD PTR [esp+0x4],eax
  6c2950:	lea    eax,[esp+0x60]
  6c2954:	mov    DWORD PTR [esp],eax
  6c2957:	call   447e4e
  6c295c:	test   al,al
  6c295e:	je     6c2a51
  6c2964:	lea    eax,[ebx+0x4a820]
  6c296a:	mov    eax,DWORD PTR [eax]
  6c296c:	mov    DWORD PTR [esp+0x4],eax
  6c2970:	lea    eax,[esp+0x60]
  6c2974:	mov    DWORD PTR [esp],eax
  6c2977:	call   447f1e
  6c297c:	mov    esi,eax
  6c297e:	test   esi,esi
  6c2980:	je     6c2a5b
  6c2986:	lea    eax,[ebx+0x45854]
  6c298c:	mov    eax,DWORD PTR [eax]
  6c298e:	mov    ebx,DWORD PTR [esi]
  6c2990:	movzx  edx,WORD PTR [ebx+0xaa]
  6c2997:	test   edx,edx
  6c2999:	je     6c29aa
  6c299b:	mov    edi,DWORD PTR [ebx+0x4c]
  6c299e:	xor    ecx,ecx
  6c29a0:	cmp    DWORD PTR [edi+ecx*8],eax
  6c29a3:	je     6c29c4
  6c29a5:	inc    ecx
  6c29a6:	cmp    ecx,edx
  6c29a8:	jb     6c29a0
  6c29aa:	mov    DWORD PTR [esp+0x4],eax
  6c29ae:	mov    DWORD PTR [esp],esi
  6c29b1:	mov    DWORD PTR [esp+0x8],0x1
  6c29b9:	mov    ebx,DWORD PTR [esp+0x3c]
  6c29bd:	call   1c1964
  6c29c2:	jmp    6c29d3
  6c29c4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6c29c8:	lea    eax,[ebx+eax*8+0xbc]
  6c29cf:	mov    ebx,DWORD PTR [esp+0x3c]
  6c29d3:	mov    ecx,DWORD PTR [eax]
  6c29d5:	mov    eax,DWORD PTR [eax+0x4]
  6c29d8:	mov    DWORD PTR [esp+0x4],eax
  6c29dc:	mov    DWORD PTR [esp],esi
  6c29df:	call   ecx
  6c29e1:	mov    esi,eax
  6c29e3:	test   esi,esi
  6c29e5:	je     6c2a65
  6c29e7:	lea    eax,[ebx+0x45850]
  6c29ed:	mov    eax,DWORD PTR [eax]
  6c29ef:	mov    ecx,DWORD PTR [esi]
  6c29f1:	movzx  edx,WORD PTR [ecx+0xaa]
  6c29f8:	test   edx,edx
  6c29fa:	je     6c2a0b
  6c29fc:	mov    edi,DWORD PTR [ecx+0x4c]
  6c29ff:	xor    ebx,ebx
  6c2a01:	cmp    DWORD PTR [edi+ebx*8],eax
  6c2a04:	je     6c2a25
  6c2a06:	inc    ebx
  6c2a07:	cmp    ebx,edx
  6c2a09:	jb     6c2a01
  6c2a0b:	mov    DWORD PTR [esp+0x4],eax
  6c2a0f:	mov    DWORD PTR [esp],esi
  6c2a12:	mov    DWORD PTR [esp+0x8],0x7
  6c2a1a:	mov    ebx,DWORD PTR [esp+0x3c]
  6c2a1e:	call   1c1964
  6c2a23:	jmp    6c2a34
  6c2a25:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  6c2a29:	lea    eax,[ecx+eax*8+0xec]
  6c2a30:	mov    ebx,DWORD PTR [esp+0x3c]
  6c2a34:	mov    ecx,DWORD PTR [eax]
  6c2a36:	mov    eax,DWORD PTR [eax+0x4]
  6c2a39:	mov    DWORD PTR [esp+0x8],eax
  6c2a3d:	mov    DWORD PTR [esp],esi
  6c2a40:	mov    DWORD PTR [esp+0x4],0x0
  6c2a48:	call   ecx
  6c2a4a:	jmp    6c2946
  6c2a4f:	jmp    6c2a6f
  6c2a51:	xor    esi,esi
  6c2a53:	mov    al,0x1
  6c2a55:	mov    DWORD PTR [esp+0x38],eax
  6c2a59:	jmp    6c2a8f
  6c2a5b:	call   1fbc48
  6c2a60:	call   6b106a
  6c2a65:	call   1fbc48
  6c2a6a:	jmp    6c2ba4
  6c2a6f:	cmp    edx,0x1
  6c2a72:	jne    6c2b9c
  6c2a78:	mov    DWORD PTR [esp],eax
  6c2a7b:	call   1ba3f0
  6c2a80:	mov    esi,DWORD PTR [eax]
  6c2a82:	call   1b9ce0
  6c2a87:	mov    DWORD PTR [esp+0x38],0x0
  6c2a8f:	lea    eax,[ebx+0x4a828]
  6c2a95:	mov    eax,DWORD PTR [eax]
  6c2a97:	mov    DWORD PTR [esp+0x4],eax
  6c2a9b:	lea    eax,[esp+0x60]
  6c2a9f:	mov    DWORD PTR [esp],eax
  6c2aa2:	call   447df6
  6c2aa7:	mov    eax,DWORD PTR [esp+0x38]
  6c2aab:	test   al,al
  6c2aad:	jne    6c2abb
  6c2aaf:	test   esi,esi
  6c2ab1:	je     6c2abb
  6c2ab3:	mov    DWORD PTR [esp],esi
  6c2ab6:	call   1fbb20
  6c2abb:	mov    edi,DWORD PTR [ebp+0x8]
  6c2abe:	mov    eax,DWORD PTR [edi+0x18]
  6c2ac1:	mov    DWORD PTR [esp+0x38],eax
  6c2ac5:	lea    eax,[ebx+0x4a804]
  6c2acb:	mov    DWORD PTR [esp+0x2c],eax
  6c2acf:	mov    eax,DWORD PTR [eax]
  6c2ad1:	mov    DWORD PTR [esp+0x30],eax
  6c2ad5:	lea    eax,[ebx+0x45e14]
  6c2adb:	mov    DWORD PTR [esp+0x28],eax
  6c2adf:	mov    eax,DWORD PTR [eax]
  6c2ae1:	mov    DWORD PTR [esp],eax
  6c2ae4:	call   20bfb2
  6c2ae9:	mov    esi,eax
  6c2aeb:	mov    eax,DWORD PTR [esp+0x30]
  6c2aef:	mov    DWORD PTR [esp+0x48],eax
  6c2af3:	lea    eax,[ebx+0x4a808]
  6c2af9:	mov    DWORD PTR [esp+0x30],eax
  6c2afd:	mov    eax,DWORD PTR [eax]
  6c2aff:	mov    DWORD PTR [esp+0xc],eax
  6c2b03:	mov    eax,DWORD PTR [esp+0x48]
  6c2b07:	mov    DWORD PTR [esp+0x8],eax
  6c2b0b:	mov    DWORD PTR [esp+0x4],edi
  6c2b0f:	mov    DWORD PTR [esp],esi
  6c2b12:	call   176efb0  ; shared address: System.Action`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::.ctor | System.Action`2<ABH.Shared.Generic.InventoryItemType, object>::.ctor
  6c2b17:	mov    eax,DWORD PTR [esp+0x38]
  6c2b1b:	test   eax,eax
  6c2b1d:	je     6c2b92
  6c2b1f:	mov    DWORD PTR [esp+0x4],esi
  6c2b23:	mov    DWORD PTR [esp],eax
  6c2b26:	call   6c336a  ; ABH.GameDatas.InventoryGameData::remove_InventoryOfTypeChanged
  6c2b2b:	mov    eax,DWORD PTR [edi+0x18]
  6c2b2e:	mov    DWORD PTR [esp+0x38],eax
  6c2b32:	mov    eax,DWORD PTR [esp+0x2c]
  6c2b36:	mov    eax,DWORD PTR [eax]
  6c2b38:	mov    DWORD PTR [esp+0x2c],eax
  6c2b3c:	mov    eax,DWORD PTR [esp+0x28]
  6c2b40:	mov    eax,DWORD PTR [eax]
  6c2b42:	mov    DWORD PTR [esp],eax
  6c2b45:	call   20bfb2
  6c2b4a:	mov    esi,eax
  6c2b4c:	mov    eax,DWORD PTR [esp+0x2c]
  6c2b50:	mov    DWORD PTR [esp+0x40],eax
  6c2b54:	mov    eax,DWORD PTR [esp+0x30]
  6c2b58:	mov    eax,DWORD PTR [eax]
  6c2b5a:	mov    DWORD PTR [esp+0xc],eax
  6c2b5e:	mov    eax,DWORD PTR [esp+0x40]
  6c2b62:	mov    DWORD PTR [esp+0x8],eax
  6c2b66:	mov    DWORD PTR [esp+0x4],edi
  6c2b6a:	mov    DWORD PTR [esp],esi
  6c2b6d:	call   176efb0  ; shared address: System.Action`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::.ctor | System.Action`2<ABH.Shared.Generic.InventoryItemType, object>::.ctor
  6c2b72:	mov    eax,DWORD PTR [esp+0x38]
  6c2b76:	test   eax,eax
  6c2b78:	je     6c2b92
  6c2b7a:	mov    DWORD PTR [esp+0x4],esi
  6c2b7e:	mov    DWORD PTR [esp],eax
  6c2b81:	call   6c34b3  ; ABH.GameDatas.InventoryGameData::add_InventoryOfTypeChanged
  6c2b86:	mov    eax,DWORD PTR [esp+0x34]
  6c2b8a:	lea    esp,[ebp-0xc]
  6c2b8d:	pop    esi
  6c2b8e:	pop    edi
  6c2b8f:	pop    ebx
  6c2b90:	pop    ebp
  6c2b91:	ret
  6c2b92:	call   1fbc48
  6c2b97:	call   6b106a
  6c2b9c:	mov    DWORD PTR [esp],eax
  6c2b9f:	call   1b9bd0
  6c2ba4:	call   6b106a