
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f69aa:
  6f69aa:	push   ebp
  6f69ab:	mov    ebp,esp
  6f69ad:	push   ebx
  6f69ae:	push   edi
  6f69af:	push   esi
  6f69b0:	and    esp,0xfffffff0
  6f69b3:	sub    esp,0x20
  6f69b6:	call   6f69bb
  6f69bb:	pop    ebx
  6f69bc:	add    ebx,0x181b589
  6f69c2:	mov    edi,DWORD PTR [ebp+0x8]
  6f69c5:	mov    eax,DWORD PTR [edi+0x34]
  6f69c8:	test   eax,eax
  6f69ca:	jne    6f6a37
  6f69cc:	mov    DWORD PTR [esp+0x4],0x0
  6f69d4:	mov    DWORD PTR [esp],0x0
  6f69db:	call   106f816  ; DIContainerLogic::GetLootOperationService
  6f69e0:	mov    esi,eax
  6f69e2:	mov    eax,DWORD PTR [edi+0x1c]
  6f69e5:	test   eax,eax
  6f69e7:	je     6f6a3f
  6f69e9:	mov    DWORD PTR [esp],eax
  6f69ec:	mov    DWORD PTR [esp+0x4],0x0
  6f69f4:	call   1701cdd  ; ABH.Shared.BalancingData.PigBalancingData::get_LootTableDefeatBonus
  6f69f9:	mov    DWORD PTR [esp+0x18],eax
  6f69fd:	mov    eax,DWORD PTR [edi+0x20]
  6f6a00:	test   eax,eax
  6f6a02:	je     6f6a3f
  6f6a04:	mov    DWORD PTR [esp],eax
  6f6a07:	mov    DWORD PTR [esp+0x4],0x0
  6f6a0f:	call   179a319  ; ABH.Shared.Models.Character.PigData::get_Level
  6f6a14:	test   esi,esi
  6f6a16:	je     6f6a3f
  6f6a18:	mov    DWORD PTR [esp+0x8],eax
  6f6a1c:	mov    eax,DWORD PTR [esp+0x18]
  6f6a20:	mov    DWORD PTR [esp+0x4],eax
  6f6a24:	mov    DWORD PTR [esp],esi
  6f6a27:	mov    DWORD PTR [esp+0xc],0x0
  6f6a2f:	call   5003b2  ; ABH.Services.Logic.LootOperations::GenerateLoot
  6f6a34:	mov    DWORD PTR [edi+0x34],eax
  6f6a37:	lea    esp,[ebp-0xc]
  6f6a3a:	pop    esi
  6f6a3b:	pop    edi
  6f6a3c:	pop    ebx
  6f6a3d:	pop    ebp
  6f6a3e:	ret
  6f6a3f:	call   1fbc48
  6f6a44:	call   6b106a