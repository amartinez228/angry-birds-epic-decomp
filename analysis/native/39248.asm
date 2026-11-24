
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008d3ac6:
  8d3ac6:	push   ebp
  8d3ac7:	mov    ebp,esp
  8d3ac9:	push   ebx
  8d3aca:	push   edi
  8d3acb:	push   esi
  8d3acc:	and    esp,0xfffffff0
  8d3acf:	sub    esp,0xc0
  8d3ad5:	call   8d3ada
  8d3ada:	pop    ebx
  8d3adb:	add    ebx,0x163e46a
  8d3ae1:	mov    esi,DWORD PTR [ebp+0x8]
  8d3ae4:	mov    al,BYTE PTR [ebx+0x602ac]
  8d3aea:	test   al,al
  8d3aec:	jne    8d3b05
  8d3aee:	lea    eax,[ebx-0x66d570]
  8d3af4:	mov    eax,DWORD PTR [eax]
  8d3af6:	mov    DWORD PTR [esp],eax
  8d3af9:	call   1ca6e8
  8d3afe:	mov    BYTE PTR [ebx+0x602ac],0x1
  8d3b05:	mov    edi,DWORD PTR [esi+0x18]
  8d3b08:	lea    eax,[ebx+0x44ebc]
  8d3b0e:	mov    DWORD PTR [esp+0x30],eax
  8d3b12:	mov    eax,DWORD PTR [eax]
  8d3b14:	test   BYTE PTR [eax+0xb2],0x1
  8d3b1b:	je     8d3b2b
  8d3b1d:	cmp    DWORD PTR [eax+0x60],0x0
  8d3b21:	jne    8d3b2b
  8d3b23:	mov    DWORD PTR [esp],eax
  8d3b26:	call   1db0b8
  8d3b2b:	mov    DWORD PTR [esp+0x4],edi
  8d3b2f:	mov    DWORD PTR [esp+0xc],0x0
  8d3b37:	mov    DWORD PTR [esp+0x8],0x0
  8d3b3f:	mov    DWORD PTR [esp],0x0
  8d3b46:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  8d3b4b:	test   al,al
  8d3b4d:	je     8d3be2
  8d3b53:	mov    eax,DWORD PTR [esi+0x18]
  8d3b56:	test   eax,eax
  8d3b58:	je     8d40db
  8d3b5e:	mov    DWORD PTR [esp+0x4],eax
  8d3b62:	lea    eax,[esp+0xb0]
  8d3b69:	mov    DWORD PTR [esp],eax
  8d3b6c:	mov    DWORD PTR [esp+0x8],0x0
  8d3b74:	call   17760ae  ; UnityEngine.Transform::get_position
  8d3b79:	sub    esp,0x4
  8d3b7c:	mov    eax,DWORD PTR [esi+0x24]
  8d3b7f:	mov    DWORD PTR [esp+0x1c],eax
  8d3b83:	movsd  xmm0,QWORD PTR [esi+0x1c]
  8d3b88:	movsd  QWORD PTR [esp+0x14],xmm0
  8d3b8e:	mov    eax,DWORD PTR [esp+0xb8]
  8d3b95:	mov    DWORD PTR [esp+0x10],eax
  8d3b99:	movsd  xmm0,QWORD PTR [esp+0xb0]
  8d3ba2:	movsd  QWORD PTR [esp+0x8],xmm0
  8d3ba8:	lea    eax,[esp+0xa0]
  8d3baf:	mov    DWORD PTR [esp],eax
  8d3bb2:	mov    DWORD PTR [esp+0x20],0x0
  8d3bba:	mov    DWORD PTR [esp+0x4],0x0
  8d3bc2:	call   1776e79  ; UnityEngine.Vector3::op_Addition
  8d3bc7:	sub    esp,0x4
  8d3bca:	mov    eax,DWORD PTR [esp+0xa8]
  8d3bd1:	mov    DWORD PTR [esi+0x5c],eax
  8d3bd4:	movsd  xmm0,QWORD PTR [esp+0xa0]
  8d3bdd:	jmp    8d3c79
  8d3be2:	mov    DWORD PTR [esp],esi
  8d3be5:	mov    DWORD PTR [esp+0x4],0x0
  8d3bed:	call   150157d  ; UnityEngine.Component::get_transform
  8d3bf2:	test   eax,eax
  8d3bf4:	je     8d40db
  8d3bfa:	mov    DWORD PTR [esp+0x4],eax
  8d3bfe:	lea    eax,[esp+0x90]
  8d3c05:	mov    DWORD PTR [esp],eax
  8d3c08:	mov    DWORD PTR [esp+0x8],0x0
  8d3c10:	call   17760ae  ; UnityEngine.Transform::get_position
  8d3c15:	sub    esp,0x4
  8d3c18:	mov    eax,DWORD PTR [esi+0x24]
  8d3c1b:	mov    DWORD PTR [esp+0x1c],eax
  8d3c1f:	movsd  xmm0,QWORD PTR [esi+0x1c]
  8d3c24:	movsd  QWORD PTR [esp+0x14],xmm0
  8d3c2a:	mov    eax,DWORD PTR [esp+0x98]
  8d3c31:	mov    DWORD PTR [esp+0x10],eax
  8d3c35:	movsd  xmm0,QWORD PTR [esp+0x90]
  8d3c3e:	movsd  QWORD PTR [esp+0x8],xmm0
  8d3c44:	lea    eax,[esp+0x80]
  8d3c4b:	mov    DWORD PTR [esp],eax
  8d3c4e:	mov    DWORD PTR [esp+0x20],0x0
  8d3c56:	mov    DWORD PTR [esp+0x4],0x0
  8d3c5e:	call   1776e79  ; UnityEngine.Vector3::op_Addition
  8d3c63:	sub    esp,0x4
  8d3c66:	mov    eax,DWORD PTR [esp+0x88]
  8d3c6d:	mov    DWORD PTR [esi+0x5c],eax
  8d3c70:	movsd  xmm0,QWORD PTR [esp+0x80]
  8d3c79:	movsd  QWORD PTR [esi+0x54],xmm0
  8d3c7e:	mov    edi,DWORD PTR [esi+0x28]
  8d3c81:	mov    eax,DWORD PTR [esp+0x30]
  8d3c85:	mov    eax,DWORD PTR [eax]
  8d3c87:	test   BYTE PTR [eax+0xb2],0x1
  8d3c8e:	je     8d3c9e
  8d3c90:	cmp    DWORD PTR [eax+0x60],0x0
  8d3c94:	jne    8d3c9e
  8d3c96:	mov    DWORD PTR [esp],eax
  8d3c99:	call   1db0b8
  8d3c9e:	mov    DWORD PTR [esp+0x4],edi
  8d3ca2:	mov    DWORD PTR [esp+0xc],0x0
  8d3caa:	mov    DWORD PTR [esp+0x8],0x0
  8d3cb2:	mov    DWORD PTR [esp],0x0
  8d3cb9:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  8d3cbe:	test   al,al
  8d3cc0:	je     8d3d3f
  8d3cc2:	mov    eax,DWORD PTR [esi+0x28]
  8d3cc5:	test   eax,eax
  8d3cc7:	je     8d40db
  8d3ccd:	mov    DWORD PTR [esp+0x4],eax
  8d3cd1:	lea    eax,[esp+0x70]
  8d3cd5:	mov    DWORD PTR [esp],eax
  8d3cd8:	mov    DWORD PTR [esp+0x8],0x0
  8d3ce0:	call   17760ae  ; UnityEngine.Transform::get_position
  8d3ce5:	sub    esp,0x4
  8d3ce8:	mov    eax,DWORD PTR [esi+0x34]
  8d3ceb:	mov    DWORD PTR [esp+0x1c],eax
  8d3cef:	movsd  xmm0,QWORD PTR [esi+0x2c]
  8d3cf4:	movsd  QWORD PTR [esp+0x14],xmm0
  8d3cfa:	mov    eax,DWORD PTR [esp+0x78]
  8d3cfe:	mov    DWORD PTR [esp+0x10],eax
  8d3d02:	movsd  xmm0,QWORD PTR [esp+0x70]
  8d3d08:	movsd  QWORD PTR [esp+0x8],xmm0
  8d3d0e:	lea    eax,[esp+0x60]
  8d3d12:	mov    DWORD PTR [esp],eax
  8d3d15:	mov    DWORD PTR [esp+0x20],0x0
  8d3d1d:	mov    DWORD PTR [esp+0x4],0x0
  8d3d25:	call   1776e79  ; UnityEngine.Vector3::op_Addition
  8d3d2a:	sub    esp,0x4
  8d3d2d:	mov    eax,DWORD PTR [esp+0x68]
  8d3d31:	mov    DWORD PTR [esi+0x68],eax
  8d3d34:	movsd  xmm0,QWORD PTR [esp+0x60]
  8d3d3a:	jmp    8d3dc4
  8d3d3f:	mov    DWORD PTR [esp],esi
  8d3d42:	mov    DWORD PTR [esp+0x4],0x0
  8d3d4a:	call   150157d  ; UnityEngine.Component::get_transform
  8d3d4f:	test   eax,eax
  8d3d51:	je     8d40db
  8d3d57:	mov    DWORD PTR [esp+0x4],eax
  8d3d5b:	lea    eax,[esp+0x50]
  8d3d5f:	mov    DWORD PTR [esp],eax
  8d3d62:	mov    DWORD PTR [esp+0x8],0x0
  8d3d6a:	call   17760ae  ; UnityEngine.Transform::get_position
  8d3d6f:	sub    esp,0x4
  8d3d72:	mov    eax,DWORD PTR [esi+0x34]
  8d3d75:	mov    DWORD PTR [esp+0x1c],eax
  8d3d79:	movsd  xmm0,QWORD PTR [esi+0x2c]
  8d3d7e:	movsd  QWORD PTR [esp+0x14],xmm0
  8d3d84:	mov    eax,DWORD PTR [esp+0x58]
  8d3d88:	mov    DWORD PTR [esp+0x10],eax
  8d3d8c:	movsd  xmm0,QWORD PTR [esp+0x50]
  8d3d92:	movsd  QWORD PTR [esp+0x8],xmm0
  8d3d98:	lea    eax,[esp+0x40]
  8d3d9c:	mov    DWORD PTR [esp],eax
  8d3d9f:	mov    DWORD PTR [esp+0x20],0x0
  8d3da7:	mov    DWORD PTR [esp+0x4],0x0
  8d3daf:	call   1776e79  ; UnityEngine.Vector3::op_Addition
  8d3db4:	sub    esp,0x4
  8d3db7:	mov    eax,DWORD PTR [esp+0x48]
  8d3dbb:	mov    DWORD PTR [esi+0x68],eax
  8d3dbe:	movsd  xmm0,QWORD PTR [esp+0x40]
  8d3dc4:	movsd  QWORD PTR [esi+0x60],xmm0
  8d3dc9:	mov    eax,DWORD PTR [esi+0x38]
  8d3dcc:	test   eax,eax
  8d3dce:	jne    8d3dd7
  8d3dd0:	movss  xmm0,DWORD PTR [esi+0x3c]
  8d3dd5:	jmp    8d3e23
  8d3dd7:	cmp    eax,0x1
  8d3dda:	jne    8d3e2a
  8d3ddc:	mov    eax,DWORD PTR [esi+0x68]
  8d3ddf:	mov    DWORD PTR [esp+0x18],eax
  8d3de3:	movsd  xmm0,QWORD PTR [esi+0x60]
  8d3de8:	movsd  QWORD PTR [esp+0x10],xmm0
  8d3dee:	mov    eax,DWORD PTR [esi+0x5c]
  8d3df1:	mov    DWORD PTR [esp+0xc],eax
  8d3df5:	movsd  xmm0,QWORD PTR [esi+0x54]
  8d3dfa:	movsd  QWORD PTR [esp+0x4],xmm0
  8d3e00:	mov    DWORD PTR [esp+0x1c],0x0
  8d3e08:	mov    DWORD PTR [esp],0x0
  8d3e0f:	call   177929e  ; UnityEngine.Vector3::Distance
  8d3e14:	fstp   DWORD PTR [esp+0x34]
  8d3e18:	movss  xmm0,DWORD PTR [esp+0x34]
  8d3e1e:	divss  xmm0,DWORD PTR [esi+0x40]
  8d3e23:	movss  DWORD PTR [esi+0x6c],xmm0
  8d3e28:	jmp    8d3e2f
  8d3e2a:	movss  xmm0,DWORD PTR [esi+0x6c]
  8d3e2f:	xorps  xmm1,xmm1
  8d3e32:	ucomiss xmm1,xmm0
  8d3e35:	jb     8d40b6
  8d3e3b:	lea    eax,[ebx+0x43158]
  8d3e41:	mov    esi,DWORD PTR [eax]
  8d3e43:	mov    DWORD PTR [esp],esi
  8d3e46:	call   1bedda
  8d3e4b:	mov    DWORD PTR [esp],esi
  8d3e4e:	mov    DWORD PTR [esp+0x4],0x6
  8d3e56:	call   21106a
  8d3e5b:	mov    esi,eax
  8d3e5d:	test   esi,esi
  8d3e5f:	je     8d40db
  8d3e65:	lea    edi,[ebx+0x5968c]  ; literal "Cannot start CHMotionTween on gameobject "
  8d3e6b:	mov    eax,DWORD PTR [edi]
  8d3e6d:	test   eax,eax
  8d3e6f:	je     8d3e93
  8d3e71:	mov    ecx,DWORD PTR [esi]
  8d3e73:	mov    ecx,DWORD PTR [ecx+0x18]
  8d3e76:	mov    DWORD PTR [esp+0x4],ecx
  8d3e7a:	mov    DWORD PTR [esp],eax
  8d3e7d:	call   20c1b8
  8d3e82:	test   eax,eax
  8d3e84:	jne    8d3e93
  8d3e86:	call   1fc998
  8d3e8b:	mov    DWORD PTR [esp],eax
  8d3e8e:	call   1fbb20
  8d3e93:	mov    edi,DWORD PTR [edi]
  8d3e95:	cmp    DWORD PTR [esi+0xc],0x0
  8d3e99:	jne    8d3ea8
  8d3e9b:	call   1fc7e4
  8d3ea0:	mov    DWORD PTR [esp],eax
  8d3ea3:	call   1fbb20
  8d3ea8:	mov    DWORD PTR [esi+0x10],edi
  8d3eab:	mov    eax,DWORD PTR [ebp+0x8]
  8d3eae:	mov    DWORD PTR [esp],eax
  8d3eb1:	mov    DWORD PTR [esp+0x4],0x0
  8d3eb9:	call   1501684  ; UnityEngine.Component::get_gameObject
  8d3ebe:	test   eax,eax
  8d3ec0:	je     8d40db
  8d3ec6:	mov    DWORD PTR [esp],eax
  8d3ec9:	mov    DWORD PTR [esp+0x4],0x0
  8d3ed1:	call   16792bf  ; UnityEngine.Object::get_name
  8d3ed6:	mov    edi,eax
  8d3ed8:	test   edi,edi
  8d3eda:	je     8d3efe
  8d3edc:	mov    eax,DWORD PTR [esi]
  8d3ede:	mov    eax,DWORD PTR [eax+0x18]
  8d3ee1:	mov    DWORD PTR [esp+0x4],eax
  8d3ee5:	mov    DWORD PTR [esp],edi
  8d3ee8:	call   20c1b8
  8d3eed:	test   eax,eax
  8d3eef:	jne    8d3efe
  8d3ef1:	call   1fc998
  8d3ef6:	mov    DWORD PTR [esp],eax
  8d3ef9:	call   1fbb20
  8d3efe:	cmp    DWORD PTR [esi+0xc],0x1
  8d3f02:	ja     8d3f11
  8d3f04:	call   1fc7e4
  8d3f09:	mov    DWORD PTR [esp],eax
  8d3f0c:	call   1fbb20
  8d3f11:	mov    DWORD PTR [esi+0x14],edi
  8d3f14:	lea    edi,[ebx+0x59690]  ; literal ". The duration of the animation is "
  8d3f1a:	mov    eax,DWORD PTR [edi]
  8d3f1c:	test   eax,eax
  8d3f1e:	je     8d3f42
  8d3f20:	mov    ecx,DWORD PTR [esi]
  8d3f22:	mov    ecx,DWORD PTR [ecx+0x18]
  8d3f25:	mov    DWORD PTR [esp+0x4],ecx
  8d3f29:	mov    DWORD PTR [esp],eax
  8d3f2c:	call   20c1b8
  8d3f31:	test   eax,eax
  8d3f33:	jne    8d3f42
  8d3f35:	call   1fc998
  8d3f3a:	mov    DWORD PTR [esp],eax
  8d3f3d:	call   1fbb20
  8d3f42:	mov    edi,DWORD PTR [edi]
  8d3f44:	cmp    DWORD PTR [esi+0xc],0x2
  8d3f48:	ja     8d3f57
  8d3f4a:	call   1fc7e4
  8d3f4f:	mov    DWORD PTR [esp],eax
  8d3f52:	call   1fbb20
  8d3f57:	mov    DWORD PTR [esi+0x18],edi
  8d3f5a:	mov    eax,DWORD PTR [ebp+0x8]
  8d3f5d:	movss  xmm0,DWORD PTR [eax+0x6c]
  8d3f62:	movss  DWORD PTR [esp+0x3c],xmm0
  8d3f68:	lea    eax,[ebx+0x433a4]
  8d3f6e:	mov    eax,DWORD PTR [eax]
  8d3f70:	lea    ecx,[esp+0x3c]
  8d3f74:	mov    DWORD PTR [esp+0x4],ecx
  8d3f78:	mov    DWORD PTR [esp],eax
  8d3f7b:	call   20bf14
  8d3f80:	mov    edi,eax
  8d3f82:	test   edi,edi
  8d3f84:	je     8d3fa8
  8d3f86:	mov    eax,DWORD PTR [esi]
  8d3f88:	mov    eax,DWORD PTR [eax+0x18]
  8d3f8b:	mov    DWORD PTR [esp+0x4],eax
  8d3f8f:	mov    DWORD PTR [esp],edi
  8d3f92:	call   20c1b8
  8d3f97:	test   eax,eax
  8d3f99:	jne    8d3fa8
  8d3f9b:	call   1fc998
  8d3fa0:	mov    DWORD PTR [esp],eax
  8d3fa3:	call   1fbb20
  8d3fa8:	cmp    DWORD PTR [esi+0xc],0x3
  8d3fac:	ja     8d3fbb
  8d3fae:	call   1fc7e4
  8d3fb3:	mov    DWORD PTR [esp],eax
  8d3fb6:	call   1fbb20
  8d3fbb:	mov    DWORD PTR [esi+0x1c],edi
  8d3fbe:	lea    edi,[ebx+0x59694]  ; literal ". TimingType is set to "
  8d3fc4:	mov    eax,DWORD PTR [edi]
  8d3fc6:	test   eax,eax
  8d3fc8:	je     8d3fec
  8d3fca:	mov    ecx,DWORD PTR [esi]
  8d3fcc:	mov    ecx,DWORD PTR [ecx+0x18]
  8d3fcf:	mov    DWORD PTR [esp+0x4],ecx
  8d3fd3:	mov    DWORD PTR [esp],eax
  8d3fd6:	call   20c1b8
  8d3fdb:	test   eax,eax
  8d3fdd:	jne    8d3fec
  8d3fdf:	call   1fc998
  8d3fe4:	mov    DWORD PTR [esp],eax
  8d3fe7:	call   1fbb20
  8d3fec:	mov    edi,DWORD PTR [edi]
  8d3fee:	cmp    DWORD PTR [esi+0xc],0x4
  8d3ff2:	ja     8d4001
  8d3ff4:	call   1fc7e4
  8d3ff9:	mov    DWORD PTR [esp],eax
  8d3ffc:	call   1fbb20
  8d4001:	mov    DWORD PTR [esi+0x20],edi
  8d4004:	mov    eax,DWORD PTR [ebp+0x8]
  8d4007:	mov    eax,DWORD PTR [eax+0x38]
  8d400a:	mov    DWORD PTR [esp+0x38],eax
  8d400e:	lea    eax,[ebx+0x46c38]
  8d4014:	mov    eax,DWORD PTR [eax]
  8d4016:	lea    ecx,[esp+0x38]
  8d401a:	mov    DWORD PTR [esp+0x4],ecx
  8d401e:	mov    DWORD PTR [esp],eax
  8d4021:	call   20bf14
  8d4026:	mov    edi,eax
  8d4028:	test   edi,edi
  8d402a:	je     8d404e
  8d402c:	mov    eax,DWORD PTR [esi]
  8d402e:	mov    eax,DWORD PTR [eax+0x18]
  8d4031:	mov    DWORD PTR [esp+0x4],eax
  8d4035:	mov    DWORD PTR [esp],edi
  8d4038:	call   20c1b8
  8d403d:	test   eax,eax
  8d403f:	jne    8d404e
  8d4041:	call   1fc998
  8d4046:	mov    DWORD PTR [esp],eax
  8d4049:	call   1fbb20
  8d404e:	cmp    DWORD PTR [esi+0xc],0x5
  8d4052:	ja     8d4061
  8d4054:	call   1fc7e4
  8d4059:	mov    DWORD PTR [esp],eax
  8d405c:	call   1fbb20
  8d4061:	mov    DWORD PTR [esi+0x24],edi
  8d4064:	lea    eax,[ebx+0x430e4]
  8d406a:	mov    eax,DWORD PTR [eax]
  8d406c:	test   BYTE PTR [eax+0xb2],0x1
  8d4073:	je     8d4083
  8d4075:	cmp    DWORD PTR [eax+0x60],0x0
  8d4079:	jne    8d4083
  8d407b:	mov    DWORD PTR [esp],eax
  8d407e:	call   1db0b8
  8d4083:	mov    DWORD PTR [esp+0x4],esi
  8d4087:	mov    DWORD PTR [esp+0x8],0x0
  8d408f:	mov    DWORD PTR [esp],0x0
  8d4096:	call   cc1a79  ; System.String::Concat
  8d409b:	mov    DWORD PTR [esp+0x4],eax
  8d409f:	mov    DWORD PTR [esp+0x8],0x0
  8d40a7:	mov    DWORD PTR [esp],0x0
  8d40ae:	call   10872b0  ; DebugLog::Warn
  8d40b3:	mov    esi,DWORD PTR [ebp+0x8]
  8d40b6:	mov    DWORD PTR [esp+0x4],0x0
  8d40be:	mov    DWORD PTR [esp],0x0
  8d40c5:	call   17752b5  ; UnityEngine.Time::get_time
  8d40ca:	fstp   DWORD PTR [esi+0x50]
  8d40cd:	mov    WORD PTR [esi+0x14],0x1
  8d40d3:	lea    esp,[ebp-0xc]
  8d40d6:	pop    esi
  8d40d7:	pop    edi
  8d40d8:	pop    ebx
  8d40d9:	pop    ebp
  8d40da:	ret
  8d40db:	call   1fbc48
  8d40e0:	call   8b3f00