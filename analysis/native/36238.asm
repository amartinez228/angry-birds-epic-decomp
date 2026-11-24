
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eefee4:
  eefee4:	push   ebp
  eefee5:	mov    ebp,esp
  eefee7:	push   ebx
  eefee8:	push   edi
  eefee9:	push   esi
  eefeea:	and    esp,0xfffffff0
  eefeed:	sub    esp,0x20
  eefef0:	call   eefef5
  eefef5:	pop    ebx
  eefef6:	add    ebx,0x102204f
  eefefc:	mov    ecx,DWORD PTR [ebp+0x14]
  eefeff:	mov    edx,DWORD PTR [ebp+0x18]
  eeff02:	mov    esi,DWORD PTR [ebp+0x8]
  eeff05:	mov    edi,DWORD PTR [esi]
  eeff07:	mov    eax,DWORD PTR [edi+0xe0]
  eeff0d:	mov    DWORD PTR [esp+0x14],eax
  eeff11:	mov    DWORD PTR [esp+0xc],edx
  eeff15:	mov    DWORD PTR [esp+0x8],ecx
  eeff19:	mov    eax,DWORD PTR [ebp+0x10]
  eeff1c:	mov    DWORD PTR [esp+0x4],eax
  eeff20:	mov    DWORD PTR [esp],esi
  eeff23:	mov    DWORD PTR [esp+0x10],0x0
  eeff2b:	call   DWORD PTR [edi+0xdc]
  eeff31:	lea    esp,[ebp-0xc]
  eeff34:	pop    esi
  eeff35:	pop    edi
  eeff36:	pop    ebx
  eeff37:	pop    ebp
  eeff38:	ret