
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01054ff9:
 1054ff9:	push   ebp
 1054ffa:	mov    ebp,esp
 1054ffc:	push   ebx
 1054ffd:	and    esp,0xfffffff0
 1055000:	sub    esp,0x20
 1055003:	call   1055008
 1055008:	pop    ebx
 1055009:	add    ebx,0xebcf3c
 105500f:	mov    eax,DWORD PTR [ebp+0x8]
 1055012:	mov    DWORD PTR [eax+0x14],0x3f800000
 1055019:	mov    DWORD PTR [eax+0x18],0x3f800000
 1055020:	mov    DWORD PTR [esp],eax
 1055023:	mov    DWORD PTR [esp+0x4],0x0
 105502b:	call   139d87d  ; UnityEngine.MonoBehaviour::.ctor
 1055030:	lea    esp,[ebp-0x4]
 1055033:	pop    ebx
 1055034:	pop    ebp
 1055035:	ret