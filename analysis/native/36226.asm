
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eecd96:
  eecd96:	push   ebp
  eecd97:	mov    ebp,esp
  eecd99:	push   ebx
  eecd9a:	push   edi
  eecd9b:	push   esi
  eecd9c:	and    esp,0xfffffff0
  eecd9f:	sub    esp,0x50
  eecda2:	call   eecda7
  eecda7:	pop    ebx
  eecda8:	add    ebx,0x102519d
  eecdae:	mov    esi,DWORD PTR [ebp+0xc]
  eecdb1:	mov    edi,DWORD PTR [ebp+0x8]
  eecdb4:	mov    al,BYTE PTR [ebx+0x627fe]
  eecdba:	test   al,al
  eecdbc:	jne    eecdd5
  eecdbe:	lea    eax,[ebx-0x67041c]
  eecdc4:	mov    eax,DWORD PTR [eax]
  eecdc6:	mov    DWORD PTR [esp],eax
  eecdc9:	call   1ca6e8
  eecdce:	mov    BYTE PTR [ebx+0x627fe],0x1
  eecdd5:	xorps  xmm0,xmm0
  eecdd8:	movaps XMMWORD PTR [esp+0x30],xmm0
  eecddd:	mov    DWORD PTR [esp+0x40],0x0
  eecde5:	mov    DWORD PTR [esp+0x4],esi
  eecde9:	mov    DWORD PTR [esp],edi
  eecdec:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
  eecdf1:	mov    DWORD PTR [esp+0x48],0x0
  eecdf9:	mov    eax,DWORD PTR [edi+0x8]
  eecdfc:	test   eax,eax
  eecdfe:	je     eed1aa
  eece04:	mov    DWORD PTR [esp],eax
  eece07:	mov    DWORD PTR [esp+0x4],0x0
  eece0f:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eece14:	test   eax,eax
  eece16:	je     eed1aa
  eece1c:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
  eece22:	mov    ecx,DWORD PTR [ecx]
  eece24:	lea    edx,[ebx+0x4a034]
  eece2a:	mov    DWORD PTR [esp+0x20],edx
  eece2e:	mov    edx,DWORD PTR [edx]
  eece30:	mov    DWORD PTR [esp+0xc],edx
  eece34:	lea    edx,[esp+0x48]
  eece38:	mov    DWORD PTR [esp+0x8],edx
  eece3c:	mov    DWORD PTR [esp+0x4],ecx
  eece40:	mov    DWORD PTR [esp],eax
  eece43:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eece48:	movss  xmm0,DWORD PTR [esp+0x48]
  eece4e:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eece56:	movss  DWORD PTR [edi+0x88],xmm0
  eece5e:	mov    eax,DWORD PTR [edi+0x8]
  eece61:	test   eax,eax
  eece63:	je     eed1aa
  eece69:	mov    DWORD PTR [esp],eax
  eece6c:	mov    DWORD PTR [esp+0x4],0x0
  eece74:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eece79:	test   eax,eax
  eece7b:	je     eed1aa
  eece81:	lea    ecx,[edi+0x8c]
  eece87:	lea    edx,[ebx+0x56b88]  ; literal "charge"
  eece8d:	mov    edx,DWORD PTR [edx]
  eece8f:	mov    esi,DWORD PTR [esp+0x20]
  eece93:	mov    esi,DWORD PTR [esi]
  eece95:	mov    DWORD PTR [esp+0xc],esi
  eece99:	mov    DWORD PTR [esp+0x8],ecx
  eece9d:	mov    DWORD PTR [esp+0x4],edx
  eecea1:	mov    DWORD PTR [esp],eax
  eecea4:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eecea9:	mov    eax,DWORD PTR [edi+0x8]
  eeceac:	test   eax,eax
  eeceae:	je     eed1aa
  eeceb4:	mov    DWORD PTR [esp],eax
  eeceb7:	mov    DWORD PTR [esp+0x4],0x0
  eecebf:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eecec4:	test   eax,eax
  eecec6:	je     eed1aa
  eececc:	mov    esi,edi
  eecece:	lea    ecx,[esi+0x90]
  eeced4:	lea    edx,[ebx+0x56b30]  ; literal "attack_count"
  eeceda:	mov    edx,DWORD PTR [edx]
  eecedc:	mov    edi,DWORD PTR [esp+0x20]
  eecee0:	mov    edi,DWORD PTR [edi]
  eecee2:	mov    DWORD PTR [esp+0xc],edi
  eecee6:	mov    DWORD PTR [esp+0x8],ecx
  eeceea:	mov    DWORD PTR [esp+0x4],edx
  eeceee:	mov    DWORD PTR [esp],eax
  eecef1:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eecef6:	mov    eax,DWORD PTR [esi+0x8]
  eecef9:	mov    edi,esi
  eecefb:	test   eax,eax
  eecefd:	je     eed1aa
  eecf03:	mov    DWORD PTR [esp],eax
  eecf06:	mov    DWORD PTR [esp+0x4],0x0
  eecf0e:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eecf13:	test   eax,eax
  eecf15:	je     eed1aa
  eecf1b:	mov    esi,edi
  eecf1d:	lea    ecx,[esi+0x9c]
  eecf23:	lea    edx,[ebx+0x56ce4]  ; literal "additional_enemies_affected"
  eecf29:	mov    edx,DWORD PTR [edx]
  eecf2b:	mov    edi,DWORD PTR [esp+0x20]
  eecf2f:	mov    edi,DWORD PTR [edi]
  eecf31:	mov    DWORD PTR [esp+0xc],edi
  eecf35:	mov    DWORD PTR [esp+0x8],ecx
  eecf39:	mov    DWORD PTR [esp+0x4],edx
  eecf3d:	mov    DWORD PTR [esp],eax
  eecf40:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eecf45:	mov    eax,DWORD PTR [esi+0x8]
  eecf48:	mov    edi,esi
  eecf4a:	test   eax,eax
  eecf4c:	je     eed1aa
  eecf52:	mov    DWORD PTR [esp],eax
  eecf55:	mov    DWORD PTR [esp+0x4],0x0
  eecf5d:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eecf62:	test   eax,eax
  eecf64:	je     eed1aa
  eecf6a:	lea    ecx,[edi+0x98]
  eecf70:	lea    edx,[ebx+0x56ce8]  ; literal "collateral_damage_in_percent"
  eecf76:	mov    edx,DWORD PTR [edx]
  eecf78:	mov    esi,DWORD PTR [esp+0x20]
  eecf7c:	mov    esi,DWORD PTR [esi]
  eecf7e:	mov    DWORD PTR [esp+0xc],esi
  eecf82:	mov    DWORD PTR [esp+0x8],ecx
  eecf86:	mov    DWORD PTR [esp+0x4],edx
  eecf8a:	mov    DWORD PTR [esp],eax
  eecf8d:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eecf92:	movss  xmm0,DWORD PTR [edi+0x98]
  eecf9a:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eecfa2:	movss  DWORD PTR [edi+0x94],xmm0
  eecfaa:	mov    eax,DWORD PTR [edi+0x8]
  eecfad:	test   eax,eax
  eecfaf:	je     eed1aa
  eecfb5:	mov    DWORD PTR [esp],eax
  eecfb8:	mov    DWORD PTR [esp+0x4],0x0
  eecfc0:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eecfc5:	test   eax,eax
  eecfc7:	je     eed1aa
  eecfcd:	lea    ecx,[ebx+0x4a394]
  eecfd3:	mov    ecx,DWORD PTR [ecx]
  eecfd5:	mov    DWORD PTR [esp+0x4],ecx
  eecfd9:	mov    DWORD PTR [esp],eax
  eecfdc:	call   61f499  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Keys | System.Collections.Generic.Dictionary`2<object, float>::get_Keys
  eecfe1:	test   eax,eax
  eecfe3:	je     eed1aa
  eecfe9:	lea    ecx,[ebx+0x4a440]
  eecfef:	mov    ecx,DWORD PTR [ecx]
  eecff1:	mov    DWORD PTR [esp+0x8],ecx
  eecff5:	mov    DWORD PTR [esp+0x4],eax
  eecff9:	lea    edi,[esp+0x30]
  eecffd:	mov    DWORD PTR [esp],edi
  eed000:	call   15a7e7f  ; shared address: System.Collections.Generic.Dictionary`2+KeyCollection<string, float>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<object, float>::GetEnumerator
  eed005:	sub    esp,0x4
  eed008:	lea    eax,[ebx+0x4a448]
  eed00e:	mov    DWORD PTR [esp+0x20],eax
  eed012:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
  eed01a:	movss  DWORD PTR [esp+0x1c],xmm0
  eed020:	movss  xmm0,DWORD PTR [ebx-0x64f964]
  eed028:	movss  DWORD PTR [esp+0x18],xmm0
  eed02e:	jmp    eed039
  eed030:	mov    eax,DWORD PTR [ebp+0x8]
  eed033:	mov    DWORD PTR [eax+0xa0],esi
  eed039:	mov    eax,DWORD PTR [esp+0x20]
  eed03d:	mov    eax,DWORD PTR [eax]
  eed03f:	mov    DWORD PTR [esp+0x4],eax
  eed043:	mov    DWORD PTR [esp],edi
  eed046:	call   11ad4e3
  eed04b:	test   al,al
  eed04d:	je     eed0cc
  eed04f:	lea    eax,[ebx+0x4a444]
  eed055:	mov    eax,DWORD PTR [eax]
  eed057:	mov    DWORD PTR [esp+0x4],eax
  eed05b:	mov    DWORD PTR [esp],edi
  eed05e:	call   11ad572
  eed063:	mov    esi,eax
  eed065:	mov    eax,DWORD PTR [ebp+0x8]
  eed068:	mov    eax,DWORD PTR [eax+0x8]
  eed06b:	test   eax,eax
  eed06d:	je     eed0d6
  eed06f:	mov    DWORD PTR [esp],eax
  eed072:	mov    DWORD PTR [esp+0x4],0x0
  eed07a:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eed07f:	test   eax,eax
  eed081:	je     eed0e0
  eed083:	lea    ecx,[ebx+0x4a0a8]
  eed089:	mov    ecx,DWORD PTR [ecx]
  eed08b:	mov    DWORD PTR [esp+0x8],ecx
  eed08f:	mov    DWORD PTR [esp+0x4],esi
  eed093:	mov    DWORD PTR [esp],eax
  eed096:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  eed09b:	fstp   DWORD PTR [esp+0x24]
  eed09f:	movss  xmm0,DWORD PTR [esp+0x24]
  eed0a5:	addss  xmm0,DWORD PTR [esp+0x1c]
  eed0ab:	movss  xmm1,DWORD PTR [esp+0x18]
  eed0b1:	andps  xmm0,xmm1
  eed0b4:	movss  xmm1,DWORD PTR [ebx-0x6cefe4]
  eed0bc:	ucomiss xmm1,xmm0
  eed0bf:	jbe    eed039
  eed0c5:	jmp    eed030
  eed0ca:	jmp    eed0ea
  eed0cc:	xor    esi,esi
  eed0ce:	mov    al,0x1
  eed0d0:	mov    DWORD PTR [esp+0x20],eax
  eed0d4:	jmp    eed10a
  eed0d6:	call   1fbc48
  eed0db:	call   ebbb41
  eed0e0:	call   1fbc48
  eed0e5:	jmp    eed1bc
  eed0ea:	cmp    edx,0x1
  eed0ed:	jne    eed1b4
  eed0f3:	mov    DWORD PTR [esp],eax
  eed0f6:	call   1ba3f0
  eed0fb:	mov    esi,DWORD PTR [eax]
  eed0fd:	call   1b9ce0
  eed102:	mov    DWORD PTR [esp+0x20],0x0
  eed10a:	lea    eax,[ebx+0x4a44c]
  eed110:	mov    eax,DWORD PTR [eax]
  eed112:	mov    DWORD PTR [esp+0x4],eax
  eed116:	mov    DWORD PTR [esp],edi
  eed119:	call   11ad478
  eed11e:	mov    eax,DWORD PTR [esp+0x20]
  eed122:	test   al,al
  eed124:	jne    eed132
  eed126:	test   esi,esi
  eed128:	je     eed132
  eed12a:	mov    DWORD PTR [esp],esi
  eed12d:	call   1fbb20
  eed132:	mov    edi,DWORD PTR [ebp+0x8]
  eed135:	mov    eax,DWORD PTR [edi+0x70]
  eed138:	mov    DWORD PTR [esp+0x20],eax
  eed13c:	lea    eax,[ebx+0x4a45c]
  eed142:	mov    eax,DWORD PTR [eax]
  eed144:	mov    DWORD PTR [esp+0x1c],eax
  eed148:	lea    eax,[ebx+0x45954]
  eed14e:	mov    eax,DWORD PTR [eax]
  eed150:	mov    DWORD PTR [esp],eax
  eed153:	call   20bfb2
  eed158:	mov    esi,eax
  eed15a:	mov    eax,DWORD PTR [esp+0x1c]
  eed15e:	mov    DWORD PTR [esp+0x28],eax
  eed162:	lea    eax,[ebx+0x4a368]
  eed168:	mov    eax,DWORD PTR [eax]
  eed16a:	mov    DWORD PTR [esp+0xc],eax
  eed16e:	mov    eax,DWORD PTR [esp+0x28]
  eed172:	mov    DWORD PTR [esp+0x8],eax
  eed176:	mov    DWORD PTR [esp+0x4],edi
  eed17a:	mov    DWORD PTR [esp],esi
  eed17d:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
  eed182:	mov    ecx,DWORD PTR [esp+0x20]
  eed186:	test   ecx,ecx
  eed188:	je     eed1aa
  eed18a:	lea    eax,[ebx+0x4a36c]
  eed190:	mov    eax,DWORD PTR [eax]
  eed192:	mov    DWORD PTR [esp+0x8],eax
  eed196:	mov    DWORD PTR [esp+0x4],esi
  eed19a:	mov    DWORD PTR [esp],ecx
  eed19d:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eed1a2:	lea    esp,[ebp-0xc]
  eed1a5:	pop    esi
  eed1a6:	pop    edi
  eed1a7:	pop    ebx
  eed1a8:	pop    ebp
  eed1a9:	ret
  eed1aa:	call   1fbc48
  eed1af:	call   ebbb41
  eed1b4:	mov    DWORD PTR [esp],eax
  eed1b7:	call   1b9bd0
  eed1bc:	call   ebbb41