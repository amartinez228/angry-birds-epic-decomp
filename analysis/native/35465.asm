
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c3a7b:
  6c3a7b:	push   ebp
  6c3a7c:	mov    ebp,esp
  6c3a7e:	push   ebx
  6c3a7f:	push   edi
  6c3a80:	push   esi
  6c3a81:	and    esp,0xfffffff0
  6c3a84:	sub    esp,0x10
  6c3a87:	call   6c3a8c
  6c3a8c:	pop    ebx
  6c3a8d:	add    ebx,0x184e4b8
  6c3a93:	mov    edi,DWORD PTR [ebp+0xc]
  6c3a96:	mov    esi,DWORD PTR [ebp+0x8]
  6c3a99:	mov    al,BYTE PTR [ebx+0x5f775]
  6c3a9f:	test   al,al
  6c3aa1:	jne    6c3aba
  6c3aa3:	lea    eax,[ebx-0x664e34]
  6c3aa9:	mov    eax,DWORD PTR [eax]
  6c3aab:	mov    DWORD PTR [esp],eax
  6c3aae:	call   1ca6e8
  6c3ab3:	mov    BYTE PTR [ebx+0x5f775],0x1
  6c3aba:	lea    eax,[ebx+0x4ab4c]
  6c3ac0:	mov    eax,DWORD PTR [eax]
  6c3ac2:	mov    DWORD PTR [esp+0x8],eax
  6c3ac6:	mov    DWORD PTR [esp+0x4],edi
  6c3aca:	mov    DWORD PTR [esp],esi
  6c3acd:	call   16071e4  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BannerItemBalancingData, ABH.Shared.Models.InventoryItems.BannerItemData>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BasicItemBalancingData, ABH.Shared.Models.InventoryItems.BasicItemData>::.ctor | +15 other aliases
  6c3ad2:	lea    esp,[ebp-0xc]
  6c3ad5:	pop    esi
  6c3ad6:	pop    edi
  6c3ad7:	pop    ebx
  6c3ad8:	pop    ebp
  6c3ad9:	ret