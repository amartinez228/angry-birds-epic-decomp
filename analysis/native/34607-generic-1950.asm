
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01603997:
 1603997:	push   ebp
 1603998:	mov    ebp,esp
 160399a:	push   ebx
 160399b:	push   edi
 160399c:	push   esi
 160399d:	and    esp,0xfffffff0
 16039a0:	sub    esp,0x40
 16039a3:	call   16039a8
 16039a8:	pop    ebx
 16039a9:	add    ebx,0x90e59c
 16039af:	mov    esi,DWORD PTR [ebp+0x8]
 16039b2:	mov    al,BYTE PTR [ebx+0x66b92]
 16039b8:	test   al,al
 16039ba:	jne    16039d3
 16039bc:	lea    eax,[ebx-0x66fdc0]
 16039c2:	mov    eax,DWORD PTR [eax]
 16039c4:	mov    DWORD PTR [esp],eax
 16039c7:	call   1ca6e8
 16039cc:	mov    BYTE PTR [ebx+0x66b92],0x1
 16039d3:	mov    DWORD PTR [esp+0x38],0x0
 16039db:	cmp    BYTE PTR [esi+0x44],0x0
 16039df:	je     1603ad8
 16039e5:	mov    eax,DWORD PTR [ebp+0xc]
 16039e8:	mov    DWORD PTR [esp+0x38],0x0
 16039f0:	mov    eax,DWORD PTR [eax+0xc]
 16039f3:	mov    eax,DWORD PTR [eax+0x54]
 16039f6:	mov    eax,DWORD PTR [eax+0x10]
 16039f9:	mov    DWORD PTR [esp+0x4],eax
 16039fd:	mov    DWORD PTR [esp],esi
 1603a00:	call   DWORD PTR [eax]
 1603a02:	test   eax,eax
 1603a04:	je     1603aef
 1603a0a:	lea    ecx,[ebx+0x5ce00]  ; literal "health"
 1603a10:	mov    ecx,DWORD PTR [ecx]
 1603a12:	lea    edx,[ebx+0x4a034]
 1603a18:	mov    edx,DWORD PTR [edx]
 1603a1a:	mov    DWORD PTR [esp+0xc],edx
 1603a1e:	lea    edx,[esp+0x38]
 1603a22:	mov    DWORD PTR [esp+0x8],edx
 1603a26:	mov    DWORD PTR [esp+0x4],ecx
 1603a2a:	mov    DWORD PTR [esp],eax
 1603a2d:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
 1603a32:	mov    DWORD PTR [esp+0x4],0x0
 1603a3a:	mov    DWORD PTR [esp],0x0
 1603a41:	call   109314e  ; DIContainerLogic::GetBattleService
 1603a46:	mov    DWORD PTR [esp+0x28],eax
 1603a4a:	mov    edi,DWORD PTR [ebp+0xc]
 1603a4d:	mov    eax,DWORD PTR [edi+0xc]
 1603a50:	mov    eax,DWORD PTR [eax+0x54]
 1603a53:	mov    eax,DWORD PTR [eax+0x14]
 1603a56:	mov    DWORD PTR [esp+0x4],eax
 1603a5a:	mov    DWORD PTR [esp],esi
 1603a5d:	call   DWORD PTR [eax]
 1603a5f:	fstp   DWORD PTR [esp+0x34]
 1603a63:	movss  xmm0,DWORD PTR [esp+0x34]
 1603a69:	movss  DWORD PTR [esp+0x24],xmm0
 1603a6f:	mov    eax,DWORD PTR [edi+0xc]
 1603a72:	mov    eax,DWORD PTR [eax+0x54]
 1603a75:	mov    eax,DWORD PTR [eax+0x18]
 1603a78:	mov    DWORD PTR [esp+0x4],eax
 1603a7c:	mov    DWORD PTR [esp],esi
 1603a7f:	call   DWORD PTR [eax]
 1603a81:	mov    ecx,DWORD PTR [esp+0x28]
 1603a85:	test   ecx,ecx
 1603a87:	je     1603aef
 1603a89:	movss  xmm0,DWORD PTR [esp+0x38]
 1603a8f:	movss  DWORD PTR [esp+0x10],xmm0
 1603a95:	mov    DWORD PTR [esp+0xc],eax
 1603a99:	mov    DWORD PTR [esp+0x8],esi
 1603a9d:	movss  xmm0,DWORD PTR [esp+0x24]
 1603aa3:	movss  DWORD PTR [esp+0x4],xmm0
 1603aa9:	mov    DWORD PTR [esp],ecx
 1603aac:	mov    DWORD PTR [esp+0x14],0x0
 1603ab4:	call   50772f  ; ABH.Services.Logic.BattleService::ApplyBuffsOnHealth
 1603ab9:	fstp   DWORD PTR [esp+0x30]
 1603abd:	movss  xmm0,DWORD PTR [esp+0x30]
 1603ac3:	movss  DWORD PTR [esi+0x60],xmm0
 1603ac8:	addss  xmm0,DWORD PTR [esi+0x3c]
 1603acd:	movss  DWORD PTR [esi+0x40],xmm0
 1603ad2:	mov    BYTE PTR [esi+0x44],0x0
 1603ad6:	jmp    1603add
 1603ad8:	movss  xmm0,DWORD PTR [esi+0x40]
 1603add:	movss  DWORD PTR [esp+0x2c],xmm0
 1603ae3:	fld    DWORD PTR [esp+0x2c]
 1603ae7:	lea    esp,[ebp-0xc]
 1603aea:	pop    esi
 1603aeb:	pop    edi
 1603aec:	pop    ebx
 1603aed:	pop    ebp
 1603aee:	ret
 1603aef:	call   1fbc48
 1603af4:	call   1608243