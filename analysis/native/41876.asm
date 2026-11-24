
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0056b18a:
  56b18a:	push   ebp
  56b18b:	mov    ebp,esp
  56b18d:	push   ebx
  56b18e:	push   edi
  56b18f:	push   esi
  56b190:	and    esp,0xfffffff0
  56b193:	sub    esp,0xd0
  56b199:	call   56b19e
  56b19e:	pop    ebx
  56b19f:	add    ebx,0x19a6da6
  56b1a5:	mov    esi,DWORD PTR [ebp+0x10]
  56b1a8:	mov    al,BYTE PTR [ebx+0x5d6f9]
  56b1ae:	test   al,al
  56b1b0:	jne    56b1c9
  56b1b2:	lea    eax,[ebx-0x664be8]
  56b1b8:	mov    eax,DWORD PTR [eax]
  56b1ba:	mov    DWORD PTR [esp],eax
  56b1bd:	call   1ca6e8
  56b1c2:	mov    BYTE PTR [ebx+0x5d6f9],0x1
  56b1c9:	mov    DWORD PTR [esp+0xc4],0x0
  56b1d4:	xorps  xmm0,xmm0
  56b1d7:	movaps XMMWORD PTR [esp+0xb0],xmm0
  56b1df:	mov    DWORD PTR [esp+0xc0],0x0
  56b1ea:	mov    DWORD PTR [esp+0xac],0x0
  56b1f5:	mov    DWORD PTR [esp+0xa8],0x0
  56b200:	mov    DWORD PTR [esp+0xa4],0x0
  56b20b:	lea    eax,[ebx+0x45e80]
  56b211:	mov    DWORD PTR [esp+0x70],0x0
  56b219:	test   esi,esi
  56b21b:	je     56b24a
  56b21d:	mov    DWORD PTR [esp+0x64],eax
  56b221:	mov    eax,DWORD PTR [eax]
  56b223:	mov    edx,DWORD PTR [esi]
  56b225:	movzx  ecx,BYTE PTR [eax+0xac]
  56b22c:	movzx  esi,BYTE PTR [edx+0xac]
  56b233:	cmp    esi,ecx
  56b235:	jb     56b24e
  56b237:	mov    edx,DWORD PTR [edx+0x58]
  56b23a:	xor    esi,esi
  56b23c:	cmp    DWORD PTR [edx+ecx*4-0x4],eax
  56b240:	cmove  esi,DWORD PTR [ebp+0x10]
  56b244:	mov    DWORD PTR [esp+0x70],esi
  56b248:	jmp    56b24e
  56b24a:	mov    DWORD PTR [esp+0x64],eax
  56b24e:	lea    eax,[ebx+0x46114]
  56b254:	mov    eax,DWORD PTR [eax]
  56b256:	mov    DWORD PTR [esp],eax
  56b259:	call   20bfb2
  56b25e:	mov    esi,eax
  56b260:	lea    eax,[ebx+0x4b538]
  56b266:	mov    eax,DWORD PTR [eax]
  56b268:	mov    DWORD PTR [esp+0x4],eax
  56b26c:	mov    DWORD PTR [esp],esi
  56b26f:	call   4ad2a4  ; shared address: System.Collections.Generic.List`1<unresolved-type@0x1e5d478(kind=0x15,data=0x1f13e24)>::.ctor | System.Collections.Generic.List`1<unresolved-type@0x1e5d360(kind=0x15,data=0x1f13c14)>::.ctor
  56b274:	mov    DWORD PTR [esp+0xc4],esi
  56b27b:	mov    eax,0x1
  56b280:	cmp    DWORD PTR [esp+0x70],0x0
  56b285:	je     56d32c
  56b28b:	mov    eax,DWORD PTR [ebp+0xc]
  56b28e:	test   eax,eax
  56b290:	je     56d358
  56b296:	mov    eax,DWORD PTR [eax+0x10]
  56b299:	test   eax,eax
  56b29b:	je     56d358
  56b2a1:	mov    DWORD PTR [esp+0x78],esi
  56b2a5:	lea    ecx,[ebx+0x49f74]
  56b2ab:	mov    DWORD PTR [esp+0x44],ecx
  56b2af:	mov    ecx,DWORD PTR [ecx]
  56b2b1:	mov    DWORD PTR [esp+0x8],ecx
  56b2b5:	mov    DWORD PTR [esp],eax
  56b2b8:	mov    DWORD PTR [esp+0x4],0xc
  56b2c0:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  56b2c5:	mov    esi,eax
  56b2c7:	mov    DWORD PTR [esp+0x6c],esi
  56b2cb:	lea    eax,[ebx+0x4a9cc]
  56b2d1:	mov    DWORD PTR [esp+0x60],eax
  56b2d5:	mov    eax,DWORD PTR [eax]
  56b2d7:	mov    DWORD PTR [esp+0x4],eax
  56b2db:	mov    eax,DWORD PTR [esp+0x70]
  56b2df:	mov    DWORD PTR [esp],eax
  56b2e2:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56b2e7:	test   eax,eax
  56b2e9:	je     56d358
  56b2ef:	mov    DWORD PTR [esp],eax
  56b2f2:	mov    DWORD PTR [esp+0x4],0x0
  56b2fa:	call   17000e6  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_RecipeCategoryType
  56b2ff:	cmp    eax,0x5
  56b302:	jne    56b8e0
  56b308:	test   esi,esi
  56b30a:	je     56d358
  56b310:	lea    eax,[ebx+0x4a868]
  56b316:	mov    DWORD PTR [esp+0x68],eax
  56b31a:	mov    eax,DWORD PTR [eax]
  56b31c:	mov    DWORD PTR [esp+0x4],eax
  56b320:	mov    DWORD PTR [esp],esi
  56b323:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  56b328:	test   eax,eax
  56b32a:	jle    56b8e0
  56b330:	xor    edi,edi
  56b332:	jmp    56b33d
  56b334:	mov    edi,DWORD PTR [esp+0x7c]
  56b338:	inc    edi
  56b339:	mov    esi,DWORD PTR [esp+0x6c]
  56b33d:	mov    eax,DWORD PTR [esp+0x68]
  56b341:	mov    eax,DWORD PTR [eax]
  56b343:	mov    DWORD PTR [esp+0x4],eax
  56b347:	mov    DWORD PTR [esp],esi
  56b34a:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  56b34f:	cmp    edi,eax
  56b351:	jge    56b8e0
  56b357:	lea    eax,[ebx+0x4a860]
  56b35d:	mov    DWORD PTR [esp+0x74],eax
  56b361:	mov    eax,DWORD PTR [eax]
  56b363:	mov    DWORD PTR [esp+0x8],eax
  56b367:	mov    DWORD PTR [esp+0x4],edi
  56b36b:	mov    DWORD PTR [esp+0x7c],edi
  56b36f:	mov    DWORD PTR [esp],esi
  56b372:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56b377:	mov    esi,eax
  56b379:	test   esi,esi
  56b37b:	je     56b334
  56b37d:	mov    eax,DWORD PTR [esp+0x64]
  56b381:	mov    eax,DWORD PTR [eax]
  56b383:	mov    ecx,DWORD PTR [esi]
  56b385:	movzx  edx,BYTE PTR [eax+0xac]
  56b38c:	movzx  edi,BYTE PTR [ecx+0xac]
  56b393:	cmp    edi,edx
  56b395:	jb     56b334
  56b397:	mov    ecx,DWORD PTR [ecx+0x58]
  56b39a:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  56b39e:	jne    56b334
  56b3a0:	mov    edi,DWORD PTR [esp+0x60]
  56b3a4:	mov    eax,DWORD PTR [edi]
  56b3a6:	mov    DWORD PTR [esp+0x4],eax
  56b3aa:	mov    DWORD PTR [esp],esi
  56b3ad:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56b3b2:	test   eax,eax
  56b3b4:	je     56d358
  56b3ba:	mov    DWORD PTR [esp],eax
  56b3bd:	mov    DWORD PTR [esp+0x4],0x0
  56b3c5:	call   1700014  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_NameId
  56b3ca:	mov    DWORD PTR [esp+0x5c],eax
  56b3ce:	mov    eax,DWORD PTR [edi]
  56b3d0:	mov    DWORD PTR [esp+0x4],eax
  56b3d4:	mov    eax,DWORD PTR [esp+0x70]
  56b3d8:	mov    DWORD PTR [esp],eax
  56b3db:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56b3e0:	test   eax,eax
  56b3e2:	je     56d358
  56b3e8:	mov    DWORD PTR [esp],eax
  56b3eb:	mov    DWORD PTR [esp+0x4],0x0
  56b3f3:	call   1700014  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_NameId
  56b3f8:	mov    edi,eax
  56b3fa:	lea    eax,[ebx+0x430e4]
  56b400:	mov    DWORD PTR [esp+0x48],eax
  56b404:	mov    eax,DWORD PTR [eax]
  56b406:	test   BYTE PTR [eax+0xb2],0x1
  56b40d:	je     56b41d
  56b40f:	cmp    DWORD PTR [eax+0x60],0x0
  56b413:	jne    56b41d
  56b415:	mov    DWORD PTR [esp],eax
  56b418:	call   1db0b8
  56b41d:	mov    DWORD PTR [esp+0x8],edi
  56b421:	mov    eax,DWORD PTR [esp+0x5c]
  56b425:	mov    DWORD PTR [esp+0x4],eax
  56b429:	mov    DWORD PTR [esp+0xc],0x0
  56b431:	mov    DWORD PTR [esp],0x0
  56b438:	call   ca24cf  ; System.String::op_Equality
  56b43d:	test   al,al
  56b43f:	je     56b483
  56b441:	mov    eax,DWORD PTR [ebp+0x14]
  56b444:	test   eax,eax
  56b446:	je     56d358
  56b44c:	mov    edi,DWORD PTR [eax+0xc]
  56b44f:	lea    eax,[ebx+0x4a9d0]
  56b455:	mov    eax,DWORD PTR [eax]
  56b457:	mov    DWORD PTR [esp+0x4],eax
  56b45b:	mov    DWORD PTR [esp],esi
  56b45e:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56b463:	test   eax,eax
  56b465:	je     56d358
  56b46b:	mov    DWORD PTR [esp],eax
  56b46e:	mov    DWORD PTR [esp+0x4],0x0
  56b476:	call   179c13d  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::get_Level
  56b47b:	cmp    edi,eax
  56b47d:	jl     56d307
  56b483:	mov    DWORD PTR [esp+0x4],0x0
  56b48b:	mov    DWORD PTR [esp],0x0
  56b492:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56b497:	mov    DWORD PTR [esp+0x5c],eax
  56b49b:	mov    DWORD PTR [esp+0x4],0x0
  56b4a3:	mov    DWORD PTR [esp],0x0
  56b4aa:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56b4af:	mov    edi,eax
  56b4b1:	mov    DWORD PTR [esp],esi
  56b4b4:	mov    DWORD PTR [esp+0x4],0x0
  56b4bc:	call   6d2fb3  ; ABH.GameDatas.CraftingRecipeGameData::GetResultLoot
  56b4c1:	mov    DWORD PTR [esp+0x58],eax
  56b4c5:	lea    eax,[ebx+0x4a9d0]
  56b4cb:	mov    DWORD PTR [esp+0x54],eax
  56b4cf:	mov    eax,DWORD PTR [eax]
  56b4d1:	mov    DWORD PTR [esp+0x4],eax
  56b4d5:	mov    DWORD PTR [esp],esi
  56b4d8:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56b4dd:	test   eax,eax
  56b4df:	je     56d358
  56b4e5:	mov    DWORD PTR [esp],eax
  56b4e8:	mov    DWORD PTR [esp+0x4],0x0
  56b4f0:	call   179c13d  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::get_Level
  56b4f5:	test   edi,edi
  56b4f7:	je     56d358
  56b4fd:	mov    DWORD PTR [esp+0xc8],0x0
  56b508:	lea    ecx,[esp+0xc8]
  56b50f:	mov    DWORD PTR [esp+0x14],ecx
  56b513:	mov    DWORD PTR [esp+0x8],eax
  56b517:	mov    eax,DWORD PTR [esp+0x58]
  56b51b:	mov    DWORD PTR [esp+0x4],eax
  56b51f:	mov    DWORD PTR [esp],edi
  56b522:	mov    DWORD PTR [esp+0x18],0x0
  56b52a:	mov    DWORD PTR [esp+0x10],0x0
  56b532:	mov    DWORD PTR [esp+0xc],0x1
  56b53a:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  56b53f:	mov    ecx,DWORD PTR [esp+0x5c]
  56b543:	test   ecx,ecx
  56b545:	je     56d358
  56b54b:	mov    DWORD PTR [esp+0x8],eax
  56b54f:	mov    DWORD PTR [esp],ecx
  56b552:	mov    DWORD PTR [esp+0x10],0x0
  56b55a:	mov    DWORD PTR [esp+0xc],0x4
  56b562:	mov    DWORD PTR [esp+0x4],0x0
  56b56a:	call   57d9d0  ; ABH.Services.Logic.LootOperations::GetItemsFromLoot
  56b56f:	test   eax,eax
  56b571:	je     56d358
  56b577:	mov    ecx,DWORD PTR [esp+0x74]
  56b57b:	mov    ecx,DWORD PTR [ecx]
  56b57d:	mov    DWORD PTR [esp+0x8],ecx
  56b581:	mov    DWORD PTR [esp],eax
  56b584:	mov    DWORD PTR [esp+0x4],0x0
  56b58c:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56b591:	lea    ecx,[ebx+0x45e78]
  56b597:	mov    DWORD PTR [esp+0x50],0x0
  56b59f:	test   eax,eax
  56b5a1:	je     56b5d2
  56b5a3:	mov    DWORD PTR [esp+0x4c],ecx
  56b5a7:	mov    ecx,DWORD PTR [ecx]
  56b5a9:	mov    edx,DWORD PTR [eax]
  56b5ab:	movzx  esi,BYTE PTR [ecx+0xac]
  56b5b2:	movzx  edi,BYTE PTR [edx+0xac]
  56b5b9:	cmp    edi,esi
  56b5bb:	jb     56b5d6
  56b5bd:	mov    edx,DWORD PTR [edx+0x58]
  56b5c0:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  56b5c4:	mov    ecx,0x0
  56b5c9:	cmovne eax,ecx
  56b5cc:	mov    DWORD PTR [esp+0x50],eax
  56b5d0:	jmp    56b5d6
  56b5d2:	mov    DWORD PTR [esp+0x4c],ecx
  56b5d6:	mov    DWORD PTR [esp+0x4],0x0
  56b5de:	mov    DWORD PTR [esp],0x0
  56b5e5:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56b5ea:	mov    DWORD PTR [esp+0x5c],eax
  56b5ee:	mov    DWORD PTR [esp+0x4],0x0
  56b5f6:	mov    DWORD PTR [esp],0x0
  56b5fd:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56b602:	mov    edi,eax
  56b604:	mov    esi,DWORD PTR [esp+0x70]
  56b608:	mov    DWORD PTR [esp],esi
  56b60b:	mov    DWORD PTR [esp+0x4],0x0
  56b613:	call   6d2fb3  ; ABH.GameDatas.CraftingRecipeGameData::GetResultLoot
  56b618:	mov    DWORD PTR [esp+0x58],eax
  56b61c:	mov    eax,DWORD PTR [esp+0x54]
  56b620:	mov    eax,DWORD PTR [eax]
  56b622:	mov    DWORD PTR [esp+0x4],eax
  56b626:	mov    DWORD PTR [esp],esi
  56b629:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56b62e:	test   eax,eax
  56b630:	je     56d358
  56b636:	mov    DWORD PTR [esp],eax
  56b639:	mov    DWORD PTR [esp+0x4],0x0
  56b641:	call   179c13d  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::get_Level
  56b646:	test   edi,edi
  56b648:	je     56d358
  56b64e:	mov    DWORD PTR [esp+0xc8],0x0
  56b659:	lea    ecx,[esp+0xc8]
  56b660:	mov    DWORD PTR [esp+0x14],ecx
  56b664:	mov    DWORD PTR [esp+0x8],eax
  56b668:	mov    eax,DWORD PTR [esp+0x58]
  56b66c:	mov    DWORD PTR [esp+0x4],eax
  56b670:	mov    DWORD PTR [esp],edi
  56b673:	mov    DWORD PTR [esp+0x18],0x0
  56b67b:	mov    DWORD PTR [esp+0x10],0x0
  56b683:	mov    DWORD PTR [esp+0xc],0x1
  56b68b:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  56b690:	mov    ecx,DWORD PTR [esp+0x5c]
  56b694:	test   ecx,ecx
  56b696:	je     56d358
  56b69c:	mov    DWORD PTR [esp+0x8],eax
  56b6a0:	mov    DWORD PTR [esp],ecx
  56b6a3:	mov    DWORD PTR [esp+0x10],0x0
  56b6ab:	mov    DWORD PTR [esp+0xc],0x4
  56b6b3:	mov    DWORD PTR [esp+0x4],0x0
  56b6bb:	call   57d9d0  ; ABH.Services.Logic.LootOperations::GetItemsFromLoot
  56b6c0:	test   eax,eax
  56b6c2:	je     56d358
  56b6c8:	mov    ecx,DWORD PTR [esp+0x74]
  56b6cc:	mov    ecx,DWORD PTR [ecx]
  56b6ce:	mov    DWORD PTR [esp+0x8],ecx
  56b6d2:	mov    DWORD PTR [esp],eax
  56b6d5:	mov    DWORD PTR [esp+0x4],0x0
  56b6dd:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56b6e2:	test   eax,eax
  56b6e4:	je     56b334
  56b6ea:	mov    ecx,DWORD PTR [esp+0x4c]
  56b6ee:	mov    edi,DWORD PTR [ecx]
  56b6f0:	mov    ecx,DWORD PTR [eax]
  56b6f2:	movzx  edx,BYTE PTR [edi+0xac]
  56b6f9:	movzx  esi,BYTE PTR [ecx+0xac]
  56b700:	cmp    esi,edx
  56b702:	mov    esi,eax
  56b704:	jb     56b334
  56b70a:	mov    ecx,DWORD PTR [ecx+0x58]
  56b70d:	cmp    DWORD PTR [ecx+edx*4-0x4],edi
  56b711:	mov    eax,0x0
  56b716:	cmovne esi,eax
  56b719:	cmp    DWORD PTR [esp+0x50],0x0
  56b71e:	je     56b334
  56b724:	test   esi,esi
  56b726:	je     56b334
  56b72c:	lea    eax,[ebx+0x4a980]
  56b732:	mov    DWORD PTR [esp+0x74],eax
  56b736:	mov    eax,DWORD PTR [eax]
  56b738:	mov    DWORD PTR [esp+0x4],eax
  56b73c:	mov    DWORD PTR [esp],esi
  56b73f:	mov    edi,esi
  56b741:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56b746:	test   eax,eax
  56b748:	je     56d358
  56b74e:	mov    DWORD PTR [esp],eax
  56b751:	mov    DWORD PTR [esp+0x4],0x0
  56b759:	call   16ffe12  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConsumableStatckingType
  56b75e:	mov    esi,eax
  56b760:	mov    eax,DWORD PTR [esp+0x48]
  56b764:	mov    eax,DWORD PTR [eax]
  56b766:	test   BYTE PTR [eax+0xb2],0x1
  56b76d:	je     56b77d
  56b76f:	cmp    DWORD PTR [eax+0x60],0x0
  56b773:	jne    56b77d
  56b775:	mov    DWORD PTR [esp],eax
  56b778:	call   1db0b8
  56b77d:	mov    DWORD PTR [esp+0x4],esi
  56b781:	mov    DWORD PTR [esp+0x8],0x0
  56b789:	mov    DWORD PTR [esp],0x0
  56b790:	call   cbedf7  ; System.String::IsNullOrEmpty
  56b795:	test   al,al
  56b797:	jne    56b334
  56b79d:	mov    DWORD PTR [esp+0x5c],edi
  56b7a1:	mov    edi,DWORD PTR [esp+0x74]
  56b7a5:	mov    eax,DWORD PTR [edi]
  56b7a7:	mov    DWORD PTR [esp+0x4],eax
  56b7ab:	mov    eax,DWORD PTR [esp+0x50]
  56b7af:	mov    DWORD PTR [esp],eax
  56b7b2:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56b7b7:	test   eax,eax
  56b7b9:	je     56d358
  56b7bf:	mov    DWORD PTR [esp],eax
  56b7c2:	mov    DWORD PTR [esp+0x4],0x0
  56b7ca:	call   16ffe12  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConsumableStatckingType
  56b7cf:	mov    esi,eax
  56b7d1:	mov    eax,DWORD PTR [edi]
  56b7d3:	mov    DWORD PTR [esp+0x4],eax
  56b7d7:	mov    eax,DWORD PTR [esp+0x5c]
  56b7db:	mov    DWORD PTR [esp],eax
  56b7de:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56b7e3:	test   eax,eax
  56b7e5:	je     56d358
  56b7eb:	mov    DWORD PTR [esp],eax
  56b7ee:	mov    DWORD PTR [esp+0x4],0x0
  56b7f6:	call   16ffe12  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConsumableStatckingType
  56b7fb:	mov    edi,eax
  56b7fd:	mov    eax,DWORD PTR [esp+0x48]
  56b801:	mov    eax,DWORD PTR [eax]
  56b803:	test   BYTE PTR [eax+0xb2],0x1
  56b80a:	je     56b81a
  56b80c:	cmp    DWORD PTR [eax+0x60],0x0
  56b810:	jne    56b81a
  56b812:	mov    DWORD PTR [esp],eax
  56b815:	call   1db0b8
  56b81a:	mov    DWORD PTR [esp+0x8],edi
  56b81e:	mov    DWORD PTR [esp+0x4],esi
  56b822:	mov    DWORD PTR [esp+0xc],0x0
  56b82a:	mov    DWORD PTR [esp],0x0
  56b831:	call   ca24cf  ; System.String::op_Equality
  56b836:	test   al,al
  56b838:	je     56b334
  56b83e:	mov    edi,DWORD PTR [esp+0x74]
  56b842:	mov    eax,DWORD PTR [edi]
  56b844:	mov    DWORD PTR [esp+0x4],eax
  56b848:	mov    eax,DWORD PTR [esp+0x50]
  56b84c:	mov    DWORD PTR [esp],eax
  56b84f:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56b854:	test   eax,eax
  56b856:	je     56d358
  56b85c:	mov    DWORD PTR [esp],eax
  56b85f:	mov    DWORD PTR [esp+0x4],0x0
  56b867:	call   16ffe35  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConversionPoints
  56b86c:	mov    esi,eax
  56b86e:	mov    eax,DWORD PTR [edi]
  56b870:	mov    DWORD PTR [esp+0x4],eax
  56b874:	mov    eax,DWORD PTR [esp+0x5c]
  56b878:	mov    DWORD PTR [esp],eax
  56b87b:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56b880:	test   eax,eax
  56b882:	je     56d358
  56b888:	mov    DWORD PTR [esp],eax
  56b88b:	mov    DWORD PTR [esp+0x4],0x0
  56b893:	call   16ffe35  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConversionPoints
  56b898:	cmp    esi,eax
  56b89a:	jle    56b334
  56b8a0:	lea    eax,[ebx+0x57988]  ; literal "[InventoryOperationServiceRealImpl] Found a better recipe of same type, therfore remove this item"
  56b8a6:	mov    eax,DWORD PTR [eax]
  56b8a8:	mov    DWORD PTR [esp+0x4],eax
  56b8ac:	mov    DWORD PTR [esp+0x8],0x0
  56b8b4:	mov    DWORD PTR [esp],0x0
  56b8bb:	call   108148a  ; DebugLog::Error
  56b8c0:	mov    eax,DWORD PTR [esp+0x70]
  56b8c4:	mov    DWORD PTR [esp+0x4],eax
  56b8c8:	mov    eax,DWORD PTR [ebp+0xc]
  56b8cb:	mov    DWORD PTR [esp],eax
  56b8ce:	mov    DWORD PTR [esp+0x8],0x0
  56b8d6:	call   6e505b  ; ABH.GameDatas.InventoryGameData::RemoveItemFromInventory
  56b8db:	jmp    56d354
  56b8e0:	mov    eax,DWORD PTR [esp+0x70]
  56b8e4:	mov    DWORD PTR [esp],eax
  56b8e7:	mov    DWORD PTR [esp+0x4],0x0
  56b8ef:	call   6d2fb3  ; ABH.GameDatas.CraftingRecipeGameData::GetResultLoot
  56b8f4:	test   eax,eax
  56b8f6:	je     56d358
  56b8fc:	lea    ecx,[ebx+0x49fc8]
  56b902:	mov    ecx,DWORD PTR [ecx]
  56b904:	mov    DWORD PTR [esp+0x4],ecx
  56b908:	mov    DWORD PTR [esp],eax
  56b90b:	call   6132fe  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::get_Keys | System.Collections.Generic.Dictionary`2<object, int>::get_Keys
  56b910:	test   eax,eax
  56b912:	je     56d358
  56b918:	lea    ecx,[ebx+0x49fd4]
  56b91e:	mov    ecx,DWORD PTR [ecx]
  56b920:	mov    DWORD PTR [esp+0x8],ecx
  56b924:	mov    DWORD PTR [esp+0x4],eax
  56b928:	lea    eax,[esp+0x90]
  56b92f:	mov    DWORD PTR [esp],eax
  56b932:	call   15a695b  ; shared address: System.Collections.Generic.Dictionary`2+KeyCollection<string, int>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<object, int>::GetEnumerator
  56b937:	sub    esp,0x4
  56b93a:	mov    eax,DWORD PTR [esp+0xa0]
  56b941:	mov    DWORD PTR [esp+0xc0],eax
  56b948:	movsd  xmm0,QWORD PTR [esp+0x90]
  56b951:	movsd  xmm1,QWORD PTR [esp+0x98]
  56b95a:	movsd  QWORD PTR [esp+0xb8],xmm1
  56b963:	movsd  QWORD PTR [esp+0xb0],xmm0
  56b96c:	lea    eax,[ebx+0x49fe4]
  56b972:	mov    DWORD PTR [esp+0x7c],eax
  56b976:	mov    eax,DWORD PTR [esp+0x7c]
  56b97a:	mov    eax,DWORD PTR [eax]
  56b97c:	mov    DWORD PTR [esp+0x4],eax
  56b980:	lea    eax,[esp+0xb0]
  56b987:	mov    DWORD PTR [esp],eax
  56b98a:	call   11acc6d
  56b98f:	test   al,al
  56b991:	je     56ba24
  56b997:	lea    eax,[ebx+0x49fd8]
  56b99d:	mov    eax,DWORD PTR [eax]
  56b99f:	mov    DWORD PTR [esp+0x4],eax
  56b9a3:	lea    eax,[esp+0xb0]
  56b9aa:	mov    DWORD PTR [esp],eax
  56b9ad:	call   11accfc
  56b9b2:	mov    esi,eax
  56b9b4:	mov    DWORD PTR [esp+0x4],0x0
  56b9bc:	mov    DWORD PTR [esp],0x0
  56b9c3:	call   106b531  ; DIContainerLogic::get_CraftingService
  56b9c8:	mov    edi,eax
  56b9ca:	lea    eax,[ebx+0x4a9d0]
  56b9d0:	mov    eax,DWORD PTR [eax]
  56b9d2:	mov    DWORD PTR [esp+0x4],eax
  56b9d6:	mov    eax,DWORD PTR [esp+0x70]
  56b9da:	mov    DWORD PTR [esp],eax
  56b9dd:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56b9e2:	test   eax,eax
  56b9e4:	je     56ba2e
  56b9e6:	mov    DWORD PTR [esp],eax
  56b9e9:	mov    DWORD PTR [esp+0x4],0x0
  56b9f1:	call   179c13d  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::get_Level
  56b9f6:	test   edi,edi
  56b9f8:	je     56ba38
  56b9fa:	mov    DWORD PTR [esp+0xc],eax
  56b9fe:	mov    DWORD PTR [esp+0x8],esi
  56ba02:	lea    eax,[esp+0xc4]
  56ba09:	mov    DWORD PTR [esp+0x4],eax
  56ba0d:	mov    DWORD PTR [esp],edi
  56ba10:	mov    DWORD PTR [esp+0x10],0x1
  56ba18:	call   546938  ; ABH.Services.Logic.CraftingService::AddCraftingCostsForItem
  56ba1d:	jmp    56b976
  56ba22:	jmp    56ba42
  56ba24:	xor    esi,esi
  56ba26:	mov    al,0x1
  56ba28:	mov    DWORD PTR [esp+0x7c],eax
  56ba2c:	jmp    56ba62
  56ba2e:	call   1fbc48
  56ba33:	call   540b98
  56ba38:	call   1fbc48
  56ba3d:	jmp    56d36a
  56ba42:	cmp    edx,0x1
  56ba45:	jne    56d362
  56ba4b:	mov    DWORD PTR [esp],eax
  56ba4e:	call   1ba3f0
  56ba53:	mov    esi,DWORD PTR [eax]
  56ba55:	call   1b9ce0
  56ba5a:	mov    DWORD PTR [esp+0x7c],0x0
  56ba62:	lea    eax,[ebx+0x49fe8]
  56ba68:	mov    eax,DWORD PTR [eax]
  56ba6a:	mov    DWORD PTR [esp+0x4],eax
  56ba6e:	lea    eax,[esp+0xb0]
  56ba75:	mov    DWORD PTR [esp],eax
  56ba78:	call   11acc02
  56ba7d:	mov    eax,DWORD PTR [esp+0x7c]
  56ba81:	test   al,al
  56ba83:	jne    56ba91
  56ba85:	test   esi,esi
  56ba87:	je     56ba91
  56ba89:	mov    DWORD PTR [esp],esi
  56ba8c:	call   1fbb20
  56ba91:	mov    esi,DWORD PTR [esp+0x78]
  56ba95:	test   esi,esi
  56ba97:	je     56d358
  56ba9d:	xor    edi,edi
  56ba9f:	lea    eax,[ebx+0x4b54c]
  56baa5:	mov    DWORD PTR [esp+0x74],eax
  56baa9:	jmp    56bab4
  56baab:	mov    edi,DWORD PTR [esp+0x7c]
  56baaf:	inc    edi
  56bab0:	mov    esi,DWORD PTR [esp+0x78]
  56bab4:	mov    eax,DWORD PTR [esp+0x74]
  56bab8:	mov    eax,DWORD PTR [eax]
  56baba:	mov    DWORD PTR [esp+0x4],eax
  56babe:	mov    DWORD PTR [esp],esi
  56bac1:	call   4b06ff  ; shared address: System.Collections.Generic.List`1<unresolved-type@0x1e5d478(kind=0x15,data=0x1f13e24)>::get_Count | System.Collections.Generic.List`1<unresolved-type@0x1e5d360(kind=0x15,data=0x1f13c14)>::get_Count
  56bac6:	cmp    edi,eax
  56bac8:	jge    56bc6d
  56bace:	lea    eax,[ebx+0x4b550]
  56bad4:	mov    eax,DWORD PTR [eax]
  56bad6:	mov    DWORD PTR [esp+0xc],eax
  56bada:	mov    DWORD PTR [esp+0x8],edi
  56bade:	mov    DWORD PTR [esp+0x7c],edi
  56bae2:	mov    DWORD PTR [esp+0x4],esi
  56bae6:	lea    eax,[esp+0x88]
  56baed:	mov    DWORD PTR [esp],eax
  56baf0:	call   4b070f  ; shared address: System.Collections.Generic.List`1<unresolved-type@0x1e5d478(kind=0x15,data=0x1f13e24)>::get_Item | System.Collections.Generic.List`1<unresolved-type@0x1e5d360(kind=0x15,data=0x1f13c14)>::get_Item
  56baf5:	sub    esp,0x4
  56baf8:	movsd  xmm0,QWORD PTR [esp+0x88]
  56bb01:	movsd  QWORD PTR [esp+0xa8],xmm0
  56bb0a:	lea    edi,[ebx+0x499dc]
  56bb10:	mov    eax,DWORD PTR [edi]
  56bb12:	mov    DWORD PTR [esp+0x4],eax
  56bb16:	lea    eax,[esp+0xa8]
  56bb1d:	mov    DWORD PTR [esp],eax
  56bb20:	call   16ab7a2
  56bb25:	mov    DWORD PTR [esp+0x8],eax
  56bb29:	mov    eax,DWORD PTR [ebp+0xc]
  56bb2c:	mov    DWORD PTR [esp+0x4],eax
  56bb30:	mov    eax,DWORD PTR [ebp+0x8]
  56bb33:	mov    DWORD PTR [esp],eax
  56bb36:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  56bb3b:	test   eax,eax
  56bb3d:	jg     56baab
  56bb43:	lea    eax,[ebx+0x45820]
  56bb49:	mov    eax,DWORD PTR [eax]
  56bb4b:	test   BYTE PTR [eax+0xb2],0x1
  56bb52:	je     56bb62
  56bb54:	cmp    DWORD PTR [eax+0x60],0x0
  56bb58:	jne    56bb62
  56bb5a:	mov    DWORD PTR [esp],eax
  56bb5d:	call   1db0b8
  56bb62:	mov    DWORD PTR [esp+0x4],0x0
  56bb6a:	mov    DWORD PTR [esp],0x0
  56bb71:	call   106b6fb  ; DIContainerBalancing::GetInventoryItemBalancingDataPovider
  56bb76:	mov    esi,eax
  56bb78:	mov    eax,DWORD PTR [edi]
  56bb7a:	mov    DWORD PTR [esp+0x4],eax
  56bb7e:	lea    eax,[esp+0xa8]
  56bb85:	mov    DWORD PTR [esp],eax
  56bb88:	call   16ab7a2
  56bb8d:	test   esi,esi
  56bb8f:	je     56d358
  56bb95:	mov    DWORD PTR [esp+0x4],eax
  56bb99:	mov    DWORD PTR [esp],esi
  56bb9c:	mov    DWORD PTR [esp+0xc],0x0
  56bba4:	mov    DWORD PTR [esp+0x8],0x1
  56bbac:	call   abd53b  ; ABH.Shared.BalancingData.InventoryItemBalancingDataPovider::GetBalancingData
  56bbb1:	mov    esi,eax
  56bbb3:	test   esi,esi
  56bbb5:	je     56baab
  56bbbb:	lea    eax,[ebx+0x453b8]
  56bbc1:	mov    eax,DWORD PTR [eax]
  56bbc3:	mov    ecx,DWORD PTR [esi]
  56bbc5:	movzx  edx,BYTE PTR [eax+0xac]
  56bbcc:	movzx  edi,BYTE PTR [ecx+0xac]
  56bbd3:	cmp    edi,edx
  56bbd5:	jb     56baab
  56bbdb:	mov    ecx,DWORD PTR [ecx+0x58]
  56bbde:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  56bbe2:	jne    56baab
  56bbe8:	mov    DWORD PTR [esp],esi
  56bbeb:	mov    DWORD PTR [esp+0x4],0x0
  56bbf3:	call   16fff59  ; ABH.Shared.BalancingData.CraftingItemBalancingData::get_Recipe
  56bbf8:	mov    DWORD PTR [esp+0x8],eax
  56bbfc:	mov    eax,DWORD PTR [ebp+0xc]
  56bbff:	mov    DWORD PTR [esp+0x4],eax
  56bc03:	mov    eax,DWORD PTR [ebp+0x8]
  56bc06:	mov    DWORD PTR [esp],eax
  56bc09:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  56bc0e:	test   eax,eax
  56bc10:	jg     56baab
  56bc16:	mov    DWORD PTR [esp],esi
  56bc19:	mov    DWORD PTR [esp+0x4],0x0
  56bc21:	call   16fff59  ; ABH.Shared.BalancingData.CraftingItemBalancingData::get_Recipe
  56bc26:	lea    ecx,[ebx+0x5798c]  ; literal "fallback_add_crafting_recipe"
  56bc2c:	mov    ecx,DWORD PTR [ecx]
  56bc2e:	mov    DWORD PTR [esp+0x18],ecx
  56bc32:	mov    DWORD PTR [esp+0x10],eax
  56bc36:	mov    eax,DWORD PTR [ebp+0xc]
  56bc39:	mov    DWORD PTR [esp+0x4],eax
  56bc3d:	mov    eax,DWORD PTR [ebp+0x8]
  56bc40:	mov    DWORD PTR [esp],eax
  56bc43:	mov    DWORD PTR [esp+0x1c],0x0
  56bc4b:	mov    DWORD PTR [esp+0x14],0x1
  56bc53:	mov    DWORD PTR [esp+0xc],0x1
  56bc5b:	mov    DWORD PTR [esp+0x8],0x1
  56bc63:	call   500411  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddItem
  56bc68:	jmp    56baab
  56bc6d:	mov    esi,DWORD PTR [esp+0x60]
  56bc71:	mov    eax,DWORD PTR [esi]
  56bc73:	mov    DWORD PTR [esp+0x4],eax
  56bc77:	mov    eax,DWORD PTR [esp+0x70]
  56bc7b:	mov    DWORD PTR [esp],eax
  56bc7e:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56bc83:	test   eax,eax
  56bc85:	je     56d358
  56bc8b:	mov    DWORD PTR [esp],eax
  56bc8e:	mov    DWORD PTR [esp+0x4],0x0
  56bc96:	call   17000e6  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_RecipeCategoryType
  56bc9b:	cmp    eax,0x3
  56bc9e:	je     56bcd3
  56bca0:	mov    eax,DWORD PTR [esi]
  56bca2:	mov    DWORD PTR [esp+0x4],eax
  56bca6:	mov    eax,DWORD PTR [esp+0x70]
  56bcaa:	mov    DWORD PTR [esp],eax
  56bcad:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56bcb2:	test   eax,eax
  56bcb4:	je     56d358
  56bcba:	mov    DWORD PTR [esp],eax
  56bcbd:	mov    DWORD PTR [esp+0x4],0x0
  56bcc5:	call   17000e6  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_RecipeCategoryType
  56bcca:	cmp    eax,0x4
  56bccd:	jne    56be5b
  56bcd3:	mov    eax,DWORD PTR [esp+0x70]
  56bcd7:	mov    DWORD PTR [esp],eax
  56bcda:	mov    DWORD PTR [esp+0x4],0x0
  56bce2:	call   6d239e  ; ABH.GameDatas.CraftingRecipeGameData::get_ItemBalancing
  56bce7:	mov    esi,eax
  56bce9:	test   esi,esi
  56bceb:	je     56d358
  56bcf1:	lea    eax,[ebx+0x45858]
  56bcf7:	mov    eax,DWORD PTR [eax]
  56bcf9:	mov    ecx,DWORD PTR [esi]
  56bcfb:	mov    DWORD PTR [esp+0x7c],ecx
  56bcff:	movzx  edx,WORD PTR [ecx+0xaa]
  56bd06:	test   edx,edx
  56bd08:	je     56bd1d
  56bd0a:	mov    ecx,DWORD PTR [esp+0x7c]
  56bd0e:	mov    edi,DWORD PTR [ecx+0x4c]
  56bd11:	xor    ecx,ecx
  56bd13:	cmp    DWORD PTR [edi+ecx*8],eax
  56bd16:	je     56bd35
  56bd18:	inc    ecx
  56bd19:	cmp    ecx,edx
  56bd1b:	jb     56bd13
  56bd1d:	mov    DWORD PTR [esp+0x4],eax
  56bd21:	mov    DWORD PTR [esp],esi
  56bd24:	mov    DWORD PTR [esp+0x8],0x0
  56bd2c:	call   1c1964
  56bd31:	mov    ecx,eax
  56bd33:	jmp    56bd44
  56bd35:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  56bd39:	mov    ecx,DWORD PTR [esp+0x7c]
  56bd3d:	lea    ecx,[ecx+eax*8+0xb4]
  56bd44:	mov    eax,DWORD PTR [ecx+0x4]
  56bd47:	mov    DWORD PTR [esp+0x4],eax
  56bd4b:	mov    DWORD PTR [esp],esi
  56bd4e:	call   DWORD PTR [ecx]
  56bd50:	mov    DWORD PTR [esp+0x8],eax
  56bd54:	mov    eax,DWORD PTR [ebp+0xc]
  56bd57:	mov    DWORD PTR [esp+0x4],eax
  56bd5b:	mov    eax,DWORD PTR [ebp+0x8]
  56bd5e:	mov    DWORD PTR [esp],eax
  56bd61:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  56bd66:	test   eax,eax
  56bd68:	jle    56be5b
  56bd6e:	mov    eax,DWORD PTR [ebp+0x14]
  56bd71:	test   eax,eax
  56bd73:	je     56d358
  56bd79:	mov    ecx,DWORD PTR [ebp+0x10]
  56bd7c:	test   ecx,ecx
  56bd7e:	je     56d358
  56bd84:	mov    eax,DWORD PTR [eax+0xc]
  56bd87:	mov    DWORD PTR [esp+0x7c],eax
  56bd8b:	lea    eax,[ebx+0x45854]
  56bd91:	mov    eax,DWORD PTR [eax]
  56bd93:	mov    ecx,DWORD PTR [ecx]
  56bd95:	movzx  edx,WORD PTR [ecx+0xaa]
  56bd9c:	test   edx,edx
  56bd9e:	je     56bdaf
  56bda0:	mov    esi,DWORD PTR [ecx+0x4c]
  56bda3:	xor    edi,edi
  56bda5:	cmp    DWORD PTR [esi+edi*8],eax
  56bda8:	je     56bdca
  56bdaa:	inc    edi
  56bdab:	cmp    edi,edx
  56bdad:	jb     56bda5
  56bdaf:	mov    DWORD PTR [esp+0x4],eax
  56bdb3:	mov    esi,DWORD PTR [ebp+0x10]
  56bdb6:	mov    DWORD PTR [esp],esi
  56bdb9:	mov    DWORD PTR [esp+0x8],0x1
  56bdc1:	call   1c1964
  56bdc6:	mov    ecx,eax
  56bdc8:	jmp    56bdd8
  56bdca:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  56bdce:	lea    ecx,[ecx+eax*8+0xbc]
  56bdd5:	mov    esi,DWORD PTR [ebp+0x10]
  56bdd8:	mov    eax,DWORD PTR [ecx+0x4]
  56bddb:	mov    DWORD PTR [esp+0x4],eax
  56bddf:	mov    DWORD PTR [esp],esi
  56bde2:	call   DWORD PTR [ecx]
  56bde4:	mov    esi,eax
  56bde6:	test   esi,esi
  56bde8:	je     56d358
  56bdee:	lea    eax,[ebx+0x45850]
  56bdf4:	mov    eax,DWORD PTR [eax]
  56bdf6:	mov    ecx,DWORD PTR [esi]
  56bdf8:	mov    DWORD PTR [esp+0x78],ecx
  56bdfc:	movzx  edx,WORD PTR [ecx+0xaa]
  56be03:	test   edx,edx
  56be05:	je     56be1a
  56be07:	mov    ecx,DWORD PTR [esp+0x78]
  56be0b:	mov    edi,DWORD PTR [ecx+0x4c]
  56be0e:	xor    ecx,ecx
  56be10:	cmp    DWORD PTR [edi+ecx*8],eax
  56be13:	je     56be32
  56be15:	inc    ecx
  56be16:	cmp    ecx,edx
  56be18:	jb     56be10
  56be1a:	mov    DWORD PTR [esp+0x4],eax
  56be1e:	mov    DWORD PTR [esp],esi
  56be21:	mov    DWORD PTR [esp+0x8],0x2
  56be29:	call   1c1964
  56be2e:	mov    ecx,eax
  56be30:	jmp    56be41
  56be32:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  56be36:	mov    ecx,DWORD PTR [esp+0x78]
  56be3a:	lea    ecx,[ecx+eax*8+0xc4]
  56be41:	mov    eax,DWORD PTR [ecx+0x4]
  56be44:	mov    DWORD PTR [esp+0x4],eax
  56be48:	mov    DWORD PTR [esp],esi
  56be4b:	call   DWORD PTR [ecx]
  56be4d:	cmp    DWORD PTR [esp+0x7c],eax
  56be51:	mov    eax,DWORD PTR [esp+0x60]
  56be55:	jle    56bf8b
  56be5b:	mov    ecx,DWORD PTR [ebp+0x10]
  56be5e:	test   ecx,ecx
  56be60:	je     56d358
  56be66:	lea    eax,[ebx+0x45854]
  56be6c:	mov    DWORD PTR [esp+0x7c],eax
  56be70:	mov    eax,DWORD PTR [eax]
  56be72:	mov    ecx,DWORD PTR [ecx]
  56be74:	movzx  edx,WORD PTR [ecx+0xaa]
  56be7b:	test   edx,edx
  56be7d:	je     56be8e
  56be7f:	mov    esi,DWORD PTR [ecx+0x4c]
  56be82:	xor    edi,edi
  56be84:	cmp    DWORD PTR [esi+edi*8],eax
  56be87:	je     56bea9
  56be89:	inc    edi
  56be8a:	cmp    edi,edx
  56be8c:	jb     56be84
  56be8e:	mov    DWORD PTR [esp+0x4],eax
  56be92:	mov    esi,DWORD PTR [ebp+0x10]
  56be95:	mov    DWORD PTR [esp],esi
  56be98:	mov    DWORD PTR [esp+0x8],0x1
  56bea0:	call   1c1964
  56bea5:	mov    ecx,eax
  56bea7:	jmp    56beb7
  56bea9:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  56bead:	lea    ecx,[ecx+eax*8+0xbc]
  56beb4:	mov    esi,DWORD PTR [ebp+0x10]
  56beb7:	mov    eax,DWORD PTR [ecx+0x4]
  56beba:	mov    DWORD PTR [esp+0x4],eax
  56bebe:	mov    DWORD PTR [esp],esi
  56bec1:	call   DWORD PTR [ecx]
  56bec3:	mov    esi,eax
  56bec5:	test   esi,esi
  56bec7:	je     56d358
  56becd:	lea    eax,[ebx+0x45850]
  56bed3:	mov    DWORD PTR [esp+0x74],eax
  56bed7:	mov    eax,DWORD PTR [eax]
  56bed9:	mov    ecx,DWORD PTR [esi]
  56bedb:	mov    DWORD PTR [esp+0x78],ecx
  56bedf:	movzx  edx,WORD PTR [ecx+0xaa]
  56bee6:	test   edx,edx
  56bee8:	je     56befd
  56beea:	mov    ecx,DWORD PTR [esp+0x78]
  56beee:	mov    edi,DWORD PTR [ecx+0x4c]
  56bef1:	xor    ecx,ecx
  56bef3:	cmp    DWORD PTR [edi+ecx*8],eax
  56bef6:	je     56bf15
  56bef8:	inc    ecx
  56bef9:	cmp    ecx,edx
  56befb:	jb     56bef3
  56befd:	mov    DWORD PTR [esp+0x4],eax
  56bf01:	mov    DWORD PTR [esp],esi
  56bf04:	mov    DWORD PTR [esp+0x8],0x2
  56bf0c:	call   1c1964
  56bf11:	mov    ecx,eax
  56bf13:	jmp    56bf24
  56bf15:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  56bf19:	mov    ecx,DWORD PTR [esp+0x78]
  56bf1d:	lea    ecx,[ecx+eax*8+0xc4]
  56bf24:	mov    eax,DWORD PTR [ecx+0x4]
  56bf27:	mov    DWORD PTR [esp+0x4],eax
  56bf2b:	mov    DWORD PTR [esp],esi
  56bf2e:	call   DWORD PTR [ecx]
  56bf30:	mov    ecx,DWORD PTR [ebp+0x14]
  56bf33:	test   ecx,ecx
  56bf35:	je     56d358
  56bf3b:	cmp    eax,DWORD PTR [ecx+0xc]
  56bf3e:	mov    ecx,DWORD PTR [ebp+0x10]
  56bf41:	je     56c27a
  56bf47:	mov    eax,DWORD PTR [esp+0x7c]
  56bf4b:	mov    eax,DWORD PTR [eax]
  56bf4d:	mov    ecx,DWORD PTR [ecx]
  56bf4f:	movzx  edx,WORD PTR [ecx+0xaa]
  56bf56:	test   edx,edx
  56bf58:	je     56bf6d
  56bf5a:	mov    esi,DWORD PTR [ecx+0x4c]
  56bf5d:	xor    edi,edi
  56bf5f:	cmp    DWORD PTR [esi+edi*8],eax
  56bf62:	je     56c1f0
  56bf68:	inc    edi
  56bf69:	cmp    edi,edx
  56bf6b:	jb     56bf5f
  56bf6d:	mov    DWORD PTR [esp+0x4],eax
  56bf71:	mov    esi,DWORD PTR [ebp+0x10]
  56bf74:	mov    DWORD PTR [esp],esi
  56bf77:	mov    DWORD PTR [esp+0x8],0x1
  56bf7f:	call   1c1964
  56bf84:	mov    ecx,eax
  56bf86:	jmp    56c1fe
  56bf8b:	mov    ecx,DWORD PTR [ebp+0x14]
  56bf8e:	mov    ecx,DWORD PTR [ecx+0xc]
  56bf91:	mov    DWORD PTR [esp+0x7c],ecx
  56bf95:	mov    eax,DWORD PTR [eax]
  56bf97:	mov    DWORD PTR [esp+0x4],eax
  56bf9b:	mov    eax,DWORD PTR [esp+0x70]
  56bf9f:	mov    DWORD PTR [esp],eax
  56bfa2:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56bfa7:	lea    eax,[ebx+0x43158]
  56bfad:	mov    esi,DWORD PTR [eax]
  56bfaf:	mov    DWORD PTR [esp],esi
  56bfb2:	call   1bedda
  56bfb7:	mov    DWORD PTR [esp],esi
  56bfba:	mov    DWORD PTR [esp+0x4],0x4
  56bfc2:	call   21106a
  56bfc7:	mov    esi,eax
  56bfc9:	test   esi,esi
  56bfcb:	je     56d358
  56bfd1:	lea    edi,[ebx+0x57990]  ; literal "Try to reward fallback Loot for Recipe: "
  56bfd7:	mov    eax,DWORD PTR [edi]
  56bfd9:	test   eax,eax
  56bfdb:	je     56bfff
  56bfdd:	mov    ecx,DWORD PTR [esi]
  56bfdf:	mov    ecx,DWORD PTR [ecx+0x18]
  56bfe2:	mov    DWORD PTR [esp+0x4],ecx
  56bfe6:	mov    DWORD PTR [esp],eax
  56bfe9:	call   20c1b8
  56bfee:	test   eax,eax
  56bff0:	jne    56bfff
  56bff2:	call   1fc998
  56bff7:	mov    DWORD PTR [esp],eax
  56bffa:	call   1fbb20
  56bfff:	mov    edi,DWORD PTR [edi]
  56c001:	cmp    DWORD PTR [esi+0xc],0x0
  56c005:	jne    56c014
  56c007:	call   1fc7e4
  56c00c:	mov    DWORD PTR [esp],eax
  56c00f:	call   1fbb20
  56c014:	mov    DWORD PTR [esi+0x10],edi
  56c017:	mov    eax,DWORD PTR [esp+0x60]
  56c01b:	mov    eax,DWORD PTR [eax]
  56c01d:	mov    DWORD PTR [esp+0x4],eax
  56c021:	mov    eax,DWORD PTR [esp+0x70]
  56c025:	mov    DWORD PTR [esp],eax
  56c028:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56c02d:	test   eax,eax
  56c02f:	je     56d358
  56c035:	mov    DWORD PTR [esp],eax
  56c038:	mov    DWORD PTR [esp+0x4],0x0
  56c040:	call   1700014  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_NameId
  56c045:	mov    edi,eax
  56c047:	test   edi,edi
  56c049:	je     56c06d
  56c04b:	mov    eax,DWORD PTR [esi]
  56c04d:	mov    eax,DWORD PTR [eax+0x18]
  56c050:	mov    DWORD PTR [esp+0x4],eax
  56c054:	mov    DWORD PTR [esp],edi
  56c057:	call   20c1b8
  56c05c:	test   eax,eax
  56c05e:	jne    56c06d
  56c060:	call   1fc998
  56c065:	mov    DWORD PTR [esp],eax
  56c068:	call   1fbb20
  56c06d:	cmp    DWORD PTR [esi+0xc],0x1
  56c071:	ja     56c080
  56c073:	call   1fc7e4
  56c078:	mov    DWORD PTR [esp],eax
  56c07b:	call   1fbb20
  56c080:	mov    DWORD PTR [esi+0x14],edi
  56c083:	lea    edi,[ebx+0x57994]  ; literal " with level: "
  56c089:	mov    eax,DWORD PTR [edi]
  56c08b:	test   eax,eax
  56c08d:	je     56c0b1
  56c08f:	mov    ecx,DWORD PTR [esi]
  56c091:	mov    ecx,DWORD PTR [ecx+0x18]
  56c094:	mov    DWORD PTR [esp+0x4],ecx
  56c098:	mov    DWORD PTR [esp],eax
  56c09b:	call   20c1b8
  56c0a0:	test   eax,eax
  56c0a2:	jne    56c0b1
  56c0a4:	call   1fc998
  56c0a9:	mov    DWORD PTR [esp],eax
  56c0ac:	call   1fbb20
  56c0b1:	mov    edi,DWORD PTR [edi]
  56c0b3:	cmp    DWORD PTR [esi+0xc],0x2
  56c0b7:	ja     56c0c6
  56c0b9:	call   1fc7e4
  56c0be:	mov    DWORD PTR [esp],eax
  56c0c1:	call   1fbb20
  56c0c6:	mov    DWORD PTR [esi+0x18],edi
  56c0c9:	mov    eax,DWORD PTR [ebp+0x14]
  56c0cc:	mov    eax,DWORD PTR [eax+0xc]
  56c0cf:	mov    DWORD PTR [esp+0x84],eax
  56c0d6:	lea    eax,[ebx+0x43120]
  56c0dc:	mov    eax,DWORD PTR [eax]
  56c0de:	lea    ecx,[esp+0x84]
  56c0e5:	mov    DWORD PTR [esp+0x4],ecx
  56c0e9:	mov    DWORD PTR [esp],eax
  56c0ec:	call   20bf14
  56c0f1:	mov    edi,eax
  56c0f3:	test   edi,edi
  56c0f5:	je     56c119
  56c0f7:	mov    eax,DWORD PTR [esi]
  56c0f9:	mov    eax,DWORD PTR [eax+0x18]
  56c0fc:	mov    DWORD PTR [esp+0x4],eax
  56c100:	mov    DWORD PTR [esp],edi
  56c103:	call   20c1b8
  56c108:	test   eax,eax
  56c10a:	jne    56c119
  56c10c:	call   1fc998
  56c111:	mov    DWORD PTR [esp],eax
  56c114:	call   1fbb20
  56c119:	cmp    DWORD PTR [esi+0xc],0x3
  56c11d:	ja     56c12c
  56c11f:	call   1fc7e4
  56c124:	mov    DWORD PTR [esp],eax
  56c127:	call   1fbb20
  56c12c:	mov    DWORD PTR [esi+0x1c],edi
  56c12f:	lea    eax,[ebx+0x430e4]
  56c135:	mov    eax,DWORD PTR [eax]
  56c137:	test   BYTE PTR [eax+0xb2],0x1
  56c13e:	je     56c14e
  56c140:	cmp    DWORD PTR [eax+0x60],0x0
  56c144:	jne    56c14e
  56c146:	mov    DWORD PTR [esp],eax
  56c149:	call   1db0b8
  56c14e:	mov    DWORD PTR [esp+0x4],esi
  56c152:	mov    DWORD PTR [esp+0x8],0x0
  56c15a:	mov    DWORD PTR [esp],0x0
  56c161:	call   cc1a79  ; System.String::Concat
  56c166:	mov    DWORD PTR [esp+0x4],eax
  56c16a:	mov    DWORD PTR [esp+0x8],0x0
  56c172:	mov    DWORD PTR [esp],0x0
  56c179:	call   1068c69  ; DebugLog::Log
  56c17e:	mov    eax,DWORD PTR [esp+0x7c]
  56c182:	mov    DWORD PTR [esp+0x8],eax
  56c186:	mov    eax,DWORD PTR [esp+0x70]
  56c18a:	mov    DWORD PTR [esp+0x4],eax
  56c18e:	mov    eax,DWORD PTR [ebp+0x8]
  56c191:	mov    DWORD PTR [esp],eax
  56c194:	call   56d36f  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetFallbackLootFromRecipe
  56c199:	mov    esi,eax
  56c19b:	mov    DWORD PTR [esp+0x4],0x0
  56c1a3:	mov    DWORD PTR [esp],0x0
  56c1aa:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56c1af:	test   eax,eax
  56c1b1:	je     56d358
  56c1b7:	lea    eax,[ebx+0x57998]  ; literal "fallback_recipe"
  56c1bd:	mov    eax,DWORD PTR [eax]
  56c1bf:	mov    DWORD PTR [esp+0x10],eax
  56c1c3:	mov    DWORD PTR [esp+0xc],esi
  56c1c7:	mov    eax,DWORD PTR [ebp+0xc]
  56c1ca:	mov    DWORD PTR [esp+0x4],eax
  56c1ce:	mov    DWORD PTR [esp+0x18],0x1
  56c1d6:	mov    DWORD PTR [esp+0x14],0x0
  56c1de:	mov    DWORD PTR [esp+0x8],0x1
  56c1e6:	call   515c3c  ; ABH.Services.Logic.LootOperations::RewardLoot
  56c1eb:	jmp    56d327
  56c1f0:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  56c1f4:	lea    ecx,[ecx+eax*8+0xbc]
  56c1fb:	mov    esi,DWORD PTR [ebp+0x10]
  56c1fe:	mov    eax,DWORD PTR [ecx+0x4]
  56c201:	mov    DWORD PTR [esp+0x4],eax
  56c205:	mov    DWORD PTR [esp],esi
  56c208:	call   DWORD PTR [ecx]
  56c20a:	mov    esi,eax
  56c20c:	test   esi,esi
  56c20e:	je     56d358
  56c214:	mov    eax,DWORD PTR [esp+0x74]
  56c218:	mov    eax,DWORD PTR [eax]
  56c21a:	mov    ecx,DWORD PTR [esi]
  56c21c:	mov    DWORD PTR [esp+0x78],ecx
  56c220:	movzx  edx,WORD PTR [ecx+0xaa]
  56c227:	test   edx,edx
  56c229:	je     56c23e
  56c22b:	mov    ecx,DWORD PTR [esp+0x78]
  56c22f:	mov    edi,DWORD PTR [ecx+0x4c]
  56c232:	xor    ecx,ecx
  56c234:	cmp    DWORD PTR [edi+ecx*8],eax
  56c237:	je     56c254
  56c239:	inc    ecx
  56c23a:	cmp    ecx,edx
  56c23c:	jb     56c234
  56c23e:	mov    DWORD PTR [esp+0x4],eax
  56c242:	mov    DWORD PTR [esp],esi
  56c245:	mov    DWORD PTR [esp+0x8],0x7
  56c24d:	call   1c1964
  56c252:	jmp    56c263
  56c254:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  56c258:	mov    ecx,DWORD PTR [esp+0x78]
  56c25c:	lea    eax,[ecx+eax*8+0xec]
  56c263:	mov    ecx,DWORD PTR [eax+0x4]
  56c266:	mov    DWORD PTR [esp+0x8],ecx
  56c26a:	mov    DWORD PTR [esp],esi
  56c26d:	mov    DWORD PTR [esp+0x4],0x1
  56c275:	call   DWORD PTR [eax]
  56c277:	mov    ecx,DWORD PTR [ebp+0x10]
  56c27a:	mov    eax,DWORD PTR [esp+0x7c]
  56c27e:	mov    eax,DWORD PTR [eax]
  56c280:	mov    ecx,DWORD PTR [ecx]
  56c282:	movzx  edx,WORD PTR [ecx+0xaa]
  56c289:	test   edx,edx
  56c28b:	je     56c29c
  56c28d:	mov    esi,DWORD PTR [ecx+0x4c]
  56c290:	xor    edi,edi
  56c292:	cmp    DWORD PTR [esi+edi*8],eax
  56c295:	je     56c2b7
  56c297:	inc    edi
  56c298:	cmp    edi,edx
  56c29a:	jb     56c292
  56c29c:	mov    DWORD PTR [esp+0x4],eax
  56c2a0:	mov    esi,DWORD PTR [ebp+0x10]
  56c2a3:	mov    DWORD PTR [esp],esi
  56c2a6:	mov    DWORD PTR [esp+0x8],0x1
  56c2ae:	call   1c1964
  56c2b3:	mov    ecx,eax
  56c2b5:	jmp    56c2c5
  56c2b7:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  56c2bb:	lea    ecx,[ecx+eax*8+0xbc]
  56c2c2:	mov    esi,DWORD PTR [ebp+0x10]
  56c2c5:	mov    eax,DWORD PTR [ecx+0x4]
  56c2c8:	mov    DWORD PTR [esp+0x4],eax
  56c2cc:	mov    DWORD PTR [esp],esi
  56c2cf:	call   DWORD PTR [ecx]
  56c2d1:	mov    edx,eax
  56c2d3:	test   edx,edx
  56c2d5:	je     56d358
  56c2db:	mov    eax,DWORD PTR [ebp+0x14]
  56c2de:	mov    eax,DWORD PTR [eax+0xc]
  56c2e1:	mov    DWORD PTR [esp+0x6c],eax
  56c2e5:	mov    eax,DWORD PTR [esp+0x74]
  56c2e9:	mov    eax,DWORD PTR [eax]
  56c2eb:	mov    ecx,DWORD PTR [edx]
  56c2ed:	mov    DWORD PTR [esp+0x78],edx
  56c2f1:	movzx  edx,WORD PTR [ecx+0xaa]
  56c2f8:	test   edx,edx
  56c2fa:	je     56c30b
  56c2fc:	mov    edi,DWORD PTR [ecx+0x4c]
  56c2ff:	xor    esi,esi
  56c301:	cmp    DWORD PTR [edi+esi*8],eax
  56c304:	je     56c325
  56c306:	inc    esi
  56c307:	cmp    esi,edx
  56c309:	jb     56c301
  56c30b:	mov    DWORD PTR [esp+0x4],eax
  56c30f:	mov    esi,DWORD PTR [esp+0x78]
  56c313:	mov    DWORD PTR [esp],esi
  56c316:	mov    DWORD PTR [esp+0x8],0x3
  56c31e:	call   1c1964
  56c323:	jmp    56c334
  56c325:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  56c329:	lea    eax,[ecx+eax*8+0xcc]
  56c330:	mov    esi,DWORD PTR [esp+0x78]
  56c334:	mov    ecx,DWORD PTR [eax+0x4]
  56c337:	mov    DWORD PTR [esp+0x8],ecx
  56c33b:	mov    ecx,DWORD PTR [esp+0x6c]
  56c33f:	mov    DWORD PTR [esp+0x4],ecx
  56c343:	mov    DWORD PTR [esp],esi
  56c346:	call   DWORD PTR [eax]
  56c348:	mov    eax,DWORD PTR [esp+0x7c]
  56c34c:	mov    eax,DWORD PTR [eax]
  56c34e:	mov    ecx,DWORD PTR [ebp+0x10]
  56c351:	mov    ecx,DWORD PTR [ecx]
  56c353:	movzx  edx,WORD PTR [ecx+0xaa]
  56c35a:	test   edx,edx
  56c35c:	je     56c36d
  56c35e:	mov    esi,DWORD PTR [ecx+0x4c]
  56c361:	xor    edi,edi
  56c363:	cmp    DWORD PTR [esi+edi*8],eax
  56c366:	je     56c388
  56c368:	inc    edi
  56c369:	cmp    edi,edx
  56c36b:	jb     56c363
  56c36d:	mov    DWORD PTR [esp+0x4],eax
  56c371:	mov    esi,DWORD PTR [ebp+0x10]
  56c374:	mov    DWORD PTR [esp],esi
  56c377:	mov    DWORD PTR [esp+0x8],0x1
  56c37f:	call   1c1964
  56c384:	mov    ecx,eax
  56c386:	jmp    56c396
  56c388:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  56c38c:	lea    ecx,[ecx+eax*8+0xbc]
  56c393:	mov    esi,DWORD PTR [ebp+0x10]
  56c396:	mov    eax,DWORD PTR [ecx+0x4]
  56c399:	mov    DWORD PTR [esp+0x4],eax
  56c39d:	mov    DWORD PTR [esp],esi
  56c3a0:	call   DWORD PTR [ecx]
  56c3a2:	test   eax,eax
  56c3a4:	je     56c3e3
  56c3a6:	lea    ecx,[ebx+0x45528]
  56c3ac:	mov    ecx,DWORD PTR [ecx]
  56c3ae:	mov    edx,DWORD PTR [eax]
  56c3b0:	movzx  esi,BYTE PTR [ecx+0xac]
  56c3b7:	movzx  edi,BYTE PTR [edx+0xac]
  56c3be:	cmp    edi,esi
  56c3c0:	jb     56c3e3
  56c3c2:	mov    edx,DWORD PTR [edx+0x58]
  56c3c5:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  56c3c9:	jne    56c3e3
  56c3cb:	mov    DWORD PTR [esp],eax
  56c3ce:	mov    DWORD PTR [esp+0x8],0x0
  56c3d6:	mov    DWORD PTR [esp+0x4],0x1
  56c3de:	call   179c1db  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::set_IsNewInShop
  56c3e3:	lea    eax,[ebx+0x5799c]  ; literal "Add Recipe"
  56c3e9:	mov    eax,DWORD PTR [eax]
  56c3eb:	mov    DWORD PTR [esp+0x4],eax
  56c3ef:	mov    DWORD PTR [esp+0x8],0x0
  56c3f7:	mov    DWORD PTR [esp],0x0
  56c3fe:	call   1068c69  ; DebugLog::Log
  56c403:	mov    eax,DWORD PTR [esp+0x60]
  56c407:	mov    eax,DWORD PTR [eax]
  56c409:	mov    DWORD PTR [esp+0x4],eax
  56c40d:	mov    eax,DWORD PTR [esp+0x70]
  56c411:	mov    DWORD PTR [esp],eax
  56c414:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56c419:	test   eax,eax
  56c41b:	je     56d358
  56c421:	mov    DWORD PTR [esp],eax
  56c424:	mov    DWORD PTR [esp+0x4],0x0
  56c42c:	call   17000e6  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_RecipeCategoryType
  56c431:	cmp    eax,0x5
  56c434:	jne    56d327
  56c43a:	lea    eax,[ebx+0x579a0]  ; literal "Add Consumable Recipe"
  56c440:	mov    eax,DWORD PTR [eax]
  56c442:	mov    DWORD PTR [esp+0x4],eax
  56c446:	mov    DWORD PTR [esp+0x8],0x0
  56c44e:	mov    DWORD PTR [esp],0x0
  56c455:	call   1068c69  ; DebugLog::Log
  56c45a:	mov    DWORD PTR [esp+0x4],0x0
  56c462:	mov    DWORD PTR [esp],0x0
  56c469:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56c46e:	mov    DWORD PTR [esp+0x78],eax
  56c472:	mov    DWORD PTR [esp+0x4],0x0
  56c47a:	mov    DWORD PTR [esp],0x0
  56c481:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56c486:	mov    edi,eax
  56c488:	mov    esi,DWORD PTR [esp+0x70]
  56c48c:	mov    DWORD PTR [esp],esi
  56c48f:	mov    DWORD PTR [esp+0x4],0x0
  56c497:	call   6d2fb3  ; ABH.GameDatas.CraftingRecipeGameData::GetResultLoot
  56c49c:	mov    DWORD PTR [esp+0x6c],eax
  56c4a0:	lea    eax,[ebx+0x4a9d0]
  56c4a6:	mov    DWORD PTR [esp+0x48],eax
  56c4aa:	mov    eax,DWORD PTR [eax]
  56c4ac:	mov    DWORD PTR [esp+0x4],eax
  56c4b0:	mov    DWORD PTR [esp],esi
  56c4b3:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56c4b8:	test   eax,eax
  56c4ba:	je     56d358
  56c4c0:	mov    DWORD PTR [esp],eax
  56c4c3:	mov    DWORD PTR [esp+0x4],0x0
  56c4cb:	call   179c13d  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::get_Level
  56c4d0:	test   edi,edi
  56c4d2:	je     56d358
  56c4d8:	mov    DWORD PTR [esp+0xc8],0x0
  56c4e3:	lea    ecx,[esp+0xc8]
  56c4ea:	mov    DWORD PTR [esp+0x14],ecx
  56c4ee:	mov    DWORD PTR [esp+0x8],eax
  56c4f2:	mov    eax,DWORD PTR [esp+0x6c]
  56c4f6:	mov    DWORD PTR [esp+0x4],eax
  56c4fa:	mov    DWORD PTR [esp],edi
  56c4fd:	mov    DWORD PTR [esp+0x18],0x0
  56c505:	mov    DWORD PTR [esp+0x10],0x0
  56c50d:	mov    DWORD PTR [esp+0xc],0x1
  56c515:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  56c51a:	mov    ecx,DWORD PTR [esp+0x78]
  56c51e:	test   ecx,ecx
  56c520:	je     56d358
  56c526:	mov    DWORD PTR [esp+0x8],eax
  56c52a:	mov    DWORD PTR [esp],ecx
  56c52d:	mov    DWORD PTR [esp+0x10],0x0
  56c535:	mov    DWORD PTR [esp+0xc],0x4
  56c53d:	mov    DWORD PTR [esp+0x4],0x0
  56c545:	call   57d9d0  ; ABH.Services.Logic.LootOperations::GetItemsFromLoot
  56c54a:	test   eax,eax
  56c54c:	je     56d358
  56c552:	lea    ecx,[ebx+0x4a860]
  56c558:	mov    DWORD PTR [esp+0x6c],ecx
  56c55c:	mov    ecx,DWORD PTR [ecx]
  56c55e:	mov    DWORD PTR [esp+0x8],ecx
  56c562:	mov    DWORD PTR [esp],eax
  56c565:	mov    DWORD PTR [esp+0x4],0x0
  56c56d:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56c572:	mov    edi,eax
  56c574:	test   edi,edi
  56c576:	je     56d327
  56c57c:	lea    eax,[ebx+0x45e78]
  56c582:	mov    DWORD PTR [esp+0x54],eax
  56c586:	mov    eax,DWORD PTR [eax]
  56c588:	mov    ecx,DWORD PTR [edi]
  56c58a:	movzx  edx,BYTE PTR [eax+0xac]
  56c591:	movzx  esi,BYTE PTR [ecx+0xac]
  56c598:	cmp    esi,edx
  56c59a:	jb     56d327
  56c5a0:	mov    ecx,DWORD PTR [ecx+0x58]
  56c5a3:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  56c5a7:	jne    56d327
  56c5ad:	lea    esi,[ebx+0x4a980]
  56c5b3:	mov    eax,DWORD PTR [esi]
  56c5b5:	mov    DWORD PTR [esp+0x4],eax
  56c5b9:	mov    DWORD PTR [esp],edi
  56c5bc:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56c5c1:	test   eax,eax
  56c5c3:	je     56d358
  56c5c9:	mov    DWORD PTR [esp],eax
  56c5cc:	mov    DWORD PTR [esp+0x4],0x0
  56c5d4:	call   16ffe35  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConversionPoints
  56c5d9:	test   eax,eax
  56c5db:	jle    56d327
  56c5e1:	mov    eax,DWORD PTR [esi]
  56c5e3:	mov    DWORD PTR [esp+0x50],esi
  56c5e7:	mov    DWORD PTR [esp+0x4],eax
  56c5eb:	mov    DWORD PTR [esp],edi
  56c5ee:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56c5f3:	test   eax,eax
  56c5f5:	je     56d358
  56c5fb:	mov    DWORD PTR [esp],eax
  56c5fe:	mov    DWORD PTR [esp+0x4],0x0
  56c606:	call   16ffcfa  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_NameId
  56c60b:	mov    esi,eax
  56c60d:	lea    eax,[ebx+0x430e4]
  56c613:	mov    DWORD PTR [esp+0x3c],eax
  56c617:	mov    eax,DWORD PTR [eax]
  56c619:	test   BYTE PTR [eax+0xb2],0x1
  56c620:	je     56c630
  56c622:	cmp    DWORD PTR [eax+0x60],0x0
  56c626:	jne    56c630
  56c628:	mov    DWORD PTR [esp],eax
  56c62b:	call   1db0b8
  56c630:	lea    eax,[ebx+0x579a4]  ; literal "For Consumable: "
  56c636:	mov    eax,DWORD PTR [eax]
  56c638:	mov    DWORD PTR [esp+0x8],esi
  56c63c:	mov    DWORD PTR [esp+0x4],eax
  56c640:	mov    DWORD PTR [esp+0xc],0x0
  56c648:	mov    DWORD PTR [esp],0x0
  56c64f:	call   ca462a  ; System.String::Concat
  56c654:	mov    DWORD PTR [esp+0x4],eax
  56c658:	mov    DWORD PTR [esp+0x8],0x0
  56c660:	mov    DWORD PTR [esp],0x0
  56c667:	call   1068c69  ; DebugLog::Log
  56c66c:	mov    eax,DWORD PTR [ebp+0xc]
  56c66f:	mov    eax,DWORD PTR [eax+0x10]
  56c672:	test   eax,eax
  56c674:	je     56d358
  56c67a:	mov    DWORD PTR [esp+0x4c],edi
  56c67e:	mov    ecx,DWORD PTR [esp+0x44]
  56c682:	mov    ecx,DWORD PTR [ecx]
  56c684:	mov    DWORD PTR [esp+0x8],ecx
  56c688:	mov    DWORD PTR [esp],eax
  56c68b:	mov    DWORD PTR [esp+0x4],0x5
  56c693:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  56c698:	mov    esi,eax
  56c69a:	mov    DWORD PTR [esp+0x40],esi
  56c69e:	lea    eax,[ebx+0x461c0]
  56c6a4:	mov    eax,DWORD PTR [eax]
  56c6a6:	mov    DWORD PTR [esp],eax
  56c6a9:	call   20bfb2
  56c6ae:	mov    DWORD PTR [esp+0x68],eax
  56c6b2:	lea    ecx,[ebx+0x4b6d4]
  56c6b8:	mov    ecx,DWORD PTR [ecx]
  56c6ba:	mov    DWORD PTR [esp+0x4],ecx
  56c6be:	mov    DWORD PTR [esp],eax
  56c6c1:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  56c6c6:	test   esi,esi
  56c6c8:	je     56d358
  56c6ce:	mov    DWORD PTR [esp+0x78],0x0
  56c6d6:	lea    eax,[ebx+0x4a868]
  56c6dc:	mov    DWORD PTR [esp+0x5c],eax
  56c6e0:	jmp    56c6e6
  56c6e2:	inc    DWORD PTR [esp+0x78]
  56c6e6:	mov    eax,DWORD PTR [esp+0x5c]
  56c6ea:	mov    eax,DWORD PTR [eax]
  56c6ec:	mov    DWORD PTR [esp+0x4],eax
  56c6f0:	mov    DWORD PTR [esp],esi
  56c6f3:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  56c6f8:	cmp    DWORD PTR [esp+0x78],eax
  56c6fc:	jge    56ca81
  56c702:	mov    eax,DWORD PTR [esp+0x6c]
  56c706:	mov    eax,DWORD PTR [eax]
  56c708:	mov    DWORD PTR [esp+0x8],eax
  56c70c:	mov    eax,DWORD PTR [esp+0x78]
  56c710:	mov    DWORD PTR [esp+0x4],eax
  56c714:	mov    DWORD PTR [esp],esi
  56c717:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56c71c:	mov    edi,eax
  56c71e:	test   edi,edi
  56c720:	je     56c6e2
  56c722:	mov    eax,DWORD PTR [esp+0x54]
  56c726:	mov    eax,DWORD PTR [eax]
  56c728:	mov    DWORD PTR [esp+0x58],eax
  56c72c:	mov    ecx,DWORD PTR [edi]
  56c72e:	movzx  edx,BYTE PTR [eax+0xac]
  56c735:	mov    eax,esi
  56c737:	movzx  esi,BYTE PTR [ecx+0xac]
  56c73e:	cmp    esi,edx
  56c740:	mov    esi,eax
  56c742:	jb     56c6e2
  56c744:	mov    ecx,DWORD PTR [ecx+0x58]
  56c747:	mov    eax,DWORD PTR [esp+0x58]
  56c74b:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  56c74f:	jne    56c6e2
  56c751:	mov    esi,DWORD PTR [esp+0x50]
  56c755:	mov    eax,DWORD PTR [esi]
  56c757:	mov    DWORD PTR [esp+0x4],eax
  56c75b:	mov    eax,DWORD PTR [esp+0x4c]
  56c75f:	mov    DWORD PTR [esp],eax
  56c762:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56c767:	test   eax,eax
  56c769:	je     56d358
  56c76f:	mov    DWORD PTR [esp],eax
  56c772:	mov    DWORD PTR [esp+0x4],0x0
  56c77a:	call   16ffe12  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConsumableStatckingType
  56c77f:	mov    DWORD PTR [esp+0x58],eax
  56c783:	mov    eax,DWORD PTR [esi]
  56c785:	mov    DWORD PTR [esp+0x4],eax
  56c789:	mov    DWORD PTR [esp],edi
  56c78c:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56c791:	test   eax,eax
  56c793:	je     56d358
  56c799:	mov    DWORD PTR [esp],eax
  56c79c:	mov    DWORD PTR [esp+0x4],0x0
  56c7a4:	call   16ffe12  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConsumableStatckingType
  56c7a9:	mov    ecx,eax
  56c7ab:	mov    eax,DWORD PTR [esp+0x3c]
  56c7af:	mov    eax,DWORD PTR [eax]
  56c7b1:	test   BYTE PTR [eax+0xb2],0x1
  56c7b8:	mov    esi,DWORD PTR [esp+0x40]
  56c7bc:	je     56c7d4
  56c7be:	cmp    DWORD PTR [eax+0x60],0x0
  56c7c2:	jne    56c7d4
  56c7c4:	mov    DWORD PTR [esp],eax
  56c7c7:	mov    DWORD PTR [esp+0x38],ecx
  56c7cb:	call   1db0b8
  56c7d0:	mov    ecx,DWORD PTR [esp+0x38]
  56c7d4:	mov    DWORD PTR [esp+0x8],ecx
  56c7d8:	mov    eax,DWORD PTR [esp+0x58]
  56c7dc:	mov    DWORD PTR [esp+0x4],eax
  56c7e0:	mov    DWORD PTR [esp+0xc],0x0
  56c7e8:	mov    DWORD PTR [esp],0x0
  56c7ef:	call   c9e5f9  ; System.String::op_Inequality
  56c7f4:	test   al,al
  56c7f6:	jne    56c6e2
  56c7fc:	mov    DWORD PTR [esp+0x38],edi
  56c800:	mov    esi,DWORD PTR [esp+0x50]
  56c804:	mov    eax,DWORD PTR [esi]
  56c806:	mov    DWORD PTR [esp+0x4],eax
  56c80a:	mov    eax,DWORD PTR [esp+0x4c]
  56c80e:	mov    DWORD PTR [esp],eax
  56c811:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56c816:	test   eax,eax
  56c818:	je     56d358
  56c81e:	mov    DWORD PTR [esp],eax
  56c821:	mov    DWORD PTR [esp+0x4],0x0
  56c829:	call   16ffcfa  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_NameId
  56c82e:	mov    edi,eax
  56c830:	mov    eax,DWORD PTR [esi]
  56c832:	mov    DWORD PTR [esp+0x4],eax
  56c836:	mov    eax,DWORD PTR [esp+0x38]
  56c83a:	mov    DWORD PTR [esp],eax
  56c83d:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56c842:	test   eax,eax
  56c844:	mov    esi,DWORD PTR [ebp+0x10]
  56c847:	je     56d358
  56c84d:	mov    DWORD PTR [esp],eax
  56c850:	mov    DWORD PTR [esp+0x4],0x0
  56c858:	call   16ffcfa  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_NameId
  56c85d:	mov    ecx,eax
  56c85f:	mov    eax,DWORD PTR [esp+0x3c]
  56c863:	mov    eax,DWORD PTR [eax]
  56c865:	test   BYTE PTR [eax+0xb2],0x1
  56c86c:	je     56c884
  56c86e:	cmp    DWORD PTR [eax+0x60],0x0
  56c872:	jne    56c884
  56c874:	mov    DWORD PTR [esp],eax
  56c877:	mov    DWORD PTR [esp+0x58],ecx
  56c87b:	call   1db0b8
  56c880:	mov    ecx,DWORD PTR [esp+0x58]
  56c884:	mov    DWORD PTR [esp+0x8],ecx
  56c888:	mov    DWORD PTR [esp+0x4],edi
  56c88c:	mov    DWORD PTR [esp+0xc],0x0
  56c894:	mov    DWORD PTR [esp],0x0
  56c89b:	call   ca24cf  ; System.String::op_Equality
  56c8a0:	test   al,al
  56c8a2:	je     56c8e6
  56c8a4:	mov    eax,DWORD PTR [esp+0x7c]
  56c8a8:	mov    edi,DWORD PTR [eax]
  56c8aa:	mov    eax,DWORD PTR [esi]
  56c8ac:	mov    DWORD PTR [esp+0x58],eax
  56c8b0:	movzx  edx,WORD PTR [eax+0xaa]
  56c8b7:	test   edx,edx
  56c8b9:	je     56c8ce
  56c8bb:	mov    eax,DWORD PTR [esp+0x58]
  56c8bf:	mov    ecx,DWORD PTR [eax+0x4c]
  56c8c2:	xor    eax,eax
  56c8c4:	cmp    DWORD PTR [ecx+eax*8],edi
  56c8c7:	je     56c917
  56c8c9:	inc    eax
  56c8ca:	cmp    eax,edx
  56c8cc:	jb     56c8c4
  56c8ce:	mov    DWORD PTR [esp+0x4],edi
  56c8d2:	mov    DWORD PTR [esp],esi
  56c8d5:	mov    DWORD PTR [esp+0x8],0x1
  56c8dd:	call   1c1964
  56c8e2:	mov    ecx,eax
  56c8e4:	jmp    56c926
  56c8e6:	mov    ecx,DWORD PTR [esp+0x68]
  56c8ea:	test   ecx,ecx
  56c8ec:	je     56d358
  56c8f2:	lea    eax,[ebx+0x4b6d8]
  56c8f8:	mov    eax,DWORD PTR [eax]
  56c8fa:	mov    DWORD PTR [esp+0x8],eax
  56c8fe:	mov    eax,DWORD PTR [esp+0x38]
  56c902:	mov    DWORD PTR [esp+0x4],eax
  56c906:	mov    DWORD PTR [esp],ecx
  56c909:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  56c90e:	mov    esi,DWORD PTR [esp+0x40]
  56c912:	jmp    56c6e2
  56c917:	mov    eax,DWORD PTR [ecx+eax*8+0x4]
  56c91b:	mov    ecx,DWORD PTR [esp+0x58]
  56c91f:	lea    ecx,[ecx+eax*8+0xbc]
  56c926:	mov    eax,DWORD PTR [ecx+0x4]
  56c929:	mov    DWORD PTR [esp+0x4],eax
  56c92d:	mov    DWORD PTR [esp],esi
  56c930:	call   DWORD PTR [ecx]
  56c932:	mov    ecx,eax
  56c934:	test   ecx,ecx
  56c936:	je     56d358
  56c93c:	mov    eax,DWORD PTR [ebp+0x14]
  56c93f:	mov    eax,DWORD PTR [eax+0xc]
  56c942:	mov    DWORD PTR [esp+0x30],eax
  56c946:	mov    eax,DWORD PTR [esp+0x74]
  56c94a:	mov    eax,DWORD PTR [eax]
  56c94c:	mov    DWORD PTR [esp+0x58],eax
  56c950:	mov    eax,DWORD PTR [ecx]
  56c952:	mov    DWORD PTR [esp+0x2c],eax
  56c956:	mov    DWORD PTR [esp+0x34],ecx
  56c95a:	movzx  edx,WORD PTR [eax+0xaa]
  56c961:	test   edx,edx
  56c963:	mov    esi,DWORD PTR [esp+0x40]
  56c967:	je     56c980
  56c969:	mov    eax,DWORD PTR [esp+0x2c]
  56c96d:	mov    ecx,DWORD PTR [eax+0x4c]
  56c970:	xor    eax,eax
  56c972:	mov    edi,DWORD PTR [esp+0x58]
  56c976:	cmp    DWORD PTR [ecx+eax*8],edi
  56c979:	je     56c99e
  56c97b:	inc    eax
  56c97c:	cmp    eax,edx
  56c97e:	jb     56c972
  56c980:	mov    eax,DWORD PTR [esp+0x58]
  56c984:	mov    DWORD PTR [esp+0x4],eax
  56c988:	mov    edi,DWORD PTR [esp+0x34]
  56c98c:	mov    DWORD PTR [esp],edi
  56c98f:	mov    DWORD PTR [esp+0x8],0x3
  56c997:	call   1c1964
  56c99c:	jmp    56c9b1
  56c99e:	mov    eax,DWORD PTR [ecx+eax*8+0x4]
  56c9a2:	mov    ecx,DWORD PTR [esp+0x2c]
  56c9a6:	lea    eax,[ecx+eax*8+0xcc]
  56c9ad:	mov    edi,DWORD PTR [esp+0x34]
  56c9b1:	mov    ecx,DWORD PTR [eax+0x4]
  56c9b4:	mov    DWORD PTR [esp+0x8],ecx
  56c9b8:	mov    ecx,DWORD PTR [esp+0x30]
  56c9bc:	mov    DWORD PTR [esp+0x4],ecx
  56c9c0:	mov    DWORD PTR [esp],edi
  56c9c3:	call   DWORD PTR [eax]
  56c9c5:	mov    eax,DWORD PTR [esp+0x38]
  56c9c9:	mov    DWORD PTR [esp],eax
  56c9cc:	mov    DWORD PTR [esp+0x4],0x0
  56c9d4:	call   6cf9d4  ; ABH.GameDatas.ConsumableItemGameData::get_ItemData
  56c9d9:	mov    ecx,eax
  56c9db:	test   ecx,ecx
  56c9dd:	je     56d358
  56c9e3:	mov    eax,DWORD PTR [ebp+0x14]
  56c9e6:	mov    eax,DWORD PTR [eax+0xc]
  56c9e9:	mov    DWORD PTR [esp+0x34],eax
  56c9ed:	mov    eax,DWORD PTR [esp+0x74]
  56c9f1:	mov    eax,DWORD PTR [eax]
  56c9f3:	mov    DWORD PTR [esp+0x58],eax
  56c9f7:	mov    eax,DWORD PTR [ecx]
  56c9f9:	mov    DWORD PTR [esp+0x2c],eax
  56c9fd:	mov    DWORD PTR [esp+0x30],ecx
  56ca01:	movzx  edx,WORD PTR [eax+0xaa]
  56ca08:	test   edx,edx
  56ca0a:	je     56ca23
  56ca0c:	mov    eax,DWORD PTR [esp+0x2c]
  56ca10:	mov    ecx,DWORD PTR [eax+0x4c]
  56ca13:	xor    eax,eax
  56ca15:	mov    edi,DWORD PTR [esp+0x58]
  56ca19:	cmp    DWORD PTR [ecx+eax*8],edi
  56ca1c:	je     56ca41
  56ca1e:	inc    eax
  56ca1f:	cmp    eax,edx
  56ca21:	jb     56ca15
  56ca23:	mov    eax,DWORD PTR [esp+0x58]
  56ca27:	mov    DWORD PTR [esp+0x4],eax
  56ca2b:	mov    edi,DWORD PTR [esp+0x30]
  56ca2f:	mov    DWORD PTR [esp],edi
  56ca32:	mov    DWORD PTR [esp+0x8],0x3
  56ca3a:	call   1c1964
  56ca3f:	jmp    56ca54
  56ca41:	mov    eax,DWORD PTR [ecx+eax*8+0x4]
  56ca45:	mov    ecx,DWORD PTR [esp+0x2c]
  56ca49:	lea    eax,[ecx+eax*8+0xcc]
  56ca50:	mov    edi,DWORD PTR [esp+0x30]
  56ca54:	mov    ecx,DWORD PTR [eax+0x4]
  56ca57:	mov    DWORD PTR [esp+0x8],ecx
  56ca5b:	mov    ecx,DWORD PTR [esp+0x34]
  56ca5f:	mov    DWORD PTR [esp+0x4],ecx
  56ca63:	mov    DWORD PTR [esp],edi
  56ca66:	call   DWORD PTR [eax]
  56ca68:	mov    eax,DWORD PTR [esp+0x38]
  56ca6c:	mov    DWORD PTR [esp],eax
  56ca6f:	mov    DWORD PTR [esp+0x4],0x0
  56ca77:	call   6cfaac  ; ABH.GameDatas.ConsumableItemGameData::SetResultingSkill
  56ca7c:	jmp    56c6e2
  56ca81:	mov    ecx,DWORD PTR [esp+0x68]
  56ca85:	test   ecx,ecx
  56ca87:	je     56d358
  56ca8d:	lea    eax,[ebx+0x4b6dc]
  56ca93:	mov    eax,DWORD PTR [eax]
  56ca95:	mov    DWORD PTR [esp+0x4],eax
  56ca99:	mov    DWORD PTR [esp],ecx
  56ca9c:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  56caa1:	mov    esi,eax
  56caa3:	mov    DWORD PTR [esp+0x40],0x0
  56caab:	dec    eax
  56caac:	js     56cc4e
  56cab2:	lea    eax,[ebx+0x4b6e0]
  56cab8:	mov    DWORD PTR [esp+0x7c],eax
  56cabc:	dec    esi
  56cabd:	mov    eax,DWORD PTR [esp+0x7c]
  56cac1:	mov    eax,DWORD PTR [eax]
  56cac3:	mov    DWORD PTR [esp+0x8],eax
  56cac7:	mov    DWORD PTR [esp+0x4],esi
  56cacb:	mov    eax,DWORD PTR [esp+0x68]
  56cacf:	mov    DWORD PTR [esp],eax
  56cad2:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56cad7:	test   eax,eax
  56cad9:	je     56d358
  56cadf:	mov    DWORD PTR [esp+0x78],esi
  56cae3:	mov    esi,DWORD PTR [esp+0x50]
  56cae7:	mov    ecx,DWORD PTR [esi]
  56cae9:	mov    DWORD PTR [esp+0x4],ecx
  56caed:	mov    DWORD PTR [esp],eax
  56caf0:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56caf5:	test   eax,eax
  56caf7:	je     56d358
  56cafd:	mov    DWORD PTR [esp],eax
  56cb00:	mov    DWORD PTR [esp+0x4],0x0
  56cb08:	call   16ffe35  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConversionPoints
  56cb0d:	mov    edi,eax
  56cb0f:	mov    eax,DWORD PTR [esi]
  56cb11:	mov    DWORD PTR [esp+0x4],eax
  56cb15:	mov    eax,DWORD PTR [esp+0x4c]
  56cb19:	mov    DWORD PTR [esp],eax
  56cb1c:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56cb21:	test   eax,eax
  56cb23:	je     56d358
  56cb29:	mov    DWORD PTR [esp],eax
  56cb2c:	mov    DWORD PTR [esp+0x4],0x0
  56cb34:	call   16ffe35  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConversionPoints
  56cb39:	cmp    edi,eax
  56cb3b:	mov    ecx,DWORD PTR [esp+0x68]
  56cb3f:	jg     56d334
  56cb45:	mov    edi,DWORD PTR [esp+0x7c]
  56cb49:	mov    eax,DWORD PTR [edi]
  56cb4b:	mov    DWORD PTR [esp+0x8],eax
  56cb4f:	mov    esi,DWORD PTR [esp+0x78]
  56cb53:	mov    DWORD PTR [esp+0x4],esi
  56cb57:	mov    DWORD PTR [esp],ecx
  56cb5a:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56cb5f:	test   eax,eax
  56cb61:	je     56d358
  56cb67:	mov    DWORD PTR [esp],eax
  56cb6a:	mov    DWORD PTR [esp+0x4],0x0
  56cb72:	call   6cfeec  ; ABH.GameDatas.ConsumableItemGameData::get_ItemValue
  56cb77:	mov    DWORD PTR [esp+0x58],eax
  56cb7b:	mov    DWORD PTR [esp+0x4],0x0
  56cb83:	mov    DWORD PTR [esp],0x0
  56cb8a:	call   106b137  ; DIContainerLogic::get_InventoryService
  56cb8f:	mov    DWORD PTR [esp+0x74],eax
  56cb93:	mov    eax,DWORD PTR [edi]
  56cb95:	mov    DWORD PTR [esp+0x8],eax
  56cb99:	mov    DWORD PTR [esp+0x4],esi
  56cb9d:	mov    eax,DWORD PTR [esp+0x68]
  56cba1:	mov    DWORD PTR [esp],eax
  56cba4:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56cba9:	test   eax,eax
  56cbab:	je     56d358
  56cbb1:	mov    ecx,DWORD PTR [esp+0x50]
  56cbb5:	mov    ecx,DWORD PTR [ecx]
  56cbb7:	mov    DWORD PTR [esp+0x4],ecx
  56cbbb:	mov    DWORD PTR [esp],eax
  56cbbe:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56cbc3:	test   eax,eax
  56cbc5:	je     56d358
  56cbcb:	mov    DWORD PTR [esp],eax
  56cbce:	mov    DWORD PTR [esp+0x4],0x0
  56cbd6:	call   16ffcfa  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_NameId
  56cbdb:	mov    edi,eax
  56cbdd:	mov    eax,DWORD PTR [esp+0x7c]
  56cbe1:	mov    eax,DWORD PTR [eax]
  56cbe3:	mov    DWORD PTR [esp+0x8],eax
  56cbe7:	mov    DWORD PTR [esp+0x4],esi
  56cbeb:	mov    eax,DWORD PTR [esp+0x68]
  56cbef:	mov    DWORD PTR [esp],eax
  56cbf2:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56cbf7:	test   eax,eax
  56cbf9:	je     56d358
  56cbff:	mov    DWORD PTR [esp],eax
  56cc02:	mov    DWORD PTR [esp+0x4],0x0
  56cc0a:	call   6cfeec  ; ABH.GameDatas.ConsumableItemGameData::get_ItemValue
  56cc0f:	mov    edx,DWORD PTR [esp+0x74]
  56cc13:	test   edx,edx
  56cc15:	je     56d358
  56cc1b:	mov    ecx,DWORD PTR [esp+0x58]
  56cc1f:	add    DWORD PTR [esp+0x40],ecx
  56cc23:	lea    ecx,[ebx+0x579ac]  ; literal "consumable_conversion"
  56cc29:	mov    ecx,DWORD PTR [ecx]
  56cc2b:	mov    DWORD PTR [esp+0x10],ecx
  56cc2f:	mov    DWORD PTR [esp+0xc],eax
  56cc33:	mov    DWORD PTR [esp+0x8],edi
  56cc37:	mov    eax,DWORD PTR [ebp+0xc]
  56cc3a:	mov    DWORD PTR [esp+0x4],eax
  56cc3e:	mov    DWORD PTR [esp],edx
  56cc41:	call   4fa47f  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::RemoveItem
  56cc46:	test   esi,esi
  56cc48:	jg     56cabc
  56cc4e:	mov    eax,DWORD PTR [esp+0x40]
  56cc52:	mov    DWORD PTR [esp+0x80],eax
  56cc59:	lea    eax,[ebx+0x43120]
  56cc5f:	mov    eax,DWORD PTR [eax]
  56cc61:	lea    ecx,[esp+0x80]
  56cc68:	mov    DWORD PTR [esp+0x4],ecx
  56cc6c:	mov    DWORD PTR [esp],eax
  56cc6f:	call   20bf14
  56cc74:	mov    esi,eax
  56cc76:	mov    eax,DWORD PTR [esp+0x3c]
  56cc7a:	mov    eax,DWORD PTR [eax]
  56cc7c:	test   BYTE PTR [eax+0xb2],0x1
  56cc83:	je     56cc93
  56cc85:	cmp    DWORD PTR [eax+0x60],0x0
  56cc89:	jne    56cc93
  56cc8b:	mov    DWORD PTR [esp],eax
  56cc8e:	call   1db0b8
  56cc93:	lea    eax,[ebx+0x579b0]  ; literal "Conversion Points: "
  56cc99:	mov    eax,DWORD PTR [eax]
  56cc9b:	mov    DWORD PTR [esp+0x8],esi
  56cc9f:	mov    DWORD PTR [esp+0x4],eax
  56cca3:	mov    DWORD PTR [esp+0xc],0x0
  56ccab:	mov    DWORD PTR [esp],0x0
  56ccb2:	call   cb2fed  ; System.String::Concat
  56ccb7:	mov    DWORD PTR [esp+0x4],eax
  56ccbb:	mov    DWORD PTR [esp+0x8],0x0
  56ccc3:	mov    DWORD PTR [esp],0x0
  56ccca:	call   1068c69  ; DebugLog::Log
  56cccf:	mov    eax,DWORD PTR [ebp+0xc]
  56ccd2:	mov    eax,DWORD PTR [eax+0x10]
  56ccd5:	test   eax,eax
  56ccd7:	je     56d358
  56ccdd:	mov    ecx,DWORD PTR [esp+0x44]
  56cce1:	mov    ecx,DWORD PTR [ecx]
  56cce3:	mov    DWORD PTR [esp+0x8],ecx
  56cce7:	mov    DWORD PTR [esp],eax
  56ccea:	mov    DWORD PTR [esp+0x4],0xc
  56ccf2:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  56ccf7:	mov    edi,eax
  56ccf9:	mov    DWORD PTR [esp+0x74],edi
  56ccfd:	test   edi,edi
  56ccff:	je     56d358
  56cd05:	mov    eax,DWORD PTR [esp+0x5c]
  56cd09:	mov    eax,DWORD PTR [eax]
  56cd0b:	mov    DWORD PTR [esp+0x4],eax
  56cd0f:	mov    DWORD PTR [esp],edi
  56cd12:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  56cd17:	mov    ecx,eax
  56cd19:	dec    eax
  56cd1a:	js     56d215
  56cd20:	mov    eax,DWORD PTR [esp+0x6c]
  56cd24:	mov    eax,DWORD PTR [eax]
  56cd26:	dec    ecx
  56cd27:	mov    DWORD PTR [esp+0x7c],ecx
  56cd2b:	mov    DWORD PTR [esp+0x8],eax
  56cd2f:	mov    DWORD PTR [esp+0x4],ecx
  56cd33:	mov    DWORD PTR [esp],edi
  56cd36:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56cd3b:	mov    esi,eax
  56cd3d:	test   esi,esi
  56cd3f:	je     56d207
  56cd45:	mov    eax,DWORD PTR [esp+0x64]
  56cd49:	mov    eax,DWORD PTR [eax]
  56cd4b:	mov    DWORD PTR [esp+0x78],eax
  56cd4f:	mov    ecx,DWORD PTR [esi]
  56cd51:	movzx  edx,BYTE PTR [eax+0xac]
  56cd58:	mov    eax,edi
  56cd5a:	movzx  edi,BYTE PTR [ecx+0xac]
  56cd61:	cmp    edi,edx
  56cd63:	mov    edi,eax
  56cd65:	jb     56d207
  56cd6b:	mov    ecx,DWORD PTR [ecx+0x58]
  56cd6e:	mov    eax,DWORD PTR [esp+0x78]
  56cd72:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  56cd76:	jne    56d207
  56cd7c:	mov    edi,DWORD PTR [esp+0x60]
  56cd80:	mov    eax,DWORD PTR [edi]
  56cd82:	mov    DWORD PTR [esp+0x4],eax
  56cd86:	mov    DWORD PTR [esp],esi
  56cd89:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56cd8e:	test   eax,eax
  56cd90:	je     56d358
  56cd96:	mov    DWORD PTR [esp],eax
  56cd99:	mov    DWORD PTR [esp+0x4],0x0
  56cda1:	call   1700014  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_NameId
  56cda6:	mov    DWORD PTR [esp+0x78],eax
  56cdaa:	mov    eax,DWORD PTR [edi]
  56cdac:	mov    DWORD PTR [esp+0x4],eax
  56cdb0:	mov    eax,DWORD PTR [esp+0x70]
  56cdb4:	mov    DWORD PTR [esp],eax
  56cdb7:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56cdbc:	test   eax,eax
  56cdbe:	je     56d358
  56cdc4:	mov    DWORD PTR [esp],eax
  56cdc7:	mov    DWORD PTR [esp+0x4],0x0
  56cdcf:	call   1700014  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_NameId
  56cdd4:	mov    ecx,eax
  56cdd6:	mov    eax,DWORD PTR [esp+0x3c]
  56cdda:	mov    eax,DWORD PTR [eax]
  56cddc:	test   BYTE PTR [eax+0xb2],0x1
  56cde3:	mov    edi,DWORD PTR [esp+0x74]
  56cde7:	je     56cdff
  56cde9:	cmp    DWORD PTR [eax+0x60],0x0
  56cded:	jne    56cdff
  56cdef:	mov    DWORD PTR [esp],eax
  56cdf2:	mov    DWORD PTR [esp+0x68],ecx
  56cdf6:	call   1db0b8
  56cdfb:	mov    ecx,DWORD PTR [esp+0x68]
  56cdff:	mov    DWORD PTR [esp+0x8],ecx
  56ce03:	mov    eax,DWORD PTR [esp+0x78]
  56ce07:	mov    DWORD PTR [esp+0x4],eax
  56ce0b:	mov    DWORD PTR [esp+0xc],0x0
  56ce13:	mov    DWORD PTR [esp],0x0
  56ce1a:	call   ca24cf  ; System.String::op_Equality
  56ce1f:	test   al,al
  56ce21:	jne    56d207
  56ce27:	mov    eax,DWORD PTR [esp+0x60]
  56ce2b:	mov    eax,DWORD PTR [eax]
  56ce2d:	mov    DWORD PTR [esp+0x4],eax
  56ce31:	mov    DWORD PTR [esp],esi
  56ce34:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56ce39:	test   eax,eax
  56ce3b:	je     56d358
  56ce41:	mov    DWORD PTR [esp],eax
  56ce44:	mov    DWORD PTR [esp+0x4],0x0
  56ce4c:	call   17000e6  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_RecipeCategoryType
  56ce51:	cmp    eax,0x5
  56ce54:	jne    56d207
  56ce5a:	mov    DWORD PTR [esp+0x4],0x0
  56ce62:	mov    DWORD PTR [esp],0x0
  56ce69:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56ce6e:	mov    DWORD PTR [esp+0x78],eax
  56ce72:	mov    DWORD PTR [esp+0x4],0x0
  56ce7a:	mov    DWORD PTR [esp],0x0
  56ce81:	call   106f816  ; DIContainerLogic::GetLootOperationService
  56ce86:	mov    edi,eax
  56ce88:	mov    DWORD PTR [esp],esi
  56ce8b:	mov    DWORD PTR [esp+0x4],0x0
  56ce93:	call   6d2fb3  ; ABH.GameDatas.CraftingRecipeGameData::GetResultLoot
  56ce98:	mov    DWORD PTR [esp+0x68],eax
  56ce9c:	mov    eax,DWORD PTR [esp+0x48]
  56cea0:	mov    eax,DWORD PTR [eax]
  56cea2:	mov    DWORD PTR [esp+0x4],eax
  56cea6:	mov    DWORD PTR [esp],esi
  56cea9:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56ceae:	test   eax,eax
  56ceb0:	je     56d358
  56ceb6:	mov    DWORD PTR [esp],eax
  56ceb9:	mov    DWORD PTR [esp+0x4],0x0
  56cec1:	call   179c13d  ; ABH.Shared.Models.InventoryItems.CraftingRecipeData::get_Level
  56cec6:	test   edi,edi
  56cec8:	je     56d358
  56cece:	mov    DWORD PTR [esp+0xc8],0x0
  56ced9:	lea    ecx,[esp+0xc8]
  56cee0:	mov    DWORD PTR [esp+0x14],ecx
  56cee4:	mov    DWORD PTR [esp+0x8],eax
  56cee8:	mov    eax,DWORD PTR [esp+0x68]
  56ceec:	mov    DWORD PTR [esp+0x4],eax
  56cef0:	mov    DWORD PTR [esp],edi
  56cef3:	mov    DWORD PTR [esp+0x18],0x0
  56cefb:	mov    DWORD PTR [esp+0x10],0x0
  56cf03:	mov    DWORD PTR [esp+0xc],0x1
  56cf0b:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  56cf10:	mov    ecx,DWORD PTR [esp+0x78]
  56cf14:	test   ecx,ecx
  56cf16:	je     56d358
  56cf1c:	mov    DWORD PTR [esp+0x8],eax
  56cf20:	mov    DWORD PTR [esp],ecx
  56cf23:	mov    DWORD PTR [esp+0x10],0x0
  56cf2b:	mov    DWORD PTR [esp+0xc],0x4
  56cf33:	mov    DWORD PTR [esp+0x4],0x0
  56cf3b:	call   57d9d0  ; ABH.Services.Logic.LootOperations::GetItemsFromLoot
  56cf40:	test   eax,eax
  56cf42:	mov    edi,DWORD PTR [esp+0x74]
  56cf46:	je     56d358
  56cf4c:	mov    ecx,DWORD PTR [esp+0x6c]
  56cf50:	mov    ecx,DWORD PTR [ecx]
  56cf52:	mov    DWORD PTR [esp+0x8],ecx
  56cf56:	mov    DWORD PTR [esp],eax
  56cf59:	mov    DWORD PTR [esp+0x4],0x0
  56cf61:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56cf66:	mov    edx,eax
  56cf68:	test   edx,edx
  56cf6a:	mov    DWORD PTR [esp+0x5c],esi
  56cf6e:	je     56d207
  56cf74:	mov    eax,DWORD PTR [esp+0x54]
  56cf78:	mov    eax,DWORD PTR [eax]
  56cf7a:	mov    DWORD PTR [esp+0x78],eax
  56cf7e:	mov    ecx,DWORD PTR [edx]
  56cf80:	movzx  eax,BYTE PTR [eax+0xac]
  56cf87:	mov    esi,edi
  56cf89:	movzx  edi,BYTE PTR [ecx+0xac]
  56cf90:	cmp    edi,eax
  56cf92:	mov    edi,esi
  56cf94:	jb     56d207
  56cf9a:	mov    ecx,DWORD PTR [ecx+0x58]
  56cf9d:	mov    esi,DWORD PTR [esp+0x78]
  56cfa1:	cmp    DWORD PTR [ecx+eax*4-0x4],esi
  56cfa5:	jne    56d207
  56cfab:	mov    edi,DWORD PTR [esp+0x50]
  56cfaf:	mov    eax,DWORD PTR [edi]
  56cfb1:	mov    DWORD PTR [esp+0x4],eax
  56cfb5:	mov    DWORD PTR [esp],edx
  56cfb8:	mov    DWORD PTR [esp+0x78],edx
  56cfbc:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56cfc1:	test   eax,eax
  56cfc3:	je     56d358
  56cfc9:	mov    DWORD PTR [esp],eax
  56cfcc:	mov    DWORD PTR [esp+0x4],0x0
  56cfd4:	call   16ffe12  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConsumableStatckingType
  56cfd9:	mov    DWORD PTR [esp+0x68],eax
  56cfdd:	mov    eax,DWORD PTR [edi]
  56cfdf:	mov    DWORD PTR [esp+0x4],eax
  56cfe3:	mov    eax,DWORD PTR [esp+0x4c]
  56cfe7:	mov    DWORD PTR [esp],eax
  56cfea:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56cfef:	test   eax,eax
  56cff1:	je     56d358
  56cff7:	mov    DWORD PTR [esp],eax
  56cffa:	mov    DWORD PTR [esp+0x4],0x0
  56d002:	call   16ffe12  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConsumableStatckingType
  56d007:	mov    ecx,eax
  56d009:	mov    eax,DWORD PTR [esp+0x3c]
  56d00d:	mov    eax,DWORD PTR [eax]
  56d00f:	test   BYTE PTR [eax+0xb2],0x1
  56d016:	mov    edi,DWORD PTR [esp+0x74]
  56d01a:	je     56d032
  56d01c:	cmp    DWORD PTR [eax+0x60],0x0
  56d020:	jne    56d032
  56d022:	mov    DWORD PTR [esp],eax
  56d025:	mov    DWORD PTR [esp+0x58],ecx
  56d029:	call   1db0b8
  56d02e:	mov    ecx,DWORD PTR [esp+0x58]
  56d032:	mov    DWORD PTR [esp+0x8],ecx
  56d036:	mov    eax,DWORD PTR [esp+0x68]
  56d03a:	mov    DWORD PTR [esp+0x4],eax
  56d03e:	mov    DWORD PTR [esp+0xc],0x0
  56d046:	mov    DWORD PTR [esp],0x0
  56d04d:	call   ca24cf  ; System.String::op_Equality
  56d052:	test   al,al
  56d054:	mov    esi,DWORD PTR [esp+0x78]
  56d058:	je     56d207
  56d05e:	mov    edi,DWORD PTR [esp+0x50]
  56d062:	mov    eax,DWORD PTR [edi]
  56d064:	mov    DWORD PTR [esp+0x4],eax
  56d068:	mov    DWORD PTR [esp],esi
  56d06b:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56d070:	test   eax,eax
  56d072:	je     56d358
  56d078:	mov    DWORD PTR [esp],eax
  56d07b:	mov    DWORD PTR [esp+0x4],0x0
  56d083:	call   16ffe35  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConversionPoints
  56d088:	mov    DWORD PTR [esp+0x68],eax
  56d08c:	mov    eax,DWORD PTR [edi]
  56d08e:	mov    DWORD PTR [esp+0x4],eax
  56d092:	mov    eax,DWORD PTR [esp+0x4c]
  56d096:	mov    DWORD PTR [esp],eax
  56d099:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56d09e:	test   eax,eax
  56d0a0:	je     56d358
  56d0a6:	mov    DWORD PTR [esp],eax
  56d0a9:	mov    DWORD PTR [esp+0x4],0x0
  56d0b1:	call   16ffe35  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_ConversionPoints
  56d0b6:	cmp    DWORD PTR [esp+0x68],eax
  56d0ba:	mov    edi,DWORD PTR [esp+0x74]
  56d0be:	mov    eax,DWORD PTR [esp+0x5c]
  56d0c2:	jg     56d207
  56d0c8:	mov    DWORD PTR [esp+0x4],eax
  56d0cc:	mov    eax,DWORD PTR [ebp+0xc]
  56d0cf:	mov    DWORD PTR [esp],eax
  56d0d2:	mov    DWORD PTR [esp+0x8],0x0
  56d0da:	call   6e505b  ; ABH.GameDatas.InventoryGameData::RemoveItemFromInventory
  56d0df:	test   al,al
  56d0e1:	je     56d207
  56d0e7:	mov    DWORD PTR [esp+0xa4],0x0
  56d0f2:	mov    DWORD PTR [esp+0x4],0x0
  56d0fa:	mov    DWORD PTR [esp],0x0
  56d101:	call   106b137  ; DIContainerLogic::get_InventoryService
  56d106:	mov    edi,eax
  56d108:	mov    eax,DWORD PTR [esp+0x50]
  56d10c:	mov    eax,DWORD PTR [eax]
  56d10e:	mov    DWORD PTR [esp+0x4],eax
  56d112:	mov    DWORD PTR [esp],esi
  56d115:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56d11a:	test   eax,eax
  56d11c:	je     56d358
  56d122:	mov    DWORD PTR [esp],eax
  56d125:	mov    DWORD PTR [esp+0x4],0x0
  56d12d:	call   16ffcfa  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_NameId
  56d132:	test   edi,edi
  56d134:	je     56d358
  56d13a:	lea    ecx,[esp+0xa4]
  56d141:	mov    DWORD PTR [esp+0xc],ecx
  56d145:	mov    DWORD PTR [esp+0x8],eax
  56d149:	mov    eax,DWORD PTR [ebp+0xc]
  56d14c:	mov    DWORD PTR [esp+0x4],eax
  56d150:	mov    DWORD PTR [esp],edi
  56d153:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  56d158:	test   al,al
  56d15a:	je     56d17a
  56d15c:	mov    eax,DWORD PTR [esp+0xa4]
  56d163:	mov    DWORD PTR [esp+0x4],eax
  56d167:	mov    eax,DWORD PTR [ebp+0xc]
  56d16a:	mov    DWORD PTR [esp],eax
  56d16d:	mov    DWORD PTR [esp+0x8],0x0
  56d175:	call   6e505b  ; ABH.GameDatas.InventoryGameData::RemoveItemFromInventory
  56d17a:	mov    eax,DWORD PTR [esp+0x60]
  56d17e:	mov    eax,DWORD PTR [eax]
  56d180:	mov    DWORD PTR [esp+0x4],eax
  56d184:	mov    eax,DWORD PTR [esp+0x5c]
  56d188:	mov    DWORD PTR [esp],eax
  56d18b:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56d190:	test   eax,eax
  56d192:	je     56d358
  56d198:	mov    DWORD PTR [esp],eax
  56d19b:	mov    DWORD PTR [esp+0x4],0x0
  56d1a3:	call   1700014  ; ABH.Shared.BalancingData.CraftingRecipeBalancingData::get_NameId
  56d1a8:	mov    edi,eax
  56d1aa:	mov    eax,DWORD PTR [esp+0x3c]
  56d1ae:	mov    eax,DWORD PTR [eax]
  56d1b0:	test   BYTE PTR [eax+0xb2],0x1
  56d1b7:	je     56d1c7
  56d1b9:	cmp    DWORD PTR [eax+0x60],0x0
  56d1bd:	jne    56d1c7
  56d1bf:	mov    DWORD PTR [esp],eax
  56d1c2:	call   1db0b8
  56d1c7:	lea    eax,[ebx+0x579b4]  ; literal "Removed old Consumable Recipe: "
  56d1cd:	mov    eax,DWORD PTR [eax]
  56d1cf:	mov    DWORD PTR [esp+0x8],edi
  56d1d3:	mov    DWORD PTR [esp+0x4],eax
  56d1d7:	mov    DWORD PTR [esp+0xc],0x0
  56d1df:	mov    DWORD PTR [esp],0x0
  56d1e6:	call   ca462a  ; System.String::Concat
  56d1eb:	mov    DWORD PTR [esp+0x4],eax
  56d1ef:	mov    DWORD PTR [esp+0x8],0x0
  56d1f7:	mov    DWORD PTR [esp],0x0
  56d1fe:	call   1068c69  ; DebugLog::Log
  56d203:	mov    edi,DWORD PTR [esp+0x74]
  56d207:	mov    eax,DWORD PTR [esp+0x7c]
  56d20b:	test   eax,eax
  56d20d:	mov    ecx,eax
  56d20f:	jg     56cd20
  56d215:	cmp    DWORD PTR [esp+0x40],0x0
  56d21a:	jle    56d327
  56d220:	mov    DWORD PTR [esp+0x4],0x0
  56d228:	mov    DWORD PTR [esp],0x0
  56d22f:	call   106b137  ; DIContainerLogic::get_InventoryService
  56d234:	mov    DWORD PTR [esp+0x7c],eax
  56d238:	lea    edi,[ebx+0x4a984]
  56d23e:	mov    eax,DWORD PTR [edi]
  56d240:	mov    DWORD PTR [esp+0x4],eax
  56d244:	mov    esi,DWORD PTR [esp+0x4c]
  56d248:	mov    DWORD PTR [esp],esi
  56d24b:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56d250:	test   eax,eax
  56d252:	je     56d358
  56d258:	mov    DWORD PTR [esp],eax
  56d25b:	mov    DWORD PTR [esp+0x4],0x0
  56d263:	call   179bf7f  ; ABH.Shared.Models.InventoryItems.ConsumableItemData::get_Level
  56d268:	mov    DWORD PTR [esp+0x78],eax
  56d26c:	mov    eax,DWORD PTR [edi]
  56d26e:	mov    DWORD PTR [esp+0x4],eax
  56d272:	mov    DWORD PTR [esp],esi
  56d275:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  56d27a:	test   eax,eax
  56d27c:	je     56d358
  56d282:	mov    DWORD PTR [esp],eax
  56d285:	mov    DWORD PTR [esp+0x4],0x0
  56d28d:	call   179bfc5  ; ABH.Shared.Models.InventoryItems.ConsumableItemData::get_Quality
  56d292:	mov    edi,eax
  56d294:	mov    eax,DWORD PTR [esp+0x50]
  56d298:	mov    eax,DWORD PTR [eax]
  56d29a:	mov    DWORD PTR [esp+0x4],eax
  56d29e:	mov    DWORD PTR [esp],esi
  56d2a1:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56d2a6:	test   eax,eax
  56d2a8:	je     56d358
  56d2ae:	mov    DWORD PTR [esp],eax
  56d2b1:	mov    DWORD PTR [esp+0x4],0x0
  56d2b9:	call   16ffcfa  ; ABH.Shared.BalancingData.ConsumableItemBalancingData::get_NameId
  56d2be:	mov    edx,DWORD PTR [esp+0x7c]
  56d2c2:	test   edx,edx
  56d2c4:	je     56d358
  56d2ca:	lea    ecx,[ebx+0x579ac]  ; literal "consumable_conversion"
  56d2d0:	mov    ecx,DWORD PTR [ecx]
  56d2d2:	mov    DWORD PTR [esp+0x18],ecx
  56d2d6:	mov    ecx,DWORD PTR [esp+0x40]
  56d2da:	mov    DWORD PTR [esp+0x14],ecx
  56d2de:	mov    DWORD PTR [esp+0x10],eax
  56d2e2:	mov    DWORD PTR [esp+0xc],edi
  56d2e6:	mov    eax,DWORD PTR [esp+0x78]
  56d2ea:	mov    DWORD PTR [esp+0x8],eax
  56d2ee:	mov    eax,DWORD PTR [ebp+0xc]
  56d2f1:	mov    DWORD PTR [esp+0x4],eax
  56d2f5:	mov    DWORD PTR [esp],edx
  56d2f8:	mov    DWORD PTR [esp+0x1c],0x0
  56d300:	call   500411  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddItem
  56d305:	jmp    56d327
  56d307:	lea    eax,[ebx+0x57984]  ; literal "[InventoryOperationServiceRealImpl] Found a better recipe of same item, therfore do nothing"
  56d30d:	mov    eax,DWORD PTR [eax]
  56d30f:	mov    DWORD PTR [esp+0x4],eax
  56d313:	mov    DWORD PTR [esp+0x8],0x0
  56d31b:	mov    DWORD PTR [esp],0x0
  56d322:	call   108148a  ; DebugLog::Error
  56d327:	mov    eax,0x1
  56d32c:	lea    esp,[ebp-0xc]
  56d32f:	pop    esi
  56d330:	pop    edi
  56d331:	pop    ebx
  56d332:	pop    ebp
  56d333:	ret
  56d334:	lea    eax,[ebx+0x579a8]  ; literal "Not Add lower Level Consumables"
  56d33a:	mov    eax,DWORD PTR [eax]
  56d33c:	mov    DWORD PTR [esp+0x4],eax
  56d340:	mov    DWORD PTR [esp+0x8],0x0
  56d348:	mov    DWORD PTR [esp],0x0
  56d34f:	call   1068c69  ; DebugLog::Log
  56d354:	xor    eax,eax
  56d356:	jmp    56d32c
  56d358:	call   1fbc48
  56d35d:	call   540b98
  56d362:	mov    DWORD PTR [esp],eax
  56d365:	call   1b9bd0
  56d36a:	call   540b98