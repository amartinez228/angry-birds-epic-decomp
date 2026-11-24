
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008ba51f:
  8ba51f:	push   ebp
  8ba520:	mov    ebp,esp
  8ba522:	push   ebx
  8ba523:	push   edi
  8ba524:	push   esi
  8ba525:	and    esp,0xfffffff0
  8ba528:	sub    esp,0x20
  8ba52b:	call   8ba530
  8ba530:	pop    ebx
  8ba531:	add    ebx,0x1657a14
  8ba537:	mov    esi,DWORD PTR [ebp+0x8]
  8ba53a:	mov    al,BYTE PTR [ebx+0x600f3]
  8ba540:	test   al,al
  8ba542:	jne    8ba55b
  8ba544:	lea    eax,[ebx-0x66db94]
  8ba54a:	mov    eax,DWORD PTR [eax]
  8ba54c:	mov    DWORD PTR [esp],eax
  8ba54f:	call   1ca6e8
  8ba554:	mov    BYTE PTR [ebx+0x600f3],0x1
  8ba55b:	mov    edi,DWORD PTR [esi+0x14]
  8ba55e:	test   edi,edi
  8ba560:	je     8ba639
  8ba566:	lea    eax,[ebx+0x45918]
  8ba56c:	mov    eax,DWORD PTR [eax]
  8ba56e:	mov    ecx,DWORD PTR [edi]
  8ba570:	movzx  edx,BYTE PTR [eax+0xac]
  8ba577:	movzx  esi,BYTE PTR [ecx+0xac]
  8ba57e:	cmp    esi,edx
  8ba580:	jb     8ba58b
  8ba582:	mov    ecx,DWORD PTR [ecx+0x58]
  8ba585:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  8ba589:	je     8ba5ee
  8ba58b:	lea    eax,[ebx+0x45884]
  8ba591:	mov    eax,DWORD PTR [eax]
  8ba593:	mov    ecx,DWORD PTR [edi]
  8ba595:	mov    DWORD PTR [esp+0x18],ecx
  8ba599:	movzx  edx,WORD PTR [ecx+0xaa]
  8ba5a0:	test   edx,edx
  8ba5a2:	je     8ba5b7
  8ba5a4:	mov    ecx,DWORD PTR [esp+0x18]
  8ba5a8:	mov    esi,DWORD PTR [ecx+0x4c]
  8ba5ab:	xor    ecx,ecx
  8ba5ad:	cmp    DWORD PTR [esi+ecx*8],eax
  8ba5b0:	je     8ba5cf
  8ba5b2:	inc    ecx
  8ba5b3:	cmp    ecx,edx
  8ba5b5:	jb     8ba5ad
  8ba5b7:	mov    DWORD PTR [esp+0x4],eax
  8ba5bb:	mov    DWORD PTR [esp],edi
  8ba5be:	mov    DWORD PTR [esp+0x8],0x16
  8ba5c6:	call   1c1964
  8ba5cb:	mov    ecx,eax
  8ba5cd:	jmp    8ba5de
  8ba5cf:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  8ba5d3:	mov    ecx,DWORD PTR [esp+0x18]
  8ba5d7:	lea    ecx,[ecx+eax*8+0x164]
  8ba5de:	mov    eax,DWORD PTR [ecx+0x4]
  8ba5e1:	mov    DWORD PTR [esp+0x4],eax
  8ba5e5:	mov    DWORD PTR [esp],edi
  8ba5e8:	call   DWORD PTR [ecx]
  8ba5ea:	test   al,al
  8ba5ec:	je     8ba5f6
  8ba5ee:	lea    eax,[ebx+0x5949c]  ; literal "KnockedOutEnd"
  8ba5f4:	jmp    8ba5fc
  8ba5f6:	lea    eax,[ebx+0x594a0]  ; literal "Resurrection"
  8ba5fc:	mov    eax,DWORD PTR [eax]
  8ba5fe:	mov    DWORD PTR [esp+0x4],eax
  8ba602:	mov    esi,DWORD PTR [ebp+0x8]
  8ba605:	mov    DWORD PTR [esp],esi
  8ba608:	mov    DWORD PTR [esp+0x8],0x0
  8ba610:	call   e4e6f3  ; AssetControllerWithBoneAnimationBase::PlayAnimation
  8ba615:	lea    eax,[ebx+0x585d0]  ; literal "Idle"
  8ba61b:	mov    eax,DWORD PTR [eax]
  8ba61d:	mov    DWORD PTR [esp+0x4],eax
  8ba621:	mov    DWORD PTR [esp],esi
  8ba624:	mov    DWORD PTR [esp+0x8],0x0
  8ba62c:	call   e4eb5a  ; AssetControllerWithBoneAnimationBase::PlayAnimationQueued
  8ba631:	lea    esp,[ebp-0xc]
  8ba634:	pop    esi
  8ba635:	pop    edi
  8ba636:	pop    ebx
  8ba637:	pop    ebp
  8ba638:	ret
  8ba639:	call   1fbc48
  8ba63e:	call   8b3f00