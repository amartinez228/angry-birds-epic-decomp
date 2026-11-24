
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008e73ea:
  8e73ea:	push   ebp
  8e73eb:	mov    ebp,esp
  8e73ed:	push   ebx
  8e73ee:	push   esi
  8e73ef:	and    esp,0xfffffff0
  8e73f2:	sub    esp,0x10
  8e73f5:	call   8e73fa
  8e73fa:	pop    ebx
  8e73fb:	add    ebx,0x162ab4a
  8e7401:	lea    esi,[ebp+0xc]
  8e7404:	mov    al,BYTE PTR [ebx+0x601c7]
  8e740a:	test   al,al
  8e740c:	jne    8e7425
  8e740e:	lea    eax,[ebx-0x658574]
  8e7414:	mov    eax,DWORD PTR [eax]
  8e7416:	mov    DWORD PTR [esp],eax
  8e7419:	call   1ca6e8
  8e741e:	mov    BYTE PTR [ebx+0x601c7],0x1
  8e7425:	lea    eax,[ebx+0x499dc]
  8e742b:	mov    eax,DWORD PTR [eax]
  8e742d:	mov    DWORD PTR [esp+0x4],eax
  8e7431:	mov    DWORD PTR [esp],esi
  8e7434:	call   16ab7a2
  8e7439:	test   eax,eax
  8e743b:	je     8e7463
  8e743d:	lea    ecx,[ebx+0x57310]  ; literal "experience"
  8e7443:	mov    ecx,DWORD PTR [ecx]
  8e7445:	mov    DWORD PTR [esp+0x4],ecx
  8e7449:	mov    DWORD PTR [esp],eax
  8e744c:	mov    DWORD PTR [esp+0x8],0x0
  8e7454:	call   cba87a  ; System.String::Equals
  8e7459:	movzx  eax,al
  8e745c:	lea    esp,[ebp-0x8]
  8e745f:	pop    esi
  8e7460:	pop    ebx
  8e7461:	pop    ebp
  8e7462:	ret
  8e7463:	call   1fbc48
  8e7468:	call   8b3f00