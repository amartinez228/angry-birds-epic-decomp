
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fbb96:
 13fbb96:	push   ebp
 13fbb97:	mov    ebp,esp
 13fbb99:	push   ebx
 13fbb9a:	push   edi
 13fbb9b:	push   esi
 13fbb9c:	and    esp,0xfffffff0
 13fbb9f:	sub    esp,0x70
 13fbba2:	call   13fbba7
 13fbba7:	pop    ebx
 13fbba8:	add    ebx,0xb1639d
 13fbbae:	mov    esi,DWORD PTR [ebp+0xc]
 13fbbb1:	mov    al,BYTE PTR [ebx+0x654e0]
 13fbbb7:	test   al,al
 13fbbb9:	jne    13fbbd2
 13fbbbb:	lea    eax,[ebx-0x65e63c]
 13fbbc1:	mov    eax,DWORD PTR [eax]
 13fbbc3:	mov    DWORD PTR [esp],eax
 13fbbc6:	call   1ca6e8
 13fbbcb:	mov    BYTE PTR [ebx+0x654e0],0x1
 13fbbd2:	xorps  xmm0,xmm0
 13fbbd5:	movaps XMMWORD PTR [esp+0x50],xmm0
 13fbbda:	movaps XMMWORD PTR [esp+0x40],xmm0
 13fbbdf:	test   esi,esi
 13fbbe1:	je     13fbeb5
 13fbbe7:	mov    eax,DWORD PTR [esi+0x68]
 13fbbea:	test   eax,eax
 13fbbec:	je     13fbeb5
 13fbbf2:	lea    ecx,[ebx+0x4a04c]
 13fbbf8:	mov    ecx,DWORD PTR [ecx]
 13fbbfa:	mov    DWORD PTR [esp+0x8],ecx
 13fbbfe:	mov    DWORD PTR [esp],eax
 13fbc01:	mov    DWORD PTR [esp+0x4],0x1
 13fbc09:	call   1242740
 13fbc0e:	lea    esi,[ebx+0x45ccc]
 13fbc14:	mov    ecx,DWORD PTR [esi]
 13fbc16:	mov    ecx,DWORD PTR [ecx+0x50]
 13fbc19:	cmp    DWORD PTR [ecx+0x4],0x0
 13fbc1d:	jne    13fbc7e
 13fbc1f:	lea    ecx,[ebx+0x4a64c]
 13fbc25:	mov    ecx,DWORD PTR [ecx]
 13fbc27:	mov    DWORD PTR [esp+0x20],ecx
 13fbc2b:	lea    ecx,[ebx+0x4588c]
 13fbc31:	mov    ecx,DWORD PTR [ecx]
 13fbc33:	mov    DWORD PTR [esp],ecx
 13fbc36:	mov    DWORD PTR [esp+0x24],eax
 13fbc3a:	call   20bfb2
 13fbc3f:	mov    edi,eax
 13fbc41:	mov    eax,DWORD PTR [esp+0x20]
 13fbc45:	mov    DWORD PTR [esp+0x38],eax
 13fbc49:	lea    eax,[ebx+0x4a054]
 13fbc4f:	mov    eax,DWORD PTR [eax]
 13fbc51:	mov    DWORD PTR [esp+0xc],eax
 13fbc55:	mov    eax,DWORD PTR [esp+0x38]
 13fbc59:	mov    DWORD PTR [esp+0x8],eax
 13fbc5d:	mov    DWORD PTR [esp],edi
 13fbc60:	mov    DWORD PTR [esp+0x4],0x0
 13fbc68:	call   159e10c
 13fbc6d:	mov    eax,DWORD PTR [esp+0x24]
 13fbc71:	mov    ecx,DWORD PTR [esi]
 13fbc73:	mov    ecx,DWORD PTR [ecx+0x50]
 13fbc76:	mov    DWORD PTR [ecx+0x4],edi
 13fbc79:	mov    ecx,DWORD PTR [esi]
 13fbc7b:	mov    ecx,DWORD PTR [ecx+0x50]
 13fbc7e:	mov    edx,DWORD PTR [ecx+0x4]
 13fbc81:	lea    ecx,[ebx+0x4a058]
 13fbc87:	mov    ecx,DWORD PTR [ecx]
 13fbc89:	mov    DWORD PTR [esp+0xc],ecx
 13fbc8d:	mov    DWORD PTR [esp+0x8],edx
 13fbc91:	mov    DWORD PTR [esp+0x4],eax
 13fbc95:	mov    DWORD PTR [esp],0x0
 13fbc9c:	call   9c0237
 13fbca1:	lea    ecx,[ebx+0x4a080]
 13fbca7:	mov    ecx,DWORD PTR [ecx]
 13fbca9:	mov    DWORD PTR [esp+0x8],ecx
 13fbcad:	mov    DWORD PTR [esp+0x4],eax
 13fbcb1:	mov    DWORD PTR [esp],0x0
 13fbcb8:	call   9c7738
 13fbcbd:	test   eax,eax
 13fbcbf:	je     13fbeb5
 13fbcc5:	mov    edi,DWORD PTR [ebp+0x10]
 13fbcc8:	lea    ecx,[ebx+0x4a228]
 13fbcce:	mov    DWORD PTR [esp+0x20],ecx
 13fbcd2:	mov    ecx,DWORD PTR [ecx]
 13fbcd4:	mov    DWORD PTR [esp+0x8],ecx
 13fbcd8:	mov    DWORD PTR [esp+0x4],eax
 13fbcdc:	lea    eax,[esp+0x28]
 13fbce0:	mov    DWORD PTR [esp],eax
 13fbce3:	call   4c350f
 13fbce8:	sub    esp,0x4
 13fbceb:	movsd  xmm0,QWORD PTR [esp+0x28]
 13fbcf1:	movsd  xmm1,QWORD PTR [esp+0x30]
 13fbcf7:	movsd  QWORD PTR [esp+0x58],xmm1
 13fbcfd:	movsd  QWORD PTR [esp+0x50],xmm0
 13fbd03:	lea    eax,[ebx+0x4a230]
 13fbd09:	mov    DWORD PTR [esp+0x24],eax
 13fbd0d:	lea    esi,[esp+0x50]
 13fbd11:	mov    eax,DWORD PTR [esp+0x24]
 13fbd15:	mov    eax,DWORD PTR [eax]
 13fbd17:	mov    DWORD PTR [esp+0x4],eax
 13fbd1b:	mov    DWORD PTR [esp],esi
 13fbd1e:	call   447e4e
 13fbd23:	test   al,al
 13fbd25:	je     13fbd5b
 13fbd27:	lea    eax,[ebx+0x4a22c]
 13fbd2d:	mov    eax,DWORD PTR [eax]
 13fbd2f:	mov    DWORD PTR [esp+0x4],eax
 13fbd33:	mov    DWORD PTR [esp],esi
 13fbd36:	call   447f1e
 13fbd3b:	test   edi,edi
 13fbd3d:	je     13fbd71
 13fbd3f:	lea    ecx,[ebx+0x4a458]
 13fbd45:	mov    ecx,DWORD PTR [ecx]
 13fbd47:	mov    DWORD PTR [esp+0x8],ecx
 13fbd4b:	mov    DWORD PTR [esp+0x4],eax
 13fbd4f:	mov    DWORD PTR [esp],edi
 13fbd52:	call   4c3f21
 13fbd57:	jmp    13fbd11
 13fbd59:	jmp    13fbd7b
 13fbd5b:	lea    eax,[ebx+0x4a234]
 13fbd61:	mov    eax,DWORD PTR [eax]
 13fbd63:	mov    DWORD PTR [esp+0x4],eax
 13fbd67:	mov    DWORD PTR [esp],esi
 13fbd6a:	call   447df6
 13fbd6f:	jmp    13fbdbb
 13fbd71:	call   1fbc48
 13fbd76:	jmp    13fbec7
 13fbd7b:	cmp    edx,0x1
 13fbd7e:	jne    13fbebf
 13fbd84:	mov    DWORD PTR [esp],eax
 13fbd87:	call   1ba3f0
 13fbd8c:	mov    eax,DWORD PTR [eax]
 13fbd8e:	mov    DWORD PTR [esp+0x1c],eax
 13fbd92:	call   1b9ce0
 13fbd97:	lea    eax,[ebx+0x4a234]
 13fbd9d:	mov    eax,DWORD PTR [eax]
 13fbd9f:	mov    DWORD PTR [esp+0x4],eax
 13fbda3:	mov    DWORD PTR [esp],esi
 13fbda6:	call   447df6
 13fbdab:	mov    eax,DWORD PTR [esp+0x1c]
 13fbdaf:	test   eax,eax
 13fbdb1:	je     13fbdbb
 13fbdb3:	mov    DWORD PTR [esp],eax
 13fbdb6:	call   1fbb20
 13fbdbb:	test   edi,edi
 13fbdbd:	je     13fbeb5
 13fbdc3:	lea    eax,[ebx+0x4a048]
 13fbdc9:	mov    eax,DWORD PTR [eax]
 13fbdcb:	mov    DWORD PTR [esp+0x4],eax
 13fbdcf:	mov    DWORD PTR [esp],edi
 13fbdd2:	call   4c46f7
 13fbdd7:	test   eax,eax
 13fbdd9:	jle    13fbead
 13fbddf:	mov    eax,DWORD PTR [esp+0x20]
 13fbde3:	mov    eax,DWORD PTR [eax]
 13fbde5:	mov    DWORD PTR [esp+0x8],eax
 13fbde9:	mov    DWORD PTR [esp+0x4],edi
 13fbded:	lea    edi,[esp+0x40]
 13fbdf1:	mov    DWORD PTR [esp],edi
 13fbdf4:	call   4c350f
 13fbdf9:	sub    esp,0x4
 13fbdfc:	mov    eax,DWORD PTR [esp+0x24]
 13fbe00:	mov    eax,DWORD PTR [eax]
 13fbe02:	mov    DWORD PTR [esp+0x4],eax
 13fbe06:	mov    DWORD PTR [esp],edi
 13fbe09:	call   447e4e
 13fbe0e:	test   al,al
 13fbe10:	je     13fbe58
 13fbe12:	lea    eax,[ebx+0x4a22c]
 13fbe18:	mov    eax,DWORD PTR [eax]
 13fbe1a:	mov    DWORD PTR [esp+0x4],eax
 13fbe1e:	mov    DWORD PTR [esp],edi
 13fbe21:	call   447f1e
 13fbe26:	mov    esi,eax
 13fbe28:	mov    DWORD PTR [esp+0x4],0x0
 13fbe30:	mov    DWORD PTR [esp],0x0
 13fbe37:	call   1093343  ; DIContainerLogic::GetPvpObjectivesService
 13fbe3c:	test   eax,eax
 13fbe3e:	je     13fbe62
 13fbe40:	mov    DWORD PTR [esp+0x4],esi
 13fbe44:	mov    DWORD PTR [esp],eax
 13fbe47:	mov    DWORD PTR [esp+0x8],0x0
 13fbe4f:	call   80c7c4  ; PvPObjectivesService::RageUsedToKill
 13fbe54:	jmp    13fbdfc
 13fbe56:	jmp    13fbe69
 13fbe58:	xor    esi,esi
 13fbe5a:	mov    al,0x1
 13fbe5c:	mov    DWORD PTR [esp+0x24],eax
 13fbe60:	jmp    13fbe85
 13fbe62:	call   1fbc48
 13fbe67:	jmp    13fbecc
 13fbe69:	cmp    edx,0x1
 13fbe6c:	jne    13fbebf
 13fbe6e:	mov    DWORD PTR [esp],eax
 13fbe71:	call   1ba3f0
 13fbe76:	mov    esi,DWORD PTR [eax]
 13fbe78:	call   1b9ce0
 13fbe7d:	mov    DWORD PTR [esp+0x24],0x0
 13fbe85:	lea    eax,[ebx+0x4a234]
 13fbe8b:	mov    eax,DWORD PTR [eax]
 13fbe8d:	mov    DWORD PTR [esp+0x4],eax
 13fbe91:	mov    DWORD PTR [esp],edi
 13fbe94:	call   447df6
 13fbe99:	mov    eax,DWORD PTR [esp+0x24]
 13fbe9d:	test   al,al
 13fbe9f:	jne    13fbead
 13fbea1:	test   esi,esi
 13fbea3:	je     13fbead
 13fbea5:	mov    DWORD PTR [esp],esi
 13fbea8:	call   1fbb20
 13fbead:	lea    esp,[ebp-0xc]
 13fbeb0:	pop    esi
 13fbeb1:	pop    edi
 13fbeb2:	pop    ebx
 13fbeb3:	pop    ebp
 13fbeb4:	ret
 13fbeb5:	call   1fbc48
 13fbeba:	call   13f24e0
 13fbebf:	mov    DWORD PTR [esp],eax
 13fbec2:	call   1b9bd0
 13fbec7:	call   13f24e0
 13fbecc:	call   13f24e0