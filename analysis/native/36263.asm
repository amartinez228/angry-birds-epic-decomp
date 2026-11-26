
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148edc7:
 148edc7:	push   ebp
 148edc8:	mov    ebp,esp
 148edca:	push   ebx
 148edcb:	push   edi
 148edcc:	push   esi
 148edcd:	and    esp,0xfffffff0
 148edd0:	sub    esp,0x30
 148edd3:	call   148edd8
 148edd8:	pop    ebx
 148edd9:	add    ebx,0xa8316c
 148eddf:	mov    al,BYTE PTR [ebx+0x65919]
 148ede5:	test   al,al
 148ede7:	jne    148ee00
 148ede9:	lea    eax,[ebx-0x6703c0]
 148edef:	mov    eax,DWORD PTR [eax]
 148edf1:	mov    DWORD PTR [esp],eax
 148edf4:	call   1ca6e8
 148edf9:	mov    BYTE PTR [ebx+0x65919],0x1
 148ee00:	mov    DWORD PTR [esp+0x28],0x0
 148ee08:	lea    eax,[ebx+0x459bc]
 148ee0e:	mov    eax,DWORD PTR [eax]
 148ee10:	mov    DWORD PTR [esp],eax
 148ee13:	call   20bfb2
 148ee18:	mov    esi,eax
 148ee1a:	mov    DWORD PTR [esp],esi
 148ee1d:	mov    DWORD PTR [esp+0x4],0x0
 148ee25:	call   124632e  ; System.Object::.ctor
 148ee2a:	test   esi,esi
 148ee2c:	je     148f001
 148ee32:	mov    eax,DWORD PTR [ebp+0xc]
 148ee35:	mov    edi,DWORD PTR [ebp+0x8]
 148ee38:	mov    DWORD PTR [esi+0x8],eax
 148ee3b:	mov    DWORD PTR [esi+0xc],edi
 148ee3e:	mov    DWORD PTR [esp+0x4],eax
 148ee42:	mov    DWORD PTR [esp],edi
 148ee45:	mov    DWORD PTR [esp+0x8],0x0
 148ee4d:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
 148ee52:	mov    DWORD PTR [esp+0x28],0x0
 148ee5a:	mov    DWORD PTR [esp],edi
 148ee5d:	mov    DWORD PTR [esp+0x4],0x0
 148ee65:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 148ee6a:	test   eax,eax
 148ee6c:	je     148f001
 148ee72:	mov    DWORD PTR [esp],eax
 148ee75:	mov    DWORD PTR [esp+0x4],0x0
 148ee7d:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148ee82:	test   eax,eax
 148ee84:	je     148f001
 148ee8a:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
 148ee90:	mov    ecx,DWORD PTR [ecx]
 148ee92:	lea    edx,[ebx+0x4a034]
 148ee98:	mov    DWORD PTR [esp+0x1c],edx
 148ee9c:	mov    edx,DWORD PTR [edx]
 148ee9e:	mov    DWORD PTR [esp+0xc],edx
 148eea2:	lea    edx,[esp+0x28]
 148eea6:	mov    DWORD PTR [esp+0x8],edx
 148eeaa:	mov    DWORD PTR [esp+0x4],ecx
 148eeae:	mov    DWORD PTR [esp],eax
 148eeb1:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 148eeb6:	mov    eax,DWORD PTR [ebp+0x8]
 148eeb9:	mov    DWORD PTR [esp],eax
 148eebc:	mov    DWORD PTR [esp+0x4],0x0
 148eec4:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 148eec9:	test   eax,eax
 148eecb:	je     148f001
 148eed1:	mov    DWORD PTR [esp+0x18],esi
 148eed5:	mov    DWORD PTR [esp],eax
 148eed8:	mov    DWORD PTR [esp+0x4],0x0
 148eee0:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148eee5:	test   eax,eax
 148eee7:	je     148f001
 148eeed:	mov    edi,DWORD PTR [ebp+0x8]
 148eef0:	lea    ecx,[edi+0x90]
 148eef6:	lea    edx,[ebx+0x56b30]  ; literal "attack_count"
 148eefc:	mov    edx,DWORD PTR [edx]
 148eefe:	mov    esi,DWORD PTR [esp+0x1c]
 148ef02:	mov    esi,DWORD PTR [esi]
 148ef04:	mov    DWORD PTR [esp+0xc],esi
 148ef08:	mov    DWORD PTR [esp+0x8],ecx
 148ef0c:	mov    DWORD PTR [esp+0x4],edx
 148ef10:	mov    DWORD PTR [esp],eax
 148ef13:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 148ef18:	movss  xmm0,DWORD PTR [esp+0x28]
 148ef1e:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 148ef26:	movss  DWORD PTR [edi+0x88],xmm0
 148ef2e:	mov    DWORD PTR [esp],edi
 148ef31:	mov    DWORD PTR [esp+0x4],0x0
 148ef39:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 148ef3e:	test   eax,eax
 148ef40:	je     148f001
 148ef46:	mov    DWORD PTR [esp],eax
 148ef49:	mov    DWORD PTR [esp+0x4],0x0
 148ef51:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148ef56:	test   eax,eax
 148ef58:	je     148f001
 148ef5e:	lea    esi,[edi+0x8c]
 148ef64:	lea    ecx,[ebx+0x56d00]  ; literal "heal_ally"
 148ef6a:	mov    ecx,DWORD PTR [ecx]
 148ef6c:	mov    edx,DWORD PTR [esp+0x1c]
 148ef70:	mov    edx,DWORD PTR [edx]
 148ef72:	mov    DWORD PTR [esp+0xc],edx
 148ef76:	mov    DWORD PTR [esp+0x8],esi
 148ef7a:	mov    DWORD PTR [esp+0x4],ecx
 148ef7e:	mov    DWORD PTR [esp],eax
 148ef81:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 148ef86:	test   al,al
 148ef88:	jne    148ef90
 148ef8a:	mov    DWORD PTR [esi],0x0
 148ef90:	mov    eax,DWORD PTR [edi+0x70]
 148ef93:	mov    DWORD PTR [esp+0x1c],eax
 148ef97:	lea    eax,[ebx+0x4a488]
 148ef9d:	mov    esi,DWORD PTR [eax]
 148ef9f:	lea    eax,[ebx+0x45954]
 148efa5:	mov    eax,DWORD PTR [eax]
 148efa7:	mov    DWORD PTR [esp],eax
 148efaa:	call   20bfb2
 148efaf:	mov    edi,eax
 148efb1:	mov    DWORD PTR [esp+0x20],esi
 148efb5:	lea    eax,[ebx+0x4a368]
 148efbb:	mov    eax,DWORD PTR [eax]
 148efbd:	mov    DWORD PTR [esp+0xc],eax
 148efc1:	mov    eax,DWORD PTR [esp+0x20]
 148efc5:	mov    DWORD PTR [esp+0x8],eax
 148efc9:	mov    eax,DWORD PTR [esp+0x18]
 148efcd:	mov    DWORD PTR [esp+0x4],eax
 148efd1:	mov    DWORD PTR [esp],edi
 148efd4:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
 148efd9:	mov    ecx,DWORD PTR [esp+0x1c]
 148efdd:	test   ecx,ecx
 148efdf:	je     148f001
 148efe1:	lea    eax,[ebx+0x4a36c]
 148efe7:	mov    eax,DWORD PTR [eax]
 148efe9:	mov    DWORD PTR [esp+0x8],eax
 148efed:	mov    DWORD PTR [esp+0x4],edi
 148eff1:	mov    DWORD PTR [esp],ecx
 148eff4:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 148eff9:	lea    esp,[ebp-0xc]
 148effc:	pop    esi
 148effd:	pop    edi
 148effe:	pop    ebx
 148efff:	pop    ebp
 148f000:	ret
 148f001:	call   1fbc48
 148f006:	call   14943fc