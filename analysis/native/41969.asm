
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057d377:
  57d377:	push   ebp
  57d378:	mov    ebp,esp
  57d37a:	push   ebx
  57d37b:	push   edi
  57d37c:	push   esi
  57d37d:	and    esp,0xfffffff0
  57d380:	sub    esp,0x30
  57d383:	call   57d388
  57d388:	pop    ebx
  57d389:	add    ebx,0x1994bbc
  57d38f:	mov    al,BYTE PTR [ebx+0x5d744]
  57d395:	test   al,al
  57d397:	jne    57d3b0
  57d399:	lea    eax,[ebx-0x6627e4]
  57d39f:	mov    eax,DWORD PTR [eax]
  57d3a1:	mov    DWORD PTR [esp],eax
  57d3a4:	call   1ca6e8
  57d3a9:	mov    BYTE PTR [ebx+0x5d744],0x1
  57d3b0:	mov    DWORD PTR [esp+0x28],0x0
  57d3b8:	cmp    DWORD PTR [ebp+0x18],0x0
  57d3bc:	jle    57d490
  57d3c2:	mov    eax,DWORD PTR [ebp+0x2c]
  57d3c5:	mov    ecx,DWORD PTR [ebp+0x28]
  57d3c8:	mov    eax,DWORD PTR [eax]
  57d3ca:	mov    DWORD PTR [esp+0x20],eax
  57d3ce:	xor    edi,edi
  57d3d0:	mov    DWORD PTR [esp+0x24],edi
  57d3d4:	mov    DWORD PTR [esp+0x28],0x0
  57d3dc:	test   ecx,ecx
  57d3de:	je     57d498
  57d3e4:	mov    DWORD PTR [esp],ecx
  57d3e7:	mov    DWORD PTR [esp+0x4],0x0
  57d3ef:	mov    edi,ecx
  57d3f1:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57d3f6:	mov    esi,eax
  57d3f8:	mov    DWORD PTR [esp],edi
  57d3fb:	mov    DWORD PTR [esp+0x4],0x0
  57d403:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57d408:	test   eax,eax
  57d40a:	je     57d498
  57d410:	lea    ecx,[ebx+0x4af80]
  57d416:	mov    ecx,DWORD PTR [ecx]
  57d418:	mov    DWORD PTR [esp+0x4],ecx
  57d41c:	mov    DWORD PTR [esp],eax
  57d41f:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57d424:	mov    ecx,eax
  57d426:	test   esi,esi
  57d428:	mov    edi,DWORD PTR [esp+0x24]
  57d42c:	je     57d498
  57d42e:	mov    eax,DWORD PTR [esp+0x20]
  57d432:	lea    eax,[eax+edi*1]
  57d435:	cdq
  57d436:	idiv   ecx
  57d438:	lea    eax,[ebx+0x4af7c]
  57d43e:	mov    eax,DWORD PTR [eax]
  57d440:	mov    DWORD PTR [esp+0x8],eax
  57d444:	mov    DWORD PTR [esp+0x4],edx
  57d448:	mov    DWORD PTR [esp],esi
  57d44b:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57d450:	lea    ecx,[esp+0x28]
  57d454:	mov    DWORD PTR [esp+0x18],ecx
  57d458:	mov    DWORD PTR [esp+0x14],eax
  57d45c:	mov    eax,DWORD PTR [ebp+0x24]
  57d45f:	mov    DWORD PTR [esp+0x10],eax
  57d463:	mov    eax,DWORD PTR [ebp+0x20]
  57d466:	mov    DWORD PTR [esp+0xc],eax
  57d46a:	mov    eax,DWORD PTR [ebp+0x1c]
  57d46d:	mov    DWORD PTR [esp+0x8],eax
  57d471:	mov    eax,DWORD PTR [ebp+0x14]
  57d474:	mov    DWORD PTR [esp+0x4],eax
  57d478:	mov    eax,DWORD PTR [ebp+0x8]
  57d47b:	mov    DWORD PTR [esp],eax
  57d47e:	call   57d5ce  ; ABH.Services.Logic.LootOperations::ProcessLootEntry
  57d483:	inc    edi
  57d484:	cmp    edi,DWORD PTR [ebp+0x18]
  57d487:	mov    ecx,DWORD PTR [ebp+0x28]
  57d48a:	jl     57d3d0
  57d490:	lea    esp,[ebp-0xc]
  57d493:	pop    esi
  57d494:	pop    edi
  57d495:	pop    ebx
  57d496:	pop    ebp
  57d497:	ret
  57d498:	call   1fbc48
  57d49d:	call   540b98