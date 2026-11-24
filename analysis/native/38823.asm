
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c00b9:
  6c00b9:	push   ebp
  6c00ba:	mov    ebp,esp
  6c00bc:	push   ebx
  6c00bd:	push   esi
  6c00be:	and    esp,0xfffffff0
  6c00c1:	sub    esp,0x10
  6c00c4:	call   6c00c9
  6c00c9:	pop    ebx
  6c00ca:	add    ebx,0x1851e7b
  6c00d0:	mov    al,BYTE PTR [ebx+0x5f623]
  6c00d6:	test   al,al
  6c00d8:	jne    6c00f1
  6c00da:	lea    eax,[ebx-0x6580c0]
  6c00e0:	mov    eax,DWORD PTR [eax]
  6c00e2:	mov    DWORD PTR [esp],eax
  6c00e5:	call   1ca6e8
  6c00ea:	mov    BYTE PTR [ebx+0x5f623],0x1
  6c00f1:	lea    eax,[ebx+0x43198]
  6c00f7:	mov    eax,DWORD PTR [eax]
  6c00f9:	mov    DWORD PTR [esp],eax
  6c00fc:	call   20bfb2
  6c0101:	mov    esi,eax
  6c0103:	mov    DWORD PTR [esp],esi
  6c0106:	mov    DWORD PTR [esp+0x4],0x0
  6c010e:	call   125674e  ; System.NotSupportedException::.ctor
  6c0113:	mov    DWORD PTR [esp],esi
  6c0116:	call   1fbb20
  6c011b:	call   6b106a