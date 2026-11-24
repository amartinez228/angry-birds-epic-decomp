
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057cecb:
  57cecb:	push   ebp
  57cecc:	mov    ebp,esp
  57cece:	push   ebx
  57cecf:	push   edi
  57ced0:	push   esi
  57ced1:	and    esp,0xfffffff0
  57ced4:	sub    esp,0x30
  57ced7:	call   57cedc
  57cedc:	pop    ebx
  57cedd:	add    ebx,0x1995068
  57cee3:	mov    esi,DWORD PTR [ebp+0x24]
  57cee6:	mov    al,BYTE PTR [ebx+0x5d741]
  57ceec:	test   al,al
  57ceee:	jne    57cf07
  57cef0:	lea    eax,[ebx-0x6627f0]
  57cef6:	mov    eax,DWORD PTR [eax]
  57cef8:	mov    DWORD PTR [esp],eax
  57cefb:	call   1ca6e8
  57cf00:	mov    BYTE PTR [ebx+0x5d741],0x1
  57cf07:	test   esi,esi
  57cf09:	je     57d046
  57cf0f:	xor    edi,edi
  57cf11:	mov    DWORD PTR [esp+0x28],0x0
  57cf19:	jmp    57cf1f
  57cf1b:	inc    DWORD PTR [esp+0x28]
  57cf1f:	mov    DWORD PTR [esp],esi
  57cf22:	mov    DWORD PTR [esp+0x4],0x0
  57cf2a:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57cf2f:	test   eax,eax
  57cf31:	je     57d046
  57cf37:	lea    ecx,[ebx+0x4af80]
  57cf3d:	mov    ecx,DWORD PTR [ecx]
  57cf3f:	mov    DWORD PTR [esp+0x4],ecx
  57cf43:	mov    DWORD PTR [esp],eax
  57cf46:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57cf4b:	cmp    DWORD PTR [esp+0x28],eax
  57cf4f:	jge    57d03e
  57cf55:	mov    DWORD PTR [esp],esi
  57cf58:	mov    DWORD PTR [esp+0x4],0x0
  57cf60:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57cf65:	test   eax,eax
  57cf67:	je     57d046
  57cf6d:	lea    ecx,[ebx+0x4af7c]
  57cf73:	mov    ecx,DWORD PTR [ecx]
  57cf75:	mov    DWORD PTR [esp+0x8],ecx
  57cf79:	mov    ecx,DWORD PTR [esp+0x28]
  57cf7d:	mov    DWORD PTR [esp+0x4],ecx
  57cf81:	mov    DWORD PTR [esp],eax
  57cf84:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57cf89:	mov    esi,eax
  57cf8b:	test   esi,esi
  57cf8d:	je     57d046
  57cf93:	mov    eax,DWORD PTR [ebp+0x14]
  57cf96:	mov    DWORD PTR [esp+0x4],eax
  57cf9a:	mov    DWORD PTR [esp],esi
  57cf9d:	mov    DWORD PTR [esp+0x8],0x0
  57cfa5:	call   179b45b  ; ABH.Shared.Models.Generic.LootTableEntry::IsConditionSatisfied
  57cfaa:	test   al,al
  57cfac:	je     57d02d
  57cfae:	mov    DWORD PTR [esp+0x4],esi
  57cfb2:	call   57c002  ; ABH.Services.Logic.LootOperations::IsProbabilitySatisfied
  57cfb7:	test   al,al
  57cfb9:	je     57d02d
  57cfbb:	inc    edi
  57cfbc:	mov    eax,DWORD PTR [ebp+0x28]
  57cfbf:	mov    DWORD PTR [esp+0x18],eax
  57cfc3:	mov    DWORD PTR [esp+0x14],esi
  57cfc7:	mov    eax,DWORD PTR [ebp+0x20]
  57cfca:	mov    DWORD PTR [esp+0x10],eax
  57cfce:	mov    eax,DWORD PTR [ebp+0x1c]
  57cfd1:	mov    DWORD PTR [esp+0xc],eax
  57cfd5:	mov    eax,DWORD PTR [ebp+0x18]
  57cfd8:	mov    DWORD PTR [esp+0x8],eax
  57cfdc:	mov    eax,DWORD PTR [ebp+0x14]
  57cfdf:	mov    DWORD PTR [esp+0x4],eax
  57cfe3:	mov    eax,DWORD PTR [ebp+0x8]
  57cfe6:	mov    DWORD PTR [esp],eax
  57cfe9:	call   57d5ce  ; ABH.Services.Logic.LootOperations::ProcessLootEntry
  57cfee:	lea    eax,[ebx+0x499e0]
  57cff4:	mov    DWORD PTR [esp+0x24],eax
  57cff8:	mov    eax,DWORD PTR [eax]
  57cffa:	mov    DWORD PTR [esp+0x4],eax
  57cffe:	lea    esi,[ebp+0xc]
  57d001:	mov    DWORD PTR [esp],esi
  57d004:	call   16ab7d4
  57d009:	cmp    eax,0xffffffff
  57d00c:	je     57d02d
  57d00e:	mov    eax,DWORD PTR [esp+0x24]
  57d012:	mov    eax,DWORD PTR [eax]
  57d014:	mov    DWORD PTR [esp+0x4],eax
  57d018:	mov    DWORD PTR [esp],esi
  57d01b:	call   16ab7d4
  57d020:	cmp    edi,eax
  57d022:	mov    esi,DWORD PTR [ebp+0x24]
  57d025:	jl     57cf1b
  57d02b:	jmp    57d035
  57d02d:	mov    esi,DWORD PTR [ebp+0x24]
  57d030:	jmp    57cf1b
  57d035:	mov    eax,DWORD PTR [ebp+0x28]
  57d038:	mov    ecx,DWORD PTR [esp+0x28]
  57d03c:	mov    DWORD PTR [eax],ecx
  57d03e:	lea    esp,[ebp-0xc]
  57d041:	pop    esi
  57d042:	pop    edi
  57d043:	pop    ebx
  57d044:	pop    ebp
  57d045:	ret
  57d046:	call   1fbc48
  57d04b:	call   540b98