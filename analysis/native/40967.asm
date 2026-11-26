
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00509d43:
  509d43:	push   ebp
  509d44:	mov    ebp,esp
  509d46:	push   ebx
  509d47:	and    esp,0xfffffff0
  509d4a:	sub    esp,0x20
  509d4d:	call   509d52
  509d52:	pop    ebx
  509d53:	add    ebx,0x1a081f2
  509d59:	mov    al,BYTE PTR [ebx+0x5d4fd]
  509d5f:	test   al,al
  509d61:	jne    509d7a
  509d63:	lea    eax,[ebx-0x66f3a4]
  509d69:	mov    eax,DWORD PTR [eax]
  509d6b:	mov    DWORD PTR [esp],eax
  509d6e:	call   1ca6e8
  509d73:	mov    BYTE PTR [ebx+0x5d4fd],0x1
  509d7a:	movss  xmm0,DWORD PTR [ebp+0xc]
  509d7f:	lea    eax,[ebx+0x44ec8]
  509d85:	mov    eax,DWORD PTR [eax]
  509d87:	test   BYTE PTR [eax+0xb2],0x1
  509d8e:	je     509da3
  509d90:	cmp    DWORD PTR [eax+0x60],0x0
  509d94:	jne    509da3
  509d96:	mov    DWORD PTR [esp],eax
  509d99:	call   1db0b8
  509d9e:	movss  xmm0,DWORD PTR [ebp+0xc]
  509da3:	movss  DWORD PTR [esp+0x4],xmm0
  509da9:	mov    DWORD PTR [esp+0x8],0x0
  509db1:	mov    DWORD PTR [esp],0x0
  509db8:	call   139b0e7  ; UnityEngine.Mathf::RoundToInt
  509dbd:	lea    esp,[ebp-0x4]
  509dc0:	pop    ebx
  509dc1:	pop    ebp
  509dc2:	ret