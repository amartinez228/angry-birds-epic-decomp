
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c249b:
  6c249b:	push   ebp
  6c249c:	mov    ebp,esp
  6c249e:	push   ebx
  6c249f:	push   edi
  6c24a0:	push   esi
  6c24a1:	and    esp,0xfffffff0
  6c24a4:	sub    esp,0x20
  6c24a7:	call   6c24ac
  6c24ac:	pop    ebx
  6c24ad:	add    ebx,0x184fa98
  6c24b3:	mov    esi,DWORD PTR [ebp+0x8]
  6c24b6:	mov    al,BYTE PTR [ebx+0x5f639]
  6c24bc:	test   al,al
  6c24be:	jne    6c24d7
  6c24c0:	lea    eax,[ebx-0x66eb84]
  6c24c6:	mov    eax,DWORD PTR [eax]
  6c24c8:	mov    DWORD PTR [esp],eax
  6c24cb:	call   1ca6e8
  6c24d0:	mov    BYTE PTR [ebx+0x5f639],0x1
  6c24d7:	lea    eax,[ebx+0x4a7f4]
  6c24dd:	mov    eax,DWORD PTR [eax]
  6c24df:	mov    DWORD PTR [esp+0x4],eax
  6c24e3:	mov    DWORD PTR [esp],esi
  6c24e6:	call   1606f69  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::.ctor | +3 other aliases
  6c24eb:	lea    eax,[ebx+0x45820]
  6c24f1:	mov    eax,DWORD PTR [eax]
  6c24f3:	test   BYTE PTR [eax+0xb2],0x1
  6c24fa:	je     6c250a
  6c24fc:	cmp    DWORD PTR [eax+0x60],0x0
  6c2500:	jne    6c250a
  6c2502:	mov    DWORD PTR [esp],eax
  6c2505:	call   1db0b8
  6c250a:	mov    DWORD PTR [esp+0x4],0x0
  6c2512:	mov    DWORD PTR [esp],0x0
  6c2519:	call   107cf95  ; DIContainerBalancing::get_Service
  6c251e:	test   eax,eax
  6c2520:	je     6c25d5
  6c2526:	lea    ecx,[ebx+0x4a7f8]
  6c252c:	mov    ecx,DWORD PTR [ecx]
  6c252e:	mov    DWORD PTR [esp+0x14],ecx
  6c2532:	mov    edx,DWORD PTR [ecx+0xc]
  6c2535:	mov    esi,DWORD PTR [eax]
  6c2537:	mov    DWORD PTR [esp+0x10],esi
  6c253b:	mov    DWORD PTR [esp+0x18],eax
  6c253f:	movzx  esi,WORD PTR [esi+0xaa]
  6c2546:	test   esi,esi
  6c2548:	movzx  eax,WORD PTR [ecx+0x2c]
  6c254c:	je     6c2561
  6c254e:	mov    ecx,DWORD PTR [esp+0x10]
  6c2552:	mov    ecx,DWORD PTR [ecx+0x4c]
  6c2555:	xor    edi,edi
  6c2557:	cmp    DWORD PTR [ecx+edi*8],edx
  6c255a:	je     6c2577
  6c255c:	inc    edi
  6c255d:	cmp    edi,esi
  6c255f:	jb     6c2557
  6c2561:	mov    DWORD PTR [esp+0x8],eax
  6c2565:	mov    DWORD PTR [esp+0x4],edx
  6c2569:	mov    esi,DWORD PTR [esp+0x18]
  6c256d:	mov    DWORD PTR [esp],esi
  6c2570:	call   1c1964
  6c2575:	jmp    6c258a
  6c2577:	add    eax,DWORD PTR [ecx+edi*8+0x4]
  6c257b:	mov    ecx,DWORD PTR [esp+0x10]
  6c257f:	lea    eax,[ecx+eax*8+0xb4]
  6c2586:	mov    esi,DWORD PTR [esp+0x18]
  6c258a:	mov    eax,DWORD PTR [eax+0x4]
  6c258d:	mov    ecx,DWORD PTR [esp+0x14]
  6c2591:	mov    DWORD PTR [esp+0x4],ecx
  6c2595:	mov    DWORD PTR [esp],eax
  6c2598:	call   1da450
  6c259d:	mov    DWORD PTR [esp+0x8],eax
  6c25a1:	mov    ecx,DWORD PTR [ebp+0xc]
  6c25a4:	mov    edi,ecx
  6c25a6:	mov    DWORD PTR [esp+0x4],edi
  6c25aa:	mov    DWORD PTR [esp],esi
  6c25ad:	call   DWORD PTR [eax]
  6c25af:	mov    ecx,DWORD PTR [ebp+0x8]
  6c25b2:	mov    esi,ecx
  6c25b4:	mov    DWORD PTR [esi+0x8],eax
  6c25b7:	mov    eax,DWORD PTR [ebp+0x10]
  6c25ba:	mov    DWORD PTR [esp+0x8],eax
  6c25be:	mov    DWORD PTR [esp+0x4],edi
  6c25c2:	mov    DWORD PTR [esp],esi
  6c25c5:	call   6c25df  ; ABH.GameDatas.BirdGameData::CreateNewInstance
  6c25ca:	mov    DWORD PTR [esi+0xc],eax
  6c25cd:	lea    esp,[ebp-0xc]
  6c25d0:	pop    esi
  6c25d1:	pop    edi
  6c25d2:	pop    ebx
  6c25d3:	pop    ebp
  6c25d4:	ret
  6c25d5:	call   1fbc48
  6c25da:	call   6b106a