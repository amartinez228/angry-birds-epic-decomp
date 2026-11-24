
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057cd95:
  57cd95:	push   ebp
  57cd96:	mov    ebp,esp
  57cd98:	push   ebx
  57cd99:	push   edi
  57cd9a:	push   esi
  57cd9b:	and    esp,0xfffffff0
  57cd9e:	sub    esp,0x30
  57cda1:	call   57cda6
  57cda6:	pop    ebx
  57cda7:	add    ebx,0x199519e
  57cdad:	mov    al,BYTE PTR [ebx+0x5d742]
  57cdb3:	test   al,al
  57cdb5:	jne    57cdce
  57cdb7:	lea    eax,[ebx-0x6627f4]
  57cdbd:	mov    eax,DWORD PTR [eax]
  57cdbf:	mov    DWORD PTR [esp],eax
  57cdc2:	call   1ca6e8
  57cdc7:	mov    BYTE PTR [ebx+0x5d742],0x1
  57cdce:	lea    eax,[ebx+0x499e0]
  57cdd4:	mov    DWORD PTR [esp+0x24],eax
  57cdd8:	mov    eax,DWORD PTR [eax]
  57cdda:	mov    DWORD PTR [esp+0x4],eax
  57cdde:	lea    eax,[ebp+0xc]
  57cde1:	mov    DWORD PTR [esp],eax
  57cde4:	call   16ab7d4
  57cde9:	test   eax,eax
  57cdeb:	jle    57ceb9
  57cdf1:	mov    esi,DWORD PTR [ebp+0x24]
  57cdf4:	test   esi,esi
  57cdf6:	je     57cec1
  57cdfc:	xor    edi,edi
  57cdfe:	mov    DWORD PTR [esp+0x28],edi
  57ce02:	xor    edi,edi
  57ce04:	jmp    57ce51
  57ce06:	lea    ecx,[ebx+0x4af7c]
  57ce0c:	mov    ecx,DWORD PTR [ecx]
  57ce0e:	mov    DWORD PTR [esp+0x8],ecx
  57ce12:	mov    DWORD PTR [esp+0x4],edi
  57ce16:	mov    DWORD PTR [esp],eax
  57ce19:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57ce1e:	mov    ecx,DWORD PTR [ebp+0x28]
  57ce21:	mov    DWORD PTR [esp+0x18],ecx
  57ce25:	mov    DWORD PTR [esp+0x14],eax
  57ce29:	mov    eax,DWORD PTR [ebp+0x20]
  57ce2c:	mov    DWORD PTR [esp+0x10],eax
  57ce30:	mov    eax,DWORD PTR [ebp+0x1c]
  57ce33:	mov    DWORD PTR [esp+0xc],eax
  57ce37:	mov    eax,DWORD PTR [ebp+0x18]
  57ce3a:	mov    DWORD PTR [esp+0x8],eax
  57ce3e:	mov    eax,DWORD PTR [ebp+0x14]
  57ce41:	mov    DWORD PTR [esp+0x4],eax
  57ce45:	mov    eax,DWORD PTR [ebp+0x8]
  57ce48:	mov    DWORD PTR [esp],eax
  57ce4b:	call   57d5ce  ; ABH.Services.Logic.LootOperations::ProcessLootEntry
  57ce50:	inc    edi
  57ce51:	mov    DWORD PTR [esp],esi
  57ce54:	mov    DWORD PTR [esp+0x4],0x0
  57ce5c:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57ce61:	test   eax,eax
  57ce63:	je     57cec1
  57ce65:	lea    ecx,[ebx+0x4af80]
  57ce6b:	mov    ecx,DWORD PTR [ecx]
  57ce6d:	mov    DWORD PTR [esp+0x4],ecx
  57ce71:	mov    DWORD PTR [esp],eax
  57ce74:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57ce79:	cmp    edi,eax
  57ce7b:	jge    57ce97
  57ce7d:	mov    DWORD PTR [esp],esi
  57ce80:	mov    DWORD PTR [esp+0x4],0x0
  57ce88:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57ce8d:	test   eax,eax
  57ce8f:	jne    57ce06
  57ce95:	jmp    57cec1
  57ce97:	mov    edi,DWORD PTR [esp+0x28]
  57ce9b:	inc    edi
  57ce9c:	mov    eax,DWORD PTR [esp+0x24]
  57cea0:	mov    eax,DWORD PTR [eax]
  57cea2:	mov    DWORD PTR [esp+0x4],eax
  57cea6:	lea    eax,[ebp+0xc]
  57cea9:	mov    DWORD PTR [esp],eax
  57ceac:	call   16ab7d4
  57ceb1:	cmp    edi,eax
  57ceb3:	jl     57cdfe
  57ceb9:	lea    esp,[ebp-0xc]
  57cebc:	pop    esi
  57cebd:	pop    edi
  57cebe:	pop    ebx
  57cebf:	pop    ebp
  57cec0:	ret
  57cec1:	call   1fbc48
  57cec6:	call   540b98