
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01490bb8:
 1490bb8:	push   ebp
 1490bb9:	mov    ebp,esp
 1490bbb:	push   ebx
 1490bbc:	push   edi
 1490bbd:	push   esi
 1490bbe:	and    esp,0xfffffff0
 1490bc1:	sub    esp,0x30
 1490bc4:	call   1490bc9
 1490bc9:	pop    ebx
 1490bca:	add    ebx,0xa8137b
 1490bd0:	mov    esi,DWORD PTR [ebp+0xc]
 1490bd3:	mov    edi,DWORD PTR [ebp+0x8]
 1490bd6:	mov    al,BYTE PTR [ebx+0x65922]
 1490bdc:	test   al,al
 1490bde:	jne    1490bf7
 1490be0:	lea    eax,[ebx-0x6703a4]
 1490be6:	mov    eax,DWORD PTR [eax]
 1490be8:	mov    DWORD PTR [esp],eax
 1490beb:	call   1ca6e8
 1490bf0:	mov    BYTE PTR [ebx+0x65922],0x1
 1490bf7:	mov    DWORD PTR [esp+0x4],esi
 1490bfb:	mov    DWORD PTR [esp],edi
 1490bfe:	mov    DWORD PTR [esp+0x8],0x0
 1490c06:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
 1490c0b:	mov    DWORD PTR [esp+0x28],0x0
 1490c13:	mov    DWORD PTR [esp],edi
 1490c16:	mov    DWORD PTR [esp+0x4],0x0
 1490c1e:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1490c23:	test   eax,eax
 1490c25:	je     1490e0e
 1490c2b:	mov    DWORD PTR [esp],eax
 1490c2e:	mov    DWORD PTR [esp+0x4],0x0
 1490c36:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1490c3b:	test   eax,eax
 1490c3d:	je     1490e0e
 1490c43:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
 1490c49:	mov    ecx,DWORD PTR [ecx]
 1490c4b:	lea    edx,[ebx+0x4a034]
 1490c51:	mov    DWORD PTR [esp+0x1c],edx
 1490c55:	mov    edx,DWORD PTR [edx]
 1490c57:	mov    DWORD PTR [esp+0xc],edx
 1490c5b:	lea    edx,[esp+0x28]
 1490c5f:	mov    DWORD PTR [esp+0x8],edx
 1490c63:	mov    DWORD PTR [esp+0x4],ecx
 1490c67:	mov    DWORD PTR [esp],eax
 1490c6a:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1490c6f:	mov    DWORD PTR [esp],edi
 1490c72:	mov    DWORD PTR [esp+0x4],0x0
 1490c7a:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1490c7f:	test   eax,eax
 1490c81:	je     1490e0e
 1490c87:	mov    DWORD PTR [esp],eax
 1490c8a:	mov    DWORD PTR [esp+0x4],0x0
 1490c92:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1490c97:	test   eax,eax
 1490c99:	je     1490e0e
 1490c9f:	lea    ecx,[edi+0x90]
 1490ca5:	lea    edx,[ebx+0x56b88]  ; literal "charge"
 1490cab:	mov    edx,DWORD PTR [edx]
 1490cad:	mov    esi,edi
 1490caf:	mov    edi,DWORD PTR [esp+0x1c]
 1490cb3:	mov    edi,DWORD PTR [edi]
 1490cb5:	mov    DWORD PTR [esp+0xc],edi
 1490cb9:	mov    DWORD PTR [esp+0x8],ecx
 1490cbd:	mov    DWORD PTR [esp+0x4],edx
 1490cc1:	mov    DWORD PTR [esp],eax
 1490cc4:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1490cc9:	movss  xmm0,DWORD PTR [esp+0x28]
 1490ccf:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 1490cd7:	movss  DWORD PTR [esi+0x88],xmm0
 1490cdf:	mov    DWORD PTR [esp],esi
 1490ce2:	mov    DWORD PTR [esp+0x4],0x0
 1490cea:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1490cef:	test   eax,eax
 1490cf1:	je     1490e0e
 1490cf7:	mov    DWORD PTR [esp],eax
 1490cfa:	mov    DWORD PTR [esp+0x4],0x0
 1490d02:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1490d07:	test   eax,eax
 1490d09:	je     1490e0e
 1490d0f:	lea    ecx,[esi+0x8c]
 1490d15:	lea    edx,[ebx+0x56d14]  ; literal "heal"
 1490d1b:	mov    edx,DWORD PTR [edx]
 1490d1d:	mov    edi,DWORD PTR [esp+0x1c]
 1490d21:	mov    edi,DWORD PTR [edi]
 1490d23:	mov    DWORD PTR [esp+0xc],edi
 1490d27:	mov    DWORD PTR [esp+0x8],ecx
 1490d2b:	mov    DWORD PTR [esp+0x4],edx
 1490d2f:	mov    DWORD PTR [esp],eax
 1490d32:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1490d37:	mov    DWORD PTR [esp],esi
 1490d3a:	mov    DWORD PTR [esp+0x4],0x0
 1490d42:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1490d47:	test   eax,eax
 1490d49:	je     1490e0e
 1490d4f:	mov    DWORD PTR [esp],eax
 1490d52:	mov    DWORD PTR [esp+0x4],0x0
 1490d5a:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 1490d5f:	test   eax,eax
 1490d61:	je     1490e0e
 1490d67:	lea    edi,[esi+0x94]
 1490d6d:	lea    ecx,[ebx+0x56b30]  ; literal "attack_count"
 1490d73:	mov    ecx,DWORD PTR [ecx]
 1490d75:	mov    edx,DWORD PTR [esp+0x1c]
 1490d79:	mov    edx,DWORD PTR [edx]
 1490d7b:	mov    DWORD PTR [esp+0xc],edx
 1490d7f:	mov    DWORD PTR [esp+0x8],edi
 1490d83:	mov    DWORD PTR [esp+0x4],ecx
 1490d87:	mov    DWORD PTR [esp],eax
 1490d8a:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1490d8f:	test   al,al
 1490d91:	jne    1490d99
 1490d93:	mov    DWORD PTR [edi],0x3f800000
 1490d99:	mov    eax,DWORD PTR [esi+0x70]
 1490d9c:	mov    DWORD PTR [esp+0x1c],eax
 1490da0:	lea    eax,[ebx+0x4a494]
 1490da6:	mov    eax,DWORD PTR [eax]
 1490da8:	mov    DWORD PTR [esp+0x18],eax
 1490dac:	lea    eax,[ebx+0x45954]
 1490db2:	mov    eax,DWORD PTR [eax]
 1490db4:	mov    DWORD PTR [esp],eax
 1490db7:	call   20bfb2
 1490dbc:	mov    edi,eax
 1490dbe:	mov    eax,DWORD PTR [esp+0x18]
 1490dc2:	mov    DWORD PTR [esp+0x20],eax
 1490dc6:	lea    eax,[ebx+0x4a368]
 1490dcc:	mov    eax,DWORD PTR [eax]
 1490dce:	mov    DWORD PTR [esp+0xc],eax
 1490dd2:	mov    eax,DWORD PTR [esp+0x20]
 1490dd6:	mov    DWORD PTR [esp+0x8],eax
 1490dda:	mov    DWORD PTR [esp+0x4],esi
 1490dde:	mov    DWORD PTR [esp],edi
 1490de1:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
 1490de6:	mov    ecx,DWORD PTR [esp+0x1c]
 1490dea:	test   ecx,ecx
 1490dec:	je     1490e0e
 1490dee:	lea    eax,[ebx+0x4a36c]
 1490df4:	mov    eax,DWORD PTR [eax]
 1490df6:	mov    DWORD PTR [esp+0x8],eax
 1490dfa:	mov    DWORD PTR [esp+0x4],edi
 1490dfe:	mov    DWORD PTR [esp],ecx
 1490e01:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 1490e06:	lea    esp,[ebp-0xc]
 1490e09:	pop    esi
 1490e0a:	pop    edi
 1490e0b:	pop    ebx
 1490e0c:	pop    ebp
 1490e0d:	ret
 1490e0e:	call   1fbc48
 1490e13:	call   14943fc