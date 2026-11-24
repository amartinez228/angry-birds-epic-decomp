
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ab497d:
  ab497d:	push   ebp
  ab497e:	mov    ebp,esp
  ab4980:	push   ebx
  ab4981:	push   edi
  ab4982:	push   esi
  ab4983:	and    esp,0xfffffff0
  ab4986:	sub    esp,0x40
  ab4989:	call   ab498e
  ab498e:	pop    ebx
  ab498f:	add    ebx,0x145d5b6
  ab4995:	mov    esi,DWORD PTR [ebp+0xc]
  ab4998:	mov    al,BYTE PTR [ebx+0x60d33]
  ab499e:	test   al,al
  ab49a0:	jne    ab49b9
  ab49a2:	lea    eax,[ebx-0x6541b8]
  ab49a8:	mov    eax,DWORD PTR [eax]
  ab49aa:	mov    DWORD PTR [esp],eax
  ab49ad:	call   1ca6e8
  ab49b2:	mov    BYTE PTR [ebx+0x60d33],0x1
  ab49b9:	mov    DWORD PTR [esp+0x38],0x0
  ab49c1:	mov    DWORD PTR [esp+0x4],0x0
  ab49c9:	mov    DWORD PTR [esp],0x0
  ab49d0:	call   106b137  ; DIContainerLogic::get_InventoryService
  ab49d5:	mov    edi,eax
  ab49d7:	test   esi,esi
  ab49d9:	je     ab4cfc
  ab49df:	mov    DWORD PTR [esp],esi
  ab49e2:	mov    DWORD PTR [esp+0x4],0x0
  ab49ea:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
  ab49ef:	test   edi,edi
  ab49f1:	je     ab4cfc
  ab49f7:	lea    ecx,[ebx+0x57cd4]  ; literal "star_collection"
  ab49fd:	mov    DWORD PTR [esp+0x2c],ecx
  ab4a01:	mov    ecx,DWORD PTR [ecx]
  ab4a03:	mov    DWORD PTR [esp+0x8],ecx
  ab4a07:	mov    DWORD PTR [esp+0x4],eax
  ab4a0b:	mov    DWORD PTR [esp],edi
  ab4a0e:	mov    DWORD PTR [esp+0xc],0x0
  ab4a16:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  ab4a1b:	mov    edi,eax
  ab4a1d:	mov    DWORD PTR [esp+0x4],esi
  ab4a21:	call   ab4d06  ; ABH.Services.Logic.WorldMapService::GetTotalAccumulatedStars
  ab4a26:	mov    DWORD PTR [esp+0x30],eax
  ab4a2a:	mov    DWORD PTR [esp+0x4],0x0
  ab4a32:	mov    DWORD PTR [esp],0x0
  ab4a39:	call   1093202  ; DIContainerLogic::GetShopService
  ab4a3e:	test   eax,eax
  ab4a40:	je     ab4cfc
  ab4a46:	sub    DWORD PTR [esp+0x30],edi
  ab4a4a:	xor    esi,esi
  ab4a4c:	lea    ecx,[ebx+0x57d44]  ; literal "shop_star_rewards"
  ab4a52:	mov    DWORD PTR [esp+0x34],ecx
  ab4a56:	mov    ecx,DWORD PTR [esp+0x34]
  ab4a5a:	mov    ecx,DWORD PTR [ecx]
  ab4a5c:	mov    DWORD PTR [esp+0x8],ecx
  ab4a60:	mov    edi,DWORD PTR [ebp+0xc]
  ab4a63:	mov    DWORD PTR [esp+0x4],edi
  ab4a67:	mov    DWORD PTR [esp],eax
  ab4a6a:	mov    DWORD PTR [esp+0x14],0x0
  ab4a72:	mov    DWORD PTR [esp+0x10],0x0
  ab4a7a:	mov    DWORD PTR [esp+0xc],0x1
  ab4a82:	call   d143f5  ; ShopService::GetShopOffers
  ab4a87:	test   eax,eax
  ab4a89:	je     ab4cfc
  ab4a8f:	lea    ecx,[ebx+0x4bb4c]
  ab4a95:	mov    ecx,DWORD PTR [ecx]
  ab4a97:	mov    DWORD PTR [esp+0x4],ecx
  ab4a9b:	mov    DWORD PTR [esp],eax
  ab4a9e:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  ab4aa3:	cmp    esi,eax
  ab4aa5:	jge    ab4c77
  ab4aab:	mov    DWORD PTR [esp+0x4],0x0
  ab4ab3:	mov    DWORD PTR [esp],0x0
  ab4aba:	call   1093202  ; DIContainerLogic::GetShopService
  ab4abf:	test   eax,eax
  ab4ac1:	je     ab4cfc
  ab4ac7:	mov    ecx,DWORD PTR [esp+0x34]
  ab4acb:	mov    ecx,DWORD PTR [ecx]
  ab4acd:	mov    DWORD PTR [esp+0x8],ecx
  ab4ad1:	mov    DWORD PTR [esp+0x4],edi
  ab4ad5:	mov    DWORD PTR [esp],eax
  ab4ad8:	mov    DWORD PTR [esp+0x14],0x0
  ab4ae0:	mov    DWORD PTR [esp+0x10],0x0
  ab4ae8:	mov    DWORD PTR [esp+0xc],0x1
  ab4af0:	call   d143f5  ; ShopService::GetShopOffers
  ab4af5:	test   eax,eax
  ab4af7:	je     ab4cfc
  ab4afd:	lea    ecx,[ebx+0x4bb48]
  ab4b03:	mov    ecx,DWORD PTR [ecx]
  ab4b05:	mov    DWORD PTR [esp+0x8],ecx
  ab4b09:	mov    DWORD PTR [esp+0x4],esi
  ab4b0d:	mov    DWORD PTR [esp],eax
  ab4b10:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  ab4b15:	mov    edi,eax
  ab4b17:	mov    DWORD PTR [esp+0x4],0x0
  ab4b1f:	mov    DWORD PTR [esp],0x0
  ab4b26:	call   1093202  ; DIContainerLogic::GetShopService
  ab4b2b:	test   eax,eax
  ab4b2d:	je     ab4cfc
  ab4b33:	lea    ecx,[esp+0x38]
  ab4b37:	mov    DWORD PTR [esp+0xc],ecx
  ab4b3b:	mov    DWORD PTR [esp+0x8],edi
  ab4b3f:	mov    ecx,DWORD PTR [ebp+0xc]
  ab4b42:	mov    DWORD PTR [esp+0x4],ecx
  ab4b46:	mov    DWORD PTR [esp],eax
  ab4b49:	mov    DWORD PTR [esp+0x10],0x0
  ab4b51:	call   d03d31  ; ShopService::IsOfferBuyable
  ab4b56:	test   al,al
  ab4b58:	je     ab4c55
  ab4b5e:	mov    DWORD PTR [esp+0x4],0x0
  ab4b66:	mov    DWORD PTR [esp],0x0
  ab4b6d:	call   1093202  ; DIContainerLogic::GetShopService
  ab4b72:	test   eax,eax
  ab4b74:	je     ab4cfc
  ab4b7a:	lea    ecx,[ebx+0x57d48]  ; literal "buyShopOffer"
  ab4b80:	mov    ecx,DWORD PTR [ecx]
  ab4b82:	lea    edx,[ebx+0x57d4c]  ; literal "Standard"
  ab4b88:	mov    edx,DWORD PTR [edx]
  ab4b8a:	mov    DWORD PTR [esp+0x18],edx
  ab4b8e:	mov    DWORD PTR [esp+0xc],ecx
  ab4b92:	mov    DWORD PTR [esp+0x8],edi
  ab4b96:	mov    ecx,DWORD PTR [ebp+0xc]
  ab4b99:	mov    DWORD PTR [esp+0x4],ecx
  ab4b9d:	mov    DWORD PTR [esp],eax
  ab4ba0:	mov    DWORD PTR [esp+0x1c],0x0
  ab4ba8:	mov    DWORD PTR [esp+0x14],0x0
  ab4bb0:	mov    DWORD PTR [esp+0x10],0x0
  ab4bb8:	call   d03e30  ; ShopService::BuyShopOffer
  ab4bbd:	test   edi,edi
  ab4bbf:	je     ab4cfc
  ab4bc5:	mov    DWORD PTR [esp],edi
  ab4bc8:	mov    DWORD PTR [esp+0x4],0x0
  ab4bd0:	call   16fdf79  ; ABH.Shared.BalancingData.BasicShopOfferBalancingData::get_NameId
  ab4bd5:	mov    edi,eax
  ab4bd7:	lea    eax,[ebx+0x430e4]
  ab4bdd:	mov    eax,DWORD PTR [eax]
  ab4bdf:	test   BYTE PTR [eax+0xb2],0x1
  ab4be6:	je     ab4bf6
  ab4be8:	cmp    DWORD PTR [eax+0x60],0x0
  ab4bec:	jne    ab4bf6
  ab4bee:	mov    DWORD PTR [esp],eax
  ab4bf1:	call   1db0b8
  ab4bf6:	lea    eax,[ebx+0x57d50]  ; literal "offer_star_reward_04"
  ab4bfc:	mov    eax,DWORD PTR [eax]
  ab4bfe:	mov    DWORD PTR [esp+0x8],eax
  ab4c02:	mov    DWORD PTR [esp+0x4],edi
  ab4c06:	mov    DWORD PTR [esp+0xc],0x0
  ab4c0e:	mov    DWORD PTR [esp],0x0
  ab4c15:	call   ca24cf  ; System.String::op_Equality
  ab4c1a:	test   al,al
  ab4c1c:	je     ab4c55
  ab4c1e:	lea    eax,[ebx+0x4a210]
  ab4c24:	mov    eax,DWORD PTR [eax]
  ab4c26:	mov    DWORD PTR [esp+0x4],eax
  ab4c2a:	mov    eax,DWORD PTR [ebp+0xc]
  ab4c2d:	mov    DWORD PTR [esp],eax
  ab4c30:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab4c35:	test   eax,eax
  ab4c37:	je     ab4cfc
  ab4c3d:	mov    DWORD PTR [esp],eax
  ab4c40:	mov    DWORD PTR [esp+0x8],0x0
  ab4c48:	mov    DWORD PTR [esp+0x4],0x1
  ab4c50:	call   179d617  ; ABH.Shared.Models.PlayerData::set_WonAvengerByStars
  ab4c55:	inc    esi
  ab4c56:	mov    DWORD PTR [esp+0x4],0x0
  ab4c5e:	mov    DWORD PTR [esp],0x0
  ab4c65:	call   1093202  ; DIContainerLogic::GetShopService
  ab4c6a:	test   eax,eax
  ab4c6c:	jne    ab4a56
  ab4c72:	jmp    ab4cfc
  ab4c77:	mov    esi,edi
  ab4c79:	cmp    DWORD PTR [esp+0x30],0x0
  ab4c7e:	jle    ab4cf4
  ab4c80:	mov    DWORD PTR [esp+0x4],0x0
  ab4c88:	mov    DWORD PTR [esp],0x0
  ab4c8f:	call   106b137  ; DIContainerLogic::get_InventoryService
  ab4c94:	mov    edi,eax
  ab4c96:	mov    DWORD PTR [esp],esi
  ab4c99:	mov    DWORD PTR [esp+0x4],0x0
  ab4ca1:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
  ab4ca6:	test   edi,edi
  ab4ca8:	je     ab4cfc
  ab4caa:	mov    ecx,DWORD PTR [esp+0x2c]
  ab4cae:	mov    ecx,DWORD PTR [ecx]
  ab4cb0:	lea    edx,[ebx+0x57d54]  ; literal "stars_increased"
  ab4cb6:	mov    edx,DWORD PTR [edx]
  ab4cb8:	mov    DWORD PTR [esp+0x18],edx
  ab4cbc:	mov    edx,DWORD PTR [esp+0x30]
  ab4cc0:	mov    DWORD PTR [esp+0x14],edx
  ab4cc4:	mov    DWORD PTR [esp+0x10],ecx
  ab4cc8:	mov    DWORD PTR [esp+0x4],eax
  ab4ccc:	mov    DWORD PTR [esp],edi
  ab4ccf:	mov    DWORD PTR [esp+0x20],0x0
  ab4cd7:	mov    DWORD PTR [esp+0x1c],0x0
  ab4cdf:	mov    DWORD PTR [esp+0xc],0x1
  ab4ce7:	mov    DWORD PTR [esp+0x8],0x1
  ab4cef:	call   500411  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddItem
  ab4cf4:	lea    esp,[ebp-0xc]
  ab4cf7:	pop    esi
  ab4cf8:	pop    edi
  ab4cf9:	pop    ebx
  ab4cfa:	pop    ebp
  ab4cfb:	ret
  ab4cfc:	call   1fbc48
  ab4d01:	call   ab1162