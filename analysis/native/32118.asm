
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

009f4901:
  9f4901:	push   ebp
  9f4902:	mov    ebp,esp
  9f4904:	push   ebx
  9f4905:	push   edi
  9f4906:	push   esi
  9f4907:	and    esp,0xfffffff0
  9f490a:	sub    esp,0x40
  9f490d:	call   9f4912
  9f4912:	pop    ebx
  9f4913:	add    ebx,0x151d632
  9f4919:	mov    DWORD PTR [esp+0x30],ebx
  9f491d:	mov    esi,DWORD PTR [ebp+0x8]
  9f4920:	mov    al,BYTE PTR [ebx+0x608f5]
  9f4926:	test   al,al
  9f4928:	jne    9f4941
  9f492a:	lea    eax,[ebx-0x66f984]
  9f4930:	mov    eax,DWORD PTR [eax]
  9f4932:	mov    DWORD PTR [esp],eax
  9f4935:	call   1ca6e8
  9f493a:	mov    BYTE PTR [ebx+0x608f5],0x1
  9f4941:	mov    DWORD PTR [esp+0x38],0x0
  9f4949:	mov    DWORD PTR [esp+0x34],0x0
  9f4951:	mov    BYTE PTR [esi+0x81],0x1
  9f4958:	mov    BYTE PTR [esi+0xb0],0x0
  9f495f:	mov    BYTE PTR [esi+0xd2],0x1
  9f4966:	mov    eax,DWORD PTR [esi+0x20]
  9f4969:	test   eax,eax
  9f496b:	je     9f52e8
  9f4971:	mov    eax,DWORD PTR [eax+0x68]
  9f4974:	test   eax,eax
  9f4976:	je     9f52e8
  9f497c:	lea    ecx,[ebx+0x4a04c]
  9f4982:	mov    DWORD PTR [esp+0x1c],ecx
  9f4986:	mov    ecx,DWORD PTR [ecx]
  9f4988:	mov    DWORD PTR [esp+0x8],ecx
  9f498c:	mov    DWORD PTR [esp],eax
  9f498f:	mov    DWORD PTR [esp+0x4],0x0
  9f4997:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  9f499c:	mov    edi,eax
  9f499e:	mov    DWORD PTR [esp+0x20],edi
  9f49a2:	test   edi,edi
  9f49a4:	je     9f52e8
  9f49aa:	xor    esi,esi
  9f49ac:	lea    eax,[ebx+0x4a048]
  9f49b2:	mov    DWORD PTR [esp+0x24],eax
  9f49b6:	jmp    9f49d5
  9f49b8:	mov    DWORD PTR [esp+0x4],ecx
  9f49bc:	mov    DWORD PTR [esp],eax
  9f49bf:	mov    DWORD PTR [esp+0xc],0x0
  9f49c7:	mov    DWORD PTR [esp+0x8],0x42c80000
  9f49cf:	call   8de051  ; CharacterControllerBattleGroundBase::ReviveCombatant
  9f49d4:	inc    esi
  9f49d5:	mov    eax,DWORD PTR [esp+0x24]
  9f49d9:	mov    eax,DWORD PTR [eax]
  9f49db:	mov    DWORD PTR [esp+0x4],eax
  9f49df:	mov    DWORD PTR [esp],edi
  9f49e2:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  9f49e7:	cmp    esi,eax
  9f49e9:	jge    9f4c05
  9f49ef:	lea    eax,[ebx+0x4a0ac]
  9f49f5:	mov    eax,DWORD PTR [eax]
  9f49f7:	mov    DWORD PTR [esp+0x8],eax
  9f49fb:	mov    DWORD PTR [esp+0x4],esi
  9f49ff:	mov    DWORD PTR [esp+0x18],esi
  9f4a03:	mov    DWORD PTR [esp],edi
  9f4a06:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  9f4a0b:	test   eax,eax
  9f4a0d:	je     9f52e8
  9f4a13:	lea    ecx,[ebx+0x45874]
  9f4a19:	mov    DWORD PTR [esp+0x28],ecx
  9f4a1d:	mov    ecx,DWORD PTR [ecx]
  9f4a1f:	mov    ebx,DWORD PTR [eax]
  9f4a21:	mov    DWORD PTR [esp+0x2c],eax
  9f4a25:	movzx  edx,WORD PTR [ebx+0xaa]
  9f4a2c:	test   edx,edx
  9f4a2e:	je     9f4a3f
  9f4a30:	mov    esi,DWORD PTR [ebx+0x4c]
  9f4a33:	xor    edi,edi
  9f4a35:	cmp    DWORD PTR [esi+edi*8],ecx
  9f4a38:	je     9f4a5f
  9f4a3a:	inc    edi
  9f4a3b:	cmp    edi,edx
  9f4a3d:	jb     9f4a35
  9f4a3f:	mov    DWORD PTR [esp+0x4],ecx
  9f4a43:	mov    esi,DWORD PTR [esp+0x2c]
  9f4a47:	mov    DWORD PTR [esp],esi
  9f4a4a:	mov    DWORD PTR [esp+0x8],0x11
  9f4a52:	mov    ebx,DWORD PTR [esp+0x30]
  9f4a56:	call   1c1964
  9f4a5b:	mov    ecx,eax
  9f4a5d:	jmp    9f4a72
  9f4a5f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  9f4a63:	lea    ecx,[ebx+eax*8+0x13c]
  9f4a6a:	mov    ebx,DWORD PTR [esp+0x30]
  9f4a6e:	mov    esi,DWORD PTR [esp+0x2c]
  9f4a72:	mov    eax,DWORD PTR [ecx+0x4]
  9f4a75:	mov    DWORD PTR [esp+0x4],eax
  9f4a79:	mov    DWORD PTR [esp],esi
  9f4a7c:	call   DWORD PTR [ecx]
  9f4a7e:	test   eax,eax
  9f4a80:	je     9f52e8
  9f4a86:	mov    DWORD PTR [esp],eax
  9f4a89:	mov    DWORD PTR [esp+0x4],0x0
  9f4a91:	call   1501684  ; UnityEngine.Component::get_gameObject
  9f4a96:	test   eax,eax
  9f4a98:	je     9f52e8
  9f4a9e:	mov    DWORD PTR [esp],eax
  9f4aa1:	mov    DWORD PTR [esp+0x8],0x0
  9f4aa9:	mov    DWORD PTR [esp+0x4],0x1
  9f4ab1:	call   137e9a1  ; UnityEngine.GameObject::SetActive
  9f4ab6:	mov    eax,DWORD PTR [esp+0x28]
  9f4aba:	mov    eax,DWORD PTR [eax]
  9f4abc:	mov    ecx,DWORD PTR [esi]
  9f4abe:	movzx  edx,WORD PTR [ecx+0xaa]
  9f4ac5:	test   edx,edx
  9f4ac7:	je     9f4ad8
  9f4ac9:	mov    esi,DWORD PTR [ecx+0x4c]
  9f4acc:	xor    edi,edi
  9f4ace:	cmp    DWORD PTR [esi+edi*8],eax
  9f4ad1:	je     9f4af6
  9f4ad3:	inc    edi
  9f4ad4:	cmp    edi,edx
  9f4ad6:	jb     9f4ace
  9f4ad8:	mov    DWORD PTR [esp+0x4],eax
  9f4adc:	mov    esi,DWORD PTR [esp+0x2c]
  9f4ae0:	mov    DWORD PTR [esp],esi
  9f4ae3:	mov    DWORD PTR [esp+0x8],0x7f
  9f4aeb:	mov    ebx,DWORD PTR [esp+0x30]
  9f4aef:	call   1c1964
  9f4af4:	jmp    9f4b09
  9f4af6:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  9f4afa:	lea    eax,[ecx+eax*8+0x4ac]
  9f4b01:	mov    ebx,DWORD PTR [esp+0x30]
  9f4b05:	mov    esi,DWORD PTR [esp+0x2c]
  9f4b09:	mov    ecx,DWORD PTR [eax+0x4]
  9f4b0c:	mov    DWORD PTR [esp+0x8],ecx
  9f4b10:	mov    DWORD PTR [esp],esi
  9f4b13:	mov    DWORD PTR [esp+0x4],0x0
  9f4b1b:	call   DWORD PTR [eax]
  9f4b1d:	mov    eax,DWORD PTR [esp+0x28]
  9f4b21:	mov    eax,DWORD PTR [eax]
  9f4b23:	mov    ecx,DWORD PTR [esi]
  9f4b25:	movzx  edx,WORD PTR [ecx+0xaa]
  9f4b2c:	test   edx,edx
  9f4b2e:	je     9f4b3f
  9f4b30:	mov    esi,DWORD PTR [ecx+0x4c]
  9f4b33:	xor    edi,edi
  9f4b35:	cmp    DWORD PTR [esi+edi*8],eax
  9f4b38:	je     9f4b5f
  9f4b3a:	inc    edi
  9f4b3b:	cmp    edi,edx
  9f4b3d:	jb     9f4b35
  9f4b3f:	mov    DWORD PTR [esp+0x4],eax
  9f4b43:	mov    esi,DWORD PTR [esp+0x2c]
  9f4b47:	mov    DWORD PTR [esp],esi
  9f4b4a:	mov    DWORD PTR [esp+0x8],0x11
  9f4b52:	mov    ebx,DWORD PTR [esp+0x30]
  9f4b56:	call   1c1964
  9f4b5b:	mov    ecx,eax
  9f4b5d:	jmp    9f4b72
  9f4b5f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  9f4b63:	lea    ecx,[ecx+eax*8+0x13c]
  9f4b6a:	mov    ebx,DWORD PTR [esp+0x30]
  9f4b6e:	mov    esi,DWORD PTR [esp+0x2c]
  9f4b72:	mov    eax,DWORD PTR [ecx+0x4]
  9f4b75:	mov    DWORD PTR [esp+0x4],eax
  9f4b79:	mov    DWORD PTR [esp],esi
  9f4b7c:	call   DWORD PTR [ecx]
  9f4b7e:	test   eax,eax
  9f4b80:	je     9f52e4
  9f4b86:	mov    BYTE PTR [eax+0x80],0x1
  9f4b8d:	mov    eax,DWORD PTR [esp+0x28]
  9f4b91:	mov    eax,DWORD PTR [eax]
  9f4b93:	mov    ecx,DWORD PTR [esi]
  9f4b95:	movzx  edx,WORD PTR [ecx+0xaa]
  9f4b9c:	test   edx,edx
  9f4b9e:	je     9f4baf
  9f4ba0:	mov    esi,DWORD PTR [ecx+0x4c]
  9f4ba3:	xor    edi,edi
  9f4ba5:	cmp    DWORD PTR [esi+edi*8],eax
  9f4ba8:	je     9f4bcf
  9f4baa:	inc    edi
  9f4bab:	cmp    edi,edx
  9f4bad:	jb     9f4ba5
  9f4baf:	mov    DWORD PTR [esp+0x4],eax
  9f4bb3:	mov    esi,DWORD PTR [esp+0x2c]
  9f4bb7:	mov    DWORD PTR [esp],esi
  9f4bba:	mov    DWORD PTR [esp+0x8],0x11
  9f4bc2:	mov    ebx,DWORD PTR [esp+0x30]
  9f4bc6:	call   1c1964
  9f4bcb:	mov    ecx,eax
  9f4bcd:	jmp    9f4be2
  9f4bcf:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  9f4bd3:	lea    ecx,[ecx+eax*8+0x13c]
  9f4bda:	mov    ebx,DWORD PTR [esp+0x30]
  9f4bde:	mov    esi,DWORD PTR [esp+0x2c]
  9f4be2:	mov    eax,DWORD PTR [ecx+0x4]
  9f4be5:	mov    DWORD PTR [esp+0x4],eax
  9f4be9:	mov    DWORD PTR [esp],esi
  9f4bec:	call   DWORD PTR [ecx]
  9f4bee:	test   eax,eax
  9f4bf0:	mov    edi,DWORD PTR [esp+0x20]
  9f4bf4:	mov    ecx,esi
  9f4bf6:	mov    esi,DWORD PTR [esp+0x18]
  9f4bfa:	jne    9f49b8
  9f4c00:	jmp    9f52e8
  9f4c05:	mov    eax,DWORD PTR [ebp+0x8]
  9f4c08:	mov    eax,DWORD PTR [eax+0x20]
  9f4c0b:	test   eax,eax
  9f4c0d:	je     9f52e8
  9f4c13:	xor    esi,esi
  9f4c15:	mov    eax,DWORD PTR [eax+0x68]
  9f4c18:	test   eax,eax
  9f4c1a:	je     9f52e8
  9f4c20:	mov    ecx,DWORD PTR [esp+0x1c]
  9f4c24:	mov    ecx,DWORD PTR [ecx]
  9f4c26:	mov    DWORD PTR [esp+0x8],ecx
  9f4c2a:	mov    DWORD PTR [esp],eax
  9f4c2d:	mov    DWORD PTR [esp+0x4],0x1
  9f4c35:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  9f4c3a:	test   eax,eax
  9f4c3c:	je     9f52e8
  9f4c42:	mov    ecx,DWORD PTR [esp+0x24]
  9f4c46:	mov    ecx,DWORD PTR [ecx]
  9f4c48:	mov    DWORD PTR [esp+0x4],ecx
  9f4c4c:	mov    DWORD PTR [esp],eax
  9f4c4f:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  9f4c54:	cmp    esi,eax
  9f4c56:	jge    9f4e10
  9f4c5c:	mov    eax,DWORD PTR [ebp+0x8]
  9f4c5f:	mov    eax,DWORD PTR [eax+0x20]
  9f4c62:	test   eax,eax
  9f4c64:	je     9f52e8
  9f4c6a:	mov    eax,DWORD PTR [eax+0x68]
  9f4c6d:	test   eax,eax
  9f4c6f:	je     9f52e8
  9f4c75:	mov    ecx,DWORD PTR [esp+0x1c]
  9f4c79:	mov    ecx,DWORD PTR [ecx]
  9f4c7b:	mov    DWORD PTR [esp+0x8],ecx
  9f4c7f:	mov    DWORD PTR [esp],eax
  9f4c82:	mov    DWORD PTR [esp+0x4],0x1
  9f4c8a:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  9f4c8f:	test   eax,eax
  9f4c91:	je     9f52e8
  9f4c97:	lea    ecx,[ebx+0x4a0ac]
  9f4c9d:	mov    ecx,DWORD PTR [ecx]
  9f4c9f:	mov    DWORD PTR [esp+0x8],ecx
  9f4ca3:	mov    DWORD PTR [esp+0x4],esi
  9f4ca7:	mov    DWORD PTR [esp+0x28],esi
  9f4cab:	mov    DWORD PTR [esp],eax
  9f4cae:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  9f4cb3:	mov    edi,eax
  9f4cb5:	test   edi,edi
  9f4cb7:	je     9f52e8
  9f4cbd:	lea    eax,[ebx+0x45874]
  9f4cc3:	mov    DWORD PTR [esp+0x2c],eax
  9f4cc7:	mov    eax,DWORD PTR [eax]
  9f4cc9:	mov    ebx,DWORD PTR [edi]
  9f4ccb:	movzx  edx,WORD PTR [ebx+0xaa]
  9f4cd2:	test   edx,edx
  9f4cd4:	je     9f4ce5
  9f4cd6:	mov    esi,DWORD PTR [ebx+0x4c]
  9f4cd9:	xor    ecx,ecx
  9f4cdb:	cmp    DWORD PTR [esi+ecx*8],eax
  9f4cde:	je     9f4cff
  9f4ce0:	inc    ecx
  9f4ce1:	cmp    ecx,edx
  9f4ce3:	jb     9f4cdb
  9f4ce5:	mov    DWORD PTR [esp+0x4],eax
  9f4ce9:	mov    DWORD PTR [esp],edi
  9f4cec:	mov    DWORD PTR [esp+0x8],0x7f
  9f4cf4:	mov    ebx,DWORD PTR [esp+0x30]
  9f4cf8:	call   1c1964
  9f4cfd:	jmp    9f4d0e
  9f4cff:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  9f4d03:	lea    eax,[ebx+eax*8+0x4ac]
  9f4d0a:	mov    ebx,DWORD PTR [esp+0x30]
  9f4d0e:	mov    ecx,DWORD PTR [eax+0x4]
  9f4d11:	mov    DWORD PTR [esp+0x8],ecx
  9f4d15:	mov    DWORD PTR [esp],edi
  9f4d18:	mov    DWORD PTR [esp+0x4],0x0
  9f4d20:	call   DWORD PTR [eax]
  9f4d22:	mov    eax,DWORD PTR [esp+0x2c]
  9f4d26:	mov    eax,DWORD PTR [eax]
  9f4d28:	mov    ecx,DWORD PTR [edi]
  9f4d2a:	movzx  edx,WORD PTR [ecx+0xaa]
  9f4d31:	test   edx,edx
  9f4d33:	je     9f4d44
  9f4d35:	mov    esi,DWORD PTR [ecx+0x4c]
  9f4d38:	xor    ebx,ebx
  9f4d3a:	cmp    DWORD PTR [esi+ebx*8],eax
  9f4d3d:	je     9f4d5e
  9f4d3f:	inc    ebx
  9f4d40:	cmp    ebx,edx
  9f4d42:	jb     9f4d3a
  9f4d44:	mov    DWORD PTR [esp+0x4],eax
  9f4d48:	mov    DWORD PTR [esp],edi
  9f4d4b:	mov    DWORD PTR [esp+0x8],0x81
  9f4d53:	mov    ebx,DWORD PTR [esp+0x30]
  9f4d57:	call   1c1964
  9f4d5c:	jmp    9f4d6d
  9f4d5e:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  9f4d62:	lea    eax,[ecx+eax*8+0x4bc]
  9f4d69:	mov    ebx,DWORD PTR [esp+0x30]
  9f4d6d:	mov    ecx,DWORD PTR [eax+0x4]
  9f4d70:	mov    DWORD PTR [esp+0x8],ecx
  9f4d74:	mov    DWORD PTR [esp],edi
  9f4d77:	mov    DWORD PTR [esp+0x4],0x0
  9f4d7f:	call   DWORD PTR [eax]
  9f4d81:	mov    eax,DWORD PTR [esp+0x2c]
  9f4d85:	mov    eax,DWORD PTR [eax]
  9f4d87:	mov    ecx,DWORD PTR [edi]
  9f4d89:	movzx  edx,WORD PTR [ecx+0xaa]
  9f4d90:	test   edx,edx
  9f4d92:	je     9f4da3
  9f4d94:	mov    esi,DWORD PTR [ecx+0x4c]
  9f4d97:	xor    ebx,ebx
  9f4d99:	cmp    DWORD PTR [esi+ebx*8],eax
  9f4d9c:	je     9f4dbf
  9f4d9e:	inc    ebx
  9f4d9f:	cmp    ebx,edx
  9f4da1:	jb     9f4d99
  9f4da3:	mov    DWORD PTR [esp+0x4],eax
  9f4da7:	mov    DWORD PTR [esp],edi
  9f4daa:	mov    DWORD PTR [esp+0x8],0x11
  9f4db2:	mov    ebx,DWORD PTR [esp+0x30]
  9f4db6:	call   1c1964
  9f4dbb:	mov    ecx,eax
  9f4dbd:	jmp    9f4dce
  9f4dbf:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  9f4dc3:	lea    ecx,[ecx+eax*8+0x13c]
  9f4dca:	mov    ebx,DWORD PTR [esp+0x30]
  9f4dce:	mov    eax,DWORD PTR [ecx+0x4]
  9f4dd1:	mov    DWORD PTR [esp+0x4],eax
  9f4dd5:	mov    DWORD PTR [esp],edi
  9f4dd8:	call   DWORD PTR [ecx]
  9f4dda:	test   eax,eax
  9f4ddc:	mov    esi,DWORD PTR [esp+0x28]
  9f4de0:	je     9f52e8
  9f4de6:	mov    DWORD PTR [esp],eax
  9f4de9:	mov    DWORD PTR [esp+0x4],0x0
  9f4df1:	call   8d139b  ; CharacterControllerBattleGroundBase::PlayGoToBasePosition
  9f4df6:	fstp   st(0)
  9f4df8:	inc    esi
  9f4df9:	mov    eax,DWORD PTR [ebp+0x8]
  9f4dfc:	mov    eax,DWORD PTR [eax+0x20]
  9f4dff:	test   eax,eax
  9f4e01:	mov    edi,DWORD PTR [esp+0x20]
  9f4e05:	jne    9f4c15
  9f4e0b:	jmp    9f52e8
  9f4e10:	mov    DWORD PTR [esp+0x4],0x0
  9f4e18:	mov    DWORD PTR [esp],0x0
  9f4e1f:	call   109314e  ; DIContainerLogic::GetBattleService
  9f4e24:	test   eax,eax
  9f4e26:	je     9f52e8
  9f4e2c:	mov    ecx,DWORD PTR [ebp+0x8]
  9f4e2f:	mov    esi,ecx
  9f4e31:	mov    ecx,DWORD PTR [esi+0x20]
  9f4e34:	mov    DWORD PTR [esp+0x4],ecx
  9f4e38:	mov    DWORD PTR [esp],eax
  9f4e3b:	mov    DWORD PTR [esp+0x8],0x0
  9f4e43:	call   517e93  ; ABH.Services.Logic.BattleService::ClearInitiative
  9f4e48:	mov    eax,DWORD PTR [esi]
  9f4e4a:	mov    ecx,DWORD PTR [esi+0x38]
  9f4e4d:	mov    edx,DWORD PTR [eax+0xe8]
  9f4e53:	mov    DWORD PTR [esp+0xc],edx
  9f4e57:	mov    DWORD PTR [esp+0x4],ecx
  9f4e5b:	mov    DWORD PTR [esp],esi
  9f4e5e:	mov    DWORD PTR [esp+0x8],0x0
  9f4e66:	call   DWORD PTR [eax+0xe4]
  9f4e6c:	mov    DWORD PTR [esp+0x4],eax
  9f4e70:	mov    DWORD PTR [esp],esi
  9f4e73:	mov    DWORD PTR [esp+0x8],0x0
  9f4e7b:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  9f4e80:	mov    eax,DWORD PTR [esi+0x20]
  9f4e83:	test   eax,eax
  9f4e85:	je     9f52e8
  9f4e8b:	mov    eax,DWORD PTR [eax+0x14]
  9f4e8e:	test   eax,eax
  9f4e90:	je     9f52e8
  9f4e96:	inc    DWORD PTR [eax+0x54]
  9f4e99:	xor    esi,esi
  9f4e9b:	jmp    9f4e9e
  9f4e9d:	inc    esi
  9f4e9e:	mov    eax,DWORD PTR [esp+0x24]
  9f4ea2:	mov    eax,DWORD PTR [eax]
  9f4ea4:	mov    DWORD PTR [esp+0x4],eax
  9f4ea8:	mov    DWORD PTR [esp],edi
  9f4eab:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  9f4eb0:	cmp    esi,eax
  9f4eb2:	jge    9f51e4
  9f4eb8:	lea    eax,[ebx+0x4a0ac]
  9f4ebe:	mov    eax,DWORD PTR [eax]
  9f4ec0:	mov    DWORD PTR [esp+0x8],eax
  9f4ec4:	mov    DWORD PTR [esp+0x4],esi
  9f4ec8:	mov    DWORD PTR [esp+0x1c],esi
  9f4ecc:	mov    DWORD PTR [esp],edi
  9f4ecf:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  9f4ed4:	test   eax,eax
  9f4ed6:	je     9f52e8
  9f4edc:	lea    ecx,[ebx+0x45874]
  9f4ee2:	mov    DWORD PTR [esp+0x28],ecx
  9f4ee6:	mov    edi,DWORD PTR [ecx]
  9f4ee8:	mov    ecx,DWORD PTR [eax]
  9f4eea:	mov    DWORD PTR [esp+0x2c],eax
  9f4eee:	movzx  edx,WORD PTR [ecx+0xaa]
  9f4ef5:	test   edx,edx
  9f4ef7:	je     9f4f08
  9f4ef9:	mov    esi,DWORD PTR [ecx+0x4c]
  9f4efc:	xor    ebx,ebx
  9f4efe:	cmp    DWORD PTR [esi+ebx*8],edi
  9f4f01:	je     9f4f28
  9f4f03:	inc    ebx
  9f4f04:	cmp    ebx,edx
  9f4f06:	jb     9f4efe
  9f4f08:	mov    DWORD PTR [esp+0x4],edi
  9f4f0c:	mov    esi,DWORD PTR [esp+0x2c]
  9f4f10:	mov    DWORD PTR [esp],esi
  9f4f13:	mov    DWORD PTR [esp+0x8],0x11
  9f4f1b:	mov    ebx,DWORD PTR [esp+0x30]
  9f4f1f:	call   1c1964
  9f4f24:	mov    ecx,eax
  9f4f26:	jmp    9f4f3b
  9f4f28:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  9f4f2c:	lea    ecx,[ecx+eax*8+0x13c]
  9f4f33:	mov    ebx,DWORD PTR [esp+0x30]
  9f4f37:	mov    esi,DWORD PTR [esp+0x2c]
  9f4f3b:	mov    eax,DWORD PTR [ecx+0x4]
  9f4f3e:	mov    DWORD PTR [esp+0x4],eax
  9f4f42:	mov    DWORD PTR [esp],esi
  9f4f45:	call   DWORD PTR [ecx]
  9f4f47:	test   eax,eax
  9f4f49:	mov    edi,DWORD PTR [esp+0x20]
  9f4f4d:	je     9f52e8
  9f4f53:	mov    ecx,DWORD PTR [eax]
  9f4f55:	mov    edx,DWORD PTR [ecx+0x100]
  9f4f5b:	mov    DWORD PTR [esp+0x4],edx
  9f4f5f:	mov    DWORD PTR [esp],eax
  9f4f62:	call   DWORD PTR [ecx+0xfc]
  9f4f68:	mov    DWORD PTR [esp+0x38],0x0
  9f4f70:	mov    eax,DWORD PTR [ebp+0x8]
  9f4f73:	mov    eax,DWORD PTR [eax+0x20]
  9f4f76:	test   eax,eax
  9f4f78:	je     9f52e8
  9f4f7e:	mov    DWORD PTR [esp],eax
  9f4f81:	mov    DWORD PTR [esp+0x4],0x0
  9f4f89:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  9f4f8e:	test   al,al
  9f4f90:	je     9f50c8
  9f4f96:	mov    eax,DWORD PTR [esp+0x28]
  9f4f9a:	mov    eax,DWORD PTR [eax]
  9f4f9c:	mov    ecx,DWORD PTR [esi]
  9f4f9e:	mov    DWORD PTR [esp+0x2c],esi
  9f4fa2:	movzx  edx,WORD PTR [ecx+0xaa]
  9f4fa9:	test   edx,edx
  9f4fab:	je     9f4fbc
  9f4fad:	mov    esi,DWORD PTR [ecx+0x4c]
  9f4fb0:	xor    ebx,ebx
  9f4fb2:	cmp    DWORD PTR [esi+ebx*8],eax
  9f4fb5:	je     9f4fdc
  9f4fb7:	inc    ebx
  9f4fb8:	cmp    ebx,edx
  9f4fba:	jb     9f4fb2
  9f4fbc:	mov    DWORD PTR [esp+0x4],eax
  9f4fc0:	mov    esi,DWORD PTR [esp+0x2c]
  9f4fc4:	mov    DWORD PTR [esp],esi
  9f4fc7:	mov    DWORD PTR [esp+0x8],0x31
  9f4fcf:	mov    ebx,DWORD PTR [esp+0x30]
  9f4fd3:	call   1c1964
  9f4fd8:	mov    ecx,eax
  9f4fda:	jmp    9f4fef
  9f4fdc:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  9f4fe0:	lea    ecx,[ecx+eax*8+0x23c]
  9f4fe7:	mov    ebx,DWORD PTR [esp+0x30]
  9f4feb:	mov    esi,DWORD PTR [esp+0x2c]
  9f4fef:	mov    eax,DWORD PTR [ecx+0x4]
  9f4ff2:	mov    DWORD PTR [esp+0x4],eax
  9f4ff6:	mov    DWORD PTR [esp],esi
  9f4ff9:	call   DWORD PTR [ecx]
  9f4ffb:	test   eax,eax
  9f4ffd:	je     9f50c8
  9f5003:	mov    eax,DWORD PTR [esp+0x28]
  9f5007:	mov    eax,DWORD PTR [eax]
  9f5009:	mov    ecx,DWORD PTR [esi]
  9f500b:	mov    DWORD PTR [esp+0x2c],esi
  9f500f:	movzx  edx,WORD PTR [ecx+0xaa]
  9f5016:	test   edx,edx
  9f5018:	je     9f5029
  9f501a:	mov    esi,DWORD PTR [ecx+0x4c]
  9f501d:	xor    ebx,ebx
  9f501f:	cmp    DWORD PTR [esi+ebx*8],eax
  9f5022:	je     9f5049
  9f5024:	inc    ebx
  9f5025:	cmp    ebx,edx
  9f5027:	jb     9f501f
  9f5029:	mov    DWORD PTR [esp+0x4],eax
  9f502d:	mov    esi,DWORD PTR [esp+0x2c]
  9f5031:	mov    DWORD PTR [esp],esi
  9f5034:	mov    DWORD PTR [esp+0x8],0x31
  9f503c:	mov    ebx,DWORD PTR [esp+0x30]
  9f5040:	call   1c1964
  9f5045:	mov    ecx,eax
  9f5047:	jmp    9f505c
  9f5049:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  9f504d:	lea    ecx,[ecx+eax*8+0x23c]
  9f5054:	mov    ebx,DWORD PTR [esp+0x30]
  9f5058:	mov    esi,DWORD PTR [esp+0x2c]
  9f505c:	mov    eax,DWORD PTR [ecx+0x4]
  9f505f:	mov    DWORD PTR [esp+0x4],eax
  9f5063:	mov    DWORD PTR [esp],esi
  9f5066:	call   DWORD PTR [ecx]
  9f5068:	test   eax,eax
  9f506a:	je     9f52e8
  9f5070:	lea    ecx,[ebx+0x58d44]  ; literal "Charge_KnockedOut"
  9f5076:	mov    ecx,DWORD PTR [ecx]
  9f5078:	lea    edx,[ebx+0x4a340]
  9f507e:	mov    edx,DWORD PTR [edx]
  9f5080:	mov    DWORD PTR [esp+0xc],edx
  9f5084:	lea    edx,[esp+0x38]
  9f5088:	mov    DWORD PTR [esp+0x8],edx
  9f508c:	mov    DWORD PTR [esp+0x4],ecx
  9f5090:	mov    DWORD PTR [esp],eax
  9f5093:	call   61b116  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, string>::TryGetValue | +25 other aliases
  9f5098:	test   al,al
  9f509a:	je     9f50c8
  9f509c:	mov    eax,DWORD PTR [esp+0x38]
  9f50a0:	test   eax,eax
  9f50a2:	je     9f52e8
  9f50a8:	mov    DWORD PTR [esp],eax
  9f50ab:	mov    DWORD PTR [esp+0xc],0x0
  9f50b3:	mov    DWORD PTR [esp+0x8],0x0
  9f50bb:	mov    DWORD PTR [esp+0x4],0x0
  9f50c3:	call   ebe37e  ; ABH.GameDatas.Battle.BattleEffectGameData::RemoveEffect
  9f50c8:	mov    DWORD PTR [esp+0x2c],esi
  9f50cc:	lea    eax,[ebx+0x45fe8]
  9f50d2:	mov    ecx,DWORD PTR [eax]
  9f50d4:	mov    eax,DWORD PTR [esi]
  9f50d6:	movzx  edx,BYTE PTR [ecx+0xac]
  9f50dd:	movzx  esi,BYTE PTR [eax+0xac]
  9f50e4:	cmp    esi,edx
  9f50e6:	jb     9f5170
  9f50ec:	mov    esi,DWORD PTR [eax+0x58]
  9f50ef:	cmp    DWORD PTR [esi+edx*4-0x4],ecx
  9f50f3:	jne    9f5170
  9f50f5:	mov    ecx,DWORD PTR [esp+0x28]
  9f50f9:	mov    ecx,DWORD PTR [ecx]
  9f50fb:	movzx  edx,WORD PTR [eax+0xaa]
  9f5102:	test   edx,edx
  9f5104:	je     9f5115
  9f5106:	mov    esi,DWORD PTR [eax+0x4c]
  9f5109:	xor    ebx,ebx
  9f510b:	cmp    DWORD PTR [esi+ebx*8],ecx
  9f510e:	je     9f5135
  9f5110:	inc    ebx
  9f5111:	cmp    ebx,edx
  9f5113:	jb     9f510b
  9f5115:	mov    DWORD PTR [esp+0x4],ecx
  9f5119:	mov    esi,DWORD PTR [esp+0x2c]
  9f511d:	mov    DWORD PTR [esp],esi
  9f5120:	mov    DWORD PTR [esp+0x8],0x11
  9f5128:	mov    ebx,DWORD PTR [esp+0x30]
  9f512c:	call   1c1964
  9f5131:	mov    ecx,eax
  9f5133:	jmp    9f5148
  9f5135:	mov    ecx,DWORD PTR [esi+ebx*8+0x4]
  9f5139:	lea    ecx,[eax+ecx*8+0x13c]
  9f5140:	mov    ebx,DWORD PTR [esp+0x30]
  9f5144:	mov    esi,DWORD PTR [esp+0x2c]
  9f5148:	mov    DWORD PTR [esp+0x2c],esi
  9f514c:	mov    eax,DWORD PTR [ecx+0x4]
  9f514f:	mov    DWORD PTR [esp+0x4],eax
  9f5153:	mov    DWORD PTR [esp],esi
  9f5156:	call   DWORD PTR [ecx]
  9f5158:	test   eax,eax
  9f515a:	je     9f52e8
  9f5160:	mov    DWORD PTR [esp],eax
  9f5163:	mov    DWORD PTR [esp+0x4],0x0
  9f516b:	call   8d8278  ; CharacterControllerBattleGroundBase::PlayIdle
  9f5170:	mov    eax,DWORD PTR [ebp+0x8]
  9f5173:	mov    eax,DWORD PTR [eax+0x20]
  9f5176:	test   eax,eax
  9f5178:	je     9f52e4
  9f517e:	mov    eax,DWORD PTR [eax+0x104]
  9f5184:	test   eax,eax
  9f5186:	mov    ebx,DWORD PTR [esp+0x30]
  9f518a:	mov    esi,DWORD PTR [esp+0x1c]
  9f518e:	je     9f4e9d
  9f5194:	mov    DWORD PTR [esp],eax
  9f5197:	mov    DWORD PTR [esp+0x4],0x0
  9f519f:	call   6c1296  ; ABH.GameDatas.SkillGameData::GenerateSkillBattleData
  9f51a4:	test   eax,eax
  9f51a6:	je     9f52e8
  9f51ac:	mov    ecx,DWORD PTR [ebp+0x8]
  9f51af:	mov    ecx,DWORD PTR [ecx+0x20]
  9f51b2:	mov    DWORD PTR [esp+0x28],ecx
  9f51b6:	mov    edx,DWORD PTR [eax]
  9f51b8:	mov    ecx,DWORD PTR [edx+0xf8]
  9f51be:	mov    DWORD PTR [esp+0x10],ecx
  9f51c2:	mov    ecx,DWORD PTR [esp+0x2c]
  9f51c6:	mov    DWORD PTR [esp+0xc],ecx
  9f51ca:	mov    DWORD PTR [esp+0x8],ecx
  9f51ce:	mov    ecx,DWORD PTR [esp+0x28]
  9f51d2:	mov    DWORD PTR [esp+0x4],ecx
  9f51d6:	mov    DWORD PTR [esp],eax
  9f51d9:	call   DWORD PTR [edx+0xf4]
  9f51df:	jmp    9f4e9d
  9f51e4:	mov    DWORD PTR [esp+0x4],0x0
  9f51ec:	mov    DWORD PTR [esp],0x0
  9f51f3:	call   106b137  ; DIContainerLogic::get_InventoryService
  9f51f8:	mov    ecx,DWORD PTR [ebp+0x8]
  9f51fb:	mov    ecx,DWORD PTR [ecx+0x20]
  9f51fe:	test   ecx,ecx
  9f5200:	je     9f52e8
  9f5206:	test   eax,eax
  9f5208:	je     9f52e8
  9f520e:	mov    ecx,DWORD PTR [ecx+0x78]
  9f5211:	lea    edx,[ebx+0x574c0]  ; literal "xp_multiplier_consumable_01"
  9f5217:	mov    edx,DWORD PTR [edx]
  9f5219:	mov    DWORD PTR [esp+0x8],edx
  9f521d:	mov    DWORD PTR [esp+0x4],ecx
  9f5221:	mov    DWORD PTR [esp],eax
  9f5224:	mov    DWORD PTR [esp+0xc],0x0
  9f522c:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  9f5231:	test   eax,eax
  9f5233:	jle    9f52d2
  9f5239:	mov    DWORD PTR [esp+0x34],0x0
  9f5241:	lea    eax,[ebx+0x58d48]  ; literal "Consumable_XP"
  9f5247:	mov    esi,DWORD PTR [eax]
  9f5249:	mov    DWORD PTR [esp+0x4],0x0
  9f5251:	mov    DWORD PTR [esp],0x0
  9f5258:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  9f525d:	test   eax,eax
  9f525f:	je     9f52e8
  9f5265:	lea    ecx,[esp+0x34]
  9f5269:	mov    DWORD PTR [esp+0x8],ecx
  9f526d:	mov    DWORD PTR [esp+0x4],esi
  9f5271:	mov    DWORD PTR [esp],eax
  9f5274:	mov    DWORD PTR [esp+0xc],0x0
  9f527c:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  9f5281:	test   al,al
  9f5283:	je     9f52d2
  9f5285:	lea    eax,[ebx+0x58d4c]  ; literal "Try to instantiate XP doubler effect"
  9f528b:	mov    eax,DWORD PTR [eax]
  9f528d:	mov    DWORD PTR [esp+0x4],eax
  9f5291:	mov    DWORD PTR [esp+0x8],0x0
  9f5299:	mov    DWORD PTR [esp],0x0
  9f52a0:	call   1068c69  ; DebugLog::Log
  9f52a5:	mov    eax,DWORD PTR [esp+0x34]
  9f52a9:	mov    DWORD PTR [esp+0x8],eax
  9f52ad:	mov    DWORD PTR [esp+0x4],edi
  9f52b1:	mov    eax,DWORD PTR [ebp+0x8]
  9f52b4:	mov    esi,eax
  9f52b6:	mov    DWORD PTR [esp],esi
  9f52b9:	call   9f52f2  ; BattleMgrBase::DelayedInstantiateXPEffect
  9f52be:	mov    DWORD PTR [esp+0x4],eax
  9f52c2:	mov    DWORD PTR [esp],esi
  9f52c5:	mov    DWORD PTR [esp+0x8],0x0
  9f52cd:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  9f52d2:	mov    eax,DWORD PTR [ebp+0x8]
  9f52d5:	mov    BYTE PTR [eax+0x80],0x0
  9f52dc:	lea    esp,[ebp-0xc]
  9f52df:	pop    esi
  9f52e0:	pop    edi
  9f52e1:	pop    ebx
  9f52e2:	pop    ebp
  9f52e3:	ret
  9f52e4:	mov    ebx,DWORD PTR [esp+0x30]
  9f52e8:	call   1fbc48
  9f52ed:	call   9ef4ac