
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0056868d:
  56868d:	push   ebp
  56868e:	mov    ebp,esp
  568690:	push   ebx
  568691:	push   edi
  568692:	push   esi
  568693:	and    esp,0xfffffff0
  568696:	sub    esp,0x20
  568699:	call   56869e
  56869e:	pop    ebx
  56869f:	add    ebx,0x19a98a6
  5686a5:	mov    al,BYTE PTR [ebx+0x5d6ee]
  5686ab:	test   al,al
  5686ad:	jne    5686c6
  5686af:	lea    eax,[ebx-0x664cc0]
  5686b5:	mov    eax,DWORD PTR [eax]
  5686b7:	mov    DWORD PTR [esp],eax
  5686ba:	call   1ca6e8
  5686bf:	mov    BYTE PTR [ebx+0x5d6ee],0x1
  5686c6:	cmp    DWORD PTR [ebp+0x10],0x0
  5686ca:	je     568861
  5686d0:	xor    esi,esi
  5686d2:	lea    edi,[ebx+0x4584c]
  5686d8:	mov    DWORD PTR [esp+0x18],edi
  5686dc:	mov    eax,DWORD PTR [edi]
  5686de:	test   BYTE PTR [eax+0xb2],0x1
  5686e5:	je     5686f5
  5686e7:	cmp    DWORD PTR [eax+0x60],0x0
  5686eb:	jne    5686f5
  5686ed:	mov    DWORD PTR [esp],eax
  5686f0:	call   1db0b8
  5686f5:	mov    DWORD PTR [esp+0x4],0x0
  5686fd:	mov    DWORD PTR [esp],0x0
  568704:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  568709:	test   eax,eax
  56870b:	je     568869
  568711:	mov    DWORD PTR [esp],eax
  568714:	mov    DWORD PTR [esp+0x4],0x0
  56871c:	call   6fe8b3  ; ABH.GameDatas.PlayerGameData::get_Birds
  568721:	test   eax,eax
  568723:	je     568869
  568729:	lea    ecx,[ebx+0x4aee4]
  56872f:	mov    ecx,DWORD PTR [ecx]
  568731:	mov    DWORD PTR [esp+0x4],ecx
  568735:	mov    DWORD PTR [esp],eax
  568738:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  56873d:	cmp    esi,eax
  56873f:	jge    568861
  568745:	mov    eax,DWORD PTR [edi]
  568747:	test   BYTE PTR [eax+0xb2],0x1
  56874e:	je     56875e
  568750:	cmp    DWORD PTR [eax+0x60],0x0
  568754:	jne    56875e
  568756:	mov    DWORD PTR [esp],eax
  568759:	call   1db0b8
  56875e:	mov    DWORD PTR [esp+0x4],0x0
  568766:	mov    DWORD PTR [esp],0x0
  56876d:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  568772:	test   eax,eax
  568774:	je     568869
  56877a:	mov    DWORD PTR [esp],eax
  56877d:	mov    DWORD PTR [esp+0x4],0x0
  568785:	call   6fe8b3  ; ABH.GameDatas.PlayerGameData::get_Birds
  56878a:	test   eax,eax
  56878c:	je     568869
  568792:	lea    ecx,[ebx+0x4af20]
  568798:	mov    ecx,DWORD PTR [ecx]
  56879a:	mov    DWORD PTR [esp+0x8],ecx
  56879e:	mov    DWORD PTR [esp+0x4],esi
  5687a2:	mov    DWORD PTR [esp],eax
  5687a5:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  5687aa:	test   eax,eax
  5687ac:	je     568869
  5687b2:	mov    edi,esi
  5687b4:	mov    DWORD PTR [esp],eax
  5687b7:	mov    DWORD PTR [esp+0x4],0x0
  5687bf:	call   6c6288  ; ABH.GameDatas.BirdGameData::get_Name
  5687c4:	mov    esi,eax
  5687c6:	lea    eax,[ebx+0x4a250]
  5687cc:	mov    eax,DWORD PTR [eax]
  5687ce:	mov    DWORD PTR [esp+0x4],eax
  5687d2:	mov    eax,DWORD PTR [ebp+0x10]
  5687d5:	mov    DWORD PTR [esp],eax
  5687d8:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  5687dd:	test   eax,eax
  5687df:	je     568869
  5687e5:	mov    DWORD PTR [esp],eax
  5687e8:	mov    DWORD PTR [esp+0x4],0x0
  5687f0:	call   16ff2c9  ; ABH.Shared.BalancingData.ClassItemBalancingData::get_RestrictedBirdId
  5687f5:	lea    ecx,[ebx+0x430e4]
  5687fb:	mov    ecx,DWORD PTR [ecx]
  5687fd:	test   BYTE PTR [ecx+0xb2],0x1
  568804:	je     56881c
  568806:	cmp    DWORD PTR [ecx+0x60],0x0
  56880a:	jne    56881c
  56880c:	mov    DWORD PTR [esp],ecx
  56880f:	mov    DWORD PTR [esp+0x14],eax
  568813:	call   1db0b8
  568818:	mov    eax,DWORD PTR [esp+0x14]
  56881c:	mov    DWORD PTR [esp+0x8],eax
  568820:	mov    DWORD PTR [esp+0x4],esi
  568824:	mov    DWORD PTR [esp+0xc],0x0
  56882c:	mov    DWORD PTR [esp],0x0
  568833:	call   ca24cf  ; System.String::op_Equality
  568838:	mov    esi,edi
  56883a:	inc    esi
  56883b:	test   al,al
  56883d:	mov    edi,DWORD PTR [esp+0x18]
  568841:	je     5686dc
  568847:	mov    eax,DWORD PTR [ebp+0x14]
  56884a:	mov    DWORD PTR [esp+0x4],eax
  56884e:	mov    eax,DWORD PTR [ebp+0x10]
  568851:	mov    DWORD PTR [esp],eax
  568854:	mov    DWORD PTR [esp+0x8],0x0
  56885c:	call   6cd4ff  ; ABH.GameDatas.ClassItemGameData::AddMastery
  568861:	lea    esp,[ebp-0xc]
  568864:	pop    esi
  568865:	pop    edi
  568866:	pop    ebx
  568867:	pop    ebp
  568868:	ret
  568869:	call   1fbc48
  56886e:	call   540b98