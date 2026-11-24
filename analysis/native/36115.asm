
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed8d03:
  ed8d03:	push   ebp
  ed8d04:	mov    ebp,esp
  ed8d06:	push   ebx
  ed8d07:	push   edi
  ed8d08:	push   esi
  ed8d09:	and    esp,0xfffffff0
  ed8d0c:	sub    esp,0x20
  ed8d0f:	call   ed8d14
  ed8d14:	pop    ebx
  ed8d15:	add    ebx,0x1039230
  ed8d1b:	mov    al,BYTE PTR [ebx+0x6279b]
  ed8d21:	test   al,al
  ed8d23:	jne    ed8d3c
  ed8d25:	lea    eax,[ebx-0x6705b8]
  ed8d2b:	mov    eax,DWORD PTR [eax]
  ed8d2d:	mov    DWORD PTR [esp],eax
  ed8d30:	call   1ca6e8
  ed8d35:	mov    BYTE PTR [ebx+0x6279b],0x1
  ed8d3c:	lea    eax,[ebx+0x44d10]
  ed8d42:	mov    eax,DWORD PTR [eax]
  ed8d44:	mov    DWORD PTR [esp],eax
  ed8d47:	call   20bfb2
  ed8d4c:	mov    esi,eax
  ed8d4e:	lea    eax,[ebx+0x49298]
  ed8d54:	mov    eax,DWORD PTR [eax]
  ed8d56:	mov    DWORD PTR [esp+0x4],eax
  ed8d5a:	mov    DWORD PTR [esp],esi
  ed8d5d:	call   617b0b
  ed8d62:	lea    edi,[ebx+0x430e4]
  ed8d68:	mov    eax,DWORD PTR [edi]
  ed8d6a:	test   BYTE PTR [eax+0xb2],0x1
  ed8d71:	je     ed8d83
  ed8d73:	cmp    DWORD PTR [eax+0x60],0x0
  ed8d77:	jne    ed8d83
  ed8d79:	mov    DWORD PTR [esp],eax
  ed8d7c:	call   1db0b8
  ed8d81:	mov    eax,DWORD PTR [edi]
  ed8d83:	mov    eax,DWORD PTR [eax+0x50]
  ed8d86:	mov    edi,DWORD PTR [eax]
  ed8d88:	mov    eax,DWORD PTR [ebp+0x8]
  ed8d8b:	movss  xmm0,DWORD PTR [eax+0x8c]
  ed8d93:	movss  DWORD PTR [esp+0x18],xmm0
  ed8d99:	lea    eax,[ebx+0x433a4]
  ed8d9f:	mov    eax,DWORD PTR [eax]
  ed8da1:	lea    ecx,[esp+0x18]
  ed8da5:	mov    DWORD PTR [esp+0x4],ecx
  ed8da9:	mov    DWORD PTR [esp],eax
  ed8dac:	call   20bf14
  ed8db1:	mov    DWORD PTR [esp+0x8],eax
  ed8db5:	mov    DWORD PTR [esp+0x4],edi
  ed8db9:	mov    DWORD PTR [esp+0xc],0x0
  ed8dc1:	mov    DWORD PTR [esp],0x0
  ed8dc8:	call   cb2fed  ; System.String::Concat
  ed8dcd:	test   esi,esi
  ed8dcf:	je     ed8e6c
  ed8dd5:	lea    ecx,[ebx+0x56b94]
  ed8ddb:	mov    ecx,DWORD PTR [ecx]
  ed8ddd:	lea    edx,[ebx+0x4929c]
  ed8de3:	mov    edx,DWORD PTR [edx]
  ed8de5:	mov    DWORD PTR [esp+0xc],edx
  ed8de9:	mov    DWORD PTR [esp+0x8],eax
  ed8ded:	mov    DWORD PTR [esp+0x4],ecx
  ed8df1:	mov    DWORD PTR [esp],esi
  ed8df4:	call   619d68
  ed8df9:	lea    eax,[ebx+0x4584c]
  ed8dff:	mov    eax,DWORD PTR [eax]
  ed8e01:	test   BYTE PTR [eax+0xb2],0x1
  ed8e08:	je     ed8e18
  ed8e0a:	cmp    DWORD PTR [eax+0x60],0x0
  ed8e0e:	jne    ed8e18
  ed8e10:	mov    DWORD PTR [esp],eax
  ed8e13:	call   1db0b8
  ed8e18:	mov    DWORD PTR [esp+0x4],0x0
  ed8e20:	mov    DWORD PTR [esp],0x0
  ed8e27:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  ed8e2c:	mov    edi,eax
  ed8e2e:	mov    eax,DWORD PTR [ebp+0x8]
  ed8e31:	mov    eax,DWORD PTR [eax+0x8]
  ed8e34:	test   eax,eax
  ed8e36:	je     ed8e6c
  ed8e38:	mov    DWORD PTR [esp],eax
  ed8e3b:	mov    DWORD PTR [esp+0x4],0x0
  ed8e43:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
  ed8e48:	test   edi,edi
  ed8e4a:	je     ed8e6c
  ed8e4c:	mov    DWORD PTR [esp+0x8],esi
  ed8e50:	mov    DWORD PTR [esp+0x4],eax
  ed8e54:	mov    DWORD PTR [esp],edi
  ed8e57:	mov    DWORD PTR [esp+0xc],0x0
  ed8e5f:	call   af6d3e  ; ABHLocaService::GetSkillName
  ed8e64:	lea    esp,[ebp-0xc]
  ed8e67:	pop    esi
  ed8e68:	pop    edi
  ed8e69:	pop    ebx
  ed8e6a:	pop    ebp
  ed8e6b:	ret
  ed8e6c:	call   1fbc48
  ed8e71:	call   ebbb41