
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f5b13:
  6f5b13:	push   ebp
  6f5b14:	mov    ebp,esp
  6f5b16:	push   ebx
  6f5b17:	push   esi
  6f5b18:	and    esp,0xfffffff0
  6f5b1b:	sub    esp,0x60
  6f5b1e:	call   6f5b23
  6f5b23:	pop    ebx
  6f5b24:	add    ebx,0x181c421
  6f5b2a:	mov    esi,DWORD PTR [ebp+0x8]
  6f5b2d:	mov    al,BYTE PTR [ebx+0x5f813]
  6f5b33:	test   al,al
  6f5b35:	jne    6f5b4e
  6f5b37:	lea    eax,[ebx-0x65fce8]
  6f5b3d:	mov    eax,DWORD PTR [eax]
  6f5b3f:	mov    DWORD PTR [esp],eax
  6f5b42:	call   1ca6e8
  6f5b47:	mov    BYTE PTR [ebx+0x5f813],0x1
  6f5b4e:	movss  xmm1,DWORD PTR [ebp+0xc]
  6f5b53:	mov    eax,DWORD PTR [esi+0x10]
  6f5b56:	test   eax,eax
  6f5b58:	je     6f5b89
  6f5b5a:	mov    DWORD PTR [esp],eax
  6f5b5d:	mov    DWORD PTR [esp+0x4],0x0
  6f5b65:	call   1701e83  ; ABH.Shared.BalancingData.PowerLevelBalancingData::get_HealthModifier
  6f5b6a:	movss  xmm1,DWORD PTR [ebp+0xc]
  6f5b6f:	fstp   DWORD PTR [esp+0x54]
  6f5b73:	movss  xmm0,DWORD PTR [esp+0x54]
  6f5b79:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6f5b81:	mulss  xmm0,xmm1
  6f5b85:	addss  xmm1,xmm0
  6f5b89:	xorps  xmm0,xmm0
  6f5b8c:	cvtsi2ss xmm0,DWORD PTR [esi+0x14]
  6f5b91:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6f5b99:	mulss  xmm0,xmm1
  6f5b9d:	addss  xmm0,xmm1
  6f5ba1:	movss  DWORD PTR [esp+0x10],xmm0
  6f5ba7:	lea    eax,[ebx+0x44ec8]
  6f5bad:	mov    eax,DWORD PTR [eax]
  6f5baf:	test   BYTE PTR [eax+0xb2],0x1
  6f5bb6:	je     6f5bc6
  6f5bb8:	cmp    DWORD PTR [eax+0x60],0x0
  6f5bbc:	jne    6f5bc6
  6f5bbe:	mov    DWORD PTR [esp],eax
  6f5bc1:	call   1db0b8
  6f5bc6:	xorps  xmm0,xmm0
  6f5bc9:	cvtss2sd xmm0,DWORD PTR [esp+0x10]
  6f5bcf:	lea    eax,[esp+0x58]
  6f5bd3:	mov    DWORD PTR [esp+0x8],eax
  6f5bd7:	movsd  QWORD PTR [esp],xmm0
  6f5bdc:	call   1b93f0
  6f5be1:	xorps  xmm0,xmm0
  6f5be4:	movss  xmm1,DWORD PTR [esp+0x10]
  6f5bea:	ucomiss xmm1,xmm0
  6f5bed:	fstp   QWORD PTR [esp+0x48]
  6f5bf1:	movsd  xmm0,QWORD PTR [esp+0x48]
  6f5bf7:	jae    6f5c2f
  6f5bf9:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6f5c01:	jne    6f5c65
  6f5c03:	jp     6f5c65
  6f5c05:	movsd  xmm0,QWORD PTR [esp+0x58]
  6f5c0b:	movsd  QWORD PTR [esp+0x20],xmm0
  6f5c11:	fld    QWORD PTR [esp+0x20]
  6f5c15:	fisttp QWORD PTR [esp+0x18]
  6f5c19:	mov    eax,DWORD PTR [esp+0x18]
  6f5c1d:	test   al,0x1
  6f5c1f:	cvtsd2ss xmm0,xmm0
  6f5c23:	je     6f5c9f
  6f5c25:	addss  xmm0,DWORD PTR [ebx-0x64fc1c]
  6f5c2d:	jmp    6f5c9f
  6f5c2f:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6f5c37:	jne    6f5c83
  6f5c39:	jp     6f5c83
  6f5c3b:	movsd  xmm0,QWORD PTR [esp+0x58]
  6f5c41:	movsd  QWORD PTR [esp+0x38],xmm0
  6f5c47:	fld    QWORD PTR [esp+0x38]
  6f5c4b:	fisttp QWORD PTR [esp+0x30]
  6f5c4f:	mov    eax,DWORD PTR [esp+0x30]
  6f5c53:	test   al,0x1
  6f5c55:	cvtsd2ss xmm0,xmm0
  6f5c59:	je     6f5c9f
  6f5c5b:	addss  xmm0,DWORD PTR [ebx-0x64fc28]
  6f5c63:	jmp    6f5c9f
  6f5c65:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6f5c6d:	movss  DWORD PTR [esp],xmm1
  6f5c72:	call   1b9250
  6f5c77:	fstp   DWORD PTR [esp+0x2c]
  6f5c7b:	movss  xmm0,DWORD PTR [esp+0x2c]
  6f5c81:	jmp    6f5c9f
  6f5c83:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6f5c8b:	movss  DWORD PTR [esp],xmm1
  6f5c90:	call   1b9990
  6f5c95:	fstp   DWORD PTR [esp+0x44]
  6f5c99:	movss  xmm0,DWORD PTR [esp+0x44]
  6f5c9f:	movss  DWORD PTR [esp+0x14],xmm0
  6f5ca5:	fld    DWORD PTR [esp+0x14]
  6f5ca9:	lea    esp,[ebp-0x8]
  6f5cac:	pop    esi
  6f5cad:	pop    ebx
  6f5cae:	pop    ebp
  6f5caf:	ret