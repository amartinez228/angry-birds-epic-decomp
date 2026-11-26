
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01493505:
 1493505:	push   ebp
 1493506:	mov    ebp,esp
 1493508:	push   ebx
 1493509:	push   edi
 149350a:	push   esi
 149350b:	and    esp,0xfffffff0
 149350e:	sub    esp,0x20
 1493511:	call   1493516
 1493516:	pop    ebx
 1493517:	add    ebx,0xa7ea2e
 149351d:	mov    ecx,DWORD PTR [ebp+0x14]
 1493520:	mov    edx,DWORD PTR [ebp+0x18]
 1493523:	mov    esi,DWORD PTR [ebp+0x8]
 1493526:	mov    edi,DWORD PTR [esi]
 1493528:	mov    eax,DWORD PTR [edi+0xe0]
 149352e:	mov    DWORD PTR [esp+0x14],eax
 1493532:	mov    DWORD PTR [esp+0xc],edx
 1493536:	mov    DWORD PTR [esp+0x8],ecx
 149353a:	mov    eax,DWORD PTR [ebp+0x10]
 149353d:	mov    DWORD PTR [esp+0x4],eax
 1493541:	mov    DWORD PTR [esp],esi
 1493544:	mov    DWORD PTR [esp+0x10],0x0
 149354c:	call   DWORD PTR [edi+0xdc]
 1493552:	lea    esp,[ebp-0xc]
 1493555:	pop    esi
 1493556:	pop    edi
 1493557:	pop    ebx
 1493558:	pop    ebp
 1493559:	ret