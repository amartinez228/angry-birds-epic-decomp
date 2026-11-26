
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148df2c:
 148df2c:	push   ebp
 148df2d:	mov    ebp,esp
 148df2f:	push   ebx
 148df30:	push   edi
 148df31:	push   esi
 148df32:	and    esp,0xfffffff0
 148df35:	sub    esp,0x30
 148df38:	call   148df3d
 148df3d:	pop    ebx
 148df3e:	add    ebx,0xa84007
 148df44:	mov    al,BYTE PTR [ebx+0x65914]
 148df4a:	test   al,al
 148df4c:	jne    148df65
 148df4e:	lea    eax,[ebx-0x6703cc]
 148df54:	mov    eax,DWORD PTR [eax]
 148df56:	mov    DWORD PTR [esp],eax
 148df59:	call   1ca6e8
 148df5e:	mov    BYTE PTR [ebx+0x65914],0x1
 148df65:	mov    DWORD PTR [esp+0x28],0x0
 148df6d:	lea    eax,[ebx+0x459b4]
 148df73:	mov    eax,DWORD PTR [eax]
 148df75:	mov    DWORD PTR [esp],eax
 148df78:	call   20bfb2
 148df7d:	mov    esi,eax
 148df7f:	mov    DWORD PTR [esp],esi
 148df82:	mov    DWORD PTR [esp+0x4],0x0
 148df8a:	call   124632e  ; System.Object::.ctor
 148df8f:	test   esi,esi
 148df91:	je     148e159
 148df97:	mov    eax,DWORD PTR [ebp+0xc]
 148df9a:	mov    edi,DWORD PTR [ebp+0x8]
 148df9d:	mov    DWORD PTR [esi+0x8],eax
 148dfa0:	mov    DWORD PTR [esi+0xc],edi
 148dfa3:	mov    DWORD PTR [esp+0x4],eax
 148dfa7:	mov    DWORD PTR [esp],edi
 148dfaa:	mov    DWORD PTR [esp+0x8],0x0
 148dfb2:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
 148dfb7:	mov    DWORD PTR [esp+0x28],0x0
 148dfbf:	mov    DWORD PTR [esp],edi
 148dfc2:	mov    DWORD PTR [esp+0x4],0x0
 148dfca:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 148dfcf:	test   eax,eax
 148dfd1:	je     148e159
 148dfd7:	mov    DWORD PTR [esp],eax
 148dfda:	mov    DWORD PTR [esp+0x4],0x0
 148dfe2:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148dfe7:	test   eax,eax
 148dfe9:	je     148e159
 148dfef:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
 148dff5:	mov    ecx,DWORD PTR [ecx]
 148dff7:	lea    edx,[ebx+0x4a034]
 148dffd:	mov    DWORD PTR [esp+0x1c],edx
 148e001:	mov    edx,DWORD PTR [edx]
 148e003:	mov    DWORD PTR [esp+0xc],edx
 148e007:	lea    edx,[esp+0x28]
 148e00b:	mov    DWORD PTR [esp+0x8],edx
 148e00f:	mov    DWORD PTR [esp+0x4],ecx
 148e013:	mov    DWORD PTR [esp],eax
 148e016:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 148e01b:	movss  xmm0,DWORD PTR [esp+0x28]
 148e021:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 148e029:	mov    edi,DWORD PTR [ebp+0x8]
 148e02c:	movss  DWORD PTR [edi+0x88],xmm0
 148e034:	mov    DWORD PTR [esp],edi
 148e037:	mov    DWORD PTR [esp+0x4],0x0
 148e03f:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 148e044:	test   eax,eax
 148e046:	je     148e159
 148e04c:	mov    DWORD PTR [esp+0x18],esi
 148e050:	mov    DWORD PTR [esp],eax
 148e053:	mov    DWORD PTR [esp+0x4],0x0
 148e05b:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148e060:	test   eax,eax
 148e062:	je     148e159
 148e068:	lea    ecx,[edi+0x8c]
 148e06e:	lea    edx,[ebx+0x56d00]  ; literal "heal_ally"
 148e074:	mov    edx,DWORD PTR [edx]
 148e076:	mov    esi,DWORD PTR [esp+0x1c]
 148e07a:	mov    esi,DWORD PTR [esi]
 148e07c:	mov    DWORD PTR [esp+0xc],esi
 148e080:	mov    DWORD PTR [esp+0x8],ecx
 148e084:	mov    DWORD PTR [esp+0x4],edx
 148e088:	mov    DWORD PTR [esp],eax
 148e08b:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 148e090:	mov    DWORD PTR [esp],edi
 148e093:	mov    DWORD PTR [esp+0x4],0x0
 148e09b:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 148e0a0:	test   eax,eax
 148e0a2:	je     148e159
 148e0a8:	mov    DWORD PTR [esp],eax
 148e0ab:	mov    DWORD PTR [esp+0x4],0x0
 148e0b3:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
 148e0b8:	test   eax,eax
 148e0ba:	je     148e159
 148e0c0:	lea    ecx,[edi+0x90]
 148e0c6:	lea    edx,[ebx+0x56b30]  ; literal "attack_count"
 148e0cc:	mov    edx,DWORD PTR [edx]
 148e0ce:	mov    esi,DWORD PTR [esp+0x1c]
 148e0d2:	mov    esi,DWORD PTR [esi]
 148e0d4:	mov    DWORD PTR [esp+0xc],esi
 148e0d8:	mov    DWORD PTR [esp+0x8],ecx
 148e0dc:	mov    DWORD PTR [esp+0x4],edx
 148e0e0:	mov    DWORD PTR [esp],eax
 148e0e3:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 148e0e8:	mov    eax,DWORD PTR [edi+0x70]
 148e0eb:	mov    DWORD PTR [esp+0x1c],eax
 148e0ef:	lea    eax,[ebx+0x4a480]
 148e0f5:	mov    esi,DWORD PTR [eax]
 148e0f7:	lea    eax,[ebx+0x45954]
 148e0fd:	mov    eax,DWORD PTR [eax]
 148e0ff:	mov    DWORD PTR [esp],eax
 148e102:	call   20bfb2
 148e107:	mov    edi,eax
 148e109:	mov    DWORD PTR [esp+0x20],esi
 148e10d:	lea    eax,[ebx+0x4a368]
 148e113:	mov    eax,DWORD PTR [eax]
 148e115:	mov    DWORD PTR [esp+0xc],eax
 148e119:	mov    eax,DWORD PTR [esp+0x20]
 148e11d:	mov    DWORD PTR [esp+0x8],eax
 148e121:	mov    eax,DWORD PTR [esp+0x18]
 148e125:	mov    DWORD PTR [esp+0x4],eax
 148e129:	mov    DWORD PTR [esp],edi
 148e12c:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
 148e131:	mov    ecx,DWORD PTR [esp+0x1c]
 148e135:	test   ecx,ecx
 148e137:	je     148e159
 148e139:	lea    eax,[ebx+0x4a36c]
 148e13f:	mov    eax,DWORD PTR [eax]
 148e141:	mov    DWORD PTR [esp+0x8],eax
 148e145:	mov    DWORD PTR [esp+0x4],edi
 148e149:	mov    DWORD PTR [esp],ecx
 148e14c:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 148e151:	lea    esp,[ebp-0xc]
 148e154:	pop    esi
 148e155:	pop    edi
 148e156:	pop    ebx
 148e157:	pop    ebp
 148e158:	ret
 148e159:	call   1fbc48
 148e15e:	call   14943fc