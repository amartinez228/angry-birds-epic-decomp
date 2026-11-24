
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c2d24:
  6c2d24:	push   ebp
  6c2d25:	mov    ebp,esp
  6c2d27:	push   ebx
  6c2d28:	push   edi
  6c2d29:	push   esi
  6c2d2a:	and    esp,0xfffffff0
  6c2d2d:	sub    esp,0x30
  6c2d30:	call   6c2d35
  6c2d35:	pop    ebx
  6c2d36:	add    ebx,0x184f20f
  6c2d3c:	mov    edi,DWORD PTR [ebp+0x8]
  6c2d3f:	mov    al,BYTE PTR [ebx+0x5f776]
  6c2d45:	test   al,al
  6c2d47:	jne    6c2d60
  6c2d49:	lea    eax,[ebx-0x664e30]
  6c2d4f:	mov    eax,DWORD PTR [eax]
  6c2d51:	mov    DWORD PTR [esp],eax
  6c2d54:	call   1ca6e8
  6c2d59:	mov    BYTE PTR [ebx+0x5f776],0x1
  6c2d60:	lea    eax,[ebx+0x4ab50]
  6c2d66:	mov    eax,DWORD PTR [eax]
  6c2d68:	mov    DWORD PTR [esp+0x8],eax
  6c2d6c:	mov    eax,DWORD PTR [ebp+0xc]
  6c2d6f:	mov    DWORD PTR [esp+0x4],eax
  6c2d73:	mov    DWORD PTR [esp],edi
  6c2d76:	call   1606fa6  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BannerItemBalancingData, ABH.Shared.Models.InventoryItems.BannerItemData>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BasicItemBalancingData, ABH.Shared.Models.InventoryItems.BasicItemData>::.ctor | +16 other aliases
  6c2d7b:	lea    eax,[ebx+0x45ed4]
  6c2d81:	mov    eax,DWORD PTR [eax]
  6c2d83:	mov    DWORD PTR [esp],eax
  6c2d86:	call   20bfb2
  6c2d8b:	mov    esi,eax
  6c2d8d:	lea    eax,[ebx+0x4ab54]
  6c2d93:	mov    eax,DWORD PTR [eax]
  6c2d95:	mov    DWORD PTR [esp+0x4],eax
  6c2d99:	mov    DWORD PTR [esp],esi
  6c2d9c:	call   59dee5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::.ctor | +2 other aliases
  6c2da1:	mov    DWORD PTR [edi+0x10],esi
  6c2da4:	lea    eax,[ebx+0x45ed8]
  6c2daa:	mov    eax,DWORD PTR [eax]
  6c2dac:	mov    DWORD PTR [esp],eax
  6c2daf:	call   20bfb2
  6c2db4:	mov    esi,eax
  6c2db6:	lea    eax,[ebx+0x4ab58]
  6c2dbc:	mov    eax,DWORD PTR [eax]
  6c2dbe:	mov    DWORD PTR [esp+0x4],eax
  6c2dc2:	mov    DWORD PTR [esp],esi
  6c2dc5:	call   59dee5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::.ctor | +2 other aliases
  6c2dca:	mov    DWORD PTR [edi+0x14],esi
  6c2dcd:	lea    eax,[ebx+0x43128]
  6c2dd3:	mov    eax,DWORD PTR [eax]
  6c2dd5:	test   BYTE PTR [eax+0xb2],0x1
  6c2ddc:	je     6c2dec
  6c2dde:	cmp    DWORD PTR [eax+0x60],0x0
  6c2de2:	jne    6c2dec
  6c2de4:	mov    DWORD PTR [esp],eax
  6c2de7:	call   1db0b8
  6c2dec:	lea    eax,[ebx+0x427b0]
  6c2df2:	mov    eax,DWORD PTR [eax]
  6c2df4:	mov    DWORD PTR [esp+0x28],eax
  6c2df8:	mov    eax,DWORD PTR [esp+0x28]
  6c2dfc:	mov    DWORD PTR [esp+0x4],eax
  6c2e00:	mov    DWORD PTR [esp+0x8],0x0
  6c2e08:	mov    DWORD PTR [esp],0x0
  6c2e0f:	call   1696d04  ; System.Type::GetTypeFromHandle
  6c2e14:	mov    esi,eax
  6c2e16:	lea    eax,[ebx+0x434c0]
  6c2e1c:	mov    eax,DWORD PTR [eax]
  6c2e1e:	test   BYTE PTR [eax+0xb2],0x1
  6c2e25:	je     6c2e35
  6c2e27:	cmp    DWORD PTR [eax+0x60],0x0
  6c2e2b:	jne    6c2e35
  6c2e2d:	mov    DWORD PTR [esp],eax
  6c2e30:	call   1db0b8
  6c2e35:	mov    DWORD PTR [esp+0x4],esi
  6c2e39:	mov    DWORD PTR [esp+0x8],0x0
  6c2e41:	mov    DWORD PTR [esp],0x0
  6c2e48:	call   ff6d8d  ; System.Enum::GetValues
  6c2e4d:	test   eax,eax
  6c2e4f:	je     6c3330
  6c2e55:	mov    DWORD PTR [esp],eax
  6c2e58:	mov    DWORD PTR [esp+0x4],0x0
  6c2e60:	call   ef894f  ; System.Array::GetEnumerator
  6c2e65:	mov    DWORD PTR [esp+0x24],eax
  6c2e69:	mov    ecx,DWORD PTR [esp+0x24]
  6c2e6d:	test   ecx,ecx
  6c2e6f:	je     6c31da
  6c2e75:	lea    eax,[ebx+0x4319c]
  6c2e7b:	mov    DWORD PTR [esp+0x20],eax
  6c2e7f:	mov    eax,DWORD PTR [eax]
  6c2e81:	mov    ecx,DWORD PTR [ecx]
  6c2e83:	movzx  edx,WORD PTR [ecx+0xaa]
  6c2e8a:	test   edx,edx
  6c2e8c:	je     6c2e9d
  6c2e8e:	mov    edi,DWORD PTR [ecx+0x4c]
  6c2e91:	xor    esi,esi
  6c2e93:	cmp    DWORD PTR [edi+esi*8],eax
  6c2e96:	je     6c2eb7
  6c2e98:	inc    esi
  6c2e99:	cmp    esi,edx
  6c2e9b:	jb     6c2e93
  6c2e9d:	mov    DWORD PTR [esp+0x4],eax
  6c2ea1:	mov    eax,DWORD PTR [esp+0x24]
  6c2ea5:	mov    DWORD PTR [esp],eax
  6c2ea8:	mov    DWORD PTR [esp+0x8],0x1
  6c2eb0:	call   1c1964
  6c2eb5:	jmp    6c2ec2
  6c2eb7:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  6c2ebb:	lea    eax,[ecx+eax*8+0xbc]
  6c2ec2:	mov    ecx,DWORD PTR [eax]
  6c2ec4:	mov    eax,DWORD PTR [eax+0x4]
  6c2ec7:	mov    DWORD PTR [esp+0x4],eax
  6c2ecb:	mov    eax,DWORD PTR [esp+0x24]
  6c2ecf:	mov    DWORD PTR [esp],eax
  6c2ed2:	call   ecx
  6c2ed4:	test   al,al
  6c2ed6:	je     6c31e4
  6c2edc:	mov    eax,DWORD PTR [esp+0x20]
  6c2ee0:	mov    eax,DWORD PTR [eax]
  6c2ee2:	mov    ecx,DWORD PTR [esp+0x24]
  6c2ee6:	mov    ecx,DWORD PTR [ecx]
  6c2ee8:	movzx  edx,WORD PTR [ecx+0xaa]
  6c2eef:	test   edx,edx
  6c2ef1:	je     6c2f02
  6c2ef3:	mov    esi,DWORD PTR [ecx+0x4c]
  6c2ef6:	xor    edi,edi
  6c2ef8:	cmp    DWORD PTR [esi+edi*8],eax
  6c2efb:	je     6c2f1c
  6c2efd:	inc    edi
  6c2efe:	cmp    edi,edx
  6c2f00:	jb     6c2ef8
  6c2f02:	mov    DWORD PTR [esp+0x4],eax
  6c2f06:	mov    eax,DWORD PTR [esp+0x24]
  6c2f0a:	mov    DWORD PTR [esp],eax
  6c2f0d:	mov    DWORD PTR [esp+0x8],0x0
  6c2f15:	call   1c1964
  6c2f1a:	jmp    6c2f27
  6c2f1c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6c2f20:	lea    eax,[ecx+eax*8+0xb4]
  6c2f27:	mov    ecx,DWORD PTR [eax]
  6c2f29:	mov    eax,DWORD PTR [eax+0x4]
  6c2f2c:	mov    DWORD PTR [esp+0x4],eax
  6c2f30:	mov    eax,DWORD PTR [esp+0x24]
  6c2f34:	mov    DWORD PTR [esp],eax
  6c2f37:	call   ecx
  6c2f39:	test   eax,eax
  6c2f3b:	je     6c31f6
  6c2f41:	lea    ecx,[ebx+0x45240]
  6c2f47:	mov    ecx,DWORD PTR [ecx]
  6c2f49:	mov    edx,DWORD PTR [eax]
  6c2f4b:	mov    edx,DWORD PTR [edx+0x18]
  6c2f4e:	cmp    edx,DWORD PTR [ecx+0x18]
  6c2f51:	jne    6c31c7
  6c2f57:	mov    DWORD PTR [esp],eax
  6c2f5a:	call   20c3d8
  6c2f5f:	mov    eax,DWORD PTR [eax]
  6c2f61:	mov    DWORD PTR [esp+0x20],eax
  6c2f65:	cmp    eax,0xc
  6c2f68:	lea    eax,[ebx+0x458bc]
  6c2f6e:	mov    eax,DWORD PTR [eax]
  6c2f70:	jne    6c315c
  6c2f76:	mov    DWORD PTR [esp],eax
  6c2f79:	call   20bfb2
  6c2f7e:	mov    edi,eax
  6c2f80:	lea    eax,[ebx+0x4a1d0]
  6c2f86:	mov    eax,DWORD PTR [eax]
  6c2f88:	mov    DWORD PTR [esp+0x4],eax
  6c2f8c:	mov    DWORD PTR [esp],edi
  6c2f8f:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6c2f94:	mov    eax,DWORD PTR [ebp+0x8]
  6c2f97:	mov    eax,DWORD PTR [eax+0x10]
  6c2f9a:	test   eax,eax
  6c2f9c:	je     6c3200
  6c2fa2:	lea    ecx,[ebx+0x4ab5c]
  6c2fa8:	mov    ecx,DWORD PTR [ecx]
  6c2faa:	mov    DWORD PTR [esp+0xc],ecx
  6c2fae:	mov    DWORD PTR [esp+0x8],edi
  6c2fb2:	mov    DWORD PTR [esp],eax
  6c2fb5:	mov    DWORD PTR [esp+0x4],0xc
  6c2fbd:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6c2fc2:	mov    eax,DWORD PTR [ebp+0x8]
  6c2fc5:	mov    esi,DWORD PTR [eax+0x14]
  6c2fc8:	lea    eax,[ebx+0x45edc]
  6c2fce:	mov    DWORD PTR [esp+0x1c],eax
  6c2fd2:	mov    eax,DWORD PTR [eax]
  6c2fd4:	mov    DWORD PTR [esp],eax
  6c2fd7:	call   20bfb2
  6c2fdc:	mov    edi,eax
  6c2fde:	lea    eax,[ebx+0x4ab60]
  6c2fe4:	mov    DWORD PTR [esp+0x18],eax
  6c2fe8:	mov    eax,DWORD PTR [eax]
  6c2fea:	mov    DWORD PTR [esp+0x4],eax
  6c2fee:	mov    DWORD PTR [esp],edi
  6c2ff1:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6c2ff6:	test   esi,esi
  6c2ff8:	je     6c3214
  6c2ffe:	lea    eax,[ebx+0x4ab64]
  6c3004:	mov    DWORD PTR [esp+0x14],eax
  6c3008:	mov    eax,DWORD PTR [eax]
  6c300a:	mov    DWORD PTR [esp+0xc],eax
  6c300e:	mov    DWORD PTR [esp+0x8],edi
  6c3012:	mov    DWORD PTR [esp],esi
  6c3015:	mov    DWORD PTR [esp+0x4],0x1
  6c301d:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6c3022:	mov    eax,DWORD PTR [ebp+0x8]
  6c3025:	mov    esi,DWORD PTR [eax+0x14]
  6c3028:	mov    eax,DWORD PTR [esp+0x1c]
  6c302c:	mov    eax,DWORD PTR [eax]
  6c302e:	mov    DWORD PTR [esp],eax
  6c3031:	call   20bfb2
  6c3036:	mov    edi,eax
  6c3038:	mov    eax,DWORD PTR [esp+0x18]
  6c303c:	mov    eax,DWORD PTR [eax]
  6c303e:	mov    DWORD PTR [esp+0x4],eax
  6c3042:	mov    DWORD PTR [esp],edi
  6c3045:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6c304a:	test   esi,esi
  6c304c:	je     6c321e
  6c3052:	mov    eax,DWORD PTR [esp+0x14]
  6c3056:	mov    eax,DWORD PTR [eax]
  6c3058:	mov    DWORD PTR [esp+0xc],eax
  6c305c:	mov    DWORD PTR [esp+0x8],edi
  6c3060:	mov    DWORD PTR [esp],esi
  6c3063:	mov    DWORD PTR [esp+0x4],0x2
  6c306b:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6c3070:	mov    eax,DWORD PTR [ebp+0x8]
  6c3073:	mov    esi,DWORD PTR [eax+0x14]
  6c3076:	mov    eax,DWORD PTR [esp+0x1c]
  6c307a:	mov    eax,DWORD PTR [eax]
  6c307c:	mov    DWORD PTR [esp],eax
  6c307f:	call   20bfb2
  6c3084:	mov    edi,eax
  6c3086:	mov    eax,DWORD PTR [esp+0x18]
  6c308a:	mov    eax,DWORD PTR [eax]
  6c308c:	mov    DWORD PTR [esp+0x4],eax
  6c3090:	mov    DWORD PTR [esp],edi
  6c3093:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6c3098:	test   esi,esi
  6c309a:	je     6c3228
  6c30a0:	mov    eax,DWORD PTR [esp+0x14]
  6c30a4:	mov    eax,DWORD PTR [eax]
  6c30a6:	mov    DWORD PTR [esp+0xc],eax
  6c30aa:	mov    DWORD PTR [esp+0x8],edi
  6c30ae:	mov    DWORD PTR [esp],esi
  6c30b1:	mov    DWORD PTR [esp+0x4],0x3
  6c30b9:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6c30be:	mov    eax,DWORD PTR [ebp+0x8]
  6c30c1:	mov    esi,DWORD PTR [eax+0x14]
  6c30c4:	mov    eax,DWORD PTR [esp+0x1c]
  6c30c8:	mov    eax,DWORD PTR [eax]
  6c30ca:	mov    DWORD PTR [esp],eax
  6c30cd:	call   20bfb2
  6c30d2:	mov    edi,eax
  6c30d4:	mov    eax,DWORD PTR [esp+0x18]
  6c30d8:	mov    eax,DWORD PTR [eax]
  6c30da:	mov    DWORD PTR [esp+0x4],eax
  6c30de:	mov    DWORD PTR [esp],edi
  6c30e1:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6c30e6:	test   esi,esi
  6c30e8:	je     6c3232
  6c30ee:	mov    eax,DWORD PTR [esp+0x14]
  6c30f2:	mov    eax,DWORD PTR [eax]
  6c30f4:	mov    DWORD PTR [esp+0xc],eax
  6c30f8:	mov    DWORD PTR [esp+0x8],edi
  6c30fc:	mov    DWORD PTR [esp],esi
  6c30ff:	mov    DWORD PTR [esp+0x4],0x4
  6c3107:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6c310c:	mov    eax,DWORD PTR [ebp+0x8]
  6c310f:	mov    esi,DWORD PTR [eax+0x14]
  6c3112:	mov    eax,DWORD PTR [esp+0x1c]
  6c3116:	mov    eax,DWORD PTR [eax]
  6c3118:	mov    DWORD PTR [esp],eax
  6c311b:	call   20bfb2
  6c3120:	mov    edi,eax
  6c3122:	mov    eax,DWORD PTR [esp+0x18]
  6c3126:	mov    eax,DWORD PTR [eax]
  6c3128:	mov    DWORD PTR [esp+0x4],eax
  6c312c:	mov    DWORD PTR [esp],edi
  6c312f:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6c3134:	test   esi,esi
  6c3136:	je     6c323c
  6c313c:	mov    eax,DWORD PTR [esp+0x14]
  6c3140:	mov    eax,DWORD PTR [eax]
  6c3142:	mov    DWORD PTR [esp+0xc],eax
  6c3146:	mov    DWORD PTR [esp+0x8],edi
  6c314a:	mov    DWORD PTR [esp],esi
  6c314d:	mov    DWORD PTR [esp+0x4],0x5
  6c3155:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6c315a:	jmp    6c31a8
  6c315c:	mov    DWORD PTR [esp],eax
  6c315f:	call   20bfb2
  6c3164:	mov    edi,eax
  6c3166:	lea    eax,[ebx+0x4a1d0]
  6c316c:	mov    eax,DWORD PTR [eax]
  6c316e:	mov    DWORD PTR [esp+0x4],eax
  6c3172:	mov    DWORD PTR [esp],edi
  6c3175:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6c317a:	mov    eax,DWORD PTR [ebp+0x8]
  6c317d:	mov    eax,DWORD PTR [eax+0x10]
  6c3180:	test   eax,eax
  6c3182:	je     6c320a
  6c3188:	lea    ecx,[ebx+0x4ab5c]
  6c318e:	mov    ecx,DWORD PTR [ecx]
  6c3190:	mov    DWORD PTR [esp+0xc],ecx
  6c3194:	mov    DWORD PTR [esp+0x8],edi
  6c3198:	mov    ecx,DWORD PTR [esp+0x20]
  6c319c:	mov    DWORD PTR [esp+0x4],ecx
  6c31a0:	mov    DWORD PTR [esp],eax
  6c31a3:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6c31a8:	mov    eax,DWORD PTR [esp+0x20]
  6c31ac:	mov    DWORD PTR [esp+0x8],eax
  6c31b0:	mov    eax,DWORD PTR [ebp+0xc]
  6c31b3:	mov    DWORD PTR [esp+0x4],eax
  6c31b7:	mov    eax,DWORD PTR [ebp+0x8]
  6c31ba:	mov    DWORD PTR [esp],eax
  6c31bd:	call   6e10cb  ; ABH.GameDatas.InventoryGameData::GenerateGameDatasFromItemDatas
  6c31c2:	jmp    6c2e69
  6c31c7:	mov    DWORD PTR [esp+0x4],ecx
  6c31cb:	mov    DWORD PTR [esp],eax
  6c31ce:	call   440104
  6c31d3:	jmp    6c2f5f
  6c31d8:	jmp    6c3246
  6c31da:	call   1fbc48
  6c31df:	call   6b106a
  6c31e4:	mov    DWORD PTR [esp+0x20],0x0
  6c31ec:	mov    DWORD PTR [esp+0x1c],0xf9
  6c31f4:	jmp    6c326a
  6c31f6:	call   1fbc48
  6c31fb:	call   6b106a
  6c3200:	call   1fbc48
  6c3205:	call   6b106a
  6c320a:	call   1fbc48
  6c320f:	call   6b106a
  6c3214:	call   1fbc48
  6c3219:	call   6b106a
  6c321e:	call   1fbc48
  6c3223:	call   6b106a
  6c3228:	call   1fbc48
  6c322d:	call   6b106a
  6c3232:	call   1fbc48
  6c3237:	call   6b106a
  6c323c:	call   1fbc48
  6c3241:	jmp    6c3342
  6c3246:	cmp    edx,0x1
  6c3249:	jne    6c333a
  6c324f:	mov    DWORD PTR [esp],eax
  6c3252:	call   1ba3f0
  6c3257:	mov    eax,DWORD PTR [eax]
  6c3259:	mov    DWORD PTR [esp+0x20],eax
  6c325d:	call   1b9ce0
  6c3262:	mov    DWORD PTR [esp+0x1c],0x0
  6c326a:	mov    ecx,DWORD PTR [esp+0x24]
  6c326e:	lea    edi,[ebx+0x431a4]
  6c3274:	mov    eax,DWORD PTR [edi]
  6c3276:	mov    DWORD PTR [esp+0x4],eax
  6c327a:	mov    DWORD PTR [esp],ecx
  6c327d:	call   20c1b8
  6c3282:	mov    esi,eax
  6c3284:	test   esi,esi
  6c3286:	je     6c32df
  6c3288:	mov    eax,DWORD PTR [edi]
  6c328a:	mov    ecx,DWORD PTR [esi]
  6c328c:	mov    DWORD PTR [esp+0x24],ecx
  6c3290:	movzx  edx,WORD PTR [ecx+0xaa]
  6c3297:	test   edx,edx
  6c3299:	je     6c32ae
  6c329b:	mov    ecx,DWORD PTR [esp+0x24]
  6c329f:	mov    edi,DWORD PTR [ecx+0x4c]
  6c32a2:	xor    ecx,ecx
  6c32a4:	cmp    DWORD PTR [edi+ecx*8],eax
  6c32a7:	je     6c32c4
  6c32a9:	inc    ecx
  6c32aa:	cmp    ecx,edx
  6c32ac:	jb     6c32a4
  6c32ae:	mov    DWORD PTR [esp+0x4],eax
  6c32b2:	mov    DWORD PTR [esp],esi
  6c32b5:	mov    DWORD PTR [esp+0x8],0x0
  6c32bd:	call   1c1964
  6c32c2:	jmp    6c32d3
  6c32c4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6c32c8:	mov    ecx,DWORD PTR [esp+0x24]
  6c32cc:	lea    eax,[ecx+eax*8+0xb4]
  6c32d3:	mov    ecx,DWORD PTR [eax+0x4]
  6c32d6:	mov    DWORD PTR [esp+0x4],ecx
  6c32da:	mov    DWORD PTR [esp],esi
  6c32dd:	call   DWORD PTR [eax]
  6c32df:	cmp    DWORD PTR [esp+0x1c],0xf9
  6c32e7:	mov    eax,DWORD PTR [esp+0x20]
  6c32eb:	je     6c32f9
  6c32ed:	test   eax,eax
  6c32ef:	je     6c32f9
  6c32f1:	mov    DWORD PTR [esp],eax
  6c32f4:	call   1fbb20
  6c32f9:	mov    DWORD PTR [esp+0x4],0x0
  6c3301:	mov    DWORD PTR [esp],0x0
  6c3308:	call   106b137  ; DIContainerLogic::get_InventoryService
  6c330d:	test   eax,eax
  6c330f:	je     6c3330
  6c3311:	mov    ecx,DWORD PTR [ebp+0x8]
  6c3314:	mov    DWORD PTR [esp+0x4],ecx
  6c3318:	mov    DWORD PTR [esp],eax
  6c331b:	mov    DWORD PTR [esp+0x8],0x0
  6c3323:	call   576ff6  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::RewardDelayedRewards
  6c3328:	lea    esp,[ebp-0xc]
  6c332b:	pop    esi
  6c332c:	pop    edi
  6c332d:	pop    ebx
  6c332e:	pop    ebp
  6c332f:	ret
  6c3330:	call   1fbc48
  6c3335:	call   6b106a
  6c333a:	mov    DWORD PTR [esp],eax
  6c333d:	call   1b9bd0
  6c3342:	call   6b106a