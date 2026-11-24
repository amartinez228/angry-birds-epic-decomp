
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fc61e:
 13fc61e:	push   ebp
 13fc61f:	mov    ebp,esp
 13fc621:	push   ebx
 13fc622:	push   edi
 13fc623:	push   esi
 13fc624:	and    esp,0xfffffff0
 13fc627:	sub    esp,0x60
 13fc62a:	call   13fc62f
 13fc62f:	pop    ebx
 13fc630:	add    ebx,0xb15915
 13fc636:	mov    al,BYTE PTR [ebx+0x654e5]
 13fc63c:	test   al,al
 13fc63e:	jne    13fc657
 13fc640:	lea    eax,[ebx-0x65e61c]
 13fc646:	mov    eax,DWORD PTR [eax]
 13fc648:	mov    DWORD PTR [esp],eax
 13fc64b:	call   1ca6e8
 13fc650:	mov    BYTE PTR [ebx+0x654e5],0x1
 13fc657:	mov    DWORD PTR [esp+0x58],0x0
 13fc65f:	lea    eax,[ebx+0x45cd8]
 13fc665:	mov    eax,DWORD PTR [eax]
 13fc667:	mov    DWORD PTR [esp],eax
 13fc66a:	call   20bfb2
 13fc66f:	mov    esi,eax
 13fc671:	mov    DWORD PTR [esp],esi
 13fc674:	mov    DWORD PTR [esp+0x4],0x0
 13fc67c:	call   124632e  ; System.Object::.ctor
 13fc681:	test   esi,esi
 13fc683:	je     13fcd90
 13fc689:	mov    eax,DWORD PTR [ebp+0x18]
 13fc68c:	mov    edx,DWORD PTR [ebp+0x10]
 13fc68f:	mov    ecx,DWORD PTR [ebp+0x8]
 13fc692:	mov    DWORD PTR [esi+0x8],eax
 13fc695:	mov    DWORD PTR [esi+0xc],ecx
 13fc698:	test   edx,edx
 13fc69a:	je     13fcd90
 13fc6a0:	mov    eax,DWORD PTR [edx+0x58]
 13fc6a3:	mov    DWORD PTR [esp+0x3c],eax
 13fc6a7:	lea    eax,[ebx+0x4a654]
 13fc6ad:	mov    eax,DWORD PTR [eax]
 13fc6af:	mov    DWORD PTR [esp+0x38],eax
 13fc6b3:	lea    eax,[ebx+0x4588c]
 13fc6b9:	mov    eax,DWORD PTR [eax]
 13fc6bb:	mov    DWORD PTR [esp],eax
 13fc6be:	call   20bfb2
 13fc6c3:	mov    edi,eax
 13fc6c5:	mov    eax,DWORD PTR [esp+0x38]
 13fc6c9:	mov    DWORD PTR [esp+0x50],eax
 13fc6cd:	lea    eax,[ebx+0x4a054]
 13fc6d3:	mov    eax,DWORD PTR [eax]
 13fc6d5:	mov    DWORD PTR [esp+0xc],eax
 13fc6d9:	mov    eax,DWORD PTR [esp+0x50]
 13fc6dd:	mov    DWORD PTR [esp+0x8],eax
 13fc6e1:	mov    DWORD PTR [esp+0x4],esi
 13fc6e5:	mov    DWORD PTR [esp],edi
 13fc6e8:	call   159e10c
 13fc6ed:	lea    eax,[ebx+0x4a058]
 13fc6f3:	mov    eax,DWORD PTR [eax]
 13fc6f5:	mov    DWORD PTR [esp+0xc],eax
 13fc6f9:	mov    DWORD PTR [esp+0x8],edi
 13fc6fd:	mov    eax,DWORD PTR [esp+0x3c]
 13fc701:	mov    DWORD PTR [esp+0x4],eax
 13fc705:	mov    DWORD PTR [esp],0x0
 13fc70c:	call   9c0237
 13fc711:	lea    ecx,[ebx+0x4a080]
 13fc717:	mov    ecx,DWORD PTR [ecx]
 13fc719:	mov    DWORD PTR [esp+0x8],ecx
 13fc71d:	mov    DWORD PTR [esp+0x4],eax
 13fc721:	mov    DWORD PTR [esp],0x0
 13fc728:	call   9c7738
 13fc72d:	mov    esi,eax
 13fc72f:	test   esi,esi
 13fc731:	je     13fcd90
 13fc737:	lea    edi,[ebx+0x4a048]
 13fc73d:	mov    eax,DWORD PTR [edi]
 13fc73f:	mov    DWORD PTR [esp+0x4],eax
 13fc743:	mov    DWORD PTR [esp],esi
 13fc746:	call   4c46f7
 13fc74b:	test   eax,eax
 13fc74d:	jle    13fcd88
 13fc753:	mov    eax,DWORD PTR [edi]
 13fc755:	mov    DWORD PTR [esp+0x4],eax
 13fc759:	mov    DWORD PTR [esp],esi
 13fc75c:	call   4c46f7
 13fc761:	mov    DWORD PTR [esp+0x8],eax
 13fc765:	mov    DWORD PTR [esp+0xc],0x0
 13fc76d:	mov    DWORD PTR [esp+0x4],0x0
 13fc775:	mov    DWORD PTR [esp],0x0
 13fc77c:	call   167eb06  ; UnityEngine.Random::Range
 13fc781:	lea    ecx,[ebx+0x4a0ac]
 13fc787:	mov    DWORD PTR [esp+0x3c],ecx
 13fc78b:	mov    ecx,DWORD PTR [ecx]
 13fc78d:	mov    DWORD PTR [esp+0x8],ecx
 13fc791:	mov    DWORD PTR [esp+0x4],eax
 13fc795:	mov    DWORD PTR [esp],esi
 13fc798:	call   4c4707
 13fc79d:	mov    ecx,DWORD PTR [ebp+0x8]
 13fc7a0:	mov    DWORD PTR [ecx+0x9c],eax
 13fc7a6:	mov    eax,DWORD PTR [edi]
 13fc7a8:	mov    DWORD PTR [esp+0x4],eax
 13fc7ac:	mov    DWORD PTR [esp],esi
 13fc7af:	call   4c46f7
 13fc7b4:	mov    DWORD PTR [esp+0x8],eax
 13fc7b8:	mov    DWORD PTR [esp+0xc],0x0
 13fc7c0:	mov    DWORD PTR [esp+0x4],0x0
 13fc7c8:	mov    DWORD PTR [esp],0x0
 13fc7cf:	call   167eb06  ; UnityEngine.Random::Range
 13fc7d4:	mov    ecx,DWORD PTR [esp+0x3c]
 13fc7d8:	mov    ecx,DWORD PTR [ecx]
 13fc7da:	mov    DWORD PTR [esp+0x8],ecx
 13fc7de:	mov    DWORD PTR [esp+0x4],eax
 13fc7e2:	mov    DWORD PTR [esp],esi
 13fc7e5:	mov    esi,DWORD PTR [ebp+0x8]
 13fc7e8:	call   4c4707
 13fc7ed:	mov    DWORD PTR [esi+0xa0],eax
 13fc7f3:	movss  xmm0,DWORD PTR [esi+0x8c]
 13fc7fb:	movss  DWORD PTR [esp+0x3c],xmm0
 13fc801:	mov    DWORD PTR [esp+0x4],0x0
 13fc809:	mov    DWORD PTR [esp],0x0
 13fc810:	call   167eb9e  ; UnityEngine.Random::get_value
 13fc815:	fstp   DWORD PTR [esp+0x44]
 13fc819:	movss  xmm0,DWORD PTR [esp+0x3c]
 13fc81f:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 13fc827:	ucomiss xmm0,DWORD PTR [esp+0x44]
 13fc82c:	jbe    13fcc45
 13fc832:	lea    eax,[ebx+0x56c78]
 13fc838:	mov    eax,DWORD PTR [eax]
 13fc83a:	mov    DWORD PTR [esp+0x4],eax
 13fc83e:	mov    DWORD PTR [esp+0x8],0x0
 13fc846:	mov    DWORD PTR [esp],0x0
 13fc84d:	call   1068c69  ; DebugLog::Log
 13fc852:	mov    esi,DWORD PTR [esi+0x9c]
 13fc858:	test   esi,esi
 13fc85a:	je     13fcd90
 13fc860:	lea    eax,[ebx+0x45874]
 13fc866:	mov    eax,DWORD PTR [eax]
 13fc868:	mov    ecx,DWORD PTR [esi]
 13fc86a:	mov    DWORD PTR [esp+0x3c],ecx
 13fc86e:	movzx  edx,WORD PTR [ecx+0xaa]
 13fc875:	test   edx,edx
 13fc877:	je     13fc88c
 13fc879:	mov    ecx,DWORD PTR [esp+0x3c]
 13fc87d:	mov    edi,DWORD PTR [ecx+0x4c]
 13fc880:	xor    ecx,ecx
 13fc882:	cmp    DWORD PTR [edi+ecx*8],eax
 13fc885:	je     13fc8a4
 13fc887:	inc    ecx
 13fc888:	cmp    ecx,edx
 13fc88a:	jb     13fc882
 13fc88c:	mov    DWORD PTR [esp+0x4],eax
 13fc890:	mov    DWORD PTR [esp],esi
 13fc893:	mov    DWORD PTR [esp+0x8],0x11
 13fc89b:	call   1c1964
 13fc8a0:	mov    ecx,eax
 13fc8a2:	jmp    13fc8b3
 13fc8a4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 13fc8a8:	mov    ecx,DWORD PTR [esp+0x3c]
 13fc8ac:	lea    ecx,[ecx+eax*8+0x13c]
 13fc8b3:	mov    eax,DWORD PTR [ecx+0x4]
 13fc8b6:	mov    DWORD PTR [esp+0x4],eax
 13fc8ba:	mov    DWORD PTR [esp],esi
 13fc8bd:	call   DWORD PTR [ecx]
 13fc8bf:	test   eax,eax
 13fc8c1:	je     13fcd90
 13fc8c7:	mov    DWORD PTR [esp],eax
 13fc8ca:	mov    DWORD PTR [esp+0x4],0x0
 13fc8d2:	call   8d8313  ; CharacterControllerBattleGroundBase::PlayStunnedAnimation
 13fc8d7:	lea    eax,[ebx+0x45290]
 13fc8dd:	mov    eax,DWORD PTR [eax]
 13fc8df:	mov    DWORD PTR [esp],eax
 13fc8e2:	call   20bfb2
 13fc8e7:	mov    esi,eax
 13fc8e9:	lea    eax,[ebx+0x49708]
 13fc8ef:	mov    eax,DWORD PTR [eax]
 13fc8f1:	mov    DWORD PTR [esp+0x4],eax
 13fc8f5:	mov    DWORD PTR [esp],esi
 13fc8f8:	call   4d21ef
 13fc8fd:	test   esi,esi
 13fc8ff:	je     13fcd90
 13fc905:	lea    eax,[ebx+0x4970c]
 13fc90b:	mov    eax,DWORD PTR [eax]
 13fc90d:	mov    DWORD PTR [esp+0x8],eax
 13fc911:	mov    DWORD PTR [esp],esi
 13fc914:	mov    DWORD PTR [esp+0x38],esi
 13fc918:	mov    DWORD PTR [esp+0x4],0x3f800000
 13fc920:	call   4d30f2
 13fc925:	mov    esi,DWORD PTR [ebp+0x8]
 13fc928:	mov    eax,DWORD PTR [esi+0x9c]
 13fc92e:	mov    DWORD PTR [esp+0x34],eax
 13fc932:	lea    eax,[ebx+0x4589c]
 13fc938:	mov    eax,DWORD PTR [eax]
 13fc93a:	mov    DWORD PTR [esp],eax
 13fc93d:	call   20bfb2
 13fc942:	mov    DWORD PTR [esp+0x3c],eax
 13fc946:	lea    ecx,[ebx+0x4a138]
 13fc94c:	mov    ecx,DWORD PTR [ecx]
 13fc94e:	mov    DWORD PTR [esp+0x4],ecx
 13fc952:	mov    DWORD PTR [esp],eax
 13fc955:	call   4c15d9
 13fc95a:	lea    eax,[ebx+0x454a8]
 13fc960:	mov    eax,DWORD PTR [eax]
 13fc962:	mov    DWORD PTR [esp],eax
 13fc965:	call   20bfb2
 13fc96a:	mov    edi,eax
 13fc96c:	mov    DWORD PTR [esp],edi
 13fc96f:	mov    DWORD PTR [esp+0x4],0x0
 13fc977:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
 13fc97c:	test   edi,edi
 13fc97e:	je     13fcd90
 13fc984:	mov    DWORD PTR [esp],edi
 13fc987:	mov    DWORD PTR [esp+0x8],0x0
 13fc98f:	mov    DWORD PTR [esp+0x4],0x5
 13fc997:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
 13fc99c:	mov    DWORD PTR [esp],edi
 13fc99f:	mov    DWORD PTR [esp+0x8],0x0
 13fc9a7:	mov    DWORD PTR [esp+0x4],0x12
 13fc9af:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
 13fc9b4:	mov    DWORD PTR [esp],edi
 13fc9b7:	mov    DWORD PTR [esp+0x8],0x0
 13fc9bf:	mov    DWORD PTR [esp+0x4],0x2
 13fc9c7:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
 13fc9cc:	mov    eax,DWORD PTR [esp+0x38]
 13fc9d0:	mov    DWORD PTR [esp+0x4],eax
 13fc9d4:	mov    DWORD PTR [esp],edi
 13fc9d7:	mov    DWORD PTR [esp+0x8],0x0
 13fc9df:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
 13fc9e4:	cvttss2si eax,DWORD PTR [esi+0x90]
 13fc9ec:	mov    DWORD PTR [esp+0x4],eax
 13fc9f0:	mov    DWORD PTR [esp],edi
 13fc9f3:	mov    DWORD PTR [esp+0x8],0x0
 13fc9fb:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
 13fca00:	cmp    BYTE PTR [esi+0x94],0x0
 13fca07:	je     13fca4b
 13fca09:	mov    DWORD PTR [esp],esi
 13fca0c:	mov    DWORD PTR [esp+0x4],0x0
 13fca14:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fca19:	test   eax,eax
 13fca1b:	je     13fcd90
 13fca21:	mov    DWORD PTR [esp],eax
 13fca24:	mov    DWORD PTR [esp+0x4],0x0
 13fca2c:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
 13fca31:	test   eax,eax
 13fca33:	je     13fcd90
 13fca39:	mov    DWORD PTR [esp],eax
 13fca3c:	mov    DWORD PTR [esp+0x4],0x0
 13fca44:	call   17032ad  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAssetId
 13fca49:	jmp    13fca53
 13fca4b:	lea    eax,[ebx+0x56c2c]
 13fca51:	mov    eax,DWORD PTR [eax]
 13fca53:	mov    DWORD PTR [esp+0x4],eax
 13fca57:	mov    DWORD PTR [esp],edi
 13fca5a:	mov    DWORD PTR [esp+0x8],0x0
 13fca62:	call   179afdb  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAssetId
 13fca67:	cmp    BYTE PTR [esi+0x94],0x0
 13fca6e:	je     13fcab2
 13fca70:	mov    DWORD PTR [esp],esi
 13fca73:	mov    DWORD PTR [esp+0x4],0x0
 13fca7b:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fca80:	test   eax,eax
 13fca82:	je     13fcd90
 13fca88:	mov    DWORD PTR [esp],eax
 13fca8b:	mov    DWORD PTR [esp+0x4],0x0
 13fca93:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
 13fca98:	test   eax,eax
 13fca9a:	je     13fcd90
 13fcaa0:	mov    DWORD PTR [esp],eax
 13fcaa3:	mov    DWORD PTR [esp+0x4],0x0
 13fcaab:	call   170328a  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAtlasId
 13fcab0:	jmp    13fcaba
 13fcab2:	lea    eax,[ebx+0x56c7c]
 13fcab8:	mov    eax,DWORD PTR [eax]
 13fcaba:	mov    DWORD PTR [esp+0x4],eax
 13fcabe:	mov    DWORD PTR [esp],edi
 13fcac1:	mov    DWORD PTR [esp+0x8],0x0
 13fcac9:	call   179afb8  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAtlasId
 13fcace:	mov    ecx,DWORD PTR [esp+0x3c]
 13fcad2:	test   ecx,ecx
 13fcad4:	je     13fcd90
 13fcada:	lea    eax,[ebx+0x4a144]
 13fcae0:	mov    eax,DWORD PTR [eax]
 13fcae2:	mov    DWORD PTR [esp+0x8],eax
 13fcae6:	mov    DWORD PTR [esp+0x4],edi
 13fcaea:	mov    DWORD PTR [esp],ecx
 13fcaed:	call   4c23b4
 13fcaf2:	movss  xmm0,DWORD PTR [esi+0x90]
 13fcafa:	movss  DWORD PTR [esp+0x38],xmm0
 13fcb00:	mov    eax,DWORD PTR [esi]
 13fcb02:	mov    ecx,DWORD PTR [eax+0x110]
 13fcb08:	mov    DWORD PTR [esp+0x4],ecx
 13fcb0c:	mov    DWORD PTR [esp],esi
 13fcb0f:	call   DWORD PTR [eax+0x10c]
 13fcb15:	mov    DWORD PTR [esp+0x30],eax
 13fcb19:	mov    DWORD PTR [esp],esi
 13fcb1c:	mov    DWORD PTR [esp+0x4],0x0
 13fcb24:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fcb29:	test   eax,eax
 13fcb2b:	je     13fcd90
 13fcb31:	mov    DWORD PTR [esp],eax
 13fcb34:	mov    DWORD PTR [esp+0x4],0x0
 13fcb3c:	call   6b291c  ; ABH.GameDatas.SkillGameData::get_SkillNameId
 13fcb41:	mov    edi,eax
 13fcb43:	lea    eax,[ebx+0x458a8]
 13fcb49:	mov    eax,DWORD PTR [eax]
 13fcb4b:	mov    DWORD PTR [esp],eax
 13fcb4e:	call   20bfb2
 13fcb53:	mov    esi,eax
 13fcb55:	cvttss2si eax,DWORD PTR [esp+0x38]
 13fcb5b:	lea    ecx,[ebx+0x56c2c]
 13fcb61:	mov    ecx,DWORD PTR [ecx]
 13fcb63:	mov    DWORD PTR [esp+0x24],edi
 13fcb67:	mov    edx,DWORD PTR [esp+0x30]
 13fcb6b:	mov    DWORD PTR [esp+0x20],edx
 13fcb6f:	mov    DWORD PTR [esp+0x18],ecx
 13fcb73:	mov    ecx,DWORD PTR [ebp+0x10]
 13fcb76:	mov    DWORD PTR [esp+0x14],ecx
 13fcb7a:	mov    DWORD PTR [esp+0x10],eax
 13fcb7e:	mov    eax,DWORD PTR [esp+0x3c]
 13fcb82:	mov    DWORD PTR [esp+0xc],eax
 13fcb86:	mov    eax,DWORD PTR [esp+0x34]
 13fcb8a:	mov    DWORD PTR [esp+0x8],eax
 13fcb8e:	mov    eax,DWORD PTR [ebp+0x14]
 13fcb91:	mov    DWORD PTR [esp+0x4],eax
 13fcb95:	mov    DWORD PTR [esp],esi
 13fcb98:	mov    DWORD PTR [esp+0x28],0x0
 13fcba0:	mov    DWORD PTR [esp+0x1c],0x2
 13fcba8:	call   ebd4cc  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
 13fcbad:	test   esi,esi
 13fcbaf:	je     13fcd90
 13fcbb5:	mov    DWORD PTR [esp],esi
 13fcbb8:	mov    DWORD PTR [esp+0x8],0x0
 13fcbc0:	mov    DWORD PTR [esp+0x4],0x1
 13fcbc8:	call   ebf8b0  ; ABH.GameDatas.Battle.BattleEffectGameData::AddEffect
 13fcbcd:	lea    edi,[ebx+0x45ccc]
 13fcbd3:	mov    eax,DWORD PTR [edi]
 13fcbd5:	mov    eax,DWORD PTR [eax+0x50]
 13fcbd8:	mov    eax,DWORD PTR [eax+0x8]
 13fcbdb:	test   eax,eax
 13fcbdd:	jne    13fcc3f
 13fcbdf:	lea    eax,[ebx+0x4a658]
 13fcbe5:	mov    eax,DWORD PTR [eax]
 13fcbe7:	mov    DWORD PTR [esp+0x3c],eax
 13fcbeb:	lea    eax,[ebx+0x458a0]
 13fcbf1:	mov    eax,DWORD PTR [eax]
 13fcbf3:	mov    DWORD PTR [esp],eax
 13fcbf6:	call   20bfb2
 13fcbfb:	mov    DWORD PTR [esp+0x38],eax
 13fcbff:	mov    ecx,DWORD PTR [esp+0x3c]
 13fcc03:	mov    DWORD PTR [esp+0x48],ecx
 13fcc07:	lea    ecx,[ebx+0x4a390]
 13fcc0d:	mov    ecx,DWORD PTR [ecx]
 13fcc0f:	mov    DWORD PTR [esp+0xc],ecx
 13fcc13:	mov    ecx,DWORD PTR [esp+0x48]
 13fcc17:	mov    DWORD PTR [esp+0x8],ecx
 13fcc1b:	mov    DWORD PTR [esp],eax
 13fcc1e:	mov    DWORD PTR [esp+0x4],0x0
 13fcc26:	call   176d657
 13fcc2b:	mov    eax,DWORD PTR [edi]
 13fcc2d:	mov    eax,DWORD PTR [eax+0x50]
 13fcc30:	mov    ecx,DWORD PTR [esp+0x38]
 13fcc34:	mov    DWORD PTR [eax+0x8],ecx
 13fcc37:	mov    eax,DWORD PTR [edi]
 13fcc39:	mov    eax,DWORD PTR [eax+0x50]
 13fcc3c:	mov    eax,DWORD PTR [eax+0x8]
 13fcc3f:	mov    DWORD PTR [esi+0x14],eax
 13fcc42:	mov    esi,DWORD PTR [ebp+0x8]
 13fcc45:	mov    DWORD PTR [esp+0x4],0x0
 13fcc4d:	mov    DWORD PTR [esp],0x0
 13fcc54:	call   167eb9e  ; UnityEngine.Random::get_value
 13fcc59:	fstp   DWORD PTR [esp+0x40]
 13fcc5d:	movss  xmm0,DWORD PTR [esi+0x88]
 13fcc65:	mov    edi,esi
 13fcc67:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 13fcc6f:	ucomiss xmm0,DWORD PTR [esp+0x40]
 13fcc74:	jb     13fcd88
 13fcc7a:	mov    DWORD PTR [esp+0x4],0x0
 13fcc82:	mov    DWORD PTR [esp],0x0
 13fcc89:	call   109314e  ; DIContainerLogic::GetBattleService
 13fcc8e:	test   eax,eax
 13fcc90:	je     13fcd90
 13fcc96:	mov    ecx,DWORD PTR [edi+0xa0]
 13fcc9c:	mov    DWORD PTR [esp+0x4],ecx
 13fcca0:	mov    DWORD PTR [esp],eax
 13fcca3:	mov    DWORD PTR [esp+0x10],0x0
 13fccab:	mov    DWORD PTR [esp+0xc],0x0
 13fccb3:	mov    DWORD PTR [esp+0x8],0x1
 13fccbb:	call   516f72  ; ABH.Services.Logic.BattleService::RemoveBattleEffects
 13fccc0:	mov    DWORD PTR [esp+0x58],0x0
 13fccc8:	mov    DWORD PTR [esp+0x4],0x0
 13fccd0:	mov    DWORD PTR [esp],0x0
 13fccd7:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
 13fccdc:	test   eax,eax
 13fccde:	je     13fcd90
 13fcce4:	lea    ecx,[ebx+0x56d1c]
 13fccea:	mov    ecx,DWORD PTR [ecx]
 13fccec:	lea    edx,[esp+0x58]
 13fccf0:	mov    DWORD PTR [esp+0x8],edx
 13fccf4:	mov    DWORD PTR [esp+0x4],ecx
 13fccf8:	mov    DWORD PTR [esp],eax
 13fccfb:	mov    DWORD PTR [esp+0xc],0x0
 13fcd03:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
 13fcd08:	test   al,al
 13fcd0a:	je     13fcd88
 13fcd0c:	mov    eax,DWORD PTR [esp+0x58]
 13fcd10:	mov    DWORD PTR [esp+0x3c],eax
 13fcd14:	lea    eax,[ebx+0x45890]
 13fcd1a:	mov    eax,DWORD PTR [eax]
 13fcd1c:	mov    DWORD PTR [esp],eax
 13fcd1f:	call   20bfb2
 13fcd24:	mov    esi,eax
 13fcd26:	lea    eax,[ebx+0x4a074]
 13fcd2c:	mov    eax,DWORD PTR [eax]
 13fcd2e:	mov    DWORD PTR [esp+0x4],eax
 13fcd32:	mov    DWORD PTR [esp],esi
 13fcd35:	call   4c15d9
 13fcd3a:	test   esi,esi
 13fcd3c:	je     13fcd90
 13fcd3e:	mov    eax,DWORD PTR [edi+0xa0]
 13fcd44:	lea    ecx,[ebx+0x4a078]
 13fcd4a:	mov    ecx,DWORD PTR [ecx]
 13fcd4c:	mov    DWORD PTR [esp+0x8],ecx
 13fcd50:	mov    DWORD PTR [esp+0x4],eax
 13fcd54:	mov    DWORD PTR [esp],esi
 13fcd57:	call   4c23b4
 13fcd5c:	mov    DWORD PTR [esp+0xc],esi
 13fcd60:	mov    eax,DWORD PTR [esp+0x3c]
 13fcd64:	mov    DWORD PTR [esp+0x8],eax
 13fcd68:	mov    DWORD PTR [esp],edi
 13fcd6b:	mov    DWORD PTR [esp+0x14],0x0
 13fcd73:	mov    DWORD PTR [esp+0x10],0x0
 13fcd7b:	mov    DWORD PTR [esp+0x4],0x3
 13fcd83:	call   ec9974  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
 13fcd88:	lea    esp,[ebp-0xc]
 13fcd8b:	pop    esi
 13fcd8c:	pop    edi
 13fcd8d:	pop    ebx
 13fcd8e:	pop    ebp
 13fcd8f:	ret
 13fcd90:	call   1fbc48
 13fcd95:	call   13f24e0