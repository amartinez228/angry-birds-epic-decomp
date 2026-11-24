
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00f9b66e:
  f9b66e:	push   ebp
  f9b66f:	mov    ebp,esp
  f9b671:	push   ebx
  f9b672:	push   edi
  f9b673:	push   esi
  f9b674:	and    esp,0xfffffff0
  f9b677:	sub    esp,0x10
  f9b67a:	call   f9b67f
  f9b67f:	pop    ebx
  f9b680:	add    ebx,0xf768c5
  f9b686:	mov    al,BYTE PTR [ebx+0x62df1]
  f9b68c:	test   al,al
  f9b68e:	jne    f9b6a7
  f9b690:	lea    eax,[ebx-0x66fa28]
  f9b696:	mov    eax,DWORD PTR [eax]
  f9b698:	mov    DWORD PTR [esp],eax
  f9b69b:	call   1ca6e8
  f9b6a0:	mov    BYTE PTR [ebx+0x62df1],0x1
  f9b6a7:	lea    eax,[ebx+0x46788]
  f9b6ad:	mov    eax,DWORD PTR [eax]
  f9b6af:	mov    DWORD PTR [esp],eax
  f9b6b2:	call   20bfb2
  f9b6b7:	mov    esi,eax
  f9b6b9:	mov    DWORD PTR [esp],esi
  f9b6bc:	mov    DWORD PTR [esp+0x4],0x0
  f9b6c4:	call   124632e  ; System.Object::.ctor
  f9b6c9:	test   esi,esi
  f9b6cb:	je     f9b70d
  f9b6cd:	mov    al,BYTE PTR [ebp+0x28]
  f9b6d0:	mov    ecx,DWORD PTR [ebp+0x24]
  f9b6d3:	lea    edx,[ebp+0x18]
  f9b6d6:	lea    edi,[ebp+0xc]
  f9b6d9:	mov    ebx,DWORD PTR [ebp+0x8]
  f9b6dc:	mov    DWORD PTR [esi+0x8],ecx
  f9b6df:	mov    BYTE PTR [esi+0x10],al
  f9b6e2:	mov    eax,DWORD PTR [edi+0x8]
  f9b6e5:	mov    DWORD PTR [esi+0x1c],eax
  f9b6e8:	movsd  xmm0,QWORD PTR [edi]
  f9b6ec:	movsd  QWORD PTR [esi+0x14],xmm0
  f9b6f1:	mov    eax,DWORD PTR [edx+0x8]
  f9b6f4:	mov    DWORD PTR [esi+0x28],eax
  f9b6f7:	movsd  xmm0,QWORD PTR [edx]
  f9b6fb:	movsd  QWORD PTR [esi+0x20],xmm0
  f9b700:	mov    DWORD PTR [esi+0x2c],ebx
  f9b703:	mov    eax,esi
  f9b705:	lea    esp,[ebp-0xc]
  f9b708:	pop    esi
  f9b709:	pop    edi
  f9b70a:	pop    ebx
  f9b70b:	pop    ebp
  f9b70c:	ret
  f9b70d:	call   1fbc48
  f9b712:	call   f6e364