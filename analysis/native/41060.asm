
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

005189ce:
  5189ce:	push   ebp
  5189cf:	mov    ebp,esp
  5189d1:	push   ebx
  5189d2:	push   edi
  5189d3:	push   esi
  5189d4:	and    esp,0xfffffff0
  5189d7:	sub    esp,0x10
  5189da:	call   5189df
  5189df:	pop    ebx
  5189e0:	add    ebx,0x19f9565
  5189e6:	mov    esi,DWORD PTR [ebp+0xc]
  5189e9:	mov    al,BYTE PTR [ebx+0x5d551]
  5189ef:	test   al,al
  5189f1:	jne    518a0a
  5189f3:	lea    eax,[ebx-0x66f340]
  5189f9:	mov    eax,DWORD PTR [eax]
  5189fb:	mov    DWORD PTR [esp],eax
  5189fe:	call   1ca6e8
  518a03:	mov    BYTE PTR [ebx+0x5d551],0x1
  518a0a:	test   esi,esi
  518a0c:	je     518a72
  518a0e:	lea    eax,[ebx+0x45874]
  518a14:	mov    eax,DWORD PTR [eax]
  518a16:	mov    ecx,DWORD PTR [esi]
  518a18:	movzx  edx,WORD PTR [ecx+0xaa]
  518a1f:	test   edx,edx
  518a21:	je     518a32
  518a23:	mov    edi,DWORD PTR [ecx+0x4c]
  518a26:	xor    esi,esi
  518a28:	cmp    DWORD PTR [edi+esi*8],eax
  518a2b:	je     518a4d
  518a2d:	inc    esi
  518a2e:	cmp    esi,edx
  518a30:	jb     518a28
  518a32:	mov    DWORD PTR [esp+0x4],eax
  518a36:	mov    esi,DWORD PTR [ebp+0xc]
  518a39:	mov    DWORD PTR [esp],esi
  518a3c:	mov    DWORD PTR [esp+0x8],0x56
  518a44:	call   1c1964
  518a49:	mov    ecx,eax
  518a4b:	jmp    518a5b
  518a4d:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  518a51:	lea    ecx,[ecx+eax*8+0x364]
  518a58:	mov    esi,DWORD PTR [ebp+0xc]
  518a5b:	mov    eax,DWORD PTR [ecx+0x4]
  518a5e:	mov    DWORD PTR [esp+0x4],eax
  518a62:	mov    DWORD PTR [esp],esi
  518a65:	call   DWORD PTR [ecx]
  518a67:	movzx  eax,al
  518a6a:	lea    esp,[ebp-0xc]
  518a6d:	pop    esi
  518a6e:	pop    edi
  518a6f:	pop    ebx
  518a70:	pop    ebp
  518a71:	ret
  518a72:	call   1fbc48
  518a77:	call   540b98