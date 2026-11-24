
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0120d5a7:
 120d5a7:	push   ebp
 120d5a8:	mov    ebp,esp
 120d5aa:	push   ebx
 120d5ab:	push   edi
 120d5ac:	push   esi
 120d5ad:	and    esp,0xfffffff0
 120d5b0:	sub    esp,0x40
 120d5b3:	call   120d5b8
 120d5b8:	pop    ebx
 120d5b9:	add    ebx,0xd0498c
 120d5bf:	mov    esi,DWORD PTR [ebp+0x8]
 120d5c2:	mov    al,BYTE PTR [ebx+0x6404c]
 120d5c8:	test   al,al
 120d5ca:	jne    120d5e3
 120d5cc:	lea    eax,[ebx-0x65f3b8]
 120d5d2:	mov    eax,DWORD PTR [eax]
 120d5d4:	mov    DWORD PTR [esp],eax
 120d5d7:	call   1ca6e8
 120d5dc:	mov    BYTE PTR [ebx+0x6404c],0x1
 120d5e3:	mov    DWORD PTR [esp+0x38],0x0
 120d5eb:	mov    DWORD PTR [esp],esi
 120d5ee:	call   120de93  ; PopupSingleBirdRevive::IsButtonAlreadyClickedThisFrame
 120d5f3:	test   al,al
 120d5f5:	jne    120de79
 120d5fb:	lea    eax,[ebx+0x45820]
 120d601:	mov    eax,DWORD PTR [eax]
 120d603:	test   BYTE PTR [eax+0xb2],0x1
 120d60a:	je     120d61a
 120d60c:	cmp    DWORD PTR [eax+0x60],0x0
 120d610:	jne    120d61a
 120d612:	mov    DWORD PTR [esp],eax
 120d615:	call   1db0b8
 120d61a:	mov    DWORD PTR [esp+0x4],0x0
 120d622:	mov    DWORD PTR [esp],0x0
 120d629:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
 120d62e:	test   eax,eax
 120d630:	je     120de83
 120d636:	mov    DWORD PTR [esp],eax
 120d639:	mov    DWORD PTR [esp+0x4],0x0
 120d641:	call   aba854  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_ReviveSingleBirdsRequirement
 120d646:	mov    DWORD PTR [esp+0x2c],eax
 120d64a:	mov    DWORD PTR [esp+0x4],0x0
 120d652:	mov    DWORD PTR [esp],0x0
 120d659:	call   10924ed  ; DIContainerLogic::get_RequirementService
 120d65e:	mov    edi,eax
 120d660:	lea    eax,[ebx+0x4584c]
 120d666:	mov    DWORD PTR [esp+0x24],eax
 120d66a:	mov    eax,DWORD PTR [eax]
 120d66c:	test   BYTE PTR [eax+0xb2],0x1
 120d673:	je     120d683
 120d675:	cmp    DWORD PTR [eax+0x60],0x0
 120d679:	jne    120d683
 120d67b:	mov    DWORD PTR [esp],eax
 120d67e:	call   1db0b8
 120d683:	mov    DWORD PTR [esp+0x4],0x0
 120d68b:	mov    DWORD PTR [esp],0x0
 120d692:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
 120d697:	test   eax,eax
 120d699:	je     120de83
 120d69f:	mov    DWORD PTR [esp],eax
 120d6a2:	mov    DWORD PTR [esp+0x4],0x0
 120d6aa:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
 120d6af:	mov    DWORD PTR [esp+0x20],eax
 120d6b3:	lea    eax,[ebx+0x4520c]
 120d6b9:	mov    eax,DWORD PTR [eax]
 120d6bb:	mov    DWORD PTR [esp],eax
 120d6be:	call   20bfb2
 120d6c3:	mov    esi,eax
 120d6c5:	lea    eax,[ebx+0x496c4]
 120d6cb:	mov    eax,DWORD PTR [eax]
 120d6cd:	mov    DWORD PTR [esp+0x4],eax
 120d6d1:	mov    DWORD PTR [esp],esi
 120d6d4:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 120d6d9:	test   esi,esi
 120d6db:	je     120de83
 120d6e1:	lea    eax,[ebx+0x496c8]
 120d6e7:	mov    eax,DWORD PTR [eax]
 120d6e9:	mov    DWORD PTR [esp+0x8],eax
 120d6ed:	mov    eax,DWORD PTR [esp+0x2c]
 120d6f1:	mov    DWORD PTR [esp+0x4],eax
 120d6f5:	mov    DWORD PTR [esp],esi
 120d6f8:	mov    DWORD PTR [esp+0x1c],esi
 120d6fc:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 120d701:	test   edi,edi
 120d703:	je     120de83
 120d709:	lea    eax,[ebx+0x45ef8]
 120d70f:	mov    eax,DWORD PTR [eax]
 120d711:	lea    ecx,[ebx+0x59070]  ; literal "revive_birds"
 120d717:	mov    DWORD PTR [esp+0x28],ebx
 120d71b:	mov    ecx,DWORD PTR [ecx]
 120d71d:	mov    DWORD PTR [esp+0x18],ecx
 120d721:	mov    ecx,DWORD PTR [edi]
 120d723:	mov    ebx,edi
 120d725:	movzx  edx,WORD PTR [ecx+0xaa]
 120d72c:	test   edx,edx
 120d72e:	je     120d73f
 120d730:	mov    edi,DWORD PTR [ecx+0x4c]
 120d733:	xor    esi,esi
 120d735:	cmp    DWORD PTR [edi+esi*8],eax
 120d738:	je     120d75d
 120d73a:	inc    esi
 120d73b:	cmp    esi,edx
 120d73d:	jb     120d735
 120d73f:	mov    DWORD PTR [esp+0x4],eax
 120d743:	mov    esi,ebx
 120d745:	mov    DWORD PTR [esp],esi
 120d748:	mov    DWORD PTR [esp+0x8],0x7
 120d750:	mov    ebx,DWORD PTR [esp+0x28]
 120d754:	call   1c1964
 120d759:	mov    ecx,eax
 120d75b:	jmp    120d76e
 120d75d:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 120d761:	lea    ecx,[ecx+eax*8+0xec]
 120d768:	mov    esi,ebx
 120d76a:	mov    ebx,DWORD PTR [esp+0x28]
 120d76e:	mov    eax,DWORD PTR [ecx+0x4]
 120d771:	mov    DWORD PTR [esp+0x10],eax
 120d775:	mov    eax,DWORD PTR [esp+0x18]
 120d779:	mov    DWORD PTR [esp+0xc],eax
 120d77d:	mov    eax,DWORD PTR [esp+0x1c]
 120d781:	mov    DWORD PTR [esp+0x8],eax
 120d785:	mov    eax,DWORD PTR [esp+0x20]
 120d789:	mov    DWORD PTR [esp+0x4],eax
 120d78d:	mov    DWORD PTR [esp],esi
 120d790:	call   DWORD PTR [ecx]
 120d792:	test   al,al
 120d794:	mov    eax,DWORD PTR [ebp+0x8]
 120d797:	mov    ecx,DWORD PTR [esp+0x2c]
 120d79b:	je     120d8a6
 120d7a1:	mov    eax,DWORD PTR [eax+0x14]
 120d7a4:	mov    DWORD PTR [esp+0x2c],eax
 120d7a8:	lea    eax,[ebx+0x4ecd8]
 120d7ae:	mov    edi,DWORD PTR [eax]
 120d7b0:	lea    eax,[ebx+0x457f4]
 120d7b6:	mov    eax,DWORD PTR [eax]
 120d7b8:	mov    DWORD PTR [esp],eax
 120d7bb:	call   20bfb2
 120d7c0:	mov    esi,eax
 120d7c2:	mov    DWORD PTR [esp+0x30],edi
 120d7c6:	mov    edi,DWORD PTR [ebp+0x8]
 120d7c9:	mov    eax,DWORD PTR [esp+0x30]
 120d7cd:	mov    DWORD PTR [esp+0x8],eax
 120d7d1:	mov    DWORD PTR [esp+0x4],edi
 120d7d5:	mov    DWORD PTR [esp],esi
 120d7d8:	mov    DWORD PTR [esp+0xc],0x0
 120d7e0:	call   17176df  ; System.Action::.ctor
 120d7e5:	mov    eax,DWORD PTR [esp+0x2c]
 120d7e9:	test   eax,eax
 120d7eb:	je     120de83
 120d7f1:	mov    DWORD PTR [esp+0x4],esi
 120d7f5:	mov    DWORD PTR [esp],eax
 120d7f8:	mov    DWORD PTR [esp+0x8],0x0
 120d800:	call   e8106b  ; UIInputTrigger::remove_Clicked
 120d805:	mov    eax,DWORD PTR [edi+0x2c]
 120d808:	test   eax,eax
 120d80a:	je     120de83
 120d810:	mov    ecx,DWORD PTR [edi+0x30]
 120d813:	mov    DWORD PTR [esp+0x4],ecx
 120d817:	mov    DWORD PTR [esp],eax
 120d81a:	mov    DWORD PTR [esp+0x8],0x0
 120d822:	mov    esi,ebx
 120d824:	call   9f5375  ; BattleMgrBase::ReviveBird
 120d829:	mov    eax,DWORD PTR [esp+0x24]
 120d82d:	mov    eax,DWORD PTR [eax]
 120d82f:	test   BYTE PTR [eax+0xb2],0x1
 120d836:	je     120d848
 120d838:	cmp    DWORD PTR [eax+0x60],0x0
 120d83c:	jne    120d848
 120d83e:	mov    DWORD PTR [esp],eax
 120d841:	mov    ebx,esi
 120d843:	call   1db0b8
 120d848:	mov    DWORD PTR [esp+0x4],0x0
 120d850:	mov    DWORD PTR [esp],0x0
 120d857:	mov    ebx,esi
 120d859:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 120d85e:	test   eax,eax
 120d860:	je     120de81
 120d866:	mov    eax,DWORD PTR [eax+0x2c]
 120d869:	test   eax,eax
 120d86b:	je     120de81
 120d871:	mov    DWORD PTR [esp],eax
 120d874:	mov    DWORD PTR [esp+0x4],0x0
 120d87c:	mov    ebx,esi
 120d87e:	call   154acdc  ; GenericUIStateMgr::UpdateLuckyCoinsBar
 120d883:	fstp   st(0)
 120d885:	mov    DWORD PTR [esp],edi
 120d888:	call   120df04  ; PopupSingleBirdRevive::LeaveCoroutine
 120d88d:	mov    DWORD PTR [esp+0x4],eax
 120d891:	mov    DWORD PTR [esp],edi
 120d894:	mov    DWORD PTR [esp+0x8],0x0
 120d89c:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
 120d8a1:	jmp    120de79
 120d8a6:	test   ecx,ecx
 120d8a8:	je     120de2b
 120d8ae:	mov    DWORD PTR [esp],ecx
 120d8b1:	mov    DWORD PTR [esp+0x4],0x0
 120d8b9:	call   179b52e  ; ABH.Shared.Models.Generic.Requirement::get_RequirementType
 120d8be:	cmp    eax,0x1
 120d8c1:	jne    120de2b
 120d8c7:	mov    DWORD PTR [esp+0x38],0x0
 120d8cf:	mov    DWORD PTR [esp+0x4],0x0
 120d8d7:	mov    DWORD PTR [esp],0x0
 120d8de:	call   106b137  ; DIContainerLogic::get_InventoryService
 120d8e3:	mov    esi,eax
 120d8e5:	mov    eax,DWORD PTR [esp+0x24]
 120d8e9:	mov    eax,DWORD PTR [eax]
 120d8eb:	test   BYTE PTR [eax+0xb2],0x1
 120d8f2:	je     120d902
 120d8f4:	cmp    DWORD PTR [eax+0x60],0x0
 120d8f8:	jne    120d902
 120d8fa:	mov    DWORD PTR [esp],eax
 120d8fd:	call   1db0b8
 120d902:	mov    DWORD PTR [esp+0x4],0x0
 120d90a:	mov    DWORD PTR [esp],0x0
 120d911:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
 120d916:	test   eax,eax
 120d918:	je     120de83
 120d91e:	mov    DWORD PTR [esp],eax
 120d921:	mov    DWORD PTR [esp+0x4],0x0
 120d929:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
 120d92e:	mov    edi,eax
 120d930:	mov    eax,DWORD PTR [esp+0x2c]
 120d934:	mov    DWORD PTR [esp],eax
 120d937:	mov    DWORD PTR [esp+0x4],0x0
 120d93f:	call   179b551  ; ABH.Shared.Models.Generic.Requirement::get_NameId
 120d944:	test   esi,esi
 120d946:	je     120de83
 120d94c:	lea    ecx,[esp+0x38]
 120d950:	mov    DWORD PTR [esp+0xc],ecx
 120d954:	mov    DWORD PTR [esp+0x8],eax
 120d958:	mov    DWORD PTR [esp+0x4],edi
 120d95c:	mov    DWORD PTR [esp],esi
 120d95f:	mov    DWORD PTR [esp+0x10],0x0
 120d967:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
 120d96c:	test   al,al
 120d96e:	je     120de2b
 120d974:	mov    esi,DWORD PTR [esp+0x38]
 120d978:	test   esi,esi
 120d97a:	je     120de83
 120d980:	lea    eax,[ebx+0x45854]
 120d986:	mov    DWORD PTR [esp+0x2c],eax
 120d98a:	mov    eax,DWORD PTR [eax]
 120d98c:	mov    ebx,DWORD PTR [esi]
 120d98e:	movzx  edx,WORD PTR [ebx+0xaa]
 120d995:	test   edx,edx
 120d997:	je     120d9a8
 120d999:	mov    edi,DWORD PTR [ebx+0x4c]
 120d99c:	xor    ecx,ecx
 120d99e:	cmp    DWORD PTR [edi+ecx*8],eax
 120d9a1:	je     120d9c4
 120d9a3:	inc    ecx
 120d9a4:	cmp    ecx,edx
 120d9a6:	jb     120d99e
 120d9a8:	mov    DWORD PTR [esp+0x4],eax
 120d9ac:	mov    DWORD PTR [esp],esi
 120d9af:	mov    DWORD PTR [esp+0x8],0x0
 120d9b7:	mov    ebx,DWORD PTR [esp+0x28]
 120d9bb:	call   1c1964
 120d9c0:	mov    ecx,eax
 120d9c2:	jmp    120d9d3
 120d9c4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 120d9c8:	lea    ecx,[ebx+eax*8+0xb4]
 120d9cf:	mov    ebx,DWORD PTR [esp+0x28]
 120d9d3:	mov    eax,DWORD PTR [ecx+0x4]
 120d9d6:	mov    DWORD PTR [esp+0x4],eax
 120d9da:	mov    DWORD PTR [esp],esi
 120d9dd:	call   DWORD PTR [ecx]
 120d9df:	mov    esi,eax
 120d9e1:	test   esi,esi
 120d9e3:	je     120de83
 120d9e9:	lea    eax,[ebx+0x45858]
 120d9ef:	mov    DWORD PTR [esp+0x20],eax
 120d9f3:	mov    eax,DWORD PTR [eax]
 120d9f5:	mov    ebx,DWORD PTR [esi]
 120d9f7:	movzx  edx,WORD PTR [ebx+0xaa]
 120d9fe:	test   edx,edx
 120da00:	je     120da11
 120da02:	mov    edi,DWORD PTR [ebx+0x4c]
 120da05:	xor    ecx,ecx
 120da07:	cmp    DWORD PTR [edi+ecx*8],eax
 120da0a:	je     120da2d
 120da0c:	inc    ecx
 120da0d:	cmp    ecx,edx
 120da0f:	jb     120da07
 120da11:	mov    DWORD PTR [esp+0x4],eax
 120da15:	mov    DWORD PTR [esp],esi
 120da18:	mov    DWORD PTR [esp+0x8],0x0
 120da20:	mov    ebx,DWORD PTR [esp+0x28]
 120da24:	call   1c1964
 120da29:	mov    ecx,eax
 120da2b:	jmp    120da3c
 120da2d:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 120da31:	lea    ecx,[ebx+eax*8+0xb4]
 120da38:	mov    ebx,DWORD PTR [esp+0x28]
 120da3c:	mov    eax,DWORD PTR [ecx+0x4]
 120da3f:	mov    DWORD PTR [esp+0x4],eax
 120da43:	mov    DWORD PTR [esp],esi
 120da46:	call   DWORD PTR [ecx]
 120da48:	mov    esi,eax
 120da4a:	lea    edi,[ebx+0x430e4]
 120da50:	mov    eax,DWORD PTR [edi]
 120da52:	test   BYTE PTR [eax+0xb2],0x1
 120da59:	je     120da69
 120da5b:	cmp    DWORD PTR [eax+0x60],0x0
 120da5f:	jne    120da69
 120da61:	mov    DWORD PTR [esp],eax
 120da64:	call   1db0b8
 120da69:	mov    DWORD PTR [esp+0x28],ebx
 120da6d:	lea    eax,[ebx+0x56af4]  ; literal "lucky_coin"
 120da73:	mov    eax,DWORD PTR [eax]
 120da75:	mov    DWORD PTR [esp+0x8],eax
 120da79:	mov    DWORD PTR [esp+0x4],esi
 120da7d:	mov    DWORD PTR [esp+0xc],0x0
 120da85:	mov    DWORD PTR [esp],0x0
 120da8c:	call   ca24cf  ; System.String::op_Equality
 120da91:	test   al,al
 120da93:	je     120db04
 120da95:	mov    eax,DWORD PTR [esp+0x24]
 120da99:	mov    eax,DWORD PTR [eax]
 120da9b:	test   BYTE PTR [eax+0xb2],0x1
 120daa2:	mov    ebx,DWORD PTR [esp+0x28]
 120daa6:	je     120dab6
 120daa8:	cmp    DWORD PTR [eax+0x60],0x0
 120daac:	jne    120dab6
 120daae:	mov    DWORD PTR [esp],eax
 120dab1:	call   1db0b8
 120dab6:	mov    DWORD PTR [esp+0x4],0x0
 120dabe:	mov    DWORD PTR [esp],0x0
 120dac5:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 120daca:	test   eax,eax
 120dacc:	je     120de83
 120dad2:	mov    eax,DWORD PTR [eax+0x2c]
 120dad5:	test   eax,eax
 120dad7:	je     120de83
 120dadd:	mov    eax,DWORD PTR [eax+0x24]
 120dae0:	test   eax,eax
 120dae2:	je     120de83
 120dae8:	lea    ecx,[ebx+0x4bf38]
 120daee:	mov    ecx,DWORD PTR [ecx]
 120daf0:	mov    DWORD PTR [esp+0x8],ecx
 120daf4:	mov    DWORD PTR [esp],eax
 120daf7:	mov    DWORD PTR [esp+0x4],0x1
 120daff:	jmp    120ddff
 120db04:	mov    DWORD PTR [esp+0x1c],edi
 120db08:	mov    esi,DWORD PTR [esp+0x38]
 120db0c:	test   esi,esi
 120db0e:	je     120de8d
 120db14:	mov    eax,DWORD PTR [esp+0x2c]
 120db18:	mov    eax,DWORD PTR [eax]
 120db1a:	mov    ebx,DWORD PTR [esi]
 120db1c:	movzx  edx,WORD PTR [ebx+0xaa]
 120db23:	test   edx,edx
 120db25:	je     120db36
 120db27:	mov    edi,DWORD PTR [ebx+0x4c]
 120db2a:	xor    ecx,ecx
 120db2c:	cmp    DWORD PTR [edi+ecx*8],eax
 120db2f:	je     120db52
 120db31:	inc    ecx
 120db32:	cmp    ecx,edx
 120db34:	jb     120db2c
 120db36:	mov    DWORD PTR [esp+0x4],eax
 120db3a:	mov    DWORD PTR [esp],esi
 120db3d:	mov    DWORD PTR [esp+0x8],0x0
 120db45:	mov    ebx,DWORD PTR [esp+0x28]
 120db49:	call   1c1964
 120db4e:	mov    ecx,eax
 120db50:	jmp    120db61
 120db52:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 120db56:	lea    ecx,[ebx+eax*8+0xb4]
 120db5d:	mov    ebx,DWORD PTR [esp+0x28]
 120db61:	mov    eax,DWORD PTR [ecx+0x4]
 120db64:	mov    DWORD PTR [esp+0x4],eax
 120db68:	mov    DWORD PTR [esp],esi
 120db6b:	call   DWORD PTR [ecx]
 120db6d:	mov    esi,eax
 120db6f:	test   esi,esi
 120db71:	je     120de8d
 120db77:	mov    eax,DWORD PTR [esp+0x20]
 120db7b:	mov    eax,DWORD PTR [eax]
 120db7d:	mov    ebx,DWORD PTR [esi]
 120db7f:	movzx  edx,WORD PTR [ebx+0xaa]
 120db86:	test   edx,edx
 120db88:	je     120db99
 120db8a:	mov    edi,DWORD PTR [ebx+0x4c]
 120db8d:	xor    ecx,ecx
 120db8f:	cmp    DWORD PTR [edi+ecx*8],eax
 120db92:	je     120dbb5
 120db94:	inc    ecx
 120db95:	cmp    ecx,edx
 120db97:	jb     120db8f
 120db99:	mov    DWORD PTR [esp+0x4],eax
 120db9d:	mov    DWORD PTR [esp],esi
 120dba0:	mov    DWORD PTR [esp+0x8],0x0
 120dba8:	mov    ebx,DWORD PTR [esp+0x28]
 120dbac:	call   1c1964
 120dbb1:	mov    ecx,eax
 120dbb3:	jmp    120dbc4
 120dbb5:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 120dbb9:	lea    ecx,[ebx+eax*8+0xb4]
 120dbc0:	mov    ebx,DWORD PTR [esp+0x28]
 120dbc4:	mov    eax,DWORD PTR [ecx+0x4]
 120dbc7:	mov    DWORD PTR [esp+0x4],eax
 120dbcb:	mov    DWORD PTR [esp],esi
 120dbce:	call   DWORD PTR [ecx]
 120dbd0:	mov    esi,eax
 120dbd2:	mov    eax,DWORD PTR [esp+0x1c]
 120dbd6:	mov    eax,DWORD PTR [eax]
 120dbd8:	test   BYTE PTR [eax+0xb2],0x1
 120dbdf:	je     120dbef
 120dbe1:	cmp    DWORD PTR [eax+0x60],0x0
 120dbe5:	jne    120dbef
 120dbe7:	mov    DWORD PTR [esp],eax
 120dbea:	call   1db0b8
 120dbef:	lea    eax,[ebx+0x56af0]  ; literal "gold"
 120dbf5:	mov    eax,DWORD PTR [eax]
 120dbf7:	mov    DWORD PTR [esp+0x8],eax
 120dbfb:	mov    DWORD PTR [esp+0x4],esi
 120dbff:	mov    DWORD PTR [esp+0xc],0x0
 120dc07:	mov    DWORD PTR [esp],0x0
 120dc0e:	call   ca24cf  ; System.String::op_Equality
 120dc13:	test   al,al
 120dc15:	je     120dc82
 120dc17:	mov    eax,DWORD PTR [esp+0x24]
 120dc1b:	mov    eax,DWORD PTR [eax]
 120dc1d:	test   BYTE PTR [eax+0xb2],0x1
 120dc24:	je     120dc34
 120dc26:	cmp    DWORD PTR [eax+0x60],0x0
 120dc2a:	jne    120dc34
 120dc2c:	mov    DWORD PTR [esp],eax
 120dc2f:	call   1db0b8
 120dc34:	mov    DWORD PTR [esp+0x4],0x0
 120dc3c:	mov    DWORD PTR [esp],0x0
 120dc43:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 120dc48:	test   eax,eax
 120dc4a:	je     120de83
 120dc50:	mov    eax,DWORD PTR [eax+0x2c]
 120dc53:	test   eax,eax
 120dc55:	je     120de83
 120dc5b:	mov    eax,DWORD PTR [eax+0x24]
 120dc5e:	test   eax,eax
 120dc60:	je     120de83
 120dc66:	lea    ecx,[ebx+0x4bf38]
 120dc6c:	mov    ecx,DWORD PTR [ecx]
 120dc6e:	mov    DWORD PTR [esp+0x8],ecx
 120dc72:	mov    DWORD PTR [esp],eax
 120dc75:	mov    DWORD PTR [esp+0x4],0x0
 120dc7d:	jmp    120ddff
 120dc82:	mov    esi,DWORD PTR [esp+0x38]
 120dc86:	test   esi,esi
 120dc88:	je     120de8d
 120dc8e:	mov    eax,DWORD PTR [esp+0x2c]
 120dc92:	mov    eax,DWORD PTR [eax]
 120dc94:	mov    ebx,DWORD PTR [esi]
 120dc96:	movzx  edx,WORD PTR [ebx+0xaa]
 120dc9d:	test   edx,edx
 120dc9f:	je     120dcb0
 120dca1:	mov    edi,DWORD PTR [ebx+0x4c]
 120dca4:	xor    ecx,ecx
 120dca6:	cmp    DWORD PTR [edi+ecx*8],eax
 120dca9:	je     120dccc
 120dcab:	inc    ecx
 120dcac:	cmp    ecx,edx
 120dcae:	jb     120dca6
 120dcb0:	mov    DWORD PTR [esp+0x4],eax
 120dcb4:	mov    DWORD PTR [esp],esi
 120dcb7:	mov    DWORD PTR [esp+0x8],0x0
 120dcbf:	mov    ebx,DWORD PTR [esp+0x28]
 120dcc3:	call   1c1964
 120dcc8:	mov    ecx,eax
 120dcca:	jmp    120dcdb
 120dccc:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 120dcd0:	lea    ecx,[ebx+eax*8+0xb4]
 120dcd7:	mov    ebx,DWORD PTR [esp+0x28]
 120dcdb:	mov    DWORD PTR [esp+0x28],ebx
 120dcdf:	mov    eax,DWORD PTR [ecx+0x4]
 120dce2:	mov    DWORD PTR [esp+0x4],eax
 120dce6:	mov    DWORD PTR [esp],esi
 120dce9:	call   DWORD PTR [ecx]
 120dceb:	mov    esi,eax
 120dced:	test   esi,esi
 120dcef:	je     120de8d
 120dcf5:	mov    eax,DWORD PTR [esp+0x20]
 120dcf9:	mov    eax,DWORD PTR [eax]
 120dcfb:	mov    ebx,DWORD PTR [esi]
 120dcfd:	movzx  edx,WORD PTR [ebx+0xaa]
 120dd04:	test   edx,edx
 120dd06:	je     120dd17
 120dd08:	mov    edi,DWORD PTR [ebx+0x4c]
 120dd0b:	xor    ecx,ecx
 120dd0d:	cmp    DWORD PTR [edi+ecx*8],eax
 120dd10:	je     120dd33
 120dd12:	inc    ecx
 120dd13:	cmp    ecx,edx
 120dd15:	jb     120dd0d
 120dd17:	mov    DWORD PTR [esp+0x4],eax
 120dd1b:	mov    DWORD PTR [esp],esi
 120dd1e:	mov    DWORD PTR [esp+0x8],0x0
 120dd26:	mov    ebx,DWORD PTR [esp+0x28]
 120dd2a:	call   1c1964
 120dd2f:	mov    ecx,eax
 120dd31:	jmp    120dd42
 120dd33:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 120dd37:	lea    ecx,[ebx+eax*8+0xb4]
 120dd3e:	mov    ebx,DWORD PTR [esp+0x28]
 120dd42:	mov    eax,DWORD PTR [ecx+0x4]
 120dd45:	mov    DWORD PTR [esp+0x4],eax
 120dd49:	mov    DWORD PTR [esp],esi
 120dd4c:	call   DWORD PTR [ecx]
 120dd4e:	mov    esi,eax
 120dd50:	mov    eax,DWORD PTR [esp+0x1c]
 120dd54:	mov    eax,DWORD PTR [eax]
 120dd56:	test   BYTE PTR [eax+0xb2],0x1
 120dd5d:	je     120dd6d
 120dd5f:	cmp    DWORD PTR [eax+0x60],0x0
 120dd63:	jne    120dd6d
 120dd65:	mov    DWORD PTR [esp],eax
 120dd68:	call   1db0b8
 120dd6d:	lea    eax,[ebx+0x56ae4]  ; literal "friendship_essence"
 120dd73:	mov    eax,DWORD PTR [eax]
 120dd75:	mov    DWORD PTR [esp+0x8],eax
 120dd79:	mov    DWORD PTR [esp+0x4],esi
 120dd7d:	mov    DWORD PTR [esp+0xc],0x0
 120dd85:	mov    DWORD PTR [esp],0x0
 120dd8c:	call   ca24cf  ; System.String::op_Equality
 120dd91:	test   al,al
 120dd93:	je     120de2b
 120dd99:	mov    eax,DWORD PTR [esp+0x24]
 120dd9d:	mov    eax,DWORD PTR [eax]
 120dd9f:	test   BYTE PTR [eax+0xb2],0x1
 120dda6:	je     120ddb6
 120dda8:	cmp    DWORD PTR [eax+0x60],0x0
 120ddac:	jne    120ddb6
 120ddae:	mov    DWORD PTR [esp],eax
 120ddb1:	call   1db0b8
 120ddb6:	mov    DWORD PTR [esp+0x4],0x0
 120ddbe:	mov    DWORD PTR [esp],0x0
 120ddc5:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 120ddca:	test   eax,eax
 120ddcc:	je     120de83
 120ddd2:	mov    eax,DWORD PTR [eax+0x2c]
 120ddd5:	test   eax,eax
 120ddd7:	je     120de83
 120dddd:	mov    eax,DWORD PTR [eax+0x24]
 120dde0:	test   eax,eax
 120dde2:	je     120de83
 120dde8:	lea    ecx,[ebx+0x4bf38]
 120ddee:	mov    ecx,DWORD PTR [ecx]
 120ddf0:	mov    DWORD PTR [esp+0x8],ecx
 120ddf4:	mov    DWORD PTR [esp],eax
 120ddf7:	mov    DWORD PTR [esp+0x4],0x2
 120ddff:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 120de04:	test   eax,eax
 120de06:	je     120de83
 120de08:	mov    eax,DWORD PTR [eax+0x8]
 120de0b:	test   eax,eax
 120de0d:	je     120de83
 120de0f:	lea    ecx,[ebx+0x57d4c]  ; literal "Standard"
 120de15:	mov    ecx,DWORD PTR [ecx]
 120de17:	mov    DWORD PTR [esp+0x4],ecx
 120de1b:	mov    DWORD PTR [esp],eax
 120de1e:	mov    DWORD PTR [esp+0x8],0x0
 120de26:	call   d93786  ; CoinBarController::SwitchToShop
 120de2b:	mov    eax,DWORD PTR [esp+0x24]
 120de2f:	mov    eax,DWORD PTR [eax]
 120de31:	test   BYTE PTR [eax+0xb2],0x1
 120de38:	je     120de48
 120de3a:	cmp    DWORD PTR [eax+0x60],0x0
 120de3e:	jne    120de48
 120de40:	mov    DWORD PTR [esp],eax
 120de43:	call   1db0b8
 120de48:	mov    DWORD PTR [esp+0x4],0x0
 120de50:	mov    DWORD PTR [esp],0x0
 120de57:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 120de5c:	test   eax,eax
 120de5e:	je     120de83
 120de60:	mov    eax,DWORD PTR [eax+0x2c]
 120de63:	test   eax,eax
 120de65:	je     120de83
 120de67:	mov    DWORD PTR [esp],eax
 120de6a:	mov    DWORD PTR [esp+0x4],0x0
 120de72:	call   154acdc  ; GenericUIStateMgr::UpdateLuckyCoinsBar
 120de77:	fstp   st(0)
 120de79:	lea    esp,[ebp-0xc]
 120de7c:	pop    esi
 120de7d:	pop    edi
 120de7e:	pop    ebx
 120de7f:	pop    ebp
 120de80:	ret
 120de81:	mov    ebx,esi
 120de83:	call   1fbc48
 120de88:	call   11ebdbf
 120de8d:	mov    ebx,DWORD PTR [esp+0x28]
 120de91:	jmp    120de83