
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01603889:
 1603889:	push   ebp
 160388a:	mov    ebp,esp
 160388c:	push   ebx
 160388d:	push   edi
 160388e:	push   esi
 160388f:	and    esp,0xfffffff0
 1603892:	sub    esp,0x20
 1603895:	call   160389a
 160389a:	pop    ebx
 160389b:	add    ebx,0x90e6aa
 16038a1:	mov    esi,DWORD PTR [ebp+0x8]
 16038a4:	mov    al,BYTE PTR [ebx+0x66b91]
 16038aa:	test   al,al
 16038ac:	jne    16038c5
 16038ae:	lea    eax,[ebx-0x66fdf0]
 16038b4:	mov    eax,DWORD PTR [eax]
 16038b6:	mov    DWORD PTR [esp],eax
 16038b9:	call   1ca6e8
 16038be:	mov    BYTE PTR [ebx+0x66b91],0x1
 16038c5:	mov    esi,DWORD PTR [esi+0x8]
 16038c8:	test   esi,esi
 16038ca:	je     1603931
 16038cc:	lea    eax,[ebx+0x45884]
 16038d2:	mov    eax,DWORD PTR [eax]
 16038d4:	mov    ecx,DWORD PTR [esi]
 16038d6:	mov    DWORD PTR [esp+0x18],ecx
 16038da:	movzx  edx,WORD PTR [ecx+0xaa]
 16038e1:	test   edx,edx
 16038e3:	je     16038f8
 16038e5:	mov    ecx,DWORD PTR [esp+0x18]
 16038e9:	mov    edi,DWORD PTR [ecx+0x4c]
 16038ec:	xor    ecx,ecx
 16038ee:	cmp    DWORD PTR [edi+ecx*8],eax
 16038f1:	je     160390e
 16038f3:	inc    ecx
 16038f4:	cmp    ecx,edx
 16038f6:	jb     16038ee
 16038f8:	mov    DWORD PTR [esp+0x4],eax
 16038fc:	mov    DWORD PTR [esp],esi
 16038ff:	mov    DWORD PTR [esp+0x8],0x0
 1603907:	call   1c1964
 160390c:	jmp    160391d
 160390e:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 1603912:	mov    ecx,DWORD PTR [esp+0x18]
 1603916:	lea    eax,[ecx+eax*8+0xb4]
 160391d:	mov    ecx,DWORD PTR [eax+0x4]
 1603920:	mov    DWORD PTR [esp+0x4],ecx
 1603924:	mov    DWORD PTR [esp],esi
 1603927:	call   DWORD PTR [eax]
 1603929:	lea    esp,[ebp-0xc]
 160392c:	pop    esi
 160392d:	pop    edi
 160392e:	pop    ebx
 160392f:	pop    ebp
 1603930:	ret
 1603931:	call   1fbc48
 1603936:	call   1608243