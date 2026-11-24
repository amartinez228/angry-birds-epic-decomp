
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

004ff479:
  4ff479:	push   ebp
  4ff47a:	mov    ebp,esp
  4ff47c:	push   ebx
  4ff47d:	push   edi
  4ff47e:	push   esi
  4ff47f:	and    esp,0xfffffff0
  4ff482:	sub    esp,0x30
  4ff485:	call   4ff48a
  4ff48a:	pop    ebx
  4ff48b:	add    ebx,0x1a12aba
  4ff491:	mov    ecx,DWORD PTR [ebp+0xc]
  4ff494:	mov    al,BYTE PTR [ebx+0x5d4e5]
  4ff49a:	test   al,al
  4ff49c:	jne    4ff4b9
  4ff49e:	lea    eax,[ebx-0x66f4d8]
  4ff4a4:	mov    eax,DWORD PTR [eax]
  4ff4a6:	mov    DWORD PTR [esp],eax
  4ff4a9:	mov    esi,ecx
  4ff4ab:	call   1ca6e8
  4ff4b0:	mov    ecx,esi
  4ff4b2:	mov    BYTE PTR [ebx+0x5d4e5],0x1
  4ff4b9:	test   ecx,ecx
  4ff4bb:	je     4ff878
  4ff4c1:	mov    eax,DWORD PTR [ecx+0x14]
  4ff4c4:	test   eax,eax
  4ff4c6:	je     4ff878
  4ff4cc:	xor    esi,esi
  4ff4ce:	cmp    DWORD PTR [eax+0x1c],0x0
  4ff4d2:	jne    4ff854
  4ff4d8:	mov    ecx,DWORD PTR [ecx+0x68]
  4ff4db:	test   ecx,ecx
  4ff4dd:	je     4ff878
  4ff4e3:	mov    eax,DWORD PTR [eax+0x30]
  4ff4e6:	mov    DWORD PTR [esp+0x20],eax
  4ff4ea:	lea    eax,[ebx+0x4a04c]
  4ff4f0:	mov    eax,DWORD PTR [eax]
  4ff4f2:	mov    DWORD PTR [esp+0x8],eax
  4ff4f6:	mov    DWORD PTR [esp],ecx
  4ff4f9:	mov    DWORD PTR [esp+0x4],0x0
  4ff501:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  4ff506:	lea    esi,[ebx+0x45ff0]
  4ff50c:	mov    ecx,DWORD PTR [esi]
  4ff50e:	mov    ecx,DWORD PTR [ecx+0x50]
  4ff511:	cmp    DWORD PTR [ecx+0x1c],0x0
  4ff515:	jne    4ff576
  4ff517:	lea    ecx,[ebx+0x4afbc]
  4ff51d:	mov    ecx,DWORD PTR [ecx]
  4ff51f:	mov    DWORD PTR [esp+0x1c],ecx
  4ff523:	lea    ecx,[ebx+0x4588c]
  4ff529:	mov    ecx,DWORD PTR [ecx]
  4ff52b:	mov    DWORD PTR [esp],ecx
  4ff52e:	mov    DWORD PTR [esp+0x24],eax
  4ff532:	call   20bfb2
  4ff537:	mov    edi,eax
  4ff539:	mov    eax,DWORD PTR [esp+0x1c]
  4ff53d:	mov    DWORD PTR [esp+0x28],eax
  4ff541:	lea    eax,[ebx+0x4a054]
  4ff547:	mov    eax,DWORD PTR [eax]
  4ff549:	mov    DWORD PTR [esp+0xc],eax
  4ff54d:	mov    eax,DWORD PTR [esp+0x28]
  4ff551:	mov    DWORD PTR [esp+0x8],eax
  4ff555:	mov    DWORD PTR [esp],edi
  4ff558:	mov    DWORD PTR [esp+0x4],0x0
  4ff560:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  4ff565:	mov    eax,DWORD PTR [esp+0x24]
  4ff569:	mov    ecx,DWORD PTR [esi]
  4ff56b:	mov    ecx,DWORD PTR [ecx+0x50]
  4ff56e:	mov    DWORD PTR [ecx+0x1c],edi
  4ff571:	mov    ecx,DWORD PTR [esi]
  4ff573:	mov    ecx,DWORD PTR [ecx+0x50]
  4ff576:	mov    edx,DWORD PTR [ecx+0x1c]
  4ff579:	lea    ecx,[ebx+0x4a058]
  4ff57f:	mov    ecx,DWORD PTR [ecx]
  4ff581:	mov    DWORD PTR [esp+0xc],ecx
  4ff585:	mov    DWORD PTR [esp+0x8],edx
  4ff589:	mov    DWORD PTR [esp+0x4],eax
  4ff58d:	mov    DWORD PTR [esp],0x0
  4ff594:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  4ff599:	mov    esi,eax
  4ff59b:	test   esi,esi
  4ff59d:	je     4ff878
  4ff5a3:	lea    eax,[ebx+0x45944]
  4ff5a9:	mov    DWORD PTR [esp+0x24],ebx
  4ff5ad:	mov    eax,DWORD PTR [eax]
  4ff5af:	mov    ebx,DWORD PTR [esi]
  4ff5b1:	movzx  edx,WORD PTR [ebx+0xaa]
  4ff5b8:	test   edx,edx
  4ff5ba:	je     4ff5cb
  4ff5bc:	mov    edi,DWORD PTR [ebx+0x4c]
  4ff5bf:	xor    ecx,ecx
  4ff5c1:	cmp    DWORD PTR [edi+ecx*8],eax
  4ff5c4:	je     4ff5e7
  4ff5c6:	inc    ecx
  4ff5c7:	cmp    ecx,edx
  4ff5c9:	jb     4ff5c1
  4ff5cb:	mov    DWORD PTR [esp+0x4],eax
  4ff5cf:	mov    DWORD PTR [esp],esi
  4ff5d2:	mov    DWORD PTR [esp+0x8],0x0
  4ff5da:	mov    ebx,DWORD PTR [esp+0x24]
  4ff5de:	call   1c1964
  4ff5e3:	mov    ecx,eax
  4ff5e5:	jmp    4ff5f6
  4ff5e7:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  4ff5eb:	lea    ecx,[ebx+eax*8+0xb4]
  4ff5f2:	mov    ebx,DWORD PTR [esp+0x24]
  4ff5f6:	mov    eax,DWORD PTR [ecx+0x4]
  4ff5f9:	mov    DWORD PTR [esp+0x4],eax
  4ff5fd:	mov    DWORD PTR [esp],esi
  4ff600:	call   DWORD PTR [ecx]
  4ff602:	mov    esi,eax
  4ff604:	test   esi,esi
  4ff606:	je     4ff70d
  4ff60c:	lea    eax,[ebx+0x4319c]
  4ff612:	mov    DWORD PTR [esp+0x1c],eax
  4ff616:	mov    DWORD PTR [esp+0x24],ebx
  4ff61a:	jmp    4ff624
  4ff61c:	mov    DWORD PTR [esp+0x24],ebx
  4ff620:	add    DWORD PTR [esp+0x20],eax
  4ff624:	mov    eax,DWORD PTR [esp+0x1c]
  4ff628:	mov    eax,DWORD PTR [eax]
  4ff62a:	mov    ecx,DWORD PTR [esi]
  4ff62c:	mov    ebx,esi
  4ff62e:	movzx  edx,WORD PTR [ecx+0xaa]
  4ff635:	test   edx,edx
  4ff637:	je     4ff648
  4ff639:	mov    edi,DWORD PTR [ecx+0x4c]
  4ff63c:	xor    esi,esi
  4ff63e:	cmp    DWORD PTR [edi+esi*8],eax
  4ff641:	je     4ff664
  4ff643:	inc    esi
  4ff644:	cmp    esi,edx
  4ff646:	jb     4ff63e
  4ff648:	mov    DWORD PTR [esp+0x4],eax
  4ff64c:	mov    esi,ebx
  4ff64e:	mov    DWORD PTR [esp],esi
  4ff651:	mov    DWORD PTR [esp+0x8],0x1
  4ff659:	mov    ebx,DWORD PTR [esp+0x24]
  4ff65d:	call   1c1964
  4ff662:	jmp    4ff675
  4ff664:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  4ff668:	lea    eax,[ecx+eax*8+0xbc]
  4ff66f:	mov    esi,ebx
  4ff671:	mov    ebx,DWORD PTR [esp+0x24]
  4ff675:	mov    ecx,DWORD PTR [eax]
  4ff677:	mov    eax,DWORD PTR [eax+0x4]
  4ff67a:	mov    DWORD PTR [esp+0x4],eax
  4ff67e:	mov    DWORD PTR [esp],esi
  4ff681:	call   ecx
  4ff683:	test   al,al
  4ff685:	je     4ff85e
  4ff68b:	lea    eax,[ebx+0x45948]
  4ff691:	mov    DWORD PTR [esp+0x24],ebx
  4ff695:	mov    eax,DWORD PTR [eax]
  4ff697:	mov    ecx,DWORD PTR [esi]
  4ff699:	mov    ebx,esi
  4ff69b:	movzx  edx,WORD PTR [ecx+0xaa]
  4ff6a2:	test   edx,edx
  4ff6a4:	je     4ff6b5
  4ff6a6:	mov    edi,DWORD PTR [ecx+0x4c]
  4ff6a9:	xor    esi,esi
  4ff6ab:	cmp    DWORD PTR [edi+esi*8],eax
  4ff6ae:	je     4ff6d1
  4ff6b0:	inc    esi
  4ff6b1:	cmp    esi,edx
  4ff6b3:	jb     4ff6ab
  4ff6b5:	mov    DWORD PTR [esp+0x4],eax
  4ff6b9:	mov    esi,ebx
  4ff6bb:	mov    DWORD PTR [esp],esi
  4ff6be:	mov    DWORD PTR [esp+0x8],0x0
  4ff6c6:	mov    ebx,DWORD PTR [esp+0x24]
  4ff6ca:	call   1c1964
  4ff6cf:	jmp    4ff6e2
  4ff6d1:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  4ff6d5:	lea    eax,[ecx+eax*8+0xb4]
  4ff6dc:	mov    esi,ebx
  4ff6de:	mov    ebx,DWORD PTR [esp+0x24]
  4ff6e2:	mov    ecx,DWORD PTR [eax]
  4ff6e4:	mov    eax,DWORD PTR [eax+0x4]
  4ff6e7:	mov    DWORD PTR [esp+0x4],eax
  4ff6eb:	mov    DWORD PTR [esp],esi
  4ff6ee:	call   ecx
  4ff6f0:	mov    ecx,DWORD PTR [ebp+0xc]
  4ff6f3:	mov    DWORD PTR [esp+0x8],ecx
  4ff6f7:	mov    DWORD PTR [esp+0x4],eax
  4ff6fb:	mov    eax,DWORD PTR [ebp+0x8]
  4ff6fe:	mov    DWORD PTR [esp],eax
  4ff701:	call   503914  ; ABH.Services.Logic.BattleService::GetScoreForBird
  4ff706:	jmp    4ff61c
  4ff70b:	jmp    4ff717
  4ff70d:	call   1fbc48
  4ff712:	jmp    4ff882
  4ff717:	cmp    edx,0x1
  4ff71a:	jne    4ff86a
  4ff720:	mov    DWORD PTR [esp],eax
  4ff723:	call   1ba3f0
  4ff728:	mov    edi,DWORD PTR [eax]
  4ff72a:	call   1b9ce0
  4ff72f:	xor    eax,eax
  4ff731:	test   esi,esi
  4ff733:	je     4ff7a8
  4ff735:	mov    DWORD PTR [esp+0x18],eax
  4ff739:	mov    DWORD PTR [esp+0x1c],edi
  4ff73d:	lea    eax,[ebx+0x431a4]
  4ff743:	mov    DWORD PTR [esp+0x24],ebx
  4ff747:	mov    eax,DWORD PTR [eax]
  4ff749:	mov    ecx,DWORD PTR [esi]
  4ff74b:	mov    ebx,esi
  4ff74d:	movzx  edx,WORD PTR [ecx+0xaa]
  4ff754:	test   edx,edx
  4ff756:	je     4ff767
  4ff758:	mov    edi,DWORD PTR [ecx+0x4c]
  4ff75b:	xor    esi,esi
  4ff75d:	cmp    DWORD PTR [edi+esi*8],eax
  4ff760:	je     4ff783
  4ff762:	inc    esi
  4ff763:	cmp    esi,edx
  4ff765:	jb     4ff75d
  4ff767:	mov    DWORD PTR [esp+0x4],eax
  4ff76b:	mov    esi,ebx
  4ff76d:	mov    DWORD PTR [esp],esi
  4ff770:	mov    DWORD PTR [esp+0x8],0x0
  4ff778:	mov    ebx,DWORD PTR [esp+0x24]
  4ff77c:	call   1c1964
  4ff781:	jmp    4ff794
  4ff783:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  4ff787:	lea    eax,[ecx+eax*8+0xb4]
  4ff78e:	mov    esi,ebx
  4ff790:	mov    ebx,DWORD PTR [esp+0x24]
  4ff794:	mov    ecx,DWORD PTR [eax+0x4]
  4ff797:	mov    DWORD PTR [esp+0x4],ecx
  4ff79b:	mov    DWORD PTR [esp],esi
  4ff79e:	call   DWORD PTR [eax]
  4ff7a0:	mov    edi,DWORD PTR [esp+0x1c]
  4ff7a4:	mov    eax,DWORD PTR [esp+0x18]
  4ff7a8:	mov    cl,BYTE PTR [ebp+0x10]
  4ff7ab:	cmp    eax,0x86
  4ff7b0:	je     4ff7c1
  4ff7b2:	test   edi,edi
  4ff7b4:	je     4ff7c1
  4ff7b6:	mov    DWORD PTR [esp],edi
  4ff7b9:	call   1fbb20
  4ff7be:	mov    cl,BYTE PTR [ebp+0x10]
  4ff7c1:	test   cl,cl
  4ff7c3:	mov    eax,DWORD PTR [ebp+0xc]
  4ff7c6:	je     4ff7d1
  4ff7c8:	mov    esi,DWORD PTR [esp+0x20]
  4ff7cc:	jmp    4ff854
  4ff7d1:	mov    DWORD PTR [esp],eax
  4ff7d4:	mov    DWORD PTR [esp+0x4],0x0
  4ff7dc:	mov    esi,ebx
  4ff7de:	mov    edi,eax
  4ff7e0:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4ff7e5:	test   eax,eax
  4ff7e7:	je     4ff872
  4ff7ed:	mov    DWORD PTR [esp],eax
  4ff7f0:	mov    DWORD PTR [esp+0x4],0x0
  4ff7f8:	mov    ebx,esi
  4ff7fa:	call   16fe531  ; ABH.Shared.BalancingData.BattleBalancingData::get_BonusPoints
  4ff7ff:	mov    esi,eax
  4ff801:	mov    DWORD PTR [esp],edi
  4ff804:	mov    DWORD PTR [esp+0x4],0x0
  4ff80c:	mov    edi,ebx
  4ff80e:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4ff813:	test   eax,eax
  4ff815:	je     4ff876
  4ff817:	add    esi,DWORD PTR [esp+0x20]
  4ff81b:	mov    DWORD PTR [esp],eax
  4ff81e:	mov    DWORD PTR [esp+0x4],0x0
  4ff826:	mov    ebx,edi
  4ff828:	call   16fe50e  ; ABH.Shared.BalancingData.BattleBalancingData::get_ScoringStrategy
  4ff82d:	cmp    eax,0x1
  4ff830:	jne    4ff854
  4ff832:	mov    eax,DWORD PTR [ebp+0xc]
  4ff835:	mov    DWORD PTR [esp+0x4],eax
  4ff839:	mov    ebx,edi
  4ff83b:	call   50463e  ; ABH.Services.Logic.BattleService::getScorePerStarFromMaximum
  4ff840:	shl    eax,0x2
  4ff843:	cvtsi2ss xmm0,eax
  4ff847:	cvtsi2ss xmm1,esi
  4ff84b:	ucomiss xmm1,xmm0
  4ff84e:	jbe    4ff854
  4ff850:	cvttss2si esi,xmm0
  4ff854:	mov    eax,esi
  4ff856:	lea    esp,[ebp-0xc]
  4ff859:	pop    esi
  4ff85a:	pop    edi
  4ff85b:	pop    ebx
  4ff85c:	pop    ebp
  4ff85d:	ret
  4ff85e:	xor    edi,edi
  4ff860:	mov    eax,0x86
  4ff865:	jmp    4ff731
  4ff86a:	mov    DWORD PTR [esp],eax
  4ff86d:	call   1b9bd0
  4ff872:	mov    ebx,esi
  4ff874:	jmp    4ff878
  4ff876:	mov    ebx,edi
  4ff878:	call   1fbc48
  4ff87d:	call   540b98
  4ff882:	call   540b98