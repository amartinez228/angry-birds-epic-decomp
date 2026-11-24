
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008da5f7:
  8da5f7:	push   ebp
  8da5f8:	mov    ebp,esp
  8da5fa:	push   ebx
  8da5fb:	push   esi
  8da5fc:	and    esp,0xfffffff0
  8da5ff:	sub    esp,0x10
  8da602:	call   8da607
  8da607:	pop    ebx
  8da608:	add    ebx,0x163793d
  8da60e:	mov    al,BYTE PTR [ebx+0x601a0]
  8da614:	test   al,al
  8da616:	jne    8da62f
  8da618:	lea    eax,[ebx-0x66d9e4]
  8da61e:	mov    eax,DWORD PTR [eax]
  8da620:	mov    DWORD PTR [esp],eax
  8da623:	call   1ca6e8
  8da628:	mov    BYTE PTR [ebx+0x601a0],0x1
  8da62f:	lea    eax,[ebx+0x46bb4]
  8da635:	mov    eax,DWORD PTR [eax]
  8da637:	mov    DWORD PTR [esp],eax
  8da63a:	call   20bfb2
  8da63f:	mov    esi,eax
  8da641:	mov    DWORD PTR [esp],esi
  8da644:	mov    DWORD PTR [esp+0x4],0x0
  8da64c:	call   124632e  ; System.Object::.ctor
  8da651:	test   esi,esi
  8da653:	je     8da66a
  8da655:	mov    eax,DWORD PTR [ebp+0xc]
  8da658:	mov    ecx,DWORD PTR [ebp+0x8]
  8da65b:	mov    DWORD PTR [esi+0x8],eax
  8da65e:	mov    DWORD PTR [esi+0xc],ecx
  8da661:	mov    eax,esi
  8da663:	lea    esp,[ebp-0x8]
  8da666:	pop    esi
  8da667:	pop    ebx
  8da668:	pop    ebp
  8da669:	ret
  8da66a:	call   1fbc48
  8da66f:	call   8b3f00