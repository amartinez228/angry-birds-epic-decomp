
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0053e562:
  53e562:	push   ebp
  53e563:	mov    ebp,esp
  53e565:	push   ebx
  53e566:	push   edi
  53e567:	push   esi
  53e568:	and    esp,0xfffffff0
  53e56b:	sub    esp,0x10
  53e56e:	call   53e573
  53e573:	pop    ebx
  53e574:	add    ebx,0x19d39d1
  53e57a:	mov    esi,DWORD PTR [ebp+0xc]
  53e57d:	mov    al,BYTE PTR [ebx+0x5d5f6]
  53e583:	test   al,al
  53e585:	jne    53e59e
  53e587:	lea    eax,[ebx-0x66f318]
  53e58d:	mov    eax,DWORD PTR [eax]
  53e58f:	mov    DWORD PTR [esp],eax
  53e592:	call   1ca6e8
  53e597:	mov    BYTE PTR [ebx+0x5d5f6],0x1
  53e59e:	test   esi,esi
  53e5a0:	je     53e601
  53e5a2:	lea    eax,[ebx+0x45874]
  53e5a8:	mov    eax,DWORD PTR [eax]
  53e5aa:	mov    ecx,DWORD PTR [esi]
  53e5ac:	movzx  edx,WORD PTR [ecx+0xaa]
  53e5b3:	test   edx,edx
  53e5b5:	je     53e5c6
  53e5b7:	mov    edi,DWORD PTR [ecx+0x4c]
  53e5ba:	xor    esi,esi
  53e5bc:	cmp    DWORD PTR [edi+esi*8],eax
  53e5bf:	je     53e5df
  53e5c1:	inc    esi
  53e5c2:	cmp    esi,edx
  53e5c4:	jb     53e5bc
  53e5c6:	mov    DWORD PTR [esp+0x4],eax
  53e5ca:	mov    esi,DWORD PTR [ebp+0xc]
  53e5cd:	mov    DWORD PTR [esp],esi
  53e5d0:	mov    DWORD PTR [esp+0x8],0x1f
  53e5d8:	call   1c1964
  53e5dd:	jmp    53e5ed
  53e5df:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  53e5e3:	lea    eax,[ecx+eax*8+0x1ac]
  53e5ea:	mov    esi,DWORD PTR [ebp+0xc]
  53e5ed:	mov    ecx,DWORD PTR [eax+0x4]
  53e5f0:	mov    DWORD PTR [esp+0x4],ecx
  53e5f4:	mov    DWORD PTR [esp],esi
  53e5f7:	call   DWORD PTR [eax]
  53e5f9:	lea    esp,[ebp-0xc]
  53e5fc:	pop    esi
  53e5fd:	pop    edi
  53e5fe:	pop    ebx
  53e5ff:	pop    ebp
  53e600:	ret
  53e601:	call   1fbc48
  53e606:	call   540b98