
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01091dfc:
 1091dfc:	push   ebp
 1091dfd:	mov    ebp,esp
 1091dff:	push   ebx
 1091e00:	push   edi
 1091e01:	push   esi
 1091e02:	and    esp,0xfffffff0
 1091e05:	sub    esp,0x20
 1091e08:	call   1091e0d
 1091e0d:	pop    ebx
 1091e0e:	add    ebx,0xe80137
 1091e14:	mov    esi,DWORD PTR [ebp+0xc]
 1091e17:	mov    al,BYTE PTR [ebx+0x634b3]
 1091e1d:	test   al,al
 1091e1f:	jne    1091e38
 1091e21:	lea    eax,[ebx-0x65794c]
 1091e27:	mov    eax,DWORD PTR [eax]
 1091e29:	mov    DWORD PTR [esp],eax
 1091e2c:	call   1ca6e8
 1091e31:	mov    BYTE PTR [ebx+0x634b3],0x1
 1091e38:	test   esi,esi
 1091e3a:	je     1091eed
 1091e40:	mov    edi,DWORD PTR [ebp+0x8]
 1091e43:	mov    DWORD PTR [esp],esi
 1091e46:	mov    DWORD PTR [esp+0x4],0x0
 1091e4e:	call   16792bf  ; UnityEngine.Object::get_name
 1091e53:	mov    esi,eax
 1091e55:	add    edi,0x8
 1091e58:	lea    eax,[ebx+0x46dac]
 1091e5e:	mov    eax,DWORD PTR [eax]
 1091e60:	mov    DWORD PTR [esp+0x4],edi
 1091e64:	mov    DWORD PTR [esp],eax
 1091e67:	call   20bf14
 1091e6c:	test   eax,eax
 1091e6e:	je     1091eed
 1091e70:	mov    ecx,DWORD PTR [eax]
 1091e72:	mov    edx,DWORD PTR [ecx+0xd0]
 1091e78:	mov    DWORD PTR [esp+0x4],edx
 1091e7c:	mov    DWORD PTR [esp],eax
 1091e7f:	call   DWORD PTR [ecx+0xcc]
 1091e85:	mov    edi,eax
 1091e87:	lea    eax,[ebx+0x430e4]
 1091e8d:	mov    eax,DWORD PTR [eax]
 1091e8f:	test   BYTE PTR [eax+0xb2],0x1
 1091e96:	je     1091ea6
 1091e98:	cmp    DWORD PTR [eax+0x60],0x0
 1091e9c:	jne    1091ea6
 1091e9e:	mov    DWORD PTR [esp],eax
 1091ea1:	call   1db0b8
 1091ea6:	lea    eax,[ebx+0x5a310]  ; literal "AudioAssetProviderPriority"
 1091eac:	mov    eax,DWORD PTR [eax]
 1091eae:	mov    DWORD PTR [esp+0x8],edi
 1091eb2:	mov    DWORD PTR [esp+0x4],eax
 1091eb6:	mov    DWORD PTR [esp+0xc],0x0
 1091ebe:	mov    DWORD PTR [esp],0x0
 1091ec5:	call   ca462a  ; System.String::Concat
 1091eca:	test   esi,esi
 1091ecc:	je     1091eed
 1091ece:	mov    DWORD PTR [esp+0x4],eax
 1091ed2:	mov    DWORD PTR [esp],esi
 1091ed5:	mov    DWORD PTR [esp+0x8],0x0
 1091edd:	call   cb2476  ; System.String::StartsWith
 1091ee2:	movzx  eax,al
 1091ee5:	lea    esp,[ebp-0xc]
 1091ee8:	pop    esi
 1091ee9:	pop    edi
 1091eea:	pop    ebx
 1091eeb:	pop    ebp
 1091eec:	ret
 1091eed:	call   1fbc48
 1091ef2:	call   1065aed