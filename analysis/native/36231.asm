
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eede76:
  eede76:	push   ebp
  eede77:	mov    ebp,esp
  eede79:	push   ebx
  eede7a:	push   edi
  eede7b:	push   esi
  eede7c:	and    esp,0xfffffff0
  eede7f:	sub    esp,0x20
  eede82:	call   eede87
  eede87:	pop    ebx
  eede88:	add    ebx,0x10240bd
  eede8e:	mov    esi,DWORD PTR [ebp+0xc]
  eede91:	mov    al,BYTE PTR [ebx+0x62802]
  eede97:	test   al,al
  eede99:	jne    eedeb2
  eede9b:	lea    eax,[ebx-0x657564]
  eedea1:	mov    eax,DWORD PTR [eax]
  eedea3:	mov    DWORD PTR [esp],eax
  eedea6:	call   1ca6e8
  eedeab:	mov    BYTE PTR [ebx+0x62802],0x1
  eedeb2:	test   esi,esi
  eedeb4:	je     eee042
  eedeba:	lea    eax,[ebx+0x45874]
  eedec0:	mov    DWORD PTR [esp+0x18],eax
  eedec4:	mov    eax,DWORD PTR [eax]
  eedec6:	mov    ecx,DWORD PTR [esi]
  eedec8:	movzx  edx,WORD PTR [ecx+0xaa]
  eedecf:	test   edx,edx
  eeded1:	je     eedee2
  eeded3:	mov    esi,DWORD PTR [ecx+0x4c]
  eeded6:	xor    edi,edi
  eeded8:	cmp    DWORD PTR [esi+edi*8],eax
  eededb:	je     eedefd
  eededd:	inc    edi
  eedede:	cmp    edi,edx
  eedee0:	jb     eeded8
  eedee2:	mov    DWORD PTR [esp+0x4],eax
  eedee6:	mov    esi,DWORD PTR [ebp+0xc]
  eedee9:	mov    DWORD PTR [esp],esi
  eedeec:	mov    DWORD PTR [esp+0x8],0x2f
  eedef4:	call   1c1964
  eedef9:	mov    ecx,eax
  eedefb:	jmp    eedf0b
  eedefd:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eedf01:	lea    ecx,[ecx+eax*8+0x22c]
  eedf08:	mov    esi,DWORD PTR [ebp+0xc]
  eedf0b:	mov    DWORD PTR [esp+0x14],ebx
  eedf0f:	mov    eax,DWORD PTR [ecx+0x4]
  eedf12:	mov    DWORD PTR [esp+0x4],eax
  eedf16:	mov    DWORD PTR [esp],esi
  eedf19:	call   DWORD PTR [ecx]
  eedf1b:	mov    DWORD PTR [esp+0x10],eax
  eedf1f:	mov    eax,DWORD PTR [ebp+0x8]
  eedf22:	mov    edi,DWORD PTR [eax+0x8]
  eedf25:	test   edi,edi
  eedf27:	je     eee03e
  eedf2d:	mov    eax,DWORD PTR [esp+0x18]
  eedf31:	mov    eax,DWORD PTR [eax]
  eedf33:	mov    ebx,DWORD PTR [edi]
  eedf35:	movzx  edx,WORD PTR [ebx+0xaa]
  eedf3c:	test   edx,edx
  eedf3e:	je     eedf4f
  eedf40:	mov    esi,DWORD PTR [ebx+0x4c]
  eedf43:	xor    ecx,ecx
  eedf45:	cmp    DWORD PTR [esi+ecx*8],eax
  eedf48:	je     eedf6b
  eedf4a:	inc    ecx
  eedf4b:	cmp    ecx,edx
  eedf4d:	jb     eedf45
  eedf4f:	mov    DWORD PTR [esp+0x4],eax
  eedf53:	mov    DWORD PTR [esp],edi
  eedf56:	mov    DWORD PTR [esp+0x8],0x2f
  eedf5e:	mov    ebx,DWORD PTR [esp+0x14]
  eedf62:	call   1c1964
  eedf67:	mov    ecx,eax
  eedf69:	jmp    eedf7a
  eedf6b:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eedf6f:	lea    ecx,[ebx+eax*8+0x22c]
  eedf76:	mov    ebx,DWORD PTR [esp+0x14]
  eedf7a:	mov    eax,DWORD PTR [ecx+0x4]
  eedf7d:	mov    DWORD PTR [esp+0x4],eax
  eedf81:	mov    DWORD PTR [esp],edi
  eedf84:	call   DWORD PTR [ecx]
  eedf86:	cmp    DWORD PTR [esp+0x10],eax
  eedf8a:	je     eedfd4
  eedf8c:	mov    ecx,DWORD PTR [ebp+0xc]
  eedf8f:	mov    eax,DWORD PTR [ebp+0x8]
  eedf92:	cmp    DWORD PTR [eax+0xc],ecx
  eedf95:	je     eedfd4
  eedf97:	mov    eax,DWORD PTR [esp+0x18]
  eedf9b:	mov    eax,DWORD PTR [eax]
  eedf9d:	mov    ecx,DWORD PTR [ecx]
  eedf9f:	movzx  edx,WORD PTR [ecx+0xaa]
  eedfa6:	test   edx,edx
  eedfa8:	je     eedfb9
  eedfaa:	mov    esi,DWORD PTR [ecx+0x4c]
  eedfad:	xor    edi,edi
  eedfaf:	cmp    DWORD PTR [esi+edi*8],eax
  eedfb2:	je     eedfd8
  eedfb4:	inc    edi
  eedfb5:	cmp    edi,edx
  eedfb7:	jb     eedfaf
  eedfb9:	mov    DWORD PTR [esp+0x4],eax
  eedfbd:	mov    esi,DWORD PTR [ebp+0xc]
  eedfc0:	mov    DWORD PTR [esp],esi
  eedfc3:	mov    DWORD PTR [esp+0x8],0x11
  eedfcb:	call   1c1964
  eedfd0:	mov    ecx,eax
  eedfd2:	jmp    eedfe6
  eedfd4:	xor    eax,eax
  eedfd6:	jmp    eee033
  eedfd8:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eedfdc:	lea    ecx,[ecx+eax*8+0x13c]
  eedfe3:	mov    esi,DWORD PTR [ebp+0xc]
  eedfe6:	mov    eax,DWORD PTR [ecx+0x4]
  eedfe9:	mov    DWORD PTR [esp+0x4],eax
  eedfed:	mov    DWORD PTR [esp],esi
  eedff0:	call   DWORD PTR [ecx]
  eedff2:	mov    esi,eax
  eedff4:	lea    eax,[ebx+0x44ebc]
  eedffa:	mov    eax,DWORD PTR [eax]
  eedffc:	test   BYTE PTR [eax+0xb2],0x1
  eee003:	je     eee013
  eee005:	cmp    DWORD PTR [eax+0x60],0x0
  eee009:	jne    eee013
  eee00b:	mov    DWORD PTR [esp],eax
  eee00e:	call   1db0b8
  eee013:	mov    DWORD PTR [esp+0x4],esi
  eee017:	mov    DWORD PTR [esp+0xc],0x0
  eee01f:	mov    DWORD PTR [esp+0x8],0x0
  eee027:	mov    DWORD PTR [esp],0x0
  eee02e:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  eee033:	movzx  eax,al
  eee036:	lea    esp,[ebp-0xc]
  eee039:	pop    esi
  eee03a:	pop    edi
  eee03b:	pop    ebx
  eee03c:	pop    ebp
  eee03d:	ret
  eee03e:	mov    ebx,DWORD PTR [esp+0x14]
  eee042:	call   1fbc48
  eee047:	call   ebbb41