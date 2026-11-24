
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

010c4f89:
 10c4f89:	push   ebp
 10c4f8a:	mov    ebp,esp
 10c4f8c:	push   ebx
 10c4f8d:	push   edi
 10c4f8e:	push   esi
 10c4f8f:	and    esp,0xfffffff0
 10c4f92:	sub    esp,0x20
 10c4f95:	call   10c4f9a
 10c4f9a:	pop    ebx
 10c4f9b:	add    ebx,0xe4cfaa
 10c4fa1:	mov    esi,DWORD PTR [ebp+0x8]
 10c4fa4:	mov    al,BYTE PTR [ebx+0x6360f]
 10c4faa:	test   al,al
 10c4fac:	jne    10c4fc5
 10c4fae:	lea    eax,[ebx-0x65aba8]
 10c4fb4:	mov    eax,DWORD PTR [eax]
 10c4fb6:	mov    DWORD PTR [esp],eax
 10c4fb9:	call   1ca6e8
 10c4fbe:	mov    BYTE PTR [ebx+0x6360f],0x1
 10c4fc5:	mov    eax,DWORD PTR [esi+0xc]
 10c4fc8:	test   eax,eax
 10c4fca:	je     10c503e
 10c4fcc:	lea    edi,[ebx+0x48c20]
 10c4fd2:	mov    ecx,DWORD PTR [edi]
 10c4fd4:	mov    DWORD PTR [esp+0x4],ecx
 10c4fd8:	mov    DWORD PTR [esp],eax
 10c4fdb:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
 10c4fe0:	test   eax,eax
 10c4fe2:	jle    10c5033
 10c4fe4:	mov    esi,DWORD PTR [esi+0xc]
 10c4fe7:	test   esi,esi
 10c4fe9:	je     10c503e
 10c4feb:	mov    eax,DWORD PTR [edi]
 10c4fed:	mov    DWORD PTR [esp+0x4],eax
 10c4ff1:	mov    DWORD PTR [esp],esi
 10c4ff4:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
 10c4ff9:	mov    DWORD PTR [esp+0x8],eax
 10c4ffd:	mov    DWORD PTR [esp+0xc],0x0
 10c5005:	mov    DWORD PTR [esp+0x4],0x0
 10c500d:	mov    DWORD PTR [esp],0x0
 10c5014:	call   167eb06  ; UnityEngine.Random::Range
 10c5019:	lea    ecx,[ebx+0x4953c]
 10c501f:	mov    ecx,DWORD PTR [ecx]
 10c5021:	mov    DWORD PTR [esp+0x8],ecx
 10c5025:	mov    DWORD PTR [esp+0x4],eax
 10c5029:	mov    DWORD PTR [esp],esi
 10c502c:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 10c5031:	jmp    10c5036
 10c5033:	mov    eax,DWORD PTR [esi+0x8]
 10c5036:	lea    esp,[ebp-0xc]
 10c5039:	pop    esi
 10c503a:	pop    edi
 10c503b:	pop    ebx
 10c503c:	pop    ebp
 10c503d:	ret
 10c503e:	call   1fbc48
 10c5043:	call   10a4f7a