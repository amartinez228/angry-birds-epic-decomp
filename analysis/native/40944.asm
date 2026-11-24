
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

004ff887:
  4ff887:	push   ebp
  4ff888:	mov    ebp,esp
  4ff88a:	push   ebx
  4ff88b:	push   edi
  4ff88c:	push   esi
  4ff88d:	and    esp,0xfffffff0
  4ff890:	sub    esp,0x30
  4ff893:	call   4ff898
  4ff898:	pop    ebx
  4ff899:	add    ebx,0x1a126ac
  4ff89f:	mov    esi,DWORD PTR [ebp+0xc]
  4ff8a2:	mov    al,BYTE PTR [ebx+0x5d4e7]
  4ff8a8:	test   al,al
  4ff8aa:	jne    4ff8c3
  4ff8ac:	lea    eax,[ebx-0x66f4dc]
  4ff8b2:	mov    eax,DWORD PTR [eax]
  4ff8b4:	mov    DWORD PTR [esp],eax
  4ff8b7:	call   1ca6e8
  4ff8bc:	mov    BYTE PTR [ebx+0x5d4e7],0x1
  4ff8c3:	test   esi,esi
  4ff8c5:	je     4ffb76
  4ff8cb:	mov    DWORD PTR [esp],esi
  4ff8ce:	mov    DWORD PTR [esp+0x4],0x0
  4ff8d6:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4ff8db:	test   eax,eax
  4ff8dd:	je     4ffb76
  4ff8e3:	mov    DWORD PTR [esp],eax
  4ff8e6:	mov    DWORD PTR [esp+0x4],0x0
  4ff8ee:	call   16fe50e  ; ABH.Shared.BalancingData.BattleBalancingData::get_ScoringStrategy
  4ff8f3:	mov    ecx,eax
  4ff8f5:	cmp    ecx,0x2
  4ff8f8:	je     4ff911
  4ff8fa:	cmp    ecx,0x1
  4ff8fd:	jne    4ff9b0
  4ff903:	mov    DWORD PTR [esp+0x4],esi
  4ff907:	call   50463e  ; ABH.Services.Logic.BattleService::getScorePerStarFromMaximum
  4ff90c:	jmp    4ffaf8
  4ff911:	lea    eax,[ebx+0x45820]
  4ff917:	mov    eax,DWORD PTR [eax]
  4ff919:	test   BYTE PTR [eax+0xb2],0x1
  4ff920:	je     4ff930
  4ff922:	cmp    DWORD PTR [eax+0x60],0x0
  4ff926:	jne    4ff930
  4ff928:	mov    DWORD PTR [esp],eax
  4ff92b:	call   1db0b8
  4ff930:	mov    DWORD PTR [esp+0x4],0x0
  4ff938:	mov    DWORD PTR [esp],0x0
  4ff93f:	call   107cf95  ; DIContainerBalancing::get_Service
  4ff944:	test   eax,eax
  4ff946:	je     4ffb76
  4ff94c:	lea    ecx,[ebx+0x4afac]
  4ff952:	mov    edx,DWORD PTR [ecx]
  4ff954:	mov    DWORD PTR [esp+0x20],edx
  4ff958:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  4ff95e:	mov    ecx,DWORD PTR [ecx]
  4ff960:	mov    DWORD PTR [esp+0x24],ecx
  4ff964:	mov    ecx,DWORD PTR [edx+0xc]
  4ff967:	movzx  edx,WORD PTR [edx+0x2c]
  4ff96b:	mov    DWORD PTR [esp+0x1c],edx
  4ff96f:	mov    edx,DWORD PTR [eax]
  4ff971:	mov    DWORD PTR [esp+0x28],eax
  4ff975:	movzx  eax,WORD PTR [edx+0xaa]
  4ff97c:	test   eax,eax
  4ff97e:	je     4ff993
  4ff980:	mov    esi,DWORD PTR [edx+0x4c]
  4ff983:	xor    edi,edi
  4ff985:	cmp    DWORD PTR [esi+edi*8],ecx
  4ff988:	je     4ffa52
  4ff98e:	inc    edi
  4ff98f:	cmp    edi,eax
  4ff991:	jb     4ff985
  4ff993:	mov    eax,DWORD PTR [esp+0x1c]
  4ff997:	mov    DWORD PTR [esp+0x8],eax
  4ff99b:	mov    DWORD PTR [esp+0x4],ecx
  4ff99f:	mov    esi,DWORD PTR [esp+0x28]
  4ff9a3:	mov    DWORD PTR [esp],esi
  4ff9a6:	call   1c1964
  4ff9ab:	jmp    4ffa65
  4ff9b0:	xor    eax,eax
  4ff9b2:	test   ecx,ecx
  4ff9b4:	jne    4ffaf8
  4ff9ba:	lea    eax,[ebx+0x45820]
  4ff9c0:	mov    eax,DWORD PTR [eax]
  4ff9c2:	test   BYTE PTR [eax+0xb2],0x1
  4ff9c9:	je     4ff9d9
  4ff9cb:	cmp    DWORD PTR [eax+0x60],0x0
  4ff9cf:	jne    4ff9d9
  4ff9d1:	mov    DWORD PTR [esp],eax
  4ff9d4:	call   1db0b8
  4ff9d9:	mov    DWORD PTR [esp+0x4],0x0
  4ff9e1:	mov    DWORD PTR [esp],0x0
  4ff9e8:	call   107cf95  ; DIContainerBalancing::get_Service
  4ff9ed:	test   eax,eax
  4ff9ef:	je     4ffb76
  4ff9f5:	lea    ecx,[ebx+0x4afac]
  4ff9fb:	mov    edx,DWORD PTR [ecx]
  4ff9fd:	mov    DWORD PTR [esp+0x20],edx
  4ffa01:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  4ffa07:	mov    ecx,DWORD PTR [ecx]
  4ffa09:	mov    DWORD PTR [esp+0x24],ecx
  4ffa0d:	mov    ecx,DWORD PTR [edx+0xc]
  4ffa10:	movzx  edx,WORD PTR [edx+0x2c]
  4ffa14:	mov    DWORD PTR [esp+0x1c],edx
  4ffa18:	mov    edx,DWORD PTR [eax]
  4ffa1a:	mov    DWORD PTR [esp+0x28],eax
  4ffa1e:	movzx  eax,WORD PTR [edx+0xaa]
  4ffa25:	test   eax,eax
  4ffa27:	je     4ffa38
  4ffa29:	mov    esi,DWORD PTR [edx+0x4c]
  4ffa2c:	xor    edi,edi
  4ffa2e:	cmp    DWORD PTR [esi+edi*8],ecx
  4ffa31:	je     4ffaa6
  4ffa33:	inc    edi
  4ffa34:	cmp    edi,eax
  4ffa36:	jb     4ffa2e
  4ffa38:	mov    eax,DWORD PTR [esp+0x1c]
  4ffa3c:	mov    DWORD PTR [esp+0x8],eax
  4ffa40:	mov    DWORD PTR [esp+0x4],ecx
  4ffa44:	mov    esi,DWORD PTR [esp+0x28]
  4ffa48:	mov    DWORD PTR [esp],esi
  4ffa4b:	call   1c1964
  4ffa50:	jmp    4ffab9
  4ffa52:	mov    eax,DWORD PTR [esp+0x1c]
  4ffa56:	add    eax,DWORD PTR [esi+edi*8+0x4]
  4ffa5a:	lea    eax,[edx+eax*8+0xb4]
  4ffa61:	mov    esi,DWORD PTR [esp+0x28]
  4ffa65:	mov    eax,DWORD PTR [eax+0x4]
  4ffa68:	mov    ecx,DWORD PTR [esp+0x20]
  4ffa6c:	mov    DWORD PTR [esp+0x4],ecx
  4ffa70:	mov    DWORD PTR [esp],eax
  4ffa73:	call   1da450
  4ffa78:	mov    DWORD PTR [esp+0x8],eax
  4ffa7c:	mov    ecx,DWORD PTR [esp+0x24]
  4ffa80:	mov    DWORD PTR [esp+0x4],ecx
  4ffa84:	mov    DWORD PTR [esp],esi
  4ffa87:	call   DWORD PTR [eax]
  4ffa89:	test   eax,eax
  4ffa8b:	mov    esi,DWORD PTR [ebp+0xc]
  4ffa8e:	je     4ffb76
  4ffa94:	mov    DWORD PTR [esp],eax
  4ffa97:	mov    DWORD PTR [esp+0x4],0x0
  4ffa9f:	call   1702b33  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScorePerStarNeededPvP
  4ffaa4:	jmp    4ffaf8
  4ffaa6:	mov    eax,DWORD PTR [esp+0x1c]
  4ffaaa:	add    eax,DWORD PTR [esi+edi*8+0x4]
  4ffaae:	lea    eax,[edx+eax*8+0xb4]
  4ffab5:	mov    esi,DWORD PTR [esp+0x28]
  4ffab9:	mov    eax,DWORD PTR [eax+0x4]
  4ffabc:	mov    ecx,DWORD PTR [esp+0x20]
  4ffac0:	mov    DWORD PTR [esp+0x4],ecx
  4ffac4:	mov    DWORD PTR [esp],eax
  4ffac7:	call   1da450
  4ffacc:	mov    DWORD PTR [esp+0x8],eax
  4ffad0:	mov    ecx,DWORD PTR [esp+0x24]
  4ffad4:	mov    DWORD PTR [esp+0x4],ecx
  4ffad8:	mov    DWORD PTR [esp],esi
  4ffadb:	call   DWORD PTR [eax]
  4ffadd:	test   eax,eax
  4ffadf:	mov    esi,DWORD PTR [ebp+0xc]
  4ffae2:	je     4ffb76
  4ffae8:	mov    DWORD PTR [esp],eax
  4ffaeb:	mov    DWORD PTR [esp+0x4],0x0
  4ffaf3:	call   170298f  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScorePerStarNeeded
  4ffaf8:	mov    ecx,DWORD PTR [esi+0x14]
  4ffafb:	test   ecx,ecx
  4ffafd:	je     4ffb76
  4ffaff:	lea    edx,[eax+eax*2]
  4ffb02:	mov    DWORD PTR [ecx+0x24],edx
  4ffb05:	mov    ecx,DWORD PTR [esi+0x14]
  4ffb08:	test   ecx,ecx
  4ffb0a:	je     4ffb76
  4ffb0c:	lea    edi,[eax*4+0x0]
  4ffb13:	mov    edx,0x4
  4ffb18:	mov    esi,0x1
  4ffb1d:	sub    edi,eax
  4ffb1f:	cmp    DWORD PTR [ecx+0x30],edi
  4ffb22:	jge    4ffb2c
  4ffb24:	dec    edx
  4ffb25:	cmp    edx,0x1
  4ffb28:	jg     4ffb1d
  4ffb2a:	jmp    4ffb2f
  4ffb2c:	dec    edx
  4ffb2d:	mov    esi,edx
  4ffb2f:	lea    eax,[ebx+0x44ec8]
  4ffb35:	mov    eax,DWORD PTR [eax]
  4ffb37:	test   BYTE PTR [eax+0xb2],0x1
  4ffb3e:	je     4ffb4e
  4ffb40:	cmp    DWORD PTR [eax+0x60],0x0
  4ffb44:	jne    4ffb4e
  4ffb46:	mov    DWORD PTR [esp],eax
  4ffb49:	call   1db0b8
  4ffb4e:	mov    DWORD PTR [esp+0x4],esi
  4ffb52:	mov    DWORD PTR [esp+0xc],0x0
  4ffb5a:	mov    DWORD PTR [esp+0x8],0x1
  4ffb62:	mov    DWORD PTR [esp],0x0
  4ffb69:	call   138c91b  ; UnityEngine.Mathf::Max
  4ffb6e:	lea    esp,[ebp-0xc]
  4ffb71:	pop    esi
  4ffb72:	pop    edi
  4ffb73:	pop    ebx
  4ffb74:	pop    ebp
  4ffb75:	ret
  4ffb76:	call   1fbc48
  4ffb7b:	call   540b98