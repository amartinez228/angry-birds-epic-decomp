
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050e94f:
  50e94f:	push   ebp
  50e950:	mov    ebp,esp
  50e952:	push   ebx
  50e953:	push   edi
  50e954:	push   esi
  50e955:	and    esp,0xfffffff0
  50e958:	sub    esp,0x30
  50e95b:	call   50e960
  50e960:	pop    eax
  50e961:	add    eax,0x1a035e4
  50e967:	mov    DWORD PTR [esp+0x28],eax
  50e96b:	mov    edi,DWORD PTR [ebp+0x10]
  50e96e:	mov    al,BYTE PTR [eax+0x5d513]
  50e974:	test   al,al
  50e976:	jne    50e993
  50e978:	mov    ebx,DWORD PTR [esp+0x28]
  50e97c:	lea    eax,[ebx-0x66f450]
  50e982:	mov    eax,DWORD PTR [eax]
  50e984:	mov    DWORD PTR [esp],eax
  50e987:	call   1ca6e8
  50e98c:	mov    BYTE PTR [ebx+0x5d513],0x1
  50e993:	test   edi,edi
  50e995:	je     50ea6e
  50e99b:	mov    eax,DWORD PTR [esp+0x28]
  50e99f:	lea    eax,[eax+0x458f4]
  50e9a5:	mov    edx,DWORD PTR [eax]
  50e9a7:	mov    eax,DWORD PTR [edi]
  50e9a9:	movzx  ecx,BYTE PTR [eax+0xac]
  50e9b0:	movzx  esi,BYTE PTR [edx+0xac]
  50e9b7:	cmp    ecx,esi
  50e9b9:	jb     50e9cc
  50e9bb:	mov    ebx,edi
  50e9bd:	mov    edi,DWORD PTR [eax+0x58]
  50e9c0:	cmp    DWORD PTR [edi+esi*4-0x4],edx
  50e9c4:	mov    edi,ebx
  50e9c6:	je     50ea99
  50e9cc:	mov    ebx,DWORD PTR [esp+0x28]
  50e9d0:	lea    edx,[ebx+0x45878]
  50e9d6:	mov    edx,DWORD PTR [edx]
  50e9d8:	movzx  esi,BYTE PTR [edx+0xac]
  50e9df:	movzx  ecx,cl
  50e9e2:	cmp    ecx,esi
  50e9e4:	jb     50eef4
  50e9ea:	mov    eax,DWORD PTR [eax+0x58]
  50e9ed:	cmp    DWORD PTR [eax+esi*4-0x4],edx
  50e9f1:	jne    50eef4
  50e9f7:	lea    eax,[ebx+0x4b2f0]
  50e9fd:	mov    eax,DWORD PTR [eax]
  50e9ff:	mov    DWORD PTR [esp+0x4],eax
  50ea03:	mov    DWORD PTR [esp],edi
  50ea06:	call   160657d  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::get_IsPvPBird | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::get_IsPvPBird | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::get_IsPvPBird | +2 other aliases
  50ea0b:	test   al,al
  50ea0d:	je     50eef4
  50ea13:	mov    DWORD PTR [esp+0x4],edi
  50ea17:	call   50d712  ; ABH.Services.Logic.BattleService::ChainInterruptCondtion
  50ea1c:	test   al,al
  50ea1e:	je     50eef4
  50ea24:	lea    eax,[ebx+0x45874]
  50ea2a:	mov    DWORD PTR [esp+0x24],eax
  50ea2e:	mov    eax,DWORD PTR [eax]
  50ea30:	mov    ecx,DWORD PTR [edi]
  50ea32:	movzx  edx,WORD PTR [ecx+0xaa]
  50ea39:	test   edx,edx
  50ea3b:	je     50ea50
  50ea3d:	mov    edi,DWORD PTR [ecx+0x4c]
  50ea40:	xor    esi,esi
  50ea42:	cmp    DWORD PTR [edi+esi*8],eax
  50ea45:	je     50ec38
  50ea4b:	inc    esi
  50ea4c:	cmp    esi,edx
  50ea4e:	jb     50ea42
  50ea50:	mov    DWORD PTR [esp+0x4],eax
  50ea54:	mov    esi,DWORD PTR [ebp+0x10]
  50ea57:	mov    DWORD PTR [esp],esi
  50ea5a:	mov    DWORD PTR [esp+0x8],0x0
  50ea62:	call   1c1964
  50ea67:	mov    ecx,eax
  50ea69:	jmp    50ec46
  50ea6e:	mov    ebx,DWORD PTR [esp+0x28]
  50ea72:	lea    eax,[ebx+0x57594]  ; literal "No Hand Selected for next Skill!"
  50ea78:	mov    eax,DWORD PTR [eax]
  50ea7a:	mov    DWORD PTR [esp+0x4],eax
  50ea7e:	mov    DWORD PTR [esp+0x8],0x0
  50ea86:	mov    DWORD PTR [esp],0x0
  50ea8d:	call   108148a  ; DebugLog::Error
  50ea92:	xor    eax,eax
  50ea94:	jmp    50f198
  50ea99:	mov    ecx,DWORD PTR [eax+0x630]
  50ea9f:	mov    DWORD PTR [esp+0x4],ecx
  50eaa3:	mov    DWORD PTR [esp],edi
  50eaa6:	mov    ebx,DWORD PTR [esp+0x28]
  50eaaa:	call   DWORD PTR [eax+0x62c]
  50eab0:	test   al,al
  50eab2:	je     50eb79
  50eab8:	mov    eax,DWORD PTR [esp+0x28]
  50eabc:	lea    eax,[eax+0x45874]
  50eac2:	mov    DWORD PTR [esp+0x24],eax
  50eac6:	mov    eax,DWORD PTR [eax]
  50eac8:	mov    ecx,DWORD PTR [edi]
  50eaca:	movzx  edx,WORD PTR [ecx+0xaa]
  50ead1:	test   edx,edx
  50ead3:	je     50eae4
  50ead5:	mov    edi,DWORD PTR [ecx+0x4c]
  50ead8:	xor    esi,esi
  50eada:	cmp    DWORD PTR [edi+esi*8],eax
  50eadd:	je     50eb03
  50eadf:	inc    esi
  50eae0:	cmp    esi,edx
  50eae2:	jb     50eada
  50eae4:	mov    DWORD PTR [esp+0x4],eax
  50eae8:	mov    edi,DWORD PTR [ebp+0x10]
  50eaeb:	mov    DWORD PTR [esp],edi
  50eaee:	mov    DWORD PTR [esp+0x8],0x3a
  50eaf6:	mov    ebx,DWORD PTR [esp+0x28]
  50eafa:	call   1c1964
  50eaff:	mov    ecx,eax
  50eb01:	jmp    50eb15
  50eb03:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50eb07:	lea    ecx,[ecx+eax*8+0x284]
  50eb0e:	mov    edi,DWORD PTR [ebp+0x10]
  50eb11:	mov    ebx,DWORD PTR [esp+0x28]
  50eb15:	mov    DWORD PTR [esp+0x28],ebx
  50eb19:	mov    eax,DWORD PTR [ecx+0x4]
  50eb1c:	mov    DWORD PTR [esp+0x8],eax
  50eb20:	mov    DWORD PTR [esp],edi
  50eb23:	mov    DWORD PTR [esp+0x4],0x2
  50eb2b:	call   DWORD PTR [ecx]
  50eb2d:	test   eax,eax
  50eb2f:	je     50eb79
  50eb31:	mov    eax,DWORD PTR [esp+0x24]
  50eb35:	mov    eax,DWORD PTR [eax]
  50eb37:	mov    ecx,DWORD PTR [edi]
  50eb39:	movzx  edx,WORD PTR [ecx+0xaa]
  50eb40:	test   edx,edx
  50eb42:	je     50eb57
  50eb44:	mov    esi,DWORD PTR [ecx+0x4c]
  50eb47:	xor    edi,edi
  50eb49:	cmp    DWORD PTR [esi+edi*8],eax
  50eb4c:	je     50ec0f
  50eb52:	inc    edi
  50eb53:	cmp    edi,edx
  50eb55:	jb     50eb49
  50eb57:	mov    DWORD PTR [esp+0x4],eax
  50eb5b:	mov    esi,DWORD PTR [ebp+0x10]
  50eb5e:	mov    DWORD PTR [esp],esi
  50eb61:	mov    DWORD PTR [esp+0x8],0x3a
  50eb69:	mov    ebx,DWORD PTR [esp+0x28]
  50eb6d:	call   1c1964
  50eb72:	mov    ecx,eax
  50eb74:	jmp    50ec21
  50eb79:	mov    eax,DWORD PTR [ebp+0xc]
  50eb7c:	test   eax,eax
  50eb7e:	je     50f1b3
  50eb84:	mov    DWORD PTR [esp],eax
  50eb87:	mov    DWORD PTR [esp+0x8],0x0
  50eb8f:	mov    DWORD PTR [esp+0x4],0x0
  50eb97:	mov    ebx,DWORD PTR [esp+0x28]
  50eb9b:	call   ec3148  ; ABH.GameDatas.Battle.BattleGameData::IsRageFull
  50eba0:	test   al,al
  50eba2:	je     50ed91
  50eba8:	mov    eax,DWORD PTR [edi]
  50ebaa:	mov    ecx,DWORD PTR [eax+0x630]
  50ebb0:	mov    DWORD PTR [esp+0x4],ecx
  50ebb4:	mov    DWORD PTR [esp],edi
  50ebb7:	call   DWORD PTR [eax+0x62c]
  50ebbd:	test   al,al
  50ebbf:	je     50ed91
  50ebc5:	lea    eax,[ebx+0x45874]
  50ebcb:	mov    DWORD PTR [esp+0x24],eax
  50ebcf:	mov    eax,DWORD PTR [eax]
  50ebd1:	mov    ecx,DWORD PTR [edi]
  50ebd3:	movzx  edx,WORD PTR [ecx+0xaa]
  50ebda:	test   edx,edx
  50ebdc:	je     50ebf1
  50ebde:	mov    edi,DWORD PTR [ecx+0x4c]
  50ebe1:	xor    esi,esi
  50ebe3:	cmp    DWORD PTR [edi+esi*8],eax
  50ebe6:	je     50eca8
  50ebec:	inc    esi
  50ebed:	cmp    esi,edx
  50ebef:	jb     50ebe3
  50ebf1:	mov    DWORD PTR [esp+0x4],eax
  50ebf5:	mov    edi,DWORD PTR [ebp+0x10]
  50ebf8:	mov    DWORD PTR [esp],edi
  50ebfb:	mov    DWORD PTR [esp+0x8],0x3a
  50ec03:	call   1c1964
  50ec08:	mov    ecx,eax
  50ec0a:	jmp    50ecb6
  50ec0f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50ec13:	lea    ecx,[ecx+eax*8+0x284]
  50ec1a:	mov    esi,DWORD PTR [ebp+0x10]
  50ec1d:	mov    ebx,DWORD PTR [esp+0x28]
  50ec21:	mov    eax,DWORD PTR [ecx+0x4]
  50ec24:	mov    DWORD PTR [esp+0x8],eax
  50ec28:	mov    DWORD PTR [esp],esi
  50ec2b:	mov    DWORD PTR [esp+0x4],0x2
  50ec33:	jmp    50eeba
  50ec38:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50ec3c:	lea    ecx,[ecx+eax*8+0xb4]
  50ec43:	mov    esi,DWORD PTR [ebp+0x10]
  50ec46:	mov    eax,DWORD PTR [ecx+0x4]
  50ec49:	mov    DWORD PTR [esp+0x4],eax
  50ec4d:	mov    DWORD PTR [esp],esi
  50ec50:	call   DWORD PTR [ecx]
  50ec52:	mov    ecx,DWORD PTR [esp+0x24]
  50ec56:	mov    ecx,DWORD PTR [ecx]
  50ec58:	mov    edx,DWORD PTR [esi]
  50ec5a:	movzx  esi,WORD PTR [edx+0xaa]
  50ec61:	cmp    eax,0x1
  50ec64:	jne    50ec87
  50ec66:	test   si,si
  50ec69:	je     50ee44
  50ec6f:	mov    eax,DWORD PTR [edx+0x4c]
  50ec72:	xor    edi,edi
  50ec74:	cmp    DWORD PTR [eax+edi*8],ecx
  50ec77:	je     50ee96
  50ec7d:	inc    edi
  50ec7e:	cmp    edi,esi
  50ec80:	jb     50ec74
  50ec82:	jmp    50ee44
  50ec87:	test   si,si
  50ec8a:	je     50ee77
  50ec90:	mov    eax,DWORD PTR [edx+0x4c]
  50ec93:	xor    edi,edi
  50ec95:	cmp    DWORD PTR [eax+edi*8],ecx
  50ec98:	je     50eec1
  50ec9e:	inc    edi
  50ec9f:	cmp    edi,esi
  50eca1:	jb     50ec95
  50eca3:	jmp    50ee77
  50eca8:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50ecac:	lea    ecx,[ecx+eax*8+0x284]
  50ecb3:	mov    edi,DWORD PTR [ebp+0x10]
  50ecb6:	mov    eax,DWORD PTR [ecx+0x4]
  50ecb9:	mov    DWORD PTR [esp+0x8],eax
  50ecbd:	mov    DWORD PTR [esp],edi
  50ecc0:	mov    DWORD PTR [esp+0x4],0x2
  50ecc8:	call   DWORD PTR [ecx]
  50ecca:	test   eax,eax
  50eccc:	je     50ed91
  50ecd2:	mov    eax,DWORD PTR [esp+0x24]
  50ecd6:	mov    eax,DWORD PTR [eax]
  50ecd8:	mov    ecx,DWORD PTR [edi]
  50ecda:	movzx  edx,WORD PTR [ecx+0xaa]
  50ece1:	test   edx,edx
  50ece3:	je     50ecf4
  50ece5:	mov    edi,DWORD PTR [ecx+0x4c]
  50ece8:	xor    esi,esi
  50ecea:	cmp    DWORD PTR [edi+esi*8],eax
  50eced:	je     50ed0f
  50ecef:	inc    esi
  50ecf0:	cmp    esi,edx
  50ecf2:	jb     50ecea
  50ecf4:	mov    DWORD PTR [esp+0x4],eax
  50ecf8:	mov    edi,DWORD PTR [ebp+0x10]
  50ecfb:	mov    DWORD PTR [esp],edi
  50ecfe:	mov    DWORD PTR [esp+0x8],0x11
  50ed06:	call   1c1964
  50ed0b:	mov    ecx,eax
  50ed0d:	jmp    50ed1d
  50ed0f:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50ed13:	lea    ecx,[ecx+eax*8+0x13c]
  50ed1a:	mov    edi,DWORD PTR [ebp+0x10]
  50ed1d:	mov    eax,DWORD PTR [ecx+0x4]
  50ed20:	mov    DWORD PTR [esp+0x4],eax
  50ed24:	mov    DWORD PTR [esp],edi
  50ed27:	mov    esi,ebx
  50ed29:	call   DWORD PTR [ecx]
  50ed2b:	test   eax,eax
  50ed2d:	je     50f1b9
  50ed33:	mov    eax,DWORD PTR [eax+0x14]
  50ed36:	test   eax,eax
  50ed38:	je     50f1b9
  50ed3e:	mov    DWORD PTR [esp],eax
  50ed41:	mov    DWORD PTR [esp+0x4],0x0
  50ed49:	mov    ebx,esi
  50ed4b:	call   9f3ec5  ; BattleMgrBase::get_AutoBattle
  50ed50:	test   al,al
  50ed52:	je     50ed91
  50ed54:	mov    eax,DWORD PTR [esp+0x24]
  50ed58:	mov    eax,DWORD PTR [eax]
  50ed5a:	mov    ecx,DWORD PTR [edi]
  50ed5c:	movzx  edx,WORD PTR [ecx+0xaa]
  50ed63:	test   edx,edx
  50ed65:	je     50ed7a
  50ed67:	mov    esi,DWORD PTR [ecx+0x4c]
  50ed6a:	xor    edi,edi
  50ed6c:	cmp    DWORD PTR [esi+edi*8],eax
  50ed6f:	je     50f1a0
  50ed75:	inc    edi
  50ed76:	cmp    edi,edx
  50ed78:	jb     50ed6c
  50ed7a:	mov    DWORD PTR [esp+0x4],eax
  50ed7e:	mov    esi,DWORD PTR [ebp+0x10]
  50ed81:	mov    DWORD PTR [esp],esi
  50ed84:	mov    DWORD PTR [esp+0x8],0x3a
  50ed8c:	jmp    50eb6d
  50ed91:	mov    eax,DWORD PTR [edi]
  50ed93:	mov    ecx,DWORD PTR [eax+0x630]
  50ed99:	mov    DWORD PTR [esp+0x4],ecx
  50ed9d:	mov    DWORD PTR [esp],edi
  50eda0:	call   DWORD PTR [eax+0x62c]
  50eda6:	test   al,al
  50eda8:	je     50eef4
  50edae:	mov    DWORD PTR [esp+0x4],edi
  50edb2:	call   50d712  ; ABH.Services.Logic.BattleService::ChainInterruptCondtion
  50edb7:	test   al,al
  50edb9:	je     50eef4
  50edbf:	lea    eax,[ebx+0x45874]
  50edc5:	mov    DWORD PTR [esp+0x24],eax
  50edc9:	mov    eax,DWORD PTR [eax]
  50edcb:	mov    ecx,DWORD PTR [edi]
  50edcd:	movzx  edx,WORD PTR [ecx+0xaa]
  50edd4:	test   edx,edx
  50edd6:	je     50ede7
  50edd8:	mov    edi,DWORD PTR [ecx+0x4c]
  50eddb:	xor    esi,esi
  50eddd:	cmp    DWORD PTR [edi+esi*8],eax
  50ede0:	je     50ee02
  50ede2:	inc    esi
  50ede3:	cmp    esi,edx
  50ede5:	jb     50eddd
  50ede7:	mov    DWORD PTR [esp+0x4],eax
  50edeb:	mov    esi,DWORD PTR [ebp+0x10]
  50edee:	mov    DWORD PTR [esp],esi
  50edf1:	mov    DWORD PTR [esp+0x8],0x0
  50edf9:	call   1c1964
  50edfe:	mov    ecx,eax
  50ee00:	jmp    50ee10
  50ee02:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  50ee06:	lea    ecx,[ecx+eax*8+0xb4]
  50ee0d:	mov    esi,DWORD PTR [ebp+0x10]
  50ee10:	mov    eax,DWORD PTR [ecx+0x4]
  50ee13:	mov    DWORD PTR [esp+0x4],eax
  50ee17:	mov    DWORD PTR [esp],esi
  50ee1a:	call   DWORD PTR [ecx]
  50ee1c:	mov    ecx,DWORD PTR [esp+0x24]
  50ee20:	mov    ecx,DWORD PTR [ecx]
  50ee22:	mov    edx,DWORD PTR [esi]
  50ee24:	movzx  esi,WORD PTR [edx+0xaa]
  50ee2b:	cmp    eax,0x1
  50ee2e:	jne    50ee63
  50ee30:	test   si,si
  50ee33:	je     50ee44
  50ee35:	mov    eax,DWORD PTR [edx+0x4c]
  50ee38:	xor    edi,edi
  50ee3a:	cmp    DWORD PTR [eax+edi*8],ecx
  50ee3d:	je     50ee96
  50ee3f:	inc    edi
  50ee40:	cmp    edi,esi
  50ee42:	jb     50ee3a
  50ee44:	mov    DWORD PTR [esp+0x4],ecx
  50ee48:	mov    esi,DWORD PTR [ebp+0x10]
  50ee4b:	mov    DWORD PTR [esp],esi
  50ee4e:	mov    DWORD PTR [esp+0x8],0x3a
  50ee56:	mov    ebx,DWORD PTR [esp+0x28]
  50ee5a:	call   1c1964
  50ee5f:	mov    ecx,eax
  50ee61:	jmp    50eea8
  50ee63:	test   si,si
  50ee66:	je     50ee77
  50ee68:	mov    eax,DWORD PTR [edx+0x4c]
  50ee6b:	xor    edi,edi
  50ee6d:	cmp    DWORD PTR [eax+edi*8],ecx
  50ee70:	je     50eec1
  50ee72:	inc    edi
  50ee73:	cmp    edi,esi
  50ee75:	jb     50ee6d
  50ee77:	mov    DWORD PTR [esp+0x4],ecx
  50ee7b:	mov    edi,DWORD PTR [ebp+0x10]
  50ee7e:	mov    DWORD PTR [esp],edi
  50ee81:	mov    DWORD PTR [esp+0x8],0x0
  50ee89:	mov    ebx,DWORD PTR [esp+0x28]
  50ee8d:	call   1c1964
  50ee92:	mov    ecx,eax
  50ee94:	jmp    50eed3
  50ee96:	mov    eax,DWORD PTR [eax+edi*8+0x4]
  50ee9a:	lea    ecx,[edx+eax*8+0x284]
  50eea1:	mov    esi,DWORD PTR [ebp+0x10]
  50eea4:	mov    ebx,DWORD PTR [esp+0x28]
  50eea8:	mov    eax,DWORD PTR [ecx+0x4]
  50eeab:	mov    DWORD PTR [esp+0x8],eax
  50eeaf:	mov    DWORD PTR [esp],esi
  50eeb2:	mov    DWORD PTR [esp+0x4],0x1
  50eeba:	call   DWORD PTR [ecx]
  50eebc:	jmp    50f198
  50eec1:	mov    eax,DWORD PTR [eax+edi*8+0x4]
  50eec5:	lea    ecx,[edx+eax*8+0xb4]
  50eecc:	mov    edi,DWORD PTR [ebp+0x10]
  50eecf:	mov    ebx,DWORD PTR [esp+0x28]
  50eed3:	mov    eax,DWORD PTR [ecx+0x4]
  50eed6:	mov    DWORD PTR [esp+0x4],eax
  50eeda:	mov    DWORD PTR [esp],edi
  50eedd:	call   DWORD PTR [ecx]
  50eedf:	cmp    eax,0x2
  50eee2:	jne    50eef4
  50eee4:	mov    eax,DWORD PTR [ebp+0xc]
  50eee7:	mov    DWORD PTR [esp+0x8],eax
  50eeeb:	mov    DWORD PTR [esp+0x4],edi
  50eeef:	jmp    50f18d
  50eef4:	lea    eax,[ebx+0x45874]
  50eefa:	mov    DWORD PTR [esp+0x24],eax
  50eefe:	mov    eax,DWORD PTR [eax]
  50ef00:	mov    ecx,DWORD PTR [edi]
  50ef02:	mov    ebx,edi
  50ef04:	movzx  edx,WORD PTR [ecx+0xaa]
  50ef0b:	test   edx,edx
  50ef0d:	je     50ef1e
  50ef0f:	mov    esi,DWORD PTR [ecx+0x4c]
  50ef12:	xor    edi,edi
  50ef14:	cmp    DWORD PTR [esi+edi*8],eax
  50ef17:	je     50ef3c
  50ef19:	inc    edi
  50ef1a:	cmp    edi,edx
  50ef1c:	jb     50ef14
  50ef1e:	mov    DWORD PTR [esp+0x4],eax
  50ef22:	mov    esi,ebx
  50ef24:	mov    DWORD PTR [esp],esi
  50ef27:	mov    DWORD PTR [esp+0x8],0x7
  50ef2f:	mov    ebx,DWORD PTR [esp+0x28]
  50ef33:	call   1c1964
  50ef38:	mov    ecx,eax
  50ef3a:	jmp    50ef4d
  50ef3c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50ef40:	lea    ecx,[ecx+eax*8+0xec]
  50ef47:	mov    esi,ebx
  50ef49:	mov    ebx,DWORD PTR [esp+0x28]
  50ef4d:	mov    eax,DWORD PTR [ecx+0x4]
  50ef50:	mov    DWORD PTR [esp+0x4],eax
  50ef54:	mov    DWORD PTR [esp],esi
  50ef57:	call   DWORD PTR [ecx]
  50ef59:	test   eax,eax
  50ef5b:	je     50f182
  50ef61:	mov    eax,DWORD PTR [esp+0x24]
  50ef65:	mov    eax,DWORD PTR [eax]
  50ef67:	mov    ecx,DWORD PTR [esi]
  50ef69:	mov    ebx,esi
  50ef6b:	movzx  edx,WORD PTR [ecx+0xaa]
  50ef72:	test   edx,edx
  50ef74:	je     50ef85
  50ef76:	mov    esi,DWORD PTR [ecx+0x4c]
  50ef79:	xor    edi,edi
  50ef7b:	cmp    DWORD PTR [esi+edi*8],eax
  50ef7e:	je     50efa3
  50ef80:	inc    edi
  50ef81:	cmp    edi,edx
  50ef83:	jb     50ef7b
  50ef85:	mov    DWORD PTR [esp+0x4],eax
  50ef89:	mov    esi,ebx
  50ef8b:	mov    DWORD PTR [esp],esi
  50ef8e:	mov    DWORD PTR [esp+0x8],0x7
  50ef96:	mov    ebx,DWORD PTR [esp+0x28]
  50ef9a:	call   1c1964
  50ef9f:	mov    ecx,eax
  50efa1:	jmp    50efb4
  50efa3:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50efa7:	lea    ecx,[ecx+eax*8+0xec]
  50efae:	mov    esi,ebx
  50efb0:	mov    ebx,DWORD PTR [esp+0x28]
  50efb4:	mov    eax,DWORD PTR [ecx+0x4]
  50efb7:	mov    DWORD PTR [esp+0x4],eax
  50efbb:	mov    DWORD PTR [esp],esi
  50efbe:	call   DWORD PTR [ecx]
  50efc0:	test   eax,eax
  50efc2:	je     50f1bb
  50efc8:	mov    eax,DWORD PTR [eax+0x10]
  50efcb:	test   eax,eax
  50efcd:	je     50f1bb
  50efd3:	mov    DWORD PTR [esp],eax
  50efd6:	mov    DWORD PTR [esp+0x4],0x0
  50efde:	call   179aeca  ; ABH.Shared.Models.Generic.AiCombo::get_ComboChain
  50efe3:	test   eax,eax
  50efe5:	je     50f118
  50efeb:	mov    eax,DWORD PTR [esp+0x24]
  50efef:	mov    eax,DWORD PTR [eax]
  50eff1:	mov    ecx,DWORD PTR [esi]
  50eff3:	mov    ebx,esi
  50eff5:	movzx  edx,WORD PTR [ecx+0xaa]
  50effc:	test   edx,edx
  50effe:	je     50f00f
  50f000:	mov    esi,DWORD PTR [ecx+0x4c]
  50f003:	xor    edi,edi
  50f005:	cmp    DWORD PTR [esi+edi*8],eax
  50f008:	je     50f02d
  50f00a:	inc    edi
  50f00b:	cmp    edi,edx
  50f00d:	jb     50f005
  50f00f:	mov    DWORD PTR [esp+0x4],eax
  50f013:	mov    esi,ebx
  50f015:	mov    DWORD PTR [esp],esi
  50f018:	mov    DWORD PTR [esp+0x8],0x7
  50f020:	mov    ebx,DWORD PTR [esp+0x28]
  50f024:	call   1c1964
  50f029:	mov    ecx,eax
  50f02b:	jmp    50f03e
  50f02d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f031:	lea    ecx,[ecx+eax*8+0xec]
  50f038:	mov    esi,ebx
  50f03a:	mov    ebx,DWORD PTR [esp+0x28]
  50f03e:	mov    eax,DWORD PTR [ecx+0x4]
  50f041:	mov    DWORD PTR [esp+0x4],eax
  50f045:	mov    DWORD PTR [esp],esi
  50f048:	call   DWORD PTR [ecx]
  50f04a:	test   eax,eax
  50f04c:	je     50f1bb
  50f052:	mov    eax,DWORD PTR [eax+0x10]
  50f055:	test   eax,eax
  50f057:	je     50f1bb
  50f05d:	mov    DWORD PTR [esp],eax
  50f060:	mov    DWORD PTR [esp+0x4],0x0
  50f068:	call   179aeca  ; ABH.Shared.Models.Generic.AiCombo::get_ComboChain
  50f06d:	test   eax,eax
  50f06f:	je     50f1bb
  50f075:	lea    ecx,[ebx+0x48c20]
  50f07b:	mov    ecx,DWORD PTR [ecx]
  50f07d:	mov    DWORD PTR [esp+0x4],ecx
  50f081:	mov    DWORD PTR [esp],eax
  50f084:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  50f089:	mov    DWORD PTR [esp+0x20],eax
  50f08d:	mov    eax,DWORD PTR [esp+0x24]
  50f091:	mov    eax,DWORD PTR [eax]
  50f093:	mov    ecx,DWORD PTR [esi]
  50f095:	mov    ebx,esi
  50f097:	movzx  edx,WORD PTR [ecx+0xaa]
  50f09e:	test   edx,edx
  50f0a0:	je     50f0b1
  50f0a2:	mov    esi,DWORD PTR [ecx+0x4c]
  50f0a5:	xor    edi,edi
  50f0a7:	cmp    DWORD PTR [esi+edi*8],eax
  50f0aa:	je     50f0cf
  50f0ac:	inc    edi
  50f0ad:	cmp    edi,edx
  50f0af:	jb     50f0a7
  50f0b1:	mov    DWORD PTR [esp+0x4],eax
  50f0b5:	mov    esi,ebx
  50f0b7:	mov    DWORD PTR [esp],esi
  50f0ba:	mov    DWORD PTR [esp+0x8],0x7
  50f0c2:	mov    ebx,DWORD PTR [esp+0x28]
  50f0c6:	call   1c1964
  50f0cb:	mov    ecx,eax
  50f0cd:	jmp    50f0e0
  50f0cf:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f0d3:	lea    ecx,[ecx+eax*8+0xec]
  50f0da:	mov    esi,ebx
  50f0dc:	mov    ebx,DWORD PTR [esp+0x28]
  50f0e0:	mov    eax,DWORD PTR [ecx+0x4]
  50f0e3:	mov    DWORD PTR [esp+0x4],eax
  50f0e7:	mov    DWORD PTR [esp],esi
  50f0ea:	call   DWORD PTR [ecx]
  50f0ec:	test   eax,eax
  50f0ee:	je     50f1bb
  50f0f4:	mov    ecx,DWORD PTR [esp+0x20]
  50f0f8:	cmp    ecx,DWORD PTR [eax+0x8]
  50f0fb:	jle    50f118
  50f0fd:	mov    eax,DWORD PTR [ebp+0xc]
  50f100:	mov    DWORD PTR [esp+0x8],eax
  50f104:	mov    DWORD PTR [esp+0x4],esi
  50f108:	mov    eax,DWORD PTR [ebp+0x8]
  50f10b:	mov    DWORD PTR [esp],eax
  50f10e:	call   50f46a  ; ABH.Services.Logic.BattleService::GetCurrentSkillFromComboAndUpdateCombo
  50f113:	jmp    50f198
  50f118:	mov    eax,DWORD PTR [esp+0x24]
  50f11c:	mov    eax,DWORD PTR [eax]
  50f11e:	mov    ecx,DWORD PTR [esi]
  50f120:	mov    ebx,esi
  50f122:	movzx  edx,WORD PTR [ecx+0xaa]
  50f129:	test   edx,edx
  50f12b:	je     50f13c
  50f12d:	mov    esi,DWORD PTR [ecx+0x4c]
  50f130:	xor    edi,edi
  50f132:	cmp    DWORD PTR [esi+edi*8],eax
  50f135:	je     50f15a
  50f137:	inc    edi
  50f138:	cmp    edi,edx
  50f13a:	jb     50f132
  50f13c:	mov    DWORD PTR [esp+0x4],eax
  50f140:	mov    esi,ebx
  50f142:	mov    DWORD PTR [esp],esi
  50f145:	mov    DWORD PTR [esp+0x8],0x7
  50f14d:	mov    ebx,DWORD PTR [esp+0x28]
  50f151:	call   1c1964
  50f156:	mov    ecx,eax
  50f158:	jmp    50f16b
  50f15a:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f15e:	lea    ecx,[ecx+eax*8+0xec]
  50f165:	mov    esi,ebx
  50f167:	mov    ebx,DWORD PTR [esp+0x28]
  50f16b:	mov    eax,DWORD PTR [ecx+0x4]
  50f16e:	mov    DWORD PTR [esp+0x4],eax
  50f172:	mov    DWORD PTR [esp],esi
  50f175:	call   DWORD PTR [ecx]
  50f177:	test   eax,eax
  50f179:	je     50f1bb
  50f17b:	mov    DWORD PTR [eax+0x10],0x0
  50f182:	mov    eax,DWORD PTR [ebp+0xc]
  50f185:	mov    DWORD PTR [esp+0x8],eax
  50f189:	mov    DWORD PTR [esp+0x4],esi
  50f18d:	mov    eax,DWORD PTR [ebp+0x8]
  50f190:	mov    DWORD PTR [esp],eax
  50f193:	call   50f1c5  ; ABH.Services.Logic.BattleService::InitiateNewCombo
  50f198:	lea    esp,[ebp-0xc]
  50f19b:	pop    esi
  50f19c:	pop    edi
  50f19d:	pop    ebx
  50f19e:	pop    ebp
  50f19f:	ret
  50f1a0:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f1a4:	lea    ecx,[ecx+eax*8+0x284]
  50f1ab:	mov    esi,DWORD PTR [ebp+0x10]
  50f1ae:	jmp    50ec21
  50f1b3:	mov    ebx,DWORD PTR [esp+0x28]
  50f1b7:	jmp    50f1bb
  50f1b9:	mov    ebx,esi
  50f1bb:	call   1fbc48
  50f1c0:	call   540b98