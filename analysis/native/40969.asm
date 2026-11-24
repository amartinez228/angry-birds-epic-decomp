
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050a671:
  50a671:	push   ebp
  50a672:	mov    ebp,esp
  50a674:	push   ebx
  50a675:	push   esi
  50a676:	and    esp,0xfffffff0
  50a679:	sub    esp,0x10
  50a67c:	call   50a681
  50a681:	pop    ebx
  50a682:	add    ebx,0x1a078c3
  50a688:	mov    esi,DWORD PTR [ebp+0xc]
  50a68b:	mov    al,BYTE PTR [ebx+0x5d4ff]
  50a691:	test   al,al
  50a693:	jne    50a6ac
  50a695:	lea    eax,[ebx-0x66f38c]
  50a69b:	mov    eax,DWORD PTR [eax]
  50a69d:	mov    DWORD PTR [esp],eax
  50a6a0:	call   1ca6e8
  50a6a5:	mov    BYTE PTR [ebx+0x5d4ff],0x1
  50a6ac:	test   esi,esi
  50a6ae:	je     50a6ea
  50a6b0:	mov    eax,DWORD PTR [esi+0x60]
  50a6b3:	test   eax,eax
  50a6b5:	je     50a6ea
  50a6b7:	mov    ecx,DWORD PTR [ebp+0x10]
  50a6ba:	lea    edx,[ebx+0x4a458]
  50a6c0:	mov    edx,DWORD PTR [edx]
  50a6c2:	mov    DWORD PTR [esp+0x8],edx
  50a6c6:	mov    DWORD PTR [esp+0x4],ecx
  50a6ca:	mov    DWORD PTR [esp],eax
  50a6cd:	call   4c3f21  ; shared address: System.Collections.Generic.List`1<object>::Remove | System.Collections.Generic.List`1<System.TimeZoneInfo+AdjustmentRule>::Remove | System.Collections.Generic.List`1<System.Runtime.Serialization.SerializationMap>::Remove | +40 other aliases
  50a6d2:	mov    DWORD PTR [esp+0x4],esi
  50a6d6:	mov    DWORD PTR [esp+0x8],0x0
  50a6de:	call   505253  ; ABH.Services.Logic.BattleService::ReCalculateInitiative
  50a6e3:	lea    esp,[ebp-0x8]
  50a6e6:	pop    esi
  50a6e7:	pop    ebx
  50a6e8:	pop    ebp
  50a6e9:	ret
  50a6ea:	call   1fbc48
  50a6ef:	call   540b98