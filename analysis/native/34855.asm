
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec5f87:
  ec5f87:	push   ebp
  ec5f88:	mov    ebp,esp
  ec5f8a:	push   ebx
  ec5f8b:	push   edi
  ec5f8c:	push   esi
  ec5f8d:	and    esp,0xfffffff0
  ec5f90:	sub    esp,0x20
  ec5f93:	call   ec5f98
  ec5f98:	pop    ebx
  ec5f99:	add    ebx,0x104bfac
  ec5f9f:	mov    esi,DWORD PTR [ebp+0x8]
  ec5fa2:	mov    al,BYTE PTR [ebx+0x62709]
  ec5fa8:	test   al,al
  ec5faa:	jne    ec5fc3
  ec5fac:	lea    eax,[ebx-0x66ebec]
  ec5fb2:	mov    eax,DWORD PTR [eax]
  ec5fb4:	mov    DWORD PTR [esp],eax
  ec5fb7:	call   1ca6e8
  ec5fbc:	mov    BYTE PTR [ebx+0x62709],0x1
  ec5fc3:	lea    eax,[ebx+0x4a2bc]
  ec5fc9:	mov    eax,DWORD PTR [eax]
  ec5fcb:	mov    DWORD PTR [esp+0x4],eax
  ec5fcf:	mov    DWORD PTR [esp],esi
  ec5fd2:	call   1604e0b  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::RaiseCombatantKnockedOut | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::RaiseCombatantKnockedOut | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::RaiseCombatantKnockedOut | +2 other aliases
  ec5fd7:	cmp    BYTE PTR [esi+0xda],0x0
  ec5fde:	je     ec6153
  ec5fe4:	lea    edi,[ebx+0x458fc]
  ec5fea:	mov    eax,DWORD PTR [edi]
  ec5fec:	test   BYTE PTR [eax+0xb2],0x1
  ec5ff3:	je     ec6005
  ec5ff5:	cmp    DWORD PTR [eax+0x60],0x0
  ec5ff9:	jne    ec6005
  ec5ffb:	mov    DWORD PTR [esp],eax
  ec5ffe:	call   1db0b8
  ec6003:	mov    eax,DWORD PTR [edi]
  ec6005:	mov    ecx,DWORD PTR [eax+0x50]
  ec6008:	mov    ecx,DWORD PTR [ecx+0x8]
  ec600b:	test   ecx,ecx
  ec600d:	je     ec6153
  ec6013:	test   BYTE PTR [eax+0xb2],0x1
  ec601a:	je     ec603a
  ec601c:	cmp    DWORD PTR [eax+0x60],0x0
  ec6020:	jne    ec603a
  ec6022:	mov    DWORD PTR [esp],eax
  ec6025:	call   1db0b8
  ec602a:	mov    eax,DWORD PTR [edi]
  ec602c:	mov    ecx,DWORD PTR [eax+0x50]
  ec602f:	mov    ecx,DWORD PTR [ecx+0x8]
  ec6032:	test   ecx,ecx
  ec6034:	je     ec6177
  ec603a:	cmp    DWORD PTR [ecx+0x40],0x0
  ec603e:	je     ec6153
  ec6044:	test   BYTE PTR [eax+0xb2],0x1
  ec604b:	je     ec606b
  ec604d:	cmp    DWORD PTR [eax+0x60],0x0
  ec6051:	jne    ec606b
  ec6053:	mov    DWORD PTR [esp],eax
  ec6056:	call   1db0b8
  ec605b:	mov    eax,DWORD PTR [edi]
  ec605d:	mov    eax,DWORD PTR [eax+0x50]
  ec6060:	mov    ecx,DWORD PTR [eax+0x8]
  ec6063:	test   ecx,ecx
  ec6065:	je     ec6177
  ec606b:	mov    edi,DWORD PTR [ecx+0x40]
  ec606e:	test   edi,edi
  ec6070:	je     ec6177
  ec6076:	lea    eax,[ebx+0x45874]
  ec607c:	mov    eax,DWORD PTR [eax]
  ec607e:	mov    ecx,DWORD PTR [edi]
  ec6080:	mov    DWORD PTR [esp+0x18],ecx
  ec6084:	movzx  edx,WORD PTR [ecx+0xaa]
  ec608b:	test   edx,edx
  ec608d:	je     ec60a2
  ec608f:	mov    ecx,DWORD PTR [esp+0x18]
  ec6093:	mov    esi,DWORD PTR [ecx+0x4c]
  ec6096:	xor    ecx,ecx
  ec6098:	cmp    DWORD PTR [esi+ecx*8],eax
  ec609b:	je     ec60ba
  ec609d:	inc    ecx
  ec609e:	cmp    ecx,edx
  ec60a0:	jb     ec6098
  ec60a2:	mov    DWORD PTR [esp+0x4],eax
  ec60a6:	mov    DWORD PTR [esp],edi
  ec60a9:	mov    DWORD PTR [esp+0x8],0x2f
  ec60b1:	call   1c1964
  ec60b6:	mov    ecx,eax
  ec60b8:	jmp    ec60c9
  ec60ba:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  ec60be:	mov    ecx,DWORD PTR [esp+0x18]
  ec60c2:	lea    ecx,[ecx+eax*8+0x22c]
  ec60c9:	mov    eax,DWORD PTR [ecx+0x4]
  ec60cc:	mov    DWORD PTR [esp+0x4],eax
  ec60d0:	mov    DWORD PTR [esp],edi
  ec60d3:	call   DWORD PTR [ecx]
  ec60d5:	cmp    eax,0x1
  ec60d8:	mov    esi,DWORD PTR [ebp+0x8]
  ec60db:	jne    ec6153
  ec60dd:	lea    eax,[ebx+0x44e64]
  ec60e3:	mov    eax,DWORD PTR [eax]
  ec60e5:	test   BYTE PTR [eax+0xb2],0x1
  ec60ec:	je     ec60fc
  ec60ee:	cmp    DWORD PTR [eax+0x60],0x0
  ec60f2:	jne    ec60fc
  ec60f4:	mov    DWORD PTR [esp],eax
  ec60f7:	call   1db0b8
  ec60fc:	lea    eax,[ebx+0x56b74]  ; literal "Trying to recalculate turn..."
  ec6102:	mov    eax,DWORD PTR [eax]
  ec6104:	mov    DWORD PTR [esp+0x4],eax
  ec6108:	mov    DWORD PTR [esp+0x8],0x0
  ec6110:	mov    DWORD PTR [esp],0x0
  ec6117:	call   14ed6da  ; UnityEngine.Debug::Log
  ec611c:	mov    DWORD PTR [esp+0x4],0x0
  ec6124:	mov    DWORD PTR [esp],0x0
  ec612b:	call   109314e  ; DIContainerLogic::GetBattleService
  ec6130:	test   eax,eax
  ec6132:	je     ec6177
  ec6134:	mov    eax,DWORD PTR [eax+0x10]
  ec6137:	test   eax,eax
  ec6139:	je     ec6177
  ec613b:	mov    DWORD PTR [esp],eax
  ec613e:	mov    DWORD PTR [esp+0x8],0x0
  ec6146:	mov    DWORD PTR [esp+0x4],0x0
  ec614e:	call   7f99ca  ; PvPAIService::CalculateTurn
  ec6153:	lea    eax,[ebx+0x4a24c]
  ec6159:	mov    eax,DWORD PTR [eax]
  ec615b:	mov    DWORD PTR [esp+0x8],eax
  ec615f:	mov    DWORD PTR [esp],esi
  ec6162:	mov    DWORD PTR [esp+0x4],0x0
  ec616a:	call   160560d  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::set_KnockOutOnDefeat | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::set_KnockOutOnDefeat | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::set_KnockOutOnDefeat | +2 other aliases
  ec616f:	lea    esp,[ebp-0xc]
  ec6172:	pop    esi
  ec6173:	pop    edi
  ec6174:	pop    ebx
  ec6175:	pop    ebp
  ec6176:	ret
  ec6177:	call   1fbc48
  ec617c:	call   ebbb41