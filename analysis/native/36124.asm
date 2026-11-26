
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed8ef2:
  ed8ef2:	push   ebp
  ed8ef3:	mov    ebp,esp
  ed8ef5:	push   ebx
  ed8ef6:	push   edi
  ed8ef7:	push   esi
  ed8ef8:	and    esp,0xfffffff0
  ed8efb:	sub    esp,0x30
  ed8efe:	call   ed8f03
  ed8f03:	pop    ebx
  ed8f04:	add    ebx,0x1039041
  ed8f0a:	mov    esi,DWORD PTR [ebp+0xc]
  ed8f0d:	mov    edi,DWORD PTR [ebp+0x8]
  ed8f10:	mov    al,BYTE PTR [ebx+0x6279c]
  ed8f16:	test   al,al
  ed8f18:	jne    ed8f31
  ed8f1a:	lea    eax,[ebx-0x6705a4]
  ed8f20:	mov    eax,DWORD PTR [eax]
  ed8f22:	mov    DWORD PTR [esp],eax
  ed8f25:	call   1ca6e8
  ed8f2a:	mov    BYTE PTR [ebx+0x6279c],0x1
  ed8f31:	mov    DWORD PTR [esp+0x4],esi
  ed8f35:	mov    DWORD PTR [esp],edi
  ed8f38:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
  ed8f3d:	mov    DWORD PTR [esp+0x28],0x0
  ed8f45:	mov    eax,DWORD PTR [edi+0x8]
  ed8f48:	test   eax,eax
  ed8f4a:	je     ed914a
  ed8f50:	mov    DWORD PTR [esp],eax
  ed8f53:	mov    DWORD PTR [esp+0x4],0x0
  ed8f5b:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed8f60:	test   eax,eax
  ed8f62:	je     ed914a
  ed8f68:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
  ed8f6e:	mov    ecx,DWORD PTR [ecx]
  ed8f70:	lea    edx,[ebx+0x4a034]
  ed8f76:	mov    DWORD PTR [esp+0x1c],edx
  ed8f7a:	mov    edx,DWORD PTR [edx]
  ed8f7c:	mov    DWORD PTR [esp+0xc],edx
  ed8f80:	lea    edx,[esp+0x28]
  ed8f84:	mov    DWORD PTR [esp+0x8],edx
  ed8f88:	mov    DWORD PTR [esp+0x4],ecx
  ed8f8c:	mov    DWORD PTR [esp],eax
  ed8f8f:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ed8f94:	movss  xmm0,DWORD PTR [esp+0x28]
  ed8f9a:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ed8fa2:	movss  DWORD PTR [edi+0x88],xmm0
  ed8faa:	mov    eax,DWORD PTR [edi+0x8]
  ed8fad:	test   eax,eax
  ed8faf:	je     ed914a
  ed8fb5:	mov    DWORD PTR [esp],eax
  ed8fb8:	mov    DWORD PTR [esp+0x4],0x0
  ed8fc0:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed8fc5:	test   eax,eax
  ed8fc7:	je     ed914a
  ed8fcd:	lea    ecx,[edi+0x8c]
  ed8fd3:	lea    edx,[ebx+0x56b88]  ; literal "charge"
  ed8fd9:	mov    edx,DWORD PTR [edx]
  ed8fdb:	mov    esi,edi
  ed8fdd:	mov    edi,DWORD PTR [esp+0x1c]
  ed8fe1:	mov    edi,DWORD PTR [edi]
  ed8fe3:	mov    DWORD PTR [esp+0xc],edi
  ed8fe7:	mov    DWORD PTR [esp+0x8],ecx
  ed8feb:	mov    DWORD PTR [esp+0x4],edx
  ed8fef:	mov    DWORD PTR [esp],eax
  ed8ff2:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ed8ff7:	mov    eax,DWORD PTR [esi+0x8]
  ed8ffa:	test   eax,eax
  ed8ffc:	je     ed914a
  ed9002:	mov    DWORD PTR [esp],eax
  ed9005:	mov    DWORD PTR [esp+0x4],0x0
  ed900d:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed9012:	test   eax,eax
  ed9014:	je     ed914a
  ed901a:	lea    ecx,[esi+0x90]
  ed9020:	lea    edx,[ebx+0x56b30]  ; literal "attack_count"
  ed9026:	mov    edx,DWORD PTR [edx]
  ed9028:	mov    edi,DWORD PTR [esp+0x1c]
  ed902c:	mov    edi,DWORD PTR [edi]
  ed902e:	mov    DWORD PTR [esp+0xc],edi
  ed9032:	mov    DWORD PTR [esp+0x8],ecx
  ed9036:	mov    DWORD PTR [esp+0x4],edx
  ed903a:	mov    DWORD PTR [esp],eax
  ed903d:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ed9042:	mov    eax,DWORD PTR [esi+0x8]
  ed9045:	test   eax,eax
  ed9047:	je     ed914a
  ed904d:	mov    DWORD PTR [esp],eax
  ed9050:	mov    DWORD PTR [esp+0x4],0x0
  ed9058:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed905d:	test   eax,eax
  ed905f:	je     ed914a
  ed9065:	lea    ecx,[esi+0x94]
  ed906b:	lea    edx,[ebx+0x56ba4]  ; literal "chance"
  ed9071:	mov    edx,DWORD PTR [edx]
  ed9073:	mov    edi,DWORD PTR [esp+0x1c]
  ed9077:	mov    edi,DWORD PTR [edi]
  ed9079:	mov    DWORD PTR [esp+0xc],edi
  ed907d:	mov    edi,esi
  ed907f:	mov    DWORD PTR [esp+0x8],ecx
  ed9083:	mov    DWORD PTR [esp+0x4],edx
  ed9087:	mov    DWORD PTR [esp],eax
  ed908a:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ed908f:	mov    eax,DWORD PTR [edi+0x8]
  ed9092:	test   eax,eax
  ed9094:	je     ed914a
  ed909a:	mov    DWORD PTR [esp],eax
  ed909d:	mov    DWORD PTR [esp+0x4],0x0
  ed90a5:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed90aa:	test   eax,eax
  ed90ac:	je     ed914a
  ed90b2:	lea    ecx,[edi+0x98]
  ed90b8:	lea    edx,[ebx+0x56c18]  ; literal "healing_debuff"
  ed90be:	mov    edx,DWORD PTR [edx]
  ed90c0:	mov    esi,DWORD PTR [esp+0x1c]
  ed90c4:	mov    esi,DWORD PTR [esi]
  ed90c6:	mov    DWORD PTR [esp+0xc],esi
  ed90ca:	mov    DWORD PTR [esp+0x8],ecx
  ed90ce:	mov    DWORD PTR [esp+0x4],edx
  ed90d2:	mov    DWORD PTR [esp],eax
  ed90d5:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ed90da:	mov    eax,DWORD PTR [edi+0x6c]
  ed90dd:	mov    DWORD PTR [esp+0x1c],eax
  ed90e1:	lea    eax,[ebx+0x4a3a0]
  ed90e7:	mov    edi,DWORD PTR [eax]
  ed90e9:	lea    eax,[ebx+0x45954]
  ed90ef:	mov    eax,DWORD PTR [eax]
  ed90f1:	mov    DWORD PTR [esp],eax
  ed90f4:	call   20bfb2
  ed90f9:	mov    esi,eax
  ed90fb:	mov    DWORD PTR [esp+0x20],edi
  ed90ff:	lea    eax,[ebx+0x4a368]
  ed9105:	mov    eax,DWORD PTR [eax]
  ed9107:	mov    DWORD PTR [esp+0xc],eax
  ed910b:	mov    eax,DWORD PTR [esp+0x20]
  ed910f:	mov    DWORD PTR [esp+0x8],eax
  ed9113:	mov    eax,DWORD PTR [ebp+0x8]
  ed9116:	mov    DWORD PTR [esp+0x4],eax
  ed911a:	mov    DWORD PTR [esp],esi
  ed911d:	call   15f5a16  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::.ctor | System.Action`4<float, object, object, object>::.ctor
  ed9122:	mov    ecx,DWORD PTR [esp+0x1c]
  ed9126:	test   ecx,ecx
  ed9128:	je     ed914a
  ed912a:	lea    eax,[ebx+0x4a36c]
  ed9130:	mov    eax,DWORD PTR [eax]
  ed9132:	mov    DWORD PTR [esp+0x8],eax
  ed9136:	mov    DWORD PTR [esp+0x4],esi
  ed913a:	mov    DWORD PTR [esp],ecx
  ed913d:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  ed9142:	lea    esp,[ebp-0xc]
  ed9145:	pop    esi
  ed9146:	pop    edi
  ed9147:	pop    ebx
  ed9148:	pop    ebp
  ed9149:	ret
  ed914a:	call   1fbc48
  ed914f:	call   ebbb41