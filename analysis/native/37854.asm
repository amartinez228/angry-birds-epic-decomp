
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fbad6:
 13fbad6:	push   ebp
 13fbad7:	mov    ebp,esp
 13fbad9:	push   ebx
 13fbada:	push   edi
 13fbadb:	push   esi
 13fbadc:	and    esp,0xfffffff0
 13fbadf:	sub    esp,0x10
 13fbae2:	call   13fbae7
 13fbae7:	pop    ebx
 13fbae8:	add    ebx,0xb1645d
 13fbaee:	mov    al,BYTE PTR [ebx+0x654df]
 13fbaf4:	test   al,al
 13fbaf6:	jne    13fbb0f
 13fbaf8:	lea    eax,[ebx-0x65e638]
 13fbafe:	mov    eax,DWORD PTR [eax]
 13fbb00:	mov    DWORD PTR [esp],eax
 13fbb03:	call   1ca6e8
 13fbb08:	mov    BYTE PTR [ebx+0x654df],0x1
 13fbb0f:	lea    eax,[ebx+0x45cd0]
 13fbb15:	mov    eax,DWORD PTR [eax]
 13fbb17:	mov    DWORD PTR [esp],eax
 13fbb1a:	call   20bfb2
 13fbb1f:	mov    esi,eax
 13fbb21:	mov    DWORD PTR [esp],esi
 13fbb24:	mov    DWORD PTR [esp+0x4],0x0
 13fbb2c:	call   124632e  ; System.Object::.ctor
 13fbb31:	test   esi,esi
 13fbb33:	je     13fbb5d
 13fbb35:	mov    al,BYTE PTR [ebp+0x18]
 13fbb38:	mov    ecx,DWORD PTR [ebp+0x14]
 13fbb3b:	mov    edx,DWORD PTR [ebp+0x10]
 13fbb3e:	mov    edi,DWORD PTR [ebp+0xc]
 13fbb41:	mov    ebx,DWORD PTR [ebp+0x8]
 13fbb44:	mov    DWORD PTR [esi+0x8],edi
 13fbb47:	mov    DWORD PTR [esi+0x10],edx
 13fbb4a:	mov    DWORD PTR [esi+0x14],ecx
 13fbb4d:	mov    BYTE PTR [esi+0x18],al
 13fbb50:	mov    DWORD PTR [esi+0x1c],ebx
 13fbb53:	mov    eax,esi
 13fbb55:	lea    esp,[ebp-0xc]
 13fbb58:	pop    esi
 13fbb59:	pop    edi
 13fbb5a:	pop    ebx
 13fbb5b:	pop    ebp
 13fbb5c:	ret
 13fbb5d:	call   1fbc48
 13fbb62:	call   13f24e0