
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f5cb0:
  6f5cb0:	push   ebp
  6f5cb1:	mov    ebp,esp
  6f5cb3:	push   ebx
  6f5cb4:	push   edi
  6f5cb5:	push   esi
  6f5cb6:	and    esp,0xfffffff0
  6f5cb9:	sub    esp,0x60
  6f5cbc:	call   6f5cc1
  6f5cc1:	pop    ebx
  6f5cc2:	add    ebx,0x181c283
  6f5cc8:	mov    edi,DWORD PTR [ebp+0x8]
  6f5ccb:	mov    al,BYTE PTR [ebx+0x5f811]
  6f5cd1:	test   al,al
  6f5cd3:	jne    6f5cec
  6f5cd5:	lea    eax,[ebx-0x65fcd0]
  6f5cdb:	mov    eax,DWORD PTR [eax]
  6f5cdd:	mov    DWORD PTR [esp],eax
  6f5ce0:	call   1ca6e8
  6f5ce5:	mov    BYTE PTR [ebx+0x5f811],0x1
  6f5cec:	mov    eax,DWORD PTR [edi+0x1c]
  6f5cef:	test   eax,eax
  6f5cf1:	je     6f5e9e
  6f5cf7:	mov    DWORD PTR [esp],eax
  6f5cfa:	mov    DWORD PTR [esp+0x4],0x0
  6f5d02:	call   1701bc5  ; ABH.Shared.BalancingData.PigBalancingData::get_BaseHealth
  6f5d07:	mov    ecx,DWORD PTR [edi+0x1c]
  6f5d0a:	test   ecx,ecx
  6f5d0c:	je     6f5e9e
  6f5d12:	mov    DWORD PTR [esp+0x10],eax
  6f5d16:	mov    DWORD PTR [esp],ecx
  6f5d19:	mov    DWORD PTR [esp+0x4],0x0
  6f5d21:	call   1701bc5  ; ABH.Shared.BalancingData.PigBalancingData::get_BaseHealth
  6f5d26:	mov    DWORD PTR [esp+0xc],eax
  6f5d2a:	mov    eax,DWORD PTR [edi+0x1c]
  6f5d2d:	test   eax,eax
  6f5d2f:	je     6f5e9e
  6f5d35:	mov    DWORD PTR [esp],eax
  6f5d38:	mov    DWORD PTR [esp+0x4],0x0
  6f5d40:	call   1701c0b  ; ABH.Shared.BalancingData.PigBalancingData::get_PerLevelHealth
  6f5d45:	mov    esi,eax
  6f5d47:	mov    eax,DWORD PTR [edi+0x20]
  6f5d4a:	test   eax,eax
  6f5d4c:	je     6f5e9e
  6f5d52:	mov    DWORD PTR [esp],eax
  6f5d55:	mov    DWORD PTR [esp+0x4],0x0
  6f5d5d:	call   179a319  ; ABH.Shared.Models.Character.PigData::get_Level
  6f5d62:	mov    edi,eax
  6f5d64:	lea    eax,[ebx+0x44ec8]
  6f5d6a:	mov    eax,DWORD PTR [eax]
  6f5d6c:	test   BYTE PTR [eax+0xb2],0x1
  6f5d73:	je     6f5d83
  6f5d75:	cmp    DWORD PTR [eax+0x60],0x0
  6f5d79:	jne    6f5d83
  6f5d7b:	mov    DWORD PTR [esp],eax
  6f5d7e:	call   1db0b8
  6f5d83:	cvtsi2ss xmm0,DWORD PTR [esp+0x10]
  6f5d89:	cvtsi2ss xmm1,DWORD PTR [esp+0xc]
  6f5d8f:	cvtsi2ss xmm2,esi
  6f5d93:	divss  xmm2,DWORD PTR [ebx-0x64fc2c]
  6f5d9b:	mulss  xmm2,xmm1
  6f5d9f:	dec    edi
  6f5da0:	xorps  xmm1,xmm1
  6f5da3:	cvtsi2ss xmm1,edi
  6f5da7:	mulss  xmm1,xmm2
  6f5dab:	addss  xmm1,xmm0
  6f5daf:	movss  DWORD PTR [esp+0x10],xmm1
  6f5db5:	xorps  xmm0,xmm0
  6f5db8:	cvtss2sd xmm0,xmm1
  6f5dbc:	lea    eax,[esp+0x50]
  6f5dc0:	mov    DWORD PTR [esp+0x8],eax
  6f5dc4:	movsd  QWORD PTR [esp],xmm0
  6f5dc9:	call   1b93f0
  6f5dce:	movss  xmm1,DWORD PTR [esp+0x10]
  6f5dd4:	xorps  xmm0,xmm0
  6f5dd7:	ucomiss xmm1,xmm0
  6f5dda:	fstp   QWORD PTR [esp+0x48]
  6f5dde:	movsd  xmm0,QWORD PTR [esp+0x48]
  6f5de4:	jae    6f5e1c
  6f5de6:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6f5dee:	jne    6f5e52
  6f5df0:	jp     6f5e52
  6f5df2:	movsd  xmm0,QWORD PTR [esp+0x50]
  6f5df8:	movsd  QWORD PTR [esp+0x20],xmm0
  6f5dfe:	fld    QWORD PTR [esp+0x20]
  6f5e02:	fisttp QWORD PTR [esp+0x18]
  6f5e06:	mov    eax,DWORD PTR [esp+0x18]
  6f5e0a:	test   al,0x1
  6f5e0c:	cvtsd2ss xmm0,xmm0
  6f5e10:	je     6f5e8c
  6f5e12:	addss  xmm0,DWORD PTR [ebx-0x64fc1c]
  6f5e1a:	jmp    6f5e8c
  6f5e1c:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6f5e24:	jne    6f5e70
  6f5e26:	jp     6f5e70
  6f5e28:	movsd  xmm0,QWORD PTR [esp+0x50]
  6f5e2e:	movsd  QWORD PTR [esp+0x38],xmm0
  6f5e34:	fld    QWORD PTR [esp+0x38]
  6f5e38:	fisttp QWORD PTR [esp+0x30]
  6f5e3c:	mov    eax,DWORD PTR [esp+0x30]
  6f5e40:	test   al,0x1
  6f5e42:	cvtsd2ss xmm0,xmm0
  6f5e46:	je     6f5e8c
  6f5e48:	addss  xmm0,DWORD PTR [ebx-0x64fc28]
  6f5e50:	jmp    6f5e8c
  6f5e52:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6f5e5a:	movss  DWORD PTR [esp],xmm1
  6f5e5f:	call   1b9250
  6f5e64:	fstp   DWORD PTR [esp+0x2c]
  6f5e68:	movss  xmm0,DWORD PTR [esp+0x2c]
  6f5e6e:	jmp    6f5e8c
  6f5e70:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6f5e78:	movss  DWORD PTR [esp],xmm1
  6f5e7d:	call   1b9990
  6f5e82:	fstp   DWORD PTR [esp+0x44]
  6f5e86:	movss  xmm0,DWORD PTR [esp+0x44]
  6f5e8c:	movss  DWORD PTR [esp+0x14],xmm0
  6f5e92:	fld    DWORD PTR [esp+0x14]
  6f5e96:	lea    esp,[ebp-0xc]
  6f5e99:	pop    esi
  6f5e9a:	pop    edi
  6f5e9b:	pop    ebx
  6f5e9c:	pop    ebp
  6f5e9d:	ret
  6f5e9e:	call   1fbc48
  6f5ea3:	call   6b106a