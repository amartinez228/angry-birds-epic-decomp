
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0053e44b:
  53e44b:	push   ebp
  53e44c:	mov    ebp,esp
  53e44e:	push   ebx
  53e44f:	push   edi
  53e450:	push   esi
  53e451:	and    esp,0xfffffff0
  53e454:	sub    esp,0x10
  53e457:	call   53e45c
  53e45c:	pop    ebx
  53e45d:	add    ebx,0x19d3ae8
  53e463:	mov    esi,DWORD PTR [ebp+0xc]
  53e466:	mov    al,BYTE PTR [ebx+0x5d5f5]
  53e46c:	test   al,al
  53e46e:	jne    53e487
  53e470:	lea    eax,[ebx-0x66f314]
  53e476:	mov    eax,DWORD PTR [eax]
  53e478:	mov    DWORD PTR [esp],eax
  53e47b:	call   1ca6e8
  53e480:	mov    BYTE PTR [ebx+0x5d5f5],0x1
  53e487:	test   esi,esi
  53e489:	je     53e4ea
  53e48b:	lea    eax,[ebx+0x45874]
  53e491:	mov    eax,DWORD PTR [eax]
  53e493:	mov    ecx,DWORD PTR [esi]
  53e495:	movzx  edx,WORD PTR [ecx+0xaa]
  53e49c:	test   edx,edx
  53e49e:	je     53e4af
  53e4a0:	mov    edi,DWORD PTR [ecx+0x4c]
  53e4a3:	xor    esi,esi
  53e4a5:	cmp    DWORD PTR [edi+esi*8],eax
  53e4a8:	je     53e4c8
  53e4aa:	inc    esi
  53e4ab:	cmp    esi,edx
  53e4ad:	jb     53e4a5
  53e4af:	mov    DWORD PTR [esp+0x4],eax
  53e4b3:	mov    esi,DWORD PTR [ebp+0xc]
  53e4b6:	mov    DWORD PTR [esp],esi
  53e4b9:	mov    DWORD PTR [esp+0x8],0x1f
  53e4c1:	call   1c1964
  53e4c6:	jmp    53e4d6
  53e4c8:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  53e4cc:	lea    eax,[ecx+eax*8+0x1ac]
  53e4d3:	mov    esi,DWORD PTR [ebp+0xc]
  53e4d6:	mov    ecx,DWORD PTR [eax+0x4]
  53e4d9:	mov    DWORD PTR [esp+0x4],ecx
  53e4dd:	mov    DWORD PTR [esp],esi
  53e4e0:	call   DWORD PTR [eax]
  53e4e2:	lea    esp,[ebp-0xc]
  53e4e5:	pop    esi
  53e4e6:	pop    edi
  53e4e7:	pop    ebx
  53e4e8:	pop    ebp
  53e4e9:	ret
  53e4ea:	call   1fbc48
  53e4ef:	call   540b98