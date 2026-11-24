
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00502698:
  502698:	push   ebp
  502699:	mov    ebp,esp
  50269b:	push   ebx
  50269c:	push   edi
  50269d:	push   esi
  50269e:	and    esp,0xfffffff0
  5026a1:	sub    esp,0x50
  5026a4:	call   5026a9
  5026a9:	pop    ebx
  5026aa:	add    ebx,0x1a0f89b
  5026b0:	mov    esi,DWORD PTR [ebp+0xc]
  5026b3:	mov    al,BYTE PTR [ebx+0x5d4e2]
  5026b9:	test   al,al
  5026bb:	jne    5026d4
  5026bd:	lea    eax,[ebx-0x66f41c]
  5026c3:	mov    eax,DWORD PTR [eax]
  5026c5:	mov    DWORD PTR [esp],eax
  5026c8:	call   1ca6e8
  5026cd:	mov    BYTE PTR [ebx+0x5d4e2],0x1
  5026d4:	test   esi,esi
  5026d6:	je     5038fe
  5026dc:	lea    eax,[ebx+0x45874]
  5026e2:	mov    DWORD PTR [esp+0x34],eax
  5026e6:	mov    eax,DWORD PTR [eax]
  5026e8:	mov    ecx,DWORD PTR [esi]
  5026ea:	movzx  edx,WORD PTR [ecx+0xaa]
  5026f1:	test   edx,edx
  5026f3:	je     502704
  5026f5:	mov    esi,DWORD PTR [ecx+0x4c]
  5026f8:	xor    edi,edi
  5026fa:	cmp    DWORD PTR [esi+edi*8],eax
  5026fd:	je     50271f
  5026ff:	inc    edi
  502700:	cmp    edi,edx
  502702:	jb     5026fa
  502704:	mov    DWORD PTR [esp+0x4],eax
  502708:	mov    esi,DWORD PTR [ebp+0xc]
  50270b:	mov    DWORD PTR [esp],esi
  50270e:	mov    DWORD PTR [esp+0x8],0x23
  502716:	call   1c1964
  50271b:	mov    ecx,eax
  50271d:	jmp    50272d
  50271f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  502723:	lea    ecx,[ecx+eax*8+0x1cc]
  50272a:	mov    esi,DWORD PTR [ebp+0xc]
  50272d:	mov    eax,DWORD PTR [ecx+0x4]
  502730:	mov    DWORD PTR [esp+0x4],eax
  502734:	mov    DWORD PTR [esp],esi
  502737:	call   DWORD PTR [ecx]
  502739:	xor    esi,esi
  50273b:	cmp    eax,0x2
  50273e:	je     5038bd
  502744:	mov    eax,DWORD PTR [ebp+0x10]
  502747:	test   eax,eax
  502749:	je     5038fe
  50274f:	mov    eax,DWORD PTR [eax+0x24]
  502752:	mov    DWORD PTR [esp+0x24],eax
  502756:	lea    eax,[ebx+0x45820]
  50275c:	mov    DWORD PTR [esp+0x1c],eax
  502760:	mov    eax,DWORD PTR [eax]
  502762:	test   BYTE PTR [eax+0xb2],0x1
  502769:	je     502779
  50276b:	cmp    DWORD PTR [eax+0x60],0x0
  50276f:	jne    502779
  502771:	mov    DWORD PTR [esp],eax
  502774:	call   1db0b8
  502779:	mov    DWORD PTR [esp+0x4],0x0
  502781:	mov    DWORD PTR [esp],0x0
  502788:	call   107cf95  ; DIContainerBalancing::get_Service
  50278d:	test   eax,eax
  50278f:	je     5038fe
  502795:	lea    ecx,[ebx+0x4afac]
  50279b:	mov    DWORD PTR [esp+0x38],ecx
  50279f:	mov    DWORD PTR [esp+0x40],ebx
  5027a3:	mov    edi,DWORD PTR [ecx]
  5027a5:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  5027ab:	mov    DWORD PTR [esp+0x3c],ecx
  5027af:	mov    ecx,DWORD PTR [ecx]
  5027b1:	mov    DWORD PTR [esp+0x2c],ecx
  5027b5:	mov    ecx,DWORD PTR [eax]
  5027b7:	mov    DWORD PTR [esp+0x30],eax
  5027bb:	movzx  esi,WORD PTR [ecx+0xaa]
  5027c2:	test   esi,esi
  5027c4:	mov    edx,DWORD PTR [edi+0xc]
  5027c7:	movzx  eax,WORD PTR [edi+0x2c]
  5027cb:	mov    DWORD PTR [esp+0x28],eax
  5027cf:	je     5027e0
  5027d1:	mov    ebx,DWORD PTR [ecx+0x4c]
  5027d4:	xor    eax,eax
  5027d6:	cmp    DWORD PTR [ebx+eax*8],edx
  5027d9:	je     5027fe
  5027db:	inc    eax
  5027dc:	cmp    eax,esi
  5027de:	jb     5027d6
  5027e0:	mov    eax,DWORD PTR [esp+0x28]
  5027e4:	mov    DWORD PTR [esp+0x8],eax
  5027e8:	mov    DWORD PTR [esp+0x4],edx
  5027ec:	mov    esi,DWORD PTR [esp+0x30]
  5027f0:	mov    DWORD PTR [esp],esi
  5027f3:	mov    ebx,DWORD PTR [esp+0x40]
  5027f7:	call   1c1964
  5027fc:	jmp    502815
  5027fe:	mov    edx,DWORD PTR [esp+0x28]
  502802:	add    edx,DWORD PTR [ebx+eax*8+0x4]
  502806:	lea    eax,[ecx+edx*8+0xb4]
  50280d:	mov    ebx,DWORD PTR [esp+0x40]
  502811:	mov    esi,DWORD PTR [esp+0x30]
  502815:	mov    eax,DWORD PTR [eax+0x4]
  502818:	mov    DWORD PTR [esp+0x4],edi
  50281c:	mov    DWORD PTR [esp],eax
  50281f:	call   1da450
  502824:	mov    DWORD PTR [esp+0x8],eax
  502828:	mov    ecx,DWORD PTR [esp+0x2c]
  50282c:	mov    DWORD PTR [esp+0x4],ecx
  502830:	mov    DWORD PTR [esp],esi
  502833:	call   DWORD PTR [eax]
  502835:	test   eax,eax
  502837:	je     5038fe
  50283d:	mov    DWORD PTR [esp],eax
  502840:	mov    DWORD PTR [esp+0x4],0x0
  502848:	call   17029f8  ; ABH.Shared.BalancingData.ScoreBalancingData::get_PigScoreLossPerTurnInPercent
  50284d:	mov    DWORD PTR [esp+0x30],eax
  502851:	mov    DWORD PTR [esp+0x4],0x0
  502859:	mov    DWORD PTR [esp],0x0
  502860:	mov    DWORD PTR [esp+0x40],ebx
  502864:	call   107cf95  ; DIContainerBalancing::get_Service
  502869:	mov    edi,eax
  50286b:	test   edi,edi
  50286d:	je     5038fa
  502873:	mov    eax,DWORD PTR [esp+0x38]
  502877:	mov    esi,DWORD PTR [eax]
  502879:	mov    eax,DWORD PTR [esp+0x3c]
  50287d:	mov    eax,DWORD PTR [eax]
  50287f:	mov    DWORD PTR [esp+0x28],eax
  502883:	mov    ecx,DWORD PTR [esi+0xc]
  502886:	movzx  eax,WORD PTR [esi+0x2c]
  50288a:	mov    DWORD PTR [esp+0x20],eax
  50288e:	mov    edx,DWORD PTR [edi]
  502890:	mov    DWORD PTR [esp+0x2c],edi
  502894:	movzx  eax,WORD PTR [edx+0xaa]
  50289b:	test   eax,eax
  50289d:	je     5028ae
  50289f:	mov    ebx,DWORD PTR [edx+0x4c]
  5028a2:	xor    edi,edi
  5028a4:	cmp    DWORD PTR [ebx+edi*8],ecx
  5028a7:	je     5028cc
  5028a9:	inc    edi
  5028aa:	cmp    edi,eax
  5028ac:	jb     5028a4
  5028ae:	mov    eax,DWORD PTR [esp+0x20]
  5028b2:	mov    DWORD PTR [esp+0x8],eax
  5028b6:	mov    DWORD PTR [esp+0x4],ecx
  5028ba:	mov    edi,DWORD PTR [esp+0x2c]
  5028be:	mov    DWORD PTR [esp],edi
  5028c1:	mov    ebx,DWORD PTR [esp+0x40]
  5028c5:	call   1c1964
  5028ca:	jmp    5028e3
  5028cc:	mov    eax,DWORD PTR [esp+0x20]
  5028d0:	add    eax,DWORD PTR [ebx+edi*8+0x4]
  5028d4:	lea    eax,[edx+eax*8+0xb4]
  5028db:	mov    ebx,DWORD PTR [esp+0x40]
  5028df:	mov    edi,DWORD PTR [esp+0x2c]
  5028e3:	mov    eax,DWORD PTR [eax+0x4]
  5028e6:	mov    DWORD PTR [esp+0x4],esi
  5028ea:	mov    DWORD PTR [esp],eax
  5028ed:	call   1da450
  5028f2:	mov    DWORD PTR [esp+0x8],eax
  5028f6:	mov    ecx,DWORD PTR [esp+0x28]
  5028fa:	mov    DWORD PTR [esp+0x4],ecx
  5028fe:	mov    DWORD PTR [esp],edi
  502901:	call   DWORD PTR [eax]
  502903:	test   eax,eax
  502905:	mov    edi,DWORD PTR [ebp+0x10]
  502908:	je     5038fe
  50290e:	mov    edx,DWORD PTR [esp+0x30]
  502912:	imul   edx,DWORD PTR [esp+0x24]
  502917:	mov    ecx,0x64
  50291c:	sub    ecx,edx
  50291e:	cvtsi2ss xmm0,ecx
  502922:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  50292a:	movss  DWORD PTR [esp+0x30],xmm0
  502930:	mov    DWORD PTR [esp],eax
  502933:	mov    DWORD PTR [esp+0x4],0x0
  50293b:	call   1702a3e  ; ABH.Shared.BalancingData.ScoreBalancingData::get_MinimumPigScoreInPercent
  502940:	mov    esi,eax
  502942:	lea    eax,[ebx+0x44ec8]
  502948:	mov    eax,DWORD PTR [eax]
  50294a:	test   BYTE PTR [eax+0xb2],0x1
  502951:	je     502961
  502953:	cmp    DWORD PTR [eax+0x60],0x0
  502957:	jne    502961
  502959:	mov    DWORD PTR [esp],eax
  50295c:	call   1db0b8
  502961:	xorps  xmm0,xmm0
  502964:	cvtsi2ss xmm0,esi
  502968:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  502970:	movss  xmm1,DWORD PTR [esp+0x30]
  502976:	movss  DWORD PTR [esp+0x8],xmm1
  50297c:	movss  DWORD PTR [esp+0x4],xmm0
  502982:	mov    DWORD PTR [esp+0xc],0x0
  50298a:	mov    DWORD PTR [esp],0x0
  502991:	call   1385329  ; UnityEngine.Mathf::Max
  502996:	fstp   DWORD PTR [esp+0x44]
  50299a:	movss  xmm0,DWORD PTR [esp+0x44]
  5029a0:	movss  DWORD PTR [esp+0x2c],xmm0
  5029a6:	mov    DWORD PTR [esp],edi
  5029a9:	mov    DWORD PTR [esp+0x4],0x0
  5029b1:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  5029b6:	test   eax,eax
  5029b8:	je     5038fe
  5029be:	mov    DWORD PTR [esp],eax
  5029c1:	mov    DWORD PTR [esp+0x4],0x0
  5029c9:	call   16fe50e  ; ABH.Shared.BalancingData.BattleBalancingData::get_ScoringStrategy
  5029ce:	cmp    eax,0x2
  5029d1:	mov    ecx,DWORD PTR [ebp+0xc]
  5029d4:	je     502b4f
  5029da:	cmp    eax,0x1
  5029dd:	jne    502b93
  5029e3:	lea    eax,[ebx+0x45878]
  5029e9:	mov    edx,DWORD PTR [eax]
  5029eb:	mov    eax,DWORD PTR [ecx]
  5029ed:	movzx  ecx,BYTE PTR [eax+0xac]
  5029f4:	movzx  esi,BYTE PTR [edx+0xac]
  5029fb:	cmp    ecx,esi
  5029fd:	jb     502a0c
  5029ff:	mov    edi,DWORD PTR [eax+0x58]
  502a02:	cmp    DWORD PTR [edi+esi*4-0x4],edx
  502a06:	je     502e10
  502a0c:	lea    edx,[ebx+0x45a30]
  502a12:	mov    edx,DWORD PTR [edx]
  502a14:	movzx  esi,BYTE PTR [edx+0xac]
  502a1b:	movzx  ecx,cl
  502a1e:	cmp    ecx,esi
  502a20:	jb     5035c5
  502a26:	mov    eax,DWORD PTR [eax+0x58]
  502a29:	cmp    DWORD PTR [eax+esi*4-0x4],edx
  502a2d:	mov    esi,0x0
  502a32:	jne    5038bd
  502a38:	lea    eax,[ebx+0x4afb8]
  502a3e:	mov    eax,DWORD PTR [eax]
  502a40:	mov    DWORD PTR [esp+0x4],eax
  502a44:	mov    eax,DWORD PTR [ebp+0xc]
  502a47:	mov    DWORD PTR [esp],eax
  502a4a:	call   16047e3  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::get_CharacterModel | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::get_CharacterModel | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::get_CharacterModel | +2 other aliases
  502a4f:	test   eax,eax
  502a51:	je     5038fe
  502a57:	lea    ecx,[ebx+0x45ebc]
  502a5d:	mov    ecx,DWORD PTR [ecx]
  502a5f:	mov    edx,DWORD PTR [eax]
  502a61:	movzx  esi,BYTE PTR [ecx+0xac]
  502a68:	movzx  edi,BYTE PTR [edx+0xac]
  502a6f:	cmp    edi,esi
  502a71:	jb     5038fe
  502a77:	mov    edx,DWORD PTR [edx+0x58]
  502a7a:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  502a7e:	jne    5038fe
  502a84:	lea    ecx,[ebx+0x4a2e4]
  502a8a:	mov    ecx,DWORD PTR [ecx]
  502a8c:	mov    DWORD PTR [esp+0x4],ecx
  502a90:	mov    DWORD PTR [esp],eax
  502a93:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  502a98:	test   eax,eax
  502a9a:	je     5038fe
  502aa0:	mov    DWORD PTR [esp],eax
  502aa3:	mov    DWORD PTR [esp+0x4],0x0
  502aab:	call   16fed22  ; ABH.Shared.BalancingData.BossBalancingData::get_PigStrength
  502ab0:	mov    DWORD PTR [esp+0x34],eax
  502ab4:	mov    eax,DWORD PTR [esp+0x1c]
  502ab8:	mov    eax,DWORD PTR [eax]
  502aba:	test   BYTE PTR [eax+0xb2],0x1
  502ac1:	je     502ad1
  502ac3:	cmp    DWORD PTR [eax+0x60],0x0
  502ac7:	jne    502ad1
  502ac9:	mov    DWORD PTR [esp],eax
  502acc:	call   1db0b8
  502ad1:	mov    DWORD PTR [esp+0x4],0x0
  502ad9:	mov    DWORD PTR [esp],0x0
  502ae0:	call   107cf95  ; DIContainerBalancing::get_Service
  502ae5:	mov    edi,eax
  502ae7:	test   edi,edi
  502ae9:	je     5038fa
  502aef:	mov    eax,DWORD PTR [esp+0x38]
  502af3:	mov    esi,DWORD PTR [eax]
  502af5:	mov    eax,DWORD PTR [esp+0x3c]
  502af9:	mov    eax,DWORD PTR [eax]
  502afb:	mov    DWORD PTR [esp+0x30],eax
  502aff:	mov    ecx,DWORD PTR [esi+0xc]
  502b02:	movzx  eax,WORD PTR [esi+0x2c]
  502b06:	mov    DWORD PTR [esp+0x38],eax
  502b0a:	mov    edx,DWORD PTR [edi]
  502b0c:	mov    DWORD PTR [esp+0x3c],edi
  502b10:	movzx  ebx,WORD PTR [edx+0xaa]
  502b17:	test   ebx,ebx
  502b19:	je     502b2e
  502b1b:	mov    eax,DWORD PTR [edx+0x4c]
  502b1e:	xor    edi,edi
  502b20:	cmp    DWORD PTR [eax+edi*8],ecx
  502b23:	je     503154
  502b29:	inc    edi
  502b2a:	cmp    edi,ebx
  502b2c:	jb     502b20
  502b2e:	mov    eax,DWORD PTR [esp+0x38]
  502b32:	mov    DWORD PTR [esp+0x8],eax
  502b36:	mov    DWORD PTR [esp+0x4],ecx
  502b3a:	mov    edi,DWORD PTR [esp+0x3c]
  502b3e:	mov    DWORD PTR [esp],edi
  502b41:	mov    ebx,DWORD PTR [esp+0x40]
  502b45:	call   1c1964
  502b4a:	jmp    50316b
  502b4f:	mov    eax,DWORD PTR [esp+0x34]
  502b53:	mov    eax,DWORD PTR [eax]
  502b55:	mov    ecx,DWORD PTR [ecx]
  502b57:	movzx  edx,WORD PTR [ecx+0xaa]
  502b5e:	test   edx,edx
  502b60:	je     502b75
  502b62:	mov    esi,DWORD PTR [ecx+0x4c]
  502b65:	xor    edi,edi
  502b67:	cmp    DWORD PTR [esi+edi*8],eax
  502b6a:	je     502cab
  502b70:	inc    edi
  502b71:	cmp    edi,edx
  502b73:	jb     502b67
  502b75:	mov    DWORD PTR [esp+0x4],eax
  502b79:	mov    esi,DWORD PTR [ebp+0xc]
  502b7c:	mov    DWORD PTR [esp],esi
  502b7f:	mov    DWORD PTR [esp+0x8],0x13
  502b87:	call   1c1964
  502b8c:	mov    ecx,eax
  502b8e:	jmp    502cb9
  502b93:	test   eax,eax
  502b95:	mov    esi,0x0
  502b9a:	jne    5038bd
  502ba0:	mov    eax,DWORD PTR [edi+0x68]
  502ba3:	test   eax,eax
  502ba5:	je     5038fe
  502bab:	lea    ecx,[ebx+0x4a04c]
  502bb1:	mov    ecx,DWORD PTR [ecx]
  502bb3:	mov    DWORD PTR [esp+0x8],ecx
  502bb7:	mov    DWORD PTR [esp],eax
  502bba:	mov    DWORD PTR [esp+0x4],0x1
  502bc2:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  502bc7:	lea    esi,[ebx+0x45ff0]
  502bcd:	mov    ecx,DWORD PTR [esi]
  502bcf:	mov    ecx,DWORD PTR [ecx+0x50]
  502bd2:	cmp    DWORD PTR [ecx+0x18],0x0
  502bd6:	jne    502c37
  502bd8:	lea    ecx,[ebx+0x4afb0]
  502bde:	mov    ecx,DWORD PTR [ecx]
  502be0:	mov    DWORD PTR [esp+0x28],ecx
  502be4:	lea    ecx,[ebx+0x4588c]
  502bea:	mov    ecx,DWORD PTR [ecx]
  502bec:	mov    DWORD PTR [esp],ecx
  502bef:	mov    DWORD PTR [esp+0x30],eax
  502bf3:	call   20bfb2
  502bf8:	mov    edi,eax
  502bfa:	mov    eax,DWORD PTR [esp+0x28]
  502bfe:	mov    DWORD PTR [esp+0x48],eax
  502c02:	lea    eax,[ebx+0x4a054]
  502c08:	mov    eax,DWORD PTR [eax]
  502c0a:	mov    DWORD PTR [esp+0xc],eax
  502c0e:	mov    eax,DWORD PTR [esp+0x48]
  502c12:	mov    DWORD PTR [esp+0x8],eax
  502c16:	mov    DWORD PTR [esp],edi
  502c19:	mov    DWORD PTR [esp+0x4],0x0
  502c21:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  502c26:	mov    eax,DWORD PTR [esp+0x30]
  502c2a:	mov    ecx,DWORD PTR [esi]
  502c2c:	mov    ecx,DWORD PTR [ecx+0x50]
  502c2f:	mov    DWORD PTR [ecx+0x18],edi
  502c32:	mov    ecx,DWORD PTR [esi]
  502c34:	mov    ecx,DWORD PTR [ecx+0x50]
  502c37:	mov    edx,DWORD PTR [ecx+0x18]
  502c3a:	lea    ecx,[ebx+0x4a058]
  502c40:	mov    ecx,DWORD PTR [ecx]
  502c42:	mov    DWORD PTR [esp+0xc],ecx
  502c46:	mov    DWORD PTR [esp+0x8],edx
  502c4a:	mov    DWORD PTR [esp+0x4],eax
  502c4e:	mov    DWORD PTR [esp],0x0
  502c55:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  502c5a:	mov    esi,eax
  502c5c:	test   esi,esi
  502c5e:	je     5038fe
  502c64:	lea    eax,[ebx+0x45944]
  502c6a:	mov    eax,DWORD PTR [eax]
  502c6c:	mov    ecx,DWORD PTR [esi]
  502c6e:	movzx  edx,WORD PTR [ecx+0xaa]
  502c75:	test   edx,edx
  502c77:	je     502c8c
  502c79:	mov    edi,DWORD PTR [ecx+0x4c]
  502c7c:	xor    ebx,ebx
  502c7e:	cmp    DWORD PTR [edi+ebx*8],eax
  502c81:	je     503079
  502c87:	inc    ebx
  502c88:	cmp    ebx,edx
  502c8a:	jb     502c7e
  502c8c:	mov    DWORD PTR [esp+0x4],eax
  502c90:	mov    DWORD PTR [esp],esi
  502c93:	mov    DWORD PTR [esp+0x8],0x0
  502c9b:	mov    ebx,DWORD PTR [esp+0x40]
  502c9f:	call   1c1964
  502ca4:	mov    ecx,eax
  502ca6:	jmp    503088
  502cab:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  502caf:	lea    ecx,[ecx+eax*8+0x14c]
  502cb6:	mov    esi,DWORD PTR [ebp+0xc]
  502cb9:	mov    eax,DWORD PTR [ecx+0x4]
  502cbc:	mov    DWORD PTR [esp+0x4],eax
  502cc0:	mov    DWORD PTR [esp],esi
  502cc3:	call   DWORD PTR [ecx]
  502cc5:	test   al,al
  502cc7:	mov    eax,DWORD PTR [ebp+0x10]
  502cca:	je     502d6b
  502cd0:	mov    eax,DWORD PTR [esp+0x1c]
  502cd4:	mov    eax,DWORD PTR [eax]
  502cd6:	test   BYTE PTR [eax+0xb2],0x1
  502cdd:	je     502ced
  502cdf:	cmp    DWORD PTR [eax+0x60],0x0
  502ce3:	jne    502ced
  502ce5:	mov    DWORD PTR [esp],eax
  502ce8:	call   1db0b8
  502ced:	mov    DWORD PTR [esp+0x4],0x0
  502cf5:	mov    DWORD PTR [esp],0x0
  502cfc:	call   107cf95  ; DIContainerBalancing::get_Service
  502d01:	mov    esi,eax
  502d03:	test   esi,esi
  502d05:	je     5038fa
  502d0b:	mov    eax,DWORD PTR [esp+0x38]
  502d0f:	mov    edi,DWORD PTR [eax]
  502d11:	mov    eax,DWORD PTR [esp+0x3c]
  502d15:	mov    eax,DWORD PTR [eax]
  502d17:	mov    DWORD PTR [esp+0x38],eax
  502d1b:	mov    ecx,DWORD PTR [edi+0xc]
  502d1e:	movzx  eax,WORD PTR [edi+0x2c]
  502d22:	mov    DWORD PTR [esp+0x34],eax
  502d26:	mov    edx,DWORD PTR [esi]
  502d28:	mov    DWORD PTR [esp+0x3c],esi
  502d2c:	movzx  ebx,WORD PTR [edx+0xaa]
  502d33:	test   ebx,ebx
  502d35:	je     502d4a
  502d37:	mov    eax,DWORD PTR [edx+0x4c]
  502d3a:	xor    esi,esi
  502d3c:	cmp    DWORD PTR [eax+esi*8],ecx
  502d3f:	je     502f23
  502d45:	inc    esi
  502d46:	cmp    esi,ebx
  502d48:	jb     502d3c
  502d4a:	mov    eax,DWORD PTR [esp+0x34]
  502d4e:	mov    DWORD PTR [esp+0x8],eax
  502d52:	mov    DWORD PTR [esp+0x4],ecx
  502d56:	mov    esi,DWORD PTR [esp+0x3c]
  502d5a:	mov    DWORD PTR [esp],esi
  502d5d:	mov    ebx,DWORD PTR [esp+0x40]
  502d61:	call   1c1964
  502d66:	jmp    502f3a
  502d6b:	mov    eax,DWORD PTR [eax+0x9c]
  502d71:	mov    DWORD PTR [esp+0x34],eax
  502d75:	mov    eax,DWORD PTR [esp+0x1c]
  502d79:	mov    eax,DWORD PTR [eax]
  502d7b:	test   BYTE PTR [eax+0xb2],0x1
  502d82:	je     502d92
  502d84:	cmp    DWORD PTR [eax+0x60],0x0
  502d88:	jne    502d92
  502d8a:	mov    DWORD PTR [esp],eax
  502d8d:	call   1db0b8
  502d92:	mov    DWORD PTR [esp+0x4],0x0
  502d9a:	mov    DWORD PTR [esp],0x0
  502da1:	call   107cf95  ; DIContainerBalancing::get_Service
  502da6:	mov    esi,eax
  502da8:	test   esi,esi
  502daa:	je     5038fa
  502db0:	mov    eax,DWORD PTR [esp+0x38]
  502db4:	mov    edi,DWORD PTR [eax]
  502db6:	mov    eax,DWORD PTR [esp+0x3c]
  502dba:	mov    eax,DWORD PTR [eax]
  502dbc:	mov    DWORD PTR [esp+0x2c],eax
  502dc0:	mov    ecx,DWORD PTR [edi+0xc]
  502dc3:	movzx  eax,WORD PTR [edi+0x2c]
  502dc7:	mov    DWORD PTR [esp+0x28],eax
  502dcb:	mov    edx,DWORD PTR [esi]
  502dcd:	mov    DWORD PTR [esp+0x30],esi
  502dd1:	movzx  ebx,WORD PTR [edx+0xaa]
  502dd8:	test   ebx,ebx
  502dda:	je     502def
  502ddc:	mov    eax,DWORD PTR [edx+0x4c]
  502ddf:	xor    esi,esi
  502de1:	cmp    DWORD PTR [eax+esi*8],ecx
  502de4:	je     502f77
  502dea:	inc    esi
  502deb:	cmp    esi,ebx
  502ded:	jb     502de1
  502def:	mov    eax,DWORD PTR [esp+0x28]
  502df3:	mov    DWORD PTR [esp+0x8],eax
  502df7:	mov    DWORD PTR [esp+0x4],ecx
  502dfb:	mov    esi,DWORD PTR [esp+0x30]
  502dff:	mov    DWORD PTR [esp],esi
  502e02:	mov    ebx,DWORD PTR [esp+0x40]
  502e06:	call   1c1964
  502e0b:	jmp    502f8e
  502e10:	lea    eax,[ebx+0x4afb4]
  502e16:	mov    eax,DWORD PTR [eax]
  502e18:	mov    DWORD PTR [esp+0x4],eax
  502e1c:	mov    eax,DWORD PTR [ebp+0xc]
  502e1f:	mov    DWORD PTR [esp],eax
  502e22:	call   16047e3  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::get_CharacterModel | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::get_CharacterModel | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::get_CharacterModel | +2 other aliases
  502e27:	test   eax,eax
  502e29:	je     5038fe
  502e2f:	lea    ecx,[ebx+0x45ddc]
  502e35:	mov    ecx,DWORD PTR [ecx]
  502e37:	mov    edx,DWORD PTR [eax]
  502e39:	movzx  esi,BYTE PTR [ecx+0xac]
  502e40:	movzx  edi,BYTE PTR [edx+0xac]
  502e47:	cmp    edi,esi
  502e49:	jb     5038fe
  502e4f:	mov    edx,DWORD PTR [edx+0x58]
  502e52:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  502e56:	jne    5038fe
  502e5c:	mov    DWORD PTR [esp],eax
  502e5f:	mov    DWORD PTR [esp+0x4],0x0
  502e67:	call   6f4b7a  ; ABH.GameDatas.PigGameData::get_BalancingData
  502e6c:	test   eax,eax
  502e6e:	je     5038fe
  502e74:	mov    DWORD PTR [esp],eax
  502e77:	mov    DWORD PTR [esp+0x4],0x0
  502e7f:	call   1701d27  ; ABH.Shared.BalancingData.PigBalancingData::get_PigStrength
  502e84:	mov    DWORD PTR [esp+0x34],eax
  502e88:	mov    eax,DWORD PTR [esp+0x1c]
  502e8c:	mov    eax,DWORD PTR [eax]
  502e8e:	test   BYTE PTR [eax+0xb2],0x1
  502e95:	je     502ea5
  502e97:	cmp    DWORD PTR [eax+0x60],0x0
  502e9b:	jne    502ea5
  502e9d:	mov    DWORD PTR [esp],eax
  502ea0:	call   1db0b8
  502ea5:	mov    DWORD PTR [esp+0x4],0x0
  502ead:	mov    DWORD PTR [esp],0x0
  502eb4:	call   107cf95  ; DIContainerBalancing::get_Service
  502eb9:	mov    edi,eax
  502ebb:	test   edi,edi
  502ebd:	je     5038fa
  502ec3:	mov    eax,DWORD PTR [esp+0x38]
  502ec7:	mov    esi,DWORD PTR [eax]
  502ec9:	mov    eax,DWORD PTR [esp+0x3c]
  502ecd:	mov    eax,DWORD PTR [eax]
  502ecf:	mov    DWORD PTR [esp+0x38],eax
  502ed3:	mov    ecx,DWORD PTR [esi+0xc]
  502ed6:	movzx  eax,WORD PTR [esi+0x2c]
  502eda:	mov    DWORD PTR [esp+0x30],eax
  502ede:	mov    edx,DWORD PTR [edi]
  502ee0:	mov    DWORD PTR [esp+0x3c],edi
  502ee4:	movzx  ebx,WORD PTR [edx+0xaa]
  502eeb:	test   ebx,ebx
  502eed:	je     502f02
  502eef:	mov    eax,DWORD PTR [edx+0x4c]
  502ef2:	xor    edi,edi
  502ef4:	cmp    DWORD PTR [eax+edi*8],ecx
  502ef7:	je     503124
  502efd:	inc    edi
  502efe:	cmp    edi,ebx
  502f00:	jb     502ef4
  502f02:	mov    eax,DWORD PTR [esp+0x30]
  502f06:	mov    DWORD PTR [esp+0x8],eax
  502f0a:	mov    DWORD PTR [esp+0x4],ecx
  502f0e:	mov    edi,DWORD PTR [esp+0x3c]
  502f12:	mov    DWORD PTR [esp],edi
  502f15:	mov    ebx,DWORD PTR [esp+0x40]
  502f19:	call   1c1964
  502f1e:	jmp    50313b
  502f23:	mov    ecx,DWORD PTR [esp+0x34]
  502f27:	add    ecx,DWORD PTR [eax+esi*8+0x4]
  502f2b:	lea    eax,[edx+ecx*8+0xb4]
  502f32:	mov    ebx,DWORD PTR [esp+0x40]
  502f36:	mov    esi,DWORD PTR [esp+0x3c]
  502f3a:	mov    eax,DWORD PTR [eax+0x4]
  502f3d:	mov    DWORD PTR [esp+0x4],edi
  502f41:	mov    DWORD PTR [esp],eax
  502f44:	call   1da450
  502f49:	mov    DWORD PTR [esp+0x8],eax
  502f4d:	mov    ecx,DWORD PTR [esp+0x38]
  502f51:	mov    DWORD PTR [esp+0x4],ecx
  502f55:	mov    DWORD PTR [esp],esi
  502f58:	call   DWORD PTR [eax]
  502f5a:	test   eax,eax
  502f5c:	je     5038fe
  502f62:	mov    DWORD PTR [esp],eax
  502f65:	mov    DWORD PTR [esp+0x4],0x0
  502f6d:	call   1702aca  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScoreForBannerDefeated
  502f72:	jmp    5038bf
  502f77:	mov    ecx,DWORD PTR [esp+0x28]
  502f7b:	add    ecx,DWORD PTR [eax+esi*8+0x4]
  502f7f:	lea    eax,[edx+ecx*8+0xb4]
  502f86:	mov    ebx,DWORD PTR [esp+0x40]
  502f8a:	mov    esi,DWORD PTR [esp+0x30]
  502f8e:	mov    eax,DWORD PTR [eax+0x4]
  502f91:	mov    DWORD PTR [esp+0x4],edi
  502f95:	mov    DWORD PTR [esp],eax
  502f98:	call   1da450
  502f9d:	mov    DWORD PTR [esp+0x8],eax
  502fa1:	mov    ecx,DWORD PTR [esp+0x2c]
  502fa5:	mov    DWORD PTR [esp+0x4],ecx
  502fa9:	mov    DWORD PTR [esp],esi
  502fac:	call   DWORD PTR [eax]
  502fae:	test   eax,eax
  502fb0:	mov    esi,0x0
  502fb5:	je     5038fe
  502fbb:	mov    DWORD PTR [esp],eax
  502fbe:	mov    DWORD PTR [esp+0x4],0x0
  502fc6:	call   1702aed  ; ABH.Shared.BalancingData.ScoreBalancingData::get_MaxPvPBirdDefeatsCounted
  502fcb:	cmp    DWORD PTR [esp+0x34],eax
  502fcf:	mov    ecx,DWORD PTR [ebp+0x10]
  502fd2:	jge    5038bd
  502fd8:	mov    al,BYTE PTR [ebp+0x14]
  502fdb:	test   al,al
  502fdd:	je     502fe5
  502fdf:	inc    DWORD PTR [ecx+0x9c]
  502fe5:	mov    eax,DWORD PTR [esp+0x1c]
  502fe9:	mov    eax,DWORD PTR [eax]
  502feb:	test   BYTE PTR [eax+0xb2],0x1
  502ff2:	je     503002
  502ff4:	cmp    DWORD PTR [eax+0x60],0x0
  502ff8:	jne    503002
  502ffa:	mov    DWORD PTR [esp],eax
  502ffd:	call   1db0b8
  503002:	mov    DWORD PTR [esp+0x4],0x0
  50300a:	mov    DWORD PTR [esp],0x0
  503011:	call   107cf95  ; DIContainerBalancing::get_Service
  503016:	mov    esi,eax
  503018:	test   esi,esi
  50301a:	je     5038fa
  503020:	mov    eax,DWORD PTR [esp+0x38]
  503024:	mov    edi,DWORD PTR [eax]
  503026:	mov    eax,DWORD PTR [esp+0x3c]
  50302a:	mov    eax,DWORD PTR [eax]
  50302c:	mov    DWORD PTR [esp+0x38],eax
  503030:	mov    ecx,DWORD PTR [edi+0xc]
  503033:	movzx  eax,WORD PTR [edi+0x2c]
  503037:	mov    DWORD PTR [esp+0x34],eax
  50303b:	mov    edx,DWORD PTR [esi]
  50303d:	mov    DWORD PTR [esp+0x3c],esi
  503041:	movzx  ebx,WORD PTR [edx+0xaa]
  503048:	test   ebx,ebx
  50304a:	je     50305b
  50304c:	mov    eax,DWORD PTR [edx+0x4c]
  50304f:	xor    esi,esi
  503051:	cmp    DWORD PTR [eax+esi*8],ecx
  503054:	je     5030d0
  503056:	inc    esi
  503057:	cmp    esi,ebx
  503059:	jb     503051
  50305b:	mov    eax,DWORD PTR [esp+0x34]
  50305f:	mov    DWORD PTR [esp+0x8],eax
  503063:	mov    DWORD PTR [esp+0x4],ecx
  503067:	mov    esi,DWORD PTR [esp+0x3c]
  50306b:	mov    DWORD PTR [esp],esi
  50306e:	mov    ebx,DWORD PTR [esp+0x40]
  503072:	call   1c1964
  503077:	jmp    5030e7
  503079:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  50307d:	lea    ecx,[ecx+eax*8+0xb4]
  503084:	mov    ebx,DWORD PTR [esp+0x40]
  503088:	mov    eax,DWORD PTR [ecx+0x4]
  50308b:	mov    DWORD PTR [esp+0x4],eax
  50308f:	mov    DWORD PTR [esp],esi
  503092:	call   DWORD PTR [ecx]
  503094:	mov    edi,eax
  503096:	mov    DWORD PTR [esp+0x30],edi
  50309a:	test   edi,edi
  50309c:	je     5030b9
  50309e:	mov    DWORD PTR [esp+0x30],edi
  5030a2:	lea    eax,[ebx+0x4319c]
  5030a8:	mov    DWORD PTR [esp+0x28],eax
  5030ac:	mov    DWORD PTR [esp+0x24],0x0
  5030b4:	jmp    5031c0
  5030b9:	mov    DWORD PTR [esp+0x24],0x0
  5030c1:	call   1fbc48
  5030c6:	jmp    5038f1
  5030cb:	jmp    5034d4
  5030d0:	mov    ecx,DWORD PTR [esp+0x34]
  5030d4:	add    ecx,DWORD PTR [eax+esi*8+0x4]
  5030d8:	lea    eax,[edx+ecx*8+0xb4]
  5030df:	mov    ebx,DWORD PTR [esp+0x40]
  5030e3:	mov    esi,DWORD PTR [esp+0x3c]
  5030e7:	mov    eax,DWORD PTR [eax+0x4]
  5030ea:	mov    DWORD PTR [esp+0x4],edi
  5030ee:	mov    DWORD PTR [esp],eax
  5030f1:	call   1da450
  5030f6:	mov    DWORD PTR [esp+0x8],eax
  5030fa:	mov    ecx,DWORD PTR [esp+0x38]
  5030fe:	mov    DWORD PTR [esp+0x4],ecx
  503102:	mov    DWORD PTR [esp],esi
  503105:	call   DWORD PTR [eax]
  503107:	test   eax,eax
  503109:	je     5038fe
  50310f:	mov    DWORD PTR [esp],eax
  503112:	mov    DWORD PTR [esp+0x4],0x0
  50311a:	call   1702b10  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScoreForPvPBirdDefeated
  50311f:	jmp    5038bf
  503124:	mov    ecx,DWORD PTR [esp+0x30]
  503128:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  50312c:	lea    eax,[edx+ecx*8+0xb4]
  503133:	mov    ebx,DWORD PTR [esp+0x40]
  503137:	mov    edi,DWORD PTR [esp+0x3c]
  50313b:	mov    eax,DWORD PTR [eax+0x4]
  50313e:	mov    DWORD PTR [esp+0x4],esi
  503142:	mov    DWORD PTR [esp],eax
  503145:	call   1da450
  50314a:	mov    DWORD PTR [esp+0x8],eax
  50314e:	mov    ecx,DWORD PTR [esp+0x38]
  503152:	jmp    503182
  503154:	mov    ecx,DWORD PTR [esp+0x38]
  503158:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  50315c:	lea    eax,[edx+ecx*8+0xb4]
  503163:	mov    ebx,DWORD PTR [esp+0x40]
  503167:	mov    edi,DWORD PTR [esp+0x3c]
  50316b:	mov    eax,DWORD PTR [eax+0x4]
  50316e:	mov    DWORD PTR [esp+0x4],esi
  503172:	mov    DWORD PTR [esp],eax
  503175:	call   1da450
  50317a:	mov    DWORD PTR [esp+0x8],eax
  50317e:	mov    ecx,DWORD PTR [esp+0x30]
  503182:	mov    DWORD PTR [esp+0x4],ecx
  503186:	mov    DWORD PTR [esp],edi
  503189:	call   DWORD PTR [eax]
  50318b:	test   eax,eax
  50318d:	je     5038fe
  503193:	mov    DWORD PTR [esp],eax
  503196:	mov    DWORD PTR [esp+0x4],0x0
  50319e:	call   1702a61  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScorePerStrengthPoint
  5031a3:	cvtsi2ss xmm0,DWORD PTR [esp+0x34]
  5031a9:	cvtsi2ss xmm1,eax
  5031ad:	mulss  xmm1,xmm0
  5031b1:	movss  xmm0,DWORD PTR [esp+0x2c]
  5031b7:	jmp    5038b5
  5031bc:	add    DWORD PTR [esp+0x24],eax
  5031c0:	mov    eax,DWORD PTR [esp+0x28]
  5031c4:	mov    eax,DWORD PTR [eax]
  5031c6:	mov    ecx,DWORD PTR [esp+0x30]
  5031ca:	mov    ecx,DWORD PTR [ecx]
  5031cc:	movzx  edx,WORD PTR [ecx+0xaa]
  5031d3:	test   edx,edx
  5031d5:	je     5031e6
  5031d7:	mov    esi,DWORD PTR [ecx+0x4c]
  5031da:	xor    edi,edi
  5031dc:	cmp    DWORD PTR [esi+edi*8],eax
  5031df:	je     503204
  5031e1:	inc    edi
  5031e2:	cmp    edi,edx
  5031e4:	jb     5031dc
  5031e6:	mov    DWORD PTR [esp+0x4],eax
  5031ea:	mov    edi,DWORD PTR [esp+0x30]
  5031ee:	mov    DWORD PTR [esp],edi
  5031f1:	mov    DWORD PTR [esp+0x8],0x1
  5031f9:	mov    ebx,DWORD PTR [esp+0x40]
  5031fd:	call   1c1964
  503202:	jmp    503213
  503204:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  503208:	lea    eax,[ecx+eax*8+0xbc]
  50320f:	mov    edi,DWORD PTR [esp+0x30]
  503213:	mov    ecx,DWORD PTR [eax]
  503215:	mov    eax,DWORD PTR [eax+0x4]
  503218:	mov    DWORD PTR [esp+0x4],eax
  50321c:	mov    DWORD PTR [esp],edi
  50321f:	mov    ebx,DWORD PTR [esp+0x40]
  503223:	call   ecx
  503225:	test   al,al
  503227:	je     503801
  50322d:	mov    eax,DWORD PTR [esp+0x40]
  503231:	lea    eax,[eax+0x45948]
  503237:	mov    eax,DWORD PTR [eax]
  503239:	mov    ecx,DWORD PTR [edi]
  50323b:	mov    ebx,edi
  50323d:	movzx  edx,WORD PTR [ecx+0xaa]
  503244:	test   edx,edx
  503246:	je     503257
  503248:	mov    esi,DWORD PTR [ecx+0x4c]
  50324b:	xor    edi,edi
  50324d:	cmp    DWORD PTR [esi+edi*8],eax
  503250:	je     503273
  503252:	inc    edi
  503253:	cmp    edi,edx
  503255:	jb     50324d
  503257:	mov    DWORD PTR [esp+0x4],eax
  50325b:	mov    edi,ebx
  50325d:	mov    DWORD PTR [esp],edi
  503260:	mov    DWORD PTR [esp+0x8],0x0
  503268:	mov    ebx,DWORD PTR [esp+0x40]
  50326c:	call   1c1964
  503271:	jmp    503280
  503273:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  503277:	lea    eax,[ecx+eax*8+0xb4]
  50327e:	mov    edi,ebx
  503280:	mov    ecx,DWORD PTR [eax]
  503282:	mov    eax,DWORD PTR [eax+0x4]
  503285:	mov    DWORD PTR [esp+0x4],eax
  503289:	mov    DWORD PTR [esp],edi
  50328c:	mov    ebx,DWORD PTR [esp+0x40]
  503290:	call   ecx
  503292:	mov    esi,eax
  503294:	test   esi,esi
  503296:	je     5031c0
  50329c:	mov    edi,DWORD PTR [esp+0x40]
  5032a0:	lea    eax,[edi+0x45878]
  5032a6:	mov    edx,DWORD PTR [eax]
  5032a8:	mov    ebx,DWORD PTR [esi]
  5032aa:	movzx  ecx,BYTE PTR [ebx+0xac]
  5032b1:	movzx  eax,BYTE PTR [edx+0xac]
  5032b8:	cmp    ecx,eax
  5032ba:	jb     5032c9
  5032bc:	mov    edi,DWORD PTR [ebx+0x58]
  5032bf:	cmp    DWORD PTR [edi+eax*4-0x4],edx
  5032c3:	mov    edi,DWORD PTR [esp+0x40]
  5032c7:	je     503335
  5032c9:	lea    edx,[edi+0x45a30]
  5032cf:	mov    edx,DWORD PTR [edx]
  5032d1:	movzx  edi,BYTE PTR [edx+0xac]
  5032d8:	movzx  ecx,cl
  5032db:	cmp    ecx,edi
  5032dd:	jb     5031c0
  5032e3:	mov    ecx,DWORD PTR [ebx+0x58]
  5032e6:	cmp    DWORD PTR [ecx+edi*4-0x4],edx
  5032ea:	jne    5031c0
  5032f0:	mov    eax,DWORD PTR [esp+0x34]
  5032f4:	mov    ecx,DWORD PTR [eax]
  5032f6:	mov    eax,ebx
  5032f8:	mov    ebx,ecx
  5032fa:	movzx  edx,WORD PTR [eax+0xaa]
  503301:	test   edx,edx
  503303:	je     503318
  503305:	mov    edi,DWORD PTR [eax+0x4c]
  503308:	xor    ecx,ecx
  50330a:	cmp    DWORD PTR [edi+ecx*8],ebx
  50330d:	je     50341d
  503313:	inc    ecx
  503314:	cmp    ecx,edx
  503316:	jb     50330a
  503318:	mov    DWORD PTR [esp+0x4],ebx
  50331c:	mov    DWORD PTR [esp],esi
  50331f:	mov    DWORD PTR [esp+0x8],0x9
  503327:	mov    ebx,DWORD PTR [esp+0x40]
  50332b:	call   1c1964
  503330:	jmp    50342c
  503335:	mov    eax,DWORD PTR [esp+0x34]
  503339:	mov    ecx,DWORD PTR [eax]
  50333b:	movzx  edx,WORD PTR [ebx+0xaa]
  503342:	test   edx,edx
  503344:	mov    eax,ebx
  503346:	mov    ebx,ecx
  503348:	je     503359
  50334a:	mov    edi,DWORD PTR [eax+0x4c]
  50334d:	xor    ecx,ecx
  50334f:	cmp    DWORD PTR [edi+ecx*8],ebx
  503352:	je     503373
  503354:	inc    ecx
  503355:	cmp    ecx,edx
  503357:	jb     50334f
  503359:	mov    DWORD PTR [esp+0x4],ebx
  50335d:	mov    DWORD PTR [esp],esi
  503360:	mov    DWORD PTR [esp+0x8],0x9
  503368:	mov    ebx,DWORD PTR [esp+0x40]
  50336c:	call   1c1964
  503371:	jmp    503382
  503373:	mov    ecx,DWORD PTR [edi+ecx*8+0x4]
  503377:	lea    eax,[eax+ecx*8+0xfc]
  50337e:	mov    ebx,DWORD PTR [esp+0x40]
  503382:	mov    ecx,DWORD PTR [eax]
  503384:	mov    eax,DWORD PTR [eax+0x4]
  503387:	mov    DWORD PTR [esp+0x4],eax
  50338b:	mov    DWORD PTR [esp],esi
  50338e:	call   ecx
  503390:	test   eax,eax
  503392:	je     5038c7
  503398:	lea    ecx,[ebx+0x45ddc]
  50339e:	mov    ecx,DWORD PTR [ecx]
  5033a0:	mov    edx,DWORD PTR [eax]
  5033a2:	movzx  esi,BYTE PTR [ecx+0xac]
  5033a9:	movzx  edi,BYTE PTR [edx+0xac]
  5033b0:	cmp    edi,esi
  5033b2:	jb     5038c7
  5033b8:	mov    edx,DWORD PTR [edx+0x58]
  5033bb:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  5033bf:	jne    5038c7
  5033c5:	mov    esi,DWORD PTR [eax]
  5033c7:	movzx  ebx,BYTE PTR [ecx+0xac]
  5033ce:	movzx  edi,BYTE PTR [esi+0xac]
  5033d5:	xor    edx,edx
  5033d7:	cmp    edi,ebx
  5033d9:	jb     5033ec
  5033db:	mov    edx,DWORD PTR [esi+0x58]
  5033de:	cmp    DWORD PTR [edx+ebx*4-0x4],ecx
  5033e2:	mov    ecx,0x0
  5033e7:	cmovne eax,ecx
  5033ea:	mov    edx,eax
  5033ec:	mov    DWORD PTR [esp],edx
  5033ef:	mov    DWORD PTR [esp+0x4],0x0
  5033f7:	mov    ebx,DWORD PTR [esp+0x40]
  5033fb:	call   6f4b7a  ; ABH.GameDatas.PigGameData::get_BalancingData
  503400:	test   eax,eax
  503402:	je     5038dd
  503408:	mov    DWORD PTR [esp],eax
  50340b:	mov    DWORD PTR [esp+0x4],0x0
  503413:	call   1701d27  ; ABH.Shared.BalancingData.PigBalancingData::get_PigStrength
  503418:	jmp    5031bc
  50341d:	mov    ecx,DWORD PTR [edi+ecx*8+0x4]
  503421:	lea    eax,[eax+ecx*8+0xfc]
  503428:	mov    ebx,DWORD PTR [esp+0x40]
  50342c:	mov    ecx,DWORD PTR [eax]
  50342e:	mov    eax,DWORD PTR [eax+0x4]
  503431:	mov    DWORD PTR [esp+0x4],eax
  503435:	mov    DWORD PTR [esp],esi
  503438:	call   ecx
  50343a:	test   eax,eax
  50343c:	je     5038d2
  503442:	lea    ecx,[ebx+0x45ebc]
  503448:	mov    ecx,DWORD PTR [ecx]
  50344a:	mov    edx,DWORD PTR [eax]
  50344c:	movzx  esi,BYTE PTR [ecx+0xac]
  503453:	movzx  edi,BYTE PTR [edx+0xac]
  50345a:	cmp    edi,esi
  50345c:	jb     5038d2
  503462:	mov    edx,DWORD PTR [edx+0x58]
  503465:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  503469:	jne    5038d2
  50346f:	mov    esi,DWORD PTR [eax]
  503471:	movzx  ebx,BYTE PTR [ecx+0xac]
  503478:	movzx  edi,BYTE PTR [esi+0xac]
  50347f:	xor    edx,edx
  503481:	cmp    edi,ebx
  503483:	jb     503496
  503485:	mov    edx,DWORD PTR [esi+0x58]
  503488:	cmp    DWORD PTR [edx+ebx*4-0x4],ecx
  50348c:	mov    ecx,0x0
  503491:	cmovne eax,ecx
  503494:	mov    edx,eax
  503496:	mov    ebx,DWORD PTR [esp+0x40]
  50349a:	lea    eax,[ebx+0x4a2e4]
  5034a0:	mov    eax,DWORD PTR [eax]
  5034a2:	mov    DWORD PTR [esp+0x4],eax
  5034a6:	mov    DWORD PTR [esp],edx
  5034a9:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  5034ae:	test   eax,eax
  5034b0:	je     5038e8
  5034b6:	mov    DWORD PTR [esp],eax
  5034b9:	mov    DWORD PTR [esp+0x4],0x0
  5034c1:	call   16fed22  ; ABH.Shared.BalancingData.BossBalancingData::get_PigStrength
  5034c6:	jmp    5031bc
  5034cb:	mov    esi,DWORD PTR [ebp+0xc]
  5034ce:	mov    edi,DWORD PTR [esp+0x30]
  5034d2:	jmp    5034d7
  5034d4:	mov    esi,DWORD PTR [ebp+0xc]
  5034d7:	cmp    edx,0x1
  5034da:	jne    503908
  5034e0:	mov    DWORD PTR [esp],eax
  5034e3:	mov    ebx,DWORD PTR [esp+0x40]
  5034e7:	call   1ba3f0
  5034ec:	mov    eax,DWORD PTR [eax]
  5034ee:	mov    DWORD PTR [esp+0x34],eax
  5034f2:	call   1b9ce0
  5034f7:	xor    eax,eax
  5034f9:	test   edi,edi
  5034fb:	je     50356b
  5034fd:	mov    DWORD PTR [esp+0x28],eax
  503501:	mov    eax,DWORD PTR [esp+0x40]
  503505:	lea    eax,[eax+0x431a4]
  50350b:	mov    eax,DWORD PTR [eax]
  50350d:	mov    ecx,DWORD PTR [edi]
  50350f:	mov    ebx,edi
  503511:	movzx  edx,WORD PTR [ecx+0xaa]
  503518:	test   edx,edx
  50351a:	je     50352b
  50351c:	mov    edi,DWORD PTR [ecx+0x4c]
  50351f:	xor    esi,esi
  503521:	cmp    DWORD PTR [edi+esi*8],eax
  503524:	je     503547
  503526:	inc    esi
  503527:	cmp    esi,edx
  503529:	jb     503521
  50352b:	mov    DWORD PTR [esp+0x4],eax
  50352f:	mov    esi,ebx
  503531:	mov    DWORD PTR [esp],esi
  503534:	mov    DWORD PTR [esp+0x8],0x0
  50353c:	mov    ebx,DWORD PTR [esp+0x40]
  503540:	call   1c1964
  503545:	jmp    503558
  503547:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50354b:	lea    eax,[ecx+eax*8+0xb4]
  503552:	mov    esi,ebx
  503554:	mov    ebx,DWORD PTR [esp+0x40]
  503558:	mov    ecx,DWORD PTR [eax+0x4]
  50355b:	mov    DWORD PTR [esp+0x4],ecx
  50355f:	mov    DWORD PTR [esp],esi
  503562:	call   DWORD PTR [eax]
  503564:	mov    esi,DWORD PTR [ebp+0xc]
  503567:	mov    eax,DWORD PTR [esp+0x28]
  50356b:	cmp    eax,0x134
  503570:	mov    ebx,DWORD PTR [esp+0x40]
  503574:	mov    eax,DWORD PTR [esp+0x34]
  503578:	je     503586
  50357a:	test   eax,eax
  50357c:	je     503586
  50357e:	mov    DWORD PTR [esp],eax
  503581:	call   1fbb20
  503586:	lea    eax,[ebx+0x45878]
  50358c:	mov    edx,DWORD PTR [eax]
  50358e:	mov    eax,DWORD PTR [esi]
  503590:	movzx  ecx,BYTE PTR [eax+0xac]
  503597:	movzx  esi,BYTE PTR [edx+0xac]
  50359e:	cmp    ecx,esi
  5035a0:	jb     5035af
  5035a2:	mov    edi,DWORD PTR [eax+0x58]
  5035a5:	cmp    DWORD PTR [edi+esi*4-0x4],edx
  5035a9:	je     5036f5
  5035af:	lea    edx,[ebx+0x45a30]
  5035b5:	mov    edx,DWORD PTR [edx]
  5035b7:	movzx  esi,BYTE PTR [edx+0xac]
  5035be:	movzx  ecx,cl
  5035c1:	cmp    ecx,esi
  5035c3:	jae    5035cc
  5035c5:	xor    esi,esi
  5035c7:	jmp    5038bd
  5035cc:	mov    eax,DWORD PTR [eax+0x58]
  5035cf:	cmp    DWORD PTR [eax+esi*4-0x4],edx
  5035d3:	mov    esi,0x0
  5035d8:	jne    5038bd
  5035de:	lea    eax,[ebx+0x4afb8]
  5035e4:	mov    eax,DWORD PTR [eax]
  5035e6:	mov    DWORD PTR [esp+0x4],eax
  5035ea:	mov    eax,DWORD PTR [ebp+0xc]
  5035ed:	mov    DWORD PTR [esp],eax
  5035f0:	call   16047e3  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::get_CharacterModel | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::get_CharacterModel | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::get_CharacterModel | +2 other aliases
  5035f5:	test   eax,eax
  5035f7:	je     5038fe
  5035fd:	lea    ecx,[ebx+0x45ebc]
  503603:	mov    ecx,DWORD PTR [ecx]
  503605:	mov    edx,DWORD PTR [eax]
  503607:	movzx  esi,BYTE PTR [ecx+0xac]
  50360e:	movzx  edi,BYTE PTR [edx+0xac]
  503615:	cmp    edi,esi
  503617:	jb     5038fe
  50361d:	mov    edx,DWORD PTR [edx+0x58]
  503620:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  503624:	jne    5038fe
  50362a:	lea    ecx,[ebx+0x4a2e4]
  503630:	mov    ecx,DWORD PTR [ecx]
  503632:	mov    DWORD PTR [esp+0x4],ecx
  503636:	mov    DWORD PTR [esp],eax
  503639:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  50363e:	test   eax,eax
  503640:	je     5038fe
  503646:	mov    DWORD PTR [esp],eax
  503649:	mov    DWORD PTR [esp+0x4],0x0
  503651:	call   16fed22  ; ABH.Shared.BalancingData.BossBalancingData::get_PigStrength
  503656:	mov    DWORD PTR [esp+0x34],eax
  50365a:	mov    eax,DWORD PTR [esp+0x1c]
  50365e:	mov    eax,DWORD PTR [eax]
  503660:	test   BYTE PTR [eax+0xb2],0x1
  503667:	je     503677
  503669:	cmp    DWORD PTR [eax+0x60],0x0
  50366d:	jne    503677
  50366f:	mov    DWORD PTR [esp],eax
  503672:	call   1db0b8
  503677:	mov    DWORD PTR [esp+0x4],0x0
  50367f:	mov    DWORD PTR [esp],0x0
  503686:	call   107cf95  ; DIContainerBalancing::get_Service
  50368b:	mov    edi,eax
  50368d:	test   edi,edi
  50368f:	je     5038fa
  503695:	mov    eax,DWORD PTR [esp+0x38]
  503699:	mov    esi,DWORD PTR [eax]
  50369b:	mov    eax,DWORD PTR [esp+0x3c]
  50369f:	mov    eax,DWORD PTR [eax]
  5036a1:	mov    DWORD PTR [esp+0x38],eax
  5036a5:	mov    ecx,DWORD PTR [esi+0xc]
  5036a8:	movzx  eax,WORD PTR [esi+0x2c]
  5036ac:	mov    DWORD PTR [esp+0x30],eax
  5036b0:	mov    edx,DWORD PTR [edi]
  5036b2:	mov    DWORD PTR [esp+0x3c],edi
  5036b6:	movzx  ebx,WORD PTR [edx+0xaa]
  5036bd:	test   ebx,ebx
  5036bf:	je     5036d4
  5036c1:	mov    eax,DWORD PTR [edx+0x4c]
  5036c4:	xor    edi,edi
  5036c6:	cmp    DWORD PTR [eax+edi*8],ecx
  5036c9:	je     503846
  5036cf:	inc    edi
  5036d0:	cmp    edi,ebx
  5036d2:	jb     5036c6
  5036d4:	mov    eax,DWORD PTR [esp+0x30]
  5036d8:	mov    DWORD PTR [esp+0x8],eax
  5036dc:	mov    DWORD PTR [esp+0x4],ecx
  5036e0:	mov    edi,DWORD PTR [esp+0x3c]
  5036e4:	mov    DWORD PTR [esp],edi
  5036e7:	mov    ebx,DWORD PTR [esp+0x40]
  5036eb:	call   1c1964
  5036f0:	jmp    50385d
  5036f5:	lea    eax,[ebx+0x4afb4]
  5036fb:	mov    eax,DWORD PTR [eax]
  5036fd:	mov    DWORD PTR [esp+0x4],eax
  503701:	mov    eax,DWORD PTR [ebp+0xc]
  503704:	mov    DWORD PTR [esp],eax
  503707:	call   16047e3  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::get_CharacterModel | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::get_CharacterModel | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::get_CharacterModel | +2 other aliases
  50370c:	test   eax,eax
  50370e:	je     5038fe
  503714:	lea    ecx,[ebx+0x45ddc]
  50371a:	mov    ecx,DWORD PTR [ecx]
  50371c:	mov    edx,DWORD PTR [eax]
  50371e:	movzx  esi,BYTE PTR [ecx+0xac]
  503725:	movzx  edi,BYTE PTR [edx+0xac]
  50372c:	cmp    edi,esi
  50372e:	jb     5038fe
  503734:	mov    edx,DWORD PTR [edx+0x58]
  503737:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  50373b:	jne    5038fe
  503741:	mov    DWORD PTR [esp],eax
  503744:	mov    DWORD PTR [esp+0x4],0x0
  50374c:	call   6f4b7a  ; ABH.GameDatas.PigGameData::get_BalancingData
  503751:	test   eax,eax
  503753:	je     5038fe
  503759:	mov    DWORD PTR [esp],eax
  50375c:	mov    DWORD PTR [esp+0x4],0x0
  503764:	call   1701d27  ; ABH.Shared.BalancingData.PigBalancingData::get_PigStrength
  503769:	mov    DWORD PTR [esp+0x34],eax
  50376d:	mov    eax,DWORD PTR [esp+0x1c]
  503771:	mov    eax,DWORD PTR [eax]
  503773:	test   BYTE PTR [eax+0xb2],0x1
  50377a:	je     50378a
  50377c:	cmp    DWORD PTR [eax+0x60],0x0
  503780:	jne    50378a
  503782:	mov    DWORD PTR [esp],eax
  503785:	call   1db0b8
  50378a:	mov    DWORD PTR [esp+0x4],0x0
  503792:	mov    DWORD PTR [esp],0x0
  503799:	call   107cf95  ; DIContainerBalancing::get_Service
  50379e:	mov    edi,eax
  5037a0:	test   edi,edi
  5037a2:	je     5038fa
  5037a8:	mov    eax,DWORD PTR [esp+0x38]
  5037ac:	mov    esi,DWORD PTR [eax]
  5037ae:	mov    eax,DWORD PTR [esp+0x3c]
  5037b2:	mov    eax,DWORD PTR [eax]
  5037b4:	mov    DWORD PTR [esp+0x30],eax
  5037b8:	mov    ecx,DWORD PTR [esi+0xc]
  5037bb:	movzx  eax,WORD PTR [esi+0x2c]
  5037bf:	mov    DWORD PTR [esp+0x38],eax
  5037c3:	mov    edx,DWORD PTR [edi]
  5037c5:	mov    DWORD PTR [esp+0x3c],edi
  5037c9:	movzx  ebx,WORD PTR [edx+0xaa]
  5037d0:	test   ebx,ebx
  5037d2:	je     5037e3
  5037d4:	mov    eax,DWORD PTR [edx+0x4c]
  5037d7:	xor    edi,edi
  5037d9:	cmp    DWORD PTR [eax+edi*8],ecx
  5037dc:	je     503816
  5037de:	inc    edi
  5037df:	cmp    edi,ebx
  5037e1:	jb     5037d9
  5037e3:	mov    eax,DWORD PTR [esp+0x38]
  5037e7:	mov    DWORD PTR [esp+0x8],eax
  5037eb:	mov    DWORD PTR [esp+0x4],ecx
  5037ef:	mov    edi,DWORD PTR [esp+0x3c]
  5037f3:	mov    DWORD PTR [esp],edi
  5037f6:	mov    ebx,DWORD PTR [esp+0x40]
  5037fa:	call   1c1964
  5037ff:	jmp    50382d
  503801:	mov    DWORD PTR [esp+0x34],0x0
  503809:	mov    eax,0x134
  50380e:	mov    esi,DWORD PTR [ebp+0xc]
  503811:	jmp    5034f9
  503816:	mov    ecx,DWORD PTR [esp+0x38]
  50381a:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  50381e:	lea    eax,[edx+ecx*8+0xb4]
  503825:	mov    ebx,DWORD PTR [esp+0x40]
  503829:	mov    edi,DWORD PTR [esp+0x3c]
  50382d:	mov    eax,DWORD PTR [eax+0x4]
  503830:	mov    DWORD PTR [esp+0x4],esi
  503834:	mov    DWORD PTR [esp],eax
  503837:	call   1da450
  50383c:	mov    DWORD PTR [esp+0x8],eax
  503840:	mov    ecx,DWORD PTR [esp+0x30]
  503844:	jmp    503874
  503846:	mov    ecx,DWORD PTR [esp+0x30]
  50384a:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  50384e:	lea    eax,[edx+ecx*8+0xb4]
  503855:	mov    ebx,DWORD PTR [esp+0x40]
  503859:	mov    edi,DWORD PTR [esp+0x3c]
  50385d:	mov    eax,DWORD PTR [eax+0x4]
  503860:	mov    DWORD PTR [esp+0x4],esi
  503864:	mov    DWORD PTR [esp],eax
  503867:	call   1da450
  50386c:	mov    DWORD PTR [esp+0x8],eax
  503870:	mov    ecx,DWORD PTR [esp+0x38]
  503874:	mov    DWORD PTR [esp+0x4],ecx
  503878:	mov    DWORD PTR [esp],edi
  50387b:	call   DWORD PTR [eax]
  50387d:	test   eax,eax
  50387f:	je     5038fe
  503881:	mov    DWORD PTR [esp],eax
  503884:	mov    DWORD PTR [esp+0x4],0x0
  50388c:	call   17029d5  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScoreForAllFullPigs
  503891:	cvtsi2ss xmm0,DWORD PTR [esp+0x34]
  503897:	movss  xmm1,DWORD PTR [esp+0x2c]
  50389d:	mulss  xmm1,xmm0
  5038a1:	xorps  xmm0,xmm0
  5038a4:	cvtsi2ss xmm0,DWORD PTR [esp+0x24]
  5038aa:	divss  xmm1,xmm0
  5038ae:	xorps  xmm0,xmm0
  5038b1:	cvtsi2ss xmm0,eax
  5038b5:	mulss  xmm0,xmm1
  5038b9:	cvttss2si esi,xmm0
  5038bd:	mov    eax,esi
  5038bf:	lea    esp,[ebp-0xc]
  5038c2:	pop    esi
  5038c3:	pop    edi
  5038c4:	pop    ebx
  5038c5:	pop    ebp
  5038c6:	ret
  5038c7:	mov    edi,DWORD PTR [esp+0x30]
  5038cb:	call   1fbc48
  5038d0:	jmp    5038f1
  5038d2:	mov    edi,DWORD PTR [esp+0x30]
  5038d6:	call   1fbc48
  5038db:	jmp    5038f1
  5038dd:	mov    edi,DWORD PTR [esp+0x30]
  5038e1:	call   1fbc48
  5038e6:	jmp    5038f1
  5038e8:	mov    edi,DWORD PTR [esp+0x30]
  5038ec:	call   1fbc48
  5038f1:	mov    ebx,DWORD PTR [esp+0x40]
  5038f5:	call   540b98
  5038fa:	mov    ebx,DWORD PTR [esp+0x40]
  5038fe:	call   1fbc48
  503903:	call   540b98
  503908:	mov    DWORD PTR [esp],eax
  50390b:	mov    ebx,DWORD PTR [esp+0x40]
  50390f:	call   1b9bd0