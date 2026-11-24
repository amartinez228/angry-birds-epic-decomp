
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01603dfa:
 1603dfa:	push   ebp
 1603dfb:	mov    ebp,esp
 1603dfd:	push   ebx
 1603dfe:	push   edi
 1603dff:	push   esi
 1603e00:	and    esp,0xfffffff0
 1603e03:	sub    esp,0x30
 1603e06:	call   1603e0b
 1603e0b:	pop    ebx
 1603e0c:	add    ebx,0x90e139
 1603e12:	mov    esi,DWORD PTR [ebp+0x8]
 1603e15:	test   esi,esi
 1603e17:	je     1603fa9
 1603e1d:	mov    edi,DWORD PTR [ebp+0x10]
 1603e20:	mov    eax,DWORD PTR [edi+0xc]
 1603e23:	mov    eax,DWORD PTR [eax+0x54]
 1603e26:	mov    eax,DWORD PTR [eax+0x14]
 1603e29:	mov    DWORD PTR [esp+0x4],eax
 1603e2d:	mov    DWORD PTR [esp],esi
 1603e30:	call   DWORD PTR [eax]
 1603e32:	fstp   DWORD PTR [esp+0x28]
 1603e36:	xorps  xmm2,xmm2
 1603e39:	ucomiss xmm2,DWORD PTR [esp+0x28]
 1603e3e:	jbe    1603e71
 1603e40:	mov    DWORD PTR [esi+0x60],0x42c80000
 1603e47:	mov    eax,DWORD PTR [edi+0xc]
 1603e4a:	mov    eax,DWORD PTR [eax+0x54]
 1603e4d:	mov    eax,DWORD PTR [eax+0x20]
 1603e50:	mov    DWORD PTR [esp+0xc],eax
 1603e54:	movss  xmm0,DWORD PTR [ebp+0xc]
 1603e59:	movss  DWORD PTR [esp+0x8],xmm0
 1603e5f:	mov    DWORD PTR [esp],esi
 1603e62:	mov    DWORD PTR [esp+0x4],0x42c80000
 1603e6a:	call   DWORD PTR [eax]
 1603e6c:	jmp    1603fa1
 1603e71:	movss  xmm1,DWORD PTR [esi+0x60]
 1603e76:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
 1603e7e:	movss  xmm3,DWORD PTR [ebp+0xc]
 1603e83:	ucomiss xmm0,xmm3
 1603e86:	movaps xmm0,xmm3
 1603e89:	setbe  al
 1603e8c:	ucomiss xmm0,xmm2
 1603e8f:	setb   cl
 1603e92:	or     cl,al
 1603e94:	jne    1603e99
 1603e96:	xorps  xmm0,xmm0
 1603e99:	movss  DWORD PTR [esi+0x60],xmm0
 1603e9e:	mov    eax,DWORD PTR [edi+0xc]
 1603ea1:	mov    eax,DWORD PTR [eax+0x54]
 1603ea4:	mov    eax,DWORD PTR [eax+0x20]
 1603ea7:	mov    DWORD PTR [esp+0xc],eax
 1603eab:	movss  DWORD PTR [esp+0x8],xmm0
 1603eb1:	movss  DWORD PTR [esp+0x4],xmm1
 1603eb7:	mov    DWORD PTR [esp],esi
 1603eba:	movss  DWORD PTR [esp+0x1c],xmm1
 1603ec0:	call   DWORD PTR [eax]
 1603ec2:	movss  xmm0,DWORD PTR [esi+0x60]
 1603ec7:	movss  DWORD PTR [esp+0x20],xmm0
 1603ecd:	mov    eax,DWORD PTR [edi+0xc]
 1603ed0:	mov    eax,DWORD PTR [eax+0x54]
 1603ed3:	mov    eax,DWORD PTR [eax]
 1603ed5:	mov    DWORD PTR [esp+0x4],eax
 1603ed9:	mov    DWORD PTR [esp],esi
 1603edc:	call   DWORD PTR [eax]
 1603ede:	fstp   DWORD PTR [esp+0x8]
 1603ee2:	movss  xmm0,DWORD PTR [esp+0x20]
 1603ee8:	movss  DWORD PTR [esp+0x4],xmm0
 1603eee:	mov    DWORD PTR [esp+0xc],0x0
 1603ef6:	mov    DWORD PTR [esp],0x0
 1603efd:	call   124e8f9  ; System.Math::Min
 1603f02:	fstp   DWORD PTR [esp+0x24]
 1603f06:	movss  xmm0,DWORD PTR [esp+0x24]
 1603f0c:	movss  DWORD PTR [esi+0x60],xmm0
 1603f11:	xorps  xmm1,xmm1
 1603f14:	ucomiss xmm1,xmm0
 1603f17:	jb     1603fa1
 1603f1d:	xorps  xmm0,xmm0
 1603f20:	movss  xmm1,DWORD PTR [esp+0x1c]
 1603f26:	ucomiss xmm1,xmm0
 1603f29:	jbe    1603f9a
 1603f2b:	mov    eax,DWORD PTR [edi+0xc]
 1603f2e:	mov    eax,DWORD PTR [eax+0x54]
 1603f31:	mov    eax,DWORD PTR [eax+0x24]
 1603f34:	mov    DWORD PTR [esp+0x4],eax
 1603f38:	mov    DWORD PTR [esp],esi
 1603f3b:	call   DWORD PTR [eax]
 1603f3d:	mov    ecx,DWORD PTR [edi+0xc]
 1603f40:	mov    ecx,DWORD PTR [ecx+0x54]
 1603f43:	mov    edx,DWORD PTR [ecx+0x28]
 1603f46:	mov    ecx,DWORD PTR [edx]
 1603f48:	test   al,al
 1603f4a:	je     1603f74
 1603f4c:	mov    DWORD PTR [esp+0x8],edx
 1603f50:	mov    DWORD PTR [esp],esi
 1603f53:	mov    DWORD PTR [esp+0x4],0x1
 1603f5b:	call   ecx
 1603f5d:	mov    eax,DWORD PTR [esi]
 1603f5f:	mov    ecx,DWORD PTR [eax+0x5b8]
 1603f65:	mov    DWORD PTR [esp+0x4],ecx
 1603f69:	mov    DWORD PTR [esp],esi
 1603f6c:	call   DWORD PTR [eax+0x5b4]
 1603f72:	jmp    1603f9a
 1603f74:	mov    DWORD PTR [esp+0x8],edx
 1603f78:	mov    DWORD PTR [esp],esi
 1603f7b:	mov    DWORD PTR [esp+0x4],0x0
 1603f83:	call   ecx
 1603f85:	mov    eax,DWORD PTR [esi]
 1603f87:	mov    ecx,DWORD PTR [eax+0x5b0]
 1603f8d:	mov    DWORD PTR [esp+0x4],ecx
 1603f91:	mov    DWORD PTR [esp],esi
 1603f94:	call   DWORD PTR [eax+0x5ac]
 1603f9a:	mov    DWORD PTR [esi+0x60],0x0
 1603fa1:	lea    esp,[ebp-0xc]
 1603fa4:	pop    esi
 1603fa5:	pop    edi
 1603fa6:	pop    ebx
 1603fa7:	pop    ebp
 1603fa8:	ret
 1603fa9:	call   1fbc48
 1603fae:	call   1608243