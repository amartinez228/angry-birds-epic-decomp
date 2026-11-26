
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ee9a90:
  ee9a90:	push   ebp
  ee9a91:	mov    ebp,esp
  ee9a93:	push   ebx
  ee9a94:	push   edi
  ee9a95:	push   esi
  ee9a96:	and    esp,0xfffffff0
  ee9a99:	sub    esp,0x30
  ee9a9c:	call   ee9aa1
  ee9aa1:	pop    ebx
  ee9aa2:	add    ebx,0x10284a3
  ee9aa8:	mov    esi,DWORD PTR [ebp+0x8]
  ee9aab:	mov    al,BYTE PTR [ebx+0x627ed]
  ee9ab1:	test   al,al
  ee9ab3:	jne    ee9acc
  ee9ab5:	lea    eax,[ebx-0x670460]
  ee9abb:	mov    eax,DWORD PTR [eax]
  ee9abd:	mov    DWORD PTR [esp],eax
  ee9ac0:	call   1ca6e8
  ee9ac5:	mov    BYTE PTR [ebx+0x627ed],0x1
  ee9acc:	mov    edi,DWORD PTR [ebp+0x18]
  ee9acf:	movss  xmm0,DWORD PTR [ebp+0xc]
  ee9ad4:	movss  DWORD PTR [esp+0x20],xmm0
  ee9ada:	mov    DWORD PTR [esp+0x28],0x0
  ee9ae2:	movss  xmm0,DWORD PTR [esi+0x98]
  ee9aea:	xorps  xmm1,xmm1
  ee9aed:	ucomiss xmm0,xmm1
  ee9af0:	jbe    ee9b81
  ee9af6:	test   edi,edi
  ee9af8:	je     eea1bf
  ee9afe:	lea    eax,[ebx+0x45874]
  ee9b04:	mov    eax,DWORD PTR [eax]
  ee9b06:	mov    ecx,DWORD PTR [edi]
  ee9b08:	movzx  edx,WORD PTR [ecx+0xaa]
  ee9b0f:	test   edx,edx
  ee9b11:	je     ee9b22
  ee9b13:	mov    esi,DWORD PTR [ecx+0x4c]
  ee9b16:	xor    edi,edi
  ee9b18:	cmp    DWORD PTR [esi+edi*8],eax
  ee9b1b:	je     ee9b3d
  ee9b1d:	inc    edi
  ee9b1e:	cmp    edi,edx
  ee9b20:	jb     ee9b18
  ee9b22:	mov    DWORD PTR [esp+0x4],eax
  ee9b26:	mov    edi,DWORD PTR [ebp+0x18]
  ee9b29:	mov    DWORD PTR [esp],edi
  ee9b2c:	mov    DWORD PTR [esp+0x8],0x7b
  ee9b34:	call   1c1964
  ee9b39:	mov    ecx,eax
  ee9b3b:	jmp    ee9b4b
  ee9b3d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ee9b41:	lea    ecx,[ecx+eax*8+0x48c]
  ee9b48:	mov    edi,DWORD PTR [ebp+0x18]
  ee9b4b:	mov    eax,DWORD PTR [ecx+0x4]
  ee9b4e:	mov    DWORD PTR [esp+0x4],eax
  ee9b52:	mov    DWORD PTR [esp],edi
  ee9b55:	call   DWORD PTR [ecx]
  ee9b57:	test   al,al
  ee9b59:	mov    esi,DWORD PTR [ebp+0x8]
  ee9b5c:	je     ee9b7e
  ee9b5e:	movss  xmm0,DWORD PTR [esi+0x98]
  ee9b66:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ee9b6e:	movss  xmm1,DWORD PTR [esp+0x20]
  ee9b74:	mulss  xmm1,xmm0
  ee9b78:	movss  DWORD PTR [esp+0x20],xmm1
  ee9b7e:	xorps  xmm1,xmm1
  ee9b81:	movss  xmm0,DWORD PTR [esi+0x90]
  ee9b89:	ucomiss xmm0,xmm1
  ee9b8c:	jbe    ee9c42
  ee9b92:	test   edi,edi
  ee9b94:	je     eea1bf
  ee9b9a:	lea    eax,[ebx+0x45874]
  ee9ba0:	mov    eax,DWORD PTR [eax]
  ee9ba2:	mov    ecx,DWORD PTR [edi]
  ee9ba4:	movzx  edx,WORD PTR [ecx+0xaa]
  ee9bab:	test   edx,edx
  ee9bad:	je     ee9bbe
  ee9baf:	mov    esi,DWORD PTR [ecx+0x4c]
  ee9bb2:	xor    edi,edi
  ee9bb4:	cmp    DWORD PTR [esi+edi*8],eax
  ee9bb7:	je     ee9bd9
  ee9bb9:	inc    edi
  ee9bba:	cmp    edi,edx
  ee9bbc:	jb     ee9bb4
  ee9bbe:	mov    DWORD PTR [esp+0x4],eax
  ee9bc2:	mov    edi,DWORD PTR [ebp+0x18]
  ee9bc5:	mov    DWORD PTR [esp],edi
  ee9bc8:	mov    DWORD PTR [esp+0x8],0x31
  ee9bd0:	call   1c1964
  ee9bd5:	mov    ecx,eax
  ee9bd7:	jmp    ee9be7
  ee9bd9:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ee9bdd:	lea    ecx,[ecx+eax*8+0x23c]
  ee9be4:	mov    edi,DWORD PTR [ebp+0x18]
  ee9be7:	mov    eax,DWORD PTR [ecx+0x4]
  ee9bea:	mov    DWORD PTR [esp+0x4],eax
  ee9bee:	mov    DWORD PTR [esp],edi
  ee9bf1:	call   DWORD PTR [ecx]
  ee9bf3:	test   eax,eax
  ee9bf5:	mov    esi,DWORD PTR [ebp+0x8]
  ee9bf8:	je     eea1bf
  ee9bfe:	lea    ecx,[ebx+0x56cb4]  ; literal "WaterBomb"
  ee9c04:	mov    ecx,DWORD PTR [ecx]
  ee9c06:	lea    edx,[ebx+0x4a1c0]
  ee9c0c:	mov    edx,DWORD PTR [edx]
  ee9c0e:	mov    DWORD PTR [esp+0x8],edx
  ee9c12:	mov    DWORD PTR [esp+0x4],ecx
  ee9c16:	mov    DWORD PTR [esp],eax
  ee9c19:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  ee9c1e:	test   al,al
  ee9c20:	je     ee9c42
  ee9c22:	movss  xmm0,DWORD PTR [esi+0x90]
  ee9c2a:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ee9c32:	movss  xmm1,DWORD PTR [esp+0x20]
  ee9c38:	mulss  xmm1,xmm0
  ee9c3c:	movss  DWORD PTR [esp+0x20],xmm1
  ee9c42:	movss  xmm0,DWORD PTR [esi+0xa0]
  ee9c4a:	xorps  xmm1,xmm1
  ee9c4d:	ucomiss xmm0,xmm1
  ee9c50:	jbe    ee9d09
  ee9c56:	test   edi,edi
  ee9c58:	je     eea1bf
  ee9c5e:	lea    eax,[ebx+0x45874]
  ee9c64:	mov    eax,DWORD PTR [eax]
  ee9c66:	mov    ecx,DWORD PTR [edi]
  ee9c68:	movzx  edx,WORD PTR [ecx+0xaa]
  ee9c6f:	test   edx,edx
  ee9c71:	je     ee9c82
  ee9c73:	mov    esi,DWORD PTR [ecx+0x4c]
  ee9c76:	xor    edi,edi
  ee9c78:	cmp    DWORD PTR [esi+edi*8],eax
  ee9c7b:	je     ee9c9d
  ee9c7d:	inc    edi
  ee9c7e:	cmp    edi,edx
  ee9c80:	jb     ee9c78
  ee9c82:	mov    DWORD PTR [esp+0x4],eax
  ee9c86:	mov    edi,DWORD PTR [ebp+0x18]
  ee9c89:	mov    DWORD PTR [esp],edi
  ee9c8c:	mov    DWORD PTR [esp+0x8],0x31
  ee9c94:	call   1c1964
  ee9c99:	mov    ecx,eax
  ee9c9b:	jmp    ee9cab
  ee9c9d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ee9ca1:	lea    ecx,[ecx+eax*8+0x23c]
  ee9ca8:	mov    edi,DWORD PTR [ebp+0x18]
  ee9cab:	mov    eax,DWORD PTR [ecx+0x4]
  ee9cae:	mov    DWORD PTR [esp+0x4],eax
  ee9cb2:	mov    DWORD PTR [esp],edi
  ee9cb5:	call   DWORD PTR [ecx]
  ee9cb7:	test   eax,eax
  ee9cb9:	mov    esi,DWORD PTR [ebp+0x8]
  ee9cbc:	je     eea1bf
  ee9cc2:	lea    ecx,[ebx+0x56cb8]  ; literal "ChocolateRain"
  ee9cc8:	mov    ecx,DWORD PTR [ecx]
  ee9cca:	lea    edx,[ebx+0x4a1c0]
  ee9cd0:	mov    edx,DWORD PTR [edx]
  ee9cd2:	mov    DWORD PTR [esp+0x8],edx
  ee9cd6:	mov    DWORD PTR [esp+0x4],ecx
  ee9cda:	mov    DWORD PTR [esp],eax
  ee9cdd:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  ee9ce2:	test   al,al
  ee9ce4:	je     ee9d06
  ee9ce6:	movss  xmm0,DWORD PTR [esi+0xa0]
  ee9cee:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ee9cf6:	movss  xmm1,DWORD PTR [esp+0x20]
  ee9cfc:	mulss  xmm1,xmm0
  ee9d00:	movss  DWORD PTR [esp+0x20],xmm1
  ee9d06:	xorps  xmm1,xmm1
  ee9d09:	movss  xmm0,DWORD PTR [esi+0xa4]
  ee9d11:	ucomiss xmm0,xmm1
  ee9d14:	jbe    ee9dca
  ee9d1a:	test   edi,edi
  ee9d1c:	je     eea1bf
  ee9d22:	lea    eax,[ebx+0x45874]
  ee9d28:	mov    eax,DWORD PTR [eax]
  ee9d2a:	mov    ecx,DWORD PTR [edi]
  ee9d2c:	movzx  edx,WORD PTR [ecx+0xaa]
  ee9d33:	test   edx,edx
  ee9d35:	je     ee9d46
  ee9d37:	mov    esi,DWORD PTR [ecx+0x4c]
  ee9d3a:	xor    edi,edi
  ee9d3c:	cmp    DWORD PTR [esi+edi*8],eax
  ee9d3f:	je     ee9d61
  ee9d41:	inc    edi
  ee9d42:	cmp    edi,edx
  ee9d44:	jb     ee9d3c
  ee9d46:	mov    DWORD PTR [esp+0x4],eax
  ee9d4a:	mov    edi,DWORD PTR [ebp+0x18]
  ee9d4d:	mov    DWORD PTR [esp],edi
  ee9d50:	mov    DWORD PTR [esp+0x8],0x31
  ee9d58:	call   1c1964
  ee9d5d:	mov    ecx,eax
  ee9d5f:	jmp    ee9d6f
  ee9d61:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ee9d65:	lea    ecx,[ecx+eax*8+0x23c]
  ee9d6c:	mov    edi,DWORD PTR [ebp+0x18]
  ee9d6f:	mov    eax,DWORD PTR [ecx+0x4]
  ee9d72:	mov    DWORD PTR [esp+0x4],eax
  ee9d76:	mov    DWORD PTR [esp],edi
  ee9d79:	call   DWORD PTR [ecx]
  ee9d7b:	test   eax,eax
  ee9d7d:	mov    esi,DWORD PTR [ebp+0x8]
  ee9d80:	je     eea1bf
  ee9d86:	lea    ecx,[ebx+0x56cbc]  ; literal "StickyPumpkin"
  ee9d8c:	mov    ecx,DWORD PTR [ecx]
  ee9d8e:	lea    edx,[ebx+0x4a1c0]
  ee9d94:	mov    edx,DWORD PTR [edx]
  ee9d96:	mov    DWORD PTR [esp+0x8],edx
  ee9d9a:	mov    DWORD PTR [esp+0x4],ecx
  ee9d9e:	mov    DWORD PTR [esp],eax
  ee9da1:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  ee9da6:	test   al,al
  ee9da8:	je     ee9dca
  ee9daa:	movss  xmm0,DWORD PTR [esi+0xa4]
  ee9db2:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ee9dba:	movss  xmm1,DWORD PTR [esp+0x20]
  ee9dc0:	mulss  xmm1,xmm0
  ee9dc4:	movss  DWORD PTR [esp+0x20],xmm1
  ee9dca:	movss  xmm0,DWORD PTR [esi+0x9c]
  ee9dd2:	xorps  xmm1,xmm1
  ee9dd5:	ucomiss xmm0,xmm1
  ee9dd8:	jbe    ee9e91
  ee9dde:	test   edi,edi
  ee9de0:	je     eea1bf
  ee9de6:	lea    eax,[ebx+0x45874]
  ee9dec:	mov    eax,DWORD PTR [eax]
  ee9dee:	mov    ecx,DWORD PTR [edi]
  ee9df0:	movzx  edx,WORD PTR [ecx+0xaa]
  ee9df7:	test   edx,edx
  ee9df9:	je     ee9e0a
  ee9dfb:	mov    esi,DWORD PTR [ecx+0x4c]
  ee9dfe:	xor    edi,edi
  ee9e00:	cmp    DWORD PTR [esi+edi*8],eax
  ee9e03:	je     ee9e25
  ee9e05:	inc    edi
  ee9e06:	cmp    edi,edx
  ee9e08:	jb     ee9e00
  ee9e0a:	mov    DWORD PTR [esp+0x4],eax
  ee9e0e:	mov    edi,DWORD PTR [ebp+0x18]
  ee9e11:	mov    DWORD PTR [esp],edi
  ee9e14:	mov    DWORD PTR [esp+0x8],0x31
  ee9e1c:	call   1c1964
  ee9e21:	mov    ecx,eax
  ee9e23:	jmp    ee9e33
  ee9e25:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ee9e29:	lea    ecx,[ecx+eax*8+0x23c]
  ee9e30:	mov    edi,DWORD PTR [ebp+0x18]
  ee9e33:	mov    eax,DWORD PTR [ecx+0x4]
  ee9e36:	mov    DWORD PTR [esp+0x4],eax
  ee9e3a:	mov    DWORD PTR [esp],edi
  ee9e3d:	call   DWORD PTR [ecx]
  ee9e3f:	test   eax,eax
  ee9e41:	mov    esi,DWORD PTR [ebp+0x8]
  ee9e44:	je     eea1bf
  ee9e4a:	lea    ecx,[ebx+0x56cc0]  ; literal "ColorfulAttack"
  ee9e50:	mov    ecx,DWORD PTR [ecx]
  ee9e52:	lea    edx,[ebx+0x4a1c0]
  ee9e58:	mov    edx,DWORD PTR [edx]
  ee9e5a:	mov    DWORD PTR [esp+0x8],edx
  ee9e5e:	mov    DWORD PTR [esp+0x4],ecx
  ee9e62:	mov    DWORD PTR [esp],eax
  ee9e65:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  ee9e6a:	test   al,al
  ee9e6c:	je     ee9e8e
  ee9e6e:	movss  xmm0,DWORD PTR [esi+0x9c]
  ee9e76:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ee9e7e:	movss  xmm1,DWORD PTR [esp+0x20]
  ee9e84:	mulss  xmm1,xmm0
  ee9e88:	movss  DWORD PTR [esp+0x20],xmm1
  ee9e8e:	xorps  xmm1,xmm1
  ee9e91:	movss  xmm0,DWORD PTR [esi+0xa8]
  ee9e99:	ucomiss xmm0,xmm1
  ee9e9c:	jbe    ee9f52
  ee9ea2:	test   edi,edi
  ee9ea4:	je     eea1bf
  ee9eaa:	lea    eax,[ebx+0x45874]
  ee9eb0:	mov    eax,DWORD PTR [eax]
  ee9eb2:	mov    ecx,DWORD PTR [edi]
  ee9eb4:	movzx  edx,WORD PTR [ecx+0xaa]
  ee9ebb:	test   edx,edx
  ee9ebd:	je     ee9ece
  ee9ebf:	mov    esi,DWORD PTR [ecx+0x4c]
  ee9ec2:	xor    edi,edi
  ee9ec4:	cmp    DWORD PTR [esi+edi*8],eax
  ee9ec7:	je     ee9ee9
  ee9ec9:	inc    edi
  ee9eca:	cmp    edi,edx
  ee9ecc:	jb     ee9ec4
  ee9ece:	mov    DWORD PTR [esp+0x4],eax
  ee9ed2:	mov    edi,DWORD PTR [ebp+0x18]
  ee9ed5:	mov    DWORD PTR [esp],edi
  ee9ed8:	mov    DWORD PTR [esp+0x8],0x31
  ee9ee0:	call   1c1964
  ee9ee5:	mov    ecx,eax
  ee9ee7:	jmp    ee9ef7
  ee9ee9:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ee9eed:	lea    ecx,[ecx+eax*8+0x23c]
  ee9ef4:	mov    edi,DWORD PTR [ebp+0x18]
  ee9ef7:	mov    eax,DWORD PTR [ecx+0x4]
  ee9efa:	mov    DWORD PTR [esp+0x4],eax
  ee9efe:	mov    DWORD PTR [esp],edi
  ee9f01:	call   DWORD PTR [ecx]
  ee9f03:	test   eax,eax
  ee9f05:	mov    esi,DWORD PTR [ebp+0x8]
  ee9f08:	je     eea1bf
  ee9f0e:	lea    ecx,[ebx+0x56cc4]  ; literal "InTheSpotlight"
  ee9f14:	mov    ecx,DWORD PTR [ecx]
  ee9f16:	lea    edx,[ebx+0x4a1c0]
  ee9f1c:	mov    edx,DWORD PTR [edx]
  ee9f1e:	mov    DWORD PTR [esp+0x8],edx
  ee9f22:	mov    DWORD PTR [esp+0x4],ecx
  ee9f26:	mov    DWORD PTR [esp],eax
  ee9f29:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  ee9f2e:	test   al,al
  ee9f30:	je     ee9f52
  ee9f32:	movss  xmm0,DWORD PTR [esi+0xa8]
  ee9f3a:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ee9f42:	movss  xmm1,DWORD PTR [esp+0x20]
  ee9f48:	mulss  xmm1,xmm0
  ee9f4c:	movss  DWORD PTR [esp+0x20],xmm1
  ee9f52:	movss  xmm0,DWORD PTR [esi+0xac]
  ee9f5a:	xorps  xmm1,xmm1
  ee9f5d:	ucomiss xmm0,xmm1
  ee9f60:	jbe    eea019
  ee9f66:	test   edi,edi
  ee9f68:	je     eea1bf
  ee9f6e:	lea    eax,[ebx+0x45874]
  ee9f74:	mov    eax,DWORD PTR [eax]
  ee9f76:	mov    ecx,DWORD PTR [edi]
  ee9f78:	movzx  edx,WORD PTR [ecx+0xaa]
  ee9f7f:	test   edx,edx
  ee9f81:	je     ee9f92
  ee9f83:	mov    esi,DWORD PTR [ecx+0x4c]
  ee9f86:	xor    edi,edi
  ee9f88:	cmp    DWORD PTR [esi+edi*8],eax
  ee9f8b:	je     ee9fad
  ee9f8d:	inc    edi
  ee9f8e:	cmp    edi,edx
  ee9f90:	jb     ee9f88
  ee9f92:	mov    DWORD PTR [esp+0x4],eax
  ee9f96:	mov    edi,DWORD PTR [ebp+0x18]
  ee9f99:	mov    DWORD PTR [esp],edi
  ee9f9c:	mov    DWORD PTR [esp+0x8],0x31
  ee9fa4:	call   1c1964
  ee9fa9:	mov    ecx,eax
  ee9fab:	jmp    ee9fbb
  ee9fad:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ee9fb1:	lea    ecx,[ecx+eax*8+0x23c]
  ee9fb8:	mov    edi,DWORD PTR [ebp+0x18]
  ee9fbb:	mov    eax,DWORD PTR [ecx+0x4]
  ee9fbe:	mov    DWORD PTR [esp+0x4],eax
  ee9fc2:	mov    DWORD PTR [esp],edi
  ee9fc5:	call   DWORD PTR [ecx]
  ee9fc7:	test   eax,eax
  ee9fc9:	mov    esi,DWORD PTR [ebp+0x8]
  ee9fcc:	je     eea1bf
  ee9fd2:	lea    ecx,[ebx+0x56cc8]  ; literal "BreathOfTheSea"
  ee9fd8:	mov    ecx,DWORD PTR [ecx]
  ee9fda:	lea    edx,[ebx+0x4a1c0]
  ee9fe0:	mov    edx,DWORD PTR [edx]
  ee9fe2:	mov    DWORD PTR [esp+0x8],edx
  ee9fe6:	mov    DWORD PTR [esp+0x4],ecx
  ee9fea:	mov    DWORD PTR [esp],eax
  ee9fed:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  ee9ff2:	test   al,al
  ee9ff4:	je     eea016
  ee9ff6:	movss  xmm0,DWORD PTR [esi+0xac]
  ee9ffe:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eea006:	movss  xmm1,DWORD PTR [esp+0x20]
  eea00c:	mulss  xmm1,xmm0
  eea010:	movss  DWORD PTR [esp+0x20],xmm1
  eea016:	xorps  xmm1,xmm1
  eea019:	movss  xmm0,DWORD PTR [esi+0x94]
  eea021:	ucomiss xmm0,xmm1
  eea024:	jbe    eea1a7
  eea02a:	test   edi,edi
  eea02c:	je     eea1bf
  eea032:	lea    eax,[ebx+0x45874]
  eea038:	mov    eax,DWORD PTR [eax]
  eea03a:	mov    ecx,DWORD PTR [edi]
  eea03c:	movzx  edx,WORD PTR [ecx+0xaa]
  eea043:	test   edx,edx
  eea045:	je     eea056
  eea047:	mov    esi,DWORD PTR [ecx+0x4c]
  eea04a:	xor    edi,edi
  eea04c:	cmp    DWORD PTR [esi+edi*8],eax
  eea04f:	je     eea071
  eea051:	inc    edi
  eea052:	cmp    edi,edx
  eea054:	jb     eea04c
  eea056:	mov    DWORD PTR [esp+0x4],eax
  eea05a:	mov    esi,DWORD PTR [ebp+0x18]
  eea05d:	mov    DWORD PTR [esp],esi
  eea060:	mov    DWORD PTR [esp+0x8],0x31
  eea068:	call   1c1964
  eea06d:	mov    ecx,eax
  eea06f:	jmp    eea07f
  eea071:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eea075:	lea    ecx,[ecx+eax*8+0x23c]
  eea07c:	mov    esi,DWORD PTR [ebp+0x18]
  eea07f:	mov    eax,DWORD PTR [ecx+0x4]
  eea082:	mov    DWORD PTR [esp+0x4],eax
  eea086:	mov    DWORD PTR [esp],esi
  eea089:	call   DWORD PTR [ecx]
  eea08b:	test   eax,eax
  eea08d:	mov    edi,DWORD PTR [ebp+0x8]
  eea090:	je     eea1bf
  eea096:	lea    ecx,[ebx+0x56ccc]  ; literal "GooBomb"
  eea09c:	mov    ecx,DWORD PTR [ecx]
  eea09e:	lea    edx,[ebx+0x4a1c0]
  eea0a4:	mov    edx,DWORD PTR [edx]
  eea0a6:	mov    DWORD PTR [esp+0x8],edx
  eea0aa:	mov    DWORD PTR [esp+0x4],ecx
  eea0ae:	mov    DWORD PTR [esp],eax
  eea0b1:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  eea0b6:	test   al,al
  eea0b8:	je     eea1a7
  eea0be:	movss  xmm0,DWORD PTR [edi+0x94]
  eea0c6:	movss  DWORD PTR [esp+0x1c],xmm0
  eea0cc:	mov    DWORD PTR [esp+0x28],0x0
  eea0d4:	lea    eax,[ebx+0x56cd0]  ; literal "GooBomb_Additional"
  eea0da:	mov    esi,DWORD PTR [eax]
  eea0dc:	mov    DWORD PTR [esp+0x4],0x0
  eea0e4:	mov    DWORD PTR [esp],0x0
  eea0eb:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  eea0f0:	test   eax,eax
  eea0f2:	je     eea1bf
  eea0f8:	movss  xmm1,DWORD PTR [esp+0x1c]
  eea0fe:	divss  xmm1,DWORD PTR [ebx-0x64fc2c]
  eea106:	movss  xmm0,DWORD PTR [esp+0x20]
  eea10c:	mulss  xmm0,xmm1
  eea110:	movss  DWORD PTR [esp+0x20],xmm0
  eea116:	lea    ecx,[esp+0x28]
  eea11a:	mov    DWORD PTR [esp+0x8],ecx
  eea11e:	mov    DWORD PTR [esp+0x4],esi
  eea122:	mov    DWORD PTR [esp],eax
  eea125:	mov    DWORD PTR [esp+0xc],0x0
  eea12d:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  eea132:	test   al,al
  eea134:	je     eea1a7
  eea136:	mov    eax,DWORD PTR [esp+0x28]
  eea13a:	mov    DWORD PTR [esp+0x1c],eax
  eea13e:	lea    eax,[ebx+0x45890]
  eea144:	mov    eax,DWORD PTR [eax]
  eea146:	mov    DWORD PTR [esp],eax
  eea149:	call   20bfb2
  eea14e:	mov    esi,eax
  eea150:	lea    eax,[ebx+0x4a074]
  eea156:	mov    eax,DWORD PTR [eax]
  eea158:	mov    DWORD PTR [esp+0x4],eax
  eea15c:	mov    DWORD PTR [esp],esi
  eea15f:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eea164:	test   esi,esi
  eea166:	je     eea1bf
  eea168:	lea    eax,[ebx+0x4a078]
  eea16e:	mov    eax,DWORD PTR [eax]
  eea170:	mov    DWORD PTR [esp+0x8],eax
  eea174:	mov    eax,DWORD PTR [ebp+0x18]
  eea177:	mov    DWORD PTR [esp+0x4],eax
  eea17b:	mov    DWORD PTR [esp],esi
  eea17e:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eea183:	mov    DWORD PTR [esp+0xc],esi
  eea187:	mov    eax,DWORD PTR [esp+0x1c]
  eea18b:	mov    DWORD PTR [esp+0x8],eax
  eea18f:	mov    DWORD PTR [esp],edi
  eea192:	mov    DWORD PTR [esp+0x10],0x0
  eea19a:	mov    DWORD PTR [esp+0x4],0x3
  eea1a2:	call   ec9974  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eea1a7:	movss  xmm0,DWORD PTR [esp+0x20]
  eea1ad:	movss  DWORD PTR [esp+0x24],xmm0
  eea1b3:	fld    DWORD PTR [esp+0x24]
  eea1b7:	lea    esp,[ebp-0xc]
  eea1ba:	pop    esi
  eea1bb:	pop    edi
  eea1bc:	pop    ebx
  eea1bd:	pop    ebp
  eea1be:	ret
  eea1bf:	call   1fbc48
  eea1c4:	call   ebbb41