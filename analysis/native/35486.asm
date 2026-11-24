
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006e6654:
  6e6654:	push   ebp
  6e6655:	mov    ebp,esp
  6e6657:	push   ebx
  6e6658:	push   edi
  6e6659:	push   esi
  6e665a:	and    esp,0xfffffff0
  6e665d:	sub    esp,0x40
  6e6660:	call   6e6665
  6e6665:	pop    ebx
  6e6666:	add    ebx,0x182b8df
  6e666c:	mov    edi,DWORD PTR [ebp+0x8]
  6e666f:	mov    al,BYTE PTR [ebx+0x5f787]
  6e6675:	test   al,al
  6e6677:	jne    6e6690
  6e6679:	lea    eax,[ebx-0x664e18]
  6e667f:	mov    eax,DWORD PTR [eax]
  6e6681:	mov    DWORD PTR [esp],eax
  6e6684:	call   1ca6e8
  6e6689:	mov    BYTE PTR [ebx+0x5f787],0x1
  6e6690:	lea    eax,[ebx+0x45ed4]
  6e6696:	mov    eax,DWORD PTR [eax]
  6e6698:	mov    DWORD PTR [esp],eax
  6e669b:	call   20bfb2
  6e66a0:	mov    esi,eax
  6e66a2:	lea    eax,[ebx+0x4ab54]
  6e66a8:	mov    eax,DWORD PTR [eax]
  6e66aa:	mov    DWORD PTR [esp+0x4],eax
  6e66ae:	mov    DWORD PTR [esp],esi
  6e66b1:	call   59dee5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::.ctor | +2 other aliases
  6e66b6:	mov    DWORD PTR [edi+0x10],esi
  6e66b9:	lea    eax,[ebx+0x43128]
  6e66bf:	mov    eax,DWORD PTR [eax]
  6e66c1:	test   BYTE PTR [eax+0xb2],0x1
  6e66c8:	je     6e66d8
  6e66ca:	cmp    DWORD PTR [eax+0x60],0x0
  6e66ce:	jne    6e66d8
  6e66d0:	mov    DWORD PTR [esp],eax
  6e66d3:	call   1db0b8
  6e66d8:	lea    eax,[ebx+0x427b0]
  6e66de:	mov    eax,DWORD PTR [eax]
  6e66e0:	mov    DWORD PTR [esp+0x38],eax
  6e66e4:	mov    eax,DWORD PTR [esp+0x38]
  6e66e8:	mov    DWORD PTR [esp+0x4],eax
  6e66ec:	mov    DWORD PTR [esp+0x8],0x0
  6e66f4:	mov    DWORD PTR [esp],0x0
  6e66fb:	call   1696d04  ; System.Type::GetTypeFromHandle
  6e6700:	mov    esi,eax
  6e6702:	lea    eax,[ebx+0x434c0]
  6e6708:	mov    eax,DWORD PTR [eax]
  6e670a:	test   BYTE PTR [eax+0xb2],0x1
  6e6711:	je     6e6721
  6e6713:	cmp    DWORD PTR [eax+0x60],0x0
  6e6717:	jne    6e6721
  6e6719:	mov    DWORD PTR [esp],eax
  6e671c:	call   1db0b8
  6e6721:	mov    DWORD PTR [esp+0x4],esi
  6e6725:	mov    DWORD PTR [esp+0x8],0x0
  6e672d:	mov    DWORD PTR [esp],0x0
  6e6734:	call   ff6d8d  ; System.Enum::GetValues
  6e6739:	test   eax,eax
  6e673b:	je     6e6f18
  6e6741:	mov    DWORD PTR [esp],eax
  6e6744:	mov    DWORD PTR [esp+0x4],0x0
  6e674c:	call   ef894f  ; System.Array::GetEnumerator
  6e6751:	mov    DWORD PTR [esp+0x34],eax
  6e6755:	test   eax,eax
  6e6757:	je     6e68ba
  6e675d:	lea    eax,[ebx+0x4319c]
  6e6763:	mov    DWORD PTR [esp+0x30],eax
  6e6767:	mov    eax,DWORD PTR [esp+0x30]
  6e676b:	mov    eax,DWORD PTR [eax]
  6e676d:	mov    ecx,DWORD PTR [esp+0x34]
  6e6771:	mov    ecx,DWORD PTR [ecx]
  6e6773:	movzx  edx,WORD PTR [ecx+0xaa]
  6e677a:	test   edx,edx
  6e677c:	je     6e678d
  6e677e:	mov    esi,DWORD PTR [ecx+0x4c]
  6e6781:	xor    edi,edi
  6e6783:	cmp    DWORD PTR [esi+edi*8],eax
  6e6786:	je     6e67a7
  6e6788:	inc    edi
  6e6789:	cmp    edi,edx
  6e678b:	jb     6e6783
  6e678d:	mov    DWORD PTR [esp+0x4],eax
  6e6791:	mov    eax,DWORD PTR [esp+0x34]
  6e6795:	mov    DWORD PTR [esp],eax
  6e6798:	mov    DWORD PTR [esp+0x8],0x1
  6e67a0:	call   1c1964
  6e67a5:	jmp    6e67b2
  6e67a7:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6e67ab:	lea    eax,[ecx+eax*8+0xbc]
  6e67b2:	mov    ecx,DWORD PTR [eax]
  6e67b4:	mov    eax,DWORD PTR [eax+0x4]
  6e67b7:	mov    DWORD PTR [esp+0x4],eax
  6e67bb:	mov    eax,DWORD PTR [esp+0x34]
  6e67bf:	mov    DWORD PTR [esp],eax
  6e67c2:	call   ecx
  6e67c4:	test   al,al
  6e67c6:	je     6e6eef
  6e67cc:	mov    eax,DWORD PTR [esp+0x30]
  6e67d0:	mov    eax,DWORD PTR [eax]
  6e67d2:	mov    ecx,DWORD PTR [esp+0x34]
  6e67d6:	mov    ecx,DWORD PTR [ecx]
  6e67d8:	movzx  edx,WORD PTR [ecx+0xaa]
  6e67df:	test   edx,edx
  6e67e1:	je     6e67f2
  6e67e3:	mov    esi,DWORD PTR [ecx+0x4c]
  6e67e6:	xor    edi,edi
  6e67e8:	cmp    DWORD PTR [esi+edi*8],eax
  6e67eb:	je     6e680c
  6e67ed:	inc    edi
  6e67ee:	cmp    edi,edx
  6e67f0:	jb     6e67e8
  6e67f2:	mov    DWORD PTR [esp+0x4],eax
  6e67f6:	mov    eax,DWORD PTR [esp+0x34]
  6e67fa:	mov    DWORD PTR [esp],eax
  6e67fd:	mov    DWORD PTR [esp+0x8],0x0
  6e6805:	call   1c1964
  6e680a:	jmp    6e6817
  6e680c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6e6810:	lea    eax,[ecx+eax*8+0xb4]
  6e6817:	mov    ecx,DWORD PTR [eax]
  6e6819:	mov    eax,DWORD PTR [eax+0x4]
  6e681c:	mov    DWORD PTR [esp+0x4],eax
  6e6820:	mov    eax,DWORD PTR [esp+0x34]
  6e6824:	mov    DWORD PTR [esp],eax
  6e6827:	call   ecx
  6e6829:	test   eax,eax
  6e682b:	je     6e6f04
  6e6831:	lea    ecx,[ebx+0x45240]
  6e6837:	mov    ecx,DWORD PTR [ecx]
  6e6839:	mov    edx,DWORD PTR [eax]
  6e683b:	mov    edx,DWORD PTR [edx+0x18]
  6e683e:	cmp    edx,DWORD PTR [ecx+0x18]
  6e6841:	jne    6e68aa
  6e6843:	mov    DWORD PTR [esp],eax
  6e6846:	call   20c3d8
  6e684b:	mov    eax,DWORD PTR [eax]
  6e684d:	mov    DWORD PTR [esp+0x2c],eax
  6e6851:	mov    eax,DWORD PTR [ebp+0x8]
  6e6854:	mov    esi,DWORD PTR [eax+0x10]
  6e6857:	lea    eax,[ebx+0x458bc]
  6e685d:	mov    eax,DWORD PTR [eax]
  6e685f:	mov    DWORD PTR [esp],eax
  6e6862:	call   20bfb2
  6e6867:	mov    edi,eax
  6e6869:	lea    eax,[ebx+0x4a1d0]
  6e686f:	mov    eax,DWORD PTR [eax]
  6e6871:	mov    DWORD PTR [esp+0x4],eax
  6e6875:	mov    DWORD PTR [esp],edi
  6e6878:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e687d:	test   esi,esi
  6e687f:	je     6e6f0e
  6e6885:	lea    eax,[ebx+0x4ab5c]
  6e688b:	mov    eax,DWORD PTR [eax]
  6e688d:	mov    DWORD PTR [esp+0xc],eax
  6e6891:	mov    DWORD PTR [esp+0x8],edi
  6e6895:	mov    eax,DWORD PTR [esp+0x2c]
  6e6899:	mov    DWORD PTR [esp+0x4],eax
  6e689d:	mov    DWORD PTR [esp],esi
  6e68a0:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6e68a5:	jmp    6e6767
  6e68aa:	mov    DWORD PTR [esp+0x4],ecx
  6e68ae:	mov    DWORD PTR [esp],eax
  6e68b1:	call   440104
  6e68b6:	jmp    6e684b
  6e68b8:	jmp    6e68c4
  6e68ba:	call   1fbc48
  6e68bf:	jmp    6e6f2a
  6e68c4:	cmp    edx,0x1
  6e68c7:	jne    6e6f22
  6e68cd:	mov    DWORD PTR [esp],eax
  6e68d0:	call   1ba3f0
  6e68d5:	mov    eax,DWORD PTR [eax]
  6e68d7:	mov    DWORD PTR [esp+0x30],eax
  6e68db:	call   1b9ce0
  6e68e0:	mov    DWORD PTR [esp+0x2c],0x0
  6e68e8:	lea    edi,[ebx+0x431a4]
  6e68ee:	mov    eax,DWORD PTR [edi]
  6e68f0:	mov    DWORD PTR [esp+0x4],eax
  6e68f4:	mov    eax,DWORD PTR [esp+0x34]
  6e68f8:	mov    DWORD PTR [esp],eax
  6e68fb:	call   20c1b8
  6e6900:	mov    esi,eax
  6e6902:	test   esi,esi
  6e6904:	je     6e695d
  6e6906:	mov    eax,DWORD PTR [edi]
  6e6908:	mov    ecx,DWORD PTR [esi]
  6e690a:	mov    DWORD PTR [esp+0x34],ecx
  6e690e:	movzx  edx,WORD PTR [ecx+0xaa]
  6e6915:	test   edx,edx
  6e6917:	je     6e692c
  6e6919:	mov    ecx,DWORD PTR [esp+0x34]
  6e691d:	mov    edi,DWORD PTR [ecx+0x4c]
  6e6920:	xor    ecx,ecx
  6e6922:	cmp    DWORD PTR [edi+ecx*8],eax
  6e6925:	je     6e6942
  6e6927:	inc    ecx
  6e6928:	cmp    ecx,edx
  6e692a:	jb     6e6922
  6e692c:	mov    DWORD PTR [esp+0x4],eax
  6e6930:	mov    DWORD PTR [esp],esi
  6e6933:	mov    DWORD PTR [esp+0x8],0x0
  6e693b:	call   1c1964
  6e6940:	jmp    6e6951
  6e6942:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6e6946:	mov    ecx,DWORD PTR [esp+0x34]
  6e694a:	lea    eax,[ecx+eax*8+0xb4]
  6e6951:	mov    ecx,DWORD PTR [eax+0x4]
  6e6954:	mov    DWORD PTR [esp+0x4],ecx
  6e6958:	mov    DWORD PTR [esp],esi
  6e695b:	call   DWORD PTR [eax]
  6e695d:	cmp    DWORD PTR [esp+0x2c],0x66
  6e6962:	mov    eax,DWORD PTR [esp+0x30]
  6e6966:	je     6e6974
  6e6968:	test   eax,eax
  6e696a:	je     6e6974
  6e696c:	mov    DWORD PTR [esp],eax
  6e696f:	call   1fbb20
  6e6974:	lea    eax,[ebx+0x45ed8]
  6e697a:	mov    eax,DWORD PTR [eax]
  6e697c:	mov    DWORD PTR [esp],eax
  6e697f:	call   20bfb2
  6e6984:	mov    esi,eax
  6e6986:	lea    eax,[ebx+0x4ab58]
  6e698c:	mov    eax,DWORD PTR [eax]
  6e698e:	mov    DWORD PTR [esp+0x4],eax
  6e6992:	mov    DWORD PTR [esp],esi
  6e6995:	call   59dee5  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::.ctor | +2 other aliases
  6e699a:	mov    eax,DWORD PTR [ebp+0x8]
  6e699d:	mov    DWORD PTR [eax+0x14],esi
  6e69a0:	lea    eax,[ebx+0x45edc]
  6e69a6:	mov    DWORD PTR [esp+0x34],eax
  6e69aa:	mov    eax,DWORD PTR [eax]
  6e69ac:	mov    DWORD PTR [esp],eax
  6e69af:	call   20bfb2
  6e69b4:	mov    edi,eax
  6e69b6:	lea    eax,[ebx+0x4ab60]
  6e69bc:	mov    DWORD PTR [esp+0x30],eax
  6e69c0:	mov    eax,DWORD PTR [eax]
  6e69c2:	mov    DWORD PTR [esp+0x4],eax
  6e69c6:	mov    DWORD PTR [esp],edi
  6e69c9:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6e69ce:	test   esi,esi
  6e69d0:	je     6e6f18
  6e69d6:	lea    eax,[ebx+0x4ab64]
  6e69dc:	mov    DWORD PTR [esp+0x2c],eax
  6e69e0:	mov    eax,DWORD PTR [eax]
  6e69e2:	mov    DWORD PTR [esp+0xc],eax
  6e69e6:	mov    DWORD PTR [esp+0x8],edi
  6e69ea:	mov    DWORD PTR [esp],esi
  6e69ed:	mov    DWORD PTR [esp+0x4],0x1
  6e69f5:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6e69fa:	mov    eax,DWORD PTR [ebp+0x8]
  6e69fd:	mov    edi,DWORD PTR [eax+0x14]
  6e6a00:	mov    eax,DWORD PTR [esp+0x34]
  6e6a04:	mov    eax,DWORD PTR [eax]
  6e6a06:	mov    DWORD PTR [esp],eax
  6e6a09:	call   20bfb2
  6e6a0e:	mov    esi,eax
  6e6a10:	mov    eax,DWORD PTR [esp+0x30]
  6e6a14:	mov    eax,DWORD PTR [eax]
  6e6a16:	mov    DWORD PTR [esp+0x4],eax
  6e6a1a:	mov    DWORD PTR [esp],esi
  6e6a1d:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6e6a22:	test   edi,edi
  6e6a24:	je     6e6f18
  6e6a2a:	mov    eax,DWORD PTR [esp+0x2c]
  6e6a2e:	mov    eax,DWORD PTR [eax]
  6e6a30:	mov    DWORD PTR [esp+0xc],eax
  6e6a34:	mov    DWORD PTR [esp+0x8],esi
  6e6a38:	mov    DWORD PTR [esp],edi
  6e6a3b:	mov    DWORD PTR [esp+0x4],0x2
  6e6a43:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6e6a48:	mov    eax,DWORD PTR [ebp+0x8]
  6e6a4b:	mov    edi,DWORD PTR [eax+0x14]
  6e6a4e:	mov    eax,DWORD PTR [esp+0x34]
  6e6a52:	mov    eax,DWORD PTR [eax]
  6e6a54:	mov    DWORD PTR [esp],eax
  6e6a57:	call   20bfb2
  6e6a5c:	mov    esi,eax
  6e6a5e:	mov    eax,DWORD PTR [esp+0x30]
  6e6a62:	mov    eax,DWORD PTR [eax]
  6e6a64:	mov    DWORD PTR [esp+0x4],eax
  6e6a68:	mov    DWORD PTR [esp],esi
  6e6a6b:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6e6a70:	test   edi,edi
  6e6a72:	je     6e6f18
  6e6a78:	mov    eax,DWORD PTR [esp+0x2c]
  6e6a7c:	mov    eax,DWORD PTR [eax]
  6e6a7e:	mov    DWORD PTR [esp+0xc],eax
  6e6a82:	mov    DWORD PTR [esp+0x8],esi
  6e6a86:	mov    DWORD PTR [esp],edi
  6e6a89:	mov    DWORD PTR [esp+0x4],0x3
  6e6a91:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6e6a96:	mov    eax,DWORD PTR [ebp+0x8]
  6e6a99:	mov    edi,DWORD PTR [eax+0x14]
  6e6a9c:	mov    eax,DWORD PTR [esp+0x34]
  6e6aa0:	mov    eax,DWORD PTR [eax]
  6e6aa2:	mov    DWORD PTR [esp],eax
  6e6aa5:	call   20bfb2
  6e6aaa:	mov    esi,eax
  6e6aac:	mov    eax,DWORD PTR [esp+0x30]
  6e6ab0:	mov    eax,DWORD PTR [eax]
  6e6ab2:	mov    DWORD PTR [esp+0x4],eax
  6e6ab6:	mov    DWORD PTR [esp],esi
  6e6ab9:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6e6abe:	test   edi,edi
  6e6ac0:	je     6e6f18
  6e6ac6:	mov    eax,DWORD PTR [esp+0x2c]
  6e6aca:	mov    eax,DWORD PTR [eax]
  6e6acc:	mov    DWORD PTR [esp+0xc],eax
  6e6ad0:	mov    DWORD PTR [esp+0x8],esi
  6e6ad4:	mov    DWORD PTR [esp],edi
  6e6ad7:	mov    DWORD PTR [esp+0x4],0x4
  6e6adf:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6e6ae4:	mov    eax,DWORD PTR [ebp+0x8]
  6e6ae7:	mov    edi,DWORD PTR [eax+0x14]
  6e6aea:	mov    eax,DWORD PTR [esp+0x34]
  6e6aee:	mov    eax,DWORD PTR [eax]
  6e6af0:	mov    DWORD PTR [esp],eax
  6e6af3:	call   20bfb2
  6e6af8:	mov    esi,eax
  6e6afa:	mov    eax,DWORD PTR [esp+0x30]
  6e6afe:	mov    eax,DWORD PTR [eax]
  6e6b00:	mov    DWORD PTR [esp+0x4],eax
  6e6b04:	mov    DWORD PTR [esp],esi
  6e6b07:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  6e6b0c:	test   edi,edi
  6e6b0e:	je     6e6f18
  6e6b14:	mov    eax,DWORD PTR [esp+0x2c]
  6e6b18:	mov    eax,DWORD PTR [eax]
  6e6b1a:	mov    DWORD PTR [esp+0xc],eax
  6e6b1e:	mov    DWORD PTR [esp+0x8],esi
  6e6b22:	mov    DWORD PTR [esp],edi
  6e6b25:	mov    DWORD PTR [esp+0x4],0x5
  6e6b2d:	call   5a010b  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::Add | +2 other aliases
  6e6b32:	lea    eax,[ebx+0x45108]
  6e6b38:	mov    eax,DWORD PTR [eax]
  6e6b3a:	mov    DWORD PTR [esp],eax
  6e6b3d:	call   20bfb2
  6e6b42:	mov    esi,eax
  6e6b44:	mov    DWORD PTR [esp],esi
  6e6b47:	mov    DWORD PTR [esp+0x4],0x0
  6e6b4f:	call   179bb92  ; ABH.Shared.Models.InventoryData::.ctor
  6e6b54:	lea    eax,[ebx+0x454f8]
  6e6b5a:	mov    DWORD PTR [esp+0x30],eax
  6e6b5e:	mov    eax,DWORD PTR [eax]
  6e6b60:	mov    DWORD PTR [esp],eax
  6e6b63:	call   20bfb2
  6e6b68:	mov    edi,eax
  6e6b6a:	lea    eax,[ebx+0x49920]
  6e6b70:	mov    DWORD PTR [esp+0x34],eax
  6e6b74:	mov    eax,DWORD PTR [eax]
  6e6b76:	mov    DWORD PTR [esp+0x4],eax
  6e6b7a:	mov    DWORD PTR [esp],edi
  6e6b7d:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6b82:	test   esi,esi
  6e6b84:	je     6e6f18
  6e6b8a:	mov    DWORD PTR [esp+0x4],edi
  6e6b8e:	mov    DWORD PTR [esp],esi
  6e6b91:	mov    DWORD PTR [esp+0x8],0x0
  6e6b99:	call   179b972  ; ABH.Shared.Models.InventoryData::set_StoryItems
  6e6b9e:	lea    eax,[ebx+0x454fc]
  6e6ba4:	mov    eax,DWORD PTR [eax]
  6e6ba6:	mov    DWORD PTR [esp],eax
  6e6ba9:	call   20bfb2
  6e6bae:	mov    edi,eax
  6e6bb0:	lea    eax,[ebx+0x49928]
  6e6bb6:	mov    eax,DWORD PTR [eax]
  6e6bb8:	mov    DWORD PTR [esp+0x4],eax
  6e6bbc:	mov    DWORD PTR [esp],edi
  6e6bbf:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6bc4:	mov    DWORD PTR [esp+0x4],edi
  6e6bc8:	mov    DWORD PTR [esp],esi
  6e6bcb:	mov    DWORD PTR [esp+0x8],0x0
  6e6bd3:	call   179b9b8  ; ABH.Shared.Models.InventoryData::set_ClassItems
  6e6bd8:	lea    eax,[ebx+0x45504]
  6e6bde:	mov    DWORD PTR [esp+0x28],eax
  6e6be2:	mov    eax,DWORD PTR [eax]
  6e6be4:	mov    DWORD PTR [esp],eax
  6e6be7:	call   20bfb2
  6e6bec:	mov    edi,eax
  6e6bee:	lea    eax,[ebx+0x49938]
  6e6bf4:	mov    DWORD PTR [esp+0x24],eax
  6e6bf8:	mov    eax,DWORD PTR [eax]
  6e6bfa:	mov    DWORD PTR [esp+0x4],eax
  6e6bfe:	mov    DWORD PTR [esp],edi
  6e6c01:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6c06:	mov    DWORD PTR [esp+0x4],edi
  6e6c0a:	mov    DWORD PTR [esp],esi
  6e6c0d:	mov    DWORD PTR [esp+0x8],0x0
  6e6c15:	call   179ba21  ; ABH.Shared.Models.InventoryData::set_CraftingResourceItems
  6e6c1a:	mov    eax,DWORD PTR [esp+0x30]
  6e6c1e:	mov    eax,DWORD PTR [eax]
  6e6c20:	mov    DWORD PTR [esp],eax
  6e6c23:	call   20bfb2
  6e6c28:	mov    edi,eax
  6e6c2a:	mov    eax,DWORD PTR [esp+0x34]
  6e6c2e:	mov    eax,DWORD PTR [eax]
  6e6c30:	mov    DWORD PTR [esp+0x4],eax
  6e6c34:	mov    DWORD PTR [esp],edi
  6e6c37:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6c3c:	mov    DWORD PTR [esp+0x4],edi
  6e6c40:	mov    DWORD PTR [esp],esi
  6e6c43:	mov    DWORD PTR [esp+0x8],0x0
  6e6c4b:	call   179b995  ; ABH.Shared.Models.InventoryData::set_PlayerStats
  6e6c50:	lea    eax,[ebx+0x45500]
  6e6c56:	mov    DWORD PTR [esp+0x20],eax
  6e6c5a:	mov    eax,DWORD PTR [eax]
  6e6c5c:	mov    DWORD PTR [esp],eax
  6e6c5f:	call   20bfb2
  6e6c64:	mov    edi,eax
  6e6c66:	mov    DWORD PTR [esp+0x2c],esi
  6e6c6a:	lea    eax,[ebx+0x49930]
  6e6c70:	mov    DWORD PTR [esp+0x1c],eax
  6e6c74:	mov    eax,DWORD PTR [eax]
  6e6c76:	mov    DWORD PTR [esp+0x4],eax
  6e6c7a:	mov    DWORD PTR [esp],edi
  6e6c7d:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6c82:	mov    DWORD PTR [esp+0x4],edi
  6e6c86:	mov    DWORD PTR [esp],esi
  6e6c89:	mov    DWORD PTR [esp+0x8],0x0
  6e6c91:	call   179b9fe  ; ABH.Shared.Models.InventoryData::set_OffHandItems
  6e6c96:	mov    eax,DWORD PTR [esp+0x20]
  6e6c9a:	mov    eax,DWORD PTR [eax]
  6e6c9c:	mov    DWORD PTR [esp],eax
  6e6c9f:	call   20bfb2
  6e6ca4:	mov    edi,eax
  6e6ca6:	mov    eax,DWORD PTR [esp+0x1c]
  6e6caa:	mov    eax,DWORD PTR [eax]
  6e6cac:	mov    DWORD PTR [esp+0x4],eax
  6e6cb0:	mov    DWORD PTR [esp],edi
  6e6cb3:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6cb8:	mov    DWORD PTR [esp+0x4],edi
  6e6cbc:	mov    DWORD PTR [esp],esi
  6e6cbf:	mov    DWORD PTR [esp+0x8],0x0
  6e6cc7:	call   179b9db  ; ABH.Shared.Models.InventoryData::set_MainHandItems
  6e6ccc:	mov    eax,DWORD PTR [esp+0x28]
  6e6cd0:	mov    eax,DWORD PTR [eax]
  6e6cd2:	mov    DWORD PTR [esp],eax
  6e6cd5:	call   20bfb2
  6e6cda:	mov    edi,eax
  6e6cdc:	mov    eax,DWORD PTR [esp+0x24]
  6e6ce0:	mov    eax,DWORD PTR [eax]
  6e6ce2:	mov    DWORD PTR [esp+0x4],eax
  6e6ce6:	mov    DWORD PTR [esp],edi
  6e6ce9:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6cee:	mov    DWORD PTR [esp+0x4],edi
  6e6cf2:	mov    DWORD PTR [esp],esi
  6e6cf5:	mov    DWORD PTR [esp+0x8],0x0
  6e6cfd:	call   179ba44  ; ABH.Shared.Models.InventoryData::set_CraftingIngredientItems
  6e6d02:	lea    eax,[ebx+0x45508]
  6e6d08:	mov    eax,DWORD PTR [eax]
  6e6d0a:	mov    DWORD PTR [esp],eax
  6e6d0d:	call   20bfb2
  6e6d12:	mov    edi,eax
  6e6d14:	lea    eax,[ebx+0x49940]
  6e6d1a:	mov    eax,DWORD PTR [eax]
  6e6d1c:	mov    DWORD PTR [esp+0x4],eax
  6e6d20:	mov    DWORD PTR [esp],edi
  6e6d23:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6d28:	mov    DWORD PTR [esp+0x4],edi
  6e6d2c:	mov    DWORD PTR [esp],esi
  6e6d2f:	mov    DWORD PTR [esp+0x8],0x0
  6e6d37:	call   179ba67  ; ABH.Shared.Models.InventoryData::set_ConsumableItems
  6e6d3c:	lea    eax,[ebx+0x4550c]
  6e6d42:	mov    eax,DWORD PTR [eax]
  6e6d44:	mov    DWORD PTR [esp],eax
  6e6d47:	call   20bfb2
  6e6d4c:	mov    edi,eax
  6e6d4e:	lea    eax,[ebx+0x49948]
  6e6d54:	mov    eax,DWORD PTR [eax]
  6e6d56:	mov    DWORD PTR [esp+0x4],eax
  6e6d5a:	mov    DWORD PTR [esp],edi
  6e6d5d:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6d62:	mov    DWORD PTR [esp+0x4],edi
  6e6d66:	mov    DWORD PTR [esp],esi
  6e6d69:	mov    DWORD PTR [esp+0x8],0x0
  6e6d71:	call   179ba8a  ; ABH.Shared.Models.InventoryData::set_CraftingRecipesItems
  6e6d76:	lea    eax,[ebx+0x45510]
  6e6d7c:	mov    eax,DWORD PTR [eax]
  6e6d7e:	mov    DWORD PTR [esp],eax
  6e6d81:	call   20bfb2
  6e6d86:	mov    edi,eax
  6e6d88:	lea    eax,[ebx+0x49950]
  6e6d8e:	mov    eax,DWORD PTR [eax]
  6e6d90:	mov    DWORD PTR [esp+0x4],eax
  6e6d94:	mov    DWORD PTR [esp],edi
  6e6d97:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6d9c:	mov    DWORD PTR [esp+0x4],edi
  6e6da0:	mov    DWORD PTR [esp],esi
  6e6da3:	mov    DWORD PTR [esp+0x8],0x0
  6e6dab:	call   179bad0  ; ABH.Shared.Models.InventoryData::set_EventItems
  6e6db0:	lea    eax,[ebx+0x45518]
  6e6db6:	mov    eax,DWORD PTR [eax]
  6e6db8:	mov    DWORD PTR [esp],eax
  6e6dbb:	call   20bfb2
  6e6dc0:	mov    edi,eax
  6e6dc2:	lea    eax,[ebx+0x49960]
  6e6dc8:	mov    eax,DWORD PTR [eax]
  6e6dca:	mov    DWORD PTR [esp+0x4],eax
  6e6dce:	mov    DWORD PTR [esp],edi
  6e6dd1:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6dd6:	mov    DWORD PTR [esp+0x4],edi
  6e6dda:	mov    DWORD PTR [esp],esi
  6e6ddd:	mov    DWORD PTR [esp+0x8],0x0
  6e6de5:	call   179bb16  ; ABH.Shared.Models.InventoryData::set_BannerItems
  6e6dea:	lea    eax,[ebx+0x45514]
  6e6df0:	mov    eax,DWORD PTR [eax]
  6e6df2:	mov    DWORD PTR [esp],eax
  6e6df5:	call   20bfb2
  6e6dfa:	mov    edi,eax
  6e6dfc:	lea    eax,[ebx+0x49958]
  6e6e02:	mov    eax,DWORD PTR [eax]
  6e6e04:	mov    DWORD PTR [esp+0x4],eax
  6e6e08:	mov    DWORD PTR [esp],edi
  6e6e0b:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6e10:	mov    DWORD PTR [esp+0x4],edi
  6e6e14:	mov    DWORD PTR [esp],esi
  6e6e17:	mov    DWORD PTR [esp+0x8],0x0
  6e6e1f:	call   179baf3  ; ABH.Shared.Models.InventoryData::set_MasteryItems
  6e6e24:	mov    esi,DWORD PTR [esp+0x30]
  6e6e28:	mov    eax,DWORD PTR [esi]
  6e6e2a:	mov    DWORD PTR [esp],eax
  6e6e2d:	call   20bfb2
  6e6e32:	mov    edi,eax
  6e6e34:	mov    eax,DWORD PTR [esp+0x34]
  6e6e38:	mov    eax,DWORD PTR [eax]
  6e6e3a:	mov    DWORD PTR [esp+0x4],eax
  6e6e3e:	mov    DWORD PTR [esp],edi
  6e6e41:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6e46:	mov    DWORD PTR [esp+0x4],edi
  6e6e4a:	mov    eax,DWORD PTR [esp+0x2c]
  6e6e4e:	mov    DWORD PTR [esp],eax
  6e6e51:	mov    DWORD PTR [esp+0x8],0x0
  6e6e59:	call   179bb5c  ; ABH.Shared.Models.InventoryData::set_CollectionComponents
  6e6e5e:	mov    eax,DWORD PTR [esi]
  6e6e60:	mov    DWORD PTR [esp],eax
  6e6e63:	call   20bfb2
  6e6e68:	mov    edi,eax
  6e6e6a:	mov    eax,DWORD PTR [esp+0x34]
  6e6e6e:	mov    eax,DWORD PTR [eax]
  6e6e70:	mov    DWORD PTR [esp+0x4],eax
  6e6e74:	mov    DWORD PTR [esp],edi
  6e6e77:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6e7c:	mov    DWORD PTR [esp+0x4],edi
  6e6e80:	mov    esi,DWORD PTR [esp+0x2c]
  6e6e84:	mov    DWORD PTR [esp],esi
  6e6e87:	mov    DWORD PTR [esp+0x8],0x0
  6e6e8f:	call   179bb39  ; ABH.Shared.Models.InventoryData::set_TrophyItems
  6e6e94:	lea    eax,[ebx+0x4551c]
  6e6e9a:	mov    eax,DWORD PTR [eax]
  6e6e9c:	mov    DWORD PTR [esp],eax
  6e6e9f:	call   20bfb2
  6e6ea4:	mov    edi,eax
  6e6ea6:	lea    eax,[ebx+0x49968]
  6e6eac:	mov    eax,DWORD PTR [eax]
  6e6eae:	mov    DWORD PTR [esp+0x4],eax
  6e6eb2:	mov    DWORD PTR [esp],edi
  6e6eb5:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  6e6eba:	mov    DWORD PTR [esp+0x4],edi
  6e6ebe:	mov    DWORD PTR [esp],esi
  6e6ec1:	mov    DWORD PTR [esp+0x8],0x0
  6e6ec9:	call   179bb7f  ; ABH.Shared.Models.InventoryData::set_SkinItems
  6e6ece:	mov    eax,DWORD PTR [ebp+0xc]
  6e6ed1:	mov    DWORD PTR [esp+0x4],eax
  6e6ed5:	mov    DWORD PTR [esp],esi
  6e6ed8:	mov    DWORD PTR [esp+0x8],0x0
  6e6ee0:	call   179b94f  ; ABH.Shared.Models.InventoryData::set_NameId
  6e6ee5:	mov    eax,esi
  6e6ee7:	lea    esp,[ebp-0xc]
  6e6eea:	pop    esi
  6e6eeb:	pop    edi
  6e6eec:	pop    ebx
  6e6eed:	pop    ebp
  6e6eee:	ret
  6e6eef:	mov    DWORD PTR [esp+0x30],0x0
  6e6ef7:	mov    DWORD PTR [esp+0x2c],0x66
  6e6eff:	jmp    6e68e8
  6e6f04:	call   1fbc48
  6e6f09:	call   6b106a
  6e6f0e:	call   1fbc48
  6e6f13:	call   6b106a
  6e6f18:	call   1fbc48
  6e6f1d:	call   6b106a
  6e6f22:	mov    DWORD PTR [esp],eax
  6e6f25:	call   1b9bd0
  6e6f2a:	call   6b106a