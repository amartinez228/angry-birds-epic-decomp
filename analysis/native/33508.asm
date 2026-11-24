
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01068a45:
 1068a45:	push   ebp
 1068a46:	mov    ebp,esp
 1068a48:	push   ebx
 1068a49:	push   edi
 1068a4a:	push   esi
 1068a4b:	and    esp,0xfffffff0
 1068a4e:	sub    esp,0x20
 1068a51:	call   1068a56
 1068a56:	pop    ebx
 1068a57:	add    ebx,0xea94ee
 1068a5d:	mov    al,BYTE PTR [ebx+0x6346f]
 1068a63:	test   al,al
 1068a65:	jne    1068a7e
 1068a67:	lea    eax,[ebx-0x66a48c]
 1068a6d:	mov    eax,DWORD PTR [eax]
 1068a6f:	mov    DWORD PTR [esp],eax
 1068a72:	call   1ca6e8
 1068a77:	mov    BYTE PTR [ebx+0x6346f],0x1
 1068a7e:	lea    edi,[ebx+0x4584c]
 1068a84:	mov    eax,DWORD PTR [edi]
 1068a86:	test   BYTE PTR [eax+0xb2],0x1
 1068a8d:	je     1068a9f
 1068a8f:	cmp    DWORD PTR [eax+0x60],0x0
 1068a93:	jne    1068a9f
 1068a95:	mov    DWORD PTR [esp],eax
 1068a98:	call   1db0b8
 1068a9d:	mov    eax,DWORD PTR [edi]
 1068a9f:	mov    ecx,DWORD PTR [eax+0x50]
 1068aa2:	mov    esi,DWORD PTR [ecx+0x94]
 1068aa8:	test   esi,esi
 1068aaa:	jne    1068c55
 1068ab0:	test   BYTE PTR [eax+0xb2],0x1
 1068ab7:	je     1068ac7
 1068ab9:	cmp    DWORD PTR [eax+0x60],0x0
 1068abd:	jne    1068ac7
 1068abf:	mov    DWORD PTR [esp],eax
 1068ac2:	call   1db0b8
 1068ac7:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 1068acc:	mov    esi,eax
 1068ace:	lea    eax,[ebx+0x44ebc]
 1068ad4:	mov    eax,DWORD PTR [eax]
 1068ad6:	test   BYTE PTR [eax+0xb2],0x1
 1068add:	je     1068aed
 1068adf:	cmp    DWORD PTR [eax+0x60],0x0
 1068ae3:	jne    1068aed
 1068ae5:	mov    DWORD PTR [esp],eax
 1068ae8:	call   1db0b8
 1068aed:	mov    DWORD PTR [esp+0x4],esi
 1068af1:	mov    DWORD PTR [esp+0x8],0x0
 1068af9:	mov    DWORD PTR [esp],0x0
 1068b00:	xor    esi,esi
 1068b02:	call   1679a11  ; UnityEngine.Object::op_Implicit
 1068b07:	test   al,al
 1068b09:	je     1068c31
 1068b0f:	mov    eax,DWORD PTR [edi]
 1068b11:	test   BYTE PTR [eax+0xb2],0x1
 1068b18:	je     1068b28
 1068b1a:	cmp    DWORD PTR [eax+0x60],0x0
 1068b1e:	jne    1068b28
 1068b20:	mov    DWORD PTR [esp],eax
 1068b23:	call   1db0b8
 1068b28:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
 1068b2d:	test   eax,eax
 1068b2f:	je     1068c5f
 1068b35:	mov    DWORD PTR [esp],eax
 1068b38:	mov    DWORD PTR [esp+0x4],0x0
 1068b40:	call   1501684  ; UnityEngine.Component::get_gameObject
 1068b45:	test   eax,eax
 1068b47:	je     1068c5f
 1068b4d:	lea    ecx,[ebx+0x4d26c]
 1068b53:	mov    ecx,DWORD PTR [ecx]
 1068b55:	mov    DWORD PTR [esp+0x4],ecx
 1068b59:	mov    DWORD PTR [esp],eax
 1068b5c:	call   15eaa41  ; shared address: UnityEngine.GameObject::GetComponentsInChildren | UnityEngine.GameObject::GetComponentsInChildren | UnityEngine.GameObject::GetComponentsInChildren | +13 other aliases
 1068b61:	mov    esi,eax
 1068b63:	mov    eax,DWORD PTR [edi]
 1068b65:	mov    ecx,DWORD PTR [eax+0x50]
 1068b68:	cmp    DWORD PTR [ecx+0x178],0x0
 1068b6f:	jne    1068bed
 1068b71:	mov    DWORD PTR [esp+0x14],esi
 1068b75:	lea    eax,[ebx+0x4d270]
 1068b7b:	mov    esi,DWORD PTR [eax]
 1068b7d:	lea    eax,[ebx+0x46e34]
 1068b83:	mov    eax,DWORD PTR [eax]
 1068b85:	mov    DWORD PTR [esp],eax
 1068b88:	call   20bfb2
 1068b8d:	mov    DWORD PTR [esp+0x10],eax
 1068b91:	mov    DWORD PTR [esp+0x18],esi
 1068b95:	lea    ecx,[ebx+0x4d130]
 1068b9b:	mov    ecx,DWORD PTR [ecx]
 1068b9d:	mov    DWORD PTR [esp+0xc],ecx
 1068ba1:	mov    ecx,DWORD PTR [esp+0x18]
 1068ba5:	mov    DWORD PTR [esp+0x8],ecx
 1068ba9:	mov    DWORD PTR [esp],eax
 1068bac:	mov    DWORD PTR [esp+0x4],0x0
 1068bb4:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
 1068bb9:	mov    eax,DWORD PTR [edi]
 1068bbb:	test   BYTE PTR [eax+0xb2],0x1
 1068bc2:	je     1068bda
 1068bc4:	cmp    DWORD PTR [eax+0x60],0x0
 1068bc8:	mov    esi,DWORD PTR [esp+0x14]
 1068bcc:	jne    1068bde
 1068bce:	mov    DWORD PTR [esp],eax
 1068bd1:	call   1db0b8
 1068bd6:	mov    eax,DWORD PTR [edi]
 1068bd8:	jmp    1068bde
 1068bda:	mov    esi,DWORD PTR [esp+0x14]
 1068bde:	mov    ecx,DWORD PTR [esp+0x10]
 1068be2:	mov    eax,DWORD PTR [eax+0x50]
 1068be5:	mov    DWORD PTR [eax+0x178],ecx
 1068beb:	mov    eax,DWORD PTR [edi]
 1068bed:	test   BYTE PTR [eax+0xb2],0x1
 1068bf4:	je     1068c06
 1068bf6:	cmp    DWORD PTR [eax+0x60],0x0
 1068bfa:	jne    1068c06
 1068bfc:	mov    DWORD PTR [esp],eax
 1068bff:	call   1db0b8
 1068c04:	mov    eax,DWORD PTR [edi]
 1068c06:	mov    eax,DWORD PTR [eax+0x50]
 1068c09:	mov    eax,DWORD PTR [eax+0x178]
 1068c0f:	lea    ecx,[ebx+0x4d274]
 1068c15:	mov    ecx,DWORD PTR [ecx]
 1068c17:	mov    DWORD PTR [esp+0xc],ecx
 1068c1b:	mov    DWORD PTR [esp+0x8],eax
 1068c1f:	mov    DWORD PTR [esp+0x4],esi
 1068c23:	mov    DWORD PTR [esp],0x0
 1068c2a:	call   15f0251  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +35 other aliases
 1068c2f:	mov    esi,eax
 1068c31:	mov    eax,DWORD PTR [edi]
 1068c33:	test   BYTE PTR [eax+0xb2],0x1
 1068c3a:	je     1068c4c
 1068c3c:	cmp    DWORD PTR [eax+0x60],0x0
 1068c40:	jne    1068c4c
 1068c42:	mov    DWORD PTR [esp],eax
 1068c45:	call   1db0b8
 1068c4a:	mov    eax,DWORD PTR [edi]
 1068c4c:	mov    eax,DWORD PTR [eax+0x50]
 1068c4f:	mov    DWORD PTR [eax+0x94],esi
 1068c55:	mov    eax,esi
 1068c57:	lea    esp,[ebp-0xc]
 1068c5a:	pop    esi
 1068c5b:	pop    edi
 1068c5c:	pop    ebx
 1068c5d:	pop    ebp
 1068c5e:	ret
 1068c5f:	call   1fbc48
 1068c64:	call   1065aed