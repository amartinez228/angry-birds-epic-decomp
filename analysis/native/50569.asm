
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008deb1f:
  8deb1f:	push   ebp
  8deb20:	mov    ebp,esp
  8deb22:	push   ebx
  8deb23:	push   edi
  8deb24:	push   esi
  8deb25:	and    esp,0xfffffff0
  8deb28:	sub    esp,0x10
  8deb2b:	call   8deb30
  8deb30:	pop    ebx
  8deb31:	add    ebx,0x1633414
  8deb37:	mov    esi,DWORD PTR [ebp+0x8]
  8deb3a:	mov    al,BYTE PTR [ebx+0x6018f]
  8deb40:	test   al,al
  8deb42:	jne    8deb5b
  8deb44:	lea    eax,[ebx-0x66d9c0]
  8deb4a:	mov    eax,DWORD PTR [eax]
  8deb4c:	mov    DWORD PTR [esp],eax
  8deb4f:	call   1ca6e8
  8deb54:	mov    BYTE PTR [ebx+0x6018f],0x1
  8deb5b:	mov    edi,DWORD PTR [esi+0x68]
  8deb5e:	lea    eax,[ebx+0x44ebc]
  8deb64:	mov    eax,DWORD PTR [eax]
  8deb66:	test   BYTE PTR [eax+0xb2],0x1
  8deb6d:	je     8deb7d
  8deb6f:	cmp    DWORD PTR [eax+0x60],0x0
  8deb73:	jne    8deb7d
  8deb75:	mov    DWORD PTR [esp],eax
  8deb78:	call   1db0b8
  8deb7d:	mov    DWORD PTR [esp+0x4],edi
  8deb81:	mov    DWORD PTR [esp+0x8],0x0
  8deb89:	mov    DWORD PTR [esp],0x0
  8deb90:	call   1679a11  ; UnityEngine.Object::op_Implicit
  8deb95:	test   al,al
  8deb97:	je     8debdd
  8deb99:	mov    eax,DWORD PTR [esi+0x68]
  8deb9c:	test   eax,eax
  8deb9e:	je     8debe7
  8deba0:	mov    cl,BYTE PTR [ebp+0xc]
  8deba3:	mov    edx,DWORD PTR [eax]
  8deba5:	mov    edi,DWORD PTR [edx+0x180]
  8debab:	mov    DWORD PTR [esp+0x8],edi
  8debaf:	movzx  ecx,cl
  8debb2:	mov    DWORD PTR [esp+0x4],ecx
  8debb6:	mov    DWORD PTR [esp],eax
  8debb9:	call   DWORD PTR [edx+0x17c]
  8debbf:	mov    eax,DWORD PTR [esi+0x68]
  8debc2:	test   eax,eax
  8debc4:	je     8debe7
  8debc6:	mov    ecx,DWORD PTR [eax]
  8debc8:	mov    edx,DWORD PTR [ecx+0x1a0]
  8debce:	mov    DWORD PTR [esp+0x4],edx
  8debd2:	mov    DWORD PTR [esp],eax
  8debd5:	call   DWORD PTR [ecx+0x19c]
  8debdb:	jmp    8debdf
  8debdd:	fldz
  8debdf:	lea    esp,[ebp-0xc]
  8debe2:	pop    esi
  8debe3:	pop    edi
  8debe4:	pop    ebx
  8debe5:	pop    ebp
  8debe6:	ret
  8debe7:	call   1fbc48
  8debec:	call   8b3f00