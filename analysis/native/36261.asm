
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148ec66:
 148ec66:	push   ebp
 148ec67:	mov    ebp,esp
 148ec69:	push   ebx
 148ec6a:	push   edi
 148ec6b:	push   esi
 148ec6c:	and    esp,0xfffffff0
 148ec6f:	sub    esp,0x20
 148ec72:	call   148ec77
 148ec77:	pop    ebx
 148ec78:	add    ebx,0xa832cd
 148ec7e:	mov    esi,DWORD PTR [ebp+0xc]
 148ec81:	mov    al,BYTE PTR [ebx+0x65918]
 148ec87:	test   al,al
 148ec89:	jne    148eca2
 148ec8b:	lea    eax,[ebx-0x65756c]
 148ec91:	mov    eax,DWORD PTR [eax]
 148ec93:	mov    DWORD PTR [esp],eax
 148ec96:	call   1ca6e8
 148ec9b:	mov    BYTE PTR [ebx+0x65918],0x1
 148eca2:	test   esi,esi
 148eca4:	je     148ed84
 148ecaa:	lea    eax,[ebx+0x45874]
 148ecb0:	mov    DWORD PTR [esp+0x18],eax
 148ecb4:	mov    eax,DWORD PTR [eax]
 148ecb6:	mov    ecx,DWORD PTR [esi]
 148ecb8:	movzx  edx,WORD PTR [ecx+0xaa]
 148ecbf:	test   edx,edx
 148ecc1:	je     148ecd2
 148ecc3:	mov    esi,DWORD PTR [ecx+0x4c]
 148ecc6:	xor    edi,edi
 148ecc8:	cmp    DWORD PTR [esi+edi*8],eax
 148eccb:	je     148eced
 148eccd:	inc    edi
 148ecce:	cmp    edi,edx
 148ecd0:	jb     148ecc8
 148ecd2:	mov    DWORD PTR [esp+0x4],eax
 148ecd6:	mov    esi,DWORD PTR [ebp+0xc]
 148ecd9:	mov    DWORD PTR [esp],esi
 148ecdc:	mov    DWORD PTR [esp+0x8],0x2f
 148ece4:	call   1c1964
 148ece9:	mov    ecx,eax
 148eceb:	jmp    148ecfb
 148eced:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 148ecf1:	lea    ecx,[ecx+eax*8+0x22c]
 148ecf8:	mov    esi,DWORD PTR [ebp+0xc]
 148ecfb:	mov    eax,DWORD PTR [ecx+0x4]
 148ecfe:	mov    DWORD PTR [esp+0x4],eax
 148ed02:	mov    DWORD PTR [esp],esi
 148ed05:	call   DWORD PTR [ecx]
 148ed07:	mov    DWORD PTR [esp+0x14],eax
 148ed0b:	mov    eax,DWORD PTR [ebp+0x8]
 148ed0e:	mov    esi,DWORD PTR [eax+0x8]
 148ed11:	test   esi,esi
 148ed13:	je     148ed84
 148ed15:	mov    eax,DWORD PTR [esp+0x18]
 148ed19:	mov    eax,DWORD PTR [eax]
 148ed1b:	mov    ecx,DWORD PTR [esi]
 148ed1d:	mov    DWORD PTR [esp+0x18],ecx
 148ed21:	movzx  edx,WORD PTR [ecx+0xaa]
 148ed28:	test   edx,edx
 148ed2a:	je     148ed3f
 148ed2c:	mov    ecx,DWORD PTR [esp+0x18]
 148ed30:	mov    edi,DWORD PTR [ecx+0x4c]
 148ed33:	xor    ecx,ecx
 148ed35:	cmp    DWORD PTR [edi+ecx*8],eax
 148ed38:	je     148ed57
 148ed3a:	inc    ecx
 148ed3b:	cmp    ecx,edx
 148ed3d:	jb     148ed35
 148ed3f:	mov    DWORD PTR [esp+0x4],eax
 148ed43:	mov    DWORD PTR [esp],esi
 148ed46:	mov    DWORD PTR [esp+0x8],0x2f
 148ed4e:	call   1c1964
 148ed53:	mov    ecx,eax
 148ed55:	jmp    148ed66
 148ed57:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 148ed5b:	mov    ecx,DWORD PTR [esp+0x18]
 148ed5f:	lea    ecx,[ecx+eax*8+0x22c]
 148ed66:	mov    eax,DWORD PTR [ecx+0x4]
 148ed69:	mov    DWORD PTR [esp+0x4],eax
 148ed6d:	mov    DWORD PTR [esp],esi
 148ed70:	call   DWORD PTR [ecx]
 148ed72:	cmp    DWORD PTR [esp+0x14],eax
 148ed76:	sete   al
 148ed79:	movzx  eax,al
 148ed7c:	lea    esp,[ebp-0xc]
 148ed7f:	pop    esi
 148ed80:	pop    edi
 148ed81:	pop    ebx
 148ed82:	pop    ebp
 148ed83:	ret
 148ed84:	call   1fbc48
 148ed89:	call   14943fc