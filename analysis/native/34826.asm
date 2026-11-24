
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec3ad1:
  ec3ad1:	push   ebp
  ec3ad2:	mov    ebp,esp
  ec3ad4:	push   ebx
  ec3ad5:	push   edi
  ec3ad6:	push   esi
  ec3ad7:	and    esp,0xfffffff0
  ec3ada:	sub    esp,0x10
  ec3add:	call   ec3ae2
  ec3ae2:	pop    ebx
  ec3ae3:	add    ebx,0x104e462
  ec3ae9:	mov    esi,DWORD PTR [ebp+0x8]
  ec3aec:	mov    al,BYTE PTR [ebx+0x626f4]
  ec3af2:	test   al,al
  ec3af4:	jne    ec3b0d
  ec3af6:	lea    eax,[ebx-0x66fb4c]
  ec3afc:	mov    eax,DWORD PTR [eax]
  ec3afe:	mov    DWORD PTR [esp],eax
  ec3b01:	call   1ca6e8
  ec3b06:	mov    BYTE PTR [ebx+0x626f4],0x1
  ec3b0d:	mov    edi,DWORD PTR [ebp+0xc]
  ec3b10:	mov    eax,DWORD PTR [esi+0xdc]
  ec3b16:	test   eax,eax
  ec3b18:	je     ec3b32
  ec3b1a:	lea    ecx,[ebx+0x4a218]
  ec3b20:	mov    ecx,DWORD PTR [ecx]
  ec3b22:	mov    DWORD PTR [esp+0x8],ecx
  ec3b26:	mov    DWORD PTR [esp+0x4],edi
  ec3b2a:	mov    DWORD PTR [esp],eax
  ec3b2d:	call   176d1f3  ; System.Action`1<int>::Invoke
  ec3b32:	mov    DWORD PTR [esi+0xe4],edi
  ec3b38:	lea    esp,[ebp-0xc]
  ec3b3b:	pop    esi
  ec3b3c:	pop    edi
  ec3b3d:	pop    ebx
  ec3b3e:	pop    ebp
  ec3b3f:	ret