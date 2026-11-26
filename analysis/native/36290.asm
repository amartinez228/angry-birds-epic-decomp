
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014929bf:
 14929bf:	push   ebp
 14929c0:	mov    ebp,esp
 14929c2:	push   ebx
 14929c3:	push   edi
 14929c4:	push   esi
 14929c5:	and    esp,0xfffffff0
 14929c8:	sub    esp,0x30
 14929cb:	call   14929d0
 14929d0:	pop    ebx
 14929d1:	add    ebx,0xa7f574
 14929d7:	mov    esi,DWORD PTR [ebp+0xc]
 14929da:	mov    al,BYTE PTR [ebx+0x6592c]
 14929e0:	test   al,al
 14929e2:	jne    14929fb
 14929e4:	lea    eax,[ebx-0x670380]
 14929ea:	mov    eax,DWORD PTR [eax]
 14929ec:	mov    DWORD PTR [esp],eax
 14929ef:	call   1ca6e8
 14929f4:	mov    BYTE PTR [ebx+0x6592c],0x1
 14929fb:	test   esi,esi
 14929fd:	je     1492e5d
 1492a03:	mov    edi,DWORD PTR [esi+0x20]
 1492a06:	mov    edx,DWORD PTR [esi+0x24]
 1492a09:	test   edx,edx
 1492a0b:	je     1492ac5
 1492a11:	mov    DWORD PTR [esp+0x24],edi
 1492a15:	lea    eax,[ebx+0x45874]
 1492a1b:	mov    DWORD PTR [esp+0x1c],eax
 1492a1f:	mov    eax,DWORD PTR [eax]
 1492a21:	mov    ecx,DWORD PTR [edx]
 1492a23:	mov    DWORD PTR [esp+0x20],edx
 1492a27:	movzx  edx,WORD PTR [ecx+0xaa]
 1492a2e:	test   edx,edx
 1492a30:	je     1492a41
 1492a32:	mov    esi,DWORD PTR [ecx+0x4c]
 1492a35:	xor    edi,edi
 1492a37:	cmp    DWORD PTR [esi+edi*8],eax
 1492a3a:	je     1492a5d
 1492a3c:	inc    edi
 1492a3d:	cmp    edi,edx
 1492a3f:	jb     1492a37
 1492a41:	mov    DWORD PTR [esp+0x4],eax
 1492a45:	mov    esi,DWORD PTR [esp+0x20]
 1492a49:	mov    DWORD PTR [esp],esi
 1492a4c:	mov    DWORD PTR [esp+0x8],0x11
 1492a54:	call   1c1964
 1492a59:	mov    ecx,eax
 1492a5b:	jmp    1492a6c
 1492a5d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 1492a61:	lea    ecx,[ecx+eax*8+0x13c]
 1492a68:	mov    esi,DWORD PTR [esp+0x20]
 1492a6c:	mov    DWORD PTR [esp+0x20],esi
 1492a70:	mov    eax,DWORD PTR [ecx+0x4]
 1492a73:	mov    DWORD PTR [esp+0x4],eax
 1492a77:	mov    DWORD PTR [esp],esi
 1492a7a:	call   DWORD PTR [ecx]
 1492a7c:	mov    esi,eax
 1492a7e:	lea    eax,[ebx+0x44ebc]
 1492a84:	mov    eax,DWORD PTR [eax]
 1492a86:	test   BYTE PTR [eax+0xb2],0x1
 1492a8d:	mov    edi,DWORD PTR [esp+0x24]
 1492a91:	je     1492aa1
 1492a93:	cmp    DWORD PTR [eax+0x60],0x0
 1492a97:	jne    1492aa1
 1492a99:	mov    DWORD PTR [esp],eax
 1492a9c:	call   1db0b8
 1492aa1:	mov    DWORD PTR [esp+0x4],esi
 1492aa5:	mov    DWORD PTR [esp+0xc],0x0
 1492aad:	mov    DWORD PTR [esp+0x8],0x0
 1492ab5:	mov    DWORD PTR [esp],0x0
 1492abc:	call   16781a0  ; UnityEngine.Object::op_Equality
 1492ac1:	test   al,al
 1492ac3:	je     1492b0d
 1492ac5:	test   edi,edi
 1492ac7:	je     1492e5d
 1492acd:	lea    eax,[ebx+0x45874]
 1492ad3:	mov    eax,DWORD PTR [eax]
 1492ad5:	mov    ecx,DWORD PTR [edi]
 1492ad7:	mov    DWORD PTR [esp+0x24],edi
 1492adb:	movzx  edx,WORD PTR [ecx+0xaa]
 1492ae2:	test   edx,edx
 1492ae4:	je     1492af5
 1492ae6:	mov    esi,DWORD PTR [ecx+0x4c]
 1492ae9:	xor    edi,edi
 1492aeb:	cmp    DWORD PTR [esi+edi*8],eax
 1492aee:	je     1492b53
 1492af0:	inc    edi
 1492af1:	cmp    edi,edx
 1492af3:	jb     1492aeb
 1492af5:	mov    DWORD PTR [esp+0x4],eax
 1492af9:	mov    esi,DWORD PTR [esp+0x24]
 1492afd:	mov    DWORD PTR [esp],esi
 1492b00:	mov    DWORD PTR [esp+0x8],0x11
 1492b08:	jmp    1492d56
 1492b0d:	test   edi,edi
 1492b0f:	je     1492e5d
 1492b15:	mov    eax,DWORD PTR [esp+0x1c]
 1492b19:	mov    eax,DWORD PTR [eax]
 1492b1b:	mov    ecx,DWORD PTR [edi]
 1492b1d:	movzx  edx,WORD PTR [ecx+0xaa]
 1492b24:	test   edx,edx
 1492b26:	je     1492b37
 1492b28:	mov    esi,DWORD PTR [ecx+0x4c]
 1492b2b:	xor    edi,edi
 1492b2d:	cmp    DWORD PTR [esi+edi*8],eax
 1492b30:	je     1492b67
 1492b32:	inc    edi
 1492b33:	cmp    edi,edx
 1492b35:	jb     1492b2d
 1492b37:	mov    DWORD PTR [esp+0x4],eax
 1492b3b:	mov    esi,DWORD PTR [esp+0x24]
 1492b3f:	mov    DWORD PTR [esp],esi
 1492b42:	mov    DWORD PTR [esp+0x8],0x11
 1492b4a:	call   1c1964
 1492b4f:	mov    ecx,eax
 1492b51:	jmp    1492b76
 1492b53:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 1492b57:	lea    ecx,[ecx+eax*8+0x13c]
 1492b5e:	mov    esi,DWORD PTR [esp+0x24]
 1492b62:	jmp    1492d5d
 1492b67:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 1492b6b:	lea    ecx,[ecx+eax*8+0x13c]
 1492b72:	mov    esi,DWORD PTR [esp+0x24]
 1492b76:	mov    DWORD PTR [esp+0x24],esi
 1492b7a:	mov    eax,DWORD PTR [ecx+0x4]
 1492b7d:	mov    DWORD PTR [esp+0x4],eax
 1492b81:	mov    DWORD PTR [esp],esi
 1492b84:	call   DWORD PTR [ecx]
 1492b86:	test   eax,eax
 1492b88:	je     1492e5d
 1492b8e:	mov    DWORD PTR [esp],eax
 1492b91:	mov    DWORD PTR [esp+0x4],0x0
 1492b99:	mov    DWORD PTR [esp+0x18],ebx
 1492b9d:	call   8d8278  ; CharacterControllerBattleGroundBase::PlayIdle
 1492ba2:	mov    eax,DWORD PTR [esp+0x1c]
 1492ba6:	mov    eax,DWORD PTR [eax]
 1492ba8:	mov    ecx,DWORD PTR [esp+0x20]
 1492bac:	mov    ecx,DWORD PTR [ecx]
 1492bae:	movzx  edx,WORD PTR [ecx+0xaa]
 1492bb5:	test   edx,edx
 1492bb7:	je     1492bc8
 1492bb9:	mov    esi,DWORD PTR [ecx+0x4c]
 1492bbc:	xor    edi,edi
 1492bbe:	cmp    DWORD PTR [esi+edi*8],eax
 1492bc1:	je     1492be8
 1492bc3:	inc    edi
 1492bc4:	cmp    edi,edx
 1492bc6:	jb     1492bbe
 1492bc8:	mov    DWORD PTR [esp+0x4],eax
 1492bcc:	mov    esi,DWORD PTR [esp+0x20]
 1492bd0:	mov    DWORD PTR [esp],esi
 1492bd3:	mov    DWORD PTR [esp+0x8],0x11
 1492bdb:	mov    ebx,DWORD PTR [esp+0x18]
 1492bdf:	call   1c1964
 1492be4:	mov    ecx,eax
 1492be6:	jmp    1492bfb
 1492be8:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 1492bec:	lea    ecx,[ecx+eax*8+0x13c]
 1492bf3:	mov    ebx,DWORD PTR [esp+0x18]
 1492bf7:	mov    esi,DWORD PTR [esp+0x20]
 1492bfb:	mov    eax,DWORD PTR [ecx+0x4]
 1492bfe:	mov    DWORD PTR [esp+0x4],eax
 1492c02:	mov    DWORD PTR [esp],esi
 1492c05:	call   DWORD PTR [ecx]
 1492c07:	test   eax,eax
 1492c09:	je     1492e5d
 1492c0f:	mov    ecx,DWORD PTR [eax+0x68]
 1492c12:	test   ecx,ecx
 1492c14:	je     1492e5d
 1492c1a:	lea    eax,[ebx+0x459cc]
 1492c20:	mov    edx,DWORD PTR [eax]
 1492c22:	mov    eax,DWORD PTR [ecx]
 1492c24:	movzx  esi,BYTE PTR [edx+0xac]
 1492c2b:	movzx  edi,BYTE PTR [eax+0xac]
 1492c32:	cmp    edi,esi
 1492c34:	jb     1492e5d
 1492c3a:	mov    eax,DWORD PTR [eax+0x58]
 1492c3d:	cmp    DWORD PTR [eax+esi*4-0x4],edx
 1492c41:	jne    1492e5d
 1492c47:	mov    eax,DWORD PTR [ecx]
 1492c49:	movzx  esi,BYTE PTR [edx+0xac]
 1492c50:	mov    edi,DWORD PTR [eax+0x58]
 1492c53:	xor    eax,eax
 1492c55:	cmp    DWORD PTR [edi+esi*4-0x4],edx
 1492c59:	cmovne ecx,eax
 1492c5c:	mov    BYTE PTR [ecx+0x91],0x0
 1492c63:	mov    ecx,DWORD PTR [esp+0x1c]
 1492c67:	mov    ecx,DWORD PTR [ecx]
 1492c69:	mov    edx,DWORD PTR [esp+0x20]
 1492c6d:	mov    edx,DWORD PTR [edx]
 1492c6f:	movzx  esi,WORD PTR [edx+0xaa]
 1492c76:	test   esi,esi
 1492c78:	je     1492c87
 1492c7a:	mov    edi,DWORD PTR [edx+0x4c]
 1492c7d:	cmp    DWORD PTR [edi+eax*8],ecx
 1492c80:	je     1492ca1
 1492c82:	inc    eax
 1492c83:	cmp    eax,esi
 1492c85:	jb     1492c7d
 1492c87:	mov    DWORD PTR [esp+0x4],ecx
 1492c8b:	mov    esi,DWORD PTR [esp+0x20]
 1492c8f:	mov    DWORD PTR [esp],esi
 1492c92:	mov    DWORD PTR [esp+0x8],0x1f
 1492c9a:	call   1c1964
 1492c9f:	jmp    1492cb0
 1492ca1:	mov    eax,DWORD PTR [edi+eax*8+0x4]
 1492ca5:	lea    eax,[edx+eax*8+0x1ac]
 1492cac:	mov    esi,DWORD PTR [esp+0x20]
 1492cb0:	mov    DWORD PTR [esp+0x18],ebx
 1492cb4:	mov    ecx,DWORD PTR [eax+0x4]
 1492cb7:	mov    DWORD PTR [esp+0x4],ecx
 1492cbb:	mov    DWORD PTR [esp],esi
 1492cbe:	call   DWORD PTR [eax]
 1492cc0:	fstp   DWORD PTR [esp+0x28]
 1492cc4:	movss  xmm0,DWORD PTR [esp+0x28]
 1492cca:	mov    eax,DWORD PTR [esp+0x1c]
 1492cce:	mov    eax,DWORD PTR [eax]
 1492cd0:	xorps  xmm1,xmm1
 1492cd3:	ucomiss xmm0,xmm1
 1492cd6:	mov    edx,DWORD PTR [esp+0x24]
 1492cda:	jbe    1492d1f
 1492cdc:	mov    ecx,DWORD PTR [esi]
 1492cde:	movzx  edx,WORD PTR [ecx+0xaa]
 1492ce5:	test   edx,edx
 1492ce7:	je     1492cfc
 1492ce9:	mov    esi,DWORD PTR [ecx+0x4c]
 1492cec:	xor    edi,edi
 1492cee:	cmp    DWORD PTR [esi+edi*8],eax
 1492cf1:	je     1492d8e
 1492cf7:	inc    edi
 1492cf8:	cmp    edi,edx
 1492cfa:	jb     1492cee
 1492cfc:	mov    DWORD PTR [esp+0x4],eax
 1492d00:	mov    esi,DWORD PTR [esp+0x20]
 1492d04:	mov    DWORD PTR [esp],esi
 1492d07:	mov    DWORD PTR [esp+0x8],0x7b
 1492d0f:	mov    ebx,DWORD PTR [esp+0x18]
 1492d13:	call   1c1964
 1492d18:	mov    ecx,eax
 1492d1a:	jmp    1492da1
 1492d1f:	mov    ecx,DWORD PTR [edx]
 1492d21:	mov    ebx,edx
 1492d23:	movzx  edx,WORD PTR [ecx+0xaa]
 1492d2a:	test   edx,edx
 1492d2c:	je     1492d41
 1492d2e:	mov    esi,DWORD PTR [ecx+0x4c]
 1492d31:	xor    edi,edi
 1492d33:	cmp    DWORD PTR [esi+edi*8],eax
 1492d36:	je     1492df3
 1492d3c:	inc    edi
 1492d3d:	cmp    edi,edx
 1492d3f:	jb     1492d33
 1492d41:	mov    DWORD PTR [esp+0x4],eax
 1492d45:	mov    esi,ebx
 1492d47:	mov    DWORD PTR [esp],esi
 1492d4a:	mov    DWORD PTR [esp+0x8],0x11
 1492d52:	mov    ebx,DWORD PTR [esp+0x18]
 1492d56:	call   1c1964
 1492d5b:	mov    ecx,eax
 1492d5d:	mov    eax,DWORD PTR [ecx+0x4]
 1492d60:	mov    DWORD PTR [esp+0x4],eax
 1492d64:	mov    DWORD PTR [esp],esi
 1492d67:	call   DWORD PTR [ecx]
 1492d69:	test   eax,eax
 1492d6b:	je     1492e5d
 1492d71:	mov    ecx,DWORD PTR [eax]
 1492d73:	mov    edx,DWORD PTR [ecx+0x150]
 1492d79:	mov    DWORD PTR [esp+0x4],edx
 1492d7d:	mov    DWORD PTR [esp],eax
 1492d80:	call   DWORD PTR [ecx+0x14c]
 1492d86:	lea    esp,[ebp-0xc]
 1492d89:	pop    esi
 1492d8a:	pop    edi
 1492d8b:	pop    ebx
 1492d8c:	pop    ebp
 1492d8d:	ret
 1492d8e:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 1492d92:	lea    ecx,[ecx+eax*8+0x48c]
 1492d99:	mov    ebx,DWORD PTR [esp+0x18]
 1492d9d:	mov    esi,DWORD PTR [esp+0x20]
 1492da1:	mov    eax,DWORD PTR [ecx+0x4]
 1492da4:	mov    DWORD PTR [esp+0x4],eax
 1492da8:	mov    DWORD PTR [esp],esi
 1492dab:	call   DWORD PTR [ecx]
 1492dad:	mov    BYTE PTR [esp+0x24],al
 1492db1:	mov    eax,DWORD PTR [esp+0x1c]
 1492db5:	mov    eax,DWORD PTR [eax]
 1492db7:	mov    ecx,DWORD PTR [esi]
 1492db9:	movzx  edx,WORD PTR [ecx+0xaa]
 1492dc0:	test   edx,edx
 1492dc2:	je     1492dd3
 1492dc4:	mov    esi,DWORD PTR [ecx+0x4c]
 1492dc7:	xor    edi,edi
 1492dc9:	cmp    DWORD PTR [esi+edi*8],eax
 1492dcc:	je     1492e09
 1492dce:	inc    edi
 1492dcf:	cmp    edi,edx
 1492dd1:	jb     1492dc9
 1492dd3:	mov    DWORD PTR [esp+0x4],eax
 1492dd7:	mov    esi,DWORD PTR [esp+0x20]
 1492ddb:	mov    DWORD PTR [esp],esi
 1492dde:	mov    DWORD PTR [esp+0x8],0x11
 1492de6:	mov    ebx,DWORD PTR [esp+0x18]
 1492dea:	call   1c1964
 1492def:	mov    ecx,eax
 1492df1:	jmp    1492e1c
 1492df3:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 1492df7:	lea    ecx,[ecx+eax*8+0x13c]
 1492dfe:	mov    esi,ebx
 1492e00:	mov    ebx,DWORD PTR [esp+0x18]
 1492e04:	jmp    1492d5d
 1492e09:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 1492e0d:	lea    ecx,[ecx+eax*8+0x13c]
 1492e14:	mov    ebx,DWORD PTR [esp+0x18]
 1492e18:	mov    esi,DWORD PTR [esp+0x20]
 1492e1c:	mov    eax,DWORD PTR [ecx+0x4]
 1492e1f:	mov    DWORD PTR [esp+0x4],eax
 1492e23:	mov    DWORD PTR [esp],esi
 1492e26:	call   DWORD PTR [ecx]
 1492e28:	test   eax,eax
 1492e2a:	je     1492e5d
 1492e2c:	cmp    BYTE PTR [esp+0x24],0x0
 1492e31:	je     1492e48
 1492e33:	mov    DWORD PTR [esp],eax
 1492e36:	mov    DWORD PTR [esp+0x4],0x0
 1492e3e:	call   8d8313  ; CharacterControllerBattleGroundBase::PlayStunnedAnimation
 1492e43:	jmp    1492d86
 1492e48:	mov    DWORD PTR [esp],eax
 1492e4b:	mov    DWORD PTR [esp+0x4],0x0
 1492e53:	call   8d8278  ; CharacterControllerBattleGroundBase::PlayIdle
 1492e58:	jmp    1492d86
 1492e5d:	call   1fbc48
 1492e62:	call   14943fc