
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eb49cc:
  eb49cc:	push   ebp
  eb49cd:	mov    ebp,esp
  eb49cf:	push   ebx
  eb49d0:	push   edi
  eb49d1:	push   esi
  eb49d2:	and    esp,0xfffffff0
  eb49d5:	sub    esp,0x20
  eb49d8:	call   eb49dd
  eb49dd:	pop    ebx
  eb49de:	add    ebx,0x105d567
  eb49e4:	mov    esi,DWORD PTR [ebp+0x8]
  eb49e7:	mov    al,BYTE PTR [ebx+0x626b2]
  eb49ed:	test   al,al
  eb49ef:	jne    eb4a08
  eb49f1:	lea    eax,[ebx-0x670474]
  eb49f7:	mov    eax,DWORD PTR [eax]
  eb49f9:	mov    DWORD PTR [esp],eax
  eb49fc:	call   1ca6e8
  eb4a01:	mov    BYTE PTR [ebx+0x626b2],0x1
  eb4a08:	mov    al,0x1
  eb4a0a:	cmp    BYTE PTR [esi+0x40],0x0
  eb4a0e:	jne    eb4bed
  eb4a14:	mov    eax,DWORD PTR [esi+0x34]
  eb4a17:	test   eax,eax
  eb4a19:	je     eb4a3b
  eb4a1b:	lea    ecx,[ebx+0x4a048]
  eb4a21:	mov    ecx,DWORD PTR [ecx]
  eb4a23:	mov    DWORD PTR [esp+0x4],ecx
  eb4a27:	mov    DWORD PTR [esp],eax
  eb4a2a:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eb4a2f:	cmp    eax,0x1
  eb4a32:	jle    eb4a3b
  eb4a34:	xor    eax,eax
  eb4a36:	jmp    eb4bed
  eb4a3b:	mov    ecx,DWORD PTR [ebp+0xc]
  eb4a3e:	test   ecx,ecx
  eb4a40:	je     eb4bf8
  eb4a46:	lea    eax,[ebx+0x45874]
  eb4a4c:	mov    DWORD PTR [esp+0x14],eax
  eb4a50:	mov    eax,DWORD PTR [eax]
  eb4a52:	mov    ecx,DWORD PTR [ecx]
  eb4a54:	movzx  edx,WORD PTR [ecx+0xaa]
  eb4a5b:	test   edx,edx
  eb4a5d:	je     eb4a6e
  eb4a5f:	mov    esi,DWORD PTR [ecx+0x4c]
  eb4a62:	xor    edi,edi
  eb4a64:	cmp    DWORD PTR [esi+edi*8],eax
  eb4a67:	je     eb4a89
  eb4a69:	inc    edi
  eb4a6a:	cmp    edi,edx
  eb4a6c:	jb     eb4a64
  eb4a6e:	mov    DWORD PTR [esp+0x4],eax
  eb4a72:	mov    esi,DWORD PTR [ebp+0xc]
  eb4a75:	mov    DWORD PTR [esp],esi
  eb4a78:	mov    DWORD PTR [esp+0x8],0x9
  eb4a80:	call   1c1964
  eb4a85:	mov    ecx,eax
  eb4a87:	jmp    eb4a97
  eb4a89:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb4a8d:	lea    ecx,[ecx+eax*8+0xfc]
  eb4a94:	mov    esi,DWORD PTR [ebp+0xc]
  eb4a97:	mov    eax,DWORD PTR [ecx+0x4]
  eb4a9a:	mov    DWORD PTR [esp+0x4],eax
  eb4a9e:	mov    DWORD PTR [esp],esi
  eb4aa1:	call   DWORD PTR [ecx]
  eb4aa3:	mov    esi,eax
  eb4aa5:	test   esi,esi
  eb4aa7:	je     eb4bf8
  eb4aad:	lea    eax,[ebx+0x45884]
  eb4ab3:	mov    DWORD PTR [esp+0x10],eax
  eb4ab7:	mov    eax,DWORD PTR [eax]
  eb4ab9:	mov    ecx,DWORD PTR [esi]
  eb4abb:	mov    DWORD PTR [esp+0x18],ecx
  eb4abf:	movzx  edx,WORD PTR [ecx+0xaa]
  eb4ac6:	test   edx,edx
  eb4ac8:	je     eb4add
  eb4aca:	mov    ecx,DWORD PTR [esp+0x18]
  eb4ace:	mov    edi,DWORD PTR [ecx+0x4c]
  eb4ad1:	xor    ecx,ecx
  eb4ad3:	cmp    DWORD PTR [edi+ecx*8],eax
  eb4ad6:	je     eb4af5
  eb4ad8:	inc    ecx
  eb4ad9:	cmp    ecx,edx
  eb4adb:	jb     eb4ad3
  eb4add:	mov    DWORD PTR [esp+0x4],eax
  eb4ae1:	mov    DWORD PTR [esp],esi
  eb4ae4:	mov    DWORD PTR [esp+0x8],0x9
  eb4aec:	call   1c1964
  eb4af1:	mov    ecx,eax
  eb4af3:	jmp    eb4b04
  eb4af5:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb4af9:	mov    ecx,DWORD PTR [esp+0x18]
  eb4afd:	lea    ecx,[ecx+eax*8+0xfc]
  eb4b04:	mov    eax,DWORD PTR [ecx+0x4]
  eb4b07:	mov    DWORD PTR [esp+0x4],eax
  eb4b0b:	mov    DWORD PTR [esp],esi
  eb4b0e:	call   DWORD PTR [ecx]
  eb4b10:	test   eax,eax
  eb4b12:	mov    al,0x1
  eb4b14:	je     eb4bed
  eb4b1a:	mov    eax,DWORD PTR [esp+0x14]
  eb4b1e:	mov    eax,DWORD PTR [eax]
  eb4b20:	mov    ecx,DWORD PTR [ebp+0xc]
  eb4b23:	mov    ecx,DWORD PTR [ecx]
  eb4b25:	movzx  edx,WORD PTR [ecx+0xaa]
  eb4b2c:	test   edx,edx
  eb4b2e:	je     eb4b3f
  eb4b30:	mov    esi,DWORD PTR [ecx+0x4c]
  eb4b33:	xor    edi,edi
  eb4b35:	cmp    DWORD PTR [esi+edi*8],eax
  eb4b38:	je     eb4b5a
  eb4b3a:	inc    edi
  eb4b3b:	cmp    edi,edx
  eb4b3d:	jb     eb4b35
  eb4b3f:	mov    DWORD PTR [esp+0x4],eax
  eb4b43:	mov    esi,DWORD PTR [ebp+0xc]
  eb4b46:	mov    DWORD PTR [esp],esi
  eb4b49:	mov    DWORD PTR [esp+0x8],0x9
  eb4b51:	call   1c1964
  eb4b56:	mov    ecx,eax
  eb4b58:	jmp    eb4b68
  eb4b5a:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb4b5e:	lea    ecx,[ecx+eax*8+0xfc]
  eb4b65:	mov    esi,DWORD PTR [ebp+0xc]
  eb4b68:	mov    eax,DWORD PTR [ecx+0x4]
  eb4b6b:	mov    DWORD PTR [esp+0x4],eax
  eb4b6f:	mov    DWORD PTR [esp],esi
  eb4b72:	call   DWORD PTR [ecx]
  eb4b74:	mov    esi,eax
  eb4b76:	test   esi,esi
  eb4b78:	je     eb4bf8
  eb4b7a:	mov    eax,DWORD PTR [esp+0x10]
  eb4b7e:	mov    eax,DWORD PTR [eax]
  eb4b80:	mov    ecx,DWORD PTR [esi]
  eb4b82:	mov    DWORD PTR [esp+0x18],ecx
  eb4b86:	movzx  edx,WORD PTR [ecx+0xaa]
  eb4b8d:	test   edx,edx
  eb4b8f:	je     eb4ba4
  eb4b91:	mov    ecx,DWORD PTR [esp+0x18]
  eb4b95:	mov    edi,DWORD PTR [ecx+0x4c]
  eb4b98:	xor    ecx,ecx
  eb4b9a:	cmp    DWORD PTR [edi+ecx*8],eax
  eb4b9d:	je     eb4bbc
  eb4b9f:	inc    ecx
  eb4ba0:	cmp    ecx,edx
  eb4ba2:	jb     eb4b9a
  eb4ba4:	mov    DWORD PTR [esp+0x4],eax
  eb4ba8:	mov    DWORD PTR [esp],esi
  eb4bab:	mov    DWORD PTR [esp+0x8],0x9
  eb4bb3:	call   1c1964
  eb4bb8:	mov    ecx,eax
  eb4bba:	jmp    eb4bcb
  eb4bbc:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb4bc0:	mov    ecx,DWORD PTR [esp+0x18]
  eb4bc4:	lea    ecx,[ecx+eax*8+0xfc]
  eb4bcb:	mov    eax,DWORD PTR [ecx+0x4]
  eb4bce:	mov    DWORD PTR [esp+0x4],eax
  eb4bd2:	mov    DWORD PTR [esp],esi
  eb4bd5:	call   DWORD PTR [ecx]
  eb4bd7:	test   eax,eax
  eb4bd9:	je     eb4bf8
  eb4bdb:	mov    DWORD PTR [esp],eax
  eb4bde:	mov    DWORD PTR [esp+0x4],0x0
  eb4be6:	call   6d49a9  ; ABH.GameDatas.EquipmentGameData::get_IsRanged
  eb4beb:	xor    al,0x1
  eb4bed:	movzx  eax,al
  eb4bf0:	lea    esp,[ebp-0xc]
  eb4bf3:	pop    esi
  eb4bf4:	pop    edi
  eb4bf5:	pop    ebx
  eb4bf6:	pop    ebp
  eb4bf7:	ret
  eb4bf8:	call   1fbc48
  eb4bfd:	call   ebbb41