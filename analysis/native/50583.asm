
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008da794:
  8da794:	push   ebp
  8da795:	mov    ebp,esp
  8da797:	push   ebx
  8da798:	push   esi
  8da799:	and    esp,0xfffffff0
  8da79c:	sub    esp,0x10
  8da79f:	call   8da7a4
  8da7a4:	pop    ebx
  8da7a5:	add    ebx,0x16377a0
  8da7ab:	mov    al,BYTE PTR [ebx+0x6019c]
  8da7b1:	test   al,al
  8da7b3:	jne    8da7cc
  8da7b5:	lea    eax,[ebx-0x66da34]
  8da7bb:	mov    eax,DWORD PTR [eax]
  8da7bd:	mov    DWORD PTR [esp],eax
  8da7c0:	call   1ca6e8
  8da7c5:	mov    BYTE PTR [ebx+0x6019c],0x1
  8da7cc:	lea    eax,[ebx+0x46ba0]
  8da7d2:	mov    eax,DWORD PTR [eax]
  8da7d4:	mov    DWORD PTR [esp],eax
  8da7d7:	call   20bfb2
  8da7dc:	mov    esi,eax
  8da7de:	mov    DWORD PTR [esp],esi
  8da7e1:	mov    DWORD PTR [esp+0x4],0x0
  8da7e9:	call   124632e  ; System.Object::.ctor
  8da7ee:	test   esi,esi
  8da7f0:	je     8da80d
  8da7f2:	mov    al,BYTE PTR [ebp+0x10]
  8da7f5:	mov    ecx,DWORD PTR [ebp+0xc]
  8da7f8:	mov    edx,DWORD PTR [ebp+0x8]
  8da7fb:	mov    BYTE PTR [esi+0x18],al
  8da7fe:	mov    DWORD PTR [esi+0x28],ecx
  8da801:	mov    DWORD PTR [esi+0x2c],edx
  8da804:	mov    eax,esi
  8da806:	lea    esp,[ebp-0x8]
  8da809:	pop    esi
  8da80a:	pop    ebx
  8da80b:	pop    ebp
  8da80c:	ret
  8da80d:	call   1fbc48
  8da812:	call   8b3f00