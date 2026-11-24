
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0056a45c:
  56a45c:	push   ebp
  56a45d:	mov    ebp,esp
  56a45f:	push   ebx
  56a460:	push   edi
  56a461:	push   esi
  56a462:	and    esp,0xfffffff0
  56a465:	sub    esp,0x30
  56a468:	call   56a46d
  56a46d:	pop    ebx
  56a46e:	add    ebx,0x19a7ad7
  56a474:	mov    esi,DWORD PTR [ebp+0x14]
  56a477:	mov    al,BYTE PTR [ebx+0x5d6f5]
  56a47d:	test   al,al
  56a47f:	jne    56a498
  56a481:	lea    eax,[ebx-0x664cb0]
  56a487:	mov    eax,DWORD PTR [eax]
  56a489:	mov    DWORD PTR [esp],eax
  56a48c:	call   1ca6e8
  56a491:	mov    BYTE PTR [ebx+0x5d6f5],0x1
  56a498:	mov    DWORD PTR [esp+0x4],0x0
  56a4a0:	mov    DWORD PTR [esp],0x0
  56a4a7:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56a4ac:	mov    DWORD PTR [esp+0x24],eax
  56a4b0:	mov    DWORD PTR [esp+0x4],0x0
  56a4b8:	mov    DWORD PTR [esp],0x0
  56a4bf:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56a4c4:	mov    edi,eax
  56a4c6:	test   esi,esi
  56a4c8:	je     56a5b8
  56a4ce:	lea    eax,[ebx+0x4ac28]
  56a4d4:	mov    eax,DWORD PTR [eax]
  56a4d6:	mov    DWORD PTR [esp+0x4],eax
  56a4da:	mov    DWORD PTR [esp],esi
  56a4dd:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56a4e2:	test   eax,eax
  56a4e4:	je     56a5b8
  56a4ea:	mov    esi,DWORD PTR [ebp+0x10]
  56a4ed:	mov    DWORD PTR [esp],eax
  56a4f0:	mov    DWORD PTR [esp+0x4],0x0
  56a4f8:	call   170197d  ; ABH.Shared.BalancingData.MasteryItemBalancingData::get_FallbackLootTable
  56a4fd:	mov    DWORD PTR [esp+0x20],eax
  56a501:	test   esi,esi
  56a503:	je     56a5b8
  56a509:	lea    eax,[ebx+0x4a210]
  56a50f:	mov    eax,DWORD PTR [eax]
  56a511:	mov    DWORD PTR [esp+0x4],eax
  56a515:	mov    DWORD PTR [esp],esi
  56a518:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56a51d:	test   eax,eax
  56a51f:	je     56a5b8
  56a525:	mov    DWORD PTR [esp],eax
  56a528:	mov    DWORD PTR [esp+0x4],0x0
  56a530:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  56a535:	test   edi,edi
  56a537:	je     56a5b8
  56a539:	mov    DWORD PTR [esp+0x28],0x0
  56a541:	lea    ecx,[esp+0x28]
  56a545:	mov    DWORD PTR [esp+0x14],ecx
  56a549:	mov    DWORD PTR [esp+0x8],eax
  56a54d:	mov    eax,DWORD PTR [esp+0x20]
  56a551:	mov    DWORD PTR [esp+0x4],eax
  56a555:	mov    DWORD PTR [esp],edi
  56a558:	mov    DWORD PTR [esp+0x18],0x0
  56a560:	mov    DWORD PTR [esp+0x10],0x0
  56a568:	mov    DWORD PTR [esp+0xc],0x1
  56a570:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  56a575:	cmp    DWORD PTR [esp+0x24],0x0
  56a57a:	je     56a5b8
  56a57c:	mov    ecx,DWORD PTR [ebp+0xc]
  56a57f:	lea    edx,[ebx+0x5797c]  ; literal "mastery_conversion"
  56a585:	mov    edx,DWORD PTR [edx]
  56a587:	mov    DWORD PTR [esp+0x10],edx
  56a58b:	mov    DWORD PTR [esp+0xc],eax
  56a58f:	mov    DWORD PTR [esp+0x4],ecx
  56a593:	mov    DWORD PTR [esp+0x18],0x1
  56a59b:	mov    DWORD PTR [esp+0x14],0x0
  56a5a3:	mov    DWORD PTR [esp+0x8],0x1
  56a5ab:	call   515c3c  ; ABH.Services.Logic.LootOperations::RewardLoot
  56a5b0:	lea    esp,[ebp-0xc]
  56a5b3:	pop    esi
  56a5b4:	pop    edi
  56a5b5:	pop    ebx
  56a5b6:	pop    ebp
  56a5b7:	ret
  56a5b8:	call   1fbc48
  56a5bd:	call   540b98