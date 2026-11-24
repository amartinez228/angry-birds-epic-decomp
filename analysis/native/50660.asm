
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008e746d:
  8e746d:	push   ebp
  8e746e:	mov    ebp,esp
  8e7470:	push   ebx
  8e7471:	push   edi
  8e7472:	push   esi
  8e7473:	and    esp,0xfffffff0
  8e7476:	sub    esp,0x20
  8e7479:	call   8e747e
  8e747e:	pop    ebx
  8e747f:	add    ebx,0x162aac6
  8e7485:	mov    esi,DWORD PTR [ebp+0xc]
  8e7488:	mov    al,BYTE PTR [ebx+0x601c8]
  8e748e:	test   al,al
  8e7490:	jne    8e74a9
  8e7492:	lea    eax,[ebx-0x658570]
  8e7498:	mov    eax,DWORD PTR [eax]
  8e749a:	mov    DWORD PTR [esp],eax
  8e749d:	call   1ca6e8
  8e74a2:	mov    BYTE PTR [ebx+0x601c8],0x1
  8e74a9:	test   esi,esi
  8e74ab:	je     8e757c
  8e74b1:	lea    eax,[ebx+0x45874]
  8e74b7:	mov    eax,DWORD PTR [eax]
  8e74b9:	mov    ecx,DWORD PTR [esi]
  8e74bb:	movzx  edx,WORD PTR [ecx+0xaa]
  8e74c2:	test   edx,edx
  8e74c4:	je     8e74d5
  8e74c6:	mov    edi,DWORD PTR [ecx+0x4c]
  8e74c9:	xor    esi,esi
  8e74cb:	cmp    DWORD PTR [edi+esi*8],eax
  8e74ce:	je     8e74f0
  8e74d0:	inc    esi
  8e74d1:	cmp    esi,edx
  8e74d3:	jb     8e74cb
  8e74d5:	mov    DWORD PTR [esp+0x4],eax
  8e74d9:	mov    esi,DWORD PTR [ebp+0xc]
  8e74dc:	mov    DWORD PTR [esp],esi
  8e74df:	mov    DWORD PTR [esp+0x8],0x9
  8e74e7:	call   1c1964
  8e74ec:	mov    ecx,eax
  8e74ee:	jmp    8e74fe
  8e74f0:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  8e74f4:	lea    ecx,[ecx+eax*8+0xfc]
  8e74fb:	mov    esi,DWORD PTR [ebp+0xc]
  8e74fe:	mov    eax,DWORD PTR [ecx+0x4]
  8e7501:	mov    DWORD PTR [esp+0x4],eax
  8e7505:	mov    DWORD PTR [esp],esi
  8e7508:	call   DWORD PTR [ecx]
  8e750a:	mov    esi,eax
  8e750c:	test   esi,esi
  8e750e:	je     8e757c
  8e7510:	lea    eax,[ebx+0x45884]
  8e7516:	mov    eax,DWORD PTR [eax]
  8e7518:	mov    ecx,DWORD PTR [esi]
  8e751a:	mov    DWORD PTR [esp+0x18],ecx
  8e751e:	movzx  edx,WORD PTR [ecx+0xaa]
  8e7525:	test   edx,edx
  8e7527:	je     8e753c
  8e7529:	mov    ecx,DWORD PTR [esp+0x18]
  8e752d:	mov    edi,DWORD PTR [ecx+0x4c]
  8e7530:	xor    ecx,ecx
  8e7532:	cmp    DWORD PTR [edi+ecx*8],eax
  8e7535:	je     8e7554
  8e7537:	inc    ecx
  8e7538:	cmp    ecx,edx
  8e753a:	jb     8e7532
  8e753c:	mov    DWORD PTR [esp+0x4],eax
  8e7540:	mov    DWORD PTR [esp],esi
  8e7543:	mov    DWORD PTR [esp+0x8],0x14
  8e754b:	call   1c1964
  8e7550:	mov    ecx,eax
  8e7552:	jmp    8e7563
  8e7554:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8e7558:	mov    ecx,DWORD PTR [esp+0x18]
  8e755c:	lea    ecx,[ecx+eax*8+0x154]
  8e7563:	mov    eax,DWORD PTR [ecx+0x4]
  8e7566:	mov    DWORD PTR [esp+0x4],eax
  8e756a:	mov    DWORD PTR [esp],esi
  8e756d:	call   DWORD PTR [ecx]
  8e756f:	xor    al,0x1
  8e7571:	movzx  eax,al
  8e7574:	lea    esp,[ebp-0xc]
  8e7577:	pop    esi
  8e7578:	pop    edi
  8e7579:	pop    ebx
  8e757a:	pop    ebp
  8e757b:	ret
  8e757c:	call   1fbc48
  8e7581:	call   8b3f00