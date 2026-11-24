
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014789a2:
 14789a2:	push   ebp
 14789a3:	mov    ebp,esp
 14789a5:	push   ebx
 14789a6:	push   edi
 14789a7:	push   esi
 14789a8:	and    esp,0xfffffff0
 14789ab:	sub    esp,0x50
 14789ae:	call   14789b3
 14789b3:	pop    ebx
 14789b4:	add    ebx,0xa99591
 14789ba:	mov    edx,DWORD PTR [ebp+0x8]
 14789bd:	mov    edi,DWORD PTR [edx+0xf0]
 14789c3:	test   edi,edi
 14789c5:	je     1478b08
 14789cb:	lea    eax,[ebp+0x10]
 14789ce:	mov    esi,DWORD PTR [ebp+0xc]
 14789d1:	mov    ecx,DWORD PTR [eax+0x8]
 14789d4:	mov    DWORD PTR [esp+0x48],ecx
 14789d8:	movsd  xmm0,QWORD PTR [eax]
 14789dc:	movsd  QWORD PTR [esp+0x40],xmm0
 14789e2:	cmp    DWORD PTR [edi+0xc],esi
 14789e5:	ja     14789f7
 14789e7:	call   1fc7e4
 14789ec:	mov    DWORD PTR [esp],eax
 14789ef:	call   1fbb20
 14789f4:	mov    edx,DWORD PTR [ebp+0x8]
 14789f7:	imul   eax,esi,0xc
 14789fa:	mov    ecx,DWORD PTR [esp+0x48]
 14789fe:	mov    DWORD PTR [edi+eax*1+0x18],ecx
 1478a02:	movsd  xmm0,QWORD PTR [esp+0x40]
 1478a08:	movsd  QWORD PTR [edi+eax*1+0x10],xmm0
 1478a0e:	mov    edi,DWORD PTR [edx+0xf0]
 1478a14:	test   edi,edi
 1478a16:	je     1478b08
 1478a1c:	lea    eax,[ebp+0x1c]
 1478a1f:	mov    ecx,DWORD PTR [eax+0x8]
 1478a22:	mov    DWORD PTR [esp+0x38],ecx
 1478a26:	movsd  xmm0,QWORD PTR [eax]
 1478a2a:	movsd  QWORD PTR [esp+0x30],xmm0
 1478a30:	lea    esi,[esi+0x1]
 1478a33:	cmp    DWORD PTR [edi+0xc],esi
 1478a36:	ja     1478a48
 1478a38:	call   1fc7e4
 1478a3d:	mov    DWORD PTR [esp],eax
 1478a40:	call   1fbb20
 1478a45:	mov    edx,DWORD PTR [ebp+0x8]
 1478a48:	imul   eax,esi,0xc
 1478a4b:	mov    ecx,DWORD PTR [esp+0x38]
 1478a4f:	mov    DWORD PTR [edi+eax*1+0x18],ecx
 1478a53:	movsd  xmm0,QWORD PTR [esp+0x30]
 1478a59:	movsd  QWORD PTR [edi+eax*1+0x10],xmm0
 1478a5f:	mov    edi,DWORD PTR [edx+0xf0]
 1478a65:	test   edi,edi
 1478a67:	je     1478b08
 1478a6d:	lea    eax,[ebp+0x28]
 1478a70:	mov    ecx,DWORD PTR [eax+0x8]
 1478a73:	mov    DWORD PTR [esp+0x28],ecx
 1478a77:	movsd  xmm0,QWORD PTR [eax]
 1478a7b:	movsd  QWORD PTR [esp+0x20],xmm0
 1478a81:	mov    eax,DWORD PTR [ebp+0xc]
 1478a84:	lea    esi,[eax+0x2]
 1478a87:	cmp    DWORD PTR [edi+0xc],esi
 1478a8a:	ja     1478a9c
 1478a8c:	call   1fc7e4
 1478a91:	mov    DWORD PTR [esp],eax
 1478a94:	call   1fbb20
 1478a99:	mov    edx,DWORD PTR [ebp+0x8]
 1478a9c:	imul   eax,esi,0xc
 1478a9f:	mov    ecx,DWORD PTR [esp+0x28]
 1478aa3:	mov    DWORD PTR [edi+eax*1+0x18],ecx
 1478aa7:	movsd  xmm0,QWORD PTR [esp+0x20]
 1478aad:	movsd  QWORD PTR [edi+eax*1+0x10],xmm0
 1478ab3:	mov    edi,DWORD PTR [edx+0xf0]
 1478ab9:	test   edi,edi
 1478abb:	je     1478b08
 1478abd:	lea    eax,[ebp+0x34]
 1478ac0:	mov    ecx,DWORD PTR [eax+0x8]
 1478ac3:	mov    DWORD PTR [esp+0x18],ecx
 1478ac7:	movsd  xmm0,QWORD PTR [eax]
 1478acb:	movsd  QWORD PTR [esp+0x10],xmm0
 1478ad1:	mov    esi,DWORD PTR [ebp+0xc]
 1478ad4:	add    esi,0x3
 1478ad7:	cmp    DWORD PTR [edi+0xc],esi
 1478ada:	ja     1478ae9
 1478adc:	call   1fc7e4
 1478ae1:	mov    DWORD PTR [esp],eax
 1478ae4:	call   1fbb20
 1478ae9:	imul   eax,esi,0xc
 1478aec:	mov    ecx,DWORD PTR [esp+0x18]
 1478af0:	mov    DWORD PTR [edi+eax*1+0x18],ecx
 1478af4:	movsd  xmm0,QWORD PTR [esp+0x10]
 1478afa:	movsd  QWORD PTR [edi+eax*1+0x10],xmm0
 1478b00:	lea    esp,[ebp-0xc]
 1478b03:	pop    esi
 1478b04:	pop    edi
 1478b05:	pop    ebx
 1478b06:	pop    ebp
 1478b07:	ret
 1478b08:	call   1fbc48
 1478b0d:	call   14745da