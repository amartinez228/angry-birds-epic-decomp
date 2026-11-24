
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01603b55:
 1603b55:	push   ebp
 1603b56:	mov    ebp,esp
 1603b58:	push   ebx
 1603b59:	push   edi
 1603b5a:	push   esi
 1603b5b:	and    esp,0xfffffff0
 1603b5e:	sub    esp,0x40
 1603b61:	call   1603b66
 1603b66:	pop    ebx
 1603b67:	add    ebx,0x90e3de
 1603b6d:	mov    esi,DWORD PTR [ebp+0x8]
 1603b70:	mov    al,BYTE PTR [ebx+0x66b93]
 1603b76:	test   al,al
 1603b78:	jne    1603b91
 1603b7a:	lea    eax,[ebx-0x66fdc4]
 1603b80:	mov    eax,DWORD PTR [eax]
 1603b82:	mov    DWORD PTR [esp],eax
 1603b85:	call   1ca6e8
 1603b8a:	mov    BYTE PTR [ebx+0x66b93],0x1
 1603b91:	mov    DWORD PTR [esp+0x38],0x0
 1603b99:	cmp    BYTE PTR [esi+0x50],0x0
 1603b9d:	je     1603c91
 1603ba3:	mov    eax,DWORD PTR [ebp+0xc]
 1603ba6:	mov    DWORD PTR [esp+0x38],0x0
 1603bae:	mov    eax,DWORD PTR [eax+0xc]
 1603bb1:	mov    eax,DWORD PTR [eax+0x54]
 1603bb4:	mov    eax,DWORD PTR [eax+0x10]
 1603bb7:	mov    DWORD PTR [esp+0x4],eax
 1603bbb:	mov    DWORD PTR [esp],esi
 1603bbe:	call   DWORD PTR [eax]
 1603bc0:	test   eax,eax
 1603bc2:	je     1603ca8
 1603bc8:	lea    ecx,[ebx+0x5ce04]
 1603bce:	mov    ecx,DWORD PTR [ecx]
 1603bd0:	lea    edx,[ebx+0x4a034]
 1603bd6:	mov    edx,DWORD PTR [edx]
 1603bd8:	mov    DWORD PTR [esp+0xc],edx
 1603bdc:	lea    edx,[esp+0x38]
 1603be0:	mov    DWORD PTR [esp+0x8],edx
 1603be4:	mov    DWORD PTR [esp+0x4],ecx
 1603be8:	mov    DWORD PTR [esp],eax
 1603beb:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1603bf0:	mov    DWORD PTR [esp+0x4],0x0
 1603bf8:	mov    DWORD PTR [esp],0x0
 1603bff:	call   109314e  ; DIContainerLogic::GetBattleService
 1603c04:	mov    DWORD PTR [esp+0x28],eax
 1603c08:	mov    edi,DWORD PTR [ebp+0xc]
 1603c0b:	mov    eax,DWORD PTR [edi+0xc]
 1603c0e:	mov    eax,DWORD PTR [eax+0x54]
 1603c11:	mov    eax,DWORD PTR [eax+0x1c]
 1603c14:	mov    DWORD PTR [esp+0x4],eax
 1603c18:	mov    DWORD PTR [esp],esi
 1603c1b:	call   DWORD PTR [eax]
 1603c1d:	fstp   DWORD PTR [esp+0x34]
 1603c21:	movss  xmm0,DWORD PTR [esp+0x34]
 1603c27:	movss  DWORD PTR [esp+0x24],xmm0
 1603c2d:	mov    eax,DWORD PTR [edi+0xc]
 1603c30:	mov    eax,DWORD PTR [eax+0x54]
 1603c33:	mov    eax,DWORD PTR [eax+0x18]
 1603c36:	mov    DWORD PTR [esp+0x4],eax
 1603c3a:	mov    DWORD PTR [esp],esi
 1603c3d:	call   DWORD PTR [eax]
 1603c3f:	mov    ecx,DWORD PTR [esp+0x28]
 1603c43:	test   ecx,ecx
 1603c45:	je     1603ca8
 1603c47:	movss  xmm0,DWORD PTR [esp+0x38]
 1603c4d:	movss  DWORD PTR [esp+0x10],xmm0
 1603c53:	mov    DWORD PTR [esp+0xc],eax
 1603c57:	mov    DWORD PTR [esp+0x8],esi
 1603c5b:	movss  xmm0,DWORD PTR [esp+0x24]
 1603c61:	movss  DWORD PTR [esp+0x4],xmm0
 1603c67:	mov    DWORD PTR [esp],ecx
 1603c6a:	mov    DWORD PTR [esp+0x14],0x0
 1603c72:	call   507a5b  ; ABH.Services.Logic.BattleService::ApplyBuffsOnAttack
 1603c77:	fstp   DWORD PTR [esp+0x30]
 1603c7b:	movss  xmm0,DWORD PTR [esp+0x30]
 1603c81:	addss  xmm0,DWORD PTR [esi+0x48]
 1603c86:	movss  DWORD PTR [esi+0x4c],xmm0
 1603c8b:	mov    BYTE PTR [esi+0x50],0x0
 1603c8f:	jmp    1603c96
 1603c91:	movss  xmm0,DWORD PTR [esi+0x4c]
 1603c96:	movss  DWORD PTR [esp+0x2c],xmm0
 1603c9c:	fld    DWORD PTR [esp+0x2c]
 1603ca0:	lea    esp,[ebp-0xc]
 1603ca3:	pop    esi
 1603ca4:	pop    edi
 1603ca5:	pop    ebx
 1603ca6:	pop    ebp
 1603ca7:	ret
 1603ca8:	call   1fbc48
 1603cad:	call   1608243