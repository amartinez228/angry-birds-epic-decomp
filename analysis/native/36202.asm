
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ee8d93:
  ee8d93:	push   ebp
  ee8d94:	mov    ebp,esp
  ee8d96:	push   ebx
  ee8d97:	push   edi
  ee8d98:	push   esi
  ee8d99:	and    esp,0xfffffff0
  ee8d9c:	sub    esp,0x30
  ee8d9f:	call   ee8da4
  ee8da4:	pop    ebx
  ee8da5:	add    ebx,0x10291a0
  ee8dab:	mov    esi,DWORD PTR [ebp+0xc]
  ee8dae:	mov    edi,DWORD PTR [ebp+0x8]
  ee8db1:	mov    al,BYTE PTR [ebx+0x627ea]
  ee8db7:	test   al,al
  ee8db9:	jne    ee8dd2
  ee8dbb:	lea    eax,[ebx-0x670464]
  ee8dc1:	mov    eax,DWORD PTR [eax]
  ee8dc3:	mov    DWORD PTR [esp],eax
  ee8dc6:	call   1ca6e8
  ee8dcb:	mov    BYTE PTR [ebx+0x627ea],0x1
  ee8dd2:	mov    DWORD PTR [esp+0x4],esi
  ee8dd6:	mov    DWORD PTR [esp],edi
  ee8dd9:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
  ee8dde:	mov    DWORD PTR [esp+0x28],0x0
  ee8de6:	mov    eax,DWORD PTR [edi+0x8]
  ee8de9:	test   eax,eax
  ee8deb:	je     ee917f
  ee8df1:	mov    DWORD PTR [esp],eax
  ee8df4:	mov    DWORD PTR [esp+0x4],0x0
  ee8dfc:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee8e01:	test   eax,eax
  ee8e03:	je     ee917f
  ee8e09:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
  ee8e0f:	mov    ecx,DWORD PTR [ecx]
  ee8e11:	lea    edx,[ebx+0x4a034]
  ee8e17:	mov    DWORD PTR [esp+0x1c],edx
  ee8e1b:	mov    edx,DWORD PTR [edx]
  ee8e1d:	mov    DWORD PTR [esp+0xc],edx
  ee8e21:	lea    edx,[esp+0x28]
  ee8e25:	mov    DWORD PTR [esp+0x8],edx
  ee8e29:	mov    DWORD PTR [esp+0x4],ecx
  ee8e2d:	mov    DWORD PTR [esp],eax
  ee8e30:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee8e35:	movss  xmm0,DWORD PTR [esp+0x28]
  ee8e3b:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ee8e43:	movss  DWORD PTR [edi+0x88],xmm0
  ee8e4b:	mov    eax,DWORD PTR [edi+0x8]
  ee8e4e:	test   eax,eax
  ee8e50:	je     ee917f
  ee8e56:	mov    DWORD PTR [esp],eax
  ee8e59:	mov    DWORD PTR [esp+0x4],0x0
  ee8e61:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee8e66:	test   eax,eax
  ee8e68:	je     ee917f
  ee8e6e:	lea    ecx,[edi+0x90]
  ee8e74:	lea    edx,[ebx+0x56c94]  ; literal "bonus_damage_vs_wet"
  ee8e7a:	mov    edx,DWORD PTR [edx]
  ee8e7c:	mov    esi,DWORD PTR [esp+0x1c]
  ee8e80:	mov    esi,DWORD PTR [esi]
  ee8e82:	mov    DWORD PTR [esp+0xc],esi
  ee8e86:	mov    DWORD PTR [esp+0x8],ecx
  ee8e8a:	mov    DWORD PTR [esp+0x4],edx
  ee8e8e:	mov    DWORD PTR [esp],eax
  ee8e91:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee8e96:	mov    eax,DWORD PTR [edi+0x8]
  ee8e99:	test   eax,eax
  ee8e9b:	je     ee917f
  ee8ea1:	mov    DWORD PTR [esp],eax
  ee8ea4:	mov    DWORD PTR [esp+0x4],0x0
  ee8eac:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee8eb1:	test   eax,eax
  ee8eb3:	je     ee917f
  ee8eb9:	mov    esi,edi
  ee8ebb:	lea    ecx,[esi+0x94]
  ee8ec1:	lea    edx,[ebx+0x56c98]  ; literal "bonus_damage_vs_goo"
  ee8ec7:	mov    edx,DWORD PTR [edx]
  ee8ec9:	mov    edi,DWORD PTR [esp+0x1c]
  ee8ecd:	mov    edi,DWORD PTR [edi]
  ee8ecf:	mov    DWORD PTR [esp+0xc],edi
  ee8ed3:	mov    DWORD PTR [esp+0x8],ecx
  ee8ed7:	mov    DWORD PTR [esp+0x4],edx
  ee8edb:	mov    DWORD PTR [esp],eax
  ee8ede:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee8ee3:	mov    eax,DWORD PTR [esi+0x8]
  ee8ee6:	mov    edi,esi
  ee8ee8:	test   eax,eax
  ee8eea:	je     ee917f
  ee8ef0:	mov    DWORD PTR [esp],eax
  ee8ef3:	mov    DWORD PTR [esp+0x4],0x0
  ee8efb:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee8f00:	test   eax,eax
  ee8f02:	je     ee917f
  ee8f08:	mov    esi,edi
  ee8f0a:	lea    ecx,[esi+0x9c]
  ee8f10:	lea    edx,[ebx+0x56c9c]  ; literal "bonus_damage_vs_paint"
  ee8f16:	mov    edx,DWORD PTR [edx]
  ee8f18:	mov    edi,DWORD PTR [esp+0x1c]
  ee8f1c:	mov    edi,DWORD PTR [edi]
  ee8f1e:	mov    DWORD PTR [esp+0xc],edi
  ee8f22:	mov    DWORD PTR [esp+0x8],ecx
  ee8f26:	mov    DWORD PTR [esp+0x4],edx
  ee8f2a:	mov    DWORD PTR [esp],eax
  ee8f2d:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee8f32:	mov    eax,DWORD PTR [esi+0x8]
  ee8f35:	mov    edi,esi
  ee8f37:	test   eax,eax
  ee8f39:	je     ee917f
  ee8f3f:	mov    DWORD PTR [esp],eax
  ee8f42:	mov    DWORD PTR [esp+0x4],0x0
  ee8f4a:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee8f4f:	test   eax,eax
  ee8f51:	je     ee917f
  ee8f57:	mov    esi,edi
  ee8f59:	lea    ecx,[esi+0xa0]
  ee8f5f:	lea    edx,[ebx+0x56ca0]  ; literal "bonus_damage_vs_chocolate"
  ee8f65:	mov    edx,DWORD PTR [edx]
  ee8f67:	mov    edi,DWORD PTR [esp+0x1c]
  ee8f6b:	mov    edi,DWORD PTR [edi]
  ee8f6d:	mov    DWORD PTR [esp+0xc],edi
  ee8f71:	mov    DWORD PTR [esp+0x8],ecx
  ee8f75:	mov    DWORD PTR [esp+0x4],edx
  ee8f79:	mov    DWORD PTR [esp],eax
  ee8f7c:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee8f81:	mov    eax,DWORD PTR [esi+0x8]
  ee8f84:	mov    edi,esi
  ee8f86:	test   eax,eax
  ee8f88:	je     ee917f
  ee8f8e:	mov    DWORD PTR [esp],eax
  ee8f91:	mov    DWORD PTR [esp+0x4],0x0
  ee8f99:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee8f9e:	test   eax,eax
  ee8fa0:	je     ee917f
  ee8fa6:	mov    esi,edi
  ee8fa8:	lea    ecx,[esi+0xa4]
  ee8fae:	lea    edx,[ebx+0x56ca4]  ; literal "bonus_damage_vs_pumpkin"
  ee8fb4:	mov    edx,DWORD PTR [edx]
  ee8fb6:	mov    edi,DWORD PTR [esp+0x1c]
  ee8fba:	mov    edi,DWORD PTR [edi]
  ee8fbc:	mov    DWORD PTR [esp+0xc],edi
  ee8fc0:	mov    DWORD PTR [esp+0x8],ecx
  ee8fc4:	mov    DWORD PTR [esp+0x4],edx
  ee8fc8:	mov    DWORD PTR [esp],eax
  ee8fcb:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee8fd0:	mov    eax,DWORD PTR [esi+0x8]
  ee8fd3:	mov    edi,esi
  ee8fd5:	test   eax,eax
  ee8fd7:	je     ee917f
  ee8fdd:	mov    DWORD PTR [esp],eax
  ee8fe0:	mov    DWORD PTR [esp+0x4],0x0
  ee8fe8:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee8fed:	test   eax,eax
  ee8fef:	je     ee917f
  ee8ff5:	mov    esi,edi
  ee8ff7:	lea    ecx,[esi+0x98]
  ee8ffd:	lea    edx,[ebx+0x56ca8]  ; literal "bonus_damage_vs_stun"
  ee9003:	mov    edx,DWORD PTR [edx]
  ee9005:	mov    edi,DWORD PTR [esp+0x1c]
  ee9009:	mov    edi,DWORD PTR [edi]
  ee900b:	mov    DWORD PTR [esp+0xc],edi
  ee900f:	mov    DWORD PTR [esp+0x8],ecx
  ee9013:	mov    DWORD PTR [esp+0x4],edx
  ee9017:	mov    DWORD PTR [esp],eax
  ee901a:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee901f:	mov    eax,DWORD PTR [esi+0x8]
  ee9022:	mov    edi,esi
  ee9024:	test   eax,eax
  ee9026:	je     ee917f
  ee902c:	mov    DWORD PTR [esp],eax
  ee902f:	mov    DWORD PTR [esp+0x4],0x0
  ee9037:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee903c:	test   eax,eax
  ee903e:	je     ee917f
  ee9044:	mov    esi,edi
  ee9046:	lea    ecx,[esi+0xa8]
  ee904c:	lea    edx,[ebx+0x56cac]  ; literal "bonus_damage_vs_spotlight"
  ee9052:	mov    edx,DWORD PTR [edx]
  ee9054:	mov    edi,DWORD PTR [esp+0x1c]
  ee9058:	mov    edi,DWORD PTR [edi]
  ee905a:	mov    DWORD PTR [esp+0xc],edi
  ee905e:	mov    DWORD PTR [esp+0x8],ecx
  ee9062:	mov    DWORD PTR [esp+0x4],edx
  ee9066:	mov    DWORD PTR [esp],eax
  ee9069:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee906e:	mov    eax,DWORD PTR [esi+0x8]
  ee9071:	mov    edi,esi
  ee9073:	test   eax,eax
  ee9075:	je     ee917f
  ee907b:	mov    DWORD PTR [esp],eax
  ee907e:	mov    DWORD PTR [esp+0x4],0x0
  ee9086:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee908b:	test   eax,eax
  ee908d:	je     ee917f
  ee9093:	mov    esi,edi
  ee9095:	lea    ecx,[esi+0xac]
  ee909b:	lea    edx,[ebx+0x56cb0]  ; literal "bonus_damage_vs_ink"
  ee90a1:	mov    edx,DWORD PTR [edx]
  ee90a3:	mov    edi,DWORD PTR [esp+0x1c]
  ee90a7:	mov    edi,DWORD PTR [edi]
  ee90a9:	mov    DWORD PTR [esp+0xc],edi
  ee90ad:	mov    DWORD PTR [esp+0x8],ecx
  ee90b1:	mov    DWORD PTR [esp+0x4],edx
  ee90b5:	mov    DWORD PTR [esp],eax
  ee90b8:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee90bd:	mov    eax,DWORD PTR [esi+0x8]
  ee90c0:	mov    edi,esi
  ee90c2:	test   eax,eax
  ee90c4:	je     ee917f
  ee90ca:	mov    DWORD PTR [esp],eax
  ee90cd:	mov    DWORD PTR [esp+0x4],0x0
  ee90d5:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ee90da:	test   eax,eax
  ee90dc:	je     ee917f
  ee90e2:	lea    ecx,[edi+0x8c]
  ee90e8:	lea    edx,[ebx+0x56b88]  ; literal "charge"
  ee90ee:	mov    edx,DWORD PTR [edx]
  ee90f0:	mov    esi,DWORD PTR [esp+0x1c]
  ee90f4:	mov    esi,DWORD PTR [esi]
  ee90f6:	mov    DWORD PTR [esp+0xc],esi
  ee90fa:	mov    DWORD PTR [esp+0x8],ecx
  ee90fe:	mov    DWORD PTR [esp+0x4],edx
  ee9102:	mov    DWORD PTR [esp],eax
  ee9105:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ee910a:	mov    eax,DWORD PTR [edi+0x78]
  ee910d:	mov    DWORD PTR [esp+0x1c],eax
  ee9111:	lea    eax,[ebx+0x4a420]
  ee9117:	mov    eax,DWORD PTR [eax]
  ee9119:	mov    DWORD PTR [esp+0x18],eax
  ee911d:	lea    eax,[ebx+0x4599c]
  ee9123:	mov    eax,DWORD PTR [eax]
  ee9125:	mov    DWORD PTR [esp],eax
  ee9128:	call   20bfb2
  ee912d:	mov    esi,eax
  ee912f:	mov    eax,DWORD PTR [esp+0x18]
  ee9133:	mov    DWORD PTR [esp+0x20],eax
  ee9137:	lea    eax,[ebx+0x4a424]
  ee913d:	mov    eax,DWORD PTR [eax]
  ee913f:	mov    DWORD PTR [esp+0xc],eax
  ee9143:	mov    eax,DWORD PTR [esp+0x20]
  ee9147:	mov    DWORD PTR [esp+0x8],eax
  ee914b:	mov    DWORD PTR [esp+0x4],edi
  ee914f:	mov    DWORD PTR [esp],esi
  ee9152:	call   17d93e3  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`5<float, object, object, object, float>::.ctor
  ee9157:	mov    ecx,DWORD PTR [esp+0x1c]
  ee915b:	test   ecx,ecx
  ee915d:	je     ee917f
  ee915f:	lea    eax,[ebx+0x4a428]
  ee9165:	mov    eax,DWORD PTR [eax]
  ee9167:	mov    DWORD PTR [esp+0x8],eax
  ee916b:	mov    DWORD PTR [esp+0x4],esi
  ee916f:	mov    DWORD PTR [esp],ecx
  ee9172:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  ee9177:	lea    esp,[ebp-0xc]
  ee917a:	pop    esi
  ee917b:	pop    edi
  ee917c:	pop    ebx
  ee917d:	pop    ebp
  ee917e:	ret
  ee917f:	call   1fbc48
  ee9184:	call   ebbb41