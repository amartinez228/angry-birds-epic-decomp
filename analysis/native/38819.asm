
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006bf590:
  6bf590:	push   ebp
  6bf591:	mov    ebp,esp
  6bf593:	push   ebx
  6bf594:	push   edi
  6bf595:	push   esi
  6bf596:	and    esp,0xfffffff0
  6bf599:	sub    esp,0x70
  6bf59c:	call   6bf5a1
  6bf5a1:	pop    ebx
  6bf5a2:	add    ebx,0x18529a3
  6bf5a8:	mov    edi,DWORD PTR [ebp+0x8]
  6bf5ab:	mov    al,BYTE PTR [ebx+0x5f622]
  6bf5b1:	test   al,al
  6bf5b3:	jne    6bf5cc
  6bf5b5:	lea    eax,[ebx-0x658268]
  6bf5bb:	mov    eax,DWORD PTR [eax]
  6bf5bd:	mov    DWORD PTR [esp],eax
  6bf5c0:	call   1ca6e8
  6bf5c5:	mov    BYTE PTR [ebx+0x5f622],0x1
  6bf5cc:	mov    eax,DWORD PTR [edi+0x24]
  6bf5cf:	mov    DWORD PTR [edi+0x24],0xffffffff
  6bf5d6:	cmp    eax,0x1
  6bf5d9:	jne    6bf649
  6bf5db:	mov    DWORD PTR [esp+0x34],ebx
  6bf5df:	mov    eax,DWORD PTR [edi+0x28]
  6bf5e2:	test   eax,eax
  6bf5e4:	je     6c0044
  6bf5ea:	mov    esi,DWORD PTR [eax+0x8]
  6bf5ed:	cmp    esi,DWORD PTR [edi+0xc]
  6bf5f0:	je     6bf77a
  6bf5f6:	test   esi,esi
  6bf5f8:	je     6c0044
  6bf5fe:	mov    eax,DWORD PTR [esp+0x34]
  6bf602:	lea    eax,[eax+0x45874]
  6bf608:	mov    eax,DWORD PTR [eax]
  6bf60a:	mov    ebx,DWORD PTR [esi]
  6bf60c:	movzx  edx,WORD PTR [ebx+0xaa]
  6bf613:	test   edx,edx
  6bf615:	je     6bf62a
  6bf617:	mov    edi,DWORD PTR [ebx+0x4c]
  6bf61a:	xor    ecx,ecx
  6bf61c:	cmp    DWORD PTR [edi+ecx*8],eax
  6bf61f:	je     6bf741
  6bf625:	inc    ecx
  6bf626:	cmp    ecx,edx
  6bf628:	jb     6bf61c
  6bf62a:	mov    DWORD PTR [esp+0x4],eax
  6bf62e:	mov    DWORD PTR [esp],esi
  6bf631:	mov    DWORD PTR [esp+0x8],0x11
  6bf639:	mov    ebx,DWORD PTR [esp+0x34]
  6bf63d:	call   1c1964
  6bf642:	mov    ecx,eax
  6bf644:	jmp    6bf750
  6bf649:	test   eax,eax
  6bf64b:	jne    6bfc9d
  6bf651:	lea    eax,[ebx+0x45e00]
  6bf657:	mov    eax,DWORD PTR [eax]
  6bf659:	mov    DWORD PTR [esp],eax
  6bf65c:	call   20bfb2
  6bf661:	mov    DWORD PTR [esp+0x34],ebx
  6bf665:	mov    esi,eax
  6bf667:	mov    DWORD PTR [esp],esi
  6bf66a:	mov    DWORD PTR [esp+0x4],0x0
  6bf672:	call   124632e  ; System.Object::.ctor
  6bf677:	mov    DWORD PTR [edi+0x28],esi
  6bf67a:	test   esi,esi
  6bf67c:	je     6c0044
  6bf682:	mov    DWORD PTR [esi+0xc],edi
  6bf685:	mov    eax,DWORD PTR [edi+0x28]
  6bf688:	test   eax,eax
  6bf68a:	je     6c0044
  6bf690:	mov    ecx,DWORD PTR [edi+0x8]
  6bf693:	mov    DWORD PTR [eax+0x8],ecx
  6bf696:	mov    eax,DWORD PTR [edi+0x18]
  6bf699:	test   eax,eax
  6bf69b:	mov    ebx,DWORD PTR [esp+0x34]
  6bf69f:	je     6c0048
  6bf6a5:	mov    DWORD PTR [esp],eax
  6bf6a8:	mov    DWORD PTR [esp+0x4],0x0
  6bf6b0:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bf6b5:	test   eax,eax
  6bf6b7:	je     6c0048
  6bf6bd:	mov    eax,DWORD PTR [eax+0x8]
  6bf6c0:	test   eax,eax
  6bf6c2:	je     6c0048
  6bf6c8:	mov    DWORD PTR [esp],eax
  6bf6cb:	mov    DWORD PTR [esp+0x4],0x0
  6bf6d3:	call   17030c1  ; ABH.Shared.BalancingData.SkillBalancingData::get_NameId
  6bf6d8:	mov    ecx,DWORD PTR [edi+0x28]
  6bf6db:	test   ecx,ecx
  6bf6dd:	je     6c0048
  6bf6e3:	mov    DWORD PTR [esp+0x58],eax
  6bf6e7:	mov    edx,DWORD PTR [ecx+0x8]
  6bf6ea:	test   edx,edx
  6bf6ec:	je     6c0048
  6bf6f2:	lea    eax,[ebx+0x45874]
  6bf6f8:	mov    DWORD PTR [esp+0x50],eax
  6bf6fc:	mov    eax,DWORD PTR [eax]
  6bf6fe:	mov    ecx,DWORD PTR [edx]
  6bf700:	mov    DWORD PTR [esp+0x54],edx
  6bf704:	movzx  edx,WORD PTR [ecx+0xaa]
  6bf70b:	test   edx,edx
  6bf70d:	je     6bf722
  6bf70f:	mov    esi,DWORD PTR [ecx+0x4c]
  6bf712:	xor    edi,edi
  6bf714:	cmp    DWORD PTR [esi+edi*8],eax
  6bf717:	je     6bfca4
  6bf71d:	inc    edi
  6bf71e:	cmp    edi,edx
  6bf720:	jb     6bf714
  6bf722:	mov    DWORD PTR [esp+0x4],eax
  6bf726:	mov    esi,DWORD PTR [esp+0x54]
  6bf72a:	mov    DWORD PTR [esp],esi
  6bf72d:	mov    DWORD PTR [esp+0x8],0xb
  6bf735:	call   1c1964
  6bf73a:	mov    ecx,eax
  6bf73c:	jmp    6bfcb3
  6bf741:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6bf745:	lea    ecx,[ebx+eax*8+0x13c]
  6bf74c:	mov    ebx,DWORD PTR [esp+0x34]
  6bf750:	mov    eax,DWORD PTR [ecx+0x4]
  6bf753:	mov    DWORD PTR [esp+0x4],eax
  6bf757:	mov    DWORD PTR [esp],esi
  6bf75a:	call   DWORD PTR [ecx]
  6bf75c:	test   eax,eax
  6bf75e:	je     6c0048
  6bf764:	mov    DWORD PTR [esp],eax
  6bf767:	mov    DWORD PTR [esp+0x4],0x0
  6bf76f:	mov    DWORD PTR [esp+0x34],ebx
  6bf773:	call   8de7cd  ; CharacterControllerBattleGroundBase::PlayCheerCharacter
  6bf778:	fstp   st(0)
  6bf77a:	mov    esi,DWORD PTR [ebp+0x8]
  6bf77d:	mov    eax,DWORD PTR [esi+0x18]
  6bf780:	test   eax,eax
  6bf782:	mov    ebx,DWORD PTR [esp+0x34]
  6bf786:	je     6c0048
  6bf78c:	lea    edi,[esi+0x14]
  6bf78f:	mov    DWORD PTR [esp+0x30],edi
  6bf793:	mov    DWORD PTR [esp+0x58],0x0
  6bf79b:	mov    eax,DWORD PTR [eax+0x34]
  6bf79e:	test   eax,eax
  6bf7a0:	je     6c0048
  6bf7a6:	lea    ecx,[ebx+0x4a048]
  6bf7ac:	mov    ecx,DWORD PTR [ecx]
  6bf7ae:	mov    DWORD PTR [esp+0x4],ecx
  6bf7b2:	mov    DWORD PTR [esp],eax
  6bf7b5:	call   4c46f7
  6bf7ba:	cmp    DWORD PTR [esp+0x58],eax
  6bf7be:	jge    6bfc9d
  6bf7c4:	mov    eax,DWORD PTR [esi+0x18]
  6bf7c7:	test   eax,eax
  6bf7c9:	je     6c0048
  6bf7cf:	mov    DWORD PTR [esp],eax
  6bf7d2:	mov    DWORD PTR [esp+0x4],0x0
  6bf7da:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bf7df:	test   eax,eax
  6bf7e1:	je     6c0048
  6bf7e7:	mov    DWORD PTR [esp],eax
  6bf7ea:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  6bf7ef:	test   eax,eax
  6bf7f1:	je     6c0048
  6bf7f7:	lea    ecx,[ebx+0x56bdc]
  6bf7fd:	mov    ecx,DWORD PTR [ecx]
  6bf7ff:	lea    edx,[ebx+0x4a034]
  6bf805:	mov    edx,DWORD PTR [edx]
  6bf807:	mov    DWORD PTR [esp+0xc],edx
  6bf80b:	mov    DWORD PTR [esp+0x8],edi
  6bf80f:	mov    DWORD PTR [esp+0x4],ecx
  6bf813:	mov    DWORD PTR [esp],eax
  6bf816:	call   61f168
  6bf81b:	test   al,al
  6bf81d:	je     6bfc89
  6bf823:	lea    eax,[ebx+0x45290]
  6bf829:	mov    eax,DWORD PTR [eax]
  6bf82b:	mov    DWORD PTR [esp],eax
  6bf82e:	call   20bfb2
  6bf833:	mov    DWORD PTR [esp+0x54],eax
  6bf837:	lea    ecx,[ebx+0x49708]
  6bf83d:	mov    ecx,DWORD PTR [ecx]
  6bf83f:	mov    DWORD PTR [esp+0x4],ecx
  6bf843:	mov    DWORD PTR [esp],eax
  6bf846:	call   4d21ef
  6bf84b:	mov    eax,DWORD PTR [esi+0x18]
  6bf84e:	test   eax,eax
  6bf850:	je     6c0048
  6bf856:	mov    edi,DWORD PTR [esi+0xc]
  6bf859:	test   edi,edi
  6bf85b:	je     6c0048
  6bf861:	movss  xmm0,DWORD PTR [eax+0x40]
  6bf866:	lea    eax,[ebx+0x45874]
  6bf86c:	mov    eax,DWORD PTR [eax]
  6bf86e:	mov    ebx,DWORD PTR [edi]
  6bf870:	movzx  edx,WORD PTR [ebx+0xaa]
  6bf877:	test   edx,edx
  6bf879:	je     6bf88a
  6bf87b:	mov    esi,DWORD PTR [ebx+0x4c]
  6bf87e:	xor    ecx,ecx
  6bf880:	cmp    DWORD PTR [esi+ecx*8],eax
  6bf883:	je     6bf8aa
  6bf885:	inc    ecx
  6bf886:	cmp    ecx,edx
  6bf888:	jb     6bf880
  6bf88a:	movss  DWORD PTR [esp+0x50],xmm0
  6bf890:	mov    DWORD PTR [esp+0x4],eax
  6bf894:	mov    DWORD PTR [esp],edi
  6bf897:	mov    DWORD PTR [esp+0x8],0x1c
  6bf89f:	mov    ebx,DWORD PTR [esp+0x34]
  6bf8a3:	call   1c1964
  6bf8a8:	jmp    6bf8bf
  6bf8aa:	movss  DWORD PTR [esp+0x50],xmm0
  6bf8b0:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  6bf8b4:	lea    eax,[ebx+eax*8+0x194]
  6bf8bb:	mov    ebx,DWORD PTR [esp+0x34]
  6bf8bf:	mov    ecx,DWORD PTR [eax+0x4]
  6bf8c2:	mov    DWORD PTR [esp+0x4],ecx
  6bf8c6:	mov    DWORD PTR [esp],edi
  6bf8c9:	call   DWORD PTR [eax]
  6bf8cb:	fstp   DWORD PTR [esp+0x64]
  6bf8cf:	mov    ecx,DWORD PTR [esp+0x54]
  6bf8d3:	test   ecx,ecx
  6bf8d5:	mov    esi,DWORD PTR [ebp+0x8]
  6bf8d8:	je     6c0048
  6bf8de:	movss  xmm0,DWORD PTR [esp+0x50]
  6bf8e4:	mulss  xmm0,DWORD PTR [esp+0x64]
  6bf8ea:	lea    eax,[ebx+0x4970c]
  6bf8f0:	mov    eax,DWORD PTR [eax]
  6bf8f2:	mov    DWORD PTR [esp+0x8],eax
  6bf8f6:	movss  DWORD PTR [esp+0x4],xmm0
  6bf8fc:	mov    DWORD PTR [esp],ecx
  6bf8ff:	call   4d30f2
  6bf904:	mov    eax,DWORD PTR [esi+0x18]
  6bf907:	test   eax,eax
  6bf909:	je     6c0048
  6bf90f:	mov    eax,DWORD PTR [eax+0x34]
  6bf912:	test   eax,eax
  6bf914:	je     6c0048
  6bf91a:	mov    ecx,DWORD PTR [esi+0xc]
  6bf91d:	mov    DWORD PTR [esp+0x4c],ecx
  6bf921:	lea    ecx,[ebx+0x4a0ac]
  6bf927:	mov    ecx,DWORD PTR [ecx]
  6bf929:	mov    DWORD PTR [esp+0x8],ecx
  6bf92d:	mov    ecx,DWORD PTR [esp+0x58]
  6bf931:	mov    DWORD PTR [esp+0x4],ecx
  6bf935:	mov    DWORD PTR [esp],eax
  6bf938:	call   4c4707
  6bf93d:	mov    DWORD PTR [esp+0x48],eax
  6bf941:	lea    eax,[ebx+0x4589c]
  6bf947:	mov    eax,DWORD PTR [eax]
  6bf949:	mov    DWORD PTR [esp],eax
  6bf94c:	call   20bfb2
  6bf951:	mov    DWORD PTR [esp+0x50],eax
  6bf955:	lea    ecx,[ebx+0x4a138]
  6bf95b:	mov    ecx,DWORD PTR [ecx]
  6bf95d:	mov    DWORD PTR [esp+0x4],ecx
  6bf961:	mov    DWORD PTR [esp],eax
  6bf964:	call   4c15d9
  6bf969:	lea    eax,[ebx+0x454a8]
  6bf96f:	mov    eax,DWORD PTR [eax]
  6bf971:	mov    DWORD PTR [esp],eax
  6bf974:	call   20bfb2
  6bf979:	mov    edi,eax
  6bf97b:	mov    DWORD PTR [esp],edi
  6bf97e:	mov    DWORD PTR [esp+0x4],0x0
  6bf986:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
  6bf98b:	test   edi,edi
  6bf98d:	je     6c0048
  6bf993:	mov    DWORD PTR [esp],edi
  6bf996:	mov    DWORD PTR [esp+0x8],0x0
  6bf99e:	mov    DWORD PTR [esp+0x4],0x2
  6bf9a6:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
  6bf9ab:	mov    DWORD PTR [esp],edi
  6bf9ae:	mov    DWORD PTR [esp+0x8],0x0
  6bf9b6:	mov    DWORD PTR [esp+0x4],0x10
  6bf9be:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
  6bf9c3:	mov    eax,DWORD PTR [esi+0x18]
  6bf9c6:	test   eax,eax
  6bf9c8:	je     6c0048
  6bf9ce:	mov    DWORD PTR [esp],eax
  6bf9d1:	mov    DWORD PTR [esp+0x4],0x0
  6bf9d9:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bf9de:	test   eax,eax
  6bf9e0:	je     6c0048
  6bf9e6:	mov    eax,DWORD PTR [eax+0x8]
  6bf9e9:	test   eax,eax
  6bf9eb:	je     6c0048
  6bf9f1:	mov    DWORD PTR [esp],eax
  6bf9f4:	mov    DWORD PTR [esp+0x4],0x0
  6bf9fc:	call   17031b6  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectType
  6bfa01:	mov    DWORD PTR [esp+0x4],eax
  6bfa05:	mov    DWORD PTR [esp],edi
  6bfa08:	mov    DWORD PTR [esp+0x8],0x0
  6bfa10:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
  6bfa15:	mov    eax,DWORD PTR [esp+0x54]
  6bfa19:	mov    DWORD PTR [esp+0x4],eax
  6bfa1d:	mov    DWORD PTR [esp],edi
  6bfa20:	mov    DWORD PTR [esp+0x8],0x0
  6bfa28:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
  6bfa2d:	mov    eax,DWORD PTR [esi+0x18]
  6bfa30:	test   eax,eax
  6bfa32:	je     6c0048
  6bfa38:	mov    eax,DWORD PTR [eax+0x3c]
  6bfa3b:	mov    DWORD PTR [esp+0x4],eax
  6bfa3f:	mov    DWORD PTR [esp],edi
  6bfa42:	mov    DWORD PTR [esp+0x8],0x0
  6bfa4a:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
  6bfa4f:	mov    eax,DWORD PTR [esi+0x18]
  6bfa52:	test   eax,eax
  6bfa54:	je     6c0048
  6bfa5a:	mov    DWORD PTR [esp],eax
  6bfa5d:	mov    DWORD PTR [esp+0x4],0x0
  6bfa65:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bfa6a:	test   eax,eax
  6bfa6c:	je     6c0048
  6bfa72:	mov    eax,DWORD PTR [eax+0x8]
  6bfa75:	test   eax,eax
  6bfa77:	je     6c0048
  6bfa7d:	mov    DWORD PTR [esp],eax
  6bfa80:	mov    DWORD PTR [esp+0x4],0x0
  6bfa88:	call   17032ad  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAssetId
  6bfa8d:	mov    DWORD PTR [esp+0x4],eax
  6bfa91:	mov    DWORD PTR [esp],edi
  6bfa94:	mov    DWORD PTR [esp+0x8],0x0
  6bfa9c:	call   179afdb  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAssetId
  6bfaa1:	mov    eax,DWORD PTR [esi+0x18]
  6bfaa4:	test   eax,eax
  6bfaa6:	je     6c0048
  6bfaac:	mov    DWORD PTR [esp],eax
  6bfaaf:	mov    DWORD PTR [esp+0x4],0x0
  6bfab7:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bfabc:	test   eax,eax
  6bfabe:	je     6c0048
  6bfac4:	mov    eax,DWORD PTR [eax+0x8]
  6bfac7:	test   eax,eax
  6bfac9:	je     6c0048
  6bfacf:	mov    DWORD PTR [esp],eax
  6bfad2:	mov    DWORD PTR [esp+0x4],0x0
  6bfada:	call   170328a  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAtlasId
  6bfadf:	mov    DWORD PTR [esp+0x4],eax
  6bfae3:	mov    DWORD PTR [esp],edi
  6bfae6:	mov    DWORD PTR [esp+0x8],0x0
  6bfaee:	call   179afb8  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAtlasId
  6bfaf3:	mov    ecx,DWORD PTR [esp+0x50]
  6bfaf7:	test   ecx,ecx
  6bfaf9:	je     6c0048
  6bfaff:	lea    eax,[ebx+0x4a144]
  6bfb05:	mov    eax,DWORD PTR [eax]
  6bfb07:	mov    DWORD PTR [esp+0x8],eax
  6bfb0b:	mov    DWORD PTR [esp+0x4],edi
  6bfb0f:	mov    DWORD PTR [esp],ecx
  6bfb12:	call   4c23b4
  6bfb17:	mov    eax,DWORD PTR [esi+0x18]
  6bfb1a:	test   eax,eax
  6bfb1c:	je     6c0048
  6bfb22:	mov    edi,DWORD PTR [eax+0x3c]
  6bfb25:	mov    ecx,DWORD PTR [esi+0x10]
  6bfb28:	mov    DWORD PTR [esp+0x54],ecx
  6bfb2c:	mov    DWORD PTR [esp],eax
  6bfb2f:	mov    DWORD PTR [esp+0x4],0x0
  6bfb37:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bfb3c:	test   eax,eax
  6bfb3e:	je     6c0048
  6bfb44:	mov    eax,DWORD PTR [eax+0x8]
  6bfb47:	test   eax,eax
  6bfb49:	je     6c0048
  6bfb4f:	mov    DWORD PTR [esp],eax
  6bfb52:	mov    DWORD PTR [esp+0x4],0x0
  6bfb5a:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  6bfb5f:	mov    DWORD PTR [esp+0x44],eax
  6bfb63:	mov    eax,DWORD PTR [esi+0x18]
  6bfb66:	test   eax,eax
  6bfb68:	je     6c0048
  6bfb6e:	mov    DWORD PTR [esp],eax
  6bfb71:	mov    DWORD PTR [esp+0x4],0x0
  6bfb79:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bfb7e:	test   eax,eax
  6bfb80:	je     6c0048
  6bfb86:	mov    DWORD PTR [esp+0x40],edi
  6bfb8a:	mov    eax,DWORD PTR [eax+0x8]
  6bfb8d:	test   eax,eax
  6bfb8f:	je     6c0048
  6bfb95:	mov    DWORD PTR [esp],eax
  6bfb98:	mov    DWORD PTR [esp+0x4],0x0
  6bfba0:	call   17031b6  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectType
  6bfba5:	mov    DWORD PTR [esp+0x3c],eax
  6bfba9:	mov    eax,DWORD PTR [esi+0x18]
  6bfbac:	test   eax,eax
  6bfbae:	mov    edi,esi
  6bfbb0:	je     6c0048
  6bfbb6:	mov    ecx,DWORD PTR [eax]
  6bfbb8:	mov    edx,DWORD PTR [ecx+0x110]
  6bfbbe:	mov    DWORD PTR [esp+0x4],edx
  6bfbc2:	mov    DWORD PTR [esp],eax
  6bfbc5:	call   DWORD PTR [ecx+0x10c]
  6bfbcb:	mov    esi,eax
  6bfbcd:	mov    eax,DWORD PTR [edi+0x18]
  6bfbd0:	test   eax,eax
  6bfbd2:	je     6c0048
  6bfbd8:	mov    DWORD PTR [esp],eax
  6bfbdb:	mov    DWORD PTR [esp+0x4],0x0
  6bfbe3:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bfbe8:	test   eax,eax
  6bfbea:	je     6c0048
  6bfbf0:	mov    DWORD PTR [esp],eax
  6bfbf3:	call   6b291c  ; ABH.GameDatas.SkillGameData::get_SkillNameId
  6bfbf8:	mov    DWORD PTR [esp+0x38],eax
  6bfbfc:	lea    eax,[ebx+0x458a8]
  6bfc02:	mov    eax,DWORD PTR [eax]
  6bfc04:	mov    DWORD PTR [esp],eax
  6bfc07:	call   20bfb2
  6bfc0c:	mov    edi,eax
  6bfc0e:	mov    eax,DWORD PTR [esp+0x38]
  6bfc12:	mov    DWORD PTR [esp+0x24],eax
  6bfc16:	mov    DWORD PTR [esp+0x20],esi
  6bfc1a:	mov    eax,DWORD PTR [esp+0x3c]
  6bfc1e:	mov    DWORD PTR [esp+0x1c],eax
  6bfc22:	mov    eax,DWORD PTR [esp+0x44]
  6bfc26:	mov    DWORD PTR [esp+0x18],eax
  6bfc2a:	mov    eax,DWORD PTR [esp+0x54]
  6bfc2e:	mov    DWORD PTR [esp+0x14],eax
  6bfc32:	mov    eax,DWORD PTR [esp+0x40]
  6bfc36:	mov    DWORD PTR [esp+0x10],eax
  6bfc3a:	mov    eax,DWORD PTR [esp+0x50]
  6bfc3e:	mov    DWORD PTR [esp+0xc],eax
  6bfc42:	mov    eax,DWORD PTR [esp+0x48]
  6bfc46:	mov    DWORD PTR [esp+0x8],eax
  6bfc4a:	mov    eax,DWORD PTR [esp+0x4c]
  6bfc4e:	mov    DWORD PTR [esp+0x4],eax
  6bfc52:	mov    DWORD PTR [esp],edi
  6bfc55:	mov    DWORD PTR [esp+0x28],0x0
  6bfc5d:	call   ebd4cc  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
  6bfc62:	test   edi,edi
  6bfc64:	je     6c0048
  6bfc6a:	mov    DWORD PTR [esp],edi
  6bfc6d:	mov    DWORD PTR [esp+0x8],0x0
  6bfc75:	mov    DWORD PTR [esp+0x4],0x1
  6bfc7d:	call   ebf8b0  ; ABH.GameDatas.Battle.BattleEffectGameData::AddEffect
  6bfc82:	mov    esi,DWORD PTR [ebp+0x8]
  6bfc85:	mov    edi,DWORD PTR [esp+0x30]
  6bfc89:	inc    DWORD PTR [esp+0x58]
  6bfc8d:	mov    eax,DWORD PTR [esi+0x18]
  6bfc90:	test   eax,eax
  6bfc92:	jne    6bf79b
  6bfc98:	jmp    6c0048
  6bfc9d:	xor    eax,eax
  6bfc9f:	jmp    6c0039
  6bfca4:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6bfca8:	lea    ecx,[ecx+eax*8+0x10c]
  6bfcaf:	mov    esi,DWORD PTR [esp+0x54]
  6bfcb3:	mov    eax,DWORD PTR [ecx+0x4]
  6bfcb6:	mov    DWORD PTR [esp+0x4],eax
  6bfcba:	mov    DWORD PTR [esp],esi
  6bfcbd:	call   DWORD PTR [ecx]
  6bfcbf:	mov    edi,eax
  6bfcc1:	lea    eax,[ebx+0x430e4]
  6bfcc7:	mov    eax,DWORD PTR [eax]
  6bfcc9:	test   BYTE PTR [eax+0xb2],0x1
  6bfcd0:	mov    esi,DWORD PTR [ebp+0x8]
  6bfcd3:	je     6bfce3
  6bfcd5:	cmp    DWORD PTR [eax+0x60],0x0
  6bfcd9:	jne    6bfce3
  6bfcdb:	mov    DWORD PTR [esp],eax
  6bfcde:	call   1db0b8
  6bfce3:	lea    eax,[ebx+0x56b98]
  6bfce9:	mov    eax,DWORD PTR [eax]
  6bfceb:	lea    ecx,[ebx+0x56b9c]
  6bfcf1:	mov    ecx,DWORD PTR [ecx]
  6bfcf3:	mov    DWORD PTR [esp+0x10],edi
  6bfcf7:	mov    DWORD PTR [esp+0xc],ecx
  6bfcfb:	mov    ecx,DWORD PTR [esp+0x58]
  6bfcff:	mov    DWORD PTR [esp+0x8],ecx
  6bfd03:	mov    DWORD PTR [esp+0x4],eax
  6bfd07:	mov    DWORD PTR [esp+0x14],0x0
  6bfd0f:	mov    DWORD PTR [esp],0x0
  6bfd16:	call   cc1627  ; System.String::Concat
  6bfd1b:	mov    DWORD PTR [esp+0x4],eax
  6bfd1f:	mov    DWORD PTR [esp+0x8],0x0
  6bfd27:	mov    DWORD PTR [esp],0x0
  6bfd2e:	call   1068c69  ; DebugLog::Log
  6bfd33:	mov    eax,DWORD PTR [esi+0x18]
  6bfd36:	test   eax,eax
  6bfd38:	je     6c0048
  6bfd3e:	mov    ecx,DWORD PTR [esi+0xc]
  6bfd41:	mov    DWORD PTR [eax+0x30],ecx
  6bfd44:	mov    eax,DWORD PTR [esi+0x18]
  6bfd47:	test   eax,eax
  6bfd49:	je     6c0048
  6bfd4f:	mov    DWORD PTR [esp],eax
  6bfd52:	mov    DWORD PTR [esp+0x4],0x0
  6bfd5a:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bfd5f:	test   eax,eax
  6bfd61:	je     6c0048
  6bfd67:	mov    DWORD PTR [esp],eax
  6bfd6a:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  6bfd6f:	test   eax,eax
  6bfd71:	je     6c0048
  6bfd77:	lea    ecx,[ebx+0x538b4]
  6bfd7d:	mov    ecx,DWORD PTR [ecx]
  6bfd7f:	lea    edx,[ebx+0x4a014]
  6bfd85:	mov    edx,DWORD PTR [edx]
  6bfd87:	mov    DWORD PTR [esp+0x8],edx
  6bfd8b:	mov    DWORD PTR [esp+0x4],ecx
  6bfd8f:	mov    DWORD PTR [esp],eax
  6bfd92:	call   61e326
  6bfd97:	mov    edi,DWORD PTR [esi+0x18]
  6bfd9a:	test   al,al
  6bfd9c:	je     6bfeb4
  6bfda2:	lea    eax,[ebx+0x45890]
  6bfda8:	mov    eax,DWORD PTR [eax]
  6bfdaa:	mov    DWORD PTR [esp],eax
  6bfdad:	call   20bfb2
  6bfdb2:	mov    DWORD PTR [esp+0x34],ebx
  6bfdb6:	mov    esi,eax
  6bfdb8:	lea    eax,[ebx+0x4a074]
  6bfdbe:	mov    eax,DWORD PTR [eax]
  6bfdc0:	mov    DWORD PTR [esp+0x4],eax
  6bfdc4:	mov    DWORD PTR [esp],esi
  6bfdc7:	call   4c15d9
  6bfdcc:	test   edi,edi
  6bfdce:	je     6c0044
  6bfdd4:	mov    DWORD PTR [edi+0x34],esi
  6bfdd7:	mov    edx,DWORD PTR [ebp+0x8]
  6bfdda:	mov    eax,DWORD PTR [edx+0x18]
  6bfddd:	test   eax,eax
  6bfddf:	je     6c0044
  6bfde5:	mov    ecx,DWORD PTR [edx+0x10]
  6bfde8:	test   ecx,ecx
  6bfdea:	mov    ebx,DWORD PTR [esp+0x34]
  6bfdee:	je     6c0048
  6bfdf4:	mov    eax,DWORD PTR [eax+0x34]
  6bfdf7:	mov    DWORD PTR [esp+0x58],eax
  6bfdfb:	mov    eax,DWORD PTR [ecx+0x58]
  6bfdfe:	mov    DWORD PTR [esp+0x54],eax
  6bfe02:	mov    eax,DWORD PTR [edx+0x28]
  6bfe05:	mov    DWORD PTR [esp+0x4c],eax
  6bfe09:	lea    eax,[ebx+0x4a7e4]
  6bfe0f:	mov    edi,DWORD PTR [eax]
  6bfe11:	lea    eax,[ebx+0x4588c]
  6bfe17:	mov    eax,DWORD PTR [eax]
  6bfe19:	mov    DWORD PTR [esp],eax
  6bfe1c:	call   20bfb2
  6bfe21:	mov    esi,eax
  6bfe23:	mov    DWORD PTR [esp+0x68],edi
  6bfe27:	lea    eax,[ebx+0x4a054]
  6bfe2d:	mov    eax,DWORD PTR [eax]
  6bfe2f:	mov    DWORD PTR [esp+0xc],eax
  6bfe33:	mov    eax,DWORD PTR [esp+0x68]
  6bfe37:	mov    DWORD PTR [esp+0x8],eax
  6bfe3b:	mov    eax,DWORD PTR [esp+0x4c]
  6bfe3f:	mov    DWORD PTR [esp+0x4],eax
  6bfe43:	mov    DWORD PTR [esp],esi
  6bfe46:	call   159e10c
  6bfe4b:	lea    eax,[ebx+0x4a058]
  6bfe51:	mov    eax,DWORD PTR [eax]
  6bfe53:	mov    DWORD PTR [esp+0xc],eax
  6bfe57:	mov    DWORD PTR [esp+0x8],esi
  6bfe5b:	mov    eax,DWORD PTR [esp+0x54]
  6bfe5f:	mov    DWORD PTR [esp+0x4],eax
  6bfe63:	mov    DWORD PTR [esp],0x0
  6bfe6a:	call   9c0237
  6bfe6f:	lea    ecx,[ebx+0x4a080]
  6bfe75:	mov    ecx,DWORD PTR [ecx]
  6bfe77:	mov    DWORD PTR [esp+0x8],ecx
  6bfe7b:	mov    DWORD PTR [esp+0x4],eax
  6bfe7f:	mov    DWORD PTR [esp],0x0
  6bfe86:	call   9c7738
  6bfe8b:	mov    edx,DWORD PTR [esp+0x58]
  6bfe8f:	test   edx,edx
  6bfe91:	je     6c0048
  6bfe97:	lea    ecx,[ebx+0x4a084]
  6bfe9d:	mov    ecx,DWORD PTR [ecx]
  6bfe9f:	mov    DWORD PTR [esp+0x8],ecx
  6bfea3:	mov    DWORD PTR [esp+0x4],eax
  6bfea7:	mov    DWORD PTR [esp],edx
  6bfeaa:	call   4c29d3
  6bfeaf:	jmp    6bff3c
  6bfeb4:	test   edi,edi
  6bfeb6:	je     6c0048
  6bfebc:	mov    al,BYTE PTR [edi+0x48]
  6bfebf:	mov    BYTE PTR [esp+0x58],al
  6bfec3:	lea    eax,[ebx+0x45890]
  6bfec9:	mov    eax,DWORD PTR [eax]
  6bfecb:	mov    DWORD PTR [esp],eax
  6bfece:	call   20bfb2
  6bfed3:	mov    DWORD PTR [esp+0x34],ebx
  6bfed7:	mov    esi,eax
  6bfed9:	lea    eax,[ebx+0x4a074]
  6bfedf:	mov    eax,DWORD PTR [eax]
  6bfee1:	mov    DWORD PTR [esp+0x4],eax
  6bfee5:	mov    DWORD PTR [esp],esi
  6bfee8:	call   4c15d9
  6bfeed:	cmp    BYTE PTR [esp+0x58],0x0
  6bfef2:	je     6bff04
  6bfef4:	test   esi,esi
  6bfef6:	je     6c0044
  6bfefc:	mov    eax,DWORD PTR [ebp+0x8]
  6bfeff:	mov    eax,DWORD PTR [eax+0xc]
  6bff02:	jmp    6bff1d
  6bff04:	mov    eax,DWORD PTR [ebp+0x8]
  6bff07:	mov    eax,DWORD PTR [eax+0x28]
  6bff0a:	test   eax,eax
  6bff0c:	je     6c0044
  6bff12:	test   esi,esi
  6bff14:	je     6c0044
  6bff1a:	mov    eax,DWORD PTR [eax+0x8]
  6bff1d:	mov    ebx,DWORD PTR [esp+0x34]
  6bff21:	lea    ecx,[ebx+0x4a078]
  6bff27:	mov    ecx,DWORD PTR [ecx]
  6bff29:	mov    DWORD PTR [esp+0x8],ecx
  6bff2d:	mov    DWORD PTR [esp+0x4],eax
  6bff31:	mov    DWORD PTR [esp],esi
  6bff34:	call   4c23b4
  6bff39:	mov    DWORD PTR [edi+0x34],esi
  6bff3c:	mov    esi,DWORD PTR [ebp+0x8]
  6bff3f:	mov    DWORD PTR [esi+0x14],0x0
  6bff46:	mov    eax,DWORD PTR [esi+0x18]
  6bff49:	test   eax,eax
  6bff4b:	je     6c0048
  6bff51:	mov    ecx,DWORD PTR [eax+0xc]
  6bff54:	mov    DWORD PTR [esp+0x8],ecx
  6bff58:	mov    DWORD PTR [esp],eax
  6bff5b:	mov    DWORD PTR [esp+0x10],0x0
  6bff63:	mov    DWORD PTR [esp+0xc],0x0
  6bff6b:	mov    DWORD PTR [esp+0x4],0x0
  6bff73:	mov    DWORD PTR [esp+0x34],ebx
  6bff77:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  6bff7c:	mov    esi,DWORD PTR [esi+0xc]
  6bff7f:	test   esi,esi
  6bff81:	je     6c0044
  6bff87:	mov    eax,DWORD PTR [esp+0x50]
  6bff8b:	mov    eax,DWORD PTR [eax]
  6bff8d:	mov    ebx,DWORD PTR [esi]
  6bff8f:	movzx  edx,WORD PTR [ebx+0xaa]
  6bff96:	test   edx,edx
  6bff98:	je     6bffa9
  6bff9a:	mov    edi,DWORD PTR [ebx+0x4c]
  6bff9d:	xor    ecx,ecx
  6bff9f:	cmp    DWORD PTR [edi+ecx*8],eax
  6bffa2:	je     6bffc5
  6bffa4:	inc    ecx
  6bffa5:	cmp    ecx,edx
  6bffa7:	jb     6bff9f
  6bffa9:	mov    DWORD PTR [esp+0x4],eax
  6bffad:	mov    DWORD PTR [esp],esi
  6bffb0:	mov    DWORD PTR [esp+0x8],0x11
  6bffb8:	mov    ebx,DWORD PTR [esp+0x34]
  6bffbc:	call   1c1964
  6bffc1:	mov    ecx,eax
  6bffc3:	jmp    6bffd4
  6bffc5:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6bffc9:	lea    ecx,[ebx+eax*8+0x13c]
  6bffd0:	mov    ebx,DWORD PTR [esp+0x34]
  6bffd4:	mov    eax,DWORD PTR [ecx+0x4]
  6bffd7:	mov    DWORD PTR [esp+0x4],eax
  6bffdb:	mov    DWORD PTR [esp],esi
  6bffde:	call   DWORD PTR [ecx]
  6bffe0:	test   eax,eax
  6bffe2:	je     6c0048
  6bffe4:	mov    DWORD PTR [esp],eax
  6bffe7:	mov    DWORD PTR [esp+0x4],0x0
  6bffef:	call   8df02e  ; CharacterControllerBattleGroundBase::PlaySupportAnimation
  6bfff4:	fstp   TBYTE PTR [esp+0x58]
  6bfff8:	lea    eax,[ebx+0x45664]
  6bfffe:	mov    eax,DWORD PTR [eax]
  6c0000:	mov    DWORD PTR [esp],eax
  6c0003:	call   20bfb2
  6c0008:	mov    esi,eax
  6c000a:	fld    TBYTE PTR [esp+0x58]
  6c000e:	fstp   DWORD PTR [esp+0x4]
  6c0012:	mov    DWORD PTR [esp],esi
  6c0015:	mov    DWORD PTR [esp+0x8],0x0
  6c001d:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  6c0022:	mov    eax,DWORD PTR [ebp+0x8]
  6c0025:	mov    DWORD PTR [eax+0x1c],esi
  6c0028:	mov    ecx,eax
  6c002a:	mov    al,0x1
  6c002c:	cmp    BYTE PTR [ecx+0x20],0x0
  6c0030:	jne    6c0039
  6c0032:	mov    DWORD PTR [ecx+0x24],0x1
  6c0039:	movzx  eax,al
  6c003c:	lea    esp,[ebp-0xc]
  6c003f:	pop    esi
  6c0040:	pop    edi
  6c0041:	pop    ebx
  6c0042:	pop    ebp
  6c0043:	ret
  6c0044:	mov    ebx,DWORD PTR [esp+0x34]
  6c0048:	call   1fbc48
  6c004d:	call   6b106a