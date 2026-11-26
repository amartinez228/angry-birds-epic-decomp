
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0139b0e7:
 139b0e7:	push   ebp
 139b0e8:	mov    ebp,esp
 139b0ea:	push   ebx
 139b0eb:	and    esp,0xfffffff0
 139b0ee:	sub    esp,0x70
 139b0f1:	call   139b0f6
 139b0f6:	pop    ebx
 139b0f7:	add    ebx,0xb76e4e
 139b0fd:	cvtss2sd xmm0,DWORD PTR [ebp+0xc]
 139b102:	movsd  QWORD PTR [esp+0x18],xmm0
 139b108:	lea    eax,[esp+0x58]
 139b10c:	mov    DWORD PTR [esp+0x8],eax
 139b110:	movsd  QWORD PTR [esp],xmm0
 139b115:	call   1b93f0
 139b11a:	xorps  xmm0,xmm0
 139b11d:	movss  xmm1,DWORD PTR [ebp+0xc]
 139b122:	ucomiss xmm1,xmm0
 139b125:	fstp   QWORD PTR [esp+0x50]
 139b129:	movsd  xmm0,QWORD PTR [esp+0x50]
 139b12f:	jae    139b167
 139b131:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
 139b139:	jne    139b199
 139b13b:	jp     139b199
 139b13d:	movsd  xmm0,QWORD PTR [esp+0x58]
 139b143:	movsd  QWORD PTR [esp+0x28],xmm0
 139b149:	fld    QWORD PTR [esp+0x28]
 139b14d:	fisttp QWORD PTR [esp+0x20]
 139b151:	mov    eax,DWORD PTR [esp+0x20]
 139b155:	test   al,0x1
 139b157:	je     139b1df
 139b15d:	addsd  xmm0,QWORD PTR [ebx-0x64f9b4]
 139b165:	jmp    139b1df
 139b167:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
 139b16f:	jne    139b1bd
 139b171:	jp     139b1bd
 139b173:	movsd  xmm0,QWORD PTR [esp+0x58]
 139b179:	movsd  QWORD PTR [esp+0x40],xmm0
 139b17f:	fld    QWORD PTR [esp+0x40]
 139b183:	fisttp QWORD PTR [esp+0x38]
 139b187:	mov    eax,DWORD PTR [esp+0x38]
 139b18b:	test   al,0x1
 139b18d:	je     139b1df
 139b18f:	addsd  xmm0,QWORD PTR [ebx-0x6b28a4]
 139b197:	jmp    139b1df
 139b199:	movsd  xmm0,QWORD PTR [esp+0x18]
 139b19f:	addsd  xmm0,QWORD PTR [ebx-0x6b2884]
 139b1a7:	movsd  QWORD PTR [esp],xmm0
 139b1ac:	call   1ba420
 139b1b1:	fstp   QWORD PTR [esp+0x30]
 139b1b5:	movsd  xmm0,QWORD PTR [esp+0x30]
 139b1bb:	jmp    139b1df
 139b1bd:	movsd  xmm0,QWORD PTR [esp+0x18]
 139b1c3:	addsd  xmm0,QWORD PTR [ebx-0x6b2894]
 139b1cb:	movsd  QWORD PTR [esp],xmm0
 139b1d0:	call   1b9c80
 139b1d5:	fstp   QWORD PTR [esp+0x48]
 139b1d9:	movsd  xmm0,QWORD PTR [esp+0x48]
 139b1df:	cvttsd2si eax,xmm0
 139b1e3:	lea    esp,[ebp-0x4]
 139b1e6:	pop    ebx
 139b1e7:	pop    ebp
 139b1e8:	ret