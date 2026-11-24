
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014b8d66:
 14b8d66:	push   ebp
 14b8d67:	mov    ebp,esp
 14b8d69:	push   ebx
 14b8d6a:	push   edi
 14b8d6b:	push   esi
 14b8d6c:	and    esp,0xfffffff0
 14b8d6f:	sub    esp,0x10
 14b8d72:	call   14b8d77
 14b8d77:	pop    ebx
 14b8d78:	add    ebx,0xa591cd
 14b8d7e:	mov    al,BYTE PTR [ebx+0x65a28]
 14b8d84:	test   al,al
 14b8d86:	jne    14b8d9f
 14b8d88:	lea    eax,[ebx-0x665df4]
 14b8d8e:	mov    eax,DWORD PTR [eax]
 14b8d90:	mov    DWORD PTR [esp],eax
 14b8d93:	call   1ca6e8
 14b8d98:	mov    BYTE PTR [ebx+0x65a28],0x1
 14b8d9f:	lea    eax,[ebx+0x45aac]
 14b8da5:	mov    eax,DWORD PTR [eax]
 14b8da7:	mov    DWORD PTR [esp],eax
 14b8daa:	call   20bfb2
 14b8daf:	mov    esi,eax
 14b8db1:	mov    DWORD PTR [esp],esi
 14b8db4:	mov    DWORD PTR [esp+0x4],0x0
 14b8dbc:	call   124632e  ; System.Object::.ctor
 14b8dc1:	test   esi,esi
 14b8dc3:	je     14b8de7
 14b8dc5:	mov    eax,DWORD PTR [ebp+0x14]
 14b8dc8:	mov    ecx,DWORD PTR [ebp+0x10]
 14b8dcb:	mov    edx,DWORD PTR [ebp+0xc]
 14b8dce:	mov    edi,DWORD PTR [ebp+0x8]
 14b8dd1:	mov    DWORD PTR [esi+0x8],eax
 14b8dd4:	mov    DWORD PTR [esi+0xc],ecx
 14b8dd7:	mov    DWORD PTR [esi+0x10],edx
 14b8dda:	mov    DWORD PTR [esi+0x24],edi
 14b8ddd:	mov    eax,esi
 14b8ddf:	lea    esp,[ebp-0xc]
 14b8de2:	pop    esi
 14b8de3:	pop    edi
 14b8de4:	pop    ebx
 14b8de5:	pop    ebp
 14b8de6:	ret
 14b8de7:	call   1fbc48
 14b8dec:	call   14943fc