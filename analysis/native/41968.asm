
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057d4a2:
  57d4a2:	push   ebp
  57d4a3:	mov    ebp,esp
  57d4a5:	push   ebx
  57d4a6:	push   edi
  57d4a7:	push   esi
  57d4a8:	and    esp,0xfffffff0
  57d4ab:	sub    esp,0x30
  57d4ae:	call   57d4b3
  57d4b3:	pop    ebx
  57d4b4:	add    ebx,0x1994a91
  57d4ba:	mov    esi,DWORD PTR [ebp+0x2c]
  57d4bd:	mov    edi,DWORD PTR [ebp+0x28]
  57d4c0:	mov    al,BYTE PTR [ebx+0x5d743]
  57d4c6:	test   al,al
  57d4c8:	jne    57d4e1
  57d4ca:	lea    eax,[ebx-0x6627e8]
  57d4d0:	mov    eax,DWORD PTR [eax]
  57d4d2:	mov    DWORD PTR [esp],eax
  57d4d5:	call   1ca6e8
  57d4da:	mov    BYTE PTR [ebx+0x5d743],0x1
  57d4e1:	mov    DWORD PTR [esp+0x28],0x0
  57d4e9:	mov    DWORD PTR [esp+0x4],edi
  57d4ed:	call   57d938  ; ABH.Services.Logic.LootOperations::GetLootIndexFromWheel
  57d4f2:	mov    DWORD PTR [esp+0x24],eax
  57d4f6:	mov    DWORD PTR [esi],eax
  57d4f8:	cmp    DWORD PTR [ebp+0x18],0x0
  57d4fc:	jle    57d5bc
  57d502:	xor    esi,esi
  57d504:	mov    DWORD PTR [esp+0x28],0x0
  57d50c:	test   edi,edi
  57d50e:	je     57d5c4
  57d514:	mov    DWORD PTR [esp],edi
  57d517:	mov    DWORD PTR [esp+0x4],0x0
  57d51f:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57d524:	mov    ecx,edi
  57d526:	mov    edi,eax
  57d528:	mov    DWORD PTR [esp],ecx
  57d52b:	mov    DWORD PTR [esp+0x4],0x0
  57d533:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57d538:	test   eax,eax
  57d53a:	je     57d5c4
  57d540:	lea    ecx,[ebx+0x4af80]
  57d546:	mov    ecx,DWORD PTR [ecx]
  57d548:	mov    DWORD PTR [esp+0x4],ecx
  57d54c:	mov    DWORD PTR [esp],eax
  57d54f:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57d554:	mov    ecx,eax
  57d556:	test   edi,edi
  57d558:	je     57d5c4
  57d55a:	mov    eax,DWORD PTR [esp+0x24]
  57d55e:	lea    eax,[eax+esi*1]
  57d561:	cdq
  57d562:	idiv   ecx
  57d564:	lea    eax,[ebx+0x4af7c]
  57d56a:	mov    eax,DWORD PTR [eax]
  57d56c:	mov    DWORD PTR [esp+0x8],eax
  57d570:	mov    DWORD PTR [esp+0x4],edx
  57d574:	mov    DWORD PTR [esp],edi
  57d577:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57d57c:	lea    ecx,[esp+0x28]
  57d580:	mov    DWORD PTR [esp+0x18],ecx
  57d584:	mov    DWORD PTR [esp+0x14],eax
  57d588:	mov    eax,DWORD PTR [ebp+0x24]
  57d58b:	mov    DWORD PTR [esp+0x10],eax
  57d58f:	mov    eax,DWORD PTR [ebp+0x20]
  57d592:	mov    DWORD PTR [esp+0xc],eax
  57d596:	mov    eax,DWORD PTR [ebp+0x1c]
  57d599:	mov    DWORD PTR [esp+0x8],eax
  57d59d:	mov    eax,DWORD PTR [ebp+0x14]
  57d5a0:	mov    DWORD PTR [esp+0x4],eax
  57d5a4:	mov    eax,DWORD PTR [ebp+0x8]
  57d5a7:	mov    DWORD PTR [esp],eax
  57d5aa:	call   57d5ce  ; ABH.Services.Logic.LootOperations::ProcessLootEntry
  57d5af:	inc    esi
  57d5b0:	cmp    esi,DWORD PTR [ebp+0x18]
  57d5b3:	mov    edi,DWORD PTR [ebp+0x28]
  57d5b6:	jl     57d504
  57d5bc:	lea    esp,[ebp-0xc]
  57d5bf:	pop    esi
  57d5c0:	pop    edi
  57d5c1:	pop    ebx
  57d5c2:	pop    ebp
  57d5c3:	ret
  57d5c4:	call   1fbc48
  57d5c9:	call   540b98