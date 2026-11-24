
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

009078f4:
  9078f4:	push   ebp
  9078f5:	mov    ebp,esp
  9078f7:	push   ebx
  9078f8:	push   edi
  9078f9:	push   esi
  9078fa:	and    esp,0xfffffff0
  9078fd:	sub    esp,0x110
  907903:	call   907908
  907908:	pop    ebx
  907909:	add    ebx,0x160a63c
  90790f:	mov    edi,DWORD PTR [ebp+0x8]
  907912:	mov    al,BYTE PTR [ebx+0x602af]
  907918:	test   al,al
  90791a:	jne    907933
  90791c:	lea    eax,[ebx-0x66d564]
  907922:	mov    eax,DWORD PTR [eax]
  907924:	mov    DWORD PTR [esp],eax
  907927:	call   1ca6e8
  90792c:	mov    BYTE PTR [ebx+0x602af],0x1
  907933:	mov    DWORD PTR [esp+0x104],0x0
  90793e:	mov    DWORD PTR [esp+0x100],0x0
  907949:	mov    DWORD PTR [esp+0x108],0x0
  907954:	xorps  xmm0,xmm0
  907957:	movaps XMMWORD PTR [esp+0xf0],xmm0
  90795f:	cmp    BYTE PTR [edi+0x14],0x0
  907963:	je     907f29
  907969:	mov    DWORD PTR [esp+0x4],0x0
  907971:	mov    DWORD PTR [esp],0x0
  907978:	call   17752b5  ; UnityEngine.Time::get_time
  90797d:	fstp   DWORD PTR [esp+0x3c]
  907981:	movss  xmm0,DWORD PTR [esp+0x3c]
  907987:	subss  xmm0,DWORD PTR [edi+0x50]
  90798c:	divss  xmm0,DWORD PTR [edi+0x6c]
  907991:	ucomiss xmm0,DWORD PTR [ebx-0x64fc28]
  907998:	jb     9079dc
  90799a:	cmp    BYTE PTR [edi+0x45],0x0
  90799e:	je     9079ad
  9079a0:	mov    DWORD PTR [esp],edi
  9079a3:	call   8d3ac6  ; CHMotionTween::Play
  9079a8:	xorps  xmm0,xmm0
  9079ab:	jmp    9079dc
  9079ad:	mov    BYTE PTR [edi+0x14],0x0
  9079b1:	mov    eax,DWORD PTR [edi+0xc]
  9079b4:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
  9079bc:	test   eax,eax
  9079be:	je     9079dc
  9079c0:	mov    DWORD PTR [esp],eax
  9079c3:	mov    DWORD PTR [esp+0x4],0x0
  9079cb:	movss  DWORD PTR [esp+0x2c],xmm0
  9079d1:	call   1717700  ; System.Action::Invoke
  9079d6:	movss  xmm0,DWORD PTR [esp+0x2c]
  9079dc:	movss  DWORD PTR [esp+0x2c],xmm0
  9079e2:	lea    eax,[esp+0xe0]
  9079e9:	mov    DWORD PTR [esp],eax
  9079ec:	mov    DWORD PTR [esp+0x8],0x0
  9079f4:	mov    DWORD PTR [esp+0x4],0x0
  9079fc:	call   1779758  ; UnityEngine.Vector3::get_one
  907a01:	sub    esp,0x4
  907a04:	mov    eax,DWORD PTR [esp+0xe8]
  907a0b:	mov    DWORD PTR [esp+0x10],eax
  907a0f:	movsd  xmm0,QWORD PTR [esp+0xe0]
  907a18:	movsd  QWORD PTR [esp+0x8],xmm0
  907a1e:	movss  xmm0,DWORD PTR [esp+0x2c]
  907a24:	movss  DWORD PTR [esp+0x14],xmm0
  907a2a:	lea    eax,[esp+0xd0]
  907a31:	mov    DWORD PTR [esp],eax
  907a34:	mov    DWORD PTR [esp+0x18],0x0
  907a3c:	mov    DWORD PTR [esp+0x4],0x0
  907a44:	call   17798ae  ; UnityEngine.Vector3::op_Multiply
  907a49:	sub    esp,0x4
  907a4c:	mov    eax,DWORD PTR [esp+0xd8]
  907a53:	mov    DWORD PTR [esp+0x108],eax
  907a5a:	movsd  xmm0,QWORD PTR [esp+0xd0]
  907a63:	movsd  QWORD PTR [esp+0x100],xmm0
  907a6c:	cmp    DWORD PTR [edi+0x48],0x0
  907a70:	je     907a99
  907a72:	mov    eax,DWORD PTR [edi+0x4c]
  907a75:	test   eax,eax
  907a77:	je     907f31
  907a7d:	lea    ecx,[ebx+0x4cd3c]
  907a83:	mov    ecx,DWORD PTR [ecx]
  907a85:	mov    DWORD PTR [esp+0x4],ecx
  907a89:	mov    DWORD PTR [esp],eax
  907a8c:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  907a91:	test   eax,eax
  907a93:	jle    907c7a
  907a99:	mov    eax,DWORD PTR [edi+0x4c]
  907a9c:	test   eax,eax
  907a9e:	je     907f31
  907aa4:	lea    ecx,[ebx+0x4cd3c]
  907aaa:	mov    ecx,DWORD PTR [ecx]
  907aac:	mov    DWORD PTR [esp+0x4],ecx
  907ab0:	mov    DWORD PTR [esp],eax
  907ab3:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  907ab8:	test   eax,eax
  907aba:	jle    907d9c
  907ac0:	lea    eax,[esp+0xa0]
  907ac7:	mov    DWORD PTR [esp],eax
  907aca:	mov    DWORD PTR [esp+0x8],0x0
  907ad2:	mov    DWORD PTR [esp+0x4],0x0
  907ada:	call   1778fb2  ; UnityEngine.Vector3::get_zero
  907adf:	sub    esp,0x4
  907ae2:	mov    eax,DWORD PTR [esp+0xa8]
  907ae9:	mov    DWORD PTR [esp+0x108],eax
  907af0:	movsd  xmm0,QWORD PTR [esp+0xa0]
  907af9:	movsd  QWORD PTR [esp+0x100],xmm0
  907b02:	mov    eax,DWORD PTR [edi+0x4c]
  907b05:	test   eax,eax
  907b07:	je     907f31
  907b0d:	lea    ecx,[ebx+0x4cd40]
  907b13:	mov    ecx,DWORD PTR [ecx]
  907b15:	mov    DWORD PTR [esp+0x8],ecx
  907b19:	mov    DWORD PTR [esp+0x4],eax
  907b1d:	lea    eax,[esp+0x90]
  907b24:	mov    DWORD PTR [esp],eax
  907b27:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  907b2c:	sub    esp,0x4
  907b2f:	movsd  xmm0,QWORD PTR [esp+0x90]
  907b38:	movsd  xmm1,QWORD PTR [esp+0x98]
  907b41:	movsd  QWORD PTR [esp+0xf8],xmm1
  907b4a:	movsd  QWORD PTR [esp+0xf0],xmm0
  907b53:	lea    esi,[ebx+0x4cd48]
  907b59:	jmp    907c4b
  907b5e:	movss  xmm0,DWORD PTR [esp+0x34]
  907b64:	movss  DWORD PTR [esp+0x104],xmm0
  907b6d:	jmp    907c4b
  907b72:	lea    eax,[ebx+0x4cd44]
  907b78:	mov    eax,DWORD PTR [eax]
  907b7a:	mov    DWORD PTR [esp+0x4],eax
  907b7e:	lea    eax,[esp+0xf0]
  907b85:	mov    DWORD PTR [esp],eax
  907b88:	call   447f1e
  907b8d:	mov    ecx,eax
  907b8f:	test   ecx,ecx
  907b91:	je     907d25
  907b97:	mov    eax,DWORD PTR [ecx+0x8]
  907b9a:	test   eax,eax
  907b9c:	je     907bd0
  907b9e:	cmp    eax,0x1
  907ba1:	jne    907c0c
  907ba3:	mov    eax,DWORD PTR [ecx+0xc]
  907ba6:	test   eax,eax
  907ba8:	movss  xmm0,DWORD PTR [esp+0x2c]
  907bae:	je     907d2f
  907bb4:	movss  DWORD PTR [esp+0x4],xmm0
  907bba:	mov    DWORD PTR [esp],eax
  907bbd:	mov    DWORD PTR [esp+0x8],0x0
  907bc5:	call   14f82bb  ; UnityEngine.AnimationCurve::Evaluate
  907bca:	fstp   DWORD PTR [esp+0x34]
  907bce:	jmp    907b5e
  907bd0:	mov    eax,DWORD PTR [ecx+0xc]
  907bd3:	test   eax,eax
  907bd5:	movss  xmm0,DWORD PTR [esp+0x2c]
  907bdb:	je     907d39
  907be1:	movss  DWORD PTR [esp+0x4],xmm0
  907be7:	mov    DWORD PTR [esp],eax
  907bea:	mov    DWORD PTR [esp+0x8],0x0
  907bf2:	call   14f82bb  ; UnityEngine.AnimationCurve::Evaluate
  907bf7:	fstp   DWORD PTR [esp+0x30]
  907bfb:	movss  xmm0,DWORD PTR [esp+0x30]
  907c01:	movss  DWORD PTR [esp+0x100],xmm0
  907c0a:	jmp    907c4b
  907c0c:	cmp    eax,0x2
  907c0f:	jne    907c4b
  907c11:	mov    eax,DWORD PTR [ecx+0xc]
  907c14:	test   eax,eax
  907c16:	je     907d43
  907c1c:	movss  xmm0,DWORD PTR [esp+0x2c]
  907c22:	movss  DWORD PTR [esp+0x4],xmm0
  907c28:	mov    DWORD PTR [esp],eax
  907c2b:	mov    DWORD PTR [esp+0x8],0x0
  907c33:	call   14f82bb  ; UnityEngine.AnimationCurve::Evaluate
  907c38:	fstp   DWORD PTR [esp+0x38]
  907c3c:	movss  xmm0,DWORD PTR [esp+0x38]
  907c42:	movss  DWORD PTR [esp+0x108],xmm0
  907c4b:	mov    eax,DWORD PTR [esi]
  907c4d:	mov    DWORD PTR [esp+0x4],eax
  907c51:	lea    eax,[esp+0xf0]
  907c58:	mov    DWORD PTR [esp],eax
  907c5b:	call   447e4e
  907c60:	test   al,al
  907c62:	jne    907b72
  907c68:	xor    esi,esi
  907c6a:	mov    al,0x1
  907c6c:	mov    DWORD PTR [esp+0x2c],eax
  907c70:	jmp    907d6d
  907c75:	jmp    907d4d
  907c7a:	lea    eax,[esp+0xc0]
  907c81:	mov    DWORD PTR [esp],eax
  907c84:	mov    DWORD PTR [esp+0x8],0x0
  907c8c:	mov    DWORD PTR [esp+0x4],0x0
  907c94:	call   1779758  ; UnityEngine.Vector3::get_one
  907c99:	sub    esp,0x4
  907c9c:	mov    eax,DWORD PTR [edi+0x48]
  907c9f:	test   eax,eax
  907ca1:	je     907f31
  907ca7:	movss  xmm0,DWORD PTR [esp+0x2c]
  907cad:	movss  DWORD PTR [esp+0x4],xmm0
  907cb3:	mov    DWORD PTR [esp],eax
  907cb6:	mov    DWORD PTR [esp+0x8],0x0
  907cbe:	call   14f82bb  ; UnityEngine.AnimationCurve::Evaluate
  907cc3:	mov    eax,DWORD PTR [esp+0xc8]
  907cca:	mov    DWORD PTR [esp+0x10],eax
  907cce:	movsd  xmm0,QWORD PTR [esp+0xc0]
  907cd7:	movsd  QWORD PTR [esp+0x8],xmm0
  907cdd:	fstp   DWORD PTR [esp+0x14]
  907ce1:	lea    eax,[esp+0xb0]
  907ce8:	mov    DWORD PTR [esp],eax
  907ceb:	mov    DWORD PTR [esp+0x18],0x0
  907cf3:	mov    DWORD PTR [esp+0x4],0x0
  907cfb:	call   17798ae  ; UnityEngine.Vector3::op_Multiply
  907d00:	sub    esp,0x4
  907d03:	mov    eax,DWORD PTR [esp+0xb8]
  907d0a:	mov    DWORD PTR [esp+0x108],eax
  907d11:	movsd  xmm0,QWORD PTR [esp+0xb0]
  907d1a:	movsd  QWORD PTR [esp+0x100],xmm0
  907d23:	jmp    907d9c
  907d25:	call   1fbc48
  907d2a:	call   8b3f00
  907d2f:	call   1fbc48
  907d34:	call   8b3f00
  907d39:	call   1fbc48
  907d3e:	call   8b3f00
  907d43:	call   1fbc48
  907d48:	jmp    907f43
  907d4d:	cmp    edx,0x1
  907d50:	jne    907f3b
  907d56:	mov    DWORD PTR [esp],eax
  907d59:	call   1ba3f0
  907d5e:	mov    esi,DWORD PTR [eax]
  907d60:	call   1b9ce0
  907d65:	mov    DWORD PTR [esp+0x2c],0x0
  907d6d:	lea    eax,[ebx+0x4cd4c]
  907d73:	mov    eax,DWORD PTR [eax]
  907d75:	mov    DWORD PTR [esp+0x4],eax
  907d79:	lea    eax,[esp+0xf0]
  907d80:	mov    DWORD PTR [esp],eax
  907d83:	call   447df6
  907d88:	mov    eax,DWORD PTR [esp+0x2c]
  907d8c:	test   al,al
  907d8e:	jne    907d9c
  907d90:	test   esi,esi
  907d92:	je     907d9c
  907d94:	mov    DWORD PTR [esp],esi
  907d97:	call   1fbb20
  907d9c:	cmp    BYTE PTR [edi+0x70],0x0
  907da0:	je     907de6
  907da2:	movss  xmm0,DWORD PTR [esp+0x100]
  907dab:	movss  xmm1,DWORD PTR [esp+0x104]
  907db4:	movss  xmm2,DWORD PTR [esp+0x108]
  907dbd:	movss  DWORD PTR [esp+0xc],xmm2
  907dc3:	movss  DWORD PTR [esp+0x8],xmm0
  907dc9:	movss  DWORD PTR [esp+0x4],xmm1
  907dcf:	lea    eax,[esp+0x100]
  907dd6:	mov    DWORD PTR [esp],eax
  907dd9:	mov    DWORD PTR [esp+0x10],0x0
  907de1:	call   1776fe2
  907de6:	mov    DWORD PTR [esp],edi
  907de9:	mov    DWORD PTR [esp+0x4],0x0
  907df1:	call   150157d  ; UnityEngine.Component::get_transform
  907df6:	mov    esi,eax
  907df8:	mov    eax,DWORD PTR [edi+0x5c]
  907dfb:	mov    DWORD PTR [esp+0x88],eax
  907e02:	movsd  xmm0,QWORD PTR [edi+0x54]
  907e07:	movsd  QWORD PTR [esp+0x80],xmm0
  907e10:	mov    eax,DWORD PTR [esp+0x108]
  907e17:	mov    DWORD PTR [esp+0x78],eax
  907e1b:	movsd  xmm0,QWORD PTR [esp+0x100]
  907e24:	movsd  QWORD PTR [esp+0x70],xmm0
  907e2a:	mov    eax,DWORD PTR [edi+0x5c]
  907e2d:	mov    DWORD PTR [esp+0x1c],eax
  907e31:	movsd  xmm0,QWORD PTR [edi+0x54]
  907e36:	movsd  QWORD PTR [esp+0x14],xmm0
  907e3c:	mov    eax,DWORD PTR [edi+0x68]
  907e3f:	mov    DWORD PTR [esp+0x10],eax
  907e43:	movsd  xmm0,QWORD PTR [edi+0x60]
  907e48:	movsd  QWORD PTR [esp+0x8],xmm0
  907e4e:	lea    eax,[esp+0x60]
  907e52:	mov    DWORD PTR [esp],eax
  907e55:	mov    DWORD PTR [esp+0x20],0x0
  907e5d:	mov    DWORD PTR [esp+0x4],0x0
  907e65:	call   177982a  ; UnityEngine.Vector3::op_Subtraction
  907e6a:	sub    esp,0x4
  907e6d:	mov    eax,DWORD PTR [esp+0x68]
  907e71:	mov    DWORD PTR [esp+0x1c],eax
  907e75:	movsd  xmm0,QWORD PTR [esp+0x60]
  907e7b:	movsd  QWORD PTR [esp+0x14],xmm0
  907e81:	mov    eax,DWORD PTR [esp+0x78]
  907e85:	mov    DWORD PTR [esp+0x10],eax
  907e89:	movsd  xmm0,QWORD PTR [esp+0x70]
  907e8f:	movsd  QWORD PTR [esp+0x8],xmm0
  907e95:	lea    eax,[esp+0x50]
  907e99:	mov    DWORD PTR [esp],eax
  907e9c:	mov    DWORD PTR [esp+0x20],0x0
  907ea4:	mov    DWORD PTR [esp+0x4],0x0
  907eac:	call   1778b6c  ; UnityEngine.Vector3::Scale
  907eb1:	sub    esp,0x4
  907eb4:	mov    eax,DWORD PTR [esp+0x58]
  907eb8:	mov    DWORD PTR [esp+0x1c],eax
  907ebc:	movsd  xmm0,QWORD PTR [esp+0x50]
  907ec2:	movsd  QWORD PTR [esp+0x14],xmm0
  907ec8:	mov    eax,DWORD PTR [esp+0x88]
  907ecf:	mov    DWORD PTR [esp+0x10],eax
  907ed3:	movsd  xmm0,QWORD PTR [esp+0x80]
  907edc:	movsd  QWORD PTR [esp+0x8],xmm0
  907ee2:	lea    eax,[esp+0x40]
  907ee6:	mov    DWORD PTR [esp],eax
  907ee9:	mov    DWORD PTR [esp+0x20],0x0
  907ef1:	mov    DWORD PTR [esp+0x4],0x0
  907ef9:	call   1776e79  ; UnityEngine.Vector3::op_Addition
  907efe:	sub    esp,0x4
  907f01:	test   esi,esi
  907f03:	je     907f31
  907f05:	mov    eax,DWORD PTR [esp+0x48]
  907f09:	mov    DWORD PTR [esp+0xc],eax
  907f0d:	movsd  xmm0,QWORD PTR [esp+0x40]
  907f13:	movsd  QWORD PTR [esp+0x4],xmm0
  907f19:	mov    DWORD PTR [esp],esi
  907f1c:	mov    DWORD PTR [esp+0x10],0x0
  907f24:	call   1776176  ; UnityEngine.Transform::set_position
  907f29:	lea    esp,[ebp-0xc]
  907f2c:	pop    esi
  907f2d:	pop    edi
  907f2e:	pop    ebx
  907f2f:	pop    ebp
  907f30:	ret
  907f31:	call   1fbc48
  907f36:	call   8b3f00
  907f3b:	mov    DWORD PTR [esp],eax
  907f3e:	call   1b9bd0
  907f43:	call   8b3f00