
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00a4cdaf:
  a4cdaf:	push   ebp
  a4cdb0:	mov    ebp,esp
  a4cdb2:	push   ebx
  a4cdb3:	push   edi
  a4cdb4:	push   esi
  a4cdb5:	and    esp,0xfffffff0
  a4cdb8:	sub    esp,0x50
  a4cdbb:	call   a4cdc0
  a4cdc0:	pop    ebx
  a4cdc1:	add    ebx,0x14c5184
  a4cdc7:	mov    esi,DWORD PTR [ebp+0x8]
  a4cdca:	mov    al,BYTE PTR [ebx+0x60ad5]
  a4cdd0:	test   al,al
  a4cdd2:	jne    a4cdeb
  a4cdd4:	lea    eax,[ebx-0x66efec]
  a4cdda:	mov    eax,DWORD PTR [eax]
  a4cddc:	mov    DWORD PTR [esp],eax
  a4cddf:	call   1ca6e8
  a4cde4:	mov    BYTE PTR [ebx+0x60ad5],0x1
  a4cdeb:	mov    DWORD PTR [esp],esi
  a4cdee:	call   a4c7bf  ; BattleUIStateMgr::LeavePauseOnly
  a4cdf3:	mov    DWORD PTR [esp],esi
  a4cdf6:	call   a4c836  ; BattleUIStateMgr::LeaveAutoBattleOnly
  a4cdfb:	mov    eax,DWORD PTR [esi+0x80]
  a4ce01:	test   eax,eax
  a4ce03:	je     a4d40f
  a4ce09:	mov    DWORD PTR [esp],eax
  a4ce0c:	mov    DWORD PTR [esp+0x4],0x0
  a4ce14:	call   120df7b  ; PopupSingleBirdRevive::Leave
  a4ce19:	mov    eax,DWORD PTR [esi+0x24]
  a4ce1c:	test   eax,eax
  a4ce1e:	je     a4d40f
  a4ce24:	mov    DWORD PTR [esp],eax
  a4ce27:	mov    DWORD PTR [esp+0x8],0x0
  a4ce2f:	mov    DWORD PTR [esp+0x4],0x1
  a4ce37:	call   137e9a1  ; UnityEngine.GameObject::SetActive
  a4ce3c:	mov    eax,DWORD PTR [esi+0x24]
  a4ce3f:	test   eax,eax
  a4ce41:	je     a4d40f
  a4ce47:	lea    ecx,[ebx+0x4a700]
  a4ce4d:	mov    ecx,DWORD PTR [ecx]
  a4ce4f:	mov    DWORD PTR [esp+0x4],ecx
  a4ce53:	mov    DWORD PTR [esp],eax
  a4ce56:	call   15e8f43  ; shared address: UnityEngine.GameObject::GetComponent | UnityEngine.GameObject::GetComponent | UnityEngine.GameObject::GetComponent | +62 other aliases
  a4ce5b:	test   eax,eax
  a4ce5d:	je     a4d40f
  a4ce63:	lea    ecx,[ebx+0x590b0]  ; literal "ReviveBirdsButton_Enter"
  a4ce69:	mov    ecx,DWORD PTR [ecx]
  a4ce6b:	mov    DWORD PTR [esp+0x4],ecx
  a4ce6f:	mov    DWORD PTR [esp],eax
  a4ce72:	mov    DWORD PTR [esp+0x8],0x0
  a4ce7a:	call   14f72b9  ; UnityEngine.Animation::Play
  a4ce7f:	mov    eax,DWORD PTR [esi+0x18]
  a4ce82:	test   eax,eax
  a4ce84:	je     a4d40f
  a4ce8a:	mov    eax,DWORD PTR [eax+0x20]
  a4ce8d:	test   eax,eax
  a4ce8f:	je     a4d40f
  a4ce95:	mov    DWORD PTR [esp],eax
  a4ce98:	mov    DWORD PTR [esp+0x4],0x0
  a4cea0:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  a4cea5:	lea    esi,[ebx+0x45820]
  a4ceab:	mov    ecx,DWORD PTR [esi]
  a4cead:	movzx  edx,WORD PTR [ecx+0xb1]
  a4ceb4:	and    edx,0x100
  a4ceba:	test   al,al
  a4cebc:	je     a4cf03
  a4cebe:	test   dx,dx
  a4cec1:	je     a4ced1
  a4cec3:	cmp    DWORD PTR [ecx+0x60],0x0
  a4cec7:	jne    a4ced1
  a4cec9:	mov    DWORD PTR [esp],ecx
  a4cecc:	call   1db0b8
  a4ced1:	mov    DWORD PTR [esp+0x4],0x0
  a4ced9:	mov    DWORD PTR [esp],0x0
  a4cee0:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
  a4cee5:	test   eax,eax
  a4cee7:	je     a4d40f
  a4ceed:	mov    DWORD PTR [esp+0x34],esi
  a4cef1:	mov    DWORD PTR [esp],eax
  a4cef4:	mov    DWORD PTR [esp+0x4],0x0
  a4cefc:	call   aba57e  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_ReviveBirdsPvpRequirement
  a4cf01:	jmp    a4cf46
  a4cf03:	test   dx,dx
  a4cf06:	je     a4cf16
  a4cf08:	cmp    DWORD PTR [ecx+0x60],0x0
  a4cf0c:	jne    a4cf16
  a4cf0e:	mov    DWORD PTR [esp],ecx
  a4cf11:	call   1db0b8
  a4cf16:	mov    DWORD PTR [esp+0x4],0x0
  a4cf1e:	mov    DWORD PTR [esp],0x0
  a4cf25:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
  a4cf2a:	test   eax,eax
  a4cf2c:	je     a4d40f
  a4cf32:	mov    DWORD PTR [esp+0x34],esi
  a4cf36:	mov    DWORD PTR [esp],eax
  a4cf39:	mov    DWORD PTR [esp+0x4],0x0
  a4cf41:	call   aba50a  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_ReviveBirdsRequirement
  a4cf46:	mov    esi,eax
  a4cf48:	lea    edi,[ebx+0x4584c]
  a4cf4e:	mov    eax,DWORD PTR [edi]
  a4cf50:	test   BYTE PTR [eax+0xb2],0x1
  a4cf57:	je     a4cf67
  a4cf59:	cmp    DWORD PTR [eax+0x60],0x0
  a4cf5d:	jne    a4cf67
  a4cf5f:	mov    DWORD PTR [esp],eax
  a4cf62:	call   1db0b8
  a4cf67:	mov    DWORD PTR [esp+0x4],0x0
  a4cf6f:	mov    DWORD PTR [esp],0x0
  a4cf76:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  a4cf7b:	test   eax,eax
  a4cf7d:	je     a4d40f
  a4cf83:	lea    ecx,[ebx+0x4a210]
  a4cf89:	mov    ecx,DWORD PTR [ecx]
  a4cf8b:	mov    DWORD PTR [esp+0x4],ecx
  a4cf8f:	mov    DWORD PTR [esp],eax
  a4cf92:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  a4cf97:	test   eax,eax
  a4cf99:	je     a4d40f
  a4cf9f:	mov    DWORD PTR [esp],eax
  a4cfa2:	mov    DWORD PTR [esp+0x4],0x0
  a4cfaa:	call   179d980  ; ABH.Shared.Models.PlayerData::get_FirstReviveUsed
  a4cfaf:	test   al,al
  a4cfb1:	je     a4cfbc
  a4cfb3:	mov    DWORD PTR [esp+0x30],edi
  a4cfb7:	jmp    a4d054
  a4cfbc:	mov    DWORD PTR [esp+0x30],edi
  a4cfc0:	lea    eax,[ebx+0x454c4]
  a4cfc6:	mov    eax,DWORD PTR [eax]
  a4cfc8:	mov    DWORD PTR [esp],eax
  a4cfcb:	call   20bfb2
  a4cfd0:	mov    edi,eax
  a4cfd2:	mov    DWORD PTR [esp],edi
  a4cfd5:	mov    DWORD PTR [esp+0x4],0x0
  a4cfdd:	call   179b59b  ; ABH.Shared.Models.Generic.Requirement::.ctor
  a4cfe2:	test   edi,edi
  a4cfe4:	je     a4d40f
  a4cfea:	mov    DWORD PTR [esp],edi
  a4cfed:	mov    DWORD PTR [esp+0x8],0x0
  a4cff5:	mov    DWORD PTR [esp+0x4],0x0
  a4cffd:	call   179b584  ; ABH.Shared.Models.Generic.Requirement::set_Value
  a4d002:	test   esi,esi
  a4d004:	je     a4d40f
  a4d00a:	mov    DWORD PTR [esp],esi
  a4d00d:	mov    DWORD PTR [esp+0x4],0x0
  a4d015:	call   179b551  ; ABH.Shared.Models.Generic.Requirement::get_NameId
  a4d01a:	mov    DWORD PTR [esp+0x4],eax
  a4d01e:	mov    DWORD PTR [esp],edi
  a4d021:	mov    DWORD PTR [esp+0x8],0x0
  a4d029:	call   179b561  ; ABH.Shared.Models.Generic.Requirement::set_NameId
  a4d02e:	mov    DWORD PTR [esp],esi
  a4d031:	mov    DWORD PTR [esp+0x4],0x0
  a4d039:	call   179b52e  ; ABH.Shared.Models.Generic.Requirement::get_RequirementType
  a4d03e:	mov    DWORD PTR [esp+0x4],eax
  a4d042:	mov    DWORD PTR [esp],edi
  a4d045:	mov    DWORD PTR [esp+0x8],0x0
  a4d04d:	call   179b53e  ; ABH.Shared.Models.Generic.Requirement::set_RequirementType
  a4d052:	mov    esi,edi
  a4d054:	mov    eax,DWORD PTR [esp+0x34]
  a4d058:	mov    eax,DWORD PTR [eax]
  a4d05a:	test   BYTE PTR [eax+0xb2],0x1
  a4d061:	je     a4d071
  a4d063:	cmp    DWORD PTR [eax+0x60],0x0
  a4d067:	jne    a4d071
  a4d069:	mov    DWORD PTR [esp],eax
  a4d06c:	call   1db0b8
  a4d071:	mov    DWORD PTR [esp+0x4],0x0
  a4d079:	mov    DWORD PTR [esp],0x0
  a4d080:	call   106b6fb  ; DIContainerBalancing::GetInventoryItemBalancingDataPovider
  a4d085:	mov    edi,eax
  a4d087:	test   esi,esi
  a4d089:	je     a4d40f
  a4d08f:	mov    DWORD PTR [esp],esi
  a4d092:	mov    DWORD PTR [esp+0x34],esi
  a4d096:	mov    DWORD PTR [esp+0x4],0x0
  a4d09e:	call   179b551  ; ABH.Shared.Models.Generic.Requirement::get_NameId
  a4d0a3:	test   edi,edi
  a4d0a5:	je     a4d40f
  a4d0ab:	mov    DWORD PTR [esp+0x4],eax
  a4d0af:	mov    DWORD PTR [esp],edi
  a4d0b2:	mov    DWORD PTR [esp+0xc],0x0
  a4d0ba:	mov    DWORD PTR [esp+0x8],0x1
  a4d0c2:	call   abd53b  ; ABH.Shared.BalancingData.InventoryItemBalancingDataPovider::GetBalancingData
  a4d0c7:	mov    edx,eax
  a4d0c9:	test   edx,edx
  a4d0cb:	je     a4d40f
  a4d0d1:	mov    eax,DWORD PTR [ebp+0x8]
  a4d0d4:	mov    eax,DWORD PTR [eax+0x1c]
  a4d0d7:	mov    DWORD PTR [esp+0x2c],eax
  a4d0db:	lea    eax,[ebx+0x45578]
  a4d0e1:	mov    eax,DWORD PTR [eax]
  a4d0e3:	mov    ecx,DWORD PTR [edx]
  a4d0e5:	mov    DWORD PTR [esp+0x28],edx
  a4d0e9:	movzx  edx,WORD PTR [ecx+0xaa]
  a4d0f0:	test   edx,edx
  a4d0f2:	je     a4d103
  a4d0f4:	mov    esi,DWORD PTR [ecx+0x4c]
  a4d0f7:	xor    edi,edi
  a4d0f9:	cmp    DWORD PTR [esi+edi*8],eax
  a4d0fc:	je     a4d11f
  a4d0fe:	inc    edi
  a4d0ff:	cmp    edi,edx
  a4d101:	jb     a4d0f9
  a4d103:	mov    DWORD PTR [esp+0x4],eax
  a4d107:	mov    esi,DWORD PTR [esp+0x28]
  a4d10b:	mov    DWORD PTR [esp],esi
  a4d10e:	mov    DWORD PTR [esp+0x8],0x1
  a4d116:	call   1c1964
  a4d11b:	mov    ecx,eax
  a4d11d:	jmp    a4d12e
  a4d11f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  a4d123:	lea    ecx,[ecx+eax*8+0xbc]
  a4d12a:	mov    esi,DWORD PTR [esp+0x28]
  a4d12e:	mov    eax,DWORD PTR [ecx+0x4]
  a4d131:	mov    DWORD PTR [esp+0x4],eax
  a4d135:	mov    DWORD PTR [esp],esi
  a4d138:	call   DWORD PTR [ecx]
  a4d13a:	mov    edi,eax
  a4d13c:	mov    eax,DWORD PTR [esp+0x34]
  a4d140:	mov    DWORD PTR [esp],eax
  a4d143:	mov    DWORD PTR [esp+0x4],0x0
  a4d14b:	call   179b574  ; ABH.Shared.Models.Generic.Requirement::get_Value
  a4d150:	fstp   DWORD PTR [esp+0x3c]
  a4d154:	movss  xmm0,DWORD PTR [esp+0x3c]
  a4d15a:	lea    esi,[ebx+0x430e4]
  a4d160:	mov    eax,DWORD PTR [esi]
  a4d162:	test   BYTE PTR [eax+0xb2],0x1
  a4d169:	je     a4d185
  a4d16b:	cmp    DWORD PTR [eax+0x60],0x0
  a4d16f:	jne    a4d185
  a4d171:	mov    DWORD PTR [esp],eax
  a4d174:	movss  DWORD PTR [esp+0x34],xmm0
  a4d17a:	call   1db0b8
  a4d17f:	movss  xmm0,DWORD PTR [esp+0x34]
  a4d185:	mov    ecx,DWORD PTR [esp+0x2c]
  a4d189:	test   ecx,ecx
  a4d18b:	je     a4d40f
  a4d191:	mov    eax,DWORD PTR [esi]
  a4d193:	mov    eax,DWORD PTR [eax+0x50]
  a4d196:	mov    eax,DWORD PTR [eax]
  a4d198:	mov    DWORD PTR [esp+0x10],eax
  a4d19c:	movss  DWORD PTR [esp+0xc],xmm0
  a4d1a2:	mov    DWORD PTR [esp+0x4],edi
  a4d1a6:	mov    DWORD PTR [esp],ecx
  a4d1a9:	mov    DWORD PTR [esp+0x1c],0x0
  a4d1b1:	mov    DWORD PTR [esp+0x18],0x1
  a4d1b9:	mov    DWORD PTR [esp+0x14],0x0
  a4d1c1:	mov    DWORD PTR [esp+0x8],0x0
  a4d1c9:	call   cde26c  ; ResourceCostBlind::SetModel
  a4d1ce:	mov    eax,DWORD PTR [esp+0x30]
  a4d1d2:	mov    eax,DWORD PTR [eax]
  a4d1d4:	test   BYTE PTR [eax+0xb2],0x1
  a4d1db:	je     a4d1eb
  a4d1dd:	cmp    DWORD PTR [eax+0x60],0x0
  a4d1e1:	jne    a4d1eb
  a4d1e3:	mov    DWORD PTR [esp],eax
  a4d1e6:	call   1db0b8
  a4d1eb:	mov    DWORD PTR [esp+0x4],0x0
  a4d1f3:	mov    DWORD PTR [esp],0x0
  a4d1fa:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
  a4d1ff:	test   eax,eax
  a4d201:	je     a4d40f
  a4d207:	mov    eax,DWORD PTR [eax+0x2c]
  a4d20a:	test   eax,eax
  a4d20c:	je     a4d40f
  a4d212:	mov    DWORD PTR [esp],eax
  a4d215:	mov    DWORD PTR [esp+0x8],0x0
  a4d21d:	mov    DWORD PTR [esp+0x4],0x0
  a4d225:	call   1549478  ; GenericUIStateMgr::set_IsInBattle
  a4d22a:	mov    DWORD PTR [esp+0x4],0x0
  a4d232:	mov    DWORD PTR [esp],0x0
  a4d239:	call   106bfe9  ; DIContainerInfrastructure::get_BackButtonMgr
  a4d23e:	test   eax,eax
  a4d240:	je     a4d40f
  a4d246:	mov    DWORD PTR [esp],eax
  a4d249:	mov    DWORD PTR [esp+0x8],0x0
  a4d251:	mov    DWORD PTR [esp+0x4],0x0
  a4d259:	call   e1ccc7  ; AndroidBackButtonMgr::DeRegisterAction
  a4d25e:	mov    DWORD PTR [esp+0x4],0x0
  a4d266:	mov    DWORD PTR [esp],0x0
  a4d26d:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
  a4d272:	test   eax,eax
  a4d274:	je     a4d40f
  a4d27a:	mov    edi,DWORD PTR [eax+0x2c]
  a4d27d:	lea    eax,[ebx+0x464bc]
  a4d283:	mov    eax,DWORD PTR [eax]
  a4d285:	mov    DWORD PTR [esp],eax
  a4d288:	call   20bfb2
  a4d28d:	mov    esi,eax
  a4d28f:	mov    DWORD PTR [esp],esi
  a4d292:	mov    DWORD PTR [esp+0x4],0x0
  a4d29a:	call   f88347  ; BarRegistry::.ctor
  a4d29f:	test   esi,esi
  a4d2a1:	je     a4d40f
  a4d2a7:	mov    DWORD PTR [esi+0x8],0x1
  a4d2ae:	mov    BYTE PTR [esi+0xe],0x1
  a4d2b2:	test   edi,edi
  a4d2b4:	je     a4d40f
  a4d2ba:	mov    DWORD PTR [esp+0x4],esi
  a4d2be:	mov    DWORD PTR [esp],edi
  a4d2c1:	mov    DWORD PTR [esp+0xc],0x0
  a4d2c9:	mov    DWORD PTR [esp+0x8],0x1
  a4d2d1:	call   1540781  ; GenericUIStateMgr::RegisterBar
  a4d2d6:	mov    eax,DWORD PTR [ebp+0x8]
  a4d2d9:	mov    esi,DWORD PTR [eax+0x18]
  a4d2dc:	mov    DWORD PTR [esp+0x4],0x0
  a4d2e4:	mov    DWORD PTR [esp],0x0
  a4d2eb:	call   10659dc  ; DIContainerLogic::GetPacingBalancing
  a4d2f0:	test   eax,eax
  a4d2f2:	je     a4d40f
  a4d2f8:	mov    DWORD PTR [esp],eax
  a4d2fb:	mov    DWORD PTR [esp+0x4],0x0
  a4d303:	call   781a5a  ; PacingBalancing::get_RevivePopupShowTime
  a4d308:	fstp   DWORD PTR [esp+0x38]
  a4d30c:	test   esi,esi
  a4d30e:	je     a4d40f
  a4d314:	movss  xmm0,DWORD PTR [esp+0x38]
  a4d31a:	movss  DWORD PTR [esi+0x84],xmm0
  a4d322:	mov    edi,DWORD PTR [ebp+0x8]
  a4d325:	mov    eax,DWORD PTR [edi+0x20]
  a4d328:	mov    DWORD PTR [esp+0x34],eax
  a4d32c:	lea    eax,[ebx+0x4c888]
  a4d332:	mov    DWORD PTR [esp+0x2c],eax
  a4d336:	mov    eax,DWORD PTR [eax]
  a4d338:	mov    DWORD PTR [esp+0x30],eax
  a4d33c:	lea    eax,[ebx+0x457f4]
  a4d342:	mov    DWORD PTR [esp+0x28],eax
  a4d346:	mov    eax,DWORD PTR [eax]
  a4d348:	mov    DWORD PTR [esp],eax
  a4d34b:	call   20bfb2
  a4d350:	mov    esi,eax
  a4d352:	mov    eax,DWORD PTR [esp+0x30]
  a4d356:	mov    DWORD PTR [esp+0x48],eax
  a4d35a:	mov    eax,DWORD PTR [esp+0x48]
  a4d35e:	mov    DWORD PTR [esp+0x8],eax
  a4d362:	mov    DWORD PTR [esp+0x4],edi
  a4d366:	mov    DWORD PTR [esp],esi
  a4d369:	mov    DWORD PTR [esp+0xc],0x0
  a4d371:	call   17176df  ; System.Action::.ctor
  a4d376:	mov    eax,DWORD PTR [esp+0x34]
  a4d37a:	test   eax,eax
  a4d37c:	je     a4d40f
  a4d382:	mov    DWORD PTR [esp+0x4],esi
  a4d386:	mov    DWORD PTR [esp],eax
  a4d389:	mov    DWORD PTR [esp+0x8],0x0
  a4d391:	call   e8106b  ; UIInputTrigger::remove_Clicked
  a4d396:	mov    eax,DWORD PTR [edi+0x20]
  a4d399:	mov    DWORD PTR [esp+0x34],eax
  a4d39d:	mov    eax,DWORD PTR [esp+0x2c]
  a4d3a1:	mov    eax,DWORD PTR [eax]
  a4d3a3:	mov    DWORD PTR [esp+0x30],eax
  a4d3a7:	mov    eax,DWORD PTR [esp+0x28]
  a4d3ab:	mov    eax,DWORD PTR [eax]
  a4d3ad:	mov    DWORD PTR [esp],eax
  a4d3b0:	call   20bfb2
  a4d3b5:	mov    esi,eax
  a4d3b7:	mov    eax,DWORD PTR [esp+0x30]
  a4d3bb:	mov    DWORD PTR [esp+0x40],eax
  a4d3bf:	mov    eax,DWORD PTR [esp+0x40]
  a4d3c3:	mov    DWORD PTR [esp+0x8],eax
  a4d3c7:	mov    DWORD PTR [esp+0x4],edi
  a4d3cb:	mov    DWORD PTR [esp],esi
  a4d3ce:	mov    DWORD PTR [esp+0xc],0x0
  a4d3d6:	call   17176df  ; System.Action::.ctor
  a4d3db:	mov    eax,DWORD PTR [esp+0x34]
  a4d3df:	test   eax,eax
  a4d3e1:	je     a4d40f
  a4d3e3:	mov    DWORD PTR [esp+0x4],esi
  a4d3e7:	mov    DWORD PTR [esp],eax
  a4d3ea:	mov    DWORD PTR [esp+0x8],0x0
  a4d3f2:	call   e80f22  ; UIInputTrigger::add_Clicked
  a4d3f7:	mov    DWORD PTR [esp],edi
  a4d3fa:	mov    DWORD PTR [esp+0x4],0x0
  a4d402:	call   a4b6c0  ; BattleUIStateMgr::PauseReviveTimer
  a4d407:	lea    esp,[ebp-0xc]
  a4d40a:	pop    esi
  a4d40b:	pop    edi
  a4d40c:	pop    ebx
  a4d40d:	pop    ebp
  a4d40e:	ret
  a4d40f:	call   1fbc48
  a4d414:	call   9ef4ac