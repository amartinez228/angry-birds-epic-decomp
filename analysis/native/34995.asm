
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c4719:
  6c4719:	push   ebp
  6c471a:	mov    ebp,esp
  6c471c:	push   ebx
  6c471d:	push   edi
  6c471e:	push   esi
  6c471f:	and    esp,0xfffffff0
  6c4722:	sub    esp,0x10
  6c4725:	call   6c472a
  6c472a:	pop    ebx
  6c472b:	add    ebx,0x184d81a
  6c4731:	mov    edi,DWORD PTR [ebp+0x8]
  6c4734:	mov    al,BYTE PTR [ebx+0x5f647]
  6c473a:	test   al,al
  6c473c:	jne    6c4755
  6c473e:	lea    eax,[ebx-0x66eb44]
  6c4744:	mov    eax,DWORD PTR [eax]
  6c4746:	mov    DWORD PTR [esp],eax
  6c4749:	call   1ca6e8
  6c474e:	mov    BYTE PTR [ebx+0x5f647],0x1
  6c4755:	mov    eax,DWORD PTR [edi+0x18]
  6c4758:	test   eax,eax
  6c475a:	je     6c4809
  6c4760:	mov    eax,DWORD PTR [eax+0x10]
  6c4763:	test   eax,eax
  6c4765:	je     6c4809
  6c476b:	lea    ecx,[ebx+0x49f84]
  6c4771:	mov    ecx,DWORD PTR [ecx]
  6c4773:	mov    DWORD PTR [esp+0x8],ecx
  6c4777:	mov    DWORD PTR [esp],eax
  6c477a:	mov    DWORD PTR [esp+0x4],0x3
  6c4782:	xor    esi,esi
  6c4784:	call   5a0666  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, object>::ContainsKey
  6c4789:	test   al,al
  6c478b:	je     6c47ff
  6c478d:	mov    eax,DWORD PTR [edi+0x18]
  6c4790:	test   eax,eax
  6c4792:	je     6c4809
  6c4794:	mov    eax,DWORD PTR [eax+0x10]
  6c4797:	test   eax,eax
  6c4799:	je     6c4809
  6c479b:	lea    ecx,[ebx+0x49f74]
  6c47a1:	mov    ecx,DWORD PTR [ecx]
  6c47a3:	mov    DWORD PTR [esp+0x8],ecx
  6c47a7:	mov    DWORD PTR [esp],eax
  6c47aa:	mov    DWORD PTR [esp+0x4],0x3
  6c47b2:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6c47b7:	lea    ecx,[ebx+0x49f88]
  6c47bd:	mov    ecx,DWORD PTR [ecx]
  6c47bf:	mov    DWORD PTR [esp+0x8],ecx
  6c47c3:	mov    DWORD PTR [esp+0x4],eax
  6c47c7:	mov    DWORD PTR [esp],0x0
  6c47ce:	call   15eff96  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +31 other aliases
  6c47d3:	test   eax,eax
  6c47d5:	je     6c47ff
  6c47d7:	lea    ecx,[ebx+0x45e28]
  6c47dd:	mov    ecx,DWORD PTR [ecx]
  6c47df:	mov    edi,DWORD PTR [eax]
  6c47e1:	movzx  edx,BYTE PTR [ecx+0xac]
  6c47e8:	movzx  ebx,BYTE PTR [edi+0xac]
  6c47ef:	cmp    ebx,edx
  6c47f1:	jb     6c47ff
  6c47f3:	mov    edi,DWORD PTR [edi+0x58]
  6c47f6:	xor    esi,esi
  6c47f8:	cmp    DWORD PTR [edi+edx*4-0x4],ecx
  6c47fc:	cmove  esi,eax
  6c47ff:	mov    eax,esi
  6c4801:	lea    esp,[ebp-0xc]
  6c4804:	pop    esi
  6c4805:	pop    edi
  6c4806:	pop    ebx
  6c4807:	pop    ebp
  6c4808:	ret
  6c4809:	call   1fbc48
  6c480e:	call   6b106a