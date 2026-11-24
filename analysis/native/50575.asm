
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008df02e:
  8df02e:	push   ebp
  8df02f:	mov    ebp,esp
  8df031:	push   ebx
  8df032:	push   edi
  8df033:	push   esi
  8df034:	and    esp,0xfffffff0
  8df037:	sub    esp,0x10
  8df03a:	call   8df03f
  8df03f:	pop    ebx
  8df040:	add    ebx,0x1632f05
  8df046:	mov    esi,DWORD PTR [ebp+0x8]
  8df049:	mov    al,BYTE PTR [ebx+0x60195]
  8df04f:	test   al,al
  8df051:	jne    8df06a
  8df053:	lea    eax,[ebx-0x66d954]
  8df059:	mov    eax,DWORD PTR [eax]
  8df05b:	mov    DWORD PTR [esp],eax
  8df05e:	call   1ca6e8
  8df063:	mov    BYTE PTR [ebx+0x60195],0x1
  8df06a:	mov    edi,DWORD PTR [esi+0x68]
  8df06d:	lea    eax,[ebx+0x44ebc]
  8df073:	mov    eax,DWORD PTR [eax]
  8df075:	test   BYTE PTR [eax+0xb2],0x1
  8df07c:	je     8df08c
  8df07e:	cmp    DWORD PTR [eax+0x60],0x0
  8df082:	jne    8df08c
  8df084:	mov    DWORD PTR [esp],eax
  8df087:	call   1db0b8
  8df08c:	mov    DWORD PTR [esp+0x4],edi
  8df090:	mov    DWORD PTR [esp+0x8],0x0
  8df098:	mov    DWORD PTR [esp],0x0
  8df09f:	call   1679a11  ; UnityEngine.Object::op_Implicit
  8df0a4:	test   al,al
  8df0a6:	je     8df0e2
  8df0a8:	mov    eax,DWORD PTR [esi+0x68]
  8df0ab:	test   eax,eax
  8df0ad:	je     8df0ec
  8df0af:	mov    ecx,DWORD PTR [eax]
  8df0b1:	mov    edx,DWORD PTR [ecx+0x1c0]
  8df0b7:	mov    DWORD PTR [esp+0x4],edx
  8df0bb:	mov    DWORD PTR [esp],eax
  8df0be:	call   DWORD PTR [ecx+0x1bc]
  8df0c4:	mov    eax,DWORD PTR [esi+0x68]
  8df0c7:	test   eax,eax
  8df0c9:	je     8df0ec
  8df0cb:	mov    ecx,DWORD PTR [eax]
  8df0cd:	mov    edx,DWORD PTR [ecx+0x1c8]
  8df0d3:	mov    DWORD PTR [esp+0x4],edx
  8df0d7:	mov    DWORD PTR [esp],eax
  8df0da:	call   DWORD PTR [ecx+0x1c4]
  8df0e0:	jmp    8df0e4
  8df0e2:	fldz
  8df0e4:	lea    esp,[ebp-0xc]
  8df0e7:	pop    esi
  8df0e8:	pop    edi
  8df0e9:	pop    ebx
  8df0ea:	pop    ebp
  8df0eb:	ret
  8df0ec:	call   1fbc48
  8df0f1:	call   8b3f00