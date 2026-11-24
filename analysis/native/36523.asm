
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eb4c02:
  eb4c02:	push   ebp
  eb4c03:	mov    ebp,esp
  eb4c05:	push   ebx
  eb4c06:	push   edi
  eb4c07:	push   esi
  eb4c08:	and    esp,0xfffffff0
  eb4c0b:	sub    esp,0x10
  eb4c0e:	call   eb4c13
  eb4c13:	pop    ebx
  eb4c14:	add    ebx,0x105d331
  eb4c1a:	mov    esi,DWORD PTR [ebp+0xc]
  eb4c1d:	mov    al,BYTE PTR [ebx+0x626b3]
  eb4c23:	test   al,al
  eb4c25:	jne    eb4c3e
  eb4c27:	lea    eax,[ebx-0x670470]
  eb4c2d:	mov    eax,DWORD PTR [eax]
  eb4c2f:	mov    DWORD PTR [esp],eax
  eb4c32:	call   1ca6e8
  eb4c37:	mov    BYTE PTR [ebx+0x626b3],0x1
  eb4c3e:	test   esi,esi
  eb4c40:	je     eb4cc9
  eb4c46:	lea    eax,[ebx+0x45874]
  eb4c4c:	mov    eax,DWORD PTR [eax]
  eb4c4e:	mov    ecx,DWORD PTR [esi]
  eb4c50:	movzx  edx,WORD PTR [ecx+0xaa]
  eb4c57:	test   edx,edx
  eb4c59:	je     eb4c6a
  eb4c5b:	mov    edi,DWORD PTR [ecx+0x4c]
  eb4c5e:	xor    esi,esi
  eb4c60:	cmp    DWORD PTR [edi+esi*8],eax
  eb4c63:	je     eb4c85
  eb4c65:	inc    esi
  eb4c66:	cmp    esi,edx
  eb4c68:	jb     eb4c60
  eb4c6a:	mov    DWORD PTR [esp+0x4],eax
  eb4c6e:	mov    esi,DWORD PTR [ebp+0xc]
  eb4c71:	mov    DWORD PTR [esp],esi
  eb4c74:	mov    DWORD PTR [esp+0x8],0x11
  eb4c7c:	call   1c1964
  eb4c81:	mov    ecx,eax
  eb4c83:	jmp    eb4c93
  eb4c85:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eb4c89:	lea    ecx,[ecx+eax*8+0x13c]
  eb4c90:	mov    esi,DWORD PTR [ebp+0xc]
  eb4c93:	mov    eax,DWORD PTR [ecx+0x4]
  eb4c96:	mov    DWORD PTR [esp+0x4],eax
  eb4c9a:	mov    DWORD PTR [esp],esi
  eb4c9d:	call   DWORD PTR [ecx]
  eb4c9f:	test   eax,eax
  eb4ca1:	je     eb4cc9
  eb4ca3:	mov    ecx,DWORD PTR [ebp+0x8]
  eb4ca6:	movzx  ecx,BYTE PTR [ecx+0x84]
  eb4cad:	mov    DWORD PTR [esp+0x4],ecx
  eb4cb1:	mov    DWORD PTR [esp],eax
  eb4cb4:	mov    DWORD PTR [esp+0x8],0x0
  eb4cbc:	call   8deb1f  ; CharacterControllerBattleGroundBase::PlayAttackAnimation
  eb4cc1:	lea    esp,[ebp-0xc]
  eb4cc4:	pop    esi
  eb4cc5:	pop    edi
  eb4cc6:	pop    ebx
  eb4cc7:	pop    ebp
  eb4cc8:	ret
  eb4cc9:	call   1fbc48
  eb4cce:	call   ebbb41