
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008d6137:
  8d6137:	push   ebp
  8d6138:	mov    ebp,esp
  8d613a:	push   ebx
  8d613b:	push   esi
  8d613c:	and    esp,0xfffffff0
  8d613f:	sub    esp,0x10
  8d6142:	call   8d6147
  8d6147:	pop    ebx
  8d6148:	add    ebx,0x163bdfd
  8d614e:	mov    al,BYTE PTR [ebx+0x6014f]
  8d6154:	test   al,al
  8d6156:	jne    8d616f
  8d6158:	lea    eax,[ebx-0x6567a4]
  8d615e:	mov    eax,DWORD PTR [eax]
  8d6160:	mov    DWORD PTR [esp],eax
  8d6163:	call   1ca6e8
  8d6168:	mov    BYTE PTR [ebx+0x6014f],0x1
  8d616f:	lea    eax,[ebx+0x43198]
  8d6175:	mov    eax,DWORD PTR [eax]
  8d6177:	mov    DWORD PTR [esp],eax
  8d617a:	call   20bfb2
  8d617f:	mov    esi,eax
  8d6181:	mov    DWORD PTR [esp],esi
  8d6184:	mov    DWORD PTR [esp+0x4],0x0
  8d618c:	call   125674e  ; System.NotSupportedException::.ctor
  8d6191:	mov    DWORD PTR [esp],esi
  8d6194:	call   1fbb20
  8d6199:	call   8b3f00