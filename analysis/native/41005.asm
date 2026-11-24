
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00510deb:
  510deb:	push   ebp
  510dec:	mov    ebp,esp
  510dee:	push   ebx
  510def:	push   edi
  510df0:	push   esi
  510df1:	and    esp,0xfffffff0
  510df4:	sub    esp,0x20
  510df7:	call   510dfc
  510dfc:	pop    ebx
  510dfd:	add    ebx,0x1a01148
  510e03:	mov    edi,DWORD PTR [ebp+0x14]
  510e06:	test   edi,edi
  510e08:	je     510fed
  510e0e:	mov    DWORD PTR [esp],edi
  510e11:	mov    DWORD PTR [esp+0x4],0x0
  510e19:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  510e1e:	test   eax,eax
  510e20:	je     510fed
  510e26:	mov    esi,DWORD PTR [ebp+0x18]
  510e29:	mov    DWORD PTR [esp],eax
  510e2c:	mov    DWORD PTR [esp+0x4],0x0
  510e34:	call   17031d9  ; ABH.Shared.BalancingData.SkillBalancingData::get_TargetingBehavior
  510e39:	cmp    eax,0x10
  510e3c:	ja     510e49
  510e3e:	mov    eax,DWORD PTR [ebx+eax*4-0x64fb9c]
  510e45:	add    eax,ebx
  510e47:	jmp    eax
  510e49:	mov    DWORD PTR [esp+0x10],esi
  510e4d:	mov    DWORD PTR [esp+0xc],edi
  510e51:	mov    eax,DWORD PTR [ebp+0x10]
  510e54:	mov    DWORD PTR [esp+0x8],eax
  510e58:	mov    eax,DWORD PTR [ebp+0xc]
  510e5b:	mov    DWORD PTR [esp+0x4],eax
  510e5f:	mov    eax,DWORD PTR [ebp+0x8]
  510e62:	mov    DWORD PTR [esp],eax
  510e65:	call   5112d4  ; ABH.Services.Logic.BattleService::GetRandomCharacterForSupportSkillTarget
  510e6a:	lea    esp,[ebp-0xc]
  510e6d:	pop    esi
  510e6e:	pop    edi
  510e6f:	pop    ebx
  510e70:	pop    ebp
  510e71:	ret
  510e72:	mov    DWORD PTR [esp+0x10],esi
  510e76:	mov    DWORD PTR [esp+0xc],edi
  510e7a:	mov    eax,DWORD PTR [ebp+0x10]
  510e7d:	mov    DWORD PTR [esp+0x8],eax
  510e81:	mov    eax,DWORD PTR [ebp+0xc]
  510e84:	mov    DWORD PTR [esp+0x4],eax
  510e88:	mov    eax,DWORD PTR [ebp+0x8]
  510e8b:	mov    DWORD PTR [esp],eax
  510e8e:	call   512bfe  ; ABH.Services.Logic.BattleService::GetWeakestCharacterForSupportSkillTarget
  510e93:	jmp    510e6a
  510e95:	mov    DWORD PTR [esp+0x10],esi
  510e99:	mov    DWORD PTR [esp+0xc],edi
  510e9d:	mov    eax,DWORD PTR [ebp+0x10]
  510ea0:	mov    DWORD PTR [esp+0x8],eax
  510ea4:	mov    eax,DWORD PTR [ebp+0xc]
  510ea7:	mov    DWORD PTR [esp+0x4],eax
  510eab:	mov    eax,DWORD PTR [ebp+0x8]
  510eae:	mov    DWORD PTR [esp],eax
  510eb1:	call   512c8a  ; ABH.Services.Logic.BattleService::GetWeakestNoOwnBuffCharacterForSupportSkillTarget
  510eb6:	jmp    510e6a
  510eb8:	mov    DWORD PTR [esp+0x10],esi
  510ebc:	mov    DWORD PTR [esp+0xc],edi
  510ec0:	mov    eax,DWORD PTR [ebp+0x10]
  510ec3:	mov    DWORD PTR [esp+0x8],eax
  510ec7:	mov    eax,DWORD PTR [ebp+0xc]
  510eca:	mov    DWORD PTR [esp+0x4],eax
  510ece:	mov    eax,DWORD PTR [ebp+0x8]
  510ed1:	mov    DWORD PTR [esp],eax
  510ed4:	call   512b72  ; ABH.Services.Logic.BattleService::GetStrongestCharacterForSupportSkillTarget
  510ed9:	jmp    510e6a
  510edb:	mov    DWORD PTR [esp+0x10],esi
  510edf:	mov    DWORD PTR [esp+0xc],edi
  510ee3:	mov    eax,DWORD PTR [ebp+0x10]
  510ee6:	mov    DWORD PTR [esp+0x8],eax
  510eea:	mov    eax,DWORD PTR [ebp+0xc]
  510eed:	mov    DWORD PTR [esp+0x4],eax
  510ef1:	mov    eax,DWORD PTR [ebp+0x8]
  510ef4:	mov    DWORD PTR [esp],eax
  510ef7:	call   512f92  ; ABH.Services.Logic.BattleService::GetStrongestNoOwnDebuffCharacterForSupportSkillTarget
  510efc:	jmp    510e6a
  510f01:	mov    DWORD PTR [esp+0x10],esi
  510f05:	mov    DWORD PTR [esp+0xc],edi
  510f09:	mov    eax,DWORD PTR [ebp+0x10]
  510f0c:	mov    DWORD PTR [esp+0x8],eax
  510f10:	mov    eax,DWORD PTR [ebp+0xc]
  510f13:	mov    DWORD PTR [esp+0x4],eax
  510f17:	mov    eax,DWORD PTR [ebp+0x8]
  510f1a:	mov    DWORD PTR [esp],eax
  510f1d:	call   512ae6  ; ABH.Services.Logic.BattleService::GetMostCursedCharacterForSupportSkillTarget
  510f22:	jmp    510e6a
  510f27:	mov    DWORD PTR [esp+0x10],esi
  510f2b:	mov    DWORD PTR [esp+0xc],edi
  510f2f:	mov    eax,DWORD PTR [ebp+0x10]
  510f32:	mov    DWORD PTR [esp+0x8],eax
  510f36:	mov    eax,DWORD PTR [ebp+0xc]
  510f39:	mov    DWORD PTR [esp+0x4],eax
  510f3d:	mov    eax,DWORD PTR [ebp+0x8]
  510f40:	mov    DWORD PTR [esp],eax
  510f43:	call   512a5a  ; ABH.Services.Logic.BattleService::GetMostBlessedCharacterForSupportSkillTarget
  510f48:	jmp    510e6a
  510f4d:	mov    DWORD PTR [esp+0x10],esi
  510f51:	mov    DWORD PTR [esp+0xc],edi
  510f55:	mov    eax,DWORD PTR [ebp+0x10]
  510f58:	mov    DWORD PTR [esp+0x8],eax
  510f5c:	mov    eax,DWORD PTR [ebp+0xc]
  510f5f:	mov    DWORD PTR [esp+0x4],eax
  510f63:	mov    eax,DWORD PTR [ebp+0x8]
  510f66:	mov    DWORD PTR [esp],eax
  510f69:	call   5132f7  ; ABH.Services.Logic.BattleService::GetTauntingCharacterForSupportSkillTarget
  510f6e:	jmp    510e6a
  510f73:	mov    DWORD PTR [esp+0x10],esi
  510f77:	mov    DWORD PTR [esp+0xc],edi
  510f7b:	mov    eax,DWORD PTR [ebp+0x10]
  510f7e:	mov    DWORD PTR [esp+0x8],eax
  510f82:	mov    eax,DWORD PTR [ebp+0xc]
  510f85:	mov    DWORD PTR [esp+0x4],eax
  510f89:	mov    eax,DWORD PTR [ebp+0x8]
  510f8c:	mov    DWORD PTR [esp],eax
  510f8f:	call   513506  ; ABH.Services.Logic.BattleService::GetTauntingNoOwnBuffCharacterForSupportSkillTarget
  510f94:	jmp    510e6a
  510f99:	mov    DWORD PTR [esp+0x10],esi
  510f9d:	mov    DWORD PTR [esp+0xc],edi
  510fa1:	mov    eax,DWORD PTR [ebp+0x10]
  510fa4:	mov    DWORD PTR [esp+0x8],eax
  510fa8:	mov    eax,DWORD PTR [ebp+0xc]
  510fab:	mov    DWORD PTR [esp+0x4],eax
  510faf:	mov    eax,DWORD PTR [ebp+0x8]
  510fb2:	mov    DWORD PTR [esp],eax
  510fb5:	call   51382a  ; ABH.Services.Logic.BattleService::GetChargingCharacterForSupportSkillTarget
  510fba:	jmp    510e6a
  510fbf:	mov    DWORD PTR [esp+0x10],esi
  510fc3:	mov    DWORD PTR [esp+0xc],edi
  510fc7:	mov    eax,DWORD PTR [ebp+0x10]
  510fca:	mov    DWORD PTR [esp+0x8],eax
  510fce:	mov    eax,DWORD PTR [ebp+0xc]
  510fd1:	mov    DWORD PTR [esp+0x4],eax
  510fd5:	mov    eax,DWORD PTR [ebp+0x8]
  510fd8:	mov    DWORD PTR [esp],eax
  510fdb:	call   513bee  ; ABH.Services.Logic.BattleService::GetMostCursedAndWeakestCharacterForSupportSkillTarget
  510fe0:	jmp    510e6a
  510fe5:	mov    eax,DWORD PTR [ebp+0x10]
  510fe8:	jmp    510e6a
  510fed:	call   1fbc48
  510ff2:	call   540b98