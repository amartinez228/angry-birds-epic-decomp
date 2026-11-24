
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0179b45b:
 179b45b:	push   ebp
 179b45c:	mov    ebp,esp
 179b45e:	and    esp,0xfffffffc
 179b461:	mov    eax,DWORD PTR [ebp+0xc]
 179b464:	mov    ecx,DWORD PTR [ebp+0x8]
 179b467:	cmp    DWORD PTR [ecx+0xc],eax
 179b46a:	jle    179b470
 179b46c:	xor    eax,eax
 179b46e:	jmp    179b482
 179b470:	mov    ecx,DWORD PTR [ecx+0x10]
 179b473:	cmp    ecx,eax
 179b475:	setg   al
 179b478:	test   ecx,ecx
 179b47a:	sete   cl
 179b47d:	or     cl,al
 179b47f:	movzx  eax,cl
 179b482:	mov    esp,ebp
 179b484:	pop    ebp
 179b485:	ret