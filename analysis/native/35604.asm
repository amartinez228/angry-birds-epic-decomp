
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006cd4ff:
  6cd4ff:	push   ebp
  6cd500:	mov    ebp,esp
  6cd502:	push   ebx
  6cd503:	push   edi
  6cd504:	push   esi
  6cd505:	and    esp,0xfffffff0
  6cd508:	sub    esp,0x60
  6cd50b:	call   6cd510
  6cd510:	pop    ebx
  6cd511:	add    ebx,0x1844a34
  6cd517:	mov    DWORD PTR [esp+0x44],ebx
  6cd51b:	mov    al,BYTE PTR [ebx+0x5f6ab]
  6cd521:	test   al,al
  6cd523:	jne    6cd53c
  6cd525:	lea    eax,[ebx-0x66d2fc]
  6cd52b:	mov    eax,DWORD PTR [eax]
  6cd52d:	mov    DWORD PTR [esp],eax
  6cd530:	call   1ca6e8
  6cd535:	mov    BYTE PTR [ebx+0x5f6ab],0x1
  6cd53c:	mov    edi,DWORD PTR [ebp+0x8]
  6cd53f:	mov    DWORD PTR [esp+0x58],0x0
  6cd547:	mov    DWORD PTR [esp+0x54],0x0
  6cd54f:	mov    DWORD PTR [esp+0x50],0x0
  6cd557:	lea    eax,[ebx+0x4584c]
  6cd55d:	mov    DWORD PTR [esp+0x2c],eax
  6cd561:	mov    eax,DWORD PTR [eax]
  6cd563:	test   BYTE PTR [eax+0xb2],0x1
  6cd56a:	je     6cd57a
  6cd56c:	cmp    DWORD PTR [eax+0x60],0x0
  6cd570:	jne    6cd57a
  6cd572:	mov    DWORD PTR [esp],eax
  6cd575:	call   1db0b8
  6cd57a:	mov    DWORD PTR [esp+0x4],0x0
  6cd582:	mov    DWORD PTR [esp],0x0
  6cd589:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  6cd58e:	mov    esi,eax
  6cd590:	mov    DWORD PTR [esp+0x38],esi
  6cd594:	mov    DWORD PTR [esp],edi
  6cd597:	call   6cde68  ; ABH.GameDatas.ClassItemGameData::MasteryNeededForNextRank
  6cd59c:	mov    DWORD PTR [esp+0x3c],eax
  6cd5a0:	mov    DWORD PTR [esp+0x58],0x0
  6cd5a8:	mov    DWORD PTR [esp+0x4],0x0
  6cd5b0:	mov    DWORD PTR [esp],0x0
  6cd5b7:	call   106b137  ; DIContainerLogic::get_InventoryService
  6cd5bc:	test   esi,esi
  6cd5be:	je     6cde5e
  6cd5c4:	test   eax,eax
  6cd5c6:	je     6cde5e
  6cd5cc:	mov    ecx,DWORD PTR [esp+0x38]
  6cd5d0:	mov    ecx,DWORD PTR [ecx+0x10]
  6cd5d3:	lea    edx,[ebx+0x57040]  ; literal "unlock_mastery_badge"
  6cd5d9:	mov    edx,DWORD PTR [edx]
  6cd5db:	lea    esi,[esp+0x58]
  6cd5df:	mov    DWORD PTR [esp+0xc],esi
  6cd5e3:	mov    DWORD PTR [esp+0x8],edx
  6cd5e7:	mov    DWORD PTR [esp+0x4],ecx
  6cd5eb:	mov    DWORD PTR [esp],eax
  6cd5ee:	mov    DWORD PTR [esp+0x10],0x0
  6cd5f6:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  6cd5fb:	test   al,al
  6cd5fd:	je     6cde56
  6cd603:	mov    esi,DWORD PTR [ebp+0xc]
  6cd606:	mov    DWORD PTR [esp],edi
  6cd609:	call   6cd410  ; ABH.GameDatas.ClassItemGameData::get_ItemValue
  6cd60e:	add    eax,esi
  6cd610:	mov    DWORD PTR [esp+0x4],eax
  6cd614:	mov    DWORD PTR [esp],edi
  6cd617:	call   6cd484  ; ABH.GameDatas.ClassItemGameData::set_ItemValue
  6cd61c:	lea    esi,[ebx+0x4a830]
  6cd622:	mov    eax,DWORD PTR [esi]
  6cd624:	mov    DWORD PTR [esp+0x4],eax
  6cd628:	mov    DWORD PTR [esp],edi
  6cd62b:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cd630:	test   eax,eax
  6cd632:	je     6cde5e
  6cd638:	mov    DWORD PTR [esp],eax
  6cd63b:	mov    DWORD PTR [esp+0x4],0x0
  6cd643:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cd648:	mov    DWORD PTR [esp+0x20],eax
  6cd64c:	mov    eax,DWORD PTR [esi]
  6cd64e:	mov    DWORD PTR [esp+0x40],esi
  6cd652:	mov    DWORD PTR [esp+0x4],eax
  6cd656:	mov    DWORD PTR [esp],edi
  6cd659:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cd65e:	test   eax,eax
  6cd660:	je     6cde5e
  6cd666:	mov    DWORD PTR [esp+0x28],0x0
  6cd66e:	mov    DWORD PTR [esp],eax
  6cd671:	mov    DWORD PTR [esp+0x4],0x0
  6cd679:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cd67e:	mov    esi,eax
  6cd680:	call   6ce0dd  ; ABH.GameDatas.ClassItemGameData::MasteryMaxRank
  6cd685:	cmp    esi,eax
  6cd687:	jge    6cddfe
  6cd68d:	mov    DWORD PTR [esp],edi
  6cd690:	call   6cd410  ; ABH.GameDatas.ClassItemGameData::get_ItemValue
  6cd695:	cmp    eax,DWORD PTR [esp+0x3c]
  6cd699:	jl     6cddfe
  6cd69f:	mov    DWORD PTR [esp],edi
  6cd6a2:	call   6cd410  ; ABH.GameDatas.ClassItemGameData::get_ItemValue
  6cd6a7:	mov    esi,eax
  6cd6a9:	lea    eax,[ebx+0x44ec8]
  6cd6af:	mov    eax,DWORD PTR [eax]
  6cd6b1:	test   BYTE PTR [eax+0xb2],0x1
  6cd6b8:	je     6cd6c8
  6cd6ba:	cmp    DWORD PTR [eax+0x60],0x0
  6cd6be:	jne    6cd6c8
  6cd6c0:	mov    DWORD PTR [esp],eax
  6cd6c3:	call   1db0b8
  6cd6c8:	sub    esi,DWORD PTR [esp+0x3c]
  6cd6cc:	mov    DWORD PTR [esp+0x8],esi
  6cd6d0:	mov    DWORD PTR [esp+0xc],0x0
  6cd6d8:	mov    DWORD PTR [esp+0x4],0x0
  6cd6e0:	mov    DWORD PTR [esp],0x0
  6cd6e7:	call   138c91b  ; UnityEngine.Mathf::Max
  6cd6ec:	mov    DWORD PTR [esp+0x4],eax
  6cd6f0:	mov    DWORD PTR [esp],edi
  6cd6f3:	call   6cd484  ; ABH.GameDatas.ClassItemGameData::set_ItemValue
  6cd6f8:	mov    eax,DWORD PTR [esp+0x40]
  6cd6fc:	mov    eax,DWORD PTR [eax]
  6cd6fe:	mov    DWORD PTR [esp+0x4],eax
  6cd702:	mov    DWORD PTR [esp],edi
  6cd705:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cd70a:	mov    esi,eax
  6cd70c:	test   esi,esi
  6cd70e:	je     6cde5e
  6cd714:	mov    DWORD PTR [esp],esi
  6cd717:	mov    DWORD PTR [esp+0x4],0x0
  6cd71f:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cd724:	inc    eax
  6cd725:	mov    DWORD PTR [esp+0x4],eax
  6cd729:	mov    DWORD PTR [esp],esi
  6cd72c:	mov    DWORD PTR [esp+0x8],0x0
  6cd734:	call   179be89  ; ABH.Shared.Models.InventoryItems.ClassItemData::set_Level
  6cd739:	mov    esi,DWORD PTR [esp+0x58]
  6cd73d:	test   esi,esi
  6cd73f:	je     6cde5e
  6cd745:	lea    eax,[ebx+0x45854]
  6cd74b:	mov    eax,DWORD PTR [eax]
  6cd74d:	mov    ecx,DWORD PTR [esi]
  6cd74f:	movzx  edx,WORD PTR [ecx+0xaa]
  6cd756:	test   edx,edx
  6cd758:	je     6cd769
  6cd75a:	mov    edi,DWORD PTR [ecx+0x4c]
  6cd75d:	xor    ebx,ebx
  6cd75f:	cmp    DWORD PTR [edi+ebx*8],eax
  6cd762:	je     6cd785
  6cd764:	inc    ebx
  6cd765:	cmp    ebx,edx
  6cd767:	jb     6cd75f
  6cd769:	mov    DWORD PTR [esp+0x4],eax
  6cd76d:	mov    DWORD PTR [esp],esi
  6cd770:	mov    DWORD PTR [esp+0x8],0x1
  6cd778:	mov    ebx,DWORD PTR [esp+0x44]
  6cd77c:	call   1c1964
  6cd781:	mov    ecx,eax
  6cd783:	jmp    6cd794
  6cd785:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  6cd789:	lea    ecx,[ecx+eax*8+0xbc]
  6cd790:	mov    ebx,DWORD PTR [esp+0x44]
  6cd794:	mov    eax,DWORD PTR [ecx+0x4]
  6cd797:	mov    DWORD PTR [esp+0x4],eax
  6cd79b:	mov    DWORD PTR [esp],esi
  6cd79e:	call   DWORD PTR [ecx]
  6cd7a0:	mov    esi,eax
  6cd7a2:	mov    eax,DWORD PTR [esp+0x38]
  6cd7a6:	mov    eax,DWORD PTR [eax+0x10]
  6cd7a9:	test   eax,eax
  6cd7ab:	je     6cde5e
  6cd7b1:	mov    eax,DWORD PTR [eax+0x10]
  6cd7b4:	test   eax,eax
  6cd7b6:	je     6cde5e
  6cd7bc:	lea    ecx,[ebx+0x49f74]
  6cd7c2:	mov    ecx,DWORD PTR [ecx]
  6cd7c4:	mov    DWORD PTR [esp+0x8],ecx
  6cd7c8:	mov    DWORD PTR [esp],eax
  6cd7cb:	mov    DWORD PTR [esp+0x4],0xa
  6cd7d3:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6cd7d8:	lea    edi,[ebx+0x45e24]
  6cd7de:	mov    edx,DWORD PTR [edi]
  6cd7e0:	mov    ecx,DWORD PTR [edx+0x50]
  6cd7e3:	cmp    DWORD PTR [ecx],0x0
  6cd7e6:	jne    6cd849
  6cd7e8:	lea    ecx,[ebx+0x4a918]
  6cd7ee:	mov    DWORD PTR [esp+0x3c],esi
  6cd7f2:	mov    esi,DWORD PTR [ecx]
  6cd7f4:	lea    ecx,[ebx+0x45e54]
  6cd7fa:	mov    ecx,DWORD PTR [ecx]
  6cd7fc:	mov    DWORD PTR [esp],ecx
  6cd7ff:	mov    DWORD PTR [esp+0x34],eax
  6cd803:	call   20bfb2
  6cd808:	mov    DWORD PTR [esp+0x30],eax
  6cd80c:	mov    DWORD PTR [esp+0x48],esi
  6cd810:	mov    esi,DWORD PTR [esp+0x3c]
  6cd814:	lea    ecx,[ebx+0x4a91c]
  6cd81a:	mov    ecx,DWORD PTR [ecx]
  6cd81c:	mov    DWORD PTR [esp+0xc],ecx
  6cd820:	mov    ecx,DWORD PTR [esp+0x48]
  6cd824:	mov    DWORD PTR [esp+0x8],ecx
  6cd828:	mov    DWORD PTR [esp],eax
  6cd82b:	mov    DWORD PTR [esp+0x4],0x0
  6cd833:	call   159e272  ; shared address: System.Func`2<Newtonsoft.Json.Serialization.JsonProperty, int>::.ctor | System.Func`2<ABH.GameDatas.IInventoryItemGameData, int>::.ctor | System.Func`2<ABH.Shared.BalancingData.BuyableShopOfferBalancingData, int>::.ctor | +13 other aliases
  6cd838:	mov    eax,DWORD PTR [esp+0x34]
  6cd83c:	mov    ecx,DWORD PTR [edi]
  6cd83e:	mov    ecx,DWORD PTR [ecx+0x50]
  6cd841:	mov    edx,DWORD PTR [esp+0x30]
  6cd845:	mov    DWORD PTR [ecx],edx
  6cd847:	mov    edx,DWORD PTR [edi]
  6cd849:	mov    ecx,DWORD PTR [edx+0x50]
  6cd84c:	mov    edx,DWORD PTR [ecx]
  6cd84e:	lea    ecx,[ebx+0x4a920]
  6cd854:	mov    ecx,DWORD PTR [ecx]
  6cd856:	mov    DWORD PTR [esp+0xc],ecx
  6cd85a:	mov    DWORD PTR [esp+0x8],edx
  6cd85e:	mov    DWORD PTR [esp+0x4],eax
  6cd862:	mov    DWORD PTR [esp],0x0
  6cd869:	call   9cb725  ; shared address: AOTHelper::Sum | AOTHelper::Sum
  6cd86e:	mov    edi,eax
  6cd870:	test   esi,esi
  6cd872:	je     6cde5e
  6cd878:	lea    eax,[ebx+0x45850]
  6cd87e:	mov    eax,DWORD PTR [eax]
  6cd880:	mov    ecx,DWORD PTR [esi]
  6cd882:	mov    DWORD PTR [esp+0x3c],esi
  6cd886:	movzx  edx,WORD PTR [ecx+0xaa]
  6cd88d:	test   edx,edx
  6cd88f:	je     6cd8a0
  6cd891:	mov    esi,DWORD PTR [ecx+0x4c]
  6cd894:	xor    ebx,ebx
  6cd896:	cmp    DWORD PTR [esi+ebx*8],eax
  6cd899:	je     6cd8be
  6cd89b:	inc    ebx
  6cd89c:	cmp    ebx,edx
  6cd89e:	jb     6cd896
  6cd8a0:	mov    DWORD PTR [esp+0x4],eax
  6cd8a4:	mov    esi,DWORD PTR [esp+0x3c]
  6cd8a8:	mov    DWORD PTR [esp],esi
  6cd8ab:	mov    DWORD PTR [esp+0x8],0x3
  6cd8b3:	mov    ebx,DWORD PTR [esp+0x44]
  6cd8b7:	call   1c1964
  6cd8bc:	jmp    6cd8d1
  6cd8be:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  6cd8c2:	lea    eax,[ecx+eax*8+0xcc]
  6cd8c9:	mov    ebx,DWORD PTR [esp+0x44]
  6cd8cd:	mov    esi,DWORD PTR [esp+0x3c]
  6cd8d1:	mov    ecx,DWORD PTR [eax+0x4]
  6cd8d4:	mov    DWORD PTR [esp+0x8],ecx
  6cd8d8:	mov    DWORD PTR [esp+0x4],edi
  6cd8dc:	mov    DWORD PTR [esp],esi
  6cd8df:	call   DWORD PTR [eax]
  6cd8e1:	lea    eax,[ebx+0x45820]
  6cd8e7:	mov    DWORD PTR [esp+0x30],eax
  6cd8eb:	mov    eax,DWORD PTR [eax]
  6cd8ed:	test   BYTE PTR [eax+0xb2],0x1
  6cd8f4:	je     6cd904
  6cd8f6:	cmp    DWORD PTR [eax+0x60],0x0
  6cd8fa:	jne    6cd904
  6cd8fc:	mov    DWORD PTR [esp],eax
  6cd8ff:	call   1db0b8
  6cd904:	mov    DWORD PTR [esp+0x4],0x0
  6cd90c:	mov    DWORD PTR [esp],0x0
  6cd913:	call   107cf95  ; DIContainerBalancing::get_Service
  6cd918:	mov    esi,eax
  6cd91a:	test   esi,esi
  6cd91c:	je     6cde5e
  6cd922:	lea    eax,[ebx+0x4a924]
  6cd928:	mov    eax,DWORD PTR [eax]
  6cd92a:	mov    DWORD PTR [esp+0x3c],eax
  6cd92e:	mov    ecx,DWORD PTR [eax+0xc]
  6cd931:	movzx  eax,WORD PTR [eax+0x2c]
  6cd935:	mov    DWORD PTR [esp+0x34],eax
  6cd939:	mov    ebx,DWORD PTR [esi]
  6cd93b:	movzx  eax,WORD PTR [ebx+0xaa]
  6cd942:	test   eax,eax
  6cd944:	je     6cd955
  6cd946:	mov    edi,DWORD PTR [ebx+0x4c]
  6cd949:	xor    edx,edx
  6cd94b:	cmp    DWORD PTR [edi+edx*8],ecx
  6cd94e:	je     6cd96f
  6cd950:	inc    edx
  6cd951:	cmp    edx,eax
  6cd953:	jb     6cd94b
  6cd955:	mov    eax,DWORD PTR [esp+0x34]
  6cd959:	mov    DWORD PTR [esp+0x8],eax
  6cd95d:	mov    DWORD PTR [esp+0x4],ecx
  6cd961:	mov    DWORD PTR [esp],esi
  6cd964:	mov    ebx,DWORD PTR [esp+0x44]
  6cd968:	call   1c1964
  6cd96d:	jmp    6cd982
  6cd96f:	mov    eax,DWORD PTR [esp+0x34]
  6cd973:	add    eax,DWORD PTR [edi+edx*8+0x4]
  6cd977:	lea    eax,[ebx+eax*8+0xb4]
  6cd97e:	mov    ebx,DWORD PTR [esp+0x44]
  6cd982:	mov    eax,DWORD PTR [eax+0x4]
  6cd985:	mov    ecx,DWORD PTR [esp+0x3c]
  6cd989:	mov    DWORD PTR [esp+0x4],ecx
  6cd98d:	mov    DWORD PTR [esp],eax
  6cd990:	call   1da450
  6cd995:	mov    DWORD PTR [esp+0x4],eax
  6cd999:	mov    DWORD PTR [esp],esi
  6cd99c:	call   DWORD PTR [eax]
  6cd99e:	mov    esi,eax
  6cd9a0:	test   esi,esi
  6cd9a2:	je     6cde5e
  6cd9a8:	lea    eax,[ebx+0x45e58]
  6cd9ae:	mov    eax,DWORD PTR [eax]
  6cd9b0:	mov    ecx,DWORD PTR [esi]
  6cd9b2:	movzx  edx,WORD PTR [ecx+0xaa]
  6cd9b9:	test   edx,edx
  6cd9bb:	je     6cd9cc
  6cd9bd:	mov    edi,DWORD PTR [ecx+0x4c]
  6cd9c0:	xor    ebx,ebx
  6cd9c2:	cmp    DWORD PTR [edi+ebx*8],eax
  6cd9c5:	je     6cd9e8
  6cd9c7:	inc    ebx
  6cd9c8:	cmp    ebx,edx
  6cd9ca:	jb     6cd9c2
  6cd9cc:	mov    DWORD PTR [esp+0x4],eax
  6cd9d0:	mov    DWORD PTR [esp],esi
  6cd9d3:	mov    DWORD PTR [esp+0x8],0x0
  6cd9db:	mov    ebx,DWORD PTR [esp+0x44]
  6cd9df:	call   1c1964
  6cd9e4:	mov    ecx,eax
  6cd9e6:	jmp    6cd9f7
  6cd9e8:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  6cd9ec:	lea    ecx,[ecx+eax*8+0xb4]
  6cd9f3:	mov    ebx,DWORD PTR [esp+0x44]
  6cd9f7:	mov    eax,DWORD PTR [ecx+0x4]
  6cd9fa:	mov    DWORD PTR [esp+0x4],eax
  6cd9fe:	mov    DWORD PTR [esp],esi
  6cda01:	call   DWORD PTR [ecx]
  6cda03:	mov    esi,eax
  6cda05:	mov    eax,DWORD PTR [esp+0x40]
  6cda09:	mov    eax,DWORD PTR [eax]
  6cda0b:	mov    DWORD PTR [esp+0x4],eax
  6cda0f:	mov    edi,DWORD PTR [ebp+0x8]
  6cda12:	mov    DWORD PTR [esp],edi
  6cda15:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cda1a:	test   eax,eax
  6cda1c:	je     6cde5e
  6cda22:	mov    DWORD PTR [esp],eax
  6cda25:	mov    DWORD PTR [esp+0x4],0x0
  6cda2d:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cda32:	cmp    esi,eax
  6cda34:	jle    6cdbe9
  6cda3a:	mov    esi,DWORD PTR [esp+0x40]
  6cda3e:	mov    eax,DWORD PTR [esi]
  6cda40:	mov    DWORD PTR [esp+0x4],eax
  6cda44:	mov    DWORD PTR [esp],edi
  6cda47:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cda4c:	mov    DWORD PTR [esp+0x34],eax
  6cda50:	mov    eax,DWORD PTR [esp+0x30]
  6cda54:	mov    eax,DWORD PTR [eax]
  6cda56:	test   BYTE PTR [eax+0xb2],0x1
  6cda5d:	je     6cda6d
  6cda5f:	cmp    DWORD PTR [eax+0x60],0x0
  6cda63:	jne    6cda6d
  6cda65:	mov    DWORD PTR [esp],eax
  6cda68:	call   1db0b8
  6cda6d:	mov    DWORD PTR [esp+0x4],0x0
  6cda75:	mov    DWORD PTR [esp],0x0
  6cda7c:	call   107cf95  ; DIContainerBalancing::get_Service
  6cda81:	mov    DWORD PTR [esp+0x3c],eax
  6cda85:	mov    eax,DWORD PTR [esi]
  6cda87:	mov    DWORD PTR [esp+0x4],eax
  6cda8b:	mov    DWORD PTR [esp],edi
  6cda8e:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cda93:	test   eax,eax
  6cda95:	je     6cde5e
  6cda9b:	mov    DWORD PTR [esp],eax
  6cda9e:	mov    DWORD PTR [esp+0x4],0x0
  6cdaa6:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cdaab:	mov    DWORD PTR [esp+0x54],eax
  6cdaaf:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6cdab5:	mov    eax,DWORD PTR [eax]
  6cdab7:	mov    DWORD PTR [esp+0x4],eax
  6cdabb:	lea    eax,[esp+0x54]
  6cdabf:	mov    DWORD PTR [esp],eax
  6cdac2:	mov    DWORD PTR [esp+0x8],0x0
  6cdaca:	call   fea004
  6cdacf:	mov    esi,eax
  6cdad1:	lea    eax,[ebx+0x430e4]
  6cdad7:	mov    eax,DWORD PTR [eax]
  6cdad9:	test   BYTE PTR [eax+0xb2],0x1
  6cdae0:	je     6cdaf0
  6cdae2:	cmp    DWORD PTR [eax+0x60],0x0
  6cdae6:	jne    6cdaf0
  6cdae8:	mov    DWORD PTR [esp],eax
  6cdaeb:	call   1db0b8
  6cdaf0:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  6cdaf6:	mov    eax,DWORD PTR [eax]
  6cdaf8:	mov    DWORD PTR [esp+0x8],esi
  6cdafc:	mov    DWORD PTR [esp+0x4],eax
  6cdb00:	mov    DWORD PTR [esp+0xc],0x0
  6cdb08:	mov    DWORD PTR [esp],0x0
  6cdb0f:	call   ca462a  ; System.String::Concat
  6cdb14:	mov    DWORD PTR [esp+0x30],eax
  6cdb18:	mov    edx,DWORD PTR [esp+0x3c]
  6cdb1c:	test   edx,edx
  6cdb1e:	je     6cde5e
  6cdb24:	lea    eax,[ebx+0x4a834]
  6cdb2a:	mov    edi,DWORD PTR [eax]
  6cdb2c:	mov    ecx,DWORD PTR [edi+0xc]
  6cdb2f:	movzx  eax,WORD PTR [edi+0x2c]
  6cdb33:	mov    DWORD PTR [esp+0x24],eax
  6cdb37:	mov    edx,DWORD PTR [edx]
  6cdb39:	movzx  esi,WORD PTR [edx+0xaa]
  6cdb40:	test   esi,esi
  6cdb42:	je     6cdb53
  6cdb44:	mov    eax,DWORD PTR [edx+0x4c]
  6cdb47:	xor    ebx,ebx
  6cdb49:	cmp    DWORD PTR [eax+ebx*8],ecx
  6cdb4c:	je     6cdb71
  6cdb4e:	inc    ebx
  6cdb4f:	cmp    ebx,esi
  6cdb51:	jb     6cdb49
  6cdb53:	mov    eax,DWORD PTR [esp+0x24]
  6cdb57:	mov    DWORD PTR [esp+0x8],eax
  6cdb5b:	mov    DWORD PTR [esp+0x4],ecx
  6cdb5f:	mov    esi,DWORD PTR [esp+0x3c]
  6cdb63:	mov    DWORD PTR [esp],esi
  6cdb66:	mov    ebx,DWORD PTR [esp+0x44]
  6cdb6a:	call   1c1964
  6cdb6f:	jmp    6cdb88
  6cdb71:	mov    ecx,DWORD PTR [esp+0x24]
  6cdb75:	add    ecx,DWORD PTR [eax+ebx*8+0x4]
  6cdb79:	lea    eax,[edx+ecx*8+0xb4]
  6cdb80:	mov    ebx,DWORD PTR [esp+0x44]
  6cdb84:	mov    esi,DWORD PTR [esp+0x3c]
  6cdb88:	mov    eax,DWORD PTR [eax+0x4]
  6cdb8b:	mov    DWORD PTR [esp+0x4],edi
  6cdb8f:	mov    DWORD PTR [esp],eax
  6cdb92:	call   1da450
  6cdb97:	mov    DWORD PTR [esp+0x8],eax
  6cdb9b:	mov    ecx,DWORD PTR [esp+0x30]
  6cdb9f:	mov    DWORD PTR [esp+0x4],ecx
  6cdba3:	mov    DWORD PTR [esp],esi
  6cdba6:	call   DWORD PTR [eax]
  6cdba8:	test   eax,eax
  6cdbaa:	je     6cde5e
  6cdbb0:	mov    DWORD PTR [esp],eax
  6cdbb3:	mov    DWORD PTR [esp+0x4],0x0
  6cdbbb:	call   1700ff4  ; ABH.Shared.BalancingData.ExperienceMasteryBalancingData::get_Experience
  6cdbc0:	mov    ecx,DWORD PTR [esp+0x34]
  6cdbc4:	test   ecx,ecx
  6cdbc6:	mov    edi,DWORD PTR [ebp+0x8]
  6cdbc9:	je     6cde5e
  6cdbcf:	cvtsi2ss xmm0,eax
  6cdbd3:	movss  DWORD PTR [esp+0x4],xmm0
  6cdbd9:	mov    DWORD PTR [esp],ecx
  6cdbdc:	mov    DWORD PTR [esp+0x8],0x0
  6cdbe4:	call   179bf16  ; ABH.Shared.Models.InventoryItems.ClassItemData::set_ExperienceForNextLevel
  6cdbe9:	mov    DWORD PTR [esp],edi
  6cdbec:	call   6cde68  ; ABH.GameDatas.ClassItemGameData::MasteryNeededForNextRank
  6cdbf1:	mov    DWORD PTR [esp+0x3c],eax
  6cdbf5:	mov    eax,DWORD PTR [esp+0x38]
  6cdbf9:	mov    eax,DWORD PTR [eax+0x58]
  6cdbfc:	test   eax,eax
  6cdbfe:	je     6cdc10
  6cdc00:	mov    DWORD PTR [esp],eax
  6cdc03:	mov    DWORD PTR [esp+0x4],0x0
  6cdc0b:	call   1717700  ; System.Action::Invoke
  6cdc10:	lea    eax,[ebx+0x44d10]
  6cdc16:	mov    eax,DWORD PTR [eax]
  6cdc18:	mov    DWORD PTR [esp],eax
  6cdc1b:	call   20bfb2
  6cdc20:	mov    esi,eax
  6cdc22:	lea    eax,[ebx+0x49298]
  6cdc28:	mov    eax,DWORD PTR [eax]
  6cdc2a:	mov    DWORD PTR [esp+0x4],eax
  6cdc2e:	mov    DWORD PTR [esp],esi
  6cdc31:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6cdc36:	lea    eax,[ebx+0x4a250]
  6cdc3c:	mov    eax,DWORD PTR [eax]
  6cdc3e:	mov    DWORD PTR [esp+0x4],eax
  6cdc42:	mov    DWORD PTR [esp],edi
  6cdc45:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6cdc4a:	test   eax,eax
  6cdc4c:	je     6cde5e
  6cdc52:	mov    DWORD PTR [esp],eax
  6cdc55:	mov    DWORD PTR [esp+0x4],0x0
  6cdc5d:	call   16ff1f7  ; ABH.Shared.BalancingData.ClassItemBalancingData::get_NameId
  6cdc62:	test   esi,esi
  6cdc64:	je     6cde5e
  6cdc6a:	lea    ecx,[ebx+0x51458]  ; literal "ClassName"
  6cdc70:	mov    ecx,DWORD PTR [ecx]
  6cdc72:	lea    edi,[ebx+0x4929c]
  6cdc78:	mov    edx,DWORD PTR [edi]
  6cdc7a:	mov    DWORD PTR [esp+0xc],edx
  6cdc7e:	mov    DWORD PTR [esp+0x8],eax
  6cdc82:	mov    DWORD PTR [esp+0x4],ecx
  6cdc86:	mov    DWORD PTR [esp],esi
  6cdc89:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  6cdc8e:	mov    eax,DWORD PTR [esp+0x40]
  6cdc92:	mov    eax,DWORD PTR [eax]
  6cdc94:	mov    DWORD PTR [esp+0x4],eax
  6cdc98:	mov    eax,DWORD PTR [ebp+0x8]
  6cdc9b:	mov    DWORD PTR [esp],eax
  6cdc9e:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cdca3:	test   eax,eax
  6cdca5:	je     6cde5e
  6cdcab:	mov    DWORD PTR [esp],eax
  6cdcae:	mov    DWORD PTR [esp+0x4],0x0
  6cdcb6:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cdcbb:	mov    DWORD PTR [esp+0x50],eax
  6cdcbf:	lea    eax,[ebx+0x508e0]  ; literal "0"
  6cdcc5:	mov    eax,DWORD PTR [eax]
  6cdcc7:	mov    DWORD PTR [esp+0x4],eax
  6cdccb:	lea    eax,[esp+0x50]
  6cdccf:	mov    DWORD PTR [esp],eax
  6cdcd2:	mov    DWORD PTR [esp+0x8],0x0
  6cdcda:	call   fea004
  6cdcdf:	lea    ecx,[ebx+0x57044]  ; literal "NewRank"
  6cdce5:	mov    ecx,DWORD PTR [ecx]
  6cdce7:	mov    edx,DWORD PTR [edi]
  6cdce9:	mov    DWORD PTR [esp+0xc],edx
  6cdced:	mov    DWORD PTR [esp+0x8],eax
  6cdcf1:	mov    DWORD PTR [esp+0x4],ecx
  6cdcf5:	mov    DWORD PTR [esp],esi
  6cdcf8:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  6cdcfd:	mov    DWORD PTR [esp+0x4],esi
  6cdd01:	mov    DWORD PTR [esp+0x8],0x0
  6cdd09:	mov    DWORD PTR [esp],0x0
  6cdd10:	call   af48fe  ; ABHAnalyticsHelper::AddPlayerStatusToTracking
  6cdd15:	mov    eax,DWORD PTR [esp+0x2c]
  6cdd19:	mov    eax,DWORD PTR [eax]
  6cdd1b:	test   BYTE PTR [eax+0xb2],0x1
  6cdd22:	je     6cdd32
  6cdd24:	cmp    DWORD PTR [eax+0x60],0x0
  6cdd28:	jne    6cdd32
  6cdd2a:	mov    DWORD PTR [esp],eax
  6cdd2d:	call   1db0b8
  6cdd32:	mov    DWORD PTR [esp+0x34],esi
  6cdd36:	mov    DWORD PTR [esp+0x8],0x0
  6cdd3e:	mov    DWORD PTR [esp+0x4],0x0
  6cdd46:	mov    DWORD PTR [esp],0x0
  6cdd4d:	call   1076512  ; DIContainerInfrastructure::GetAnalyticsSystem
  6cdd52:	mov    edi,eax
  6cdd54:	test   edi,edi
  6cdd56:	je     6cde5e
  6cdd5c:	lea    eax,[ebx+0x45e5c]
  6cdd62:	mov    eax,DWORD PTR [eax]
  6cdd64:	lea    ecx,[ebx+0x57048]  ; literal "MasteryRankUp"
  6cdd6a:	mov    ecx,DWORD PTR [ecx]
  6cdd6c:	mov    DWORD PTR [esp+0x30],ecx
  6cdd70:	mov    ecx,DWORD PTR [edi]
  6cdd72:	movzx  edx,WORD PTR [ecx+0xaa]
  6cdd79:	test   edx,edx
  6cdd7b:	je     6cdd8c
  6cdd7d:	mov    esi,DWORD PTR [ecx+0x4c]
  6cdd80:	xor    ebx,ebx
  6cdd82:	cmp    DWORD PTR [esi+ebx*8],eax
  6cdd85:	je     6cdda8
  6cdd87:	inc    ebx
  6cdd88:	cmp    ebx,edx
  6cdd8a:	jb     6cdd82
  6cdd8c:	mov    DWORD PTR [esp+0x4],eax
  6cdd90:	mov    DWORD PTR [esp],edi
  6cdd93:	mov    DWORD PTR [esp+0x8],0x4
  6cdd9b:	mov    ebx,DWORD PTR [esp+0x44]
  6cdd9f:	call   1c1964
  6cdda4:	mov    ecx,eax
  6cdda6:	jmp    6cddb7
  6cdda8:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  6cddac:	lea    ecx,[ecx+eax*8+0xd4]
  6cddb3:	mov    ebx,DWORD PTR [esp+0x44]
  6cddb7:	inc    DWORD PTR [esp+0x28]
  6cddbb:	mov    eax,DWORD PTR [ecx+0x4]
  6cddbe:	mov    DWORD PTR [esp+0x10],eax
  6cddc2:	mov    eax,DWORD PTR [esp+0x34]
  6cddc6:	mov    DWORD PTR [esp+0x8],eax
  6cddca:	mov    eax,DWORD PTR [esp+0x30]
  6cddce:	mov    DWORD PTR [esp+0x4],eax
  6cddd2:	mov    DWORD PTR [esp],edi
  6cddd5:	mov    DWORD PTR [esp+0xc],0x0
  6cdddd:	call   DWORD PTR [ecx]
  6cdddf:	mov    eax,DWORD PTR [esp+0x40]
  6cdde3:	mov    eax,DWORD PTR [eax]
  6cdde5:	mov    DWORD PTR [esp+0x4],eax
  6cdde9:	mov    edi,DWORD PTR [ebp+0x8]
  6cddec:	mov    DWORD PTR [esp],edi
  6cddef:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cddf4:	test   eax,eax
  6cddf6:	jne    6cd66e
  6cddfc:	jmp    6cde5e
  6cddfe:	mov    eax,DWORD PTR [esp+0x40]
  6cde02:	mov    eax,DWORD PTR [eax]
  6cde04:	mov    DWORD PTR [esp+0x4],eax
  6cde08:	mov    DWORD PTR [esp],edi
  6cde0b:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cde10:	test   eax,eax
  6cde12:	je     6cde5e
  6cde14:	mov    DWORD PTR [esp],eax
  6cde17:	mov    DWORD PTR [esp+0x4],0x0
  6cde1f:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cde24:	mov    esi,eax
  6cde26:	call   6ce0dd  ; ABH.GameDatas.ClassItemGameData::MasteryMaxRank
  6cde2b:	cmp    esi,eax
  6cde2d:	jne    6cde3f
  6cde2f:	mov    DWORD PTR [esp],edi
  6cde32:	mov    DWORD PTR [esp+0x4],0x0
  6cde3a:	call   6cd484  ; ABH.GameDatas.ClassItemGameData::set_ItemValue
  6cde3f:	cmp    DWORD PTR [esp+0x28],0x0
  6cde44:	jle    6cde56
  6cde46:	mov    eax,DWORD PTR [esp+0x20]
  6cde4a:	mov    DWORD PTR [esp+0x4],eax
  6cde4e:	mov    DWORD PTR [esp],edi
  6cde51:	call   6cc146  ; ABH.GameDatas.ClassItemGameData::RaiseRankUpFromLevel
  6cde56:	lea    esp,[ebp-0xc]
  6cde59:	pop    esi
  6cde5a:	pop    edi
  6cde5b:	pop    ebx
  6cde5c:	pop    ebp
  6cde5d:	ret
  6cde5e:	call   1fbc48
  6cde63:	call   6b106a