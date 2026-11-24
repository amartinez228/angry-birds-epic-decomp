
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050f46a:
  50f46a:	push   ebp
  50f46b:	mov    ebp,esp
  50f46d:	push   ebx
  50f46e:	push   edi
  50f46f:	push   esi
  50f470:	and    esp,0xfffffff0
  50f473:	sub    esp,0x30
  50f476:	call   50f47b
  50f47b:	pop    ebx
  50f47c:	add    ebx,0x1a02ac9
  50f482:	mov    esi,DWORD PTR [ebp+0xc]
  50f485:	mov    al,BYTE PTR [ebx+0x5d515]
  50f48b:	test   al,al
  50f48d:	jne    50f4a6
  50f48f:	lea    eax,[ebx-0x66f48c]
  50f495:	mov    eax,DWORD PTR [eax]
  50f497:	mov    DWORD PTR [esp],eax
  50f49a:	call   1ca6e8
  50f49f:	mov    BYTE PTR [ebx+0x5d515],0x1
  50f4a6:	test   esi,esi
  50f4a8:	je     50f9ec
  50f4ae:	lea    eax,[ebx+0x45874]
  50f4b4:	mov    DWORD PTR [esp+0x24],eax
  50f4b8:	mov    DWORD PTR [esp+0x28],ebx
  50f4bc:	mov    eax,DWORD PTR [eax]
  50f4be:	mov    ecx,DWORD PTR [esi]
  50f4c0:	mov    ebx,esi
  50f4c2:	movzx  edx,WORD PTR [ecx+0xaa]
  50f4c9:	test   edx,edx
  50f4cb:	je     50f4dc
  50f4cd:	mov    esi,DWORD PTR [ecx+0x4c]
  50f4d0:	xor    edi,edi
  50f4d2:	cmp    DWORD PTR [esi+edi*8],eax
  50f4d5:	je     50f4fa
  50f4d7:	inc    edi
  50f4d8:	cmp    edi,edx
  50f4da:	jb     50f4d2
  50f4dc:	mov    DWORD PTR [esp+0x4],eax
  50f4e0:	mov    esi,ebx
  50f4e2:	mov    DWORD PTR [esp],esi
  50f4e5:	mov    DWORD PTR [esp+0x8],0x7
  50f4ed:	mov    ebx,DWORD PTR [esp+0x28]
  50f4f1:	call   1c1964
  50f4f6:	mov    ecx,eax
  50f4f8:	jmp    50f50b
  50f4fa:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f4fe:	lea    ecx,[ecx+eax*8+0xec]
  50f505:	mov    esi,ebx
  50f507:	mov    ebx,DWORD PTR [esp+0x28]
  50f50b:	mov    eax,DWORD PTR [ecx+0x4]
  50f50e:	mov    DWORD PTR [esp+0x4],eax
  50f512:	mov    DWORD PTR [esp],esi
  50f515:	call   DWORD PTR [ecx]
  50f517:	test   eax,eax
  50f519:	je     50f9ec
  50f51f:	mov    eax,DWORD PTR [eax+0x10]
  50f522:	test   eax,eax
  50f524:	je     50f9ec
  50f52a:	mov    DWORD PTR [esp],eax
  50f52d:	mov    DWORD PTR [esp+0x4],0x0
  50f535:	call   179aeca  ; ABH.Shared.Models.Generic.AiCombo::get_ComboChain
  50f53a:	test   eax,eax
  50f53c:	je     50f9ec
  50f542:	lea    ecx,[ebx+0x48c20]
  50f548:	mov    ecx,DWORD PTR [ecx]
  50f54a:	mov    DWORD PTR [esp+0x4],ecx
  50f54e:	mov    DWORD PTR [esp],eax
  50f551:	mov    DWORD PTR [esp+0x28],ebx
  50f555:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  50f55a:	mov    DWORD PTR [esp+0x20],eax
  50f55e:	mov    eax,DWORD PTR [esp+0x24]
  50f562:	mov    eax,DWORD PTR [eax]
  50f564:	mov    ecx,DWORD PTR [esi]
  50f566:	mov    ebx,esi
  50f568:	movzx  edx,WORD PTR [ecx+0xaa]
  50f56f:	test   edx,edx
  50f571:	je     50f582
  50f573:	mov    edi,DWORD PTR [ecx+0x4c]
  50f576:	xor    esi,esi
  50f578:	cmp    DWORD PTR [edi+esi*8],eax
  50f57b:	je     50f5a0
  50f57d:	inc    esi
  50f57e:	cmp    esi,edx
  50f580:	jb     50f578
  50f582:	mov    DWORD PTR [esp+0x4],eax
  50f586:	mov    esi,ebx
  50f588:	mov    DWORD PTR [esp],esi
  50f58b:	mov    DWORD PTR [esp+0x8],0x7
  50f593:	mov    ebx,DWORD PTR [esp+0x28]
  50f597:	call   1c1964
  50f59c:	mov    ecx,eax
  50f59e:	jmp    50f5b1
  50f5a0:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50f5a4:	lea    ecx,[ecx+eax*8+0xec]
  50f5ab:	mov    esi,ebx
  50f5ad:	mov    ebx,DWORD PTR [esp+0x28]
  50f5b1:	mov    eax,DWORD PTR [ecx+0x4]
  50f5b4:	mov    DWORD PTR [esp+0x4],eax
  50f5b8:	mov    DWORD PTR [esp],esi
  50f5bb:	call   DWORD PTR [ecx]
  50f5bd:	test   eax,eax
  50f5bf:	je     50f9ec
  50f5c5:	mov    ecx,DWORD PTR [esp+0x20]
  50f5c9:	cmp    ecx,DWORD PTR [eax+0x8]
  50f5cc:	jle    50f890
  50f5d2:	mov    eax,DWORD PTR [esp+0x24]
  50f5d6:	mov    eax,DWORD PTR [eax]
  50f5d8:	mov    ecx,DWORD PTR [esi]
  50f5da:	mov    ebx,esi
  50f5dc:	movzx  edx,WORD PTR [ecx+0xaa]
  50f5e3:	test   edx,edx
  50f5e5:	je     50f5f6
  50f5e7:	mov    esi,DWORD PTR [ecx+0x4c]
  50f5ea:	xor    edi,edi
  50f5ec:	cmp    DWORD PTR [esi+edi*8],eax
  50f5ef:	je     50f614
  50f5f1:	inc    edi
  50f5f2:	cmp    edi,edx
  50f5f4:	jb     50f5ec
  50f5f6:	mov    DWORD PTR [esp+0x4],eax
  50f5fa:	mov    esi,ebx
  50f5fc:	mov    DWORD PTR [esp],esi
  50f5ff:	mov    DWORD PTR [esp+0x8],0x7
  50f607:	mov    ebx,DWORD PTR [esp+0x28]
  50f60b:	call   1c1964
  50f610:	mov    ecx,eax
  50f612:	jmp    50f625
  50f614:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f618:	lea    ecx,[ecx+eax*8+0xec]
  50f61f:	mov    esi,ebx
  50f621:	mov    ebx,DWORD PTR [esp+0x28]
  50f625:	mov    eax,DWORD PTR [ecx+0x4]
  50f628:	mov    DWORD PTR [esp+0x4],eax
  50f62c:	mov    DWORD PTR [esp],esi
  50f62f:	call   DWORD PTR [ecx]
  50f631:	test   eax,eax
  50f633:	je     50f9ec
  50f639:	mov    eax,DWORD PTR [eax+0x10]
  50f63c:	test   eax,eax
  50f63e:	je     50f9ec
  50f644:	mov    DWORD PTR [esp],eax
  50f647:	mov    DWORD PTR [esp+0x4],0x0
  50f64f:	call   179aeca  ; ABH.Shared.Models.Generic.AiCombo::get_ComboChain
  50f654:	mov    DWORD PTR [esp+0x20],eax
  50f658:	mov    eax,DWORD PTR [esp+0x24]
  50f65c:	mov    eax,DWORD PTR [eax]
  50f65e:	mov    ecx,DWORD PTR [esi]
  50f660:	mov    ebx,esi
  50f662:	movzx  edx,WORD PTR [ecx+0xaa]
  50f669:	test   edx,edx
  50f66b:	je     50f67c
  50f66d:	mov    edi,DWORD PTR [ecx+0x4c]
  50f670:	xor    esi,esi
  50f672:	cmp    DWORD PTR [edi+esi*8],eax
  50f675:	je     50f69a
  50f677:	inc    esi
  50f678:	cmp    esi,edx
  50f67a:	jb     50f672
  50f67c:	mov    DWORD PTR [esp+0x4],eax
  50f680:	mov    esi,ebx
  50f682:	mov    DWORD PTR [esp],esi
  50f685:	mov    DWORD PTR [esp+0x8],0x7
  50f68d:	mov    ebx,DWORD PTR [esp+0x28]
  50f691:	call   1c1964
  50f696:	mov    ecx,eax
  50f698:	jmp    50f6ab
  50f69a:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50f69e:	lea    ecx,[ecx+eax*8+0xec]
  50f6a5:	mov    esi,ebx
  50f6a7:	mov    ebx,DWORD PTR [esp+0x28]
  50f6ab:	mov    eax,DWORD PTR [ecx+0x4]
  50f6ae:	mov    DWORD PTR [esp+0x4],eax
  50f6b2:	mov    DWORD PTR [esp],esi
  50f6b5:	call   DWORD PTR [ecx]
  50f6b7:	test   eax,eax
  50f6b9:	je     50f9ec
  50f6bf:	mov    edx,DWORD PTR [esp+0x20]
  50f6c3:	test   edx,edx
  50f6c5:	je     50f9ec
  50f6cb:	mov    eax,DWORD PTR [eax+0x8]
  50f6ce:	lea    ecx,[ebx+0x4953c]
  50f6d4:	mov    DWORD PTR [esp+0x1c],ecx
  50f6d8:	mov    ecx,DWORD PTR [ecx]
  50f6da:	mov    DWORD PTR [esp+0x8],ecx
  50f6de:	mov    DWORD PTR [esp+0x4],eax
  50f6e2:	mov    DWORD PTR [esp],edx
  50f6e5:	mov    DWORD PTR [esp+0x28],ebx
  50f6e9:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  50f6ee:	mov    DWORD PTR [esp+0x20],eax
  50f6f2:	mov    eax,DWORD PTR [esp+0x24]
  50f6f6:	mov    eax,DWORD PTR [eax]
  50f6f8:	mov    ecx,DWORD PTR [esi]
  50f6fa:	mov    ebx,esi
  50f6fc:	movzx  edx,WORD PTR [ecx+0xaa]
  50f703:	test   edx,edx
  50f705:	je     50f716
  50f707:	mov    edi,DWORD PTR [ecx+0x4c]
  50f70a:	xor    esi,esi
  50f70c:	cmp    DWORD PTR [edi+esi*8],eax
  50f70f:	je     50f734
  50f711:	inc    esi
  50f712:	cmp    esi,edx
  50f714:	jb     50f70c
  50f716:	mov    DWORD PTR [esp+0x4],eax
  50f71a:	mov    esi,ebx
  50f71c:	mov    DWORD PTR [esp],esi
  50f71f:	mov    DWORD PTR [esp+0x8],0x3b
  50f727:	mov    ebx,DWORD PTR [esp+0x28]
  50f72b:	call   1c1964
  50f730:	mov    ecx,eax
  50f732:	jmp    50f745
  50f734:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50f738:	lea    ecx,[ecx+eax*8+0x28c]
  50f73f:	mov    esi,ebx
  50f741:	mov    ebx,DWORD PTR [esp+0x28]
  50f745:	mov    eax,DWORD PTR [ecx+0x4]
  50f748:	mov    DWORD PTR [esp+0x8],eax
  50f74c:	mov    eax,DWORD PTR [esp+0x20]
  50f750:	mov    DWORD PTR [esp+0x4],eax
  50f754:	mov    DWORD PTR [esp],esi
  50f757:	call   DWORD PTR [ecx]
  50f759:	mov    DWORD PTR [esp+0x20],eax
  50f75d:	mov    eax,DWORD PTR [esp+0x24]
  50f761:	mov    eax,DWORD PTR [eax]
  50f763:	mov    ecx,DWORD PTR [esi]
  50f765:	mov    ebx,esi
  50f767:	movzx  edx,WORD PTR [ecx+0xaa]
  50f76e:	test   edx,edx
  50f770:	je     50f781
  50f772:	mov    edi,DWORD PTR [ecx+0x4c]
  50f775:	xor    esi,esi
  50f777:	cmp    DWORD PTR [edi+esi*8],eax
  50f77a:	je     50f79f
  50f77c:	inc    esi
  50f77d:	cmp    esi,edx
  50f77f:	jb     50f777
  50f781:	mov    DWORD PTR [esp+0x4],eax
  50f785:	mov    esi,ebx
  50f787:	mov    DWORD PTR [esp],esi
  50f78a:	mov    DWORD PTR [esp+0x8],0x7
  50f792:	mov    ebx,DWORD PTR [esp+0x28]
  50f796:	call   1c1964
  50f79b:	mov    ecx,eax
  50f79d:	jmp    50f7b0
  50f79f:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50f7a3:	lea    ecx,[ecx+eax*8+0xec]
  50f7aa:	mov    esi,ebx
  50f7ac:	mov    ebx,DWORD PTR [esp+0x28]
  50f7b0:	mov    eax,DWORD PTR [ecx+0x4]
  50f7b3:	mov    DWORD PTR [esp+0x4],eax
  50f7b7:	mov    DWORD PTR [esp],esi
  50f7ba:	call   DWORD PTR [ecx]
  50f7bc:	test   eax,eax
  50f7be:	je     50f9ec
  50f7c4:	inc    DWORD PTR [eax+0x8]
  50f7c7:	mov    edi,DWORD PTR [esp+0x20]
  50f7cb:	test   edi,edi
  50f7cd:	je     50f82a
  50f7cf:	mov    DWORD PTR [esp],edi
  50f7d2:	mov    DWORD PTR [esp+0x4],0x0
  50f7da:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  50f7df:	test   eax,eax
  50f7e1:	je     50f9ec
  50f7e7:	mov    DWORD PTR [esp],eax
  50f7ea:	mov    DWORD PTR [esp+0x4],0x0
  50f7f2:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  50f7f7:	test   eax,eax
  50f7f9:	je     50f9ec
  50f7ff:	mov    DWORD PTR [esp],eax
  50f802:	mov    DWORD PTR [esp+0x4],0x0
  50f80a:	call   1703193  ; ABH.Shared.BalancingData.SkillBalancingData::get_TargetType
  50f80f:	cmp    eax,0x2
  50f812:	jne    50f86c
  50f814:	mov    eax,DWORD PTR [ebp+0x10]
  50f817:	mov    DWORD PTR [esp+0xc],eax
  50f81b:	mov    DWORD PTR [esp+0x8],edi
  50f81f:	mov    DWORD PTR [esp+0x4],esi
  50f823:	call   510273  ; ABH.Services.Logic.BattleService::IsSkillSupportPossible
  50f828:	jmp    50f885
  50f82a:	mov    eax,DWORD PTR [esp+0x24]
  50f82e:	mov    eax,DWORD PTR [eax]
  50f830:	mov    ecx,DWORD PTR [esi]
  50f832:	mov    ebx,esi
  50f834:	movzx  edx,WORD PTR [ecx+0xaa]
  50f83b:	test   edx,edx
  50f83d:	je     50f84e
  50f83f:	mov    esi,DWORD PTR [ecx+0x4c]
  50f842:	xor    edi,edi
  50f844:	cmp    DWORD PTR [esi+edi*8],eax
  50f847:	je     50f899
  50f849:	inc    edi
  50f84a:	cmp    edi,edx
  50f84c:	jb     50f844
  50f84e:	mov    DWORD PTR [esp+0x4],eax
  50f852:	mov    esi,ebx
  50f854:	mov    DWORD PTR [esp],esi
  50f857:	mov    DWORD PTR [esp+0x8],0x7
  50f85f:	mov    ebx,DWORD PTR [esp+0x28]
  50f863:	call   1c1964
  50f868:	mov    ecx,eax
  50f86a:	jmp    50f8aa
  50f86c:	mov    ecx,DWORD PTR [ebp+0x10]
  50f86f:	cmp    eax,0x1
  50f872:	jne    50f890
  50f874:	mov    DWORD PTR [esp+0xc],ecx
  50f878:	mov    DWORD PTR [esp+0x8],edi
  50f87c:	mov    DWORD PTR [esp+0x4],esi
  50f880:	call   50ff62  ; ABH.Services.Logic.BattleService::IsSkillAttackPossible
  50f885:	test   al,al
  50f887:	je     50f890
  50f889:	mov    eax,edi
  50f88b:	jmp    50f9e2
  50f890:	mov    DWORD PTR [esp+0x4],esi
  50f894:	jmp    50f9dd
  50f899:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f89d:	lea    ecx,[ecx+eax*8+0xec]
  50f8a4:	mov    esi,ebx
  50f8a6:	mov    ebx,DWORD PTR [esp+0x28]
  50f8aa:	mov    eax,DWORD PTR [ecx+0x4]
  50f8ad:	mov    DWORD PTR [esp+0x4],eax
  50f8b1:	mov    DWORD PTR [esp],esi
  50f8b4:	call   DWORD PTR [ecx]
  50f8b6:	test   eax,eax
  50f8b8:	je     50f9ec
  50f8be:	mov    eax,DWORD PTR [eax+0x10]
  50f8c1:	test   eax,eax
  50f8c3:	je     50f9ec
  50f8c9:	mov    DWORD PTR [esp],eax
  50f8cc:	mov    DWORD PTR [esp+0x4],0x0
  50f8d4:	call   179aeca  ; ABH.Shared.Models.Generic.AiCombo::get_ComboChain
  50f8d9:	mov    DWORD PTR [esp+0x20],eax
  50f8dd:	mov    eax,DWORD PTR [esp+0x24]
  50f8e1:	mov    eax,DWORD PTR [eax]
  50f8e3:	mov    ecx,DWORD PTR [esi]
  50f8e5:	mov    ebx,esi
  50f8e7:	movzx  edx,WORD PTR [ecx+0xaa]
  50f8ee:	test   edx,edx
  50f8f0:	je     50f901
  50f8f2:	mov    edi,DWORD PTR [ecx+0x4c]
  50f8f5:	xor    esi,esi
  50f8f7:	cmp    DWORD PTR [edi+esi*8],eax
  50f8fa:	je     50f91f
  50f8fc:	inc    esi
  50f8fd:	cmp    esi,edx
  50f8ff:	jb     50f8f7
  50f901:	mov    DWORD PTR [esp+0x4],eax
  50f905:	mov    esi,ebx
  50f907:	mov    DWORD PTR [esp],esi
  50f90a:	mov    DWORD PTR [esp+0x8],0x7
  50f912:	mov    ebx,DWORD PTR [esp+0x28]
  50f916:	call   1c1964
  50f91b:	mov    ecx,eax
  50f91d:	jmp    50f930
  50f91f:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50f923:	lea    ecx,[ecx+eax*8+0xec]
  50f92a:	mov    esi,ebx
  50f92c:	mov    ebx,DWORD PTR [esp+0x28]
  50f930:	mov    eax,DWORD PTR [ecx+0x4]
  50f933:	mov    DWORD PTR [esp+0x4],eax
  50f937:	mov    DWORD PTR [esp],esi
  50f93a:	mov    edi,ebx
  50f93c:	call   DWORD PTR [ecx]
  50f93e:	test   eax,eax
  50f940:	je     50f9ea
  50f946:	mov    edx,DWORD PTR [esp+0x20]
  50f94a:	test   edx,edx
  50f94c:	je     50f9ea
  50f952:	mov    eax,DWORD PTR [eax+0x8]
  50f955:	mov    ecx,DWORD PTR [esp+0x1c]
  50f959:	mov    ecx,DWORD PTR [ecx]
  50f95b:	mov    DWORD PTR [esp+0x8],ecx
  50f95f:	mov    DWORD PTR [esp+0x4],eax
  50f963:	mov    DWORD PTR [esp],edx
  50f966:	mov    ebx,edi
  50f968:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  50f96d:	mov    esi,eax
  50f96f:	lea    eax,[ebx+0x430e4]
  50f975:	mov    eax,DWORD PTR [eax]
  50f977:	test   BYTE PTR [eax+0xb2],0x1
  50f97e:	je     50f98e
  50f980:	cmp    DWORD PTR [eax+0x60],0x0
  50f984:	jne    50f98e
  50f986:	mov    DWORD PTR [esp],eax
  50f989:	call   1db0b8
  50f98e:	lea    eax,[ebx+0x57598]  ; literal "Skill: "
  50f994:	mov    eax,DWORD PTR [eax]
  50f996:	lea    ecx,[ebx+0x5759c]  ; literal " not found in SkillNameIdsList look for typing errors in Balancing!"
  50f99c:	mov    ecx,DWORD PTR [ecx]
  50f99e:	mov    DWORD PTR [esp+0xc],ecx
  50f9a2:	mov    DWORD PTR [esp+0x8],esi
  50f9a6:	mov    DWORD PTR [esp+0x4],eax
  50f9aa:	mov    DWORD PTR [esp+0x10],0x0
  50f9b2:	mov    DWORD PTR [esp],0x0
  50f9b9:	call   caa312  ; System.String::Concat
  50f9be:	mov    DWORD PTR [esp+0x4],eax
  50f9c2:	mov    DWORD PTR [esp+0x8],0x0
  50f9ca:	mov    DWORD PTR [esp],0x0
  50f9d1:	call   108148a  ; DebugLog::Error
  50f9d6:	mov    eax,DWORD PTR [ebp+0xc]
  50f9d9:	mov    DWORD PTR [esp+0x4],eax
  50f9dd:	call   50fe4a  ; ABH.Services.Logic.BattleService::GetFallbackSkill
  50f9e2:	lea    esp,[ebp-0xc]
  50f9e5:	pop    esi
  50f9e6:	pop    edi
  50f9e7:	pop    ebx
  50f9e8:	pop    ebp
  50f9e9:	ret
  50f9ea:	mov    ebx,edi
  50f9ec:	call   1fbc48
  50f9f1:	call   540b98