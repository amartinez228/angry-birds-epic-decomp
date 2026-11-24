
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006bf0be:
  6bf0be:	push   ebp
  6bf0bf:	mov    ebp,esp
  6bf0c1:	push   ebx
  6bf0c2:	push   edi
  6bf0c3:	push   esi
  6bf0c4:	and    esp,0xfffffff0
  6bf0c7:	sub    esp,0x10
  6bf0ca:	call   6bf0cf
  6bf0cf:	pop    ebx
  6bf0d0:	add    ebx,0x1852e75
  6bf0d6:	mov    al,BYTE PTR [ebx+0x5f61f]
  6bf0dc:	test   al,al
  6bf0de:	jne    6bf0f7
  6bf0e0:	lea    eax,[ebx-0x659980]
  6bf0e6:	mov    eax,DWORD PTR [eax]
  6bf0e8:	mov    DWORD PTR [esp],eax
  6bf0eb:	call   1ca6e8
  6bf0f0:	mov    BYTE PTR [ebx+0x5f61f],0x1
  6bf0f7:	lea    eax,[ebx+0x45dfc]
  6bf0fd:	mov    eax,DWORD PTR [eax]
  6bf0ff:	mov    DWORD PTR [esp],eax
  6bf102:	call   20bfb2
  6bf107:	mov    esi,eax
  6bf109:	mov    DWORD PTR [esp],esi
  6bf10c:	mov    DWORD PTR [esp+0x4],0x0
  6bf114:	call   124632e  ; System.Object::.ctor
  6bf119:	test   esi,esi
  6bf11b:	je     6bf13f
  6bf11d:	mov    eax,DWORD PTR [ebp+0x14]
  6bf120:	mov    ecx,DWORD PTR [ebp+0x10]
  6bf123:	mov    edx,DWORD PTR [ebp+0xc]
  6bf126:	mov    edi,DWORD PTR [ebp+0x8]
  6bf129:	mov    DWORD PTR [esi+0x8],eax
  6bf12c:	mov    DWORD PTR [esi+0xc],ecx
  6bf12f:	mov    DWORD PTR [esi+0x10],edx
  6bf132:	mov    DWORD PTR [esi+0x18],edi
  6bf135:	mov    eax,esi
  6bf137:	lea    esp,[ebp-0xc]
  6bf13a:	pop    esi
  6bf13b:	pop    edi
  6bf13c:	pop    ebx
  6bf13d:	pop    ebp
  6bf13e:	ret
  6bf13f:	call   1fbc48
  6bf144:	call   6b106a