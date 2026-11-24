
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00575e0b:
  575e0b:	push   ebp
  575e0c:	mov    ebp,esp
  575e0e:	push   ebx
  575e0f:	push   edi
  575e10:	push   esi
  575e11:	and    esp,0xfffffff0
  575e14:	sub    esp,0x10
  575e17:	call   575e1c
  575e1c:	pop    ebx
  575e1d:	add    ebx,0x199c128
  575e23:	mov    al,BYTE PTR [ebx+0x5d71d]
  575e29:	test   al,al
  575e2b:	jne    575e44
  575e2d:	lea    eax,[ebx-0x664c64]
  575e33:	mov    eax,DWORD PTR [eax]
  575e35:	mov    DWORD PTR [esp],eax
  575e38:	call   1ca6e8
  575e3d:	mov    BYTE PTR [ebx+0x5d71d],0x1
  575e44:	lea    eax,[ebx+0x45528]
  575e4a:	mov    eax,DWORD PTR [eax]
  575e4c:	mov    DWORD PTR [esp],eax
  575e4f:	call   20bfb2
  575e54:	mov    esi,eax
  575e56:	mov    DWORD PTR [esp],esi
  575e59:	mov    DWORD PTR [esp+0x4],0x0
  575e61:	call   179c1ee  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::.ctor
  575e66:	test   esi,esi
  575e68:	je     575ee8
  575e6a:	mov    edi,DWORD PTR [ebp+0x14]
  575e6d:	mov    eax,DWORD PTR [ebp+0xc]
  575e70:	mov    DWORD PTR [esp+0x4],eax
  575e74:	mov    DWORD PTR [esp],esi
  575e77:	mov    DWORD PTR [esp+0x8],0x0
  575e7f:	call   179c14d  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::set_Level
  575e84:	mov    DWORD PTR [esp+0x4],edi
  575e88:	mov    DWORD PTR [esp],esi
  575e8b:	mov    DWORD PTR [esp+0x8],0x0
  575e93:	call   179c12a  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::set_NameId
  575e98:	mov    eax,DWORD PTR [ebp+0x18]
  575e9b:	mov    DWORD PTR [esp+0x4],eax
  575e9f:	mov    DWORD PTR [esp],esi
  575ea2:	mov    DWORD PTR [esp+0x8],0x0
  575eaa:	call   179c170  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::set_Value
  575eaf:	mov    eax,DWORD PTR [ebp+0x10]
  575eb2:	mov    DWORD PTR [esp+0x4],eax
  575eb6:	mov    DWORD PTR [esp],esi
  575eb9:	mov    DWORD PTR [esp+0x8],0x0
  575ec1:	call   179c193  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::set_Quality
  575ec6:	mov    DWORD PTR [esp],esi
  575ec9:	mov    DWORD PTR [esp+0x8],0x0
  575ed1:	mov    DWORD PTR [esp+0x4],0x1
  575ed9:	call   179c1b7  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::set_IsNew
  575ede:	mov    eax,esi
  575ee0:	lea    esp,[ebp-0xc]
  575ee3:	pop    esi
  575ee4:	pop    edi
  575ee5:	pop    ebx
  575ee6:	pop    ebp
  575ee7:	ret
  575ee8:	call   1fbc48
  575eed:	call   540b98