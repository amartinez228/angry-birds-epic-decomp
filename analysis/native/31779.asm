
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

010c4d59:
 10c4d59:	push   ebp
 10c4d5a:	mov    ebp,esp
 10c4d5c:	push   ebx
 10c4d5d:	push   edi
 10c4d5e:	push   esi
 10c4d5f:	and    esp,0xfffffff0
 10c4d62:	sub    esp,0x40
 10c4d65:	call   10c4d6a
 10c4d6a:	pop    ebx
 10c4d6b:	add    ebx,0xe4d1da
 10c4d71:	mov    al,BYTE PTR [ebx+0x6360e]
 10c4d77:	test   al,al
 10c4d79:	jne    10c4d92
 10c4d7b:	lea    eax,[ebx-0x65aba4]
 10c4d81:	mov    eax,DWORD PTR [eax]
 10c4d83:	mov    DWORD PTR [esp],eax
 10c4d86:	call   1ca6e8
 10c4d8b:	mov    BYTE PTR [ebx+0x6360e],0x1
 10c4d92:	xorps  xmm0,xmm0
 10c4d95:	movaps XMMWORD PTR [esp+0x20],xmm0
 10c4d9a:	mov    eax,DWORD PTR [ebp+0x8]
 10c4d9d:	mov    eax,DWORD PTR [eax+0x24]
 10c4da0:	test   eax,eax
 10c4da2:	je     10c4f72
 10c4da8:	lea    ecx,[ebx+0x4fc9c]
 10c4dae:	mov    ecx,DWORD PTR [ecx]
 10c4db0:	mov    DWORD PTR [esp+0x8],ecx
 10c4db4:	mov    DWORD PTR [esp+0x4],eax
 10c4db8:	lea    eax,[esp+0x10]
 10c4dbc:	mov    DWORD PTR [esp],eax
 10c4dbf:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
 10c4dc4:	sub    esp,0x4
 10c4dc7:	movsd  xmm0,QWORD PTR [esp+0x10]
 10c4dcd:	movsd  xmm1,QWORD PTR [esp+0x18]
 10c4dd3:	movsd  QWORD PTR [esp+0x28],xmm1
 10c4dd9:	movsd  QWORD PTR [esp+0x20],xmm0
 10c4ddf:	lea    esi,[ebx+0x4fca4]
 10c4de5:	lea    edi,[esp+0x20]
 10c4de9:	jmp    10c4e8a
 10c4dee:	mov    ecx,DWORD PTR [ebp+0x8]
 10c4df1:	mov    DWORD PTR [ecx+0x2c],eax
 10c4df4:	jmp    10c4e8a
 10c4df9:	lea    eax,[ebx+0x4fca0]
 10c4dff:	mov    eax,DWORD PTR [eax]
 10c4e01:	mov    DWORD PTR [esp+0x4],eax
 10c4e05:	mov    DWORD PTR [esp],edi
 10c4e08:	call   447f1e
 10c4e0d:	test   eax,eax
 10c4e0f:	je     10c4f68
 10c4e15:	mov    ecx,DWORD PTR [eax+0x8]
 10c4e18:	cmp    ecx,0x4
 10c4e1b:	ja     10c4ee6
 10c4e21:	mov    ecx,DWORD PTR [ebx+ecx*4-0x5dd120]
 10c4e28:	add    ecx,ebx
 10c4e2a:	jmp    ecx
 10c4e2c:	mov    eax,DWORD PTR [ebp+0x8]
 10c4e2f:	mov    BYTE PTR [eax+0x17],0x1
 10c4e33:	jmp    10c4e8a
 10c4e35:	mov    eax,DWORD PTR [ebp+0x8]
 10c4e38:	mov    BYTE PTR [eax+0x14],0x1
 10c4e3c:	jmp    10c4e8a
 10c4e3e:	mov    eax,DWORD PTR [ebp+0x8]
 10c4e41:	mov    BYTE PTR [eax+0x15],0x1
 10c4e45:	lea    eax,[ebx+0x4584c]
 10c4e4b:	mov    eax,DWORD PTR [eax]
 10c4e4d:	test   BYTE PTR [eax+0xb2],0x1
 10c4e54:	je     10c4e64
 10c4e56:	cmp    DWORD PTR [eax+0x60],0x0
 10c4e5a:	jne    10c4e64
 10c4e5c:	mov    DWORD PTR [esp],eax
 10c4e5f:	call   1db0b8
 10c4e64:	mov    DWORD PTR [esp+0x4],0x0
 10c4e6c:	mov    DWORD PTR [esp],0x0
 10c4e73:	call   109007c  ; DIContainerInfrastructure::get_PrimaryMusicSource
 10c4e78:	jmp    10c4dee
 10c4e7d:	movss  xmm0,DWORD PTR [eax+0xc]
 10c4e82:	mov    eax,DWORD PTR [ebp+0x8]
 10c4e85:	movss  DWORD PTR [eax+0x20],xmm0
 10c4e8a:	mov    eax,DWORD PTR [esi]
 10c4e8c:	mov    DWORD PTR [esp+0x4],eax
 10c4e90:	mov    DWORD PTR [esp],edi
 10c4e93:	call   447e4e
 10c4e98:	test   al,al
 10c4e9a:	jne    10c4df9
 10c4ea0:	jmp    10c4f5e
 10c4ea5:	mov    eax,DWORD PTR [ebp+0x8]
 10c4ea8:	mov    BYTE PTR [eax+0x16],0x1
 10c4eac:	lea    eax,[ebx+0x4584c]
 10c4eb2:	mov    eax,DWORD PTR [eax]
 10c4eb4:	test   BYTE PTR [eax+0xb2],0x1
 10c4ebb:	je     10c4ecb
 10c4ebd:	cmp    DWORD PTR [eax+0x60],0x0
 10c4ec1:	jne    10c4ecb
 10c4ec3:	mov    DWORD PTR [esp],eax
 10c4ec6:	call   1db0b8
 10c4ecb:	mov    DWORD PTR [esp+0x4],0x0
 10c4ed3:	mov    DWORD PTR [esp],0x0
 10c4eda:	call   1090321  ; DIContainerInfrastructure::get_SecondaryMusicSource
 10c4edf:	jmp    10c4dee
 10c4ee4:	jmp    10c4f12
 10c4ee6:	lea    eax,[ebx+0x43180]
 10c4eec:	mov    eax,DWORD PTR [eax]
 10c4eee:	mov    DWORD PTR [esp],eax
 10c4ef1:	call   20bfb2
 10c4ef6:	mov    esi,eax
 10c4ef8:	mov    DWORD PTR [esp],esi
 10c4efb:	mov    DWORD PTR [esp+0x4],0x0
 10c4f03:	call   ef77ee  ; System.ArgumentOutOfRangeException::.ctor
 10c4f08:	mov    DWORD PTR [esp],esi
 10c4f0b:	call   1fbb20
 10c4f10:	jmp    10c4f84
 10c4f12:	cmp    edx,0x1
 10c4f15:	jne    10c4f7c
 10c4f17:	mov    DWORD PTR [esp],eax
 10c4f1a:	call   1ba3f0
 10c4f1f:	mov    esi,DWORD PTR [eax]
 10c4f21:	call   1b9ce0
 10c4f26:	mov    DWORD PTR [esp+0xc],0x0
 10c4f2e:	lea    eax,[ebx+0x4fca8]
 10c4f34:	mov    eax,DWORD PTR [eax]
 10c4f36:	mov    DWORD PTR [esp+0x4],eax
 10c4f3a:	mov    DWORD PTR [esp],edi
 10c4f3d:	call   447df6
 10c4f42:	mov    eax,DWORD PTR [esp+0xc]
 10c4f46:	test   al,al
 10c4f48:	jne    10c4f56
 10c4f4a:	test   esi,esi
 10c4f4c:	je     10c4f56
 10c4f4e:	mov    DWORD PTR [esp],esi
 10c4f51:	call   1fbb20
 10c4f56:	lea    esp,[ebp-0xc]
 10c4f59:	pop    esi
 10c4f5a:	pop    edi
 10c4f5b:	pop    ebx
 10c4f5c:	pop    ebp
 10c4f5d:	ret
 10c4f5e:	xor    esi,esi
 10c4f60:	mov    al,0x1
 10c4f62:	mov    DWORD PTR [esp+0xc],eax
 10c4f66:	jmp    10c4f2e
 10c4f68:	call   1fbc48
 10c4f6d:	call   10a4f7a
 10c4f72:	call   1fbc48
 10c4f77:	call   10a4f7a
 10c4f7c:	mov    DWORD PTR [esp],eax
 10c4f7f:	call   1b9bd0
 10c4f84:	call   10a4f7a