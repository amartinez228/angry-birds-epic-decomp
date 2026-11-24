
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec3a6a:
  ec3a6a:	push   ebp
  ec3a6b:	mov    ebp,esp
  ec3a6d:	push   ebx
  ec3a6e:	push   esi
  ec3a6f:	and    esp,0xfffffff0
  ec3a72:	sub    esp,0x10
  ec3a75:	call   ec3a7a
  ec3a7a:	pop    ebx
  ec3a7b:	add    ebx,0x104e4ca
  ec3a81:	mov    esi,DWORD PTR [ebp+0x8]
  ec3a84:	mov    al,BYTE PTR [ebx+0x626f3]
  ec3a8a:	test   al,al
  ec3a8c:	jne    ec3aa5
  ec3a8e:	lea    eax,[ebx-0x66fb54]
  ec3a94:	mov    eax,DWORD PTR [eax]
  ec3a96:	mov    DWORD PTR [esp],eax
  ec3a99:	call   1ca6e8
  ec3a9e:	mov    BYTE PTR [ebx+0x626f3],0x1
  ec3aa5:	mov    eax,DWORD PTR [esi+0xd8]
  ec3aab:	test   eax,eax
  ec3aad:	je     ec3aca
  ec3aaf:	mov    ecx,DWORD PTR [ebp+0xc]
  ec3ab2:	lea    edx,[ebx+0x4a218]
  ec3ab8:	mov    edx,DWORD PTR [edx]
  ec3aba:	mov    DWORD PTR [esp+0x8],edx
  ec3abe:	mov    DWORD PTR [esp+0x4],ecx
  ec3ac2:	mov    DWORD PTR [esp],eax
  ec3ac5:	call   176d1f3  ; System.Action`1<int>::Invoke
  ec3aca:	lea    esp,[ebp-0x8]
  ec3acd:	pop    esi
  ec3ace:	pop    ebx
  ec3acf:	pop    ebp
  ec3ad0:	ret