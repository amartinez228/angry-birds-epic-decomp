
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0081bca2:
  81bca2:	push   ebp
  81bca3:	mov    ebp,esp
  81bca5:	push   ebx
  81bca6:	push   edi
  81bca7:	push   esi
  81bca8:	and    esp,0xfffffff0
  81bcab:	sub    esp,0x60
  81bcae:	call   81bcb3
  81bcb3:	pop    ebx
  81bcb4:	add    ebx,0x16f6291
  81bcba:	mov    esi,DWORD PTR [ebp+0x28]
  81bcbd:	mov    edi,DWORD PTR [ebp+0x2c]
  81bcc0:	lea    eax,[esp+0x48]
  81bcc4:	mov    DWORD PTR [esp],eax
  81bcc7:	mov    DWORD PTR [esp+0x8],0x0
  81bccf:	mov    DWORD PTR [esp+0x4],0x0
  81bcd7:	call   1502532  ; UnityEngine.Color::get_white
  81bcdc:	sub    esp,0x4
  81bcdf:	mov    eax,DWORD PTR [ebp+0x24]
  81bce2:	mov    DWORD PTR [esp+0x2c],eax
  81bce6:	movsd  xmm0,QWORD PTR [ebp+0x14]
  81bceb:	movsd  xmm1,QWORD PTR [ebp+0x1c]
  81bcf0:	movsd  QWORD PTR [esp+0x24],xmm1
  81bcf6:	movsd  QWORD PTR [esp+0x1c],xmm0
  81bcfc:	movsd  xmm0,QWORD PTR [esp+0x48]
  81bd02:	movsd  xmm1,QWORD PTR [esp+0x50]
  81bd08:	movsd  QWORD PTR [esp+0x14],xmm1
  81bd0e:	movsd  QWORD PTR [esp+0xc],xmm0
  81bd14:	mov    DWORD PTR [esp+0x34],edi
  81bd18:	mov    DWORD PTR [esp+0x30],esi
  81bd1c:	movss  xmm0,DWORD PTR [ebp+0x10]
  81bd21:	movss  DWORD PTR [esp+0x8],xmm0
  81bd27:	movss  xmm0,DWORD PTR [ebp+0xc]
  81bd2c:	movss  DWORD PTR [esp+0x4],xmm0
  81bd32:	call   81bd3f  ; QuadMeshCreator::BuildQuad
  81bd37:	lea    esp,[ebp-0xc]
  81bd3a:	pop    esi
  81bd3b:	pop    edi
  81bd3c:	pop    ebx
  81bd3d:	pop    ebp
  81bd3e:	ret