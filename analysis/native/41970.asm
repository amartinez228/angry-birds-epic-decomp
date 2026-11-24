
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057d5ce:
  57d5ce:	push   ebp
  57d5cf:	mov    ebp,esp
  57d5d1:	push   ebx
  57d5d2:	push   edi
  57d5d3:	push   esi
  57d5d4:	and    esp,0xfffffff0
  57d5d7:	sub    esp,0x60
  57d5da:	call   57d5df
  57d5df:	pop    ebx
  57d5e0:	add    ebx,0x1994965
  57d5e6:	mov    edi,DWORD PTR [ebp+0x1c]
  57d5e9:	mov    al,BYTE PTR [ebx+0x5d745]
  57d5ef:	test   al,al
  57d5f1:	jne    57d60a
  57d5f3:	lea    eax,[ebx-0x6627cc]
  57d5f9:	mov    eax,DWORD PTR [eax]
  57d5fb:	mov    DWORD PTR [esp],eax
  57d5fe:	call   1ca6e8
  57d603:	mov    BYTE PTR [ebx+0x5d745],0x1
  57d60a:	mov    DWORD PTR [esp+0x54],0x0
  57d612:	mov    DWORD PTR [esp+0x50],0x0
  57d61a:	mov    DWORD PTR [esp+0x4c],0x0
  57d622:	test   edi,edi
  57d624:	je     57d92e
  57d62a:	mov    DWORD PTR [esp],edi
  57d62d:	mov    DWORD PTR [esp+0x4],0x0
  57d635:	call   179b362  ; ABH.Shared.Models.Generic.LootTableEntry::get_NameId
  57d63a:	test   eax,eax
  57d63c:	je     57d832
  57d642:	mov    DWORD PTR [esp],edi
  57d645:	mov    DWORD PTR [esp+0x4],0x0
  57d64d:	call   179b3f2  ; ABH.Shared.Models.Generic.LootTableEntry::get_BaseValue
  57d652:	mov    esi,eax
  57d654:	mov    DWORD PTR [esp],edi
  57d657:	mov    DWORD PTR [esp+0x4],0x0
  57d65f:	call   179b415  ; ABH.Shared.Models.Generic.LootTableEntry::get_Span
  57d664:	inc    eax
  57d665:	mov    DWORD PTR [esp+0x8],eax
  57d669:	mov    DWORD PTR [esp+0xc],0x0
  57d671:	mov    DWORD PTR [esp+0x4],0x0
  57d679:	mov    DWORD PTR [esp],0x0
  57d680:	call   167eb06  ; UnityEngine.Random::Range
  57d685:	add    eax,esi
  57d687:	mov    DWORD PTR [esp+0x8],eax
  57d68b:	mov    DWORD PTR [esp+0xc],0x0
  57d693:	mov    DWORD PTR [esp+0x4],0x0
  57d69b:	mov    DWORD PTR [esp],0x0
  57d6a2:	call   1248534  ; System.Math::Max
  57d6a7:	cvtsi2ss xmm0,eax
  57d6ab:	movss  DWORD PTR [esp+0x3c],xmm0
  57d6b1:	mov    DWORD PTR [esp],edi
  57d6b4:	mov    DWORD PTR [esp+0x4],0x0
  57d6bc:	call   179b362  ; ABH.Shared.Models.Generic.LootTableEntry::get_NameId
  57d6c1:	cvttss2si ecx,DWORD PTR [esp+0x3c]
  57d6c7:	lea    edx,[ebx+0x499e4]
  57d6cd:	mov    edx,DWORD PTR [edx]
  57d6cf:	mov    DWORD PTR [esp+0xc],edx
  57d6d3:	mov    DWORD PTR [esp+0x8],ecx
  57d6d7:	mov    DWORD PTR [esp+0x4],eax
  57d6db:	lea    eax,[esp+0x50]
  57d6df:	mov    DWORD PTR [esp],eax
  57d6e2:	call   16ab713
  57d6e7:	mov    DWORD PTR [esp],edi
  57d6ea:	mov    DWORD PTR [esp+0x4],0x0
  57d6f2:	call   179b438  ; ABH.Shared.Models.Generic.LootTableEntry::get_CurrentPlayerLevelDelta
  57d6f7:	mov    DWORD PTR [esp+0x3c],eax
  57d6fb:	mov    DWORD PTR [esp+0x4c],0x0
  57d703:	lea    eax,[ebx+0x45820]
  57d709:	mov    eax,DWORD PTR [eax]
  57d70b:	test   BYTE PTR [eax+0xb2],0x1
  57d712:	je     57d722
  57d714:	cmp    DWORD PTR [eax+0x60],0x0
  57d718:	jne    57d722
  57d71a:	mov    DWORD PTR [esp],eax
  57d71d:	call   1db0b8
  57d722:	mov    DWORD PTR [esp+0x4],0x0
  57d72a:	mov    DWORD PTR [esp],0x0
  57d731:	call   1089c7f  ; DIContainerBalancing::get_LootTableBalancingDataPovider
  57d736:	mov    edi,eax
  57d738:	lea    eax,[ebx+0x499dc]
  57d73e:	mov    DWORD PTR [esp+0x38],eax
  57d742:	mov    eax,DWORD PTR [eax]
  57d744:	mov    DWORD PTR [esp+0x4],eax
  57d748:	lea    eax,[esp+0x50]
  57d74c:	mov    DWORD PTR [esp],eax
  57d74f:	call   16ab7a2
  57d754:	test   edi,edi
  57d756:	je     57d92e
  57d75c:	mov    esi,DWORD PTR [esp+0x3c]
  57d760:	add    esi,DWORD PTR [ebp+0xc]
  57d763:	lea    ecx,[esp+0x4c]
  57d767:	mov    DWORD PTR [esp+0x8],ecx
  57d76b:	mov    DWORD PTR [esp+0x4],eax
  57d76f:	mov    DWORD PTR [esp],edi
  57d772:	mov    DWORD PTR [esp+0xc],0x0
  57d77a:	call   abdae6  ; ABH.Shared.BalancingData.LootTableBalancingDataProvider::TryGetBalancingData
  57d77f:	test   al,al
  57d781:	je     57d8a4
  57d787:	mov    edi,DWORD PTR [ebp+0x14]
  57d78a:	inc    edi
  57d78b:	mov    eax,DWORD PTR [esp+0x50]
  57d78f:	mov    DWORD PTR [esp+0x3c],eax
  57d793:	mov    eax,DWORD PTR [esp+0x54]
  57d797:	mov    DWORD PTR [esp+0x38],eax
  57d79b:	mov    DWORD PTR [esp+0x8],esi
  57d79f:	mov    DWORD PTR [esp+0xc],0x0
  57d7a7:	mov    DWORD PTR [esp+0x4],0x0
  57d7af:	mov    DWORD PTR [esp],0x0
  57d7b6:	call   1248534  ; System.Math::Max
  57d7bb:	mov    esi,eax
  57d7bd:	lea    eax,[ebx+0x499e0]
  57d7c3:	mov    eax,DWORD PTR [eax]
  57d7c5:	mov    DWORD PTR [esp+0x4],eax
  57d7c9:	lea    eax,[esp+0x50]
  57d7cd:	mov    DWORD PTR [esp],eax
  57d7d0:	call   16ab7d4
  57d7d5:	mov    ecx,DWORD PTR [esp+0x38]
  57d7d9:	mov    DWORD PTR [esp+0x44],ecx
  57d7dd:	mov    ecx,DWORD PTR [esp+0x3c]
  57d7e1:	mov    DWORD PTR [esp+0x40],ecx
  57d7e5:	mov    ecx,DWORD PTR [ebp+0x20]
  57d7e8:	mov    DWORD PTR [esp+0x20],ecx
  57d7ec:	mov    ecx,DWORD PTR [ebp+0x18]
  57d7ef:	mov    DWORD PTR [esp+0x1c],ecx
  57d7f3:	mov    DWORD PTR [esp+0x18],edi
  57d7f7:	mov    ecx,DWORD PTR [ebp+0x10]
  57d7fa:	mov    DWORD PTR [esp+0x14],ecx
  57d7fe:	mov    DWORD PTR [esp+0x10],eax
  57d802:	mov    DWORD PTR [esp+0xc],esi
  57d806:	movsd  xmm0,QWORD PTR [esp+0x40]
  57d80c:	movsd  QWORD PTR [esp+0x4],xmm0
  57d812:	mov    eax,DWORD PTR [ebp+0x8]
  57d815:	mov    DWORD PTR [esp],eax
  57d818:	mov    DWORD PTR [esp+0x28],0x0
  57d820:	mov    DWORD PTR [esp+0x24],0x0
  57d828:	call   57c4df  ; ABH.Services.Logic.LootOperations::GenerateLootRecursive
  57d82d:	jmp    57d926
  57d832:	mov    DWORD PTR [esp],edi
  57d835:	mov    DWORD PTR [esp+0x4],0x0
  57d83d:	call   179b362  ; ABH.Shared.Models.Generic.LootTableEntry::get_NameId
  57d842:	mov    esi,eax
  57d844:	lea    eax,[ebx+0x430e4]
  57d84a:	mov    eax,DWORD PTR [eax]
  57d84c:	test   BYTE PTR [eax+0xb2],0x1
  57d853:	je     57d863
  57d855:	cmp    DWORD PTR [eax+0x60],0x0
  57d859:	jne    57d863
  57d85b:	mov    DWORD PTR [esp],eax
  57d85e:	call   1db0b8
  57d863:	lea    eax,[ebx+0x57b20]  ; literal "Could not find loot item with name "
  57d869:	mov    eax,DWORD PTR [eax]
  57d86b:	mov    DWORD PTR [esp+0x8],esi
  57d86f:	mov    DWORD PTR [esp+0x4],eax
  57d873:	mov    DWORD PTR [esp+0xc],0x0
  57d87b:	mov    DWORD PTR [esp],0x0
  57d882:	call   ca462a  ; System.String::Concat
  57d887:	mov    DWORD PTR [esp+0x4],eax
  57d88b:	mov    DWORD PTR [esp+0x8],0x0
  57d893:	mov    DWORD PTR [esp],0x0
  57d89a:	call   108148a  ; DebugLog::Error
  57d89f:	jmp    57d926
  57d8a4:	mov    DWORD PTR [esp+0x3c],esi
  57d8a8:	lea    esi,[ebx+0x499e0]
  57d8ae:	mov    eax,DWORD PTR [esi]
  57d8b0:	mov    DWORD PTR [esp+0x4],eax
  57d8b4:	lea    edi,[esp+0x50]
  57d8b8:	mov    DWORD PTR [esp],edi
  57d8bb:	call   16ab7d4
  57d8c0:	test   eax,eax
  57d8c2:	jle    57d926
  57d8c4:	mov    eax,DWORD PTR [esp+0x38]
  57d8c8:	mov    eax,DWORD PTR [eax]
  57d8ca:	mov    DWORD PTR [esp+0x4],eax
  57d8ce:	mov    DWORD PTR [esp],edi
  57d8d1:	call   16ab7a2
  57d8d6:	mov    ecx,esi
  57d8d8:	mov    esi,eax
  57d8da:	mov    eax,DWORD PTR [ecx]
  57d8dc:	mov    DWORD PTR [esp+0x4],eax
  57d8e0:	mov    DWORD PTR [esp],edi
  57d8e3:	call   16ab7d4
  57d8e8:	mov    edi,eax
  57d8ea:	mov    eax,DWORD PTR [esp+0x3c]
  57d8ee:	mov    DWORD PTR [esp+0x8],eax
  57d8f2:	mov    DWORD PTR [esp+0xc],0x0
  57d8fa:	mov    DWORD PTR [esp+0x4],0x0
  57d902:	mov    DWORD PTR [esp],0x0
  57d909:	call   1248534  ; System.Math::Max
  57d90e:	mov    DWORD PTR [esp+0x10],eax
  57d912:	mov    DWORD PTR [esp+0xc],edi
  57d916:	mov    DWORD PTR [esp+0x8],esi
  57d91a:	mov    eax,DWORD PTR [ebp+0x10]
  57d91d:	mov    DWORD PTR [esp+0x4],eax
  57d921:	call   57c07a  ; ABH.Services.Logic.LootOperations::AddItemValue
  57d926:	lea    esp,[ebp-0xc]
  57d929:	pop    esi
  57d92a:	pop    edi
  57d92b:	pop    ebx
  57d92c:	pop    ebp
  57d92d:	ret
  57d92e:	call   1fbc48
  57d933:	call   540b98