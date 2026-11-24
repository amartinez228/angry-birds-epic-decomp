
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050fe4a:
  50fe4a:	push   ebp
  50fe4b:	mov    ebp,esp
  50fe4d:	push   ebx
  50fe4e:	push   edi
  50fe4f:	push   esi
  50fe50:	and    esp,0xfffffff0
  50fe53:	sub    esp,0x20
  50fe56:	call   50fe5b
  50fe5b:	pop    ebx
  50fe5c:	add    ebx,0x1a020e9
  50fe62:	mov    esi,DWORD PTR [ebp+0xc]
  50fe65:	mov    al,BYTE PTR [ebx+0x5d518]
  50fe6b:	test   al,al
  50fe6d:	jne    50fe86
  50fe6f:	lea    eax,[ebx-0x66f488]
  50fe75:	mov    eax,DWORD PTR [eax]
  50fe77:	mov    DWORD PTR [esp],eax
  50fe7a:	call   1ca6e8
  50fe7f:	mov    BYTE PTR [ebx+0x5d518],0x1
  50fe86:	test   esi,esi
  50fe88:	je     50ff58
  50fe8e:	lea    eax,[ebx+0x45874]
  50fe94:	mov    DWORD PTR [esp+0x18],eax
  50fe98:	mov    eax,DWORD PTR [eax]
  50fe9a:	mov    ecx,DWORD PTR [esi]
  50fe9c:	movzx  edx,WORD PTR [ecx+0xaa]
  50fea3:	test   edx,edx
  50fea5:	je     50feb6
  50fea7:	mov    esi,DWORD PTR [ecx+0x4c]
  50feaa:	xor    edi,edi
  50feac:	cmp    DWORD PTR [esi+edi*8],eax
  50feaf:	je     50fecf
  50feb1:	inc    edi
  50feb2:	cmp    edi,edx
  50feb4:	jb     50feac
  50feb6:	mov    DWORD PTR [esp+0x4],eax
  50feba:	mov    esi,DWORD PTR [ebp+0xc]
  50febd:	mov    DWORD PTR [esp],esi
  50fec0:	mov    DWORD PTR [esp+0x8],0x8
  50fec8:	call   1c1964
  50fecd:	jmp    50fedd
  50fecf:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50fed3:	lea    eax,[ecx+eax*8+0xf4]
  50feda:	mov    esi,DWORD PTR [ebp+0xc]
  50fedd:	mov    ecx,DWORD PTR [eax+0x4]
  50fee0:	mov    DWORD PTR [esp+0x8],ecx
  50fee4:	mov    DWORD PTR [esp],esi
  50fee7:	mov    DWORD PTR [esp+0x4],0x0
  50feef:	call   DWORD PTR [eax]
  50fef1:	mov    eax,DWORD PTR [esp+0x18]
  50fef5:	mov    eax,DWORD PTR [eax]
  50fef7:	mov    ecx,DWORD PTR [esi]
  50fef9:	movzx  edx,WORD PTR [ecx+0xaa]
  50ff00:	test   edx,edx
  50ff02:	je     50ff13
  50ff04:	mov    esi,DWORD PTR [ecx+0x4c]
  50ff07:	xor    edi,edi
  50ff09:	cmp    DWORD PTR [esi+edi*8],eax
  50ff0c:	je     50ff2e
  50ff0e:	inc    edi
  50ff0f:	cmp    edi,edx
  50ff11:	jb     50ff09
  50ff13:	mov    DWORD PTR [esp+0x4],eax
  50ff17:	mov    esi,DWORD PTR [ebp+0xc]
  50ff1a:	mov    DWORD PTR [esp],esi
  50ff1d:	mov    DWORD PTR [esp+0x8],0x3a
  50ff25:	call   1c1964
  50ff2a:	mov    ecx,eax
  50ff2c:	jmp    50ff3c
  50ff2e:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50ff32:	lea    ecx,[ecx+eax*8+0x284]
  50ff39:	mov    esi,DWORD PTR [ebp+0xc]
  50ff3c:	mov    eax,DWORD PTR [ecx+0x4]
  50ff3f:	mov    DWORD PTR [esp+0x8],eax
  50ff43:	mov    DWORD PTR [esp],esi
  50ff46:	mov    DWORD PTR [esp+0x4],0x0
  50ff4e:	call   DWORD PTR [ecx]
  50ff50:	lea    esp,[ebp-0xc]
  50ff53:	pop    esi
  50ff54:	pop    edi
  50ff55:	pop    ebx
  50ff56:	pop    ebp
  50ff57:	ret
  50ff58:	call   1fbc48
  50ff5d:	call   540b98