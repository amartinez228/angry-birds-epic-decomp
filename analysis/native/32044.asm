
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00f9f91b:
  f9f91b:	push   ebp
  f9f91c:	mov    ebp,esp
  f9f91e:	push   ebx
  f9f91f:	push   edi
  f9f920:	push   esi
  f9f921:	and    esp,0xfffffff0
  f9f924:	sub    esp,0x80
  f9f92a:	call   f9f92f
  f9f92f:	pop    ebx
  f9f930:	add    ebx,0xf72615
  f9f936:	mov    edi,DWORD PTR [ebp+0x8]
  f9f939:	mov    al,BYTE PTR [ebx+0x62e1b]
  f9f93f:	test   al,al
  f9f941:	jne    f9f95a
  f9f943:	lea    eax,[ebx-0x657ee4]
  f9f949:	mov    eax,DWORD PTR [eax]
  f9f94b:	mov    DWORD PTR [esp],eax
  f9f94e:	call   1ca6e8
  f9f953:	mov    BYTE PTR [ebx+0x62e1b],0x1
  f9f95a:	mov    eax,DWORD PTR [edi+0x30]
  f9f95d:	mov    DWORD PTR [edi+0x30],0xffffffff
  f9f964:	cmp    eax,0x1
  f9f967:	jne    f9f9c5
  f9f969:	mov    DWORD PTR [esp+0x3c],ebx
  f9f96d:	mov    edi,DWORD PTR [edi+0x1c]
  f9f970:	test   edi,edi
  f9f972:	je     f9fab5
  f9f978:	mov    eax,DWORD PTR [esp+0x3c]
  f9f97c:	lea    eax,[eax+0x45874]
  f9f982:	mov    DWORD PTR [esp+0x34],eax
  f9f986:	mov    eax,DWORD PTR [eax]
  f9f988:	mov    ecx,DWORD PTR [edi]
  f9f98a:	movzx  edx,WORD PTR [ecx+0xaa]
  f9f991:	test   edx,edx
  f9f993:	je     f9f9a8
  f9f995:	mov    esi,DWORD PTR [ecx+0x4c]
  f9f998:	xor    ebx,ebx
  f9f99a:	cmp    DWORD PTR [esi+ebx*8],eax
  f9f99d:	je     f9fac3
  f9f9a3:	inc    ebx
  f9f9a4:	cmp    ebx,edx
  f9f9a6:	jb     f9f99a
  f9f9a8:	mov    DWORD PTR [esp+0x4],eax
  f9f9ac:	mov    DWORD PTR [esp],edi
  f9f9af:	mov    DWORD PTR [esp+0x8],0x89
  f9f9b7:	mov    ebx,DWORD PTR [esp+0x3c]
  f9f9bb:	call   1c1964
  f9f9c0:	jmp    f9face
  f9f9c5:	test   eax,eax
  f9f9c7:	jne    fa0919
  f9f9cd:	mov    eax,DWORD PTR [edi+0x8]
  f9f9d0:	test   eax,eax
  f9f9d2:	je     fa0938
  f9f9d8:	lea    ecx,[ebx+0x4a048]
  f9f9de:	mov    ecx,DWORD PTR [ecx]
  f9f9e0:	mov    DWORD PTR [esp+0x4],ecx
  f9f9e4:	mov    DWORD PTR [esp],eax
  f9f9e7:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  f9f9ec:	mov    DWORD PTR [esp+0x78],eax
  f9f9f0:	lea    eax,[ebx+0x43120]
  f9f9f6:	mov    eax,DWORD PTR [eax]
  f9f9f8:	lea    ecx,[esp+0x78]
  f9f9fc:	mov    DWORD PTR [esp+0x4],ecx
  f9fa00:	mov    DWORD PTR [esp],eax
  f9fa03:	call   20bf14
  f9fa08:	mov    esi,eax
  f9fa0a:	lea    eax,[ebx+0x430e4]
  f9fa10:	mov    eax,DWORD PTR [eax]
  f9fa12:	test   BYTE PTR [eax+0xb2],0x1
  f9fa19:	je     f9fa29
  f9fa1b:	cmp    DWORD PTR [eax+0x60],0x0
  f9fa1f:	jne    f9fa29
  f9fa21:	mov    DWORD PTR [esp],eax
  f9fa24:	call   1db0b8
  f9fa29:	lea    eax,[ebx+0x58cc4]  ; literal "Knocked Out Ones: "
  f9fa2f:	mov    eax,DWORD PTR [eax]
  f9fa31:	mov    DWORD PTR [esp+0x8],esi
  f9fa35:	mov    DWORD PTR [esp+0x4],eax
  f9fa39:	mov    DWORD PTR [esp+0xc],0x0
  f9fa41:	mov    DWORD PTR [esp],0x0
  f9fa48:	call   cb2fed  ; System.String::Concat
  f9fa4d:	mov    DWORD PTR [esp+0x4],eax
  f9fa51:	mov    DWORD PTR [esp+0x8],0x0
  f9fa59:	mov    DWORD PTR [esp],0x0
  f9fa60:	call   1068c69  ; DebugLog::Log
  f9fa65:	mov    eax,DWORD PTR [edi+0x8]
  f9fa68:	test   eax,eax
  f9fa6a:	je     fa0938
  f9fa70:	lea    ecx,[ebx+0x4a228]
  f9fa76:	mov    ecx,DWORD PTR [ecx]
  f9fa78:	mov    DWORD PTR [esp+0x8],ecx
  f9fa7c:	mov    DWORD PTR [esp+0x4],eax
  f9fa80:	lea    eax,[esp+0x68]
  f9fa84:	mov    DWORD PTR [esp],eax
  f9fa87:	mov    DWORD PTR [esp+0x3c],ebx
  f9fa8b:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  f9fa90:	sub    esp,0x4
  f9fa93:	movsd  xmm0,QWORD PTR [esp+0x68]
  f9fa99:	movsd  xmm1,QWORD PTR [esp+0x70]
  f9fa9f:	movsd  QWORD PTR [edi+0x14],xmm1
  f9faa4:	movsd  QWORD PTR [edi+0xc],xmm0
  f9faa9:	lea    eax,[edi+0x1c]
  f9faac:	mov    DWORD PTR [esp+0x38],eax
  f9fab0:	jmp    f9fd52
  f9fab5:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fab9:	call   1fbc48
  f9fabe:	jmp    fa092f
  f9fac3:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  f9fac7:	lea    eax,[ecx+eax*8+0x4fc]
  f9face:	mov    ecx,DWORD PTR [eax]
  f9fad0:	mov    eax,DWORD PTR [eax+0x4]
  f9fad3:	mov    DWORD PTR [esp+0x8],eax
  f9fad7:	mov    DWORD PTR [esp],edi
  f9fada:	mov    DWORD PTR [esp+0x4],0x0
  f9fae2:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fae6:	call   ecx
  f9fae8:	mov    eax,DWORD PTR [ebp+0x8]
  f9faeb:	lea    eax,[eax+0x1c]
  f9faee:	mov    DWORD PTR [esp+0x38],eax
  f9faf2:	mov    edi,DWORD PTR [eax]
  f9faf4:	test   edi,edi
  f9faf6:	je     f9fb34
  f9faf8:	mov    eax,DWORD PTR [esp+0x34]
  f9fafc:	mov    eax,DWORD PTR [eax]
  f9fafe:	mov    ecx,DWORD PTR [edi]
  f9fb00:	movzx  edx,WORD PTR [ecx+0xaa]
  f9fb07:	test   edx,edx
  f9fb09:	je     f9fb1a
  f9fb0b:	mov    esi,DWORD PTR [ecx+0x4c]
  f9fb0e:	xor    ebx,ebx
  f9fb10:	cmp    DWORD PTR [esi+ebx*8],eax
  f9fb13:	je     f9fb42
  f9fb15:	inc    ebx
  f9fb16:	cmp    ebx,edx
  f9fb18:	jb     f9fb10
  f9fb1a:	mov    DWORD PTR [esp+0x4],eax
  f9fb1e:	mov    DWORD PTR [esp],edi
  f9fb21:	mov    DWORD PTR [esp+0x8],0x11
  f9fb29:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fb2d:	call   1c1964
  f9fb32:	jmp    f9fb4d
  f9fb34:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fb38:	call   1fbc48
  f9fb3d:	jmp    fa092f
  f9fb42:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  f9fb46:	lea    eax,[ecx+eax*8+0x13c]
  f9fb4d:	mov    ecx,DWORD PTR [eax]
  f9fb4f:	mov    eax,DWORD PTR [eax+0x4]
  f9fb52:	mov    DWORD PTR [esp+0x4],eax
  f9fb56:	mov    DWORD PTR [esp],edi
  f9fb59:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fb5d:	call   ecx
  f9fb5f:	test   eax,eax
  f9fb61:	je     f9fbfb
  f9fb67:	mov    edi,DWORD PTR [eax+0x68]
  f9fb6a:	mov    eax,DWORD PTR [esp+0x3c]
  f9fb6e:	lea    eax,[eax+0x44ebc]
  f9fb74:	mov    eax,DWORD PTR [eax]
  f9fb76:	test   BYTE PTR [eax+0xb2],0x1
  f9fb7d:	je     f9fb91
  f9fb7f:	cmp    DWORD PTR [eax+0x60],0x0
  f9fb83:	jne    f9fb91
  f9fb85:	mov    DWORD PTR [esp],eax
  f9fb88:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fb8c:	call   1db0b8
  f9fb91:	mov    DWORD PTR [esp+0x4],edi
  f9fb95:	mov    DWORD PTR [esp+0x8],0x0
  f9fb9d:	mov    DWORD PTR [esp],0x0
  f9fba4:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fba8:	call   1679a11  ; UnityEngine.Object::op_Implicit
  f9fbad:	test   al,al
  f9fbaf:	je     f9fd52
  f9fbb5:	mov    eax,DWORD PTR [esp+0x38]
  f9fbb9:	mov    edi,DWORD PTR [eax]
  f9fbbb:	test   edi,edi
  f9fbbd:	je     f9fc09
  f9fbbf:	mov    eax,DWORD PTR [esp+0x34]
  f9fbc3:	mov    eax,DWORD PTR [eax]
  f9fbc5:	mov    ecx,DWORD PTR [edi]
  f9fbc7:	movzx  edx,WORD PTR [ecx+0xaa]
  f9fbce:	test   edx,edx
  f9fbd0:	je     f9fbe1
  f9fbd2:	mov    esi,DWORD PTR [ecx+0x4c]
  f9fbd5:	xor    ebx,ebx
  f9fbd7:	cmp    DWORD PTR [esi+ebx*8],eax
  f9fbda:	je     f9fc17
  f9fbdc:	inc    ebx
  f9fbdd:	cmp    ebx,edx
  f9fbdf:	jb     f9fbd7
  f9fbe1:	mov    DWORD PTR [esp+0x4],eax
  f9fbe5:	mov    DWORD PTR [esp],edi
  f9fbe8:	mov    DWORD PTR [esp+0x8],0x11
  f9fbf0:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fbf4:	call   1c1964
  f9fbf9:	jmp    f9fc22
  f9fbfb:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fbff:	call   1fbc48
  f9fc04:	jmp    fa092f
  f9fc09:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fc0d:	call   1fbc48
  f9fc12:	jmp    fa092f
  f9fc17:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  f9fc1b:	lea    eax,[ecx+eax*8+0x13c]
  f9fc22:	mov    ecx,DWORD PTR [eax]
  f9fc24:	mov    eax,DWORD PTR [eax+0x4]
  f9fc27:	mov    DWORD PTR [esp+0x4],eax
  f9fc2b:	mov    DWORD PTR [esp],edi
  f9fc2e:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fc32:	call   ecx
  f9fc34:	test   eax,eax
  f9fc36:	je     f9fc90
  f9fc38:	mov    eax,DWORD PTR [eax+0x68]
  f9fc3b:	test   eax,eax
  f9fc3d:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fc41:	je     f9fc9e
  f9fc43:	mov    ecx,DWORD PTR [esp+0x38]
  f9fc47:	mov    edi,DWORD PTR [ecx]
  f9fc49:	test   edi,edi
  f9fc4b:	je     f9fca8
  f9fc4d:	mov    eax,DWORD PTR [eax+0xc]
  f9fc50:	mov    DWORD PTR [esp+0x30],eax
  f9fc54:	mov    eax,DWORD PTR [esp+0x34]
  f9fc58:	mov    eax,DWORD PTR [eax]
  f9fc5a:	mov    ecx,DWORD PTR [edi]
  f9fc5c:	movzx  edx,WORD PTR [ecx+0xaa]
  f9fc63:	test   edx,edx
  f9fc65:	je     f9fc76
  f9fc67:	mov    esi,DWORD PTR [ecx+0x4c]
  f9fc6a:	xor    ebx,ebx
  f9fc6c:	cmp    DWORD PTR [esi+ebx*8],eax
  f9fc6f:	je     f9fcb6
  f9fc71:	inc    ebx
  f9fc72:	cmp    ebx,edx
  f9fc74:	jb     f9fc6c
  f9fc76:	mov    DWORD PTR [esp+0x4],eax
  f9fc7a:	mov    DWORD PTR [esp],edi
  f9fc7d:	mov    DWORD PTR [esp+0x8],0x37
  f9fc85:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fc89:	call   1c1964
  f9fc8e:	jmp    f9fcc1
  f9fc90:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fc94:	call   1fbc48
  f9fc99:	jmp    fa092f
  f9fc9e:	call   1fbc48
  f9fca3:	jmp    fa092f
  f9fca8:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fcac:	call   1fbc48
  f9fcb1:	jmp    fa092f
  f9fcb6:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  f9fcba:	lea    eax,[ecx+eax*8+0x26c]
  f9fcc1:	mov    ecx,DWORD PTR [eax]
  f9fcc3:	mov    eax,DWORD PTR [eax+0x4]
  f9fcc6:	mov    DWORD PTR [esp+0x4],eax
  f9fcca:	mov    DWORD PTR [esp],edi
  f9fccd:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fcd1:	call   ecx
  f9fcd3:	mov    esi,eax
  f9fcd5:	test   esi,esi
  f9fcd7:	jne    f9fce2
  f9fcd9:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fcdd:	call   1fbc48
  f9fce2:	mov    eax,DWORD PTR [esi]
  f9fce4:	mov    edi,DWORD PTR [eax+0xd8]
  f9fcea:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fcee:	lea    eax,[ebx+0x45990]
  f9fcf4:	mov    eax,DWORD PTR [eax]
  f9fcf6:	mov    DWORD PTR [esp],eax
  f9fcf9:	call   20bfb2
  f9fcfe:	mov    DWORD PTR [esp+0x34],eax
  f9fd02:	mov    DWORD PTR [esp+0x50],edi
  f9fd06:	mov    eax,DWORD PTR [esp+0x50]
  f9fd0a:	mov    DWORD PTR [esp+0x8],eax
  f9fd0e:	mov    DWORD PTR [esp+0x4],esi
  f9fd12:	mov    eax,DWORD PTR [esp+0x34]
  f9fd16:	mov    DWORD PTR [esp],eax
  f9fd19:	mov    DWORD PTR [esp+0xc],0x0
  f9fd21:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fd25:	call   148dd91  ; SmoothMoves.UserTriggerDelegate::.ctor
  f9fd2a:	mov    eax,DWORD PTR [esp+0x30]
  f9fd2e:	test   eax,eax
  f9fd30:	je     fa008d
  f9fd36:	mov    ecx,DWORD PTR [esp+0x34]
  f9fd3a:	mov    DWORD PTR [esp+0x4],ecx
  f9fd3e:	mov    DWORD PTR [esp],eax
  f9fd41:	mov    DWORD PTR [esp+0x8],0x0
  f9fd49:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fd4d:	call   147b9a7  ; SmoothMoves.BoneAnimation::UnregisterUserTriggerDelegate
  f9fd52:	mov    edi,DWORD PTR [ebp+0x8]
  f9fd55:	lea    eax,[edi+0xc]
  f9fd58:	mov    DWORD PTR [esp+0x34],eax
  f9fd5c:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fd60:	lea    eax,[ebx+0x4a230]
  f9fd66:	mov    DWORD PTR [esp+0x2c],eax
  f9fd6a:	mov    eax,DWORD PTR [esp+0x2c]
  f9fd6e:	mov    eax,DWORD PTR [eax]
  f9fd70:	mov    DWORD PTR [esp+0x4],eax
  f9fd74:	mov    eax,DWORD PTR [esp+0x34]
  f9fd78:	mov    DWORD PTR [esp],eax
  f9fd7b:	call   447e4e
  f9fd80:	test   al,al
  f9fd82:	je     fa001c
  f9fd88:	lea    eax,[ebx+0x4a22c]
  f9fd8e:	mov    eax,DWORD PTR [eax]
  f9fd90:	mov    DWORD PTR [esp+0x4],eax
  f9fd94:	mov    eax,DWORD PTR [esp+0x34]
  f9fd98:	mov    DWORD PTR [esp],eax
  f9fd9b:	call   447f1e
  f9fda0:	mov    esi,eax
  f9fda2:	mov    eax,DWORD PTR [esp+0x38]
  f9fda6:	mov    DWORD PTR [eax],esi
  f9fda8:	test   esi,esi
  f9fdaa:	je     fa0039
  f9fdb0:	lea    eax,[ebx+0x45874]
  f9fdb6:	mov    DWORD PTR [esp+0x30],eax
  f9fdba:	mov    eax,DWORD PTR [eax]
  f9fdbc:	mov    ebx,DWORD PTR [esi]
  f9fdbe:	movzx  edx,WORD PTR [ebx+0xaa]
  f9fdc5:	test   edx,edx
  f9fdc7:	je     f9fdd8
  f9fdc9:	mov    edi,DWORD PTR [ebx+0x4c]
  f9fdcc:	xor    ecx,ecx
  f9fdce:	cmp    DWORD PTR [edi+ecx*8],eax
  f9fdd1:	je     f9fdf5
  f9fdd3:	inc    ecx
  f9fdd4:	cmp    ecx,edx
  f9fdd6:	jb     f9fdce
  f9fdd8:	mov    DWORD PTR [esp+0x4],eax
  f9fddc:	mov    DWORD PTR [esp],esi
  f9fddf:	mov    DWORD PTR [esp+0x8],0x11
  f9fde7:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fdeb:	mov    edi,DWORD PTR [ebp+0x8]
  f9fdee:	call   1c1964
  f9fdf3:	jmp    f9fe07
  f9fdf5:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  f9fdf9:	lea    eax,[ebx+eax*8+0x13c]
  f9fe00:	mov    ebx,DWORD PTR [esp+0x3c]
  f9fe04:	mov    edi,DWORD PTR [ebp+0x8]
  f9fe07:	mov    ecx,DWORD PTR [eax]
  f9fe09:	mov    eax,DWORD PTR [eax+0x4]
  f9fe0c:	mov    DWORD PTR [esp+0x4],eax
  f9fe10:	mov    DWORD PTR [esp],esi
  f9fe13:	call   ecx
  f9fe15:	mov    esi,eax
  f9fe17:	lea    eax,[ebx+0x44ebc]
  f9fe1d:	mov    DWORD PTR [esp+0x28],eax
  f9fe21:	mov    eax,DWORD PTR [eax]
  f9fe23:	test   BYTE PTR [eax+0xb2],0x1
  f9fe2a:	je     f9fe3a
  f9fe2c:	cmp    DWORD PTR [eax+0x60],0x0
  f9fe30:	jne    f9fe3a
  f9fe32:	mov    DWORD PTR [esp],eax
  f9fe35:	call   1db0b8
  f9fe3a:	mov    DWORD PTR [esp+0x4],esi
  f9fe3e:	mov    DWORD PTR [esp+0xc],0x0
  f9fe46:	mov    DWORD PTR [esp+0x8],0x0
  f9fe4e:	mov    DWORD PTR [esp],0x0
  f9fe55:	call   16781a0  ; UnityEngine.Object::op_Equality
  f9fe5a:	test   al,al
  f9fe5c:	jne    f9fd6a
  f9fe62:	mov    DWORD PTR [esp+0x4],0x0
  f9fe6a:	mov    DWORD PTR [esp],0x0
  f9fe71:	call   109314e  ; DIContainerLogic::GetBattleService
  f9fe76:	test   eax,eax
  f9fe78:	je     fa0047
  f9fe7e:	mov    ecx,DWORD PTR [esp+0x38]
  f9fe82:	mov    ecx,DWORD PTR [ecx]
  f9fe84:	mov    DWORD PTR [esp+0x10],ecx
  f9fe88:	mov    DWORD PTR [esp+0xc],ecx
  f9fe8c:	mov    DWORD PTR [esp],eax
  f9fe8f:	mov    DWORD PTR [esp+0x14],0x0
  f9fe97:	mov    DWORD PTR [esp+0x8],0x10
  f9fe9f:	mov    DWORD PTR [esp+0x4],0x0
  f9fea7:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  f9feac:	fstp   st(0)
  f9feae:	mov    eax,DWORD PTR [edi+0x24]
  f9feb1:	test   eax,eax
  f9feb3:	je     fa0055
  f9feb9:	mov    ecx,DWORD PTR [esp+0x38]
  f9febd:	mov    esi,DWORD PTR [ecx]
  f9febf:	mov    DWORD PTR [esp],eax
  f9fec2:	mov    DWORD PTR [esp+0x4],0x0
  f9feca:	call   9f18af  ; BattleMgrBase::get_Model
  f9fecf:	test   eax,eax
  f9fed1:	je     fa0063
  f9fed7:	test   esi,esi
  f9fed9:	je     fa0071
  f9fedf:	mov    eax,DWORD PTR [eax+0x20]
  f9fee2:	mov    DWORD PTR [esp+0x24],eax
  f9fee6:	mov    eax,DWORD PTR [esp+0x30]
  f9feea:	mov    eax,DWORD PTR [eax]
  f9feec:	mov    ecx,DWORD PTR [esi]
  f9feee:	movzx  edx,WORD PTR [ecx+0xaa]
  f9fef5:	test   edx,edx
  f9fef7:	je     f9ff08
  f9fef9:	mov    edi,DWORD PTR [ecx+0x4c]
  f9fefc:	xor    ebx,ebx
  f9fefe:	cmp    DWORD PTR [edi+ebx*8],eax
  f9ff01:	je     f9ff25
  f9ff03:	inc    ebx
  f9ff04:	cmp    ebx,edx
  f9ff06:	jb     f9fefe
  f9ff08:	mov    DWORD PTR [esp+0x4],eax
  f9ff0c:	mov    DWORD PTR [esp],esi
  f9ff0f:	mov    DWORD PTR [esp+0x8],0x65
  f9ff17:	mov    ebx,DWORD PTR [esp+0x3c]
  f9ff1b:	mov    edi,DWORD PTR [ebp+0x8]
  f9ff1e:	call   1c1964
  f9ff23:	jmp    f9ff37
  f9ff25:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  f9ff29:	lea    eax,[ecx+eax*8+0x3dc]
  f9ff30:	mov    ebx,DWORD PTR [esp+0x3c]
  f9ff34:	mov    edi,DWORD PTR [ebp+0x8]
  f9ff37:	mov    ecx,DWORD PTR [eax]
  f9ff39:	mov    eax,DWORD PTR [eax+0x4]
  f9ff3c:	mov    DWORD PTR [esp+0x8],eax
  f9ff40:	mov    eax,DWORD PTR [esp+0x24]
  f9ff44:	mov    DWORD PTR [esp+0x4],eax
  f9ff48:	mov    DWORD PTR [esp],esi
  f9ff4b:	call   ecx
  f9ff4d:	mov    eax,DWORD PTR [esp+0x38]
  f9ff51:	mov    esi,DWORD PTR [eax]
  f9ff53:	test   esi,esi
  f9ff55:	je     fa007f
  f9ff5b:	mov    eax,DWORD PTR [esp+0x30]
  f9ff5f:	mov    eax,DWORD PTR [eax]
  f9ff61:	mov    ecx,DWORD PTR [esi]
  f9ff63:	movzx  edx,WORD PTR [ecx+0xaa]
  f9ff6a:	test   edx,edx
  f9ff6c:	je     f9ff7d
  f9ff6e:	mov    edi,DWORD PTR [ecx+0x4c]
  f9ff71:	xor    ebx,ebx
  f9ff73:	cmp    DWORD PTR [edi+ebx*8],eax
  f9ff76:	je     f9ff9a
  f9ff78:	inc    ebx
  f9ff79:	cmp    ebx,edx
  f9ff7b:	jb     f9ff73
  f9ff7d:	mov    DWORD PTR [esp+0x4],eax
  f9ff81:	mov    DWORD PTR [esp],esi
  f9ff84:	mov    DWORD PTR [esp+0x8],0x37
  f9ff8c:	mov    ebx,DWORD PTR [esp+0x3c]
  f9ff90:	mov    edi,DWORD PTR [ebp+0x8]
  f9ff93:	call   1c1964
  f9ff98:	jmp    f9ffac
  f9ff9a:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  f9ff9e:	lea    eax,[ecx+eax*8+0x26c]
  f9ffa5:	mov    ebx,DWORD PTR [esp+0x3c]
  f9ffa9:	mov    edi,DWORD PTR [ebp+0x8]
  f9ffac:	mov    ecx,DWORD PTR [eax]
  f9ffae:	mov    eax,DWORD PTR [eax+0x4]
  f9ffb1:	mov    DWORD PTR [esp+0x4],eax
  f9ffb5:	mov    DWORD PTR [esp],esi
  f9ffb8:	call   ecx
  f9ffba:	test   eax,eax
  f9ffbc:	je     f9fd6a
  f9ffc2:	mov    eax,DWORD PTR [esp+0x38]
  f9ffc6:	mov    esi,DWORD PTR [eax]
  f9ffc8:	test   esi,esi
  f9ffca:	je     fa009b
  f9ffd0:	mov    DWORD PTR [esp+0x3c],ebx
  f9ffd4:	mov    eax,DWORD PTR [esp+0x30]
  f9ffd8:	mov    eax,DWORD PTR [eax]
  f9ffda:	mov    ecx,DWORD PTR [esi]
  f9ffdc:	movzx  edx,WORD PTR [ecx+0xaa]
  f9ffe3:	test   edx,edx
  f9ffe5:	je     f9fffa
  f9ffe7:	mov    edi,DWORD PTR [ecx+0x4c]
  f9ffea:	xor    ebx,ebx
  f9ffec:	cmp    DWORD PTR [edi+ebx*8],eax
  f9ffef:	je     fa00a9
  f9fff5:	inc    ebx
  f9fff6:	cmp    ebx,edx
  f9fff8:	jb     f9ffec
  f9fffa:	mov    DWORD PTR [esp+0x4],eax
  f9fffe:	mov    DWORD PTR [esp],esi
  fa0001:	mov    DWORD PTR [esp+0x8],0x11
  fa0009:	mov    ebx,DWORD PTR [esp+0x3c]
  fa000d:	call   1c1964
  fa0012:	jmp    fa00b4
  fa0017:	jmp    fa0675
  fa001c:	lea    eax,[ebx+0x4a234]
  fa0022:	mov    eax,DWORD PTR [eax]
  fa0024:	mov    DWORD PTR [esp+0x4],eax
  fa0028:	mov    eax,DWORD PTR [esp+0x34]
  fa002c:	mov    DWORD PTR [esp],eax
  fa002f:	call   447df6
  fa0034:	jmp    fa06b0
  fa0039:	mov    DWORD PTR [esp+0x3c],ebx
  fa003d:	call   1fbc48
  fa0042:	jmp    fa092f
  fa0047:	mov    DWORD PTR [esp+0x3c],ebx
  fa004b:	call   1fbc48
  fa0050:	jmp    fa092f
  fa0055:	mov    DWORD PTR [esp+0x3c],ebx
  fa0059:	call   1fbc48
  fa005e:	jmp    fa092f
  fa0063:	mov    DWORD PTR [esp+0x3c],ebx
  fa0067:	call   1fbc48
  fa006c:	jmp    fa092f
  fa0071:	mov    DWORD PTR [esp+0x3c],ebx
  fa0075:	call   1fbc48
  fa007a:	jmp    fa092f
  fa007f:	mov    DWORD PTR [esp+0x3c],ebx
  fa0083:	call   1fbc48
  fa0088:	jmp    fa092f
  fa008d:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0091:	call   1fbc48
  fa0096:	jmp    fa092f
  fa009b:	mov    DWORD PTR [esp+0x3c],ebx
  fa009f:	call   1fbc48
  fa00a4:	jmp    fa092f
  fa00a9:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  fa00ad:	lea    eax,[ecx+eax*8+0x13c]
  fa00b4:	mov    ecx,DWORD PTR [eax]
  fa00b6:	mov    eax,DWORD PTR [eax+0x4]
  fa00b9:	mov    DWORD PTR [esp+0x4],eax
  fa00bd:	mov    DWORD PTR [esp],esi
  fa00c0:	mov    ebx,DWORD PTR [esp+0x3c]
  fa00c4:	call   ecx
  fa00c6:	test   eax,eax
  fa00c8:	je     fa015c
  fa00ce:	mov    esi,DWORD PTR [eax+0x68]
  fa00d1:	mov    eax,DWORD PTR [esp+0x28]
  fa00d5:	mov    eax,DWORD PTR [eax]
  fa00d7:	test   BYTE PTR [eax+0xb2],0x1
  fa00de:	je     fa00f2
  fa00e0:	cmp    DWORD PTR [eax+0x60],0x0
  fa00e4:	jne    fa00f2
  fa00e6:	mov    DWORD PTR [esp],eax
  fa00e9:	mov    ebx,DWORD PTR [esp+0x3c]
  fa00ed:	call   1db0b8
  fa00f2:	mov    DWORD PTR [esp+0x4],esi
  fa00f6:	mov    DWORD PTR [esp+0x8],0x0
  fa00fe:	mov    DWORD PTR [esp],0x0
  fa0105:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0109:	call   1679a11  ; UnityEngine.Object::op_Implicit
  fa010e:	test   al,al
  fa0110:	je     fa044d
  fa0116:	mov    eax,DWORD PTR [esp+0x38]
  fa011a:	mov    esi,DWORD PTR [eax]
  fa011c:	test   esi,esi
  fa011e:	je     fa016a
  fa0120:	mov    eax,DWORD PTR [esp+0x30]
  fa0124:	mov    eax,DWORD PTR [eax]
  fa0126:	mov    ecx,DWORD PTR [esi]
  fa0128:	movzx  edx,WORD PTR [ecx+0xaa]
  fa012f:	test   edx,edx
  fa0131:	je     fa0142
  fa0133:	mov    edi,DWORD PTR [ecx+0x4c]
  fa0136:	xor    ebx,ebx
  fa0138:	cmp    DWORD PTR [edi+ebx*8],eax
  fa013b:	je     fa0178
  fa013d:	inc    ebx
  fa013e:	cmp    ebx,edx
  fa0140:	jb     fa0138
  fa0142:	mov    DWORD PTR [esp+0x4],eax
  fa0146:	mov    DWORD PTR [esp],esi
  fa0149:	mov    DWORD PTR [esp+0x8],0x11
  fa0151:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0155:	call   1c1964
  fa015a:	jmp    fa0183
  fa015c:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0160:	call   1fbc48
  fa0165:	jmp    fa092f
  fa016a:	mov    ebx,DWORD PTR [esp+0x3c]
  fa016e:	call   1fbc48
  fa0173:	jmp    fa092f
  fa0178:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  fa017c:	lea    eax,[ecx+eax*8+0x13c]
  fa0183:	mov    ecx,DWORD PTR [eax]
  fa0185:	mov    eax,DWORD PTR [eax+0x4]
  fa0188:	mov    DWORD PTR [esp+0x4],eax
  fa018c:	mov    DWORD PTR [esp],esi
  fa018f:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0193:	call   ecx
  fa0195:	test   eax,eax
  fa0197:	je     fa01f1
  fa0199:	mov    eax,DWORD PTR [eax+0x68]
  fa019c:	test   eax,eax
  fa019e:	mov    ebx,DWORD PTR [esp+0x3c]
  fa01a2:	je     fa01ff
  fa01a4:	mov    ecx,DWORD PTR [esp+0x38]
  fa01a8:	mov    esi,DWORD PTR [ecx]
  fa01aa:	test   esi,esi
  fa01ac:	je     fa0209
  fa01ae:	mov    eax,DWORD PTR [eax+0xc]
  fa01b1:	mov    DWORD PTR [esp+0x2c],eax
  fa01b5:	mov    eax,DWORD PTR [esp+0x30]
  fa01b9:	mov    eax,DWORD PTR [eax]
  fa01bb:	mov    ecx,DWORD PTR [esi]
  fa01bd:	movzx  edx,WORD PTR [ecx+0xaa]
  fa01c4:	test   edx,edx
  fa01c6:	je     fa01d7
  fa01c8:	mov    edi,DWORD PTR [ecx+0x4c]
  fa01cb:	xor    ebx,ebx
  fa01cd:	cmp    DWORD PTR [edi+ebx*8],eax
  fa01d0:	je     fa0213
  fa01d2:	inc    ebx
  fa01d3:	cmp    ebx,edx
  fa01d5:	jb     fa01cd
  fa01d7:	mov    DWORD PTR [esp+0x4],eax
  fa01db:	mov    DWORD PTR [esp],esi
  fa01de:	mov    DWORD PTR [esp+0x8],0x37
  fa01e6:	mov    ebx,DWORD PTR [esp+0x3c]
  fa01ea:	call   1c1964
  fa01ef:	jmp    fa021e
  fa01f1:	mov    ebx,DWORD PTR [esp+0x3c]
  fa01f5:	call   1fbc48
  fa01fa:	jmp    fa092f
  fa01ff:	call   1fbc48
  fa0204:	jmp    fa092f
  fa0209:	call   1fbc48
  fa020e:	jmp    fa092f
  fa0213:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  fa0217:	lea    eax,[ecx+eax*8+0x26c]
  fa021e:	mov    ecx,DWORD PTR [eax]
  fa0220:	mov    eax,DWORD PTR [eax+0x4]
  fa0223:	mov    DWORD PTR [esp+0x4],eax
  fa0227:	mov    DWORD PTR [esp],esi
  fa022a:	mov    ebx,DWORD PTR [esp+0x3c]
  fa022e:	call   ecx
  fa0230:	mov    esi,eax
  fa0232:	test   esi,esi
  fa0234:	jne    fa023f
  fa0236:	mov    ebx,DWORD PTR [esp+0x3c]
  fa023a:	call   1fbc48
  fa023f:	mov    eax,DWORD PTR [esi]
  fa0241:	mov    edi,DWORD PTR [eax+0xd8]
  fa0247:	mov    ebx,DWORD PTR [esp+0x3c]
  fa024b:	lea    eax,[ebx+0x45990]
  fa0251:	mov    DWORD PTR [esp+0x28],eax
  fa0255:	mov    eax,DWORD PTR [eax]
  fa0257:	mov    DWORD PTR [esp],eax
  fa025a:	call   20bfb2
  fa025f:	mov    DWORD PTR [esp+0x34],eax
  fa0263:	mov    DWORD PTR [esp+0x60],edi
  fa0267:	mov    eax,DWORD PTR [esp+0x60]
  fa026b:	mov    DWORD PTR [esp+0x8],eax
  fa026f:	mov    DWORD PTR [esp+0x4],esi
  fa0273:	mov    eax,DWORD PTR [esp+0x34]
  fa0277:	mov    DWORD PTR [esp],eax
  fa027a:	mov    DWORD PTR [esp+0xc],0x0
  fa0282:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0286:	call   148dd91  ; SmoothMoves.UserTriggerDelegate::.ctor
  fa028b:	mov    eax,DWORD PTR [esp+0x2c]
  fa028f:	test   eax,eax
  fa0291:	je     fa02f5
  fa0293:	mov    ecx,DWORD PTR [esp+0x34]
  fa0297:	mov    DWORD PTR [esp+0x4],ecx
  fa029b:	mov    DWORD PTR [esp],eax
  fa029e:	mov    DWORD PTR [esp+0x8],0x0
  fa02a6:	mov    ebx,DWORD PTR [esp+0x3c]
  fa02aa:	call   147b9a7  ; SmoothMoves.BoneAnimation::UnregisterUserTriggerDelegate
  fa02af:	mov    eax,DWORD PTR [esp+0x38]
  fa02b3:	mov    esi,DWORD PTR [eax]
  fa02b5:	test   esi,esi
  fa02b7:	je     fa0303
  fa02b9:	mov    eax,DWORD PTR [esp+0x30]
  fa02bd:	mov    eax,DWORD PTR [eax]
  fa02bf:	mov    ecx,DWORD PTR [esi]
  fa02c1:	movzx  edx,WORD PTR [ecx+0xaa]
  fa02c8:	test   edx,edx
  fa02ca:	je     fa02db
  fa02cc:	mov    edi,DWORD PTR [ecx+0x4c]
  fa02cf:	xor    ebx,ebx
  fa02d1:	cmp    DWORD PTR [edi+ebx*8],eax
  fa02d4:	je     fa0311
  fa02d6:	inc    ebx
  fa02d7:	cmp    ebx,edx
  fa02d9:	jb     fa02d1
  fa02db:	mov    DWORD PTR [esp+0x4],eax
  fa02df:	mov    DWORD PTR [esp],esi
  fa02e2:	mov    DWORD PTR [esp+0x8],0x11
  fa02ea:	mov    ebx,DWORD PTR [esp+0x3c]
  fa02ee:	call   1c1964
  fa02f3:	jmp    fa031c
  fa02f5:	mov    ebx,DWORD PTR [esp+0x3c]
  fa02f9:	call   1fbc48
  fa02fe:	jmp    fa092f
  fa0303:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0307:	call   1fbc48
  fa030c:	jmp    fa092f
  fa0311:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  fa0315:	lea    eax,[ecx+eax*8+0x13c]
  fa031c:	mov    ecx,DWORD PTR [eax]
  fa031e:	mov    eax,DWORD PTR [eax+0x4]
  fa0321:	mov    DWORD PTR [esp+0x4],eax
  fa0325:	mov    DWORD PTR [esp],esi
  fa0328:	mov    ebx,DWORD PTR [esp+0x3c]
  fa032c:	call   ecx
  fa032e:	test   eax,eax
  fa0330:	je     fa0386
  fa0332:	mov    eax,DWORD PTR [eax+0x68]
  fa0335:	test   eax,eax
  fa0337:	je     fa0394
  fa0339:	mov    ecx,DWORD PTR [esp+0x38]
  fa033d:	mov    esi,DWORD PTR [ecx]
  fa033f:	test   esi,esi
  fa0341:	je     fa03a2
  fa0343:	mov    eax,DWORD PTR [eax+0xc]
  fa0346:	mov    DWORD PTR [esp+0x34],eax
  fa034a:	mov    eax,DWORD PTR [esp+0x30]
  fa034e:	mov    eax,DWORD PTR [eax]
  fa0350:	mov    ecx,DWORD PTR [esi]
  fa0352:	movzx  edx,WORD PTR [ecx+0xaa]
  fa0359:	test   edx,edx
  fa035b:	je     fa036c
  fa035d:	mov    edi,DWORD PTR [ecx+0x4c]
  fa0360:	xor    ebx,ebx
  fa0362:	cmp    DWORD PTR [edi+ebx*8],eax
  fa0365:	je     fa03b0
  fa0367:	inc    ebx
  fa0368:	cmp    ebx,edx
  fa036a:	jb     fa0362
  fa036c:	mov    DWORD PTR [esp+0x4],eax
  fa0370:	mov    DWORD PTR [esp],esi
  fa0373:	mov    DWORD PTR [esp+0x8],0x37
  fa037b:	mov    ebx,DWORD PTR [esp+0x3c]
  fa037f:	call   1c1964
  fa0384:	jmp    fa03bb
  fa0386:	mov    ebx,DWORD PTR [esp+0x3c]
  fa038a:	call   1fbc48
  fa038f:	jmp    fa092f
  fa0394:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0398:	call   1fbc48
  fa039d:	jmp    fa092f
  fa03a2:	mov    ebx,DWORD PTR [esp+0x3c]
  fa03a6:	call   1fbc48
  fa03ab:	jmp    fa092f
  fa03b0:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  fa03b4:	lea    eax,[ecx+eax*8+0x26c]
  fa03bb:	mov    ecx,DWORD PTR [eax]
  fa03bd:	mov    eax,DWORD PTR [eax+0x4]
  fa03c0:	mov    DWORD PTR [esp+0x4],eax
  fa03c4:	mov    DWORD PTR [esp],esi
  fa03c7:	mov    ebx,DWORD PTR [esp+0x3c]
  fa03cb:	call   ecx
  fa03cd:	mov    esi,eax
  fa03cf:	test   esi,esi
  fa03d1:	jne    fa03dc
  fa03d3:	mov    ebx,DWORD PTR [esp+0x3c]
  fa03d7:	call   1fbc48
  fa03dc:	mov    eax,DWORD PTR [esi]
  fa03de:	mov    edi,DWORD PTR [eax+0xd8]
  fa03e4:	mov    eax,DWORD PTR [esp+0x28]
  fa03e8:	mov    eax,DWORD PTR [eax]
  fa03ea:	mov    DWORD PTR [esp],eax
  fa03ed:	mov    ebx,DWORD PTR [esp+0x3c]
  fa03f1:	call   20bfb2
  fa03f6:	mov    DWORD PTR [esp+0x2c],eax
  fa03fa:	mov    DWORD PTR [esp+0x58],edi
  fa03fe:	mov    eax,DWORD PTR [esp+0x58]
  fa0402:	mov    DWORD PTR [esp+0x8],eax
  fa0406:	mov    DWORD PTR [esp+0x4],esi
  fa040a:	mov    eax,DWORD PTR [esp+0x2c]
  fa040e:	mov    DWORD PTR [esp],eax
  fa0411:	mov    DWORD PTR [esp+0xc],0x0
  fa0419:	mov    ebx,DWORD PTR [esp+0x3c]
  fa041d:	call   148dd91  ; SmoothMoves.UserTriggerDelegate::.ctor
  fa0422:	cmp    DWORD PTR [esp+0x34],0x0
  fa0427:	je     fa0926
  fa042d:	mov    eax,DWORD PTR [esp+0x2c]
  fa0431:	mov    DWORD PTR [esp+0x4],eax
  fa0435:	mov    eax,DWORD PTR [esp+0x34]
  fa0439:	mov    DWORD PTR [esp],eax
  fa043c:	mov    DWORD PTR [esp+0x8],0x0
  fa0444:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0448:	call   147b90e  ; SmoothMoves.BoneAnimation::RegisterUserTriggerDelegate
  fa044d:	mov    eax,DWORD PTR [esp+0x38]
  fa0451:	mov    esi,DWORD PTR [eax]
  fa0453:	test   esi,esi
  fa0455:	je     fa0493
  fa0457:	mov    eax,DWORD PTR [esp+0x30]
  fa045b:	mov    eax,DWORD PTR [eax]
  fa045d:	mov    ecx,DWORD PTR [esi]
  fa045f:	movzx  edx,WORD PTR [ecx+0xaa]
  fa0466:	test   edx,edx
  fa0468:	je     fa0479
  fa046a:	mov    edi,DWORD PTR [ecx+0x4c]
  fa046d:	xor    ebx,ebx
  fa046f:	cmp    DWORD PTR [edi+ebx*8],eax
  fa0472:	je     fa04a1
  fa0474:	inc    ebx
  fa0475:	cmp    ebx,edx
  fa0477:	jb     fa046f
  fa0479:	mov    DWORD PTR [esp+0x4],eax
  fa047d:	mov    DWORD PTR [esp],esi
  fa0480:	mov    DWORD PTR [esp+0x8],0x73
  fa0488:	mov    ebx,DWORD PTR [esp+0x3c]
  fa048c:	call   1c1964
  fa0491:	jmp    fa04ac
  fa0493:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0497:	call   1fbc48
  fa049c:	jmp    fa092f
  fa04a1:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  fa04a5:	lea    eax,[ecx+eax*8+0x44c]
  fa04ac:	mov    ecx,DWORD PTR [eax]
  fa04ae:	mov    eax,DWORD PTR [eax+0x4]
  fa04b1:	mov    DWORD PTR [esp+0x8],eax
  fa04b5:	mov    DWORD PTR [esp+0x4],esi
  fa04b9:	mov    DWORD PTR [esp],esi
  fa04bc:	mov    ebx,DWORD PTR [esp+0x3c]
  fa04c0:	call   ecx
  fa04c2:	mov    eax,DWORD PTR [esp+0x38]
  fa04c6:	mov    esi,DWORD PTR [eax]
  fa04c8:	test   esi,esi
  fa04ca:	je     fa0512
  fa04cc:	mov    eax,DWORD PTR [ebp+0x8]
  fa04cf:	mov    eax,DWORD PTR [eax+0x24]
  fa04d2:	mov    DWORD PTR [esp+0x2c],eax
  fa04d6:	mov    eax,DWORD PTR [esp+0x30]
  fa04da:	mov    eax,DWORD PTR [eax]
  fa04dc:	mov    ecx,DWORD PTR [esi]
  fa04de:	movzx  edx,WORD PTR [ecx+0xaa]
  fa04e5:	test   edx,edx
  fa04e7:	je     fa04f8
  fa04e9:	mov    edi,DWORD PTR [ecx+0x4c]
  fa04ec:	xor    ebx,ebx
  fa04ee:	cmp    DWORD PTR [edi+ebx*8],eax
  fa04f1:	je     fa0520
  fa04f3:	inc    ebx
  fa04f4:	cmp    ebx,edx
  fa04f6:	jb     fa04ee
  fa04f8:	mov    DWORD PTR [esp+0x4],eax
  fa04fc:	mov    DWORD PTR [esp],esi
  fa04ff:	mov    DWORD PTR [esp+0x8],0x37
  fa0507:	mov    ebx,DWORD PTR [esp+0x3c]
  fa050b:	call   1c1964
  fa0510:	jmp    fa052b
  fa0512:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0516:	call   1fbc48
  fa051b:	jmp    fa092f
  fa0520:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  fa0524:	lea    eax,[ecx+eax*8+0x26c]
  fa052b:	mov    ecx,DWORD PTR [eax]
  fa052d:	mov    eax,DWORD PTR [eax+0x4]
  fa0530:	mov    DWORD PTR [esp+0x4],eax
  fa0534:	mov    DWORD PTR [esp],esi
  fa0537:	mov    ebx,DWORD PTR [esp+0x3c]
  fa053b:	call   ecx
  fa053d:	mov    DWORD PTR [esp+0x34],eax
  fa0541:	mov    eax,DWORD PTR [ebp+0x8]
  fa0544:	mov    eax,DWORD PTR [eax+0x24]
  fa0547:	test   eax,eax
  fa0549:	je     fa0598
  fa054b:	mov    ecx,DWORD PTR [esp+0x38]
  fa054f:	mov    edi,DWORD PTR [ecx]
  fa0551:	test   edi,edi
  fa0553:	je     fa05a6
  fa0555:	mov    eax,DWORD PTR [eax+0x20]
  fa0558:	mov    DWORD PTR [esp+0x38],eax
  fa055c:	mov    eax,DWORD PTR [esp+0x30]
  fa0560:	mov    eax,DWORD PTR [eax]
  fa0562:	mov    ecx,DWORD PTR [edi]
  fa0564:	movzx  edx,WORD PTR [ecx+0xaa]
  fa056b:	test   edx,edx
  fa056d:	je     fa057e
  fa056f:	mov    esi,DWORD PTR [ecx+0x4c]
  fa0572:	xor    ebx,ebx
  fa0574:	cmp    DWORD PTR [esi+ebx*8],eax
  fa0577:	je     fa05b4
  fa0579:	inc    ebx
  fa057a:	cmp    ebx,edx
  fa057c:	jb     fa0574
  fa057e:	mov    DWORD PTR [esp+0x4],eax
  fa0582:	mov    DWORD PTR [esp],edi
  fa0585:	mov    DWORD PTR [esp+0x8],0x72
  fa058d:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0591:	call   1c1964
  fa0596:	jmp    fa05bf
  fa0598:	mov    ebx,DWORD PTR [esp+0x3c]
  fa059c:	call   1fbc48
  fa05a1:	jmp    fa092f
  fa05a6:	mov    ebx,DWORD PTR [esp+0x3c]
  fa05aa:	call   1fbc48
  fa05af:	jmp    fa092f
  fa05b4:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  fa05b8:	lea    eax,[ecx+eax*8+0x444]
  fa05bf:	mov    ecx,DWORD PTR [eax]
  fa05c1:	mov    eax,DWORD PTR [eax+0x4]
  fa05c4:	mov    DWORD PTR [esp+0x4],eax
  fa05c8:	mov    DWORD PTR [esp],edi
  fa05cb:	mov    ebx,DWORD PTR [esp+0x3c]
  fa05cf:	call   ecx
  fa05d1:	mov    esi,DWORD PTR [esp+0x34]
  fa05d5:	test   esi,esi
  fa05d7:	je     fa0652
  fa05d9:	mov    ecx,DWORD PTR [esi]
  fa05db:	mov    edx,DWORD PTR [ecx+0xe4]
  fa05e1:	mov    ecx,DWORD PTR [ecx+0xe8]
  fa05e7:	mov    DWORD PTR [esp+0x18],ecx
  fa05eb:	mov    DWORD PTR [esp+0xc],eax
  fa05ef:	mov    DWORD PTR [esp+0x8],edi
  fa05f3:	mov    eax,DWORD PTR [esp+0x38]
  fa05f7:	mov    DWORD PTR [esp+0x4],eax
  fa05fb:	mov    DWORD PTR [esp],esi
  fa05fe:	mov    DWORD PTR [esp+0x14],0x0
  fa0606:	mov    DWORD PTR [esp+0x10],0x0
  fa060e:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0612:	call   edx
  fa0614:	mov    ecx,DWORD PTR [esp+0x2c]
  fa0618:	test   ecx,ecx
  fa061a:	je     fa0660
  fa061c:	mov    DWORD PTR [esp+0x4],eax
  fa0620:	mov    DWORD PTR [esp],ecx
  fa0623:	mov    DWORD PTR [esp+0x8],0x0
  fa062b:	mov    ebx,DWORD PTR [esp+0x3c]
  fa062f:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  fa0634:	mov    ecx,DWORD PTR [ebp+0x8]
  fa0637:	mov    DWORD PTR [ecx+0x28],eax
  fa063a:	mov    al,0x1
  fa063c:	cmp    BYTE PTR [ecx+0x2c],0x0
  fa0640:	jne    fa091b
  fa0646:	mov    DWORD PTR [ecx+0x30],0x1
  fa064d:	jmp    fa091b
  fa0652:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0656:	call   1fbc48
  fa065b:	jmp    fa092f
  fa0660:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0664:	call   1fbc48
  fa0669:	jmp    fa092f
  fa066e:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0672:	mov    edi,DWORD PTR [ebp+0x8]
  fa0675:	cmp    edx,0x1
  fa0678:	jne    fa0942
  fa067e:	mov    DWORD PTR [esp],eax
  fa0681:	call   1ba3f0
  fa0686:	mov    esi,DWORD PTR [eax]
  fa0688:	call   1b9ce0
  fa068d:	lea    eax,[edi+0xc]
  fa0690:	lea    ecx,[ebx+0x4a234]
  fa0696:	mov    ecx,DWORD PTR [ecx]
  fa0698:	mov    DWORD PTR [esp+0x4],ecx
  fa069c:	mov    DWORD PTR [esp],eax
  fa069f:	call   447df6
  fa06a4:	test   esi,esi
  fa06a6:	je     fa06b0
  fa06a8:	mov    DWORD PTR [esp],esi
  fa06ab:	call   1fbb20
  fa06b0:	mov    eax,DWORD PTR [edi+0x24]
  fa06b3:	test   eax,eax
  fa06b5:	je     fa0938
  fa06bb:	mov    eax,DWORD PTR [eax+0x20]
  fa06be:	test   eax,eax
  fa06c0:	je     fa0938
  fa06c6:	mov    eax,DWORD PTR [eax+0x68]
  fa06c9:	test   eax,eax
  fa06cb:	je     fa0938
  fa06d1:	lea    ecx,[ebx+0x4a04c]
  fa06d7:	mov    ecx,DWORD PTR [ecx]
  fa06d9:	mov    DWORD PTR [esp+0x8],ecx
  fa06dd:	mov    DWORD PTR [esp],eax
  fa06e0:	mov    DWORD PTR [esp+0x4],0x1
  fa06e8:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  fa06ed:	lea    esi,[ebx+0x467b4]
  fa06f3:	mov    edx,DWORD PTR [esi]
  fa06f5:	mov    ecx,DWORD PTR [edx+0x50]
  fa06f8:	cmp    DWORD PTR [ecx],0x0
  fa06fb:	jne    fa075b
  fa06fd:	lea    ecx,[ebx+0x4c4f0]
  fa0703:	mov    ecx,DWORD PTR [ecx]
  fa0705:	mov    DWORD PTR [esp+0x34],ecx
  fa0709:	lea    ecx,[ebx+0x4588c]
  fa070f:	mov    ecx,DWORD PTR [ecx]
  fa0711:	mov    DWORD PTR [esp],ecx
  fa0714:	mov    DWORD PTR [esp+0x38],eax
  fa0718:	call   20bfb2
  fa071d:	mov    edi,eax
  fa071f:	mov    eax,DWORD PTR [esp+0x34]
  fa0723:	mov    DWORD PTR [esp+0x48],eax
  fa0727:	lea    eax,[ebx+0x4a054]
  fa072d:	mov    eax,DWORD PTR [eax]
  fa072f:	mov    DWORD PTR [esp+0xc],eax
  fa0733:	mov    eax,DWORD PTR [esp+0x48]
  fa0737:	mov    DWORD PTR [esp+0x8],eax
  fa073b:	mov    DWORD PTR [esp],edi
  fa073e:	mov    DWORD PTR [esp+0x4],0x0
  fa0746:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  fa074b:	mov    eax,DWORD PTR [esp+0x38]
  fa074f:	mov    ecx,DWORD PTR [esi]
  fa0751:	mov    ecx,DWORD PTR [ecx+0x50]
  fa0754:	mov    DWORD PTR [ecx],edi
  fa0756:	mov    edi,DWORD PTR [ebp+0x8]
  fa0759:	mov    edx,DWORD PTR [esi]
  fa075b:	mov    ecx,DWORD PTR [edx+0x50]
  fa075e:	mov    edx,DWORD PTR [ecx]
  fa0760:	lea    ecx,[ebx+0x4a058]
  fa0766:	mov    ecx,DWORD PTR [ecx]
  fa0768:	mov    DWORD PTR [esp+0xc],ecx
  fa076c:	mov    DWORD PTR [esp+0x8],edx
  fa0770:	mov    DWORD PTR [esp+0x4],eax
  fa0774:	mov    DWORD PTR [esp],0x0
  fa077b:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  fa0780:	mov    ecx,DWORD PTR [esi]
  fa0782:	mov    ecx,DWORD PTR [ecx+0x50]
  fa0785:	cmp    DWORD PTR [ecx+0x4],0x0
  fa0789:	jne    fa07ed
  fa078b:	lea    ecx,[ebx+0x4c4f4]
  fa0791:	mov    ecx,DWORD PTR [ecx]
  fa0793:	mov    DWORD PTR [esp+0x34],ecx
  fa0797:	lea    ecx,[ebx+0x45870]
  fa079d:	mov    ecx,DWORD PTR [ecx]
  fa079f:	mov    DWORD PTR [esp],ecx
  fa07a2:	mov    DWORD PTR [esp+0x38],eax
  fa07a6:	call   20bfb2
  fa07ab:	mov    edi,eax
  fa07ad:	mov    eax,DWORD PTR [esp+0x34]
  fa07b1:	mov    DWORD PTR [esp+0x40],eax
  fa07b5:	lea    eax,[ebx+0x4a01c]
  fa07bb:	mov    eax,DWORD PTR [eax]
  fa07bd:	mov    DWORD PTR [esp+0xc],eax
  fa07c1:	mov    eax,DWORD PTR [esp+0x40]
  fa07c5:	mov    DWORD PTR [esp+0x8],eax
  fa07c9:	mov    DWORD PTR [esp],edi
  fa07cc:	mov    DWORD PTR [esp+0x4],0x0
  fa07d4:	call   17d7670  ; shared address: System.Func`2<ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`2<ABH.GameDatas.IInventoryItemGameData, float>::.ctor | System.Func`2<ABH.Shared.BalancingData.ExperienceScalingBalancingData, float>::.ctor | +2 other aliases
  fa07d9:	mov    eax,DWORD PTR [esp+0x38]
  fa07dd:	mov    ecx,DWORD PTR [esi]
  fa07df:	mov    ecx,DWORD PTR [ecx+0x50]
  fa07e2:	mov    DWORD PTR [ecx+0x4],edi
  fa07e5:	mov    edi,DWORD PTR [ebp+0x8]
  fa07e8:	mov    ecx,DWORD PTR [esi]
  fa07ea:	mov    ecx,DWORD PTR [ecx+0x50]
  fa07ed:	mov    edx,DWORD PTR [ecx+0x4]
  fa07f0:	lea    ecx,[ebx+0x4c4f8]
  fa07f6:	mov    ecx,DWORD PTR [ecx]
  fa07f8:	mov    DWORD PTR [esp+0xc],ecx
  fa07fc:	mov    DWORD PTR [esp+0x8],edx
  fa0800:	mov    DWORD PTR [esp+0x4],eax
  fa0804:	mov    DWORD PTR [esp],0x0
  fa080b:	call   de1962  ; shared address: System.Linq.Enumerable::OrderByDescending | System.Linq.Enumerable::OrderByDescending | System.Linq.Enumerable::OrderByDescending
  fa0810:	lea    ecx,[ebx+0x4a080]
  fa0816:	mov    ecx,DWORD PTR [ecx]
  fa0818:	mov    DWORD PTR [esp+0x8],ecx
  fa081c:	mov    DWORD PTR [esp+0x4],eax
  fa0820:	mov    DWORD PTR [esp],0x0
  fa0827:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  fa082c:	test   edi,edi
  fa082e:	je     fa0938
  fa0834:	mov    DWORD PTR [edi+0x20],eax
  fa0837:	mov    DWORD PTR [esp+0x4],0x0
  fa083f:	mov    DWORD PTR [esp],0x0
  fa0846:	call   109314e  ; DIContainerLogic::GetBattleService
  fa084b:	mov    esi,eax
  fa084d:	mov    eax,DWORD PTR [edi+0x24]
  fa0850:	test   eax,eax
  fa0852:	je     fa0938
  fa0858:	mov    DWORD PTR [esp],eax
  fa085b:	mov    DWORD PTR [esp+0x4],0x0
  fa0863:	call   9f18af  ; BattleMgrBase::get_Model
  fa0868:	test   esi,esi
  fa086a:	je     fa0938
  fa0870:	mov    ecx,DWORD PTR [edi+0x20]
  fa0873:	mov    DWORD PTR [esp+0x8],ecx
  fa0877:	mov    DWORD PTR [esp+0x4],eax
  fa087b:	mov    DWORD PTR [esp],esi
  fa087e:	mov    DWORD PTR [esp+0x10],0x0
  fa0886:	mov    DWORD PTR [esp+0xc],0x1
  fa088e:	call   517b9e  ; ABH.Services.Logic.BattleService::ReplaceInitiative
  fa0893:	mov    DWORD PTR [esp+0x4],0x0
  fa089b:	mov    DWORD PTR [esp],0x0
  fa08a2:	call   109314e  ; DIContainerLogic::GetBattleService
  fa08a7:	mov    esi,eax
  fa08a9:	mov    eax,DWORD PTR [edi+0x24]
  fa08ac:	test   eax,eax
  fa08ae:	je     fa0938
  fa08b4:	mov    DWORD PTR [esp],eax
  fa08b7:	mov    DWORD PTR [esp+0x4],0x0
  fa08bf:	call   9f18af  ; BattleMgrBase::get_Model
  fa08c4:	test   esi,esi
  fa08c6:	je     fa0938
  fa08c8:	mov    DWORD PTR [esp+0x4],eax
  fa08cc:	mov    DWORD PTR [esp],esi
  fa08cf:	mov    DWORD PTR [esp+0x8],0x0
  fa08d7:	call   506aad  ; ABH.Services.Logic.BattleService::ReSetCurrentInitiative
  fa08dc:	mov    DWORD PTR [esp+0x4],0x0
  fa08e4:	mov    DWORD PTR [esp],0x0
  fa08eb:	call   109314e  ; DIContainerLogic::GetBattleService
  fa08f0:	mov    ecx,DWORD PTR [edi+0x24]
  fa08f3:	test   ecx,ecx
  fa08f5:	je     fa0938
  fa08f7:	test   eax,eax
  fa08f9:	je     fa0938
  fa08fb:	mov    ecx,DWORD PTR [ecx+0x20]
  fa08fe:	mov    DWORD PTR [esp+0x4],ecx
  fa0902:	mov    DWORD PTR [esp],eax
  fa0905:	mov    DWORD PTR [esp+0x8],0x0
  fa090d:	call   505a15  ; ABH.Services.Logic.BattleService::AddPassiveEffects
  fa0912:	mov    DWORD PTR [edi+0x30],0xffffffff
  fa0919:	xor    eax,eax
  fa091b:	movzx  eax,al
  fa091e:	lea    esp,[ebp-0xc]
  fa0921:	pop    esi
  fa0922:	pop    edi
  fa0923:	pop    ebx
  fa0924:	pop    ebp
  fa0925:	ret
  fa0926:	mov    ebx,DWORD PTR [esp+0x3c]
  fa092a:	call   1fbc48
  fa092f:	mov    ebx,DWORD PTR [esp+0x3c]
  fa0933:	call   f6e364
  fa0938:	call   1fbc48
  fa093d:	call   f6e364
  fa0942:	mov    DWORD PTR [esp],eax
  fa0945:	call   1b9bd0