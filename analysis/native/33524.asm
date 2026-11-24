
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0108fcf5:
 108fcf5:	push   ebp
 108fcf6:	mov    ebp,esp
 108fcf8:	push   ebx
 108fcf9:	push   edi
 108fcfa:	push   esi
 108fcfb:	and    esp,0xfffffff0
 108fcfe:	sub    esp,0x30
 108fd01:	call   108fd06
 108fd06:	pop    ebx
 108fd07:	add    ebx,0xe8223e
 108fd0d:	mov    al,BYTE PTR [ebx+0x6347f]
 108fd13:	test   al,al
 108fd15:	jne    108fd2e
 108fd17:	lea    eax,[ebx-0x66a44c]
 108fd1d:	mov    eax,DWORD PTR [eax]
 108fd1f:	mov    DWORD PTR [esp],eax
 108fd22:	call   1ca6e8
 108fd27:	mov    BYTE PTR [ebx+0x6347f],0x1
 108fd2e:	lea    eax,[ebx+0x46f44]
 108fd34:	mov    eax,DWORD PTR [eax]
 108fd36:	mov    DWORD PTR [esp],eax
 108fd39:	call   20bfb2
 108fd3e:	mov    esi,eax
 108fd40:	mov    DWORD PTR [esp],esi
 108fd43:	mov    DWORD PTR [esp+0x4],0x0
 108fd4b:	call   124632e  ; System.Object::.ctor
 108fd50:	test   esi,esi
 108fd52:	je     108ff6b
 108fd58:	mov    eax,DWORD PTR [ebp+0xc]
 108fd5b:	mov    DWORD PTR [esi+0x8],eax
 108fd5e:	lea    edi,[ebx+0x4584c]
 108fd64:	mov    eax,DWORD PTR [edi]
 108fd66:	test   BYTE PTR [eax+0xb2],0x1
 108fd6d:	je     108fd7f
 108fd6f:	cmp    DWORD PTR [eax+0x60],0x0
 108fd73:	jne    108fd7f
 108fd75:	mov    DWORD PTR [esp],eax
 108fd78:	call   1db0b8
 108fd7d:	mov    eax,DWORD PTR [edi]
 108fd7f:	mov    eax,DWORD PTR [eax+0x50]
 108fd82:	mov    eax,DWORD PTR [eax+0xc4]
 108fd88:	test   eax,eax
 108fd8a:	je     108ff6b
 108fd90:	mov    ecx,DWORD PTR [esi+0x8]
 108fd93:	lea    edx,[ebx+0x4d2b4]
 108fd99:	mov    edx,DWORD PTR [edx]
 108fd9b:	mov    DWORD PTR [esp+0x8],edx
 108fd9f:	mov    DWORD PTR [esp+0x4],ecx
 108fda3:	mov    DWORD PTR [esp],eax
 108fda6:	call   5b427e  ; shared address: System.Collections.Generic.Dictionary`2<AssetbundleIndex, GenericAssetProvider>::ContainsKey | System.Collections.Generic.Dictionary`2<AssetbundleIndex, object>::ContainsKey
 108fdab:	test   al,al
 108fdad:	jne    108ff20
 108fdb3:	mov    eax,DWORD PTR [edi]
 108fdb5:	test   BYTE PTR [eax+0xb2],0x1
 108fdbc:	je     108fdce
 108fdbe:	cmp    DWORD PTR [eax+0x60],0x0
 108fdc2:	jne    108fdce
 108fdc4:	mov    DWORD PTR [esp],eax
 108fdc7:	call   1db0b8
 108fdcc:	mov    eax,DWORD PTR [edi]
 108fdce:	mov    DWORD PTR [esp+0x24],edi
 108fdd2:	mov    eax,DWORD PTR [eax+0x50]
 108fdd5:	mov    eax,DWORD PTR [eax+0xc4]
 108fddb:	mov    DWORD PTR [esp+0x20],eax
 108fddf:	mov    eax,DWORD PTR [esi+0x8]
 108fde2:	mov    DWORD PTR [esp+0x1c],eax
 108fde6:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 108fdeb:	mov    edi,eax
 108fded:	lea    eax,[ebx+0x44ebc]
 108fdf3:	mov    eax,DWORD PTR [eax]
 108fdf5:	test   BYTE PTR [eax+0xb2],0x1
 108fdfc:	je     108fe0c
 108fdfe:	cmp    DWORD PTR [eax+0x60],0x0
 108fe02:	jne    108fe0c
 108fe04:	mov    DWORD PTR [esp],eax
 108fe07:	call   1db0b8
 108fe0c:	mov    DWORD PTR [esp+0x4],edi
 108fe10:	mov    DWORD PTR [esp+0x8],0x0
 108fe18:	mov    DWORD PTR [esp],0x0
 108fe1f:	xor    edi,edi
 108fe21:	call   1679a11  ; UnityEngine.Object::op_Implicit
 108fe26:	test   al,al
 108fe28:	je     108fef4
 108fe2e:	mov    eax,DWORD PTR [esp+0x24]
 108fe32:	mov    eax,DWORD PTR [eax]
 108fe34:	test   BYTE PTR [eax+0xb2],0x1
 108fe3b:	je     108fe4b
 108fe3d:	cmp    DWORD PTR [eax+0x60],0x0
 108fe41:	jne    108fe4b
 108fe43:	mov    DWORD PTR [esp],eax
 108fe46:	call   1db0b8
 108fe4b:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 108fe50:	test   eax,eax
 108fe52:	je     108ff6b
 108fe58:	mov    DWORD PTR [esp],eax
 108fe5b:	mov    DWORD PTR [esp+0x4],0x0
 108fe63:	call   1501684  ; UnityEngine.Component::get_gameObject
 108fe68:	test   eax,eax
 108fe6a:	je     108ff6b
 108fe70:	lea    ecx,[ebx+0x4d26c]
 108fe76:	mov    ecx,DWORD PTR [ecx]
 108fe78:	mov    DWORD PTR [esp+0x4],ecx
 108fe7c:	mov    DWORD PTR [esp],eax
 108fe7f:	call   15eaa41  ; shared address: UnityEngine.GameObject::GetComponentsInChildren | UnityEngine.GameObject::GetComponentsInChildren | UnityEngine.GameObject::GetComponentsInChildren | +13 other aliases
 108fe84:	mov    DWORD PTR [esp+0x18],eax
 108fe88:	lea    eax,[ebx+0x4d2b8]
 108fe8e:	mov    eax,DWORD PTR [eax]
 108fe90:	mov    DWORD PTR [esp+0x14],eax
 108fe94:	lea    eax,[ebx+0x46e34]
 108fe9a:	mov    eax,DWORD PTR [eax]
 108fe9c:	mov    DWORD PTR [esp],eax
 108fe9f:	call   20bfb2
 108fea4:	mov    edi,eax
 108fea6:	mov    eax,DWORD PTR [esp+0x14]
 108feaa:	mov    DWORD PTR [esp+0x28],eax
 108feae:	lea    eax,[ebx+0x4d130]
 108feb4:	mov    eax,DWORD PTR [eax]
 108feb6:	mov    DWORD PTR [esp+0xc],eax
 108feba:	mov    eax,DWORD PTR [esp+0x28]
 108febe:	mov    DWORD PTR [esp+0x8],eax
 108fec2:	mov    DWORD PTR [esp+0x4],esi
 108fec6:	mov    DWORD PTR [esp],edi
 108fec9:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
 108fece:	lea    eax,[ebx+0x4d274]
 108fed4:	mov    eax,DWORD PTR [eax]
 108fed6:	mov    DWORD PTR [esp+0xc],eax
 108feda:	mov    DWORD PTR [esp+0x8],edi
 108fede:	mov    eax,DWORD PTR [esp+0x18]
 108fee2:	mov    DWORD PTR [esp+0x4],eax
 108fee6:	mov    DWORD PTR [esp],0x0
 108feed:	call   15f0251  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +35 other aliases
 108fef2:	mov    edi,eax
 108fef4:	mov    ecx,DWORD PTR [esp+0x20]
 108fef8:	test   ecx,ecx
 108fefa:	je     108ff6b
 108fefc:	lea    eax,[ebx+0x4d2bc]
 108ff02:	mov    eax,DWORD PTR [eax]
 108ff04:	mov    DWORD PTR [esp+0xc],eax
 108ff08:	mov    DWORD PTR [esp+0x8],edi
 108ff0c:	mov    eax,DWORD PTR [esp+0x1c]
 108ff10:	mov    DWORD PTR [esp+0x4],eax
 108ff14:	mov    DWORD PTR [esp],ecx
 108ff17:	call   5b3d23  ; shared address: System.Collections.Generic.Dictionary`2<AssetbundleIndex, GenericAssetProvider>::Add | System.Collections.Generic.Dictionary`2<AssetbundleIndex, object>::Add
 108ff1c:	mov    edi,DWORD PTR [esp+0x24]
 108ff20:	mov    eax,DWORD PTR [edi]
 108ff22:	test   BYTE PTR [eax+0xb2],0x1
 108ff29:	je     108ff3b
 108ff2b:	cmp    DWORD PTR [eax+0x60],0x0
 108ff2f:	jne    108ff3b
 108ff31:	mov    DWORD PTR [esp],eax
 108ff34:	call   1db0b8
 108ff39:	mov    eax,DWORD PTR [edi]
 108ff3b:	mov    eax,DWORD PTR [eax+0x50]
 108ff3e:	mov    eax,DWORD PTR [eax+0xc4]
 108ff44:	test   eax,eax
 108ff46:	je     108ff6b
 108ff48:	mov    ecx,DWORD PTR [esi+0x8]
 108ff4b:	lea    edx,[ebx+0x4d2c0]
 108ff51:	mov    edx,DWORD PTR [edx]
 108ff53:	mov    DWORD PTR [esp+0x8],edx
 108ff57:	mov    DWORD PTR [esp+0x4],ecx
 108ff5b:	mov    DWORD PTR [esp],eax
 108ff5e:	call   5b2bb0  ; shared address: System.Collections.Generic.Dictionary`2<AssetbundleIndex, GenericAssetProvider>::get_Item | System.Collections.Generic.Dictionary`2<AssetbundleIndex, object>::get_Item
 108ff63:	lea    esp,[ebp-0xc]
 108ff66:	pop    esi
 108ff67:	pop    edi
 108ff68:	pop    ebx
 108ff69:	pop    ebp
 108ff6a:	ret
 108ff6b:	call   1fbc48
 108ff70:	call   1065aed