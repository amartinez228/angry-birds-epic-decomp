
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

010c4c85:
 10c4c85:	push   ebp
 10c4c86:	mov    ebp,esp
 10c4c88:	push   ebx
 10c4c89:	push   edi
 10c4c8a:	push   esi
 10c4c8b:	and    esp,0xfffffff0
 10c4c8e:	sub    esp,0x10
 10c4c91:	call   10c4c96
 10c4c96:	pop    ebx
 10c4c97:	add    ebx,0xe4d2ae
 10c4c9d:	mov    edi,DWORD PTR [ebp+0x8]
 10c4ca0:	mov    al,BYTE PTR [ebx+0x6360d]
 10c4ca6:	test   al,al
 10c4ca8:	jne    10c4cc1
 10c4caa:	lea    eax,[ebx-0x65abb0]
 10c4cb0:	mov    eax,DWORD PTR [eax]
 10c4cb2:	mov    DWORD PTR [esp],eax
 10c4cb5:	call   1ca6e8
 10c4cba:	mov    BYTE PTR [ebx+0x6360d],0x1
 10c4cc1:	lea    eax,[ebx+0x43ba4]
 10c4cc7:	mov    eax,DWORD PTR [eax]
 10c4cc9:	mov    DWORD PTR [esp],eax
 10c4ccc:	call   20bfb2
 10c4cd1:	mov    esi,eax
 10c4cd3:	lea    eax,[ebx+0x48c1c]
 10c4cd9:	mov    eax,DWORD PTR [eax]
 10c4cdb:	mov    DWORD PTR [esp+0x4],eax
 10c4cdf:	mov    DWORD PTR [esp],esi
 10c4ce2:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 10c4ce7:	mov    DWORD PTR [edi+0xc],esi
 10c4cea:	mov    DWORD PTR [edi+0x1c],0x3f800000
 10c4cf1:	lea    eax,[ebx+0x486c8]
 10c4cf7:	mov    eax,DWORD PTR [eax]
 10c4cf9:	mov    DWORD PTR [esp],eax
 10c4cfc:	call   20bfb2
 10c4d01:	mov    esi,eax
 10c4d03:	lea    eax,[ebx+0x4fc98]
 10c4d09:	mov    eax,DWORD PTR [eax]
 10c4d0b:	mov    DWORD PTR [esp+0x4],eax
 10c4d0f:	mov    DWORD PTR [esp],esi
 10c4d12:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 10c4d17:	mov    DWORD PTR [edi+0x24],esi
 10c4d1a:	mov    DWORD PTR [esp],edi
 10c4d1d:	mov    DWORD PTR [esp+0x4],0x0
 10c4d25:	call   124632e  ; System.Object::.ctor
 10c4d2a:	lea    esp,[ebp-0xc]
 10c4d2d:	pop    esi
 10c4d2e:	pop    edi
 10c4d2f:	pop    ebx
 10c4d30:	pop    ebp
 10c4d31:	ret