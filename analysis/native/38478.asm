
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014b89cc:
 14b89cc:	push   ebp
 14b89cd:	mov    ebp,esp
 14b89cf:	push   ebx
 14b89d0:	push   edi
 14b89d1:	push   esi
 14b89d2:	and    esp,0xfffffff0
 14b89d5:	sub    esp,0x20
 14b89d8:	call   14b89dd
 14b89dd:	pop    ebx
 14b89de:	add    ebx,0xa59567
 14b89e4:	mov    edi,DWORD PTR [ebp+0xc]
 14b89e7:	mov    esi,DWORD PTR [ebp+0x8]
 14b89ea:	mov    al,BYTE PTR [ebx+0x65a27]
 14b89f0:	test   al,al
 14b89f2:	jne    14b8a0b
 14b89f4:	lea    eax,[ebx-0x665de4]
 14b89fa:	mov    eax,DWORD PTR [eax]
 14b89fc:	mov    DWORD PTR [esp],eax
 14b89ff:	call   1ca6e8
 14b8a04:	mov    BYTE PTR [ebx+0x65a27],0x1
 14b8a0b:	mov    DWORD PTR [esp+0x4],edi
 14b8a0f:	mov    DWORD PTR [esp],esi
 14b8a12:	mov    DWORD PTR [esp+0x8],0x0
 14b8a1a:	call   eb2518  ; ABH.GameDatas.Battle.SkillBattleDataBase::Init
 14b8a1f:	mov    DWORD PTR [esp],esi
 14b8a22:	mov    DWORD PTR [esp+0x4],0x0
 14b8a2a:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8a2f:	test   eax,eax
 14b8a31:	je     14b8d5c
 14b8a37:	mov    DWORD PTR [esp],eax
 14b8a3a:	mov    DWORD PTR [esp+0x4],0x0
 14b8a42:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8a47:	test   eax,eax
 14b8a49:	je     14b8d5c
 14b8a4f:	lea    edi,[esi+0x40]
 14b8a52:	mov    DWORD PTR [esp+0x14],edi
 14b8a56:	lea    ecx,[ebx+0x56b70]  ; literal "health_in_percent"
 14b8a5c:	mov    ecx,DWORD PTR [ecx]
 14b8a5e:	lea    edx,[ebx+0x4a034]
 14b8a64:	mov    DWORD PTR [esp+0x18],edx
 14b8a68:	mov    edx,DWORD PTR [edx]
 14b8a6a:	mov    DWORD PTR [esp+0xc],edx
 14b8a6e:	mov    DWORD PTR [esp+0x8],edi
 14b8a72:	mov    DWORD PTR [esp+0x4],ecx
 14b8a76:	mov    DWORD PTR [esp],eax
 14b8a79:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 14b8a7e:	mov    DWORD PTR [esp],esi
 14b8a81:	mov    DWORD PTR [esp+0x4],0x0
 14b8a89:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8a8e:	test   eax,eax
 14b8a90:	je     14b8d5c
 14b8a96:	mov    DWORD PTR [esp],eax
 14b8a99:	mov    DWORD PTR [esp+0x4],0x0
 14b8aa1:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8aa6:	test   eax,eax
 14b8aa8:	je     14b8d5c
 14b8aae:	lea    ecx,[esi+0x48]
 14b8ab1:	lea    edx,[ebx+0x56df8]  ; literal "cleanse_chance"
 14b8ab7:	mov    edx,DWORD PTR [edx]
 14b8ab9:	mov    edi,DWORD PTR [esp+0x18]
 14b8abd:	mov    edi,DWORD PTR [edi]
 14b8abf:	mov    DWORD PTR [esp+0xc],edi
 14b8ac3:	mov    DWORD PTR [esp+0x8],ecx
 14b8ac7:	mov    DWORD PTR [esp+0x4],edx
 14b8acb:	mov    DWORD PTR [esp],eax
 14b8ace:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 14b8ad3:	mov    DWORD PTR [esp],esi
 14b8ad6:	mov    DWORD PTR [esp+0x4],0x0
 14b8ade:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8ae3:	test   eax,eax
 14b8ae5:	je     14b8d5c
 14b8aeb:	mov    DWORD PTR [esp],eax
 14b8aee:	mov    DWORD PTR [esp+0x4],0x0
 14b8af6:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8afb:	test   eax,eax
 14b8afd:	je     14b8d5c
 14b8b03:	lea    ecx,[esi+0x58]
 14b8b06:	lea    edx,[ebx+0x56b88]  ; literal "charge"
 14b8b0c:	mov    edx,DWORD PTR [edx]
 14b8b0e:	mov    edi,DWORD PTR [esp+0x18]
 14b8b12:	mov    edi,DWORD PTR [edi]
 14b8b14:	mov    DWORD PTR [esp+0xc],edi
 14b8b18:	mov    DWORD PTR [esp+0x8],ecx
 14b8b1c:	mov    DWORD PTR [esp+0x4],edx
 14b8b20:	mov    DWORD PTR [esp],eax
 14b8b23:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 14b8b28:	mov    DWORD PTR [esp],esi
 14b8b2b:	mov    DWORD PTR [esp+0x4],0x0
 14b8b33:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8b38:	test   eax,eax
 14b8b3a:	je     14b8d5c
 14b8b40:	mov    DWORD PTR [esp],eax
 14b8b43:	mov    DWORD PTR [esp+0x4],0x0
 14b8b4b:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8b50:	test   eax,eax
 14b8b52:	je     14b8d5c
 14b8b58:	lea    ecx,[ebx+0x538b4]  ; literal "all"
 14b8b5e:	mov    ecx,DWORD PTR [ecx]
 14b8b60:	lea    edi,[ebx+0x4a014]
 14b8b66:	mov    edx,DWORD PTR [edi]
 14b8b68:	mov    DWORD PTR [esp+0x8],edx
 14b8b6c:	mov    DWORD PTR [esp+0x4],ecx
 14b8b70:	mov    DWORD PTR [esp],eax
 14b8b73:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 14b8b78:	mov    BYTE PTR [esi+0x50],al
 14b8b7b:	mov    DWORD PTR [esp],esi
 14b8b7e:	mov    DWORD PTR [esp+0x4],0x0
 14b8b86:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8b8b:	test   eax,eax
 14b8b8d:	je     14b8d5c
 14b8b93:	mov    DWORD PTR [esp],eax
 14b8b96:	mov    DWORD PTR [esp+0x4],0x0
 14b8b9e:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8ba3:	test   eax,eax
 14b8ba5:	je     14b8d5c
 14b8bab:	lea    ecx,[ebx+0x56df0]  ; literal "invoker"
 14b8bb1:	mov    ecx,DWORD PTR [ecx]
 14b8bb3:	mov    edx,DWORD PTR [edi]
 14b8bb5:	mov    DWORD PTR [esp+0x8],edx
 14b8bb9:	mov    DWORD PTR [esp+0x4],ecx
 14b8bbd:	mov    DWORD PTR [esp],eax
 14b8bc0:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 14b8bc5:	mov    BYTE PTR [esi+0x53],al
 14b8bc8:	mov    DWORD PTR [esp],esi
 14b8bcb:	mov    DWORD PTR [esp+0x4],0x0
 14b8bd3:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8bd8:	test   eax,eax
 14b8bda:	je     14b8d5c
 14b8be0:	mov    DWORD PTR [esp],eax
 14b8be3:	mov    DWORD PTR [esp+0x4],0x0
 14b8beb:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8bf0:	test   eax,eax
 14b8bf2:	je     14b8d5c
 14b8bf8:	lea    ecx,[ebx+0x56dfc]  ; literal "first_target"
 14b8bfe:	mov    ecx,DWORD PTR [ecx]
 14b8c00:	mov    edx,DWORD PTR [edi]
 14b8c02:	mov    DWORD PTR [esp+0x8],edx
 14b8c06:	mov    DWORD PTR [esp+0x4],ecx
 14b8c0a:	mov    DWORD PTR [esp],eax
 14b8c0d:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 14b8c12:	mov    BYTE PTR [esi+0x54],al
 14b8c15:	mov    DWORD PTR [esp],esi
 14b8c18:	mov    DWORD PTR [esp+0x4],0x0
 14b8c20:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8c25:	test   eax,eax
 14b8c27:	je     14b8d5c
 14b8c2d:	mov    DWORD PTR [esp],eax
 14b8c30:	mov    DWORD PTR [esp+0x4],0x0
 14b8c38:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8c3d:	test   eax,eax
 14b8c3f:	je     14b8d5c
 14b8c45:	lea    ecx,[ebx+0x56df4]  ; literal "self"
 14b8c4b:	mov    ecx,DWORD PTR [ecx]
 14b8c4d:	mov    edx,DWORD PTR [edi]
 14b8c4f:	mov    DWORD PTR [esp+0x8],edx
 14b8c53:	mov    DWORD PTR [esp+0x4],ecx
 14b8c57:	mov    DWORD PTR [esp],eax
 14b8c5a:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 14b8c5f:	mov    BYTE PTR [esi+0x51],al
 14b8c62:	mov    DWORD PTR [esp],esi
 14b8c65:	mov    DWORD PTR [esp+0x4],0x0
 14b8c6d:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8c72:	test   eax,eax
 14b8c74:	je     14b8d5c
 14b8c7a:	mov    DWORD PTR [esp],eax
 14b8c7d:	mov    DWORD PTR [esp+0x4],0x0
 14b8c85:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8c8a:	test   eax,eax
 14b8c8c:	je     14b8d5c
 14b8c92:	lea    ecx,[ebx+0x56e00]  ; literal "cleanse_target"
 14b8c98:	mov    ecx,DWORD PTR [ecx]
 14b8c9a:	mov    edx,DWORD PTR [edi]
 14b8c9c:	mov    DWORD PTR [esp+0x8],edx
 14b8ca0:	mov    DWORD PTR [esp+0x4],ecx
 14b8ca4:	mov    DWORD PTR [esp],eax
 14b8ca7:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
 14b8cac:	mov    BYTE PTR [esi+0x52],al
 14b8caf:	mov    eax,DWORD PTR [ebp+0xc]
 14b8cb2:	test   eax,eax
 14b8cb4:	je     14b8d5c
 14b8cba:	mov    DWORD PTR [esp],eax
 14b8cbd:	mov    DWORD PTR [esp+0x4],0x0
 14b8cc5:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8cca:	test   eax,eax
 14b8ccc:	je     14b8d5c
 14b8cd2:	lea    ecx,[esi+0x4c]
 14b8cd5:	lea    edx,[ebx+0x56e04]  ; literal "additional_percent_on_target"
 14b8cdb:	mov    edx,DWORD PTR [edx]
 14b8cdd:	mov    edi,DWORD PTR [esp+0x18]
 14b8ce1:	mov    edi,DWORD PTR [edi]
 14b8ce3:	mov    DWORD PTR [esp+0xc],edi
 14b8ce7:	mov    DWORD PTR [esp+0x8],ecx
 14b8ceb:	mov    DWORD PTR [esp+0x4],edx
 14b8cef:	mov    DWORD PTR [esp],eax
 14b8cf2:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 14b8cf7:	mov    DWORD PTR [esp],esi
 14b8cfa:	mov    DWORD PTR [esp+0x4],0x0
 14b8d02:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b8d07:	test   eax,eax
 14b8d09:	je     14b8d5c
 14b8d0b:	mov    DWORD PTR [esp],eax
 14b8d0e:	mov    DWORD PTR [esp+0x4],0x0
 14b8d16:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 14b8d1b:	test   eax,eax
 14b8d1d:	je     14b8d5c
 14b8d1f:	add    esi,0x3c
 14b8d22:	lea    ecx,[ebx+0x56e08]  ; literal "health_in_percent_banner"
 14b8d28:	mov    ecx,DWORD PTR [ecx]
 14b8d2a:	mov    edx,DWORD PTR [esp+0x18]
 14b8d2e:	mov    edx,DWORD PTR [edx]
 14b8d30:	mov    DWORD PTR [esp+0xc],edx
 14b8d34:	mov    DWORD PTR [esp+0x8],esi
 14b8d38:	mov    DWORD PTR [esp+0x4],ecx
 14b8d3c:	mov    DWORD PTR [esp],eax
 14b8d3f:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 14b8d44:	test   al,al
 14b8d46:	jne    14b8d54
 14b8d48:	mov    eax,DWORD PTR [esp+0x14]
 14b8d4c:	movss  xmm0,DWORD PTR [eax]
 14b8d50:	movss  DWORD PTR [esi],xmm0
 14b8d54:	lea    esp,[ebp-0xc]
 14b8d57:	pop    esi
 14b8d58:	pop    edi
 14b8d59:	pop    ebx
 14b8d5a:	pop    ebp
 14b8d5b:	ret
 14b8d5c:	call   1fbc48
 14b8d61:	call   14943fc