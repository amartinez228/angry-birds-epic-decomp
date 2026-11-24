
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fb733:
 13fb733:	push   ebp
 13fb734:	mov    ebp,esp
 13fb736:	push   ebx
 13fb737:	push   edi
 13fb738:	push   esi
 13fb739:	and    esp,0xfffffff0
 13fb73c:	sub    esp,0x30
 13fb73f:	call   13fb744
 13fb744:	pop    ebx
 13fb745:	add    ebx,0xb16800
 13fb74b:	mov    edi,DWORD PTR [ebp+0xc]
 13fb74e:	mov    esi,DWORD PTR [ebp+0x8]
 13fb751:	mov    al,BYTE PTR [ebx+0x654de]
 13fb757:	test   al,al
 13fb759:	jne    13fb772
 13fb75b:	lea    eax,[ebx-0x65e62c]
 13fb761:	mov    eax,DWORD PTR [eax]
 13fb763:	mov    DWORD PTR [esp],eax
 13fb766:	call   1ca6e8
 13fb76b:	mov    BYTE PTR [ebx+0x654de],0x1
 13fb772:	mov    DWORD PTR [esp+0x4],edi
 13fb776:	mov    DWORD PTR [esp],esi
 13fb779:	mov    DWORD PTR [esp+0x8],0x0
 13fb781:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
 13fb786:	mov    DWORD PTR [esp],esi
 13fb789:	mov    DWORD PTR [esp+0x4],0x0
 13fb791:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fb796:	test   eax,eax
 13fb798:	je     13fbacc
 13fb79e:	mov    DWORD PTR [esp],eax
 13fb7a1:	mov    DWORD PTR [esp+0x4],0x0
 13fb7a9:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 13fb7ae:	test   eax,eax
 13fb7b0:	je     13fbacc
 13fb7b6:	lea    ecx,[esi+0x88]
 13fb7bc:	lea    edx,[ebx+0x56d18]
 13fb7c2:	mov    edx,DWORD PTR [edx]
 13fb7c4:	lea    edi,[ebx+0x4a034]
 13fb7ca:	mov    DWORD PTR [esp+0x14],edi
 13fb7ce:	mov    edi,DWORD PTR [edi]
 13fb7d0:	mov    DWORD PTR [esp+0xc],edi
 13fb7d4:	mov    DWORD PTR [esp+0x8],ecx
 13fb7d8:	mov    DWORD PTR [esp+0x4],edx
 13fb7dc:	mov    DWORD PTR [esp],eax
 13fb7df:	call   61f168
 13fb7e4:	mov    DWORD PTR [esp],esi
 13fb7e7:	mov    DWORD PTR [esp+0x4],0x0
 13fb7ef:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fb7f4:	test   eax,eax
 13fb7f6:	je     13fbacc
 13fb7fc:	mov    DWORD PTR [esp],eax
 13fb7ff:	mov    DWORD PTR [esp+0x4],0x0
 13fb807:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 13fb80c:	test   eax,eax
 13fb80e:	je     13fbacc
 13fb814:	lea    ecx,[esi+0x8c]
 13fb81a:	lea    edx,[ebx+0x56bc4]
 13fb820:	mov    edx,DWORD PTR [edx]
 13fb822:	mov    edi,DWORD PTR [esp+0x14]
 13fb826:	mov    edi,DWORD PTR [edi]
 13fb828:	mov    DWORD PTR [esp+0xc],edi
 13fb82c:	mov    DWORD PTR [esp+0x8],ecx
 13fb830:	mov    DWORD PTR [esp+0x4],edx
 13fb834:	mov    DWORD PTR [esp],eax
 13fb837:	call   61f168
 13fb83c:	mov    DWORD PTR [esp],esi
 13fb83f:	mov    DWORD PTR [esp+0x4],0x0
 13fb847:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fb84c:	test   eax,eax
 13fb84e:	je     13fbacc
 13fb854:	mov    DWORD PTR [esp],eax
 13fb857:	mov    DWORD PTR [esp+0x4],0x0
 13fb85f:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 13fb864:	test   eax,eax
 13fb866:	je     13fbacc
 13fb86c:	lea    ecx,[esi+0x98]
 13fb872:	lea    edx,[ebx+0x56b1c]
 13fb878:	mov    edx,DWORD PTR [edx]
 13fb87a:	mov    edi,DWORD PTR [esp+0x14]
 13fb87e:	mov    edi,DWORD PTR [edi]
 13fb880:	mov    DWORD PTR [esp+0xc],edi
 13fb884:	mov    edi,esi
 13fb886:	mov    DWORD PTR [esp+0x8],ecx
 13fb88a:	mov    DWORD PTR [esp+0x4],edx
 13fb88e:	mov    DWORD PTR [esp],eax
 13fb891:	call   61f168
 13fb896:	mov    DWORD PTR [esp],edi
 13fb899:	mov    DWORD PTR [esp+0x4],0x0
 13fb8a1:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fb8a6:	test   eax,eax
 13fb8a8:	je     13fbacc
 13fb8ae:	mov    DWORD PTR [esp],eax
 13fb8b1:	mov    DWORD PTR [esp+0x4],0x0
 13fb8b9:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 13fb8be:	test   eax,eax
 13fb8c0:	je     13fbacc
 13fb8c6:	lea    ecx,[edi+0x90]
 13fb8cc:	lea    edx,[ebx+0x56bc0]
 13fb8d2:	mov    edx,DWORD PTR [edx]
 13fb8d4:	mov    esi,DWORD PTR [esp+0x14]
 13fb8d8:	mov    esi,DWORD PTR [esi]
 13fb8da:	mov    DWORD PTR [esp+0xc],esi
 13fb8de:	mov    DWORD PTR [esp+0x8],ecx
 13fb8e2:	mov    DWORD PTR [esp+0x4],edx
 13fb8e6:	mov    DWORD PTR [esp],eax
 13fb8e9:	call   61f168
 13fb8ee:	mov    DWORD PTR [esp],edi
 13fb8f1:	mov    DWORD PTR [esp+0x4],0x0
 13fb8f9:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fb8fe:	test   eax,eax
 13fb900:	je     13fbacc
 13fb906:	mov    DWORD PTR [esp],eax
 13fb909:	mov    DWORD PTR [esp+0x4],0x0
 13fb911:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 13fb916:	test   eax,eax
 13fb918:	mov    esi,DWORD PTR [ebp+0xc]
 13fb91b:	je     13fbacc
 13fb921:	lea    ecx,[ebx+0x56c74]
 13fb927:	mov    ecx,DWORD PTR [ecx]
 13fb929:	lea    edx,[ebx+0x4a014]
 13fb92f:	mov    edx,DWORD PTR [edx]
 13fb931:	mov    DWORD PTR [esp+0x8],edx
 13fb935:	mov    DWORD PTR [esp+0x4],ecx
 13fb939:	mov    DWORD PTR [esp],eax
 13fb93c:	call   61e326
 13fb941:	mov    BYTE PTR [edi+0x94],al
 13fb947:	mov    DWORD PTR [esp+0x4],esi
 13fb94b:	mov    DWORD PTR [esp],edi
 13fb94e:	mov    DWORD PTR [esp+0x8],0x0
 13fb956:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
 13fb95b:	movss  xmm0,DWORD PTR [edi+0x48]
 13fb960:	mulss  xmm0,DWORD PTR [ebx-0x629474]
 13fb968:	movss  DWORD PTR [edi+0x48],xmm0
 13fb96d:	mov    ecx,edi
 13fb96f:	lea    edi,[ebx+0x45ccc]
 13fb975:	mov    eax,DWORD PTR [edi]
 13fb977:	mov    eax,DWORD PTR [eax+0x50]
 13fb97a:	cmp    DWORD PTR [eax],0x0
 13fb97d:	jne    13fb9d3
 13fb97f:	lea    eax,[ebx+0x4a640]
 13fb985:	mov    eax,DWORD PTR [eax]
 13fb987:	mov    DWORD PTR [esp+0x14],eax
 13fb98b:	lea    eax,[ebx+0x45870]
 13fb991:	mov    eax,DWORD PTR [eax]
 13fb993:	mov    DWORD PTR [esp],eax
 13fb996:	call   20bfb2
 13fb99b:	mov    esi,eax
 13fb99d:	mov    eax,DWORD PTR [esp+0x14]
 13fb9a1:	mov    DWORD PTR [esp+0x28],eax
 13fb9a5:	lea    eax,[ebx+0x4a01c]
 13fb9ab:	mov    eax,DWORD PTR [eax]
 13fb9ad:	mov    DWORD PTR [esp+0xc],eax
 13fb9b1:	mov    eax,DWORD PTR [esp+0x28]
 13fb9b5:	mov    DWORD PTR [esp+0x8],eax
 13fb9b9:	mov    DWORD PTR [esp],esi
 13fb9bc:	mov    DWORD PTR [esp+0x4],0x0
 13fb9c4:	call   17d7670
 13fb9c9:	mov    ecx,DWORD PTR [ebp+0x8]
 13fb9cc:	mov    eax,DWORD PTR [edi]
 13fb9ce:	mov    eax,DWORD PTR [eax+0x50]
 13fb9d1:	mov    DWORD PTR [eax],esi
 13fb9d3:	mov    eax,DWORD PTR [edi]
 13fb9d5:	mov    eax,DWORD PTR [eax+0x50]
 13fb9d8:	mov    eax,DWORD PTR [eax]
 13fb9da:	mov    DWORD PTR [ecx+0x4c],eax
 13fb9dd:	mov    eax,DWORD PTR [ecx+0x54]
 13fb9e0:	mov    DWORD PTR [esp+0x14],eax
 13fb9e4:	lea    eax,[ebx+0x4a644]
 13fb9ea:	mov    eax,DWORD PTR [eax]
 13fb9ec:	mov    DWORD PTR [esp+0x10],eax
 13fb9f0:	lea    eax,[ebx+0x459c8]
 13fb9f6:	mov    eax,DWORD PTR [eax]
 13fb9f8:	mov    DWORD PTR [esp],eax
 13fb9fb:	mov    edi,ecx
 13fb9fd:	call   20bfb2
 13fba02:	mov    esi,eax
 13fba04:	mov    eax,DWORD PTR [esp+0x10]
 13fba08:	mov    DWORD PTR [esp+0x20],eax
 13fba0c:	lea    eax,[ebx+0x4a4a0]
 13fba12:	mov    eax,DWORD PTR [eax]
 13fba14:	mov    DWORD PTR [esp+0xc],eax
 13fba18:	mov    eax,DWORD PTR [esp+0x20]
 13fba1c:	mov    DWORD PTR [esp+0x8],eax
 13fba20:	mov    DWORD PTR [esp+0x4],edi
 13fba24:	mov    DWORD PTR [esp],esi
 13fba27:	call   17d8881
 13fba2c:	mov    ecx,DWORD PTR [esp+0x14]
 13fba30:	test   ecx,ecx
 13fba32:	je     13fbacc
 13fba38:	lea    eax,[ebx+0x4a4a4]
 13fba3e:	mov    eax,DWORD PTR [eax]
 13fba40:	mov    DWORD PTR [esp+0x8],eax
 13fba44:	mov    DWORD PTR [esp+0x4],esi
 13fba48:	mov    DWORD PTR [esp],ecx
 13fba4b:	call   4c23b4
 13fba50:	mov    eax,DWORD PTR [edi+0x74]
 13fba53:	mov    DWORD PTR [esp+0x14],eax
 13fba57:	lea    eax,[ebx+0x4a648]
 13fba5d:	mov    edi,DWORD PTR [eax]
 13fba5f:	lea    eax,[ebx+0x45954]
 13fba65:	mov    eax,DWORD PTR [eax]
 13fba67:	mov    DWORD PTR [esp],eax
 13fba6a:	call   20bfb2
 13fba6f:	mov    esi,eax
 13fba71:	mov    DWORD PTR [esp+0x18],edi
 13fba75:	mov    edi,DWORD PTR [ebp+0x8]
 13fba78:	lea    eax,[ebx+0x4a368]
 13fba7e:	mov    eax,DWORD PTR [eax]
 13fba80:	mov    DWORD PTR [esp+0xc],eax
 13fba84:	mov    eax,DWORD PTR [esp+0x18]
 13fba88:	mov    DWORD PTR [esp+0x8],eax
 13fba8c:	mov    DWORD PTR [esp+0x4],edi
 13fba90:	mov    DWORD PTR [esp],esi
 13fba93:	call   15f5a16
 13fba98:	mov    ecx,DWORD PTR [esp+0x14]
 13fba9c:	test   ecx,ecx
 13fba9e:	je     13fbacc
 13fbaa0:	lea    eax,[ebx+0x4a36c]
 13fbaa6:	mov    eax,DWORD PTR [eax]
 13fbaa8:	mov    DWORD PTR [esp+0x8],eax
 13fbaac:	mov    DWORD PTR [esp+0x4],esi
 13fbab0:	mov    DWORD PTR [esp],ecx
 13fbab3:	call   4c23b4
 13fbab8:	mov    BYTE PTR [edi+0x43],0x0
 13fbabc:	mov    BYTE PTR [edi+0x40],0x0
 13fbac0:	mov    BYTE PTR [edi+0x42],0x1
 13fbac4:	lea    esp,[ebp-0xc]
 13fbac7:	pop    esi
 13fbac8:	pop    edi
 13fbac9:	pop    ebx
 13fbaca:	pop    ebp
 13fbacb:	ret
 13fbacc:	call   1fbc48
 13fbad1:	call   13f24e0