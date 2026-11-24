
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008c28dc:
  8c28dc:	push   ebp
  8c28dd:	mov    ebp,esp
  8c28df:	push   ebx
  8c28e0:	push   esi
  8c28e1:	and    esp,0xfffffff0
  8c28e4:	sub    esp,0x10
  8c28e7:	call   8c28ec
  8c28ec:	pop    ebx
  8c28ed:	add    ebx,0x164f658
  8c28f3:	mov    al,BYTE PTR [ebx+0x6012a]
  8c28f9:	test   al,al
  8c28fb:	jne    8c2914
  8c28fd:	lea    eax,[ebx-0x66da74]
  8c2903:	mov    eax,DWORD PTR [eax]
  8c2905:	mov    DWORD PTR [esp],eax
  8c2908:	call   1ca6e8
  8c290d:	mov    BYTE PTR [ebx+0x6012a],0x1
  8c2914:	lea    eax,[ebx+0x46b6c]
  8c291a:	mov    eax,DWORD PTR [eax]
  8c291c:	mov    DWORD PTR [esp],eax
  8c291f:	call   20bfb2
  8c2924:	mov    esi,eax
  8c2926:	mov    DWORD PTR [esp],esi
  8c2929:	mov    DWORD PTR [esp+0x4],0x0
  8c2931:	call   124632e  ; System.Object::.ctor
  8c2936:	test   esi,esi
  8c2938:	je     8c2949
  8c293a:	mov    eax,DWORD PTR [ebp+0x8]
  8c293d:	mov    DWORD PTR [esi+0xc],eax
  8c2940:	mov    eax,esi
  8c2942:	lea    esp,[ebp-0x8]
  8c2945:	pop    esi
  8c2946:	pop    ebx
  8c2947:	pop    ebp
  8c2948:	ret
  8c2949:	call   1fbc48
  8c294e:	call   8b3f00