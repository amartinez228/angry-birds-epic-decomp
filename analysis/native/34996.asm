
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c4813:
  6c4813:	push   ebp
  6c4814:	mov    ebp,esp
  6c4816:	push   ebx
  6c4817:	push   edi
  6c4818:	push   esi
  6c4819:	and    esp,0xfffffff0
  6c481c:	sub    esp,0x10
  6c481f:	call   6c4824
  6c4824:	pop    ebx
  6c4825:	add    ebx,0x184d720
  6c482b:	mov    edi,DWORD PTR [ebp+0x8]
  6c482e:	mov    al,BYTE PTR [ebx+0x5f648]
  6c4834:	test   al,al
  6c4836:	jne    6c484f
  6c4838:	lea    eax,[ebx-0x66eb3c]
  6c483e:	mov    eax,DWORD PTR [eax]
  6c4840:	mov    DWORD PTR [esp],eax
  6c4843:	call   1ca6e8
  6c4848:	mov    BYTE PTR [ebx+0x5f648],0x1
  6c484f:	mov    eax,DWORD PTR [edi+0x18]
  6c4852:	test   eax,eax
  6c4854:	je     6c4903
  6c485a:	mov    eax,DWORD PTR [eax+0x10]
  6c485d:	test   eax,eax
  6c485f:	je     6c4903
  6c4865:	lea    ecx,[ebx+0x49f84]
  6c486b:	mov    ecx,DWORD PTR [ecx]
  6c486d:	mov    DWORD PTR [esp+0x8],ecx
  6c4871:	mov    DWORD PTR [esp],eax
  6c4874:	mov    DWORD PTR [esp+0x4],0x4
  6c487c:	xor    esi,esi
  6c487e:	call   5a0666  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, object>::ContainsKey
  6c4883:	test   al,al
  6c4885:	je     6c48f9
  6c4887:	mov    eax,DWORD PTR [edi+0x18]
  6c488a:	test   eax,eax
  6c488c:	je     6c4903
  6c488e:	mov    eax,DWORD PTR [eax+0x10]
  6c4891:	test   eax,eax
  6c4893:	je     6c4903
  6c4895:	lea    ecx,[ebx+0x49f74]
  6c489b:	mov    ecx,DWORD PTR [ecx]
  6c489d:	mov    DWORD PTR [esp+0x8],ecx
  6c48a1:	mov    DWORD PTR [esp],eax
  6c48a4:	mov    DWORD PTR [esp+0x4],0x4
  6c48ac:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6c48b1:	lea    ecx,[ebx+0x49f88]
  6c48b7:	mov    ecx,DWORD PTR [ecx]
  6c48b9:	mov    DWORD PTR [esp+0x8],ecx
  6c48bd:	mov    DWORD PTR [esp+0x4],eax
  6c48c1:	mov    DWORD PTR [esp],0x0
  6c48c8:	call   15eff96  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +31 other aliases
  6c48cd:	test   eax,eax
  6c48cf:	je     6c48f9
  6c48d1:	lea    ecx,[ebx+0x45e28]
  6c48d7:	mov    ecx,DWORD PTR [ecx]
  6c48d9:	mov    edi,DWORD PTR [eax]
  6c48db:	movzx  edx,BYTE PTR [ecx+0xac]
  6c48e2:	movzx  ebx,BYTE PTR [edi+0xac]
  6c48e9:	cmp    ebx,edx
  6c48eb:	jb     6c48f9
  6c48ed:	mov    edi,DWORD PTR [edi+0x58]
  6c48f0:	xor    esi,esi
  6c48f2:	cmp    DWORD PTR [edi+edx*4-0x4],ecx
  6c48f6:	cmove  esi,eax
  6c48f9:	mov    eax,esi
  6c48fb:	lea    esp,[ebp-0xc]
  6c48fe:	pop    esi
  6c48ff:	pop    edi
  6c4900:	pop    ebx
  6c4901:	pop    ebp
  6c4902:	ret
  6c4903:	call   1fbc48
  6c4908:	call   6b106a