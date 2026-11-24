
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00510ba4:
  510ba4:	push   ebp
  510ba5:	mov    ebp,esp
  510ba7:	push   ebx
  510ba8:	push   edi
  510ba9:	push   esi
  510baa:	and    esp,0xfffffff0
  510bad:	sub    esp,0x20
  510bb0:	call   510bb5
  510bb5:	pop    ebx
  510bb6:	add    ebx,0x1a0138f
  510bbc:	mov    esi,DWORD PTR [ebp+0x14]
  510bbf:	mov    al,BYTE PTR [ebx+0x5d51e]
  510bc5:	test   al,al
  510bc7:	jne    510be0
  510bc9:	lea    eax,[ebx-0x66f448]
  510bcf:	mov    eax,DWORD PTR [eax]
  510bd1:	mov    DWORD PTR [esp],eax
  510bd4:	call   1ca6e8
  510bd9:	mov    BYTE PTR [ebx+0x5d51e],0x1
  510be0:	test   esi,esi
  510be2:	je     510de1
  510be8:	mov    DWORD PTR [esp],esi
  510beb:	mov    DWORD PTR [esp+0x4],0x0
  510bf3:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  510bf8:	test   eax,eax
  510bfa:	je     510de1
  510c00:	mov    esi,DWORD PTR [ebp+0x18]
  510c03:	mov    edi,DWORD PTR [ebp+0x8]
  510c06:	mov    DWORD PTR [esp],eax
  510c09:	mov    DWORD PTR [esp+0x4],0x0
  510c11:	call   17031d9  ; ABH.Shared.BalancingData.SkillBalancingData::get_TargetingBehavior
  510c16:	cmp    eax,0x10
  510c19:	jbe    510c41
  510c1b:	mov    DWORD PTR [esp+0x10],esi
  510c1f:	mov    eax,DWORD PTR [ebp+0x14]
  510c22:	mov    DWORD PTR [esp+0xc],eax
  510c26:	mov    eax,DWORD PTR [ebp+0x10]
  510c29:	mov    DWORD PTR [esp+0x8],eax
  510c2d:	mov    eax,DWORD PTR [ebp+0xc]
  510c30:	mov    DWORD PTR [esp+0x4],eax
  510c34:	mov    DWORD PTR [esp],edi
  510c37:	call   5114f0  ; ABH.Services.Logic.BattleService::GetRandomCharacterForAttackSkillTarget
  510c3c:	jmp    510dd9
  510c41:	mov    ecx,esi
  510c43:	mov    edx,DWORD PTR [ebp+0x10]
  510c46:	mov    esi,DWORD PTR [ebp+0xc]
  510c49:	mov    eax,DWORD PTR [ebx+eax*4-0x64fbe0]
  510c50:	add    eax,ebx
  510c52:	jmp    eax
  510c54:	mov    DWORD PTR [esp+0x10],ecx
  510c58:	mov    eax,DWORD PTR [ebp+0x14]
  510c5b:	mov    DWORD PTR [esp+0xc],eax
  510c5f:	mov    DWORD PTR [esp+0x8],edx
  510c63:	mov    DWORD PTR [esp+0x4],esi
  510c67:	jmp    510c34
  510c69:	mov    DWORD PTR [esp+0x10],ecx
  510c6d:	mov    eax,DWORD PTR [ebp+0x14]
  510c70:	mov    DWORD PTR [esp+0xc],eax
  510c74:	mov    DWORD PTR [esp+0x8],edx
  510c78:	mov    DWORD PTR [esp+0x4],esi
  510c7c:	mov    DWORD PTR [esp],edi
  510c7f:	call   511680  ; ABH.Services.Logic.BattleService::GetWeakestCharacterForAttackSkillTarget
  510c84:	jmp    510dd9
  510c89:	mov    DWORD PTR [esp+0x10],ecx
  510c8d:	mov    eax,DWORD PTR [ebp+0x14]
  510c90:	mov    DWORD PTR [esp+0xc],eax
  510c94:	mov    DWORD PTR [esp+0x8],edx
  510c98:	mov    DWORD PTR [esp+0x4],esi
  510c9c:	mov    DWORD PTR [esp],edi
  510c9f:	call   51171d  ; ABH.Services.Logic.BattleService::GetWeakestNoOwnBuffCharacterForAttackSkillTarget
  510ca4:	jmp    510dd9
  510ca9:	mov    DWORD PTR [esp+0x10],ecx
  510cad:	mov    eax,DWORD PTR [ebp+0x14]
  510cb0:	mov    DWORD PTR [esp+0xc],eax
  510cb4:	mov    DWORD PTR [esp+0x8],edx
  510cb8:	mov    DWORD PTR [esp+0x4],esi
  510cbc:	mov    DWORD PTR [esp],edi
  510cbf:	call   5115e3  ; ABH.Services.Logic.BattleService::GetStrongestCharacterForAttackSkillTarget
  510cc4:	jmp    510dd9
  510cc9:	mov    DWORD PTR [esp+0x10],ecx
  510ccd:	mov    eax,DWORD PTR [ebp+0x14]
  510cd0:	mov    DWORD PTR [esp+0xc],eax
  510cd4:	mov    DWORD PTR [esp+0x8],edx
  510cd8:	mov    DWORD PTR [esp+0x4],esi
  510cdc:	mov    DWORD PTR [esp],edi
  510cdf:	call   511a40  ; ABH.Services.Logic.BattleService::GetStrongestNoOwnDebuffCharacterForAttackSkillTarget
  510ce4:	jmp    510dd9
  510ce9:	mov    DWORD PTR [esp+0x10],ecx
  510ced:	mov    eax,DWORD PTR [ebp+0x14]
  510cf0:	mov    DWORD PTR [esp+0xc],eax
  510cf4:	mov    DWORD PTR [esp+0x8],edx
  510cf8:	mov    DWORD PTR [esp+0x4],esi
  510cfc:	mov    DWORD PTR [esp],edi
  510cff:	call   511453  ; ABH.Services.Logic.BattleService::GetMostCursedCharacterForAttackSkillTarget
  510d04:	jmp    510dd9
  510d09:	mov    DWORD PTR [esp+0x10],ecx
  510d0d:	mov    eax,DWORD PTR [ebp+0x14]
  510d10:	mov    DWORD PTR [esp+0xc],eax
  510d14:	mov    DWORD PTR [esp+0x8],edx
  510d18:	mov    DWORD PTR [esp+0x4],esi
  510d1c:	mov    DWORD PTR [esp],edi
  510d1f:	call   5113b6  ; ABH.Services.Logic.BattleService::GetMostBlessedCharacterForAttackSkillTarget
  510d24:	jmp    510dd9
  510d29:	mov    DWORD PTR [esp+0x10],ecx
  510d2d:	mov    eax,DWORD PTR [ebp+0x14]
  510d30:	mov    DWORD PTR [esp+0xc],eax
  510d34:	mov    DWORD PTR [esp+0x8],edx
  510d38:	mov    DWORD PTR [esp+0x4],esi
  510d3c:	mov    DWORD PTR [esp],edi
  510d3f:	call   511db9  ; ABH.Services.Logic.BattleService::GetTauntingCharacterForAttackSkillTarget
  510d44:	jmp    510dd9
  510d49:	mov    DWORD PTR [esp+0x10],ecx
  510d4d:	mov    eax,DWORD PTR [ebp+0x14]
  510d50:	mov    DWORD PTR [esp+0xc],eax
  510d54:	mov    DWORD PTR [esp+0x8],edx
  510d58:	mov    DWORD PTR [esp+0x4],esi
  510d5c:	mov    DWORD PTR [esp],edi
  510d5f:	call   511fd9  ; ABH.Services.Logic.BattleService::GetTauntingNoOwnBuffCharacterForAttackSkillTarget
  510d64:	jmp    510dd9
  510d66:	mov    DWORD PTR [esp+0x10],ecx
  510d6a:	mov    eax,DWORD PTR [ebp+0x14]
  510d6d:	mov    DWORD PTR [esp+0xc],eax
  510d71:	mov    DWORD PTR [esp+0x8],edx
  510d75:	mov    DWORD PTR [esp+0x4],esi
  510d79:	mov    DWORD PTR [esp],edi
  510d7c:	call   512318  ; ABH.Services.Logic.BattleService::GetChargingCharacterForAttackSkillTarget
  510d81:	jmp    510dd9
  510d83:	mov    DWORD PTR [esp+0x10],ecx
  510d87:	mov    eax,DWORD PTR [ebp+0x14]
  510d8a:	mov    DWORD PTR [esp+0xc],eax
  510d8e:	mov    DWORD PTR [esp+0x8],edx
  510d92:	mov    DWORD PTR [esp+0x4],esi
  510d96:	mov    DWORD PTR [esp],edi
  510d99:	call   5126ed  ; ABH.Services.Logic.BattleService::GetMostCursedAndWeakestCharacterForAttackSkillTarget
  510d9e:	jmp    510dd9
  510da0:	lea    eax,[ebx+0x56b50]  ; literal "bird_red"
  510da6:	jmp    510dc6
  510da8:	lea    eax,[ebx+0x56b64]  ; literal "bird_yellow"
  510dae:	jmp    510dc6
  510db0:	lea    eax,[ebx+0x56b5c]  ; literal "bird_white"
  510db6:	jmp    510dc6
  510db8:	lea    eax,[ebx+0x56b54]  ; literal "bird_black"
  510dbe:	jmp    510dc6
  510dc0:	lea    eax,[ebx+0x56b60]  ; literal "bird_blue"
  510dc6:	mov    eax,DWORD PTR [eax]
  510dc8:	mov    DWORD PTR [esp+0x8],esi
  510dcc:	mov    DWORD PTR [esp+0x4],eax
  510dd0:	call   51278a  ; ABH.Services.Logic.BattleService::GetBirdCombatant
  510dd5:	jmp    510dd9
  510dd7:	mov    eax,edx
  510dd9:	lea    esp,[ebp-0xc]
  510ddc:	pop    esi
  510ddd:	pop    edi
  510dde:	pop    ebx
  510ddf:	pop    ebp
  510de0:	ret
  510de1:	call   1fbc48
  510de6:	call   540b98