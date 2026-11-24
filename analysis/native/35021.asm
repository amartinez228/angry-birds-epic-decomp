
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c6676:
  6c6676:	push   ebp
  6c6677:	mov    ebp,esp
  6c6679:	push   ebx
  6c667a:	push   esi
  6c667b:	and    esp,0xfffffff0
  6c667e:	sub    esp,0x10
  6c6681:	call   6c6686
  6c6686:	pop    ebx
  6c6687:	add    ebx,0x184b8be
  6c668d:	mov    esi,DWORD PTR [ebp+0x8]
  6c6690:	mov    al,BYTE PTR [ebx+0x5f659]
  6c6696:	test   al,al
  6c6698:	jne    6c66b1
  6c669a:	lea    eax,[ebx-0x66eb08]
  6c66a0:	mov    eax,DWORD PTR [eax]
  6c66a2:	mov    DWORD PTR [esp],eax
  6c66a5:	call   1ca6e8
  6c66aa:	mov    BYTE PTR [ebx+0x5f659],0x1
  6c66b1:	mov    eax,DWORD PTR [esi+0x38]
  6c66b4:	test   eax,eax
  6c66b6:	je     6c66da
  6c66b8:	mov    ecx,DWORD PTR [ebp+0x10]
  6c66bb:	mov    edx,DWORD PTR [ebp+0xc]
  6c66be:	lea    esi,[ebx+0x4a83c]
  6c66c4:	mov    esi,DWORD PTR [esi]
  6c66c6:	mov    DWORD PTR [esp+0xc],esi
  6c66ca:	mov    DWORD PTR [esp+0x8],ecx
  6c66ce:	mov    DWORD PTR [esp+0x4],edx
  6c66d2:	mov    DWORD PTR [esp],eax
  6c66d5:	call   15f367f  ; System.Action`2<int, int>::Invoke
  6c66da:	lea    esp,[ebp-0x8]
  6c66dd:	pop    esi
  6c66de:	pop    ebx
  6c66df:	pop    ebp
  6c66e0:	ret