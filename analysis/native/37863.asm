
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fced1:
 13fced1:	push   ebp
 13fced2:	mov    ebp,esp
 13fced4:	push   ebx
 13fced5:	push   edi
 13fced6:	push   esi
 13fced7:	and    esp,0xfffffff0
 13fceda:	sub    esp,0x20
 13fcedd:	call   13fcee2
 13fcee2:	pop    ebx
 13fcee3:	add    ebx,0xb15062
 13fcee9:	mov    esi,DWORD PTR [ebp+0xc]
 13fceec:	mov    al,BYTE PTR [ebx+0x654e7]
 13fcef2:	test   al,al
 13fcef4:	jne    13fcf0d
 13fcef6:	lea    eax,[ebx-0x65e618]
 13fcefc:	mov    eax,DWORD PTR [eax]
 13fcefe:	mov    DWORD PTR [esp],eax
 13fcf01:	call   1ca6e8
 13fcf06:	mov    BYTE PTR [ebx+0x654e7],0x1
 13fcf0d:	test   esi,esi
 13fcf0f:	je     13fcf97
 13fcf15:	mov    esi,DWORD PTR [esi+0x20]
 13fcf18:	test   esi,esi
 13fcf1a:	je     13fcf97
 13fcf1c:	lea    eax,[ebx+0x45874]
 13fcf22:	mov    eax,DWORD PTR [eax]
 13fcf24:	mov    ecx,DWORD PTR [esi]
 13fcf26:	mov    DWORD PTR [esp+0x18],ecx
 13fcf2a:	movzx  edx,WORD PTR [ecx+0xaa]
 13fcf31:	test   edx,edx
 13fcf33:	je     13fcf48
 13fcf35:	mov    ecx,DWORD PTR [esp+0x18]
 13fcf39:	mov    edi,DWORD PTR [ecx+0x4c]
 13fcf3c:	xor    ecx,ecx
 13fcf3e:	cmp    DWORD PTR [edi+ecx*8],eax
 13fcf41:	je     13fcf60
 13fcf43:	inc    ecx
 13fcf44:	cmp    ecx,edx
 13fcf46:	jb     13fcf3e
 13fcf48:	mov    DWORD PTR [esp+0x4],eax
 13fcf4c:	mov    DWORD PTR [esp],esi
 13fcf4f:	mov    DWORD PTR [esp+0x8],0x11
 13fcf57:	call   1c1964
 13fcf5c:	mov    ecx,eax
 13fcf5e:	jmp    13fcf6f
 13fcf60:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 13fcf64:	mov    ecx,DWORD PTR [esp+0x18]
 13fcf68:	lea    ecx,[ecx+eax*8+0x13c]
 13fcf6f:	mov    eax,DWORD PTR [ecx+0x4]
 13fcf72:	mov    DWORD PTR [esp+0x4],eax
 13fcf76:	mov    DWORD PTR [esp],esi
 13fcf79:	call   DWORD PTR [ecx]
 13fcf7b:	test   eax,eax
 13fcf7d:	je     13fcf97
 13fcf7f:	mov    DWORD PTR [esp],eax
 13fcf82:	mov    DWORD PTR [esp+0x4],0x0
 13fcf8a:	call   8d8278  ; CharacterControllerBattleGroundBase::PlayIdle
 13fcf8f:	lea    esp,[ebp-0xc]
 13fcf92:	pop    esi
 13fcf93:	pop    edi
 13fcf94:	pop    ebx
 13fcf95:	pop    ebp
 13fcf96:	ret
 13fcf97:	call   1fbc48
 13fcf9c:	call   13f24e0