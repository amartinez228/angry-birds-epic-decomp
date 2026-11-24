
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

016052d8:
 16052d8:	push   ebp
 16052d9:	mov    ebp,esp
 16052db:	push   ebx
 16052dc:	push   esi
 16052dd:	and    esp,0xfffffff0
 16052e0:	sub    esp,0x10
 16052e3:	call   16052e8
 16052e8:	pop    ebx
 16052e9:	add    ebx,0x90cc5c
 16052ef:	mov    esi,DWORD PTR [ebp+0x8]
 16052f2:	mov    al,BYTE PTR [ebx+0x66ba6]
 16052f8:	test   al,al
 16052fa:	jne    1605313
 16052fc:	lea    eax,[ebx-0x66fda8]
 1605302:	mov    eax,DWORD PTR [eax]
 1605304:	mov    DWORD PTR [esp],eax
 1605307:	call   1ca6e8
 160530c:	mov    BYTE PTR [ebx+0x66ba6],0x1
 1605313:	mov    eax,DWORD PTR [esi+0xa0]
 1605319:	test   eax,eax
 160531b:	je     160533f
 160531d:	mov    ecx,DWORD PTR [ebp+0x10]
 1605320:	mov    edx,DWORD PTR [ebp+0xc]
 1605323:	lea    esi,[ebx+0x4a83c]
 1605329:	mov    esi,DWORD PTR [esi]
 160532b:	mov    DWORD PTR [esp+0xc],esi
 160532f:	mov    DWORD PTR [esp+0x8],ecx
 1605333:	mov    DWORD PTR [esp+0x4],edx
 1605337:	mov    DWORD PTR [esp],eax
 160533a:	call   15f367f  ; System.Action`2<int, int>::Invoke
 160533f:	lea    esp,[ebp-0x8]
 1605342:	pop    esi
 1605343:	pop    ebx
 1605344:	pop    ebp
 1605345:	ret