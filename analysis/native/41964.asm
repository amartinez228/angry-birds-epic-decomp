
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057c4df:
  57c4df:	push   ebp
  57c4e0:	mov    ebp,esp
  57c4e2:	push   ebx
  57c4e3:	push   edi
  57c4e4:	push   esi
  57c4e5:	and    esp,0xfffffff0
  57c4e8:	sub    esp,0x80
  57c4ee:	call   57c4f3
  57c4f3:	pop    ebx
  57c4f4:	add    ebx,0x1995a51
  57c4fa:	mov    esi,DWORD PTR [ebp+0x24]
  57c4fd:	mov    al,BYTE PTR [ebx+0x5d73f]
  57c503:	test   al,al
  57c505:	jne    57c51e
  57c507:	lea    eax,[ebx-0x6627d8]
  57c50d:	mov    eax,DWORD PTR [eax]
  57c50f:	mov    DWORD PTR [esp],eax
  57c512:	call   1ca6e8
  57c517:	mov    BYTE PTR [ebx+0x5d73f],0x1
  57c51e:	mov    DWORD PTR [esp+0x78],0x0
  57c526:	cmp    DWORD PTR [ebp+0x20],esi
  57c529:	jge    57c8e6
  57c52f:	mov    DWORD PTR [esp+0x78],0x0
  57c537:	lea    eax,[ebx+0x45820]
  57c53d:	mov    eax,DWORD PTR [eax]
  57c53f:	test   BYTE PTR [eax+0xb2],0x1
  57c546:	je     57c556
  57c548:	cmp    DWORD PTR [eax+0x60],0x0
  57c54c:	jne    57c556
  57c54e:	mov    DWORD PTR [esp],eax
  57c551:	call   1db0b8
  57c556:	mov    DWORD PTR [esp+0x4],0x0
  57c55e:	mov    DWORD PTR [esp],0x0
  57c565:	call   1089c7f  ; DIContainerBalancing::get_LootTableBalancingDataPovider
  57c56a:	mov    esi,eax
  57c56c:	lea    edi,[ebx+0x499dc]
  57c572:	mov    eax,DWORD PTR [edi]
  57c574:	mov    DWORD PTR [esp+0x4],eax
  57c578:	lea    eax,[ebp+0xc]
  57c57b:	mov    DWORD PTR [esp],eax
  57c57e:	call   16ab7a2
  57c583:	test   esi,esi
  57c585:	je     57c8dc
  57c58b:	lea    ecx,[esp+0x78]
  57c58f:	mov    DWORD PTR [esp+0x8],ecx
  57c593:	mov    DWORD PTR [esp+0x4],eax
  57c597:	mov    DWORD PTR [esp],esi
  57c59a:	mov    DWORD PTR [esp+0xc],0x0
  57c5a2:	call   abdae6  ; ABH.Shared.BalancingData.LootTableBalancingDataProvider::TryGetBalancingData
  57c5a7:	test   al,al
  57c5a9:	je     57c620
  57c5ab:	mov    eax,DWORD PTR [esp+0x78]
  57c5af:	test   eax,eax
  57c5b1:	je     57c8dc
  57c5b7:	mov    DWORD PTR [esp],eax
  57c5ba:	mov    DWORD PTR [esp+0x4],0x0
  57c5c2:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57c5c7:	test   eax,eax
  57c5c9:	je     57c7d7
  57c5cf:	mov    al,BYTE PTR [ebp+0x2c]
  57c5d2:	mov    esi,DWORD PTR [ebp+0x28]
  57c5d5:	mov    edi,DWORD PTR [ebp+0x8]
  57c5d8:	test   al,al
  57c5da:	je     57c686
  57c5e0:	lea    eax,[ebp+0xc]
  57c5e3:	movsd  xmm0,QWORD PTR [eax]
  57c5e7:	mov    eax,DWORD PTR [esp+0x78]
  57c5eb:	movsd  QWORD PTR [esp+0x68],xmm0
  57c5f1:	mov    DWORD PTR [esp+0x20],esi
  57c5f5:	mov    DWORD PTR [esp+0x1c],eax
  57c5f9:	mov    eax,DWORD PTR [ebp+0x24]
  57c5fc:	mov    DWORD PTR [esp+0x18],eax
  57c600:	mov    eax,DWORD PTR [ebp+0x20]
  57c603:	mov    DWORD PTR [esp+0x14],eax
  57c607:	mov    eax,DWORD PTR [ebp+0x1c]
  57c60a:	mov    DWORD PTR [esp+0x10],eax
  57c60e:	mov    eax,DWORD PTR [ebp+0x14]
  57c611:	mov    DWORD PTR [esp+0xc],eax
  57c615:	movsd  xmm0,QWORD PTR [esp+0x68]
  57c61b:	jmp    57c7c9
  57c620:	lea    esi,[ebx+0x499e0]
  57c626:	mov    eax,DWORD PTR [esi]
  57c628:	mov    DWORD PTR [esp+0x4],eax
  57c62c:	lea    eax,[ebp+0xc]
  57c62f:	mov    DWORD PTR [esp],eax
  57c632:	call   16ab7d4
  57c637:	test   eax,eax
  57c639:	jle    57c7d7
  57c63f:	mov    eax,DWORD PTR [edi]
  57c641:	mov    DWORD PTR [esp+0x4],eax
  57c645:	lea    edi,[ebp+0xc]
  57c648:	mov    DWORD PTR [esp],edi
  57c64b:	call   16ab7a2
  57c650:	mov    DWORD PTR [esp+0x2c],eax
  57c654:	mov    eax,DWORD PTR [esi]
  57c656:	mov    DWORD PTR [esp+0x4],eax
  57c65a:	mov    DWORD PTR [esp],edi
  57c65d:	call   16ab7d4
  57c662:	mov    ecx,DWORD PTR [ebp+0x14]
  57c665:	mov    DWORD PTR [esp+0x10],ecx
  57c669:	mov    DWORD PTR [esp+0xc],eax
  57c66d:	mov    eax,DWORD PTR [esp+0x2c]
  57c671:	mov    DWORD PTR [esp+0x8],eax
  57c675:	mov    eax,DWORD PTR [ebp+0x1c]
  57c678:	mov    DWORD PTR [esp+0x4],eax
  57c67c:	call   57c07a  ; ABH.Services.Logic.LootOperations::AddItemValue
  57c681:	jmp    57c7d7
  57c686:	mov    eax,DWORD PTR [esp+0x78]
  57c68a:	test   eax,eax
  57c68c:	je     57c8dc
  57c692:	mov    DWORD PTR [esp],eax
  57c695:	mov    DWORD PTR [esp+0x4],0x0
  57c69d:	call   17017aa  ; ABH.Shared.BalancingData.LootTableBalancingData::get_Type
  57c6a2:	cmp    eax,0x4
  57c6a5:	jbe    57c6e7
  57c6a7:	lea    eax,[ebp+0xc]
  57c6aa:	movsd  xmm0,QWORD PTR [eax]
  57c6ae:	mov    eax,DWORD PTR [esp+0x78]
  57c6b2:	movsd  QWORD PTR [esp+0x30],xmm0
  57c6b8:	mov    DWORD PTR [esp+0x20],esi
  57c6bc:	mov    DWORD PTR [esp+0x1c],eax
  57c6c0:	mov    eax,DWORD PTR [ebp+0x24]
  57c6c3:	mov    DWORD PTR [esp+0x18],eax
  57c6c7:	mov    eax,DWORD PTR [ebp+0x20]
  57c6ca:	mov    DWORD PTR [esp+0x14],eax
  57c6ce:	mov    eax,DWORD PTR [ebp+0x1c]
  57c6d1:	mov    DWORD PTR [esp+0x10],eax
  57c6d5:	mov    eax,DWORD PTR [ebp+0x14]
  57c6d8:	mov    DWORD PTR [esp+0xc],eax
  57c6dc:	movsd  xmm0,QWORD PTR [esp+0x30]
  57c6e2:	jmp    57c7c9
  57c6e7:	mov    ecx,DWORD PTR [ebp+0x18]
  57c6ea:	mov    eax,DWORD PTR [ebx+eax*4-0x64f9cc]
  57c6f1:	add    eax,ebx
  57c6f3:	jmp    eax
  57c6f5:	lea    eax,[ebp+0xc]
  57c6f8:	movsd  xmm0,QWORD PTR [eax]
  57c6fc:	mov    eax,DWORD PTR [esp+0x78]
  57c700:	movsd  QWORD PTR [esp+0x58],xmm0
  57c706:	mov    DWORD PTR [esp+0x20],esi
  57c70a:	mov    DWORD PTR [esp+0x1c],eax
  57c70e:	mov    eax,DWORD PTR [ebp+0x24]
  57c711:	mov    DWORD PTR [esp+0x18],eax
  57c715:	mov    eax,DWORD PTR [ebp+0x20]
  57c718:	mov    DWORD PTR [esp+0x14],eax
  57c71c:	mov    eax,DWORD PTR [ebp+0x1c]
  57c71f:	mov    DWORD PTR [esp+0x10],eax
  57c723:	mov    eax,DWORD PTR [ebp+0x14]
  57c726:	mov    DWORD PTR [esp+0xc],eax
  57c72a:	movsd  xmm0,QWORD PTR [esp+0x58]
  57c730:	movsd  QWORD PTR [esp+0x4],xmm0
  57c736:	mov    DWORD PTR [esp],edi
  57c739:	call   57cecb  ; ABH.Services.Logic.LootOperations::GenerateListByProbabilities
  57c73e:	jmp    57c7d7
  57c743:	lea    eax,[ebp+0xc]
  57c746:	movsd  xmm0,QWORD PTR [eax]
  57c74a:	mov    eax,DWORD PTR [esp+0x78]
  57c74e:	movsd  QWORD PTR [esp+0x50],xmm0
  57c754:	mov    DWORD PTR [esp+0x20],esi
  57c758:	mov    DWORD PTR [esp+0x1c],eax
  57c75c:	mov    eax,DWORD PTR [ebp+0x24]
  57c75f:	mov    DWORD PTR [esp+0x18],eax
  57c763:	mov    eax,DWORD PTR [ebp+0x20]
  57c766:	mov    DWORD PTR [esp+0x14],eax
  57c76a:	mov    eax,DWORD PTR [ebp+0x1c]
  57c76d:	mov    DWORD PTR [esp+0x10],eax
  57c771:	mov    eax,DWORD PTR [ebp+0x14]
  57c774:	mov    DWORD PTR [esp+0xc],eax
  57c778:	movsd  xmm0,QWORD PTR [esp+0x50]
  57c77e:	movsd  QWORD PTR [esp+0x4],xmm0
  57c784:	mov    DWORD PTR [esp],edi
  57c787:	call   57d050  ; ABH.Services.Logic.LootOperations::GenerateListByWeights
  57c78c:	jmp    57c7d7
  57c78e:	lea    eax,[ebp+0xc]
  57c791:	movsd  xmm0,QWORD PTR [eax]
  57c795:	mov    eax,DWORD PTR [esp+0x78]
  57c799:	movsd  QWORD PTR [esp+0x60],xmm0
  57c79f:	mov    DWORD PTR [esp+0x20],esi
  57c7a3:	mov    DWORD PTR [esp+0x1c],eax
  57c7a7:	mov    eax,DWORD PTR [ebp+0x24]
  57c7aa:	mov    DWORD PTR [esp+0x18],eax
  57c7ae:	mov    eax,DWORD PTR [ebp+0x20]
  57c7b1:	mov    DWORD PTR [esp+0x14],eax
  57c7b5:	mov    eax,DWORD PTR [ebp+0x1c]
  57c7b8:	mov    DWORD PTR [esp+0x10],eax
  57c7bc:	mov    eax,DWORD PTR [ebp+0x14]
  57c7bf:	mov    DWORD PTR [esp+0xc],eax
  57c7c3:	movsd  xmm0,QWORD PTR [esp+0x60]
  57c7c9:	movsd  QWORD PTR [esp+0x4],xmm0
  57c7cf:	mov    DWORD PTR [esp],edi
  57c7d2:	call   57cd95  ; ABH.Services.Logic.LootOperations::GenerateListByInventory
  57c7d7:	lea    esp,[ebp-0xc]
  57c7da:	pop    esi
  57c7db:	pop    edi
  57c7dc:	pop    ebx
  57c7dd:	pop    ebp
  57c7de:	ret
  57c7df:	lea    eax,[ebp+0xc]
  57c7e2:	mov    edi,DWORD PTR [eax]
  57c7e4:	mov    edx,DWORD PTR [eax+0x4]
  57c7e7:	mov    eax,DWORD PTR [esp+0x78]
  57c7eb:	cmp    BYTE PTR [ebp+0x30],0x0
  57c7ef:	je     57c890
  57c7f5:	mov    DWORD PTR [esp+0x48],edi
  57c7f9:	mov    DWORD PTR [esp+0x4c],edx
  57c7fd:	mov    DWORD PTR [esp+0x24],esi
  57c801:	mov    DWORD PTR [esp+0x20],eax
  57c805:	mov    eax,DWORD PTR [ebp+0x24]
  57c808:	mov    DWORD PTR [esp+0x1c],eax
  57c80c:	mov    eax,DWORD PTR [ebp+0x20]
  57c80f:	mov    DWORD PTR [esp+0x18],eax
  57c813:	mov    eax,DWORD PTR [ebp+0x1c]
  57c816:	mov    DWORD PTR [esp+0x14],eax
  57c81a:	mov    DWORD PTR [esp+0x10],ecx
  57c81e:	mov    eax,DWORD PTR [ebp+0x14]
  57c821:	mov    DWORD PTR [esp+0xc],eax
  57c825:	movsd  xmm0,QWORD PTR [esp+0x48]
  57c82b:	movsd  QWORD PTR [esp+0x4],xmm0
  57c831:	mov    eax,DWORD PTR [ebp+0x8]
  57c834:	mov    DWORD PTR [esp],eax
  57c837:	call   57d377  ; ABH.Services.Logic.LootOperations::GenerateListByWheelForced
  57c83c:	jmp    57c7d7
  57c83e:	lea    eax,[ebp+0xc]
  57c841:	movsd  xmm0,QWORD PTR [eax]
  57c845:	mov    eax,DWORD PTR [esp+0x78]
  57c849:	movsd  QWORD PTR [esp+0x38],xmm0
  57c84f:	mov    DWORD PTR [esp+0x24],esi
  57c853:	mov    DWORD PTR [esp+0x20],eax
  57c857:	mov    eax,DWORD PTR [ebp+0x24]
  57c85a:	mov    DWORD PTR [esp+0x1c],eax
  57c85e:	mov    eax,DWORD PTR [ebp+0x20]
  57c861:	mov    DWORD PTR [esp+0x18],eax
  57c865:	mov    eax,DWORD PTR [ebp+0x1c]
  57c868:	mov    DWORD PTR [esp+0x14],eax
  57c86c:	mov    DWORD PTR [esp+0x10],ecx
  57c870:	mov    eax,DWORD PTR [ebp+0x14]
  57c873:	mov    DWORD PTR [esp+0xc],eax
  57c877:	movsd  xmm0,QWORD PTR [esp+0x38]
  57c87d:	movsd  QWORD PTR [esp+0x4],xmm0
  57c883:	mov    DWORD PTR [esp],edi
  57c886:	call   57d377  ; ABH.Services.Logic.LootOperations::GenerateListByWheelForced
  57c88b:	jmp    57c7d7
  57c890:	mov    DWORD PTR [esp+0x40],edi
  57c894:	mov    DWORD PTR [esp+0x44],edx
  57c898:	mov    DWORD PTR [esp+0x24],esi
  57c89c:	mov    DWORD PTR [esp+0x20],eax
  57c8a0:	mov    eax,DWORD PTR [ebp+0x24]
  57c8a3:	mov    DWORD PTR [esp+0x1c],eax
  57c8a7:	mov    eax,DWORD PTR [ebp+0x20]
  57c8aa:	mov    DWORD PTR [esp+0x18],eax
  57c8ae:	mov    eax,DWORD PTR [ebp+0x1c]
  57c8b1:	mov    DWORD PTR [esp+0x14],eax
  57c8b5:	mov    DWORD PTR [esp+0x10],ecx
  57c8b9:	mov    eax,DWORD PTR [ebp+0x14]
  57c8bc:	mov    DWORD PTR [esp+0xc],eax
  57c8c0:	movsd  xmm0,QWORD PTR [esp+0x40]
  57c8c6:	movsd  QWORD PTR [esp+0x4],xmm0
  57c8cc:	mov    eax,DWORD PTR [ebp+0x8]
  57c8cf:	mov    DWORD PTR [esp],eax
  57c8d2:	call   57d4a2  ; ABH.Services.Logic.LootOperations::GenerateListByWheel
  57c8d7:	jmp    57c7d7
  57c8dc:	call   1fbc48
  57c8e1:	call   540b98
  57c8e6:	mov    DWORD PTR [esp+0x74],esi
  57c8ea:	lea    eax,[ebx+0x43120]
  57c8f0:	mov    eax,DWORD PTR [eax]
  57c8f2:	lea    ecx,[esp+0x74]
  57c8f6:	mov    DWORD PTR [esp+0x4],ecx
  57c8fa:	mov    DWORD PTR [esp],eax
  57c8fd:	call   20bf14
  57c902:	mov    esi,eax
  57c904:	lea    eax,[ebx+0x430e4]
  57c90a:	mov    eax,DWORD PTR [eax]
  57c90c:	test   BYTE PTR [eax+0xb2],0x1
  57c913:	je     57c923
  57c915:	cmp    DWORD PTR [eax+0x60],0x0
  57c919:	jne    57c923
  57c91b:	mov    DWORD PTR [esp],eax
  57c91e:	call   1db0b8
  57c923:	lea    eax,[ebx+0x57b18]  ; literal "Reached Maximum Recursion Depth "
  57c929:	mov    eax,DWORD PTR [eax]
  57c92b:	lea    ecx,[ebx+0x57b1c]  ; literal " in Battle Loot Generation. (Maybe endless recursion loop)"
  57c931:	mov    ecx,DWORD PTR [ecx]
  57c933:	mov    DWORD PTR [esp+0xc],ecx
  57c937:	mov    DWORD PTR [esp+0x8],esi
  57c93b:	mov    DWORD PTR [esp+0x4],eax
  57c93f:	mov    DWORD PTR [esp+0x10],0x0
  57c947:	mov    DWORD PTR [esp],0x0
  57c94e:	call   cbb10b  ; System.String::Concat
  57c953:	mov    esi,eax
  57c955:	lea    eax,[ebx+0x43188]
  57c95b:	mov    eax,DWORD PTR [eax]
  57c95d:	mov    DWORD PTR [esp],eax
  57c960:	call   20bfb2
  57c965:	mov    edi,eax
  57c967:	mov    DWORD PTR [esp+0x4],esi
  57c96b:	mov    DWORD PTR [esp],edi
  57c96e:	mov    DWORD PTR [esp+0x8],0x0
  57c976:	call   feebaf  ; System.Exception::.ctor
  57c97b:	mov    DWORD PTR [esp],edi
  57c97e:	call   1fbb20
  57c983:	call   540b98