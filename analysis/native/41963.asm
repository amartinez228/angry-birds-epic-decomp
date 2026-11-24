
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057c9e7:
  57c9e7:	push   ebp
  57c9e8:	mov    ebp,esp
  57c9ea:	push   ebx
  57c9eb:	push   edi
  57c9ec:	push   esi
  57c9ed:	and    esp,0xfffffff0
  57c9f0:	sub    esp,0xa0
  57c9f6:	call   57c9fb
  57c9fb:	pop    ebx
  57c9fc:	add    ebx,0x1995549
  57ca02:	mov    al,BYTE PTR [ebx+0x5d73e]
  57ca08:	test   al,al
  57ca0a:	jne    57ca23
  57ca0c:	lea    eax,[ebx-0x6627e0]
  57ca12:	mov    eax,DWORD PTR [eax]
  57ca14:	mov    DWORD PTR [esp],eax
  57ca17:	call   1ca6e8
  57ca1c:	mov    BYTE PTR [ebx+0x5d73e],0x1
  57ca23:	mov    DWORD PTR [esp+0x94],0x0
  57ca2e:	mov    DWORD PTR [esp+0x90],0x0
  57ca39:	xorps  xmm0,xmm0
  57ca3c:	movaps XMMWORD PTR [esp+0x70],xmm0
  57ca41:	mov    DWORD PTR [esp+0x80],0x0
  57ca4c:	mov    DWORD PTR [esp+0x6c],0x0
  57ca54:	lea    edi,[ebx+0x45834]
  57ca5a:	mov    eax,DWORD PTR [edi]
  57ca5c:	mov    DWORD PTR [esp],eax
  57ca5f:	call   20bfb2
  57ca64:	mov    DWORD PTR [esp+0x48],eax
  57ca68:	lea    esi,[ebx+0x49f9c]
  57ca6e:	mov    ecx,DWORD PTR [esi]
  57ca70:	mov    DWORD PTR [esp+0x4],ecx
  57ca74:	mov    DWORD PTR [esp],eax
  57ca77:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  57ca7c:	mov    ecx,DWORD PTR [ebp+0xc]
  57ca7f:	test   ecx,ecx
  57ca81:	je     57ccf4
  57ca87:	lea    eax,[ebx+0x4967c]
  57ca8d:	mov    eax,DWORD PTR [eax]
  57ca8f:	mov    DWORD PTR [esp+0x8],eax
  57ca93:	mov    DWORD PTR [esp+0x4],ecx
  57ca97:	lea    eax,[esp+0x70]
  57ca9b:	mov    DWORD PTR [esp],eax
  57ca9e:	call   6138fc  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::GetEnumerator | System.Collections.Generic.Dictionary`2<object, int>::GetEnumerator
  57caa3:	sub    esp,0x4
  57caa6:	lea    eax,[ebx+0x49684]
  57caac:	mov    DWORD PTR [esp+0x44],eax
  57cab0:	movzx  eax,BYTE PTR [ebp+0x20]
  57cab4:	mov    DWORD PTR [esp+0x40],eax
  57cab8:	movzx  eax,BYTE PTR [ebp+0x18]
  57cabc:	mov    DWORD PTR [esp+0x3c],eax
  57cac0:	mov    eax,DWORD PTR [esp+0x44]
  57cac4:	mov    eax,DWORD PTR [eax]
  57cac6:	mov    DWORD PTR [esp+0x4],eax
  57caca:	lea    eax,[esp+0x70]
  57cace:	mov    DWORD PTR [esp],eax
  57cad1:	call   11a34b2
  57cad6:	test   al,al
  57cad8:	je     57cd1c
  57cade:	lea    eax,[ebx+0x49680]
  57cae4:	mov    eax,DWORD PTR [eax]
  57cae6:	mov    DWORD PTR [esp+0x8],eax
  57caea:	lea    eax,[esp+0x70]
  57caee:	mov    DWORD PTR [esp+0x4],eax
  57caf2:	lea    eax,[esp+0x60]
  57caf6:	mov    DWORD PTR [esp],eax
  57caf9:	call   11a36f0
  57cafe:	sub    esp,0x4
  57cb01:	movsd  xmm0,QWORD PTR [esp+0x60]
  57cb07:	movsd  QWORD PTR [esp+0x90],xmm0
  57cb10:	mov    DWORD PTR [esp+0x6c],0x0
  57cb18:	lea    eax,[ebx+0x499e0]
  57cb1e:	mov    eax,DWORD PTR [eax]
  57cb20:	mov    DWORD PTR [esp+0x4],eax
  57cb24:	lea    eax,[esp+0x90]
  57cb2b:	mov    DWORD PTR [esp],eax
  57cb2e:	call   16ab7d4
  57cb33:	mov    DWORD PTR [esp+0x4c],eax
  57cb37:	lea    eax,[ebx+0x45820]
  57cb3d:	mov    eax,DWORD PTR [eax]
  57cb3f:	test   BYTE PTR [eax+0xb2],0x1
  57cb46:	je     57cb56
  57cb48:	cmp    DWORD PTR [eax+0x60],0x0
  57cb4c:	jne    57cb56
  57cb4e:	mov    DWORD PTR [esp],eax
  57cb51:	call   1db0b8
  57cb56:	mov    DWORD PTR [esp+0x4],0x0
  57cb5e:	mov    DWORD PTR [esp],0x0
  57cb65:	call   1089c7f  ; DIContainerBalancing::get_LootTableBalancingDataPovider
  57cb6a:	mov    esi,eax
  57cb6c:	lea    edi,[ebx+0x499dc]
  57cb72:	mov    eax,DWORD PTR [edi]
  57cb74:	mov    DWORD PTR [esp+0x4],eax
  57cb78:	lea    eax,[esp+0x90]
  57cb7f:	mov    DWORD PTR [esp],eax
  57cb82:	call   16ab7a2
  57cb87:	test   esi,esi
  57cb89:	je     57cd26
  57cb8f:	lea    ecx,[esp+0x6c]
  57cb93:	mov    DWORD PTR [esp+0x8],ecx
  57cb97:	mov    DWORD PTR [esp+0x4],eax
  57cb9b:	mov    DWORD PTR [esp],esi
  57cb9e:	mov    DWORD PTR [esp+0xc],0x0
  57cba6:	call   abdae6  ; ABH.Shared.BalancingData.LootTableBalancingDataProvider::TryGetBalancingData
  57cbab:	test   al,al
  57cbad:	je     57cc61
  57cbb3:	mov    eax,DWORD PTR [edi]
  57cbb5:	mov    DWORD PTR [esp+0x4],eax
  57cbb9:	lea    eax,[esp+0x90]
  57cbc0:	mov    DWORD PTR [esp],eax
  57cbc3:	call   16ab7a2
  57cbc8:	mov    DWORD PTR [esp+0x5c],0x0
  57cbd0:	mov    DWORD PTR [esp+0x58],0x0
  57cbd8:	lea    ecx,[ebx+0x499e4]
  57cbde:	mov    ecx,DWORD PTR [ecx]
  57cbe0:	mov    DWORD PTR [esp+0xc],ecx
  57cbe4:	mov    ecx,DWORD PTR [esp+0x4c]
  57cbe8:	mov    DWORD PTR [esp+0x8],ecx
  57cbec:	mov    DWORD PTR [esp+0x4],eax
  57cbf0:	lea    eax,[esp+0x58]
  57cbf4:	mov    DWORD PTR [esp],eax
  57cbf7:	call   16ab713
  57cbfc:	movsd  xmm0,QWORD PTR [esp+0x58]
  57cc02:	movsd  QWORD PTR [esp+0x50],xmm0
  57cc08:	mov    eax,DWORD PTR [esp+0x40]
  57cc0c:	mov    DWORD PTR [esp+0x28],eax
  57cc10:	mov    eax,DWORD PTR [esp+0x3c]
  57cc14:	mov    DWORD PTR [esp+0x24],eax
  57cc18:	mov    eax,DWORD PTR [ebp+0x1c]
  57cc1b:	mov    DWORD PTR [esp+0x20],eax
  57cc1f:	mov    eax,DWORD PTR [esp+0x48]
  57cc23:	mov    DWORD PTR [esp+0x14],eax
  57cc27:	mov    eax,DWORD PTR [ebp+0x14]
  57cc2a:	mov    DWORD PTR [esp+0x10],eax
  57cc2e:	mov    eax,DWORD PTR [ebp+0x10]
  57cc31:	mov    DWORD PTR [esp+0xc],eax
  57cc35:	movsd  xmm0,QWORD PTR [esp+0x50]
  57cc3b:	movsd  QWORD PTR [esp+0x4],xmm0
  57cc41:	mov    eax,DWORD PTR [ebp+0x8]
  57cc44:	mov    DWORD PTR [esp],eax
  57cc47:	mov    DWORD PTR [esp+0x1c],0xa
  57cc4f:	mov    DWORD PTR [esp+0x18],0x0
  57cc57:	call   57c4df  ; ABH.Services.Logic.LootOperations::GenerateLootRecursive
  57cc5c:	jmp    57cac0
  57cc61:	cmp    DWORD PTR [esp+0x4c],0x0
  57cc66:	jle    57cac0
  57cc6c:	mov    eax,DWORD PTR [edi]
  57cc6e:	mov    DWORD PTR [esp+0x4],eax
  57cc72:	lea    eax,[esp+0x90]
  57cc79:	mov    DWORD PTR [esp],eax
  57cc7c:	call   16ab7a2
  57cc81:	mov    ecx,DWORD PTR [ebp+0x10]
  57cc84:	mov    DWORD PTR [esp+0x10],ecx
  57cc88:	mov    ecx,DWORD PTR [esp+0x4c]
  57cc8c:	mov    DWORD PTR [esp+0xc],ecx
  57cc90:	mov    DWORD PTR [esp+0x8],eax
  57cc94:	mov    eax,DWORD PTR [esp+0x48]
  57cc98:	mov    DWORD PTR [esp+0x4],eax
  57cc9c:	call   57c07a  ; ABH.Services.Logic.LootOperations::AddItemValue
  57cca1:	jmp    57cac0
  57cca6:	cmp    edx,0x1
  57cca9:	jne    57cd32
  57ccaf:	mov    DWORD PTR [esp],eax
  57ccb2:	call   1ba3f0
  57ccb7:	mov    esi,DWORD PTR [eax]
  57ccb9:	call   1b9ce0
  57ccbe:	mov    DWORD PTR [esp+0x4c],0x0
  57ccc6:	lea    eax,[ebx+0x49688]
  57cccc:	mov    eax,DWORD PTR [eax]
  57ccce:	mov    DWORD PTR [esp+0x4],eax
  57ccd2:	lea    eax,[esp+0x70]
  57ccd6:	mov    DWORD PTR [esp],eax
  57ccd9:	call   11a3826
  57ccde:	mov    eax,DWORD PTR [esp+0x4c]
  57cce2:	test   al,al
  57cce4:	jne    57cd10
  57cce6:	test   esi,esi
  57cce8:	je     57cd10
  57ccea:	mov    DWORD PTR [esp],esi
  57cced:	call   1fbb20
  57ccf2:	jmp    57cd10
  57ccf4:	mov    eax,DWORD PTR [edi]
  57ccf6:	mov    DWORD PTR [esp],eax
  57ccf9:	call   20bfb2
  57ccfe:	mov    DWORD PTR [esp+0x48],eax
  57cd02:	mov    ecx,DWORD PTR [esi]
  57cd04:	mov    DWORD PTR [esp+0x4],ecx
  57cd08:	mov    DWORD PTR [esp],eax
  57cd0b:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  57cd10:	mov    eax,DWORD PTR [esp+0x48]
  57cd14:	lea    esp,[ebp-0xc]
  57cd17:	pop    esi
  57cd18:	pop    edi
  57cd19:	pop    ebx
  57cd1a:	pop    ebp
  57cd1b:	ret
  57cd1c:	xor    esi,esi
  57cd1e:	mov    al,0x1
  57cd20:	mov    DWORD PTR [esp+0x4c],eax
  57cd24:	jmp    57ccc6
  57cd26:	call   1fbc48
  57cd2b:	jmp    57cd3a
  57cd2d:	jmp    57cca6
  57cd32:	mov    DWORD PTR [esp],eax
  57cd35:	call   1b9bd0
  57cd3a:	call   540b98