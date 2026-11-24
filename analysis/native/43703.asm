
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00a4ab16:
  a4ab16:	push   ebp
  a4ab17:	mov    ebp,esp
  a4ab19:	push   ebx
  a4ab1a:	push   edi
  a4ab1b:	push   esi
  a4ab1c:	and    esp,0xfffffff0
  a4ab1f:	sub    esp,0x50
  a4ab22:	call   a4ab27
  a4ab27:	pop    ebx
  a4ab28:	add    ebx,0x14c741d
  a4ab2e:	mov    esi,DWORD PTR [ebp+0x8]
  a4ab31:	mov    al,BYTE PTR [ebx+0x60ab8]
  a4ab37:	test   al,al
  a4ab39:	jne    a4ab52
  a4ab3b:	lea    eax,[ebx-0x66efac]
  a4ab41:	mov    eax,DWORD PTR [eax]
  a4ab43:	mov    DWORD PTR [esp],eax
  a4ab46:	call   1ca6e8
  a4ab4b:	mov    BYTE PTR [ebx+0x60ab8],0x1
  a4ab52:	mov    DWORD PTR [esp+0x48],0x0
  a4ab5a:	mov    DWORD PTR [esp],esi
  a4ab5d:	call   a4b649  ; BattleUIStateMgr::IsButtonAlreadyClickedThisFrame
  a4ab62:	test   al,al
  a4ab64:	jne    a4b62b
  a4ab6a:	mov    ecx,ebx
  a4ab6c:	mov    eax,DWORD PTR [esi+0x18]
  a4ab6f:	test   eax,eax
  a4ab71:	je     a4b637
  a4ab77:	mov    eax,DWORD PTR [eax+0x20]
  a4ab7a:	test   eax,eax
  a4ab7c:	mov    ebx,ecx
  a4ab7e:	je     a4b63f
  a4ab84:	mov    DWORD PTR [esp],eax
  a4ab87:	mov    DWORD PTR [esp+0x4],0x0
  a4ab8f:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  a4ab94:	lea    ecx,[ebx+0x45820]
  a4ab9a:	mov    ecx,DWORD PTR [ecx]
  a4ab9c:	movzx  edx,WORD PTR [ecx+0xb1]
  a4aba3:	and    edx,0x100
  a4aba9:	test   al,al
  a4abab:	je     a4abee
  a4abad:	test   dx,dx
  a4abb0:	je     a4abc0
  a4abb2:	cmp    DWORD PTR [ecx+0x60],0x0
  a4abb6:	jne    a4abc0
  a4abb8:	mov    DWORD PTR [esp],ecx
  a4abbb:	call   1db0b8
  a4abc0:	mov    DWORD PTR [esp+0x4],0x0
  a4abc8:	mov    DWORD PTR [esp],0x0
  a4abcf:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
  a4abd4:	test   eax,eax
  a4abd6:	je     a4b63f
  a4abdc:	mov    DWORD PTR [esp],eax
  a4abdf:	mov    DWORD PTR [esp+0x4],0x0
  a4abe7:	call   aba57e  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_ReviveBirdsPvpRequirement
  a4abec:	jmp    a4ac2d
  a4abee:	test   dx,dx
  a4abf1:	je     a4ac01
  a4abf3:	cmp    DWORD PTR [ecx+0x60],0x0
  a4abf7:	jne    a4ac01
  a4abf9:	mov    DWORD PTR [esp],ecx
  a4abfc:	call   1db0b8
  a4ac01:	mov    DWORD PTR [esp+0x4],0x0
  a4ac09:	mov    DWORD PTR [esp],0x0
  a4ac10:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
  a4ac15:	test   eax,eax
  a4ac17:	je     a4b63f
  a4ac1d:	mov    DWORD PTR [esp],eax
  a4ac20:	mov    DWORD PTR [esp+0x4],0x0
  a4ac28:	call   aba50a  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_ReviveBirdsRequirement
  a4ac2d:	mov    DWORD PTR [esp+0x38],eax
  a4ac31:	lea    eax,[ebx+0x4584c]
  a4ac37:	mov    DWORD PTR [esp+0x1c],eax
  a4ac3b:	mov    eax,DWORD PTR [eax]
  a4ac3d:	test   BYTE PTR [eax+0xb2],0x1
  a4ac44:	je     a4ac54
  a4ac46:	cmp    DWORD PTR [eax+0x60],0x0
  a4ac4a:	jne    a4ac54
  a4ac4c:	mov    DWORD PTR [esp],eax
  a4ac4f:	call   1db0b8
  a4ac54:	mov    DWORD PTR [esp+0x4],0x0
  a4ac5c:	mov    DWORD PTR [esp],0x0
  a4ac63:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  a4ac68:	mov    esi,eax
  a4ac6a:	test   esi,esi
  a4ac6c:	je     a4b63f
  a4ac72:	lea    edi,[ebx+0x4a210]
  a4ac78:	mov    eax,DWORD PTR [edi]
  a4ac7a:	mov    DWORD PTR [esp+0x4],eax
  a4ac7e:	mov    DWORD PTR [esp],esi
  a4ac81:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  a4ac86:	test   eax,eax
  a4ac88:	je     a4b63f
  a4ac8e:	mov    DWORD PTR [esp],eax
  a4ac91:	mov    DWORD PTR [esp+0x4],0x0
  a4ac99:	call   179d980  ; ABH.Shared.Models.PlayerData::get_FirstReviveUsed
  a4ac9e:	test   al,al
  a4aca0:	je     a4acab
  a4aca2:	mov    DWORD PTR [esp+0x18],edi
  a4aca6:	jmp    a4ad5b
  a4acab:	mov    DWORD PTR [esp+0x34],esi
  a4acaf:	lea    eax,[ebx+0x454c4]
  a4acb5:	mov    eax,DWORD PTR [eax]
  a4acb7:	mov    DWORD PTR [esp],eax
  a4acba:	call   20bfb2
  a4acbf:	mov    esi,eax
  a4acc1:	mov    DWORD PTR [esp],esi
  a4acc4:	mov    DWORD PTR [esp+0x4],0x0
  a4accc:	call   179b59b  ; ABH.Shared.Models.Generic.Requirement::.ctor
  a4acd1:	test   esi,esi
  a4acd3:	je     a4b63f
  a4acd9:	mov    DWORD PTR [esp+0x18],edi
  a4acdd:	mov    DWORD PTR [esp],esi
  a4ace0:	mov    DWORD PTR [esp+0x8],0x0
  a4ace8:	mov    DWORD PTR [esp+0x4],0x0
  a4acf0:	call   179b584  ; ABH.Shared.Models.Generic.Requirement::set_Value
  a4acf5:	mov    eax,DWORD PTR [esp+0x38]
  a4acf9:	test   eax,eax
  a4acfb:	je     a4b63f
  a4ad01:	mov    DWORD PTR [esp],eax
  a4ad04:	mov    DWORD PTR [esp+0x4],0x0
  a4ad0c:	mov    edi,ebx
  a4ad0e:	call   179b551  ; ABH.Shared.Models.Generic.Requirement::get_NameId
  a4ad13:	mov    DWORD PTR [esp+0x4],eax
  a4ad17:	mov    DWORD PTR [esp],esi
  a4ad1a:	mov    DWORD PTR [esp+0x8],0x0
  a4ad22:	mov    ebx,edi
  a4ad24:	call   179b561  ; ABH.Shared.Models.Generic.Requirement::set_NameId
  a4ad29:	mov    eax,DWORD PTR [esp+0x38]
  a4ad2d:	mov    DWORD PTR [esp],eax
  a4ad30:	mov    ebx,edi
  a4ad32:	mov    DWORD PTR [esp+0x4],0x0
  a4ad3a:	call   179b52e  ; ABH.Shared.Models.Generic.Requirement::get_RequirementType
  a4ad3f:	mov    DWORD PTR [esp+0x4],eax
  a4ad43:	mov    DWORD PTR [esp],esi
  a4ad46:	mov    DWORD PTR [esp+0x8],0x0
  a4ad4e:	call   179b53e  ; ABH.Shared.Models.Generic.Requirement::set_RequirementType
  a4ad53:	mov    DWORD PTR [esp+0x38],esi
  a4ad57:	mov    esi,DWORD PTR [esp+0x34]
  a4ad5b:	mov    DWORD PTR [esp+0x4],0x0
  a4ad63:	mov    DWORD PTR [esp],0x0
  a4ad6a:	call   10924ed  ; DIContainerLogic::get_RequirementService
  a4ad6f:	mov    DWORD PTR [esp+0x2c],eax
  a4ad73:	mov    DWORD PTR [esp],esi
  a4ad76:	mov    DWORD PTR [esp+0x4],0x0
  a4ad7e:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
  a4ad83:	mov    DWORD PTR [esp+0x28],eax
  a4ad87:	lea    eax,[ebx+0x4520c]
  a4ad8d:	mov    eax,DWORD PTR [eax]
  a4ad8f:	mov    DWORD PTR [esp],eax
  a4ad92:	call   20bfb2
  a4ad97:	mov    edi,eax
  a4ad99:	lea    eax,[ebx+0x496c4]
  a4ad9f:	mov    eax,DWORD PTR [eax]
  a4ada1:	mov    DWORD PTR [esp+0x4],eax
  a4ada5:	mov    DWORD PTR [esp],edi
  a4ada8:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  a4adad:	test   edi,edi
  a4adaf:	je     a4b63f
  a4adb5:	mov    DWORD PTR [esp+0x34],esi
  a4adb9:	lea    eax,[ebx+0x496c8]
  a4adbf:	mov    eax,DWORD PTR [eax]
  a4adc1:	mov    DWORD PTR [esp+0x8],eax
  a4adc5:	mov    eax,DWORD PTR [esp+0x38]
  a4adc9:	mov    DWORD PTR [esp+0x4],eax
  a4adcd:	mov    DWORD PTR [esp],edi
  a4add0:	mov    DWORD PTR [esp+0x24],edi
  a4add4:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  a4add9:	mov    edx,DWORD PTR [esp+0x2c]
  a4addd:	test   edx,edx
  a4addf:	je     a4b63f
  a4ade5:	lea    eax,[ebx+0x45ef8]
  a4adeb:	mov    eax,DWORD PTR [eax]
  a4aded:	lea    ecx,[ebx+0x59070]  ; literal "revive_birds"
  a4adf3:	mov    DWORD PTR [esp+0x30],ebx
  a4adf7:	mov    ecx,DWORD PTR [ecx]
  a4adf9:	mov    DWORD PTR [esp+0x20],ecx
  a4adfd:	mov    ecx,DWORD PTR [edx]
  a4adff:	mov    ebx,edx
  a4ae01:	movzx  edx,WORD PTR [ecx+0xaa]
  a4ae08:	test   edx,edx
  a4ae0a:	je     a4ae1b
  a4ae0c:	mov    esi,DWORD PTR [ecx+0x4c]
  a4ae0f:	xor    edi,edi
  a4ae11:	cmp    DWORD PTR [esi+edi*8],eax
  a4ae14:	je     a4ae39
  a4ae16:	inc    edi
  a4ae17:	cmp    edi,edx
  a4ae19:	jb     a4ae11
  a4ae1b:	mov    DWORD PTR [esp+0x4],eax
  a4ae1f:	mov    esi,ebx
  a4ae21:	mov    DWORD PTR [esp],esi
  a4ae24:	mov    DWORD PTR [esp+0x8],0x7
  a4ae2c:	mov    ebx,DWORD PTR [esp+0x30]
  a4ae30:	call   1c1964
  a4ae35:	mov    ecx,eax
  a4ae37:	jmp    a4ae4a
  a4ae39:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  a4ae3d:	lea    ecx,[ecx+eax*8+0xec]
  a4ae44:	mov    esi,ebx
  a4ae46:	mov    ebx,DWORD PTR [esp+0x30]
  a4ae4a:	mov    eax,DWORD PTR [ecx+0x4]
  a4ae4d:	mov    DWORD PTR [esp+0x10],eax
  a4ae51:	mov    eax,DWORD PTR [esp+0x20]
  a4ae55:	mov    DWORD PTR [esp+0xc],eax
  a4ae59:	mov    eax,DWORD PTR [esp+0x24]
  a4ae5d:	mov    DWORD PTR [esp+0x8],eax
  a4ae61:	mov    eax,DWORD PTR [esp+0x28]
  a4ae65:	mov    DWORD PTR [esp+0x4],eax
  a4ae69:	mov    DWORD PTR [esp],esi
  a4ae6c:	mov    esi,ebx
  a4ae6e:	call   DWORD PTR [ecx]
  a4ae70:	test   al,al
  a4ae72:	mov    edi,DWORD PTR [ebp+0x8]
  a4ae75:	je     a4afc7
  a4ae7b:	mov    eax,DWORD PTR [edi+0x18]
  a4ae7e:	test   eax,eax
  a4ae80:	je     a4b633
  a4ae86:	cmp    BYTE PTR [eax+0x80],0x0
  a4ae8d:	mov    edi,DWORD PTR [esp+0x34]
  a4ae91:	mov    ebx,esi
  a4ae93:	je     a4afb2
  a4ae99:	mov    eax,DWORD PTR [esp+0x18]
  a4ae9d:	mov    eax,DWORD PTR [eax]
  a4ae9f:	mov    DWORD PTR [esp+0x4],eax
  a4aea3:	mov    DWORD PTR [esp],edi
  a4aea6:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  a4aeab:	test   eax,eax
  a4aead:	je     a4b63f
  a4aeb3:	mov    DWORD PTR [esp],eax
  a4aeb6:	mov    DWORD PTR [esp+0x8],0x0
  a4aebe:	mov    DWORD PTR [esp+0x4],0x1
  a4aec6:	call   179d994  ; ABH.Shared.Models.PlayerData::set_FirstReviveUsed
  a4aecb:	mov    eax,DWORD PTR [ebp+0x8]
  a4aece:	mov    eax,DWORD PTR [eax+0x20]
  a4aed1:	mov    DWORD PTR [esp+0x38],eax
  a4aed5:	lea    eax,[ebx+0x4c888]
  a4aedb:	mov    edi,DWORD PTR [eax]
  a4aedd:	lea    eax,[ebx+0x457f4]
  a4aee3:	mov    eax,DWORD PTR [eax]
  a4aee5:	mov    DWORD PTR [esp],eax
  a4aee8:	call   20bfb2
  a4aeed:	mov    esi,eax
  a4aeef:	mov    DWORD PTR [esp+0x40],edi
  a4aef3:	mov    edi,DWORD PTR [ebp+0x8]
  a4aef6:	mov    eax,DWORD PTR [esp+0x40]
  a4aefa:	mov    DWORD PTR [esp+0x8],eax
  a4aefe:	mov    DWORD PTR [esp+0x4],edi
  a4af02:	mov    DWORD PTR [esp],esi
  a4af05:	mov    DWORD PTR [esp+0xc],0x0
  a4af0d:	call   17176df  ; System.Action::.ctor
  a4af12:	mov    eax,DWORD PTR [esp+0x38]
  a4af16:	test   eax,eax
  a4af18:	je     a4b63f
  a4af1e:	mov    DWORD PTR [esp+0x4],esi
  a4af22:	mov    DWORD PTR [esp],eax
  a4af25:	mov    DWORD PTR [esp+0x8],0x0
  a4af2d:	call   e8106b  ; UIInputTrigger::remove_Clicked
  a4af32:	mov    eax,DWORD PTR [edi+0x18]
  a4af35:	test   eax,eax
  a4af37:	je     a4b63f
  a4af3d:	mov    DWORD PTR [esp],eax
  a4af40:	mov    esi,ebx
  a4af42:	call   9f4901  ; BattleMgrBase::ReviveAllBirds
  a4af47:	mov    eax,DWORD PTR [esp+0x1c]
  a4af4b:	mov    eax,DWORD PTR [eax]
  a4af4d:	test   BYTE PTR [eax+0xb2],0x1
  a4af54:	mov    edi,DWORD PTR [esp+0x34]
  a4af58:	je     a4af6a
  a4af5a:	cmp    DWORD PTR [eax+0x60],0x0
  a4af5e:	jne    a4af6a
  a4af60:	mov    DWORD PTR [esp],eax
  a4af63:	mov    ebx,esi
  a4af65:	call   1db0b8
  a4af6a:	mov    DWORD PTR [esp+0x4],0x0
  a4af72:	mov    DWORD PTR [esp],0x0
  a4af79:	mov    ebx,esi
  a4af7b:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
  a4af80:	test   eax,eax
  a4af82:	je     a4b633
  a4af88:	mov    eax,DWORD PTR [eax+0x2c]
  a4af8b:	test   eax,eax
  a4af8d:	je     a4b633
  a4af93:	mov    DWORD PTR [esp],eax
  a4af96:	mov    DWORD PTR [esp+0x4],0x0
  a4af9e:	mov    ebx,esi
  a4afa0:	call   154acdc  ; GenericUIStateMgr::UpdateLuckyCoinsBar
  a4afa5:	fstp   st(0)
  a4afa7:	mov    eax,DWORD PTR [ebp+0x8]
  a4afaa:	mov    DWORD PTR [esp],eax
  a4afad:	call   a4b7c4  ; BattleUIStateMgr::LeaveReviveButton
  a4afb2:	mov    DWORD PTR [esp],edi
  a4afb5:	mov    DWORD PTR [esp+0x4],0x0
  a4afbd:	call   6cb120  ; ABH.GameDatas.PlayerGameData::SavePlayerData
  a4afc2:	jmp    a4b62b
  a4afc7:	mov    eax,DWORD PTR [esp+0x38]
  a4afcb:	test   eax,eax
  a4afcd:	mov    ebx,esi
  a4afcf:	je     a4b56d
  a4afd5:	mov    DWORD PTR [esp],eax
  a4afd8:	mov    DWORD PTR [esp+0x4],0x0
  a4afe0:	mov    esi,eax
  a4afe2:	call   179b52e  ; ABH.Shared.Models.Generic.Requirement::get_RequirementType
  a4afe7:	cmp    eax,0x1
  a4afea:	mov    eax,esi
  a4afec:	jne    a4b56d
  a4aff2:	mov    DWORD PTR [esp+0x48],0x0
  a4affa:	mov    DWORD PTR [esp+0x4],0x0
  a4b002:	mov    DWORD PTR [esp],0x0
  a4b009:	mov    edi,eax
  a4b00b:	call   106b137  ; DIContainerLogic::get_InventoryService
  a4b010:	mov    esi,eax
  a4b012:	mov    eax,DWORD PTR [esp+0x34]
  a4b016:	mov    DWORD PTR [esp],eax
  a4b019:	mov    DWORD PTR [esp+0x4],0x0
  a4b021:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
  a4b026:	mov    DWORD PTR [esp+0x34],eax
  a4b02a:	mov    DWORD PTR [esp],edi
  a4b02d:	mov    DWORD PTR [esp+0x4],0x0
  a4b035:	call   179b551  ; ABH.Shared.Models.Generic.Requirement::get_NameId
  a4b03a:	test   esi,esi
  a4b03c:	je     a4b63f
  a4b042:	lea    ecx,[esp+0x48]
  a4b046:	mov    DWORD PTR [esp+0xc],ecx
  a4b04a:	mov    DWORD PTR [esp+0x8],eax
  a4b04e:	mov    eax,DWORD PTR [esp+0x34]
  a4b052:	mov    DWORD PTR [esp+0x4],eax
  a4b056:	mov    DWORD PTR [esp],esi
  a4b059:	mov    DWORD PTR [esp+0x10],0x0
  a4b061:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  a4b066:	test   al,al
  a4b068:	mov    edi,DWORD PTR [ebp+0x8]
  a4b06b:	je     a4b56d
  a4b071:	mov    esi,DWORD PTR [esp+0x48]
  a4b075:	test   esi,esi
  a4b077:	je     a4b63f
  a4b07d:	lea    eax,[ebx+0x45854]
  a4b083:	mov    DWORD PTR [esp+0x34],eax
  a4b087:	mov    eax,DWORD PTR [eax]
  a4b089:	mov    ecx,DWORD PTR [esi]
  a4b08b:	mov    DWORD PTR [esp+0x38],ecx
  a4b08f:	movzx  edx,WORD PTR [ecx+0xaa]
  a4b096:	test   edx,edx
  a4b098:	je     a4b0ad
  a4b09a:	mov    ecx,DWORD PTR [esp+0x38]
  a4b09e:	mov    edi,DWORD PTR [ecx+0x4c]
  a4b0a1:	xor    ecx,ecx
  a4b0a3:	cmp    DWORD PTR [edi+ecx*8],eax
  a4b0a6:	je     a4b0c5
  a4b0a8:	inc    ecx
  a4b0a9:	cmp    ecx,edx
  a4b0ab:	jb     a4b0a3
  a4b0ad:	mov    DWORD PTR [esp+0x4],eax
  a4b0b1:	mov    DWORD PTR [esp],esi
  a4b0b4:	mov    DWORD PTR [esp+0x8],0x0
  a4b0bc:	call   1c1964
  a4b0c1:	mov    ecx,eax
  a4b0c3:	jmp    a4b0d4
  a4b0c5:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  a4b0c9:	mov    ecx,DWORD PTR [esp+0x38]
  a4b0cd:	lea    ecx,[ecx+eax*8+0xb4]
  a4b0d4:	mov    eax,DWORD PTR [ecx+0x4]
  a4b0d7:	mov    DWORD PTR [esp+0x4],eax
  a4b0db:	mov    DWORD PTR [esp],esi
  a4b0de:	call   DWORD PTR [ecx]
  a4b0e0:	mov    esi,eax
  a4b0e2:	test   esi,esi
  a4b0e4:	je     a4b63f
  a4b0ea:	lea    eax,[ebx+0x45858]
  a4b0f0:	mov    DWORD PTR [esp+0x38],eax
  a4b0f4:	mov    eax,DWORD PTR [eax]
  a4b0f6:	mov    ebx,DWORD PTR [esi]
  a4b0f8:	movzx  edx,WORD PTR [ebx+0xaa]
  a4b0ff:	test   edx,edx
  a4b101:	je     a4b112
  a4b103:	mov    edi,DWORD PTR [ebx+0x4c]
  a4b106:	xor    ecx,ecx
  a4b108:	cmp    DWORD PTR [edi+ecx*8],eax
  a4b10b:	je     a4b12e
  a4b10d:	inc    ecx
  a4b10e:	cmp    ecx,edx
  a4b110:	jb     a4b108
  a4b112:	mov    DWORD PTR [esp+0x4],eax
  a4b116:	mov    DWORD PTR [esp],esi
  a4b119:	mov    DWORD PTR [esp+0x8],0x0
  a4b121:	mov    ebx,DWORD PTR [esp+0x30]
  a4b125:	call   1c1964
  a4b12a:	mov    ecx,eax
  a4b12c:	jmp    a4b13d
  a4b12e:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  a4b132:	lea    ecx,[ebx+eax*8+0xb4]
  a4b139:	mov    ebx,DWORD PTR [esp+0x30]
  a4b13d:	mov    eax,DWORD PTR [ecx+0x4]
  a4b140:	mov    DWORD PTR [esp+0x4],eax
  a4b144:	mov    DWORD PTR [esp],esi
  a4b147:	call   DWORD PTR [ecx]
  a4b149:	mov    esi,eax
  a4b14b:	lea    eax,[ebx+0x430e4]
  a4b151:	mov    DWORD PTR [esp+0x2c],eax
  a4b155:	mov    eax,DWORD PTR [eax]
  a4b157:	test   BYTE PTR [eax+0xb2],0x1
  a4b15e:	mov    edi,DWORD PTR [ebp+0x8]
  a4b161:	je     a4b171
  a4b163:	cmp    DWORD PTR [eax+0x60],0x0
  a4b167:	jne    a4b171
  a4b169:	mov    DWORD PTR [esp],eax
  a4b16c:	call   1db0b8
  a4b171:	mov    DWORD PTR [esp+0x30],ebx
  a4b175:	lea    eax,[ebx+0x56af4]  ; literal "lucky_coin"
  a4b17b:	mov    eax,DWORD PTR [eax]
  a4b17d:	mov    DWORD PTR [esp+0x8],eax
  a4b181:	mov    DWORD PTR [esp+0x4],esi
  a4b185:	mov    DWORD PTR [esp+0xc],0x0
  a4b18d:	mov    DWORD PTR [esp],0x0
  a4b194:	call   ca24cf  ; System.String::op_Equality
  a4b199:	test   al,al
  a4b19b:	je     a4b214
  a4b19d:	mov    eax,DWORD PTR [esp+0x1c]
  a4b1a1:	mov    eax,DWORD PTR [eax]
  a4b1a3:	test   BYTE PTR [eax+0xb2],0x1
  a4b1aa:	je     a4b1be
  a4b1ac:	cmp    DWORD PTR [eax+0x60],0x0
  a4b1b0:	jne    a4b1be
  a4b1b2:	mov    DWORD PTR [esp],eax
  a4b1b5:	mov    ebx,DWORD PTR [esp+0x30]
  a4b1b9:	call   1db0b8
  a4b1be:	mov    DWORD PTR [esp+0x4],0x0
  a4b1c6:	mov    DWORD PTR [esp],0x0
  a4b1cd:	mov    ebx,DWORD PTR [esp+0x30]
  a4b1d1:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
  a4b1d6:	test   eax,eax
  a4b1d8:	je     a4b63b
  a4b1de:	mov    eax,DWORD PTR [eax+0x2c]
  a4b1e1:	test   eax,eax
  a4b1e3:	je     a4b63b
  a4b1e9:	mov    eax,DWORD PTR [eax+0x24]
  a4b1ec:	test   eax,eax
  a4b1ee:	je     a4b63b
  a4b1f4:	mov    ebx,DWORD PTR [esp+0x30]
  a4b1f8:	lea    ecx,[ebx+0x4bf38]
  a4b1fe:	mov    ecx,DWORD PTR [ecx]
  a4b200:	mov    DWORD PTR [esp+0x8],ecx
  a4b204:	mov    DWORD PTR [esp],eax
  a4b207:	mov    DWORD PTR [esp+0x4],0x1
  a4b20f:	jmp    a4b535
  a4b214:	mov    esi,DWORD PTR [esp+0x48]
  a4b218:	test   esi,esi
  a4b21a:	je     a4b63b
  a4b220:	mov    eax,DWORD PTR [esp+0x34]
  a4b224:	mov    eax,DWORD PTR [eax]
  a4b226:	mov    ebx,DWORD PTR [esi]
  a4b228:	movzx  edx,WORD PTR [ebx+0xaa]
  a4b22f:	test   edx,edx
  a4b231:	je     a4b242
  a4b233:	mov    edi,DWORD PTR [ebx+0x4c]
  a4b236:	xor    ecx,ecx
  a4b238:	cmp    DWORD PTR [edi+ecx*8],eax
  a4b23b:	je     a4b25e
  a4b23d:	inc    ecx
  a4b23e:	cmp    ecx,edx
  a4b240:	jb     a4b238
  a4b242:	mov    DWORD PTR [esp+0x4],eax
  a4b246:	mov    DWORD PTR [esp],esi
  a4b249:	mov    DWORD PTR [esp+0x8],0x0
  a4b251:	mov    ebx,DWORD PTR [esp+0x30]
  a4b255:	call   1c1964
  a4b25a:	mov    ecx,eax
  a4b25c:	jmp    a4b26d
  a4b25e:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  a4b262:	lea    ecx,[ebx+eax*8+0xb4]
  a4b269:	mov    ebx,DWORD PTR [esp+0x30]
  a4b26d:	mov    eax,DWORD PTR [ecx+0x4]
  a4b270:	mov    DWORD PTR [esp+0x4],eax
  a4b274:	mov    DWORD PTR [esp],esi
  a4b277:	call   DWORD PTR [ecx]
  a4b279:	mov    esi,eax
  a4b27b:	test   esi,esi
  a4b27d:	je     a4b63b
  a4b283:	mov    eax,DWORD PTR [esp+0x38]
  a4b287:	mov    eax,DWORD PTR [eax]
  a4b289:	mov    ebx,DWORD PTR [esi]
  a4b28b:	movzx  edx,WORD PTR [ebx+0xaa]
  a4b292:	test   edx,edx
  a4b294:	je     a4b2a5
  a4b296:	mov    edi,DWORD PTR [ebx+0x4c]
  a4b299:	xor    ecx,ecx
  a4b29b:	cmp    DWORD PTR [edi+ecx*8],eax
  a4b29e:	je     a4b2c1
  a4b2a0:	inc    ecx
  a4b2a1:	cmp    ecx,edx
  a4b2a3:	jb     a4b29b
  a4b2a5:	mov    DWORD PTR [esp+0x4],eax
  a4b2a9:	mov    DWORD PTR [esp],esi
  a4b2ac:	mov    DWORD PTR [esp+0x8],0x0
  a4b2b4:	mov    ebx,DWORD PTR [esp+0x30]
  a4b2b8:	call   1c1964
  a4b2bd:	mov    ecx,eax
  a4b2bf:	jmp    a4b2d0
  a4b2c1:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  a4b2c5:	lea    ecx,[ebx+eax*8+0xb4]
  a4b2cc:	mov    ebx,DWORD PTR [esp+0x30]
  a4b2d0:	mov    eax,DWORD PTR [ecx+0x4]
  a4b2d3:	mov    DWORD PTR [esp+0x4],eax
  a4b2d7:	mov    DWORD PTR [esp],esi
  a4b2da:	mov    esi,ebx
  a4b2dc:	call   DWORD PTR [ecx]
  a4b2de:	mov    ecx,eax
  a4b2e0:	mov    eax,DWORD PTR [esp+0x2c]
  a4b2e4:	mov    eax,DWORD PTR [eax]
  a4b2e6:	test   BYTE PTR [eax+0xb2],0x1
  a4b2ed:	mov    edi,DWORD PTR [ebp+0x8]
  a4b2f0:	je     a4b30a
  a4b2f2:	cmp    DWORD PTR [eax+0x60],0x0
  a4b2f6:	jne    a4b30a
  a4b2f8:	mov    DWORD PTR [esp],eax
  a4b2fb:	mov    ebx,esi
  a4b2fd:	mov    DWORD PTR [esp+0x28],ecx
  a4b301:	call   1db0b8
  a4b306:	mov    ecx,DWORD PTR [esp+0x28]
  a4b30a:	lea    eax,[esi+0x56af0]
  a4b310:	mov    eax,DWORD PTR [eax]
  a4b312:	mov    DWORD PTR [esp+0x8],eax
  a4b316:	mov    DWORD PTR [esp+0x4],ecx
  a4b31a:	mov    DWORD PTR [esp+0xc],0x0
  a4b322:	mov    DWORD PTR [esp],0x0
  a4b329:	mov    ebx,esi
  a4b32b:	call   ca24cf  ; System.String::op_Equality
  a4b330:	test   al,al
  a4b332:	je     a4b3ab
  a4b334:	mov    eax,DWORD PTR [esp+0x1c]
  a4b338:	mov    eax,DWORD PTR [eax]
  a4b33a:	test   BYTE PTR [eax+0xb2],0x1
  a4b341:	je     a4b355
  a4b343:	cmp    DWORD PTR [eax+0x60],0x0
  a4b347:	jne    a4b355
  a4b349:	mov    DWORD PTR [esp],eax
  a4b34c:	mov    ebx,DWORD PTR [esp+0x30]
  a4b350:	call   1db0b8
  a4b355:	mov    DWORD PTR [esp+0x4],0x0
  a4b35d:	mov    DWORD PTR [esp],0x0
  a4b364:	mov    ebx,DWORD PTR [esp+0x30]
  a4b368:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
  a4b36d:	test   eax,eax
  a4b36f:	je     a4b63b
  a4b375:	mov    eax,DWORD PTR [eax+0x2c]
  a4b378:	test   eax,eax
  a4b37a:	je     a4b63b
  a4b380:	mov    eax,DWORD PTR [eax+0x24]
  a4b383:	test   eax,eax
  a4b385:	je     a4b63b
  a4b38b:	mov    ebx,DWORD PTR [esp+0x30]
  a4b38f:	lea    ecx,[ebx+0x4bf38]
  a4b395:	mov    ecx,DWORD PTR [ecx]
  a4b397:	mov    DWORD PTR [esp+0x8],ecx
  a4b39b:	mov    DWORD PTR [esp],eax
  a4b39e:	mov    DWORD PTR [esp+0x4],0x0
  a4b3a6:	jmp    a4b535
  a4b3ab:	mov    esi,DWORD PTR [esp+0x48]
  a4b3af:	test   esi,esi
  a4b3b1:	je     a4b63b
  a4b3b7:	mov    eax,DWORD PTR [esp+0x34]
  a4b3bb:	mov    eax,DWORD PTR [eax]
  a4b3bd:	mov    ebx,DWORD PTR [esi]
  a4b3bf:	movzx  edx,WORD PTR [ebx+0xaa]
  a4b3c6:	test   edx,edx
  a4b3c8:	je     a4b3d9
  a4b3ca:	mov    edi,DWORD PTR [ebx+0x4c]
  a4b3cd:	xor    ecx,ecx
  a4b3cf:	cmp    DWORD PTR [edi+ecx*8],eax
  a4b3d2:	je     a4b3f5
  a4b3d4:	inc    ecx
  a4b3d5:	cmp    ecx,edx
  a4b3d7:	jb     a4b3cf
  a4b3d9:	mov    DWORD PTR [esp+0x4],eax
  a4b3dd:	mov    DWORD PTR [esp],esi
  a4b3e0:	mov    DWORD PTR [esp+0x8],0x0
  a4b3e8:	mov    ebx,DWORD PTR [esp+0x30]
  a4b3ec:	call   1c1964
  a4b3f1:	mov    ecx,eax
  a4b3f3:	jmp    a4b404
  a4b3f5:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  a4b3f9:	lea    ecx,[ebx+eax*8+0xb4]
  a4b400:	mov    ebx,DWORD PTR [esp+0x30]
  a4b404:	mov    eax,DWORD PTR [ecx+0x4]
  a4b407:	mov    DWORD PTR [esp+0x4],eax
  a4b40b:	mov    DWORD PTR [esp],esi
  a4b40e:	call   DWORD PTR [ecx]
  a4b410:	mov    esi,eax
  a4b412:	test   esi,esi
  a4b414:	je     a4b63b
  a4b41a:	mov    eax,DWORD PTR [esp+0x38]
  a4b41e:	mov    eax,DWORD PTR [eax]
  a4b420:	mov    ebx,DWORD PTR [esi]
  a4b422:	movzx  edx,WORD PTR [ebx+0xaa]
  a4b429:	test   edx,edx
  a4b42b:	je     a4b43c
  a4b42d:	mov    edi,DWORD PTR [ebx+0x4c]
  a4b430:	xor    ecx,ecx
  a4b432:	cmp    DWORD PTR [edi+ecx*8],eax
  a4b435:	je     a4b458
  a4b437:	inc    ecx
  a4b438:	cmp    ecx,edx
  a4b43a:	jb     a4b432
  a4b43c:	mov    DWORD PTR [esp+0x4],eax
  a4b440:	mov    DWORD PTR [esp],esi
  a4b443:	mov    DWORD PTR [esp+0x8],0x0
  a4b44b:	mov    ebx,DWORD PTR [esp+0x30]
  a4b44f:	call   1c1964
  a4b454:	mov    ecx,eax
  a4b456:	jmp    a4b467
  a4b458:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  a4b45c:	lea    ecx,[ebx+eax*8+0xb4]
  a4b463:	mov    ebx,DWORD PTR [esp+0x30]
  a4b467:	mov    eax,DWORD PTR [ecx+0x4]
  a4b46a:	mov    DWORD PTR [esp+0x4],eax
  a4b46e:	mov    DWORD PTR [esp],esi
  a4b471:	mov    esi,ebx
  a4b473:	call   DWORD PTR [ecx]
  a4b475:	mov    ecx,eax
  a4b477:	mov    eax,DWORD PTR [esp+0x2c]
  a4b47b:	mov    eax,DWORD PTR [eax]
  a4b47d:	test   BYTE PTR [eax+0xb2],0x1
  a4b484:	mov    edi,DWORD PTR [ebp+0x8]
  a4b487:	je     a4b4a1
  a4b489:	cmp    DWORD PTR [eax+0x60],0x0
  a4b48d:	jne    a4b4a1
  a4b48f:	mov    DWORD PTR [esp],eax
  a4b492:	mov    ebx,esi
  a4b494:	mov    DWORD PTR [esp+0x38],ecx
  a4b498:	call   1db0b8
  a4b49d:	mov    ecx,DWORD PTR [esp+0x38]
  a4b4a1:	mov    ebx,esi
  a4b4a3:	lea    eax,[ebx+0x56ae4]  ; literal "friendship_essence"
  a4b4a9:	mov    eax,DWORD PTR [eax]
  a4b4ab:	mov    DWORD PTR [esp+0x8],eax
  a4b4af:	mov    DWORD PTR [esp+0x4],ecx
  a4b4b3:	mov    DWORD PTR [esp+0xc],0x0
  a4b4bb:	mov    DWORD PTR [esp],0x0
  a4b4c2:	call   ca24cf  ; System.String::op_Equality
  a4b4c7:	test   al,al
  a4b4c9:	je     a4b56d
  a4b4cf:	mov    eax,DWORD PTR [esp+0x1c]
  a4b4d3:	mov    eax,DWORD PTR [eax]
  a4b4d5:	test   BYTE PTR [eax+0xb2],0x1
  a4b4dc:	je     a4b4ec
  a4b4de:	cmp    DWORD PTR [eax+0x60],0x0
  a4b4e2:	jne    a4b4ec
  a4b4e4:	mov    DWORD PTR [esp],eax
  a4b4e7:	call   1db0b8
  a4b4ec:	mov    DWORD PTR [esp+0x4],0x0
  a4b4f4:	mov    DWORD PTR [esp],0x0
  a4b4fb:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
  a4b500:	test   eax,eax
  a4b502:	je     a4b63f
  a4b508:	mov    eax,DWORD PTR [eax+0x2c]
  a4b50b:	test   eax,eax
  a4b50d:	je     a4b63f
  a4b513:	mov    eax,DWORD PTR [eax+0x24]
  a4b516:	test   eax,eax
  a4b518:	je     a4b63f
  a4b51e:	lea    ecx,[ebx+0x4bf38]
  a4b524:	mov    ecx,DWORD PTR [ecx]
  a4b526:	mov    DWORD PTR [esp+0x8],ecx
  a4b52a:	mov    DWORD PTR [esp],eax
  a4b52d:	mov    DWORD PTR [esp+0x4],0x2
  a4b535:	mov    esi,ebx
  a4b537:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  a4b53c:	test   eax,eax
  a4b53e:	je     a4b633
  a4b544:	mov    eax,DWORD PTR [eax+0x8]
  a4b547:	test   eax,eax
  a4b549:	je     a4b633
  a4b54f:	mov    ebx,esi
  a4b551:	lea    ecx,[ebx+0x57d4c]  ; literal "Standard"
  a4b557:	mov    ecx,DWORD PTR [ecx]
  a4b559:	mov    DWORD PTR [esp+0x4],ecx
  a4b55d:	mov    DWORD PTR [esp],eax
  a4b560:	mov    DWORD PTR [esp+0x8],0x0
  a4b568:	call   d93786  ; CoinBarController::SwitchToShop
  a4b56d:	lea    esi,[ebx+0x59074]  ; literal "UnpauseReviveTimer"
  a4b573:	mov    eax,DWORD PTR [esi]
  a4b575:	mov    DWORD PTR [esp+0x4],eax
  a4b579:	mov    DWORD PTR [esp],edi
  a4b57c:	mov    DWORD PTR [esp+0x8],0x0
  a4b584:	call   139daff  ; UnityEngine.MonoBehaviour::IsInvoking
  a4b589:	test   al,al
  a4b58b:	jne    a4b62b
  a4b591:	mov    edi,DWORD PTR [edi+0x18]
  a4b594:	mov    DWORD PTR [esp+0x4],0x0
  a4b59c:	mov    DWORD PTR [esp],0x0
  a4b5a3:	call   10659dc  ; DIContainerLogic::GetPacingBalancing
  a4b5a8:	test   eax,eax
  a4b5aa:	je     a4b63f
  a4b5b0:	mov    DWORD PTR [esp],eax
  a4b5b3:	mov    DWORD PTR [esp+0x4],0x0
  a4b5bb:	call   781a5a  ; PacingBalancing::get_RevivePopupShowTime
  a4b5c0:	fstp   DWORD PTR [esp+0x3c]
  a4b5c4:	test   edi,edi
  a4b5c6:	je     a4b63f
  a4b5c8:	movss  xmm0,DWORD PTR [esp+0x3c]
  a4b5ce:	movss  DWORD PTR [edi+0x84],xmm0
  a4b5d6:	mov    edi,DWORD PTR [ebp+0x8]
  a4b5d9:	mov    DWORD PTR [esp],edi
  a4b5dc:	mov    DWORD PTR [esp+0x4],0x1
  a4b5e4:	call   a4b6c0  ; BattleUIStateMgr::PauseReviveTimer
  a4b5e9:	mov    DWORD PTR [esp+0x4],0x0
  a4b5f1:	mov    DWORD PTR [esp],0x0
  a4b5f8:	call   10659dc  ; DIContainerLogic::GetPacingBalancing
  a4b5fd:	test   eax,eax
  a4b5ff:	je     a4b63f
  a4b601:	mov    DWORD PTR [esp],eax
  a4b604:	mov    DWORD PTR [esp+0x4],0x0
  a4b60c:	call   781a80  ; PacingBalancing::get_MissingCurrencyOverlayTime
  a4b611:	mov    eax,DWORD PTR [esi]
  a4b613:	fstp   DWORD PTR [esp+0x8]
  a4b617:	mov    DWORD PTR [esp+0x4],eax
  a4b61b:	mov    DWORD PTR [esp],edi
  a4b61e:	mov    DWORD PTR [esp+0xc],0x0
  a4b626:	call   139d96d  ; UnityEngine.MonoBehaviour::Invoke
  a4b62b:	lea    esp,[ebp-0xc]
  a4b62e:	pop    esi
  a4b62f:	pop    edi
  a4b630:	pop    ebx
  a4b631:	pop    ebp
  a4b632:	ret
  a4b633:	mov    ebx,esi
  a4b635:	jmp    a4b63f
  a4b637:	mov    ebx,ecx
  a4b639:	jmp    a4b63f
  a4b63b:	mov    ebx,DWORD PTR [esp+0x30]
  a4b63f:	call   1fbc48
  a4b644:	call   9ef4ac