
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050a6f4:
  50a6f4:	push   ebp
  50a6f5:	mov    ebp,esp
  50a6f7:	push   ebx
  50a6f8:	push   edi
  50a6f9:	push   esi
  50a6fa:	and    esp,0xfffffff0
  50a6fd:	sub    esp,0x20
  50a700:	call   50a705
  50a705:	pop    ebx
  50a706:	add    ebx,0x1a0783f
  50a70c:	mov    edi,DWORD PTR [ebp+0xc]
  50a70f:	mov    al,BYTE PTR [ebx+0x5d500]
  50a715:	test   al,al
  50a717:	jne    50a730
  50a719:	lea    eax,[ebx-0x66f550]
  50a71f:	mov    eax,DWORD PTR [eax]
  50a721:	mov    DWORD PTR [esp],eax
  50a724:	call   1ca6e8
  50a729:	mov    BYTE PTR [ebx+0x5d500],0x1
  50a730:	test   edi,edi
  50a732:	je     50a7ef
  50a738:	mov    esi,DWORD PTR [edi+0x28]
  50a73b:	mov    DWORD PTR [esp+0x4],edi
  50a73f:	mov    DWORD PTR [esp+0x8],0x0
  50a747:	call   505253  ; ABH.Services.Logic.BattleService::ReCalculateInitiative
  50a74c:	mov    DWORD PTR [esp+0x4],edi
  50a750:	call   506aad  ; ABH.Services.Logic.BattleService::ReSetCurrentInitiative
  50a755:	mov    DWORD PTR [esp],edi
  50a758:	mov    DWORD PTR [esp+0x4],0x0
  50a760:	call   ec17ae  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentCombatant
  50a765:	cmp    eax,DWORD PTR [ebp+0x10]
  50a768:	je     50a7e4
  50a76a:	mov    DWORD PTR [esp],edi
  50a76d:	mov    DWORD PTR [esp+0x4],0x0
  50a775:	call   ec17ae  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentCombatant
  50a77a:	mov    esi,eax
  50a77c:	test   esi,esi
  50a77e:	je     50a7ef
  50a780:	lea    eax,[ebx+0x45874]
  50a786:	mov    eax,DWORD PTR [eax]
  50a788:	mov    ecx,DWORD PTR [esi]
  50a78a:	mov    DWORD PTR [esp+0x18],ecx
  50a78e:	movzx  edx,WORD PTR [ecx+0xaa]
  50a795:	test   edx,edx
  50a797:	je     50a7ac
  50a799:	mov    ecx,DWORD PTR [esp+0x18]
  50a79d:	mov    edi,DWORD PTR [ecx+0x4c]
  50a7a0:	xor    ecx,ecx
  50a7a2:	cmp    DWORD PTR [edi+ecx*8],eax
  50a7a5:	je     50a7c4
  50a7a7:	inc    ecx
  50a7a8:	cmp    ecx,edx
  50a7aa:	jb     50a7a2
  50a7ac:	mov    DWORD PTR [esp+0x4],eax
  50a7b0:	mov    DWORD PTR [esp],esi
  50a7b3:	mov    DWORD PTR [esp+0x8],0x29
  50a7bb:	call   1c1964
  50a7c0:	mov    ecx,eax
  50a7c2:	jmp    50a7d3
  50a7c4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  50a7c8:	mov    ecx,DWORD PTR [esp+0x18]
  50a7cc:	lea    ecx,[ecx+eax*8+0x1fc]
  50a7d3:	mov    eax,DWORD PTR [ecx+0x4]
  50a7d6:	mov    DWORD PTR [esp+0x4],eax
  50a7da:	mov    DWORD PTR [esp],esi
  50a7dd:	call   DWORD PTR [ecx]
  50a7df:	mov    esi,eax
  50a7e1:	mov    edi,DWORD PTR [ebp+0xc]
  50a7e4:	mov    DWORD PTR [edi+0x28],esi
  50a7e7:	lea    esp,[ebp-0xc]
  50a7ea:	pop    esi
  50a7eb:	pop    edi
  50a7ec:	pop    ebx
  50a7ed:	pop    ebp
  50a7ee:	ret
  50a7ef:	call   1fbc48
  50a7f4:	call   540b98