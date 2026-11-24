
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057d938:
  57d938:	push   ebp
  57d939:	mov    ebp,esp
  57d93b:	push   ebx
  57d93c:	push   esi
  57d93d:	and    esp,0xfffffff0
  57d940:	sub    esp,0x10
  57d943:	call   57d948
  57d948:	pop    ebx
  57d949:	add    ebx,0x19945fc
  57d94f:	mov    esi,DWORD PTR [ebp+0xc]
  57d952:	mov    al,BYTE PTR [ebx+0x5d746]
  57d958:	test   al,al
  57d95a:	jne    57d973
  57d95c:	lea    eax,[ebx-0x6627d0]
  57d962:	mov    eax,DWORD PTR [eax]
  57d964:	mov    DWORD PTR [esp],eax
  57d967:	call   1ca6e8
  57d96c:	mov    BYTE PTR [ebx+0x5d746],0x1
  57d973:	test   esi,esi
  57d975:	je     57d9c6
  57d977:	mov    DWORD PTR [esp],esi
  57d97a:	mov    DWORD PTR [esp+0x4],0x0
  57d982:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57d987:	test   eax,eax
  57d989:	je     57d9c6
  57d98b:	lea    ecx,[ebx+0x4af80]
  57d991:	mov    ecx,DWORD PTR [ecx]
  57d993:	mov    DWORD PTR [esp+0x4],ecx
  57d997:	mov    DWORD PTR [esp],eax
  57d99a:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57d99f:	mov    DWORD PTR [esp+0x8],eax
  57d9a3:	mov    DWORD PTR [esp+0xc],0x0
  57d9ab:	mov    DWORD PTR [esp+0x4],0x0
  57d9b3:	mov    DWORD PTR [esp],0x0
  57d9ba:	call   167eb06  ; UnityEngine.Random::Range
  57d9bf:	lea    esp,[ebp-0x8]
  57d9c2:	pop    esi
  57d9c3:	pop    ebx
  57d9c4:	pop    ebp
  57d9c5:	ret
  57d9c6:	call   1fbc48
  57d9cb:	call   540b98