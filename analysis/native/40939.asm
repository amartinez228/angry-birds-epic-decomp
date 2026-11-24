
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00503914:
  503914:	push   ebp
  503915:	mov    ebp,esp
  503917:	push   ebx
  503918:	push   edi
  503919:	push   esi
  50391a:	and    esp,0xfffffff0
  50391d:	sub    esp,0x60
  503920:	call   503925
  503925:	pop    ebx
  503926:	add    ebx,0x1a0e61f
  50392c:	mov    esi,DWORD PTR [ebp+0x10]
  50392f:	mov    al,BYTE PTR [ebx+0x5d4e3]
  503935:	test   al,al
  503937:	jne    503950
  503939:	lea    eax,[ebx-0x66f420]
  50393f:	mov    eax,DWORD PTR [eax]
  503941:	mov    DWORD PTR [esp],eax
  503944:	call   1ca6e8
  503949:	mov    BYTE PTR [ebx+0x5d4e3],0x1
  503950:	test   esi,esi
  503952:	je     50436a
  503958:	mov    eax,DWORD PTR [esi+0x68]
  50395b:	test   eax,eax
  50395d:	je     50436a
  503963:	lea    ecx,[ebx+0x4a04c]
  503969:	mov    ecx,DWORD PTR [ecx]
  50396b:	mov    DWORD PTR [esp+0x8],ecx
  50396f:	mov    DWORD PTR [esp],eax
  503972:	mov    DWORD PTR [esp+0x4],0x0
  50397a:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  50397f:	test   eax,eax
  503981:	je     50436a
  503987:	mov    edi,DWORD PTR [ebp+0xc]
  50398a:	lea    ecx,[ebx+0x4a048]
  503990:	mov    ecx,DWORD PTR [ecx]
  503992:	mov    DWORD PTR [esp+0x4],ecx
  503996:	mov    DWORD PTR [esp],eax
  503999:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  50399e:	mov    DWORD PTR [esp+0x34],eax
  5039a2:	xor    esi,esi
  5039a4:	test   edi,edi
  5039a6:	je     5039d1
  5039a8:	lea    eax,[ebx+0x458f4]
  5039ae:	mov    eax,DWORD PTR [eax]
  5039b0:	mov    edx,DWORD PTR [edi]
  5039b2:	movzx  ecx,BYTE PTR [eax+0xac]
  5039b9:	movzx  edi,BYTE PTR [edx+0xac]
  5039c0:	cmp    edi,ecx
  5039c2:	jb     5039d1
  5039c4:	mov    edx,DWORD PTR [edx+0x58]
  5039c7:	xor    esi,esi
  5039c9:	cmp    DWORD PTR [edx+ecx*4-0x4],eax
  5039cd:	cmove  esi,DWORD PTR [ebp+0xc]
  5039d1:	mov    eax,DWORD PTR [ebp+0x10]
  5039d4:	mov    DWORD PTR [esp],eax
  5039d7:	mov    DWORD PTR [esp+0x4],0x0
  5039df:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  5039e4:	test   eax,eax
  5039e6:	je     50436a
  5039ec:	mov    DWORD PTR [esp],eax
  5039ef:	mov    DWORD PTR [esp+0x4],0x0
  5039f7:	call   16fe50e  ; ABH.Shared.BalancingData.BattleBalancingData::get_ScoringStrategy
  5039fc:	xor    edi,edi
  5039fe:	cmp    eax,0x2
  503a01:	je     503abf
  503a07:	cmp    eax,0x1
  503a0a:	jne    503b1c
  503a10:	test   esi,esi
  503a12:	je     503bcb
  503a18:	lea    eax,[ebx+0x45820]
  503a1e:	mov    eax,DWORD PTR [eax]
  503a20:	test   BYTE PTR [eax+0xb2],0x1
  503a27:	je     503a37
  503a29:	cmp    DWORD PTR [eax+0x60],0x0
  503a2d:	jne    503a37
  503a2f:	mov    DWORD PTR [esp],eax
  503a32:	call   1db0b8
  503a37:	mov    DWORD PTR [esp+0x4],0x0
  503a3f:	mov    DWORD PTR [esp],0x0
  503a46:	call   107cf95  ; DIContainerBalancing::get_Service
  503a4b:	test   eax,eax
  503a4d:	je     50436a
  503a53:	lea    ecx,[ebx+0x4afac]
  503a59:	mov    DWORD PTR [esp+0x24],ecx
  503a5d:	mov    edi,DWORD PTR [ecx]
  503a5f:	mov    DWORD PTR [esp+0x30],edi
  503a63:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  503a69:	mov    DWORD PTR [esp+0x20],ecx
  503a6d:	mov    ecx,DWORD PTR [ecx]
  503a6f:	mov    DWORD PTR [esp+0x34],ecx
  503a73:	mov    ecx,DWORD PTR [eax]
  503a75:	mov    DWORD PTR [esp+0x2c],eax
  503a79:	movzx  esi,WORD PTR [ecx+0xaa]
  503a80:	test   esi,esi
  503a82:	mov    edx,DWORD PTR [edi+0xc]
  503a85:	movzx  eax,WORD PTR [edi+0x2c]
  503a89:	mov    DWORD PTR [esp+0x28],eax
  503a8d:	je     503aa2
  503a8f:	mov    eax,DWORD PTR [ecx+0x4c]
  503a92:	xor    edi,edi
  503a94:	cmp    DWORD PTR [eax+edi*8],edx
  503a97:	je     503bf0
  503a9d:	inc    edi
  503a9e:	cmp    edi,esi
  503aa0:	jb     503a94
  503aa2:	mov    eax,DWORD PTR [esp+0x28]
  503aa6:	mov    DWORD PTR [esp+0x8],eax
  503aaa:	mov    DWORD PTR [esp+0x4],edx
  503aae:	mov    esi,DWORD PTR [esp+0x2c]
  503ab2:	mov    DWORD PTR [esp],esi
  503ab5:	call   1c1964
  503aba:	jmp    503c03
  503abf:	mov    ecx,DWORD PTR [ebp+0xc]
  503ac2:	test   ecx,ecx
  503ac4:	je     503bcb
  503aca:	lea    eax,[ebx+0x45874]
  503ad0:	mov    DWORD PTR [esp+0x34],eax
  503ad4:	mov    eax,DWORD PTR [eax]
  503ad6:	mov    ecx,DWORD PTR [ecx]
  503ad8:	mov    DWORD PTR [esp+0x30],ecx
  503adc:	movzx  edx,WORD PTR [ecx+0xaa]
  503ae3:	test   edx,edx
  503ae5:	je     503afe
  503ae7:	mov    ecx,DWORD PTR [esp+0x30]
  503aeb:	mov    esi,DWORD PTR [ecx+0x4c]
  503aee:	xor    ecx,ecx
  503af0:	cmp    DWORD PTR [esi+ecx*8],eax
  503af3:	je     503c96
  503af9:	inc    ecx
  503afa:	cmp    ecx,edx
  503afc:	jb     503af0
  503afe:	mov    DWORD PTR [esp+0x4],eax
  503b02:	mov    esi,DWORD PTR [ebp+0xc]
  503b05:	mov    DWORD PTR [esp],esi
  503b08:	mov    DWORD PTR [esp+0x8],0x13
  503b10:	call   1c1964
  503b15:	mov    ecx,eax
  503b17:	jmp    503ca8
  503b1c:	test   eax,eax
  503b1e:	jne    504360
  503b24:	test   esi,esi
  503b26:	je     503bcb
  503b2c:	lea    eax,[ebx+0x45820]
  503b32:	mov    eax,DWORD PTR [eax]
  503b34:	test   BYTE PTR [eax+0xb2],0x1
  503b3b:	je     503b4b
  503b3d:	cmp    DWORD PTR [eax+0x60],0x0
  503b41:	jne    503b4b
  503b43:	mov    DWORD PTR [esp],eax
  503b46:	call   1db0b8
  503b4b:	mov    DWORD PTR [esp+0x4],0x0
  503b53:	mov    DWORD PTR [esp],0x0
  503b5a:	call   107cf95  ; DIContainerBalancing::get_Service
  503b5f:	test   eax,eax
  503b61:	je     50436a
  503b67:	lea    ecx,[ebx+0x4afac]
  503b6d:	mov    edx,DWORD PTR [ecx]
  503b6f:	mov    DWORD PTR [esp+0x2c],edx
  503b73:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  503b79:	mov    ecx,DWORD PTR [ecx]
  503b7b:	mov    DWORD PTR [esp+0x30],ecx
  503b7f:	mov    ecx,DWORD PTR [edx+0xc]
  503b82:	movzx  edx,WORD PTR [edx+0x2c]
  503b86:	mov    DWORD PTR [esp+0x24],edx
  503b8a:	mov    edx,DWORD PTR [eax]
  503b8c:	mov    DWORD PTR [esp+0x28],eax
  503b90:	movzx  eax,WORD PTR [edx+0xaa]
  503b97:	test   eax,eax
  503b99:	je     503bae
  503b9b:	mov    edi,DWORD PTR [edx+0x4c]
  503b9e:	xor    esi,esi
  503ba0:	cmp    DWORD PTR [edi+esi*8],ecx
  503ba3:	je     503f2a
  503ba9:	inc    esi
  503baa:	cmp    esi,eax
  503bac:	jb     503ba0
  503bae:	mov    eax,DWORD PTR [esp+0x24]
  503bb2:	mov    DWORD PTR [esp+0x8],eax
  503bb6:	mov    DWORD PTR [esp+0x4],ecx
  503bba:	mov    esi,DWORD PTR [esp+0x28]
  503bbe:	mov    DWORD PTR [esp],esi
  503bc1:	call   1c1964
  503bc6:	jmp    503f3d
  503bcb:	lea    eax,[ebx+0x57570]  ; literal "GetScoreForBird: bird is NULL, wrong type?"
  503bd1:	mov    eax,DWORD PTR [eax]
  503bd3:	mov    DWORD PTR [esp+0x4],eax
  503bd7:	mov    DWORD PTR [esp+0x8],0x0
  503bdf:	mov    DWORD PTR [esp],0x0
  503be6:	call   108148a  ; DebugLog::Error
  503beb:	jmp    504360
  503bf0:	mov    edx,DWORD PTR [esp+0x28]
  503bf4:	add    edx,DWORD PTR [eax+edi*8+0x4]
  503bf8:	lea    eax,[ecx+edx*8+0xb4]
  503bff:	mov    esi,DWORD PTR [esp+0x2c]
  503c03:	mov    eax,DWORD PTR [eax+0x4]
  503c06:	mov    ecx,DWORD PTR [esp+0x30]
  503c0a:	mov    DWORD PTR [esp+0x4],ecx
  503c0e:	mov    DWORD PTR [esp],eax
  503c11:	call   1da450
  503c16:	mov    DWORD PTR [esp+0x8],eax
  503c1a:	mov    ecx,DWORD PTR [esp+0x34]
  503c1e:	mov    DWORD PTR [esp+0x4],ecx
  503c22:	mov    DWORD PTR [esp],esi
  503c25:	call   DWORD PTR [eax]
  503c27:	test   eax,eax
  503c29:	mov    esi,DWORD PTR [ebp+0xc]
  503c2c:	je     50436a
  503c32:	mov    DWORD PTR [esp],eax
  503c35:	mov    DWORD PTR [esp+0x4],0x0
  503c3d:	call   1702a1b  ; ABH.Shared.BalancingData.ScoreBalancingData::get_MinimumBirdScoreInPercent
  503c42:	mov    DWORD PTR [esp+0x34],eax
  503c46:	test   esi,esi
  503c48:	je     50436a
  503c4e:	lea    eax,[ebx+0x45874]
  503c54:	mov    DWORD PTR [esp+0x2c],eax
  503c58:	mov    eax,DWORD PTR [eax]
  503c5a:	mov    ecx,DWORD PTR [esi]
  503c5c:	movzx  edx,WORD PTR [ecx+0xaa]
  503c63:	test   edx,edx
  503c65:	je     503c7a
  503c67:	mov    esi,DWORD PTR [ecx+0x4c]
  503c6a:	xor    edi,edi
  503c6c:	cmp    DWORD PTR [esi+edi*8],eax
  503c6f:	je     503d63
  503c75:	inc    edi
  503c76:	cmp    edi,edx
  503c78:	jb     503c6c
  503c7a:	mov    DWORD PTR [esp+0x4],eax
  503c7e:	mov    esi,DWORD PTR [ebp+0xc]
  503c81:	mov    DWORD PTR [esp],esi
  503c84:	mov    DWORD PTR [esp+0x8],0x1f
  503c8c:	call   1c1964
  503c91:	jmp    503d71
  503c96:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  503c9a:	mov    ecx,DWORD PTR [esp+0x30]
  503c9e:	lea    ecx,[ecx+eax*8+0x14c]
  503ca5:	mov    esi,DWORD PTR [ebp+0xc]
  503ca8:	mov    eax,DWORD PTR [ecx+0x4]
  503cab:	mov    DWORD PTR [esp+0x4],eax
  503caf:	mov    DWORD PTR [esp],esi
  503cb2:	call   DWORD PTR [ecx]
  503cb4:	test   al,al
  503cb6:	je     504360
  503cbc:	lea    eax,[ebx+0x45820]
  503cc2:	mov    eax,DWORD PTR [eax]
  503cc4:	test   BYTE PTR [eax+0xb2],0x1
  503ccb:	je     503cdb
  503ccd:	cmp    DWORD PTR [eax+0x60],0x0
  503cd1:	jne    503cdb
  503cd3:	mov    DWORD PTR [esp],eax
  503cd6:	call   1db0b8
  503cdb:	mov    DWORD PTR [esp+0x4],0x0
  503ce3:	mov    DWORD PTR [esp],0x0
  503cea:	call   107cf95  ; DIContainerBalancing::get_Service
  503cef:	test   eax,eax
  503cf1:	je     50436a
  503cf7:	lea    ecx,[ebx+0x4afac]
  503cfd:	mov    DWORD PTR [esp+0x20],ecx
  503d01:	mov    edi,DWORD PTR [ecx]
  503d03:	mov    DWORD PTR [esp+0x2c],edi
  503d07:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  503d0d:	mov    DWORD PTR [esp+0x1c],ecx
  503d11:	mov    ecx,DWORD PTR [ecx]
  503d13:	mov    DWORD PTR [esp+0x30],ecx
  503d17:	mov    ecx,DWORD PTR [eax]
  503d19:	mov    DWORD PTR [esp+0x28],eax
  503d1d:	movzx  esi,WORD PTR [ecx+0xaa]
  503d24:	test   esi,esi
  503d26:	mov    edx,DWORD PTR [edi+0xc]
  503d29:	movzx  eax,WORD PTR [edi+0x2c]
  503d2d:	mov    DWORD PTR [esp+0x24],eax
  503d31:	je     503d46
  503d33:	mov    eax,DWORD PTR [ecx+0x4c]
  503d36:	xor    edi,edi
  503d38:	cmp    DWORD PTR [eax+edi*8],edx
  503d3b:	je     503fd0
  503d41:	inc    edi
  503d42:	cmp    edi,esi
  503d44:	jb     503d38
  503d46:	mov    eax,DWORD PTR [esp+0x24]
  503d4a:	mov    DWORD PTR [esp+0x8],eax
  503d4e:	mov    DWORD PTR [esp+0x4],edx
  503d52:	mov    esi,DWORD PTR [esp+0x28]
  503d56:	mov    DWORD PTR [esp],esi
  503d59:	call   1c1964
  503d5e:	jmp    503fe3
  503d63:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  503d67:	lea    eax,[ecx+eax*8+0x1ac]
  503d6e:	mov    esi,DWORD PTR [ebp+0xc]
  503d71:	mov    ecx,DWORD PTR [eax+0x4]
  503d74:	mov    DWORD PTR [esp+0x4],ecx
  503d78:	mov    DWORD PTR [esp],esi
  503d7b:	call   DWORD PTR [eax]
  503d7d:	fstp   DWORD PTR [esp+0x4c]
  503d81:	movss  xmm0,DWORD PTR [esp+0x4c]
  503d87:	movss  DWORD PTR [esp+0x30],xmm0
  503d8d:	mov    eax,DWORD PTR [esp+0x2c]
  503d91:	mov    eax,DWORD PTR [eax]
  503d93:	mov    ecx,DWORD PTR [esi]
  503d95:	movzx  edx,WORD PTR [ecx+0xaa]
  503d9c:	test   edx,edx
  503d9e:	je     503daf
  503da0:	mov    esi,DWORD PTR [ecx+0x4c]
  503da3:	xor    edi,edi
  503da5:	cmp    DWORD PTR [esi+edi*8],eax
  503da8:	je     503dc8
  503daa:	inc    edi
  503dab:	cmp    edi,edx
  503dad:	jb     503da5
  503daf:	mov    DWORD PTR [esp+0x4],eax
  503db3:	mov    esi,DWORD PTR [ebp+0xc]
  503db6:	mov    DWORD PTR [esp],esi
  503db9:	mov    DWORD PTR [esp+0x8],0x19
  503dc1:	call   1c1964
  503dc6:	jmp    503dd6
  503dc8:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  503dcc:	lea    eax,[ecx+eax*8+0x17c]
  503dd3:	mov    esi,DWORD PTR [ebp+0xc]
  503dd6:	mov    ecx,DWORD PTR [eax+0x4]
  503dd9:	mov    DWORD PTR [esp+0x4],ecx
  503ddd:	mov    DWORD PTR [esp],esi
  503de0:	call   DWORD PTR [eax]
  503de2:	fstp   DWORD PTR [esp+0x48]
  503de6:	movss  xmm2,DWORD PTR [esp+0x48]
  503dec:	lea    eax,[ebx+0x44ec8]
  503df2:	mov    eax,DWORD PTR [eax]
  503df4:	test   BYTE PTR [eax+0xb2],0x1
  503dfb:	je     503e17
  503dfd:	cmp    DWORD PTR [eax+0x60],0x0
  503e01:	jne    503e17
  503e03:	mov    DWORD PTR [esp],eax
  503e06:	movss  DWORD PTR [esp+0x2c],xmm2
  503e0c:	call   1db0b8
  503e11:	movss  xmm2,DWORD PTR [esp+0x2c]
  503e17:	cvtsi2ss xmm0,DWORD PTR [esp+0x34]
  503e1d:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  503e25:	movss  xmm1,DWORD PTR [esp+0x30]
  503e2b:	divss  xmm1,xmm2
  503e2f:	movss  DWORD PTR [esp+0x8],xmm1
  503e35:	movss  DWORD PTR [esp+0x4],xmm0
  503e3b:	mov    DWORD PTR [esp+0xc],0x0
  503e43:	mov    DWORD PTR [esp],0x0
  503e4a:	call   1385329  ; UnityEngine.Mathf::Max
  503e4f:	fstp   DWORD PTR [esp+0x44]
  503e53:	movss  xmm0,DWORD PTR [esp+0x44]
  503e59:	movss  DWORD PTR [esp+0x34],xmm0
  503e5f:	mov    DWORD PTR [esp+0x4],0x0
  503e67:	mov    DWORD PTR [esp],0x0
  503e6e:	call   107cf95  ; DIContainerBalancing::get_Service
  503e73:	mov    esi,eax
  503e75:	test   esi,esi
  503e77:	je     50436a
  503e7d:	mov    eax,DWORD PTR [esp+0x24]
  503e81:	mov    edx,DWORD PTR [eax]
  503e83:	mov    DWORD PTR [esp+0x28],edx
  503e87:	mov    eax,DWORD PTR [esp+0x20]
  503e8b:	mov    eax,DWORD PTR [eax]
  503e8d:	mov    DWORD PTR [esp+0x2c],eax
  503e91:	mov    ecx,DWORD PTR [edx+0xc]
  503e94:	movzx  eax,WORD PTR [edx+0x2c]
  503e98:	mov    DWORD PTR [esp+0x24],eax
  503e9c:	mov    edx,DWORD PTR [esi]
  503e9e:	mov    DWORD PTR [esp+0x30],esi
  503ea2:	movzx  eax,WORD PTR [edx+0xaa]
  503ea9:	test   eax,eax
  503eab:	je     503ebc
  503ead:	mov    esi,DWORD PTR [edx+0x4c]
  503eb0:	xor    edi,edi
  503eb2:	cmp    DWORD PTR [esi+edi*8],ecx
  503eb5:	je     503ed6
  503eb7:	inc    edi
  503eb8:	cmp    edi,eax
  503eba:	jb     503eb2
  503ebc:	mov    eax,DWORD PTR [esp+0x24]
  503ec0:	mov    DWORD PTR [esp+0x8],eax
  503ec4:	mov    DWORD PTR [esp+0x4],ecx
  503ec8:	mov    esi,DWORD PTR [esp+0x30]
  503ecc:	mov    DWORD PTR [esp],esi
  503ecf:	call   1c1964
  503ed4:	jmp    503ee9
  503ed6:	mov    eax,DWORD PTR [esp+0x24]
  503eda:	add    eax,DWORD PTR [esi+edi*8+0x4]
  503ede:	lea    eax,[edx+eax*8+0xb4]
  503ee5:	mov    esi,DWORD PTR [esp+0x30]
  503ee9:	mov    eax,DWORD PTR [eax+0x4]
  503eec:	mov    ecx,DWORD PTR [esp+0x28]
  503ef0:	mov    DWORD PTR [esp+0x4],ecx
  503ef4:	mov    DWORD PTR [esp],eax
  503ef7:	call   1da450
  503efc:	mov    DWORD PTR [esp+0x8],eax
  503f00:	mov    ecx,DWORD PTR [esp+0x2c]
  503f04:	mov    DWORD PTR [esp+0x4],ecx
  503f08:	mov    DWORD PTR [esp],esi
  503f0b:	call   DWORD PTR [eax]
  503f0d:	test   eax,eax
  503f0f:	je     50436a
  503f15:	mov    DWORD PTR [esp],eax
  503f18:	mov    DWORD PTR [esp+0x4],0x0
  503f20:	call   1702a84  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScorePerBird
  503f25:	jmp    50434e
  503f2a:	mov    eax,DWORD PTR [esp+0x24]
  503f2e:	add    eax,DWORD PTR [edi+esi*8+0x4]
  503f32:	lea    eax,[edx+eax*8+0xb4]
  503f39:	mov    esi,DWORD PTR [esp+0x28]
  503f3d:	mov    eax,DWORD PTR [eax+0x4]
  503f40:	mov    ecx,DWORD PTR [esp+0x2c]
  503f44:	mov    DWORD PTR [esp+0x4],ecx
  503f48:	mov    DWORD PTR [esp],eax
  503f4b:	call   1da450
  503f50:	mov    DWORD PTR [esp+0x8],eax
  503f54:	mov    ecx,DWORD PTR [esp+0x30]
  503f58:	mov    DWORD PTR [esp+0x4],ecx
  503f5c:	mov    DWORD PTR [esp],esi
  503f5f:	call   DWORD PTR [eax]
  503f61:	test   eax,eax
  503f63:	mov    esi,DWORD PTR [ebp+0xc]
  503f66:	je     50436a
  503f6c:	mov    DWORD PTR [esp],eax
  503f6f:	mov    DWORD PTR [esp+0x4],0x0
  503f77:	call   1702a1b  ; ABH.Shared.BalancingData.ScoreBalancingData::get_MinimumBirdScoreInPercent
  503f7c:	mov    DWORD PTR [esp+0x30],eax
  503f80:	test   esi,esi
  503f82:	je     50436a
  503f88:	lea    eax,[ebx+0x45874]
  503f8e:	mov    DWORD PTR [esp+0x28],eax
  503f92:	mov    eax,DWORD PTR [eax]
  503f94:	mov    ecx,DWORD PTR [esi]
  503f96:	movzx  edx,WORD PTR [ecx+0xaa]
  503f9d:	test   edx,edx
  503f9f:	je     503fb4
  503fa1:	mov    edi,DWORD PTR [ecx+0x4c]
  503fa4:	xor    esi,esi
  503fa6:	cmp    DWORD PTR [edi+esi*8],eax
  503fa9:	je     504065
  503faf:	inc    esi
  503fb0:	cmp    esi,edx
  503fb2:	jb     503fa6
  503fb4:	mov    DWORD PTR [esp+0x4],eax
  503fb8:	mov    esi,DWORD PTR [ebp+0xc]
  503fbb:	mov    DWORD PTR [esp],esi
  503fbe:	mov    DWORD PTR [esp+0x8],0x1f
  503fc6:	call   1c1964
  503fcb:	jmp    504073
  503fd0:	mov    edx,DWORD PTR [esp+0x24]
  503fd4:	add    edx,DWORD PTR [eax+edi*8+0x4]
  503fd8:	lea    eax,[ecx+edx*8+0xb4]
  503fdf:	mov    esi,DWORD PTR [esp+0x28]
  503fe3:	mov    eax,DWORD PTR [eax+0x4]
  503fe6:	mov    ecx,DWORD PTR [esp+0x2c]
  503fea:	mov    DWORD PTR [esp+0x4],ecx
  503fee:	mov    DWORD PTR [esp],eax
  503ff1:	call   1da450
  503ff6:	mov    DWORD PTR [esp+0x8],eax
  503ffa:	mov    ecx,DWORD PTR [esp+0x30]
  503ffe:	mov    DWORD PTR [esp+0x4],ecx
  504002:	mov    DWORD PTR [esp],esi
  504005:	call   DWORD PTR [eax]
  504007:	test   eax,eax
  504009:	mov    esi,DWORD PTR [ebp+0xc]
  50400c:	je     50436a
  504012:	mov    DWORD PTR [esp],eax
  504015:	mov    DWORD PTR [esp+0x4],0x0
  50401d:	call   1702aa7  ; ABH.Shared.BalancingData.ScoreBalancingData::get_MinimumBannerScoreInPercent
  504022:	mov    DWORD PTR [esp+0x30],eax
  504026:	mov    eax,DWORD PTR [esp+0x34]
  50402a:	mov    eax,DWORD PTR [eax]
  50402c:	mov    ecx,DWORD PTR [esi]
  50402e:	movzx  edx,WORD PTR [ecx+0xaa]
  504035:	test   edx,edx
  504037:	je     50404c
  504039:	mov    edi,DWORD PTR [ecx+0x4c]
  50403c:	xor    esi,esi
  50403e:	cmp    DWORD PTR [edi+esi*8],eax
  504041:	je     5040ce
  504047:	inc    esi
  504048:	cmp    esi,edx
  50404a:	jb     50403e
  50404c:	mov    DWORD PTR [esp+0x4],eax
  504050:	mov    esi,DWORD PTR [ebp+0xc]
  504053:	mov    DWORD PTR [esp],esi
  504056:	mov    DWORD PTR [esp+0x8],0x1f
  50405e:	call   1c1964
  504063:	jmp    5040dc
  504065:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  504069:	lea    eax,[ecx+eax*8+0x1ac]
  504070:	mov    esi,DWORD PTR [ebp+0xc]
  504073:	mov    ecx,DWORD PTR [eax+0x4]
  504076:	mov    DWORD PTR [esp+0x4],ecx
  50407a:	mov    DWORD PTR [esp],esi
  50407d:	call   DWORD PTR [eax]
  50407f:	fstp   DWORD PTR [esp+0x40]
  504083:	movss  xmm0,DWORD PTR [esp+0x40]
  504089:	movss  DWORD PTR [esp+0x2c],xmm0
  50408f:	mov    eax,DWORD PTR [esp+0x28]
  504093:	mov    eax,DWORD PTR [eax]
  504095:	mov    ecx,DWORD PTR [esi]
  504097:	movzx  edx,WORD PTR [ecx+0xaa]
  50409e:	test   edx,edx
  5040a0:	je     5040b5
  5040a2:	mov    esi,DWORD PTR [ecx+0x4c]
  5040a5:	xor    edi,edi
  5040a7:	cmp    DWORD PTR [esi+edi*8],eax
  5040aa:	je     50413a
  5040b0:	inc    edi
  5040b1:	cmp    edi,edx
  5040b3:	jb     5040a7
  5040b5:	mov    DWORD PTR [esp+0x4],eax
  5040b9:	mov    esi,DWORD PTR [ebp+0xc]
  5040bc:	mov    DWORD PTR [esp],esi
  5040bf:	mov    DWORD PTR [esp+0x8],0x19
  5040c7:	call   1c1964
  5040cc:	jmp    504148
  5040ce:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  5040d2:	lea    eax,[ecx+eax*8+0x1ac]
  5040d9:	mov    esi,DWORD PTR [ebp+0xc]
  5040dc:	mov    ecx,DWORD PTR [eax+0x4]
  5040df:	mov    DWORD PTR [esp+0x4],ecx
  5040e3:	mov    DWORD PTR [esp],esi
  5040e6:	call   DWORD PTR [eax]
  5040e8:	fstp   DWORD PTR [esp+0x58]
  5040ec:	movss  xmm0,DWORD PTR [esp+0x58]
  5040f2:	mov    eax,DWORD PTR [esp+0x34]
  5040f6:	mov    eax,DWORD PTR [eax]
  5040f8:	mov    ecx,DWORD PTR [esi]
  5040fa:	movzx  edx,WORD PTR [ecx+0xaa]
  504101:	test   edx,edx
  504103:	je     504118
  504105:	mov    edi,DWORD PTR [ecx+0x4c]
  504108:	xor    esi,esi
  50410a:	cmp    DWORD PTR [edi+esi*8],eax
  50410d:	je     5041ef
  504113:	inc    esi
  504114:	cmp    esi,edx
  504116:	jb     50410a
  504118:	movss  DWORD PTR [esp+0x34],xmm0
  50411e:	mov    DWORD PTR [esp+0x4],eax
  504122:	mov    esi,DWORD PTR [ebp+0xc]
  504125:	mov    DWORD PTR [esp],esi
  504128:	mov    DWORD PTR [esp+0x8],0x19
  504130:	call   1c1964
  504135:	jmp    504203
  50413a:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50413e:	lea    eax,[ecx+eax*8+0x17c]
  504145:	mov    esi,DWORD PTR [ebp+0xc]
  504148:	mov    ecx,DWORD PTR [eax+0x4]
  50414b:	mov    DWORD PTR [esp+0x4],ecx
  50414f:	mov    DWORD PTR [esp],esi
  504152:	call   DWORD PTR [eax]
  504154:	fstp   DWORD PTR [esp+0x3c]
  504158:	movss  xmm2,DWORD PTR [esp+0x3c]
  50415e:	lea    eax,[ebx+0x44ec8]
  504164:	mov    eax,DWORD PTR [eax]
  504166:	test   BYTE PTR [eax+0xb2],0x1
  50416d:	je     504189
  50416f:	cmp    DWORD PTR [eax+0x60],0x0
  504173:	jne    504189
  504175:	mov    DWORD PTR [esp],eax
  504178:	movss  DWORD PTR [esp+0x28],xmm2
  50417e:	call   1db0b8
  504183:	movss  xmm2,DWORD PTR [esp+0x28]
  504189:	cvtsi2ss xmm0,DWORD PTR [esp+0x30]
  50418f:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  504197:	movss  xmm1,DWORD PTR [esp+0x2c]
  50419d:	divss  xmm1,xmm2
  5041a1:	movss  DWORD PTR [esp+0x8],xmm1
  5041a7:	movss  DWORD PTR [esp+0x4],xmm0
  5041ad:	mov    DWORD PTR [esp+0xc],0x0
  5041b5:	mov    DWORD PTR [esp],0x0
  5041bc:	call   1385329  ; UnityEngine.Mathf::Max
  5041c1:	fstp   DWORD PTR [esp+0x38]
  5041c5:	mov    eax,DWORD PTR [ebp+0x10]
  5041c8:	mov    DWORD PTR [esp+0x8],eax
  5041cc:	mov    eax,DWORD PTR [esp+0x34]
  5041d0:	mov    DWORD PTR [esp+0x4],eax
  5041d4:	call   504374  ; ABH.Services.Logic.BattleService::GetMaxScoreForBird
  5041d9:	xorps  xmm0,xmm0
  5041dc:	cvtsi2ss xmm0,eax
  5041e0:	mulss  xmm0,DWORD PTR [esp+0x38]
  5041e6:	cvttss2si edi,xmm0
  5041ea:	jmp    504360
  5041ef:	movss  DWORD PTR [esp+0x34],xmm0
  5041f5:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  5041f9:	lea    eax,[ecx+eax*8+0x17c]
  504200:	mov    esi,DWORD PTR [ebp+0xc]
  504203:	mov    ecx,DWORD PTR [eax+0x4]
  504206:	mov    DWORD PTR [esp+0x4],ecx
  50420a:	mov    DWORD PTR [esp],esi
  50420d:	call   DWORD PTR [eax]
  50420f:	fstp   DWORD PTR [esp+0x54]
  504213:	movss  xmm2,DWORD PTR [esp+0x54]
  504219:	lea    eax,[ebx+0x44ec8]
  50421f:	mov    eax,DWORD PTR [eax]
  504221:	test   BYTE PTR [eax+0xb2],0x1
  504228:	je     504244
  50422a:	cmp    DWORD PTR [eax+0x60],0x0
  50422e:	jne    504244
  504230:	mov    DWORD PTR [esp],eax
  504233:	movss  DWORD PTR [esp+0x2c],xmm2
  504239:	call   1db0b8
  50423e:	movss  xmm2,DWORD PTR [esp+0x2c]
  504244:	cvtsi2ss xmm0,DWORD PTR [esp+0x30]
  50424a:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  504252:	movss  xmm1,DWORD PTR [esp+0x34]
  504258:	divss  xmm1,xmm2
  50425c:	movss  DWORD PTR [esp+0x8],xmm1
  504262:	movss  DWORD PTR [esp+0x4],xmm0
  504268:	mov    DWORD PTR [esp+0xc],0x0
  504270:	mov    DWORD PTR [esp],0x0
  504277:	call   1385329  ; UnityEngine.Mathf::Max
  50427c:	fstp   DWORD PTR [esp+0x50]
  504280:	movss  xmm0,DWORD PTR [esp+0x50]
  504286:	movss  DWORD PTR [esp+0x34],xmm0
  50428c:	mov    DWORD PTR [esp+0x4],0x0
  504294:	mov    DWORD PTR [esp],0x0
  50429b:	call   107cf95  ; DIContainerBalancing::get_Service
  5042a0:	mov    esi,eax
  5042a2:	test   esi,esi
  5042a4:	je     50436a
  5042aa:	mov    eax,DWORD PTR [esp+0x20]
  5042ae:	mov    edx,DWORD PTR [eax]
  5042b0:	mov    DWORD PTR [esp+0x28],edx
  5042b4:	mov    eax,DWORD PTR [esp+0x1c]
  5042b8:	mov    eax,DWORD PTR [eax]
  5042ba:	mov    DWORD PTR [esp+0x2c],eax
  5042be:	mov    ecx,DWORD PTR [edx+0xc]
  5042c1:	movzx  eax,WORD PTR [edx+0x2c]
  5042c5:	mov    DWORD PTR [esp+0x24],eax
  5042c9:	mov    edx,DWORD PTR [esi]
  5042cb:	mov    DWORD PTR [esp+0x30],esi
  5042cf:	movzx  eax,WORD PTR [edx+0xaa]
  5042d6:	test   eax,eax
  5042d8:	je     5042e9
  5042da:	mov    esi,DWORD PTR [edx+0x4c]
  5042dd:	xor    edi,edi
  5042df:	cmp    DWORD PTR [esi+edi*8],ecx
  5042e2:	je     504303
  5042e4:	inc    edi
  5042e5:	cmp    edi,eax
  5042e7:	jb     5042df
  5042e9:	mov    eax,DWORD PTR [esp+0x24]
  5042ed:	mov    DWORD PTR [esp+0x8],eax
  5042f1:	mov    DWORD PTR [esp+0x4],ecx
  5042f5:	mov    esi,DWORD PTR [esp+0x30]
  5042f9:	mov    DWORD PTR [esp],esi
  5042fc:	call   1c1964
  504301:	jmp    504316
  504303:	mov    eax,DWORD PTR [esp+0x24]
  504307:	add    eax,DWORD PTR [esi+edi*8+0x4]
  50430b:	lea    eax,[edx+eax*8+0xb4]
  504312:	mov    esi,DWORD PTR [esp+0x30]
  504316:	mov    eax,DWORD PTR [eax+0x4]
  504319:	mov    ecx,DWORD PTR [esp+0x28]
  50431d:	mov    DWORD PTR [esp+0x4],ecx
  504321:	mov    DWORD PTR [esp],eax
  504324:	call   1da450
  504329:	mov    DWORD PTR [esp+0x8],eax
  50432d:	mov    ecx,DWORD PTR [esp+0x2c]
  504331:	mov    DWORD PTR [esp+0x4],ecx
  504335:	mov    DWORD PTR [esp],esi
  504338:	call   DWORD PTR [eax]
  50433a:	test   eax,eax
  50433c:	je     50436a
  50433e:	mov    DWORD PTR [esp],eax
  504341:	mov    DWORD PTR [esp+0x4],0x0
  504349:	call   1702b56  ; ABH.Shared.BalancingData.ScoreBalancingData::get_MaxScoreForBannerSurvive
  50434e:	cvtsi2ss xmm0,eax
  504352:	movss  xmm1,DWORD PTR [esp+0x34]
  504358:	mulss  xmm1,xmm0
  50435c:	cvttss2si edi,xmm1
  504360:	mov    eax,edi
  504362:	lea    esp,[ebp-0xc]
  504365:	pop    esi
  504366:	pop    edi
  504367:	pop    ebx
  504368:	pop    ebp
  504369:	ret
  50436a:	call   1fbc48
  50436f:	call   540b98