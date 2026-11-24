
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c2ba9:
  6c2ba9:	push   ebp
  6c2baa:	mov    ebp,esp
  6c2bac:	push   ebx
  6c2bad:	push   edi
  6c2bae:	push   esi
  6c2baf:	and    esp,0xfffffff0
  6c2bb2:	sub    esp,0x30
  6c2bb5:	call   6c2bba
  6c2bba:	pop    ebx
  6c2bbb:	add    ebx,0x184f38a
  6c2bc1:	mov    esi,DWORD PTR [ebp+0xc]
  6c2bc4:	mov    edi,DWORD PTR [ebp+0x8]
  6c2bc7:	mov    al,BYTE PTR [ebx+0x5f63a]
  6c2bcd:	test   al,al
  6c2bcf:	jne    6c2be8
  6c2bd1:	lea    eax,[ebx-0x66eb8c]
  6c2bd7:	mov    eax,DWORD PTR [eax]
  6c2bd9:	mov    DWORD PTR [esp],eax
  6c2bdc:	call   1ca6e8
  6c2be1:	mov    BYTE PTR [ebx+0x5f63a],0x1
  6c2be8:	lea    eax,[ebx+0x4a7fc]
  6c2bee:	mov    eax,DWORD PTR [eax]
  6c2bf0:	mov    DWORD PTR [esp+0x8],eax
  6c2bf4:	mov    DWORD PTR [esp+0x4],esi
  6c2bf8:	mov    DWORD PTR [esp],edi
  6c2bfb:	call   1606fa6  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BannerItemBalancingData, ABH.Shared.Models.InventoryItems.BannerItemData>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BasicItemBalancingData, ABH.Shared.Models.InventoryItems.BasicItemData>::.ctor | +16 other aliases
  6c2c00:	lea    eax,[ebx+0x4a800]
  6c2c06:	mov    eax,DWORD PTR [eax]
  6c2c08:	mov    DWORD PTR [esp+0x4],eax
  6c2c0c:	mov    DWORD PTR [esp],edi
  6c2c0f:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c2c14:	test   eax,eax
  6c2c16:	je     6c2d1a
  6c2c1c:	mov    DWORD PTR [esp],eax
  6c2c1f:	mov    DWORD PTR [esp+0x4],0x0
  6c2c27:	call   179a17e  ; ABH.Shared.Models.Character.BirdData::get_Inventory
  6c2c2c:	mov    edi,eax
  6c2c2e:	lea    eax,[ebx+0x45824]
  6c2c34:	mov    eax,DWORD PTR [eax]
  6c2c36:	mov    DWORD PTR [esp],eax
  6c2c39:	call   20bfb2
  6c2c3e:	mov    esi,eax
  6c2c40:	mov    DWORD PTR [esp+0x4],edi
  6c2c44:	mov    DWORD PTR [esp],esi
  6c2c47:	call   6c2d24  ; ABH.GameDatas.InventoryGameData::.ctor
  6c2c4c:	mov    edi,DWORD PTR [ebp+0x8]
  6c2c4f:	mov    DWORD PTR [edi+0x18],esi
  6c2c52:	lea    eax,[ebx+0x4a804]
  6c2c58:	mov    DWORD PTR [esp+0x18],eax
  6c2c5c:	mov    eax,DWORD PTR [eax]
  6c2c5e:	mov    DWORD PTR [esp+0x1c],eax
  6c2c62:	lea    eax,[ebx+0x45e14]
  6c2c68:	mov    DWORD PTR [esp+0x14],eax
  6c2c6c:	mov    eax,DWORD PTR [eax]
  6c2c6e:	mov    DWORD PTR [esp],eax
  6c2c71:	call   20bfb2
  6c2c76:	mov    ecx,DWORD PTR [esp+0x1c]
  6c2c7a:	mov    DWORD PTR [esp+0x28],ecx
  6c2c7e:	lea    ecx,[ebx+0x4a808]
  6c2c84:	mov    DWORD PTR [esp+0x1c],ecx
  6c2c88:	mov    ecx,DWORD PTR [ecx]
  6c2c8a:	mov    DWORD PTR [esp+0xc],ecx
  6c2c8e:	mov    ecx,DWORD PTR [esp+0x28]
  6c2c92:	mov    DWORD PTR [esp+0x8],ecx
  6c2c96:	mov    DWORD PTR [esp+0x4],edi
  6c2c9a:	mov    edi,eax
  6c2c9c:	mov    DWORD PTR [esp],edi
  6c2c9f:	call   176efb0  ; shared address: System.Action`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::.ctor | System.Action`2<ABH.Shared.Generic.InventoryItemType, object>::.ctor
  6c2ca4:	test   esi,esi
  6c2ca6:	je     6c2d1a
  6c2ca8:	mov    DWORD PTR [esp+0x4],edi
  6c2cac:	mov    DWORD PTR [esp],esi
  6c2caf:	call   6c336a  ; ABH.GameDatas.InventoryGameData::remove_InventoryOfTypeChanged
  6c2cb4:	mov    edi,DWORD PTR [ebp+0x8]
  6c2cb7:	mov    eax,DWORD PTR [edi+0x18]
  6c2cba:	mov    DWORD PTR [esp+0x10],eax
  6c2cbe:	mov    eax,DWORD PTR [esp+0x18]
  6c2cc2:	mov    eax,DWORD PTR [eax]
  6c2cc4:	mov    DWORD PTR [esp+0x18],eax
  6c2cc8:	mov    eax,DWORD PTR [esp+0x14]
  6c2ccc:	mov    eax,DWORD PTR [eax]
  6c2cce:	mov    DWORD PTR [esp],eax
  6c2cd1:	call   20bfb2
  6c2cd6:	mov    esi,eax
  6c2cd8:	mov    eax,DWORD PTR [esp+0x18]
  6c2cdc:	mov    DWORD PTR [esp+0x20],eax
  6c2ce0:	mov    eax,DWORD PTR [esp+0x1c]
  6c2ce4:	mov    eax,DWORD PTR [eax]
  6c2ce6:	mov    DWORD PTR [esp+0xc],eax
  6c2cea:	mov    eax,DWORD PTR [esp+0x20]
  6c2cee:	mov    DWORD PTR [esp+0x8],eax
  6c2cf2:	mov    DWORD PTR [esp+0x4],edi
  6c2cf6:	mov    DWORD PTR [esp],esi
  6c2cf9:	call   176efb0  ; shared address: System.Action`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::.ctor | System.Action`2<ABH.Shared.Generic.InventoryItemType, object>::.ctor
  6c2cfe:	mov    eax,DWORD PTR [esp+0x10]
  6c2d02:	test   eax,eax
  6c2d04:	je     6c2d1a
  6c2d06:	mov    DWORD PTR [esp+0x4],esi
  6c2d0a:	mov    DWORD PTR [esp],eax
  6c2d0d:	call   6c34b3  ; ABH.GameDatas.InventoryGameData::add_InventoryOfTypeChanged
  6c2d12:	lea    esp,[ebp-0xc]
  6c2d15:	pop    esi
  6c2d16:	pop    edi
  6c2d17:	pop    ebx
  6c2d18:	pop    ebp
  6c2d19:	ret
  6c2d1a:	call   1fbc48
  6c2d1f:	call   6b106a