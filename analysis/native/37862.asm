
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fce23:
 13fce23:	push   ebp
 13fce24:	mov    ebp,esp
 13fce26:	push   ebx
 13fce27:	push   edi
 13fce28:	push   esi
 13fce29:	and    esp,0xfffffff0
 13fce2c:	sub    esp,0x10
 13fce2f:	call   13fce34
 13fce34:	pop    ebx
 13fce35:	add    ebx,0xb15110
 13fce3b:	mov    esi,DWORD PTR [ebp+0xc]
 13fce3e:	mov    al,BYTE PTR [ebx+0x654e6]
 13fce44:	test   al,al
 13fce46:	jne    13fce5f
 13fce48:	lea    eax,[ebx-0x65e628]
 13fce4e:	mov    eax,DWORD PTR [eax]
 13fce50:	mov    DWORD PTR [esp],eax
 13fce53:	call   1ca6e8
 13fce58:	mov    BYTE PTR [ebx+0x654e6],0x1
 13fce5f:	test   esi,esi
 13fce61:	je     13fcec7
 13fce63:	lea    eax,[ebx+0x45874]
 13fce69:	mov    eax,DWORD PTR [eax]
 13fce6b:	mov    ecx,DWORD PTR [esi]
 13fce6d:	movzx  edx,WORD PTR [ecx+0xaa]
 13fce74:	test   edx,edx
 13fce76:	je     13fce87
 13fce78:	mov    edi,DWORD PTR [ecx+0x4c]
 13fce7b:	xor    esi,esi
 13fce7d:	cmp    DWORD PTR [edi+esi*8],eax
 13fce80:	je     13fcea2
 13fce82:	inc    esi
 13fce83:	cmp    esi,edx
 13fce85:	jb     13fce7d
 13fce87:	mov    DWORD PTR [esp+0x4],eax
 13fce8b:	mov    esi,DWORD PTR [ebp+0xc]
 13fce8e:	mov    DWORD PTR [esp],esi
 13fce91:	mov    DWORD PTR [esp+0x8],0x55
 13fce99:	call   1c1964
 13fce9e:	mov    ecx,eax
 13fcea0:	jmp    13fceb0
 13fcea2:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 13fcea6:	lea    ecx,[ecx+eax*8+0x35c]
 13fcead:	mov    esi,DWORD PTR [ebp+0xc]
 13fceb0:	mov    eax,DWORD PTR [ecx+0x4]
 13fceb3:	mov    DWORD PTR [esp+0x4],eax
 13fceb7:	mov    DWORD PTR [esp],esi
 13fceba:	call   DWORD PTR [ecx]
 13fcebc:	movzx  eax,al
 13fcebf:	lea    esp,[ebp-0xc]
 13fcec2:	pop    esi
 13fcec3:	pop    edi
 13fcec4:	pop    ebx
 13fcec5:	pop    ebp
 13fcec6:	ret
 13fcec7:	call   1fbc48
 13fcecc:	call   13f24e0