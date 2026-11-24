
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fc3b0:
 13fc3b0:	push   ebp
 13fc3b1:	mov    ebp,esp
 13fc3b3:	push   ebx
 13fc3b4:	push   edi
 13fc3b5:	push   esi
 13fc3b6:	and    esp,0xfffffff0
 13fc3b9:	sub    esp,0x20
 13fc3bc:	call   13fc3c1
 13fc3c1:	pop    ebx
 13fc3c2:	add    ebx,0xb15b83
 13fc3c8:	mov    al,BYTE PTR [ebx+0x654e4]
 13fc3ce:	test   al,al
 13fc3d0:	jne    13fc3e9
 13fc3d2:	lea    eax,[ebx-0x65e620]
 13fc3d8:	mov    eax,DWORD PTR [eax]
 13fc3da:	mov    DWORD PTR [esp],eax
 13fc3dd:	call   1ca6e8
 13fc3e2:	mov    BYTE PTR [ebx+0x654e4],0x1
 13fc3e9:	lea    eax,[ebx+0x45cd4]
 13fc3ef:	mov    eax,DWORD PTR [eax]
 13fc3f1:	mov    DWORD PTR [esp],eax
 13fc3f4:	call   20bfb2
 13fc3f9:	mov    esi,eax
 13fc3fb:	mov    DWORD PTR [esp],esi
 13fc3fe:	mov    DWORD PTR [esp+0x4],0x0
 13fc406:	call   124632e  ; System.Object::.ctor
 13fc40b:	test   esi,esi
 13fc40d:	je     13fc5e5
 13fc413:	mov    ecx,DWORD PTR [ebp+0x14]
 13fc416:	mov    eax,DWORD PTR [ebp+0xc]
 13fc419:	mov    DWORD PTR [esi+0x8],ecx
 13fc41c:	test   eax,eax
 13fc41e:	je     13fc5e5
 13fc424:	mov    eax,DWORD PTR [eax+0x58]
 13fc427:	mov    DWORD PTR [esp+0x14],eax
 13fc42b:	lea    eax,[ebx+0x4a650]
 13fc431:	mov    eax,DWORD PTR [eax]
 13fc433:	mov    DWORD PTR [esp+0x10],eax
 13fc437:	lea    eax,[ebx+0x4588c]
 13fc43d:	mov    eax,DWORD PTR [eax]
 13fc43f:	mov    DWORD PTR [esp],eax
 13fc442:	call   20bfb2
 13fc447:	mov    edi,eax
 13fc449:	mov    eax,DWORD PTR [esp+0x10]
 13fc44d:	mov    DWORD PTR [esp+0x18],eax
 13fc451:	lea    eax,[ebx+0x4a054]
 13fc457:	mov    eax,DWORD PTR [eax]
 13fc459:	mov    DWORD PTR [esp+0xc],eax
 13fc45d:	mov    eax,DWORD PTR [esp+0x18]
 13fc461:	mov    DWORD PTR [esp+0x8],eax
 13fc465:	mov    DWORD PTR [esp+0x4],esi
 13fc469:	mov    DWORD PTR [esp],edi
 13fc46c:	call   159e10c
 13fc471:	lea    eax,[ebx+0x4a058]
 13fc477:	mov    eax,DWORD PTR [eax]
 13fc479:	mov    DWORD PTR [esp+0xc],eax
 13fc47d:	mov    DWORD PTR [esp+0x8],edi
 13fc481:	mov    eax,DWORD PTR [esp+0x14]
 13fc485:	mov    DWORD PTR [esp+0x4],eax
 13fc489:	mov    DWORD PTR [esp],0x0
 13fc490:	call   9c0237
 13fc495:	lea    ecx,[ebx+0x4a080]
 13fc49b:	mov    ecx,DWORD PTR [ecx]
 13fc49d:	mov    DWORD PTR [esp+0x8],ecx
 13fc4a1:	mov    DWORD PTR [esp+0x4],eax
 13fc4a5:	mov    DWORD PTR [esp],0x0
 13fc4ac:	call   9c7738
 13fc4b1:	mov    esi,eax
 13fc4b3:	test   esi,esi
 13fc4b5:	je     13fc5e5
 13fc4bb:	lea    eax,[ebx+0x4a048]
 13fc4c1:	mov    eax,DWORD PTR [eax]
 13fc4c3:	mov    DWORD PTR [esp+0x4],eax
 13fc4c7:	mov    DWORD PTR [esp],esi
 13fc4ca:	call   4c46f7
 13fc4cf:	mov    DWORD PTR [esp+0x8],eax
 13fc4d3:	mov    DWORD PTR [esp+0xc],0x0
 13fc4db:	mov    DWORD PTR [esp+0x4],0x0
 13fc4e3:	mov    DWORD PTR [esp],0x0
 13fc4ea:	call   167eb06  ; UnityEngine.Random::Range
 13fc4ef:	lea    ecx,[ebx+0x4a0ac]
 13fc4f5:	mov    ecx,DWORD PTR [ecx]
 13fc4f7:	mov    DWORD PTR [esp+0x8],ecx
 13fc4fb:	mov    DWORD PTR [esp+0x4],eax
 13fc4ff:	mov    DWORD PTR [esp],esi
 13fc502:	call   4c4707
 13fc507:	mov    edi,eax
 13fc509:	lea    eax,[ebx+0x45890]
 13fc50f:	mov    eax,DWORD PTR [eax]
 13fc511:	mov    DWORD PTR [esp],eax
 13fc514:	call   20bfb2
 13fc519:	mov    esi,eax
 13fc51b:	lea    eax,[ebx+0x4a074]
 13fc521:	mov    eax,DWORD PTR [eax]
 13fc523:	mov    DWORD PTR [esp+0x4],eax
 13fc527:	mov    DWORD PTR [esp],esi
 13fc52a:	call   4c15d9
 13fc52f:	test   esi,esi
 13fc531:	je     13fc5e5
 13fc537:	lea    eax,[ebx+0x4a078]
 13fc53d:	mov    eax,DWORD PTR [eax]
 13fc53f:	mov    DWORD PTR [esp+0x8],eax
 13fc543:	mov    DWORD PTR [esp+0x4],edi
 13fc547:	mov    DWORD PTR [esp],esi
 13fc54a:	call   4c23b4
 13fc54f:	mov    eax,DWORD PTR [ebp+0x8]
 13fc552:	mov    DWORD PTR [eax+0x34],esi
 13fc555:	lea    eax,[ebx+0x4a344]
 13fc55b:	mov    eax,DWORD PTR [eax]
 13fc55d:	mov    DWORD PTR [esp+0x8],eax
 13fc561:	mov    DWORD PTR [esp+0x4],esi
 13fc565:	mov    esi,DWORD PTR [ebp+0x10]
 13fc568:	mov    DWORD PTR [esp],0x0
 13fc56f:	call   15eff96
 13fc574:	mov    DWORD PTR [esp+0x14],eax
 13fc578:	test   esi,esi
 13fc57a:	je     13fc5e5
 13fc57c:	lea    eax,[ebx+0x45874]
 13fc582:	mov    eax,DWORD PTR [eax]
 13fc584:	mov    ecx,DWORD PTR [esi]
 13fc586:	movzx  edx,WORD PTR [ecx+0xaa]
 13fc58d:	test   edx,edx
 13fc58f:	je     13fc5a0
 13fc591:	mov    edi,DWORD PTR [ecx+0x4c]
 13fc594:	xor    esi,esi
 13fc596:	cmp    DWORD PTR [edi+esi*8],eax
 13fc599:	je     13fc5b9
 13fc59b:	inc    esi
 13fc59c:	cmp    esi,edx
 13fc59e:	jb     13fc596
 13fc5a0:	mov    DWORD PTR [esp+0x4],eax
 13fc5a4:	mov    esi,DWORD PTR [ebp+0x10]
 13fc5a7:	mov    DWORD PTR [esp],esi
 13fc5aa:	mov    DWORD PTR [esp+0x8],0x73
 13fc5b2:	call   1c1964
 13fc5b7:	jmp    13fc5c7
 13fc5b9:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 13fc5bd:	lea    eax,[ecx+eax*8+0x44c]
 13fc5c4:	mov    esi,DWORD PTR [ebp+0x10]
 13fc5c7:	mov    ecx,DWORD PTR [eax+0x4]
 13fc5ca:	mov    DWORD PTR [esp+0x8],ecx
 13fc5ce:	mov    ecx,DWORD PTR [esp+0x14]
 13fc5d2:	mov    DWORD PTR [esp+0x4],ecx
 13fc5d6:	mov    DWORD PTR [esp],esi
 13fc5d9:	call   DWORD PTR [eax]
 13fc5db:	fldz
 13fc5dd:	lea    esp,[ebp-0xc]
 13fc5e0:	pop    esi
 13fc5e1:	pop    edi
 13fc5e2:	pop    ebx
 13fc5e3:	pop    ebp
 13fc5e4:	ret
 13fc5e5:	call   1fbc48
 13fc5ea:	call   13f24e0