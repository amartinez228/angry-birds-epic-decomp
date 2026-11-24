
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

010913fc:
 10913fc:	push   ebp
 10913fd:	mov    ebp,esp
 10913ff:	push   ebx
 1091400:	push   esi
 1091401:	and    esp,0xfffffff0
 1091404:	sub    esp,0x10
 1091407:	call   109140c
 109140c:	pop    ebx
 109140d:	add    ebx,0xe80b38
 1091413:	mov    esi,DWORD PTR [ebp+0xc]
 1091416:	mov    al,BYTE PTR [ebx+0x634a2]
 109141c:	test   al,al
 109141e:	jne    1091437
 1091420:	lea    eax,[ebx-0x66a354]
 1091426:	mov    eax,DWORD PTR [eax]
 1091428:	mov    DWORD PTR [esp],eax
 109142b:	call   1ca6e8
 1091430:	mov    BYTE PTR [ebx+0x634a2],0x1
 1091437:	test   esi,esi
 1091439:	je     1091475
 109143b:	mov    DWORD PTR [esp],esi
 109143e:	mov    DWORD PTR [esp+0x4],0x0
 1091446:	call   16792bf  ; UnityEngine.Object::get_name
 109144b:	test   eax,eax
 109144d:	je     1091475
 109144f:	lea    ecx,[ebx+0x5a2d8]  ; literal "CharacterHighResAndEquipmentAssetProvider"
 1091455:	mov    ecx,DWORD PTR [ecx]
 1091457:	mov    DWORD PTR [esp+0x4],ecx
 109145b:	mov    DWORD PTR [esp],eax
 109145e:	mov    DWORD PTR [esp+0x8],0x0
 1091466:	call   cb2476  ; System.String::StartsWith
 109146b:	movzx  eax,al
 109146e:	lea    esp,[ebp-0x8]
 1091471:	pop    esi
 1091472:	pop    ebx
 1091473:	pop    ebp
 1091474:	ret
 1091475:	call   1fbc48
 109147a:	call   1065aed