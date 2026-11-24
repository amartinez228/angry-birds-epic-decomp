
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00575d09:
  575d09:	push   ebp
  575d0a:	mov    ebp,esp
  575d0c:	push   ebx
  575d0d:	push   edi
  575d0e:	push   esi
  575d0f:	and    esp,0xfffffff0
  575d12:	sub    esp,0x10
  575d15:	call   575d1a
  575d1a:	pop    ebx
  575d1b:	add    ebx,0x199c22a
  575d21:	mov    al,BYTE PTR [ebx+0x5d718]
  575d27:	test   al,al
  575d29:	jne    575d42
  575d2b:	lea    eax,[ebx-0x664c60]
  575d31:	mov    eax,DWORD PTR [eax]
  575d33:	mov    DWORD PTR [esp],eax
  575d36:	call   1ca6e8
  575d3b:	mov    BYTE PTR [ebx+0x5d718],0x1
  575d42:	lea    eax,[ebx+0x45530]
  575d48:	mov    eax,DWORD PTR [eax]
  575d4a:	mov    DWORD PTR [esp],eax
  575d4d:	call   20bfb2
  575d52:	mov    esi,eax
  575d54:	mov    DWORD PTR [esp],esi
  575d57:	mov    DWORD PTR [esp+0x4],0x0
  575d5f:	call   179c381  ; ABH.Shared.Models.InventoryItems.EquipmentData::.ctor
  575d64:	test   esi,esi
  575d66:	je     575e01
  575d6c:	mov    edi,DWORD PTR [ebp+0x14]
  575d6f:	mov    eax,DWORD PTR [ebp+0xc]
  575d72:	mov    DWORD PTR [esp+0x4],eax
  575d76:	mov    DWORD PTR [esp],esi
  575d79:	mov    DWORD PTR [esp+0x8],0x0
  575d81:	call   179c250  ; ABH.Shared.Models.InventoryItems.EquipmentData::set_Level
  575d86:	mov    DWORD PTR [esp+0x4],edi
  575d8a:	mov    DWORD PTR [esp],esi
  575d8d:	mov    DWORD PTR [esp+0x8],0x0
  575d95:	call   179c22d  ; ABH.Shared.Models.InventoryItems.EquipmentData::set_NameId
  575d9a:	mov    eax,DWORD PTR [ebp+0x18]
  575d9d:	mov    DWORD PTR [esp+0x4],eax
  575da1:	mov    DWORD PTR [esp],esi
  575da4:	mov    DWORD PTR [esp+0x8],0x0
  575dac:	call   179c273  ; ABH.Shared.Models.InventoryItems.EquipmentData::set_Value
  575db1:	mov    eax,DWORD PTR [ebp+0x10]
  575db4:	mov    DWORD PTR [esp+0x4],eax
  575db8:	mov    DWORD PTR [esp],esi
  575dbb:	mov    DWORD PTR [esp+0x8],0x0
  575dc3:	call   179c296  ; ABH.Shared.Models.InventoryItems.EquipmentData::set_Quality
  575dc8:	mov    DWORD PTR [esp],esi
  575dcb:	mov    DWORD PTR [esp+0x8],0x0
  575dd3:	mov    DWORD PTR [esp+0x4],0x1
  575ddb:	call   179c2dd  ; ABH.Shared.Models.InventoryItems.EquipmentData::set_IsNew
  575de0:	mov    eax,DWORD PTR [ebp+0x1c]
  575de3:	mov    DWORD PTR [esp+0x4],eax
  575de7:	mov    DWORD PTR [esp],esi
  575dea:	mov    DWORD PTR [esp+0x8],0x0
  575df2:	call   179c300  ; ABH.Shared.Models.InventoryItems.EquipmentData::set_ItemSource
  575df7:	mov    eax,esi
  575df9:	lea    esp,[ebp-0xc]
  575dfc:	pop    esi
  575dfd:	pop    edi
  575dfe:	pop    ebx
  575dff:	pop    ebp
  575e00:	ret
  575e01:	call   1fbc48
  575e06:	call   540b98