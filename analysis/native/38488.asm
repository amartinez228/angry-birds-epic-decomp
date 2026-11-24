
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014ba108:
 14ba108:	push   ebp
 14ba109:	mov    ebp,esp
 14ba10b:	push   ebx
 14ba10c:	push   esi
 14ba10d:	and    esp,0xfffffff0
 14ba110:	sub    esp,0x10
 14ba113:	call   14ba118
 14ba118:	pop    ebx
 14ba119:	add    ebx,0xa57e2c
 14ba11f:	mov    al,BYTE PTR [ebx+0x65a2d]
 14ba125:	test   al,al
 14ba127:	jne    14ba140
 14ba129:	lea    eax,[ebx-0x657fa4]
 14ba12f:	mov    eax,DWORD PTR [eax]
 14ba131:	mov    DWORD PTR [esp],eax
 14ba134:	call   1ca6e8
 14ba139:	mov    BYTE PTR [ebx+0x65a2d],0x1
 14ba140:	lea    eax,[ebx+0x43198]
 14ba146:	mov    eax,DWORD PTR [eax]
 14ba148:	mov    DWORD PTR [esp],eax
 14ba14b:	call   20bfb2
 14ba150:	mov    esi,eax
 14ba152:	mov    DWORD PTR [esp],esi
 14ba155:	mov    DWORD PTR [esp+0x4],0x0
 14ba15d:	call   125674e  ; System.NotSupportedException::.ctor
 14ba162:	mov    DWORD PTR [esp],esi
 14ba165:	call   1fbb20
 14ba16a:	call   14943fc