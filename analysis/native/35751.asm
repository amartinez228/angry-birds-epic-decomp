
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d5dd4:
  6d5dd4:	push   ebp
  6d5dd5:	mov    ebp,esp
  6d5dd7:	push   ebx
  6d5dd8:	push   edi
  6d5dd9:	push   esi
  6d5dda:	and    esp,0xfffffff0
  6d5ddd:	sub    esp,0x30
  6d5de0:	call   6d5de5
  6d5de5:	pop    ebx
  6d5de6:	add    ebx,0x183c15f
  6d5dec:	mov    esi,DWORD PTR [ebp+0x8]
  6d5def:	mov    al,BYTE PTR [ebx+0x5f716]
  6d5df5:	test   al,al
  6d5df7:	jne    6d5e10
  6d5df9:	lea    eax,[ebx-0x668464]
  6d5dff:	mov    eax,DWORD PTR [eax]
  6d5e01:	mov    DWORD PTR [esp],eax
  6d5e04:	call   1ca6e8
  6d5e09:	mov    BYTE PTR [ebx+0x5f716],0x1
  6d5e10:	lea    eax,[ebx+0x4a0c8]
  6d5e16:	mov    eax,DWORD PTR [eax]
  6d5e18:	mov    DWORD PTR [esp+0x4],eax
  6d5e1c:	mov    DWORD PTR [esp],esi
  6d5e1f:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d5e24:	mov    DWORD PTR [esp+0x28],eax
  6d5e28:	lea    edi,[ebx+0x4a9e8]
  6d5e2e:	mov    eax,DWORD PTR [edi]
  6d5e30:	mov    DWORD PTR [esp+0x4],eax
  6d5e34:	mov    DWORD PTR [esp],esi
  6d5e37:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d5e3c:	test   eax,eax
  6d5e3e:	je     6d5ecc
  6d5e44:	mov    DWORD PTR [esp],eax
  6d5e47:	mov    DWORD PTR [esp+0x4],0x0
  6d5e4f:	call   179c240  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Level
  6d5e54:	mov    DWORD PTR [esp+0x24],eax
  6d5e58:	mov    eax,DWORD PTR [edi]
  6d5e5a:	mov    DWORD PTR [esp+0x4],eax
  6d5e5e:	mov    DWORD PTR [esp],esi
  6d5e61:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d5e66:	test   eax,eax
  6d5e68:	je     6d5ecc
  6d5e6a:	mov    DWORD PTR [esp],eax
  6d5e6d:	mov    DWORD PTR [esp+0x4],0x0
  6d5e75:	call   179c2f0  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_ItemSource
  6d5e7a:	mov    DWORD PTR [esp+0x20],eax
  6d5e7e:	mov    eax,DWORD PTR [edi]
  6d5e80:	mov    DWORD PTR [esp+0x4],eax
  6d5e84:	mov    DWORD PTR [esp],esi
  6d5e87:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d5e8c:	test   eax,eax
  6d5e8e:	je     6d5ecc
  6d5e90:	mov    DWORD PTR [esp],eax
  6d5e93:	mov    DWORD PTR [esp+0x4],0x0
  6d5e9b:	call   179c35d  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_IsAncient
  6d5ea0:	movzx  eax,al
  6d5ea3:	mov    DWORD PTR [esp+0x10],eax
  6d5ea7:	mov    eax,DWORD PTR [esp+0x20]
  6d5eab:	mov    DWORD PTR [esp+0xc],eax
  6d5eaf:	mov    eax,DWORD PTR [esp+0x24]
  6d5eb3:	mov    DWORD PTR [esp+0x8],eax
  6d5eb7:	mov    eax,DWORD PTR [esp+0x28]
  6d5ebb:	mov    DWORD PTR [esp+0x4],eax
  6d5ebf:	call   6d5158  ; ABH.GameDatas.EquipmentGameData::GetFinalEquipmentName
  6d5ec4:	lea    esp,[ebp-0xc]
  6d5ec7:	pop    esi
  6d5ec8:	pop    edi
  6d5ec9:	pop    ebx
  6d5eca:	pop    ebp
  6d5ecb:	ret
  6d5ecc:	call   1fbc48
  6d5ed1:	call   6b106a