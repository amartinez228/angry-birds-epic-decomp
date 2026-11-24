
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050f9f6:
  50f9f6:	push   ebp
  50f9f7:	mov    ebp,esp
  50f9f9:	push   ebx
  50f9fa:	push   edi
  50f9fb:	push   esi
  50f9fc:	and    esp,0xfffffff0
  50f9ff:	sub    esp,0x40
  50fa02:	call   50fa07
  50fa07:	pop    ebx
  50fa08:	add    ebx,0x1a0253d
  50fa0e:	mov    esi,DWORD PTR [ebp+0xc]
  50fa11:	mov    al,BYTE PTR [ebx+0x5d51b]
  50fa17:	test   al,al
  50fa19:	jne    50fa32
  50fa1b:	lea    eax,[ebx-0x66f434]
  50fa21:	mov    eax,DWORD PTR [eax]
  50fa23:	mov    DWORD PTR [esp],eax
  50fa26:	call   1ca6e8
  50fa2b:	mov    BYTE PTR [ebx+0x5d51b],0x1
  50fa32:	test   esi,esi
  50fa34:	je     50fe36
  50fa3a:	lea    eax,[ebx+0x45874]
  50fa40:	mov    DWORD PTR [esp+0x24],eax
  50fa44:	mov    eax,DWORD PTR [eax]
  50fa46:	mov    ecx,DWORD PTR [esi]
  50fa48:	movzx  edx,WORD PTR [ecx+0xaa]
  50fa4f:	test   edx,edx
  50fa51:	je     50fa62
  50fa53:	mov    esi,DWORD PTR [ecx+0x4c]
  50fa56:	xor    edi,edi
  50fa58:	cmp    DWORD PTR [esi+edi*8],eax
  50fa5b:	je     50fa7d
  50fa5d:	inc    edi
  50fa5e:	cmp    edi,edx
  50fa60:	jb     50fa58
  50fa62:	mov    DWORD PTR [esp+0x4],eax
  50fa66:	mov    esi,DWORD PTR [ebp+0xc]
  50fa69:	mov    DWORD PTR [esp],esi
  50fa6c:	mov    DWORD PTR [esp+0x8],0x6
  50fa74:	call   1c1964
  50fa79:	mov    ecx,eax
  50fa7b:	jmp    50fa8b
  50fa7d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50fa81:	lea    ecx,[ecx+eax*8+0xe4]
  50fa88:	mov    esi,DWORD PTR [ebp+0xc]
  50fa8b:	mov    eax,DWORD PTR [ecx+0x4]
  50fa8e:	mov    DWORD PTR [esp+0x4],eax
  50fa92:	mov    DWORD PTR [esp],esi
  50fa95:	call   DWORD PTR [ecx]
  50fa97:	xor    ecx,ecx
  50fa99:	test   eax,eax
  50fa9b:	je     50fe40
  50faa1:	mov    DWORD PTR [esp+0x28],0x0
  50faa9:	mov    DWORD PTR [esp+0x2c],ebx
  50faad:	xorps  xmm0,xmm0
  50fab0:	movss  DWORD PTR [esp+0x20],xmm0
  50fab6:	jmp    50fae7
  50fab8:	mov    DWORD PTR [esp],eax
  50fabb:	mov    DWORD PTR [esp+0x4],0x0
  50fac3:	mov    DWORD PTR [esp+0x2c],ebx
  50fac7:	call   179aea3  ; ABH.Shared.Models.Generic.AiCombo::get_Percentage
  50facc:	fstp   DWORD PTR [esp+0x30]
  50fad0:	movss  xmm0,DWORD PTR [esp+0x20]
  50fad6:	addss  xmm0,DWORD PTR [esp+0x30]
  50fadc:	movss  DWORD PTR [esp+0x20],xmm0
  50fae2:	inc    edi
  50fae3:	mov    DWORD PTR [esp+0x28],edi
  50fae7:	mov    eax,DWORD PTR [esp+0x24]
  50faeb:	mov    eax,DWORD PTR [eax]
  50faed:	mov    ecx,DWORD PTR [esi]
  50faef:	mov    ebx,esi
  50faf1:	movzx  edx,WORD PTR [ecx+0xaa]
  50faf8:	test   edx,edx
  50fafa:	je     50fb0b
  50fafc:	mov    esi,DWORD PTR [ecx+0x4c]
  50faff:	xor    edi,edi
  50fb01:	cmp    DWORD PTR [esi+edi*8],eax
  50fb04:	je     50fb29
  50fb06:	inc    edi
  50fb07:	cmp    edi,edx
  50fb09:	jb     50fb01
  50fb0b:	mov    DWORD PTR [esp+0x4],eax
  50fb0f:	mov    esi,ebx
  50fb11:	mov    DWORD PTR [esp],esi
  50fb14:	mov    DWORD PTR [esp+0x8],0x6
  50fb1c:	mov    ebx,DWORD PTR [esp+0x2c]
  50fb20:	call   1c1964
  50fb25:	mov    ecx,eax
  50fb27:	jmp    50fb3a
  50fb29:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50fb2d:	lea    ecx,[ecx+eax*8+0xe4]
  50fb34:	mov    esi,ebx
  50fb36:	mov    ebx,DWORD PTR [esp+0x2c]
  50fb3a:	mov    eax,DWORD PTR [ecx+0x4]
  50fb3d:	mov    DWORD PTR [esp+0x4],eax
  50fb41:	mov    DWORD PTR [esp],esi
  50fb44:	call   DWORD PTR [ecx]
  50fb46:	test   eax,eax
  50fb48:	mov    edi,DWORD PTR [esp+0x28]
  50fb4c:	je     50fe36
  50fb52:	lea    esi,[ebx+0x4ac38]
  50fb58:	mov    ecx,DWORD PTR [esi]
  50fb5a:	mov    DWORD PTR [esp+0x4],ecx
  50fb5e:	mov    DWORD PTR [esp],eax
  50fb61:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  50fb66:	cmp    edi,eax
  50fb68:	jge    50fc03
  50fb6e:	mov    eax,DWORD PTR [esp+0x24]
  50fb72:	mov    eax,DWORD PTR [eax]
  50fb74:	mov    ecx,DWORD PTR [ebp+0xc]
  50fb77:	mov    edx,ecx
  50fb79:	mov    ecx,DWORD PTR [edx]
  50fb7b:	mov    ebx,edx
  50fb7d:	movzx  edx,WORD PTR [ecx+0xaa]
  50fb84:	test   edx,edx
  50fb86:	je     50fb97
  50fb88:	mov    esi,DWORD PTR [ecx+0x4c]
  50fb8b:	xor    edi,edi
  50fb8d:	cmp    DWORD PTR [esi+edi*8],eax
  50fb90:	je     50fbb5
  50fb92:	inc    edi
  50fb93:	cmp    edi,edx
  50fb95:	jb     50fb8d
  50fb97:	mov    DWORD PTR [esp+0x4],eax
  50fb9b:	mov    esi,ebx
  50fb9d:	mov    DWORD PTR [esp],esi
  50fba0:	mov    DWORD PTR [esp+0x8],0x6
  50fba8:	mov    ebx,DWORD PTR [esp+0x2c]
  50fbac:	call   1c1964
  50fbb1:	mov    ecx,eax
  50fbb3:	jmp    50fbc6
  50fbb5:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50fbb9:	lea    ecx,[ecx+eax*8+0xe4]
  50fbc0:	mov    esi,ebx
  50fbc2:	mov    ebx,DWORD PTR [esp+0x2c]
  50fbc6:	mov    eax,DWORD PTR [ecx+0x4]
  50fbc9:	mov    DWORD PTR [esp+0x4],eax
  50fbcd:	mov    DWORD PTR [esp],esi
  50fbd0:	call   DWORD PTR [ecx]
  50fbd2:	test   eax,eax
  50fbd4:	mov    edi,DWORD PTR [esp+0x28]
  50fbd8:	je     50fe36
  50fbde:	lea    ecx,[ebx+0x4b2fc]
  50fbe4:	mov    ecx,DWORD PTR [ecx]
  50fbe6:	mov    DWORD PTR [esp+0x8],ecx
  50fbea:	mov    DWORD PTR [esp+0x4],edi
  50fbee:	mov    DWORD PTR [esp],eax
  50fbf1:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  50fbf6:	test   eax,eax
  50fbf8:	jne    50fab8
  50fbfe:	jmp    50fe36
  50fc03:	mov    DWORD PTR [esp+0x18],esi
  50fc07:	movss  xmm0,DWORD PTR [esp+0x20]
  50fc0d:	movss  DWORD PTR [esp+0x8],xmm0
  50fc13:	mov    DWORD PTR [esp+0xc],0x0
  50fc1b:	mov    DWORD PTR [esp+0x4],0x0
  50fc23:	mov    DWORD PTR [esp],0x0
  50fc2a:	mov    DWORD PTR [esp+0x2c],ebx
  50fc2e:	call   167ea91  ; UnityEngine.Random::Range
  50fc33:	fstp   DWORD PTR [esp+0x38]
  50fc37:	movss  xmm0,DWORD PTR [esp+0x38]
  50fc3d:	movss  DWORD PTR [esp+0x14],xmm0
  50fc43:	mov    DWORD PTR [esp+0x28],0x0
  50fc4b:	xorps  xmm0,xmm0
  50fc4e:	movss  DWORD PTR [esp+0x1c],xmm0
  50fc54:	mov    DWORD PTR [esp+0x20],0x0
  50fc5c:	mov    edi,DWORD PTR [ebp+0xc]
  50fc5f:	jmp    50fc8c
  50fc61:	mov    DWORD PTR [esp],eax
  50fc64:	mov    DWORD PTR [esp+0x4],0x0
  50fc6c:	call   179aea3  ; ABH.Shared.Models.Generic.AiCombo::get_Percentage
  50fc71:	fstp   DWORD PTR [esp+0x34]
  50fc75:	movss  xmm0,DWORD PTR [esp+0x1c]
  50fc7b:	addss  xmm0,DWORD PTR [esp+0x34]
  50fc81:	movss  DWORD PTR [esp+0x1c],xmm0
  50fc87:	inc    esi
  50fc88:	mov    DWORD PTR [esp+0x20],esi
  50fc8c:	mov    eax,DWORD PTR [esp+0x24]
  50fc90:	mov    eax,DWORD PTR [eax]
  50fc92:	mov    ecx,DWORD PTR [edi]
  50fc94:	mov    ebx,edi
  50fc96:	movzx  edx,WORD PTR [ecx+0xaa]
  50fc9d:	test   edx,edx
  50fc9f:	je     50fcb0
  50fca1:	mov    esi,DWORD PTR [ecx+0x4c]
  50fca4:	xor    edi,edi
  50fca6:	cmp    DWORD PTR [esi+edi*8],eax
  50fca9:	je     50fcce
  50fcab:	inc    edi
  50fcac:	cmp    edi,edx
  50fcae:	jb     50fca6
  50fcb0:	mov    DWORD PTR [esp+0x4],eax
  50fcb4:	mov    esi,ebx
  50fcb6:	mov    DWORD PTR [esp],esi
  50fcb9:	mov    DWORD PTR [esp+0x8],0x6
  50fcc1:	mov    ebx,DWORD PTR [esp+0x2c]
  50fcc5:	call   1c1964
  50fcca:	mov    ecx,eax
  50fccc:	jmp    50fcdf
  50fcce:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50fcd2:	lea    ecx,[ecx+eax*8+0xe4]
  50fcd9:	mov    esi,ebx
  50fcdb:	mov    ebx,DWORD PTR [esp+0x2c]
  50fcdf:	mov    eax,DWORD PTR [ecx+0x4]
  50fce2:	mov    DWORD PTR [esp+0x4],eax
  50fce6:	mov    DWORD PTR [esp],esi
  50fce9:	call   DWORD PTR [ecx]
  50fceb:	test   eax,eax
  50fced:	mov    ecx,DWORD PTR [esp+0x18]
  50fcf1:	mov    edi,DWORD PTR [esp+0x20]
  50fcf5:	je     50fe36
  50fcfb:	mov    ecx,DWORD PTR [ecx]
  50fcfd:	mov    DWORD PTR [esp+0x4],ecx
  50fd01:	mov    DWORD PTR [esp],eax
  50fd04:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  50fd09:	cmp    edi,eax
  50fd0b:	mov    ecx,DWORD PTR [esp+0x28]
  50fd0f:	jge    50fe40
  50fd15:	movss  xmm0,DWORD PTR [esp+0x14]
  50fd1b:	ucomiss xmm0,DWORD PTR [esp+0x1c]
  50fd20:	jb     50fdab
  50fd26:	mov    eax,DWORD PTR [esp+0x24]
  50fd2a:	mov    eax,DWORD PTR [eax]
  50fd2c:	mov    ecx,DWORD PTR [esi]
  50fd2e:	mov    ebx,esi
  50fd30:	movzx  edx,WORD PTR [ecx+0xaa]
  50fd37:	test   edx,edx
  50fd39:	je     50fd4a
  50fd3b:	mov    esi,DWORD PTR [ecx+0x4c]
  50fd3e:	xor    edi,edi
  50fd40:	cmp    DWORD PTR [esi+edi*8],eax
  50fd43:	je     50fd68
  50fd45:	inc    edi
  50fd46:	cmp    edi,edx
  50fd48:	jb     50fd40
  50fd4a:	mov    DWORD PTR [esp+0x4],eax
  50fd4e:	mov    esi,ebx
  50fd50:	mov    DWORD PTR [esp],esi
  50fd53:	mov    DWORD PTR [esp+0x8],0x6
  50fd5b:	mov    ebx,DWORD PTR [esp+0x2c]
  50fd5f:	call   1c1964
  50fd64:	mov    ecx,eax
  50fd66:	jmp    50fd79
  50fd68:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50fd6c:	lea    ecx,[ecx+eax*8+0xe4]
  50fd73:	mov    esi,ebx
  50fd75:	mov    ebx,DWORD PTR [esp+0x2c]
  50fd79:	mov    eax,DWORD PTR [ecx+0x4]
  50fd7c:	mov    DWORD PTR [esp+0x4],eax
  50fd80:	mov    DWORD PTR [esp],esi
  50fd83:	call   DWORD PTR [ecx]
  50fd85:	test   eax,eax
  50fd87:	mov    edx,DWORD PTR [esp+0x20]
  50fd8b:	je     50fe36
  50fd91:	lea    ecx,[ebx+0x4b2fc]
  50fd97:	mov    ecx,DWORD PTR [ecx]
  50fd99:	mov    DWORD PTR [esp+0x8],ecx
  50fd9d:	mov    DWORD PTR [esp+0x4],edx
  50fda1:	mov    DWORD PTR [esp],eax
  50fda4:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  50fda9:	mov    ecx,eax
  50fdab:	mov    DWORD PTR [esp+0x28],ecx
  50fdaf:	mov    eax,DWORD PTR [esp+0x24]
  50fdb3:	mov    eax,DWORD PTR [eax]
  50fdb5:	mov    ecx,DWORD PTR [esi]
  50fdb7:	mov    ebx,esi
  50fdb9:	movzx  edx,WORD PTR [ecx+0xaa]
  50fdc0:	test   edx,edx
  50fdc2:	je     50fdd3
  50fdc4:	mov    esi,DWORD PTR [ecx+0x4c]
  50fdc7:	xor    edi,edi
  50fdc9:	cmp    DWORD PTR [esi+edi*8],eax
  50fdcc:	je     50fdf1
  50fdce:	inc    edi
  50fdcf:	cmp    edi,edx
  50fdd1:	jb     50fdc9
  50fdd3:	mov    DWORD PTR [esp+0x4],eax
  50fdd7:	mov    edi,ebx
  50fdd9:	mov    DWORD PTR [esp],edi
  50fddc:	mov    DWORD PTR [esp+0x8],0x6
  50fde4:	mov    ebx,DWORD PTR [esp+0x2c]
  50fde8:	call   1c1964
  50fded:	mov    ecx,eax
  50fdef:	jmp    50fe02
  50fdf1:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50fdf5:	lea    ecx,[ecx+eax*8+0xe4]
  50fdfc:	mov    edi,ebx
  50fdfe:	mov    ebx,DWORD PTR [esp+0x2c]
  50fe02:	mov    eax,DWORD PTR [ecx+0x4]
  50fe05:	mov    DWORD PTR [esp+0x4],eax
  50fe09:	mov    DWORD PTR [esp],edi
  50fe0c:	call   DWORD PTR [ecx]
  50fe0e:	test   eax,eax
  50fe10:	mov    esi,DWORD PTR [esp+0x20]
  50fe14:	je     50fe36
  50fe16:	lea    ecx,[ebx+0x4b2fc]
  50fe1c:	mov    ecx,DWORD PTR [ecx]
  50fe1e:	mov    DWORD PTR [esp+0x8],ecx
  50fe22:	mov    DWORD PTR [esp+0x4],esi
  50fe26:	mov    DWORD PTR [esp],eax
  50fe29:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  50fe2e:	test   eax,eax
  50fe30:	jne    50fc61
  50fe36:	call   1fbc48
  50fe3b:	call   540b98
  50fe40:	mov    eax,ecx
  50fe42:	lea    esp,[ebp-0xc]
  50fe45:	pop    esi
  50fe46:	pop    edi
  50fe47:	pop    ebx
  50fe48:	pop    ebp
  50fe49:	ret