
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148fc8f:
 148fc8f:	push   ebp
 148fc90:	mov    ebp,esp
 148fc92:	push   ebx
 148fc93:	push   edi
 148fc94:	push   esi
 148fc95:	and    esp,0xfffffff0
 148fc98:	sub    esp,0x20
 148fc9b:	call   148fca0
 148fca0:	pop    ebx
 148fca1:	add    ebx,0xa822a4
 148fca7:	mov    esi,DWORD PTR [ebp+0xc]
 148fcaa:	mov    al,BYTE PTR [ebx+0x6591d]
 148fcb0:	test   al,al
 148fcb2:	jne    148fccb
 148fcb4:	lea    eax,[ebx-0x657578]
 148fcba:	mov    eax,DWORD PTR [eax]
 148fcbc:	mov    DWORD PTR [esp],eax
 148fcbf:	call   1ca6e8
 148fcc4:	mov    BYTE PTR [ebx+0x6591d],0x1
 148fccb:	test   esi,esi
 148fccd:	je     148fe23
 148fcd3:	lea    eax,[ebx+0x45874]
 148fcd9:	mov    DWORD PTR [esp+0x14],eax
 148fcdd:	mov    eax,DWORD PTR [eax]
 148fcdf:	mov    ecx,DWORD PTR [esi]
 148fce1:	movzx  edx,WORD PTR [ecx+0xaa]
 148fce8:	test   edx,edx
 148fcea:	je     148fcfb
 148fcec:	mov    esi,DWORD PTR [ecx+0x4c]
 148fcef:	xor    edi,edi
 148fcf1:	cmp    DWORD PTR [esi+edi*8],eax
 148fcf4:	je     148fd16
 148fcf6:	inc    edi
 148fcf7:	cmp    edi,edx
 148fcf9:	jb     148fcf1
 148fcfb:	mov    DWORD PTR [esp+0x4],eax
 148fcff:	mov    esi,DWORD PTR [ebp+0xc]
 148fd02:	mov    DWORD PTR [esp],esi
 148fd05:	mov    DWORD PTR [esp+0x8],0x2f
 148fd0d:	call   1c1964
 148fd12:	mov    ecx,eax
 148fd14:	jmp    148fd24
 148fd16:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 148fd1a:	lea    ecx,[ecx+eax*8+0x22c]
 148fd21:	mov    esi,DWORD PTR [ebp+0xc]
 148fd24:	mov    DWORD PTR [esp+0x10],ebx
 148fd28:	mov    eax,DWORD PTR [ecx+0x4]
 148fd2b:	mov    DWORD PTR [esp+0x4],eax
 148fd2f:	mov    DWORD PTR [esp],esi
 148fd32:	call   DWORD PTR [ecx]
 148fd34:	mov    DWORD PTR [esp+0xc],eax
 148fd38:	mov    eax,DWORD PTR [ebp+0x8]
 148fd3b:	mov    esi,DWORD PTR [eax+0x8]
 148fd3e:	test   esi,esi
 148fd40:	je     148fe1f
 148fd46:	mov    eax,DWORD PTR [esp+0x14]
 148fd4a:	mov    eax,DWORD PTR [eax]
 148fd4c:	mov    ebx,DWORD PTR [esi]
 148fd4e:	movzx  edx,WORD PTR [ebx+0xaa]
 148fd55:	test   edx,edx
 148fd57:	je     148fd68
 148fd59:	mov    edi,DWORD PTR [ebx+0x4c]
 148fd5c:	xor    ecx,ecx
 148fd5e:	cmp    DWORD PTR [edi+ecx*8],eax
 148fd61:	je     148fd84
 148fd63:	inc    ecx
 148fd64:	cmp    ecx,edx
 148fd66:	jb     148fd5e
 148fd68:	mov    DWORD PTR [esp+0x4],eax
 148fd6c:	mov    DWORD PTR [esp],esi
 148fd6f:	mov    DWORD PTR [esp+0x8],0x2f
 148fd77:	mov    ebx,DWORD PTR [esp+0x10]
 148fd7b:	call   1c1964
 148fd80:	mov    ecx,eax
 148fd82:	jmp    148fd93
 148fd84:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 148fd88:	lea    ecx,[ebx+eax*8+0x22c]
 148fd8f:	mov    ebx,DWORD PTR [esp+0x10]
 148fd93:	mov    eax,DWORD PTR [ecx+0x4]
 148fd96:	mov    DWORD PTR [esp+0x4],eax
 148fd9a:	mov    DWORD PTR [esp],esi
 148fd9d:	call   DWORD PTR [ecx]
 148fd9f:	cmp    DWORD PTR [esp+0xc],eax
 148fda3:	jne    148fde3
 148fda5:	mov    eax,DWORD PTR [esp+0x14]
 148fda9:	mov    eax,DWORD PTR [eax]
 148fdab:	mov    ecx,DWORD PTR [ebp+0xc]
 148fdae:	mov    ecx,DWORD PTR [ecx]
 148fdb0:	movzx  edx,WORD PTR [ecx+0xaa]
 148fdb7:	test   edx,edx
 148fdb9:	je     148fdca
 148fdbb:	mov    esi,DWORD PTR [ecx+0x4c]
 148fdbe:	xor    edi,edi
 148fdc0:	cmp    DWORD PTR [esi+edi*8],eax
 148fdc3:	je     148fde7
 148fdc5:	inc    edi
 148fdc6:	cmp    edi,edx
 148fdc8:	jb     148fdc0
 148fdca:	mov    DWORD PTR [esp+0x4],eax
 148fdce:	mov    esi,DWORD PTR [ebp+0xc]
 148fdd1:	mov    DWORD PTR [esp],esi
 148fdd4:	mov    DWORD PTR [esp+0x8],0x1f
 148fddc:	call   1c1964
 148fde1:	jmp    148fdf5
 148fde3:	xor    eax,eax
 148fde5:	jmp    148fe14
 148fde7:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 148fdeb:	lea    eax,[ecx+eax*8+0x1ac]
 148fdf2:	mov    esi,DWORD PTR [ebp+0xc]
 148fdf5:	mov    ecx,DWORD PTR [eax+0x4]
 148fdf8:	mov    DWORD PTR [esp+0x4],ecx
 148fdfc:	mov    DWORD PTR [esp],esi
 148fdff:	call   DWORD PTR [eax]
 148fe01:	fstp   DWORD PTR [esp+0x18]
 148fe05:	movss  xmm0,DWORD PTR [esp+0x18]
 148fe0b:	xorps  xmm1,xmm1
 148fe0e:	ucomiss xmm0,xmm1
 148fe11:	seta   al
 148fe14:	movzx  eax,al
 148fe17:	lea    esp,[ebp-0xc]
 148fe1a:	pop    esi
 148fe1b:	pop    edi
 148fe1c:	pop    ebx
 148fe1d:	pop    ebp
 148fe1e:	ret
 148fe1f:	mov    ebx,DWORD PTR [esp+0x10]
 148fe23:	call   1fbc48
 148fe28:	call   14943fc