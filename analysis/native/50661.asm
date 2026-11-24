
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008e7586:
  8e7586:	push   ebp
  8e7587:	mov    ebp,esp
  8e7589:	push   ebx
  8e758a:	push   edi
  8e758b:	push   esi
  8e758c:	and    esp,0xfffffff0
  8e758f:	sub    esp,0x10
  8e7592:	call   8e7597
  8e7597:	pop    ebx
  8e7598:	add    ebx,0x162a9ad
  8e759e:	mov    esi,DWORD PTR [ebp+0xc]
  8e75a1:	mov    al,BYTE PTR [ebx+0x601c9]
  8e75a7:	test   al,al
  8e75a9:	jne    8e75c2
  8e75ab:	lea    eax,[ebx-0x65856c]
  8e75b1:	mov    eax,DWORD PTR [eax]
  8e75b3:	mov    DWORD PTR [esp],eax
  8e75b6:	call   1ca6e8
  8e75bb:	mov    BYTE PTR [ebx+0x601c9],0x1
  8e75c2:	test   esi,esi
  8e75c4:	je     8e7627
  8e75c6:	lea    eax,[ebx+0x45874]
  8e75cc:	mov    eax,DWORD PTR [eax]
  8e75ce:	mov    ecx,DWORD PTR [esi]
  8e75d0:	movzx  edx,WORD PTR [ecx+0xaa]
  8e75d7:	test   edx,edx
  8e75d9:	je     8e75ea
  8e75db:	mov    edi,DWORD PTR [ecx+0x4c]
  8e75de:	xor    esi,esi
  8e75e0:	cmp    DWORD PTR [edi+esi*8],eax
  8e75e3:	je     8e7605
  8e75e5:	inc    esi
  8e75e6:	cmp    esi,edx
  8e75e8:	jb     8e75e0
  8e75ea:	mov    DWORD PTR [esp+0x4],eax
  8e75ee:	mov    esi,DWORD PTR [ebp+0xc]
  8e75f1:	mov    DWORD PTR [esp],esi
  8e75f4:	mov    DWORD PTR [esp+0x8],0xe
  8e75fc:	call   1c1964
  8e7601:	mov    ecx,eax
  8e7603:	jmp    8e7613
  8e7605:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  8e7609:	lea    ecx,[ecx+eax*8+0x124]
  8e7610:	mov    esi,DWORD PTR [ebp+0xc]
  8e7613:	mov    eax,DWORD PTR [ecx+0x4]
  8e7616:	mov    DWORD PTR [esp+0x4],eax
  8e761a:	mov    DWORD PTR [esp],esi
  8e761d:	call   DWORD PTR [ecx]
  8e761f:	lea    esp,[ebp-0xc]
  8e7622:	pop    esi
  8e7623:	pop    edi
  8e7624:	pop    ebx
  8e7625:	pop    ebp
  8e7626:	ret
  8e7627:	call   1fbc48
  8e762c:	call   8b3f00