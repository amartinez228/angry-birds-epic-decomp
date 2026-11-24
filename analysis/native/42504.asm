
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ab221c:
  ab221c:	push   ebp
  ab221d:	mov    ebp,esp
  ab221f:	push   ebx
  ab2220:	push   edi
  ab2221:	push   esi
  ab2222:	and    esp,0xfffffff0
  ab2225:	sub    esp,0x60
  ab2228:	call   ab222d
  ab222d:	pop    ebx
  ab222e:	add    ebx,0x145fd17
  ab2234:	mov    al,BYTE PTR [ebx+0x60d29]
  ab223a:	test   al,al
  ab223c:	jne    ab2255
  ab223e:	lea    eax,[ebx-0x654158]
  ab2244:	mov    eax,DWORD PTR [eax]
  ab2246:	mov    DWORD PTR [esp],eax
  ab2249:	call   1ca6e8
  ab224e:	mov    BYTE PTR [ebx+0x60d29],0x1
  ab2255:	lea    eax,[ebx+0x462e4]
  ab225b:	mov    eax,DWORD PTR [eax]
  ab225d:	mov    DWORD PTR [esp],eax
  ab2260:	call   20bfb2
  ab2265:	mov    edi,eax
  ab2267:	mov    DWORD PTR [esp],edi
  ab226a:	mov    DWORD PTR [esp+0x4],0x0
  ab2272:	call   124632e  ; System.Object::.ctor
  ab2277:	test   edi,edi
  ab2279:	je     ab2bbb
  ab227f:	mov    eax,DWORD PTR [ebp+0x10]
  ab2282:	mov    ecx,DWORD PTR [ebp+0xc]
  ab2285:	mov    edx,DWORD PTR [ebp+0x8]
  ab2288:	mov    DWORD PTR [edi+0x8],ecx
  ab228b:	mov    DWORD PTR [edi+0xc],eax
  ab228e:	mov    DWORD PTR [edi+0x10],edx
  ab2291:	mov    DWORD PTR [esp+0x8],eax
  ab2295:	mov    DWORD PTR [esp+0x4],ecx
  ab2299:	mov    DWORD PTR [esp],edx
  ab229c:	call   ab20ec  ; ABH.Services.Logic.WorldMapService::EnterHotspot
  ab22a1:	test   al,al
  ab22a3:	je     ab2491
  ab22a9:	lea    eax,[ebx+0x458c4]
  ab22af:	mov    eax,DWORD PTR [eax]
  ab22b1:	mov    DWORD PTR [esp],eax
  ab22b4:	call   20bfb2
  ab22b9:	mov    esi,eax
  ab22bb:	lea    eax,[ebx+0x4a1d8]
  ab22c1:	mov    eax,DWORD PTR [eax]
  ab22c3:	mov    DWORD PTR [esp+0x4],eax
  ab22c7:	mov    DWORD PTR [esp],esi
  ab22ca:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ab22cf:	mov    eax,DWORD PTR [edi+0xc]
  ab22d2:	test   eax,eax
  ab22d4:	je     ab2bbb
  ab22da:	mov    DWORD PTR [esp+0x30],esi
  ab22de:	lea    ecx,[ebx+0x4a8ac]
  ab22e4:	mov    DWORD PTR [esp+0x38],ecx
  ab22e8:	mov    ecx,DWORD PTR [ecx]
  ab22ea:	mov    DWORD PTR [esp+0x4],ecx
  ab22ee:	mov    DWORD PTR [esp],eax
  ab22f1:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab22f6:	test   eax,eax
  ab22f8:	je     ab2bbb
  ab22fe:	mov    DWORD PTR [esp],eax
  ab2301:	mov    DWORD PTR [esp+0x4],0x0
  ab2309:	call   179b80f  ; ABH.Shared.Models.HotspotData::get_RandomSeed
  ab230e:	test   eax,eax
  ab2310:	jne    ab2371
  ab2312:	mov    eax,DWORD PTR [edi+0xc]
  ab2315:	test   eax,eax
  ab2317:	je     ab2bbb
  ab231d:	mov    ecx,DWORD PTR [esp+0x38]
  ab2321:	mov    ecx,DWORD PTR [ecx]
  ab2323:	mov    DWORD PTR [esp+0x4],ecx
  ab2327:	mov    DWORD PTR [esp],eax
  ab232a:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab232f:	mov    esi,eax
  ab2331:	mov    DWORD PTR [esp+0xc],0x0
  ab2339:	mov    DWORD PTR [esp+0x8],0x7fffffff
  ab2341:	mov    DWORD PTR [esp+0x4],0x1
  ab2349:	mov    DWORD PTR [esp],0x0
  ab2350:	call   167eb06  ; UnityEngine.Random::Range
  ab2355:	test   esi,esi
  ab2357:	je     ab2bbb
  ab235d:	mov    DWORD PTR [esp+0x4],eax
  ab2361:	mov    DWORD PTR [esp],esi
  ab2364:	mov    DWORD PTR [esp+0x8],0x0
  ab236c:	call   179b81f  ; ABH.Shared.Models.HotspotData::set_RandomSeed
  ab2371:	mov    DWORD PTR [esp+0x4],0x0
  ab2379:	mov    DWORD PTR [esp],0x0
  ab2380:	call   109314e  ; DIContainerLogic::GetBattleService
  ab2385:	mov    esi,eax
  ab2387:	mov    eax,DWORD PTR [edi+0xc]
  ab238a:	test   eax,eax
  ab238c:	je     ab2bbb
  ab2392:	lea    ecx,[ebx+0x4a94c]
  ab2398:	mov    DWORD PTR [esp+0x54],ecx
  ab239c:	mov    ecx,DWORD PTR [ecx]
  ab239e:	mov    DWORD PTR [esp+0x4],ecx
  ab23a2:	mov    DWORD PTR [esp],eax
  ab23a5:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab23aa:	test   eax,eax
  ab23ac:	je     ab2bbb
  ab23b2:	mov    DWORD PTR [esp],eax
  ab23b5:	mov    DWORD PTR [esp+0x4],0x0
  ab23bd:	call   17012ca  ; ABH.Shared.BalancingData.HotspotBalancingData::get_BattleId
  ab23c2:	test   esi,esi
  ab23c4:	je     ab2bbb
  ab23ca:	mov    ecx,DWORD PTR [edi+0x8]
  ab23cd:	movzx  edx,BYTE PTR [ebp+0x1c]
  ab23d1:	mov    DWORD PTR [esp+0x10],edx
  ab23d5:	mov    DWORD PTR [esp+0x8],ecx
  ab23d9:	mov    DWORD PTR [esp+0x4],eax
  ab23dd:	mov    DWORD PTR [esp],esi
  ab23e0:	mov    DWORD PTR [esp+0x14],0x0
  ab23e8:	mov    DWORD PTR [esp+0xc],0x0
  ab23f0:	call   4f81f3  ; ABH.Services.Logic.BattleService::GetFirstPossibleBattle
  ab23f5:	mov    DWORD PTR [esp+0x44],eax
  ab23f9:	lea    eax,[ebx+0x45820]
  ab23ff:	mov    DWORD PTR [esp+0x2c],eax
  ab2403:	mov    eax,DWORD PTR [eax]
  ab2405:	test   BYTE PTR [eax+0xb2],0x1
  ab240c:	je     ab241c
  ab240e:	cmp    DWORD PTR [eax+0x60],0x0
  ab2412:	jne    ab241c
  ab2414:	mov    DWORD PTR [esp],eax
  ab2417:	call   1db0b8
  ab241c:	mov    DWORD PTR [esp+0x40],edi
  ab2420:	mov    DWORD PTR [esp+0x4],0x0
  ab2428:	mov    DWORD PTR [esp],0x0
  ab242f:	call   107cf95  ; DIContainerBalancing::get_Service
  ab2434:	test   eax,eax
  ab2436:	je     ab2bbb
  ab243c:	lea    ecx,[ebx+0x4a1e0]
  ab2442:	mov    DWORD PTR [esp+0x28],ecx
  ab2446:	mov    edx,DWORD PTR [ecx]
  ab2448:	mov    DWORD PTR [esp+0x50],edx
  ab244c:	mov    ecx,DWORD PTR [edx+0xc]
  ab244f:	movzx  edx,WORD PTR [edx+0x2c]
  ab2453:	mov    DWORD PTR [esp+0x48],edx
  ab2457:	mov    edx,DWORD PTR [eax]
  ab2459:	mov    DWORD PTR [esp+0x4c],eax
  ab245d:	movzx  eax,WORD PTR [edx+0xaa]
  ab2464:	test   eax,eax
  ab2466:	je     ab2477
  ab2468:	mov    esi,DWORD PTR [edx+0x4c]
  ab246b:	xor    edi,edi
  ab246d:	cmp    DWORD PTR [esi+edi*8],ecx
  ab2470:	je     ab2498
  ab2472:	inc    edi
  ab2473:	cmp    edi,eax
  ab2475:	jb     ab246d
  ab2477:	mov    eax,DWORD PTR [esp+0x48]
  ab247b:	mov    DWORD PTR [esp+0x8],eax
  ab247f:	mov    DWORD PTR [esp+0x4],ecx
  ab2483:	mov    esi,DWORD PTR [esp+0x4c]
  ab2487:	mov    DWORD PTR [esp],esi
  ab248a:	call   1c1964
  ab248f:	jmp    ab24ab
  ab2491:	xor    eax,eax
  ab2493:	jmp    ab2bb0
  ab2498:	mov    eax,DWORD PTR [esp+0x48]
  ab249c:	add    eax,DWORD PTR [esi+edi*8+0x4]
  ab24a0:	lea    eax,[edx+eax*8+0xb4]
  ab24a7:	mov    esi,DWORD PTR [esp+0x4c]
  ab24ab:	mov    eax,DWORD PTR [eax+0x4]
  ab24ae:	mov    ecx,DWORD PTR [esp+0x50]
  ab24b2:	mov    DWORD PTR [esp+0x4],ecx
  ab24b6:	mov    DWORD PTR [esp],eax
  ab24b9:	call   1da450
  ab24be:	mov    DWORD PTR [esp+0x8],eax
  ab24c2:	mov    ecx,DWORD PTR [esp+0x44]
  ab24c6:	mov    DWORD PTR [esp+0x4],ecx
  ab24ca:	mov    DWORD PTR [esp],esi
  ab24cd:	call   DWORD PTR [eax]
  ab24cf:	test   eax,eax
  ab24d1:	mov    edi,DWORD PTR [esp+0x40]
  ab24d5:	je     ab2bbb
  ab24db:	mov    DWORD PTR [esp],eax
  ab24de:	mov    DWORD PTR [esp+0x4],0x0
  ab24e6:	call   16fe4a5  ; ABH.Shared.BalancingData.BattleBalancingData::get_BackgroundAssetId
  ab24eb:	mov    esi,eax
  ab24ed:	mov    eax,DWORD PTR [edi+0xc]
  ab24f0:	test   eax,eax
  ab24f2:	je     ab2bbb
  ab24f8:	mov    ecx,DWORD PTR [esp+0x54]
  ab24fc:	mov    ecx,DWORD PTR [ecx]
  ab24fe:	mov    DWORD PTR [esp+0x4],ecx
  ab2502:	mov    DWORD PTR [esp],eax
  ab2505:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab250a:	test   eax,eax
  ab250c:	je     ab2bbb
  ab2512:	mov    DWORD PTR [esp],eax
  ab2515:	mov    DWORD PTR [esp+0x4],0x0
  ab251d:	call   17012ca  ; ABH.Shared.BalancingData.HotspotBalancingData::get_BattleId
  ab2522:	test   eax,eax
  ab2524:	je     ab2bbb
  ab252a:	mov    DWORD PTR [esp+0x34],esi
  ab252e:	lea    ecx,[ebx+0x49ef4]
  ab2534:	mov    ecx,DWORD PTR [ecx]
  ab2536:	mov    DWORD PTR [esp+0x8],ecx
  ab253a:	mov    ecx,DWORD PTR [esp+0x44]
  ab253e:	mov    DWORD PTR [esp+0x4],ecx
  ab2542:	mov    DWORD PTR [esp],eax
  ab2545:	call   4c3660  ; shared address: System.Collections.Generic.List`1<object>::IndexOf | System.Collections.Generic.List`1<string>::IndexOf | System.Collections.Generic.List`1<ABH.GameDatas.Interfaces.ICombatant>::IndexOf | +4 other aliases
  ab254a:	mov    DWORD PTR [esp+0x3c],eax
  ab254e:	lea    eax,[ebx+0x43ba4]
  ab2554:	mov    eax,DWORD PTR [eax]
  ab2556:	mov    DWORD PTR [esp],eax
  ab2559:	call   20bfb2
  ab255e:	mov    DWORD PTR [esp+0x50],eax
  ab2562:	lea    ecx,[ebx+0x48c1c]
  ab2568:	mov    ecx,DWORD PTR [ecx]
  ab256a:	mov    DWORD PTR [esp+0x4],ecx
  ab256e:	mov    DWORD PTR [esp],eax
  ab2571:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ab2576:	mov    eax,DWORD PTR [edi+0x8]
  ab2579:	test   eax,eax
  ab257b:	je     ab2bbb
  ab2581:	lea    esi,[ebx+0x4a210]
  ab2587:	mov    ecx,DWORD PTR [esi]
  ab2589:	mov    DWORD PTR [esp+0x4],ecx
  ab258d:	mov    DWORD PTR [esp],eax
  ab2590:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab2595:	test   eax,eax
  ab2597:	je     ab2bbb
  ab259d:	mov    DWORD PTR [esp],eax
  ab25a0:	mov    DWORD PTR [esp+0x4],0x0
  ab25a8:	call   179d2b2  ; ABH.Shared.Models.PlayerData::get_CurrentSponsoredBuff
  ab25ad:	mov    DWORD PTR [esp+0x20],eax
  ab25b1:	mov    eax,DWORD PTR [edi+0x8]
  ab25b4:	test   eax,eax
  ab25b6:	je     ab2bbb
  ab25bc:	mov    ecx,DWORD PTR [esi]
  ab25be:	mov    DWORD PTR [esp+0x24],esi
  ab25c2:	mov    DWORD PTR [esp+0x4],ecx
  ab25c6:	mov    DWORD PTR [esp],eax
  ab25c9:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab25ce:	mov    esi,eax
  ab25d0:	lea    eax,[ebx+0x430e4]
  ab25d6:	mov    DWORD PTR [esp+0x4c],eax
  ab25da:	mov    eax,DWORD PTR [eax]
  ab25dc:	test   BYTE PTR [eax+0xb2],0x1
  ab25e3:	je     ab25f3
  ab25e5:	cmp    DWORD PTR [eax+0x60],0x0
  ab25e9:	jne    ab25f3
  ab25eb:	mov    DWORD PTR [esp],eax
  ab25ee:	call   1db0b8
  ab25f3:	test   esi,esi
  ab25f5:	je     ab2bbb
  ab25fb:	mov    eax,DWORD PTR [esp+0x4c]
  ab25ff:	mov    eax,DWORD PTR [eax]
  ab2601:	mov    eax,DWORD PTR [eax+0x50]
  ab2604:	mov    eax,DWORD PTR [eax]
  ab2606:	mov    DWORD PTR [esp+0x4],eax
  ab260a:	mov    DWORD PTR [esp],esi
  ab260d:	mov    DWORD PTR [esp+0x8],0x0
  ab2615:	call   179d2c5  ; ABH.Shared.Models.PlayerData::set_CurrentSponsoredBuff
  ab261a:	mov    eax,DWORD PTR [edi+0xc]
  ab261d:	test   eax,eax
  ab261f:	je     ab2bbb
  ab2625:	mov    ecx,DWORD PTR [esp+0x54]
  ab2629:	mov    ecx,DWORD PTR [ecx]
  ab262b:	mov    DWORD PTR [esp+0x4],ecx
  ab262f:	mov    DWORD PTR [esp],eax
  ab2632:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab2637:	test   eax,eax
  ab2639:	mov    esi,DWORD PTR [esp+0x50]
  ab263d:	je     ab2bbb
  ab2643:	mov    DWORD PTR [esp],eax
  ab2646:	mov    DWORD PTR [esp+0x4],0x0
  ab264e:	call   17012ca  ; ABH.Shared.BalancingData.HotspotBalancingData::get_BattleId
  ab2653:	test   eax,eax
  ab2655:	je     ab2bbb
  ab265b:	lea    ecx,[ebx+0x48c20]
  ab2661:	mov    DWORD PTR [esp+0x48],ecx
  ab2665:	mov    ecx,DWORD PTR [ecx]
  ab2667:	mov    DWORD PTR [esp+0x4],ecx
  ab266b:	mov    DWORD PTR [esp],eax
  ab266e:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  ab2673:	mov    ecx,DWORD PTR [esp+0x3c]
  ab2677:	inc    ecx
  ab2678:	cmp    eax,ecx
  ab267a:	jl     ab2736
  ab2680:	mov    DWORD PTR [esp+0x3c],ecx
  ab2684:	mov    eax,DWORD PTR [edi+0xc]
  ab2687:	test   eax,eax
  ab2689:	je     ab2bbb
  ab268f:	mov    ecx,DWORD PTR [esp+0x54]
  ab2693:	mov    ecx,DWORD PTR [ecx]
  ab2695:	mov    DWORD PTR [esp+0x4],ecx
  ab2699:	mov    DWORD PTR [esp],eax
  ab269c:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab26a1:	test   eax,eax
  ab26a3:	je     ab2bbb
  ab26a9:	mov    DWORD PTR [esp],eax
  ab26ac:	mov    DWORD PTR [esp+0x4],0x0
  ab26b4:	call   17012ca  ; ABH.Shared.BalancingData.HotspotBalancingData::get_BattleId
  ab26b9:	mov    esi,eax
  ab26bb:	mov    eax,DWORD PTR [edi+0xc]
  ab26be:	test   eax,eax
  ab26c0:	je     ab2bbb
  ab26c6:	mov    ecx,DWORD PTR [esp+0x54]
  ab26ca:	mov    ecx,DWORD PTR [ecx]
  ab26cc:	mov    DWORD PTR [esp+0x4],ecx
  ab26d0:	mov    DWORD PTR [esp],eax
  ab26d3:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab26d8:	test   eax,eax
  ab26da:	je     ab2bbb
  ab26e0:	mov    DWORD PTR [esp],eax
  ab26e3:	mov    DWORD PTR [esp+0x4],0x0
  ab26eb:	call   17012ca  ; ABH.Shared.BalancingData.HotspotBalancingData::get_BattleId
  ab26f0:	test   eax,eax
  ab26f2:	je     ab2bbb
  ab26f8:	mov    ecx,DWORD PTR [esp+0x48]
  ab26fc:	mov    ecx,DWORD PTR [ecx]
  ab26fe:	mov    DWORD PTR [esp+0x4],ecx
  ab2702:	mov    DWORD PTR [esp],eax
  ab2705:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  ab270a:	test   esi,esi
  ab270c:	je     ab2bbb
  ab2712:	mov    edx,DWORD PTR [esp+0x3c]
  ab2716:	sub    eax,edx
  ab2718:	lea    ecx,[ebx+0x4bb2c]
  ab271e:	mov    ecx,DWORD PTR [ecx]
  ab2720:	mov    DWORD PTR [esp+0xc],ecx
  ab2724:	mov    DWORD PTR [esp+0x8],eax
  ab2728:	mov    DWORD PTR [esp+0x4],edx
  ab272c:	mov    DWORD PTR [esp],esi
  ab272f:	call   4c3564  ; shared address: System.Collections.Generic.List`1<object>::GetRange | System.Collections.Generic.List`1<string>::GetRange
  ab2734:	mov    esi,eax
  ab2736:	mov    DWORD PTR [esp+0x50],esi
  ab273a:	test   esi,esi
  ab273c:	je     ab2bbb
  ab2742:	xor    edi,edi
  ab2744:	jmp    ab2763
  ab2746:	lea    ecx,[ebx+0x492b0]
  ab274c:	mov    ecx,DWORD PTR [ecx]
  ab274e:	mov    DWORD PTR [esp+0x8],ecx
  ab2752:	mov    DWORD PTR [esp+0x4],eax
  ab2756:	mov    DWORD PTR [esp],edx
  ab2759:	call   176d678  ; shared address: System.Action`1<object>::Invoke | System.Action`1<string>::Invoke | System.Action`1<UnityEngine.Font>::Invoke | +48 other aliases
  ab275e:	inc    edi
  ab275f:	mov    esi,DWORD PTR [esp+0x50]
  ab2763:	mov    eax,DWORD PTR [esp+0x48]
  ab2767:	mov    eax,DWORD PTR [eax]
  ab2769:	mov    DWORD PTR [esp+0x4],eax
  ab276d:	mov    DWORD PTR [esp],esi
  ab2770:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  ab2775:	cmp    edi,eax
  ab2777:	jge    ab27ef
  ab2779:	mov    eax,DWORD PTR [ebp+0x8]
  ab277c:	mov    eax,DWORD PTR [eax+0xc]
  ab277f:	mov    DWORD PTR [esp+0x54],eax
  ab2783:	lea    eax,[ebx+0x4953c]
  ab2789:	mov    eax,DWORD PTR [eax]
  ab278b:	mov    DWORD PTR [esp+0x8],eax
  ab278f:	mov    DWORD PTR [esp+0x4],edi
  ab2793:	mov    DWORD PTR [esp],esi
  ab2796:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  ab279b:	mov    esi,eax
  ab279d:	mov    eax,DWORD PTR [esp+0x4c]
  ab27a1:	mov    eax,DWORD PTR [eax]
  ab27a3:	test   BYTE PTR [eax+0xb2],0x1
  ab27aa:	je     ab27ba
  ab27ac:	cmp    DWORD PTR [eax+0x60],0x0
  ab27b0:	jne    ab27ba
  ab27b2:	mov    DWORD PTR [esp],eax
  ab27b5:	call   1db0b8
  ab27ba:	lea    eax,[ebx+0x57d24]  ; literal "Possible follow up Battle: "
  ab27c0:	mov    eax,DWORD PTR [eax]
  ab27c2:	mov    DWORD PTR [esp+0x8],esi
  ab27c6:	mov    DWORD PTR [esp+0x4],eax
  ab27ca:	mov    DWORD PTR [esp+0xc],0x0
  ab27d2:	mov    DWORD PTR [esp],0x0
  ab27d9:	call   ca462a  ; System.String::Concat
  ab27de:	mov    edx,DWORD PTR [esp+0x54]
  ab27e2:	test   edx,edx
  ab27e4:	jne    ab2746
  ab27ea:	jmp    ab2bbb
  ab27ef:	mov    DWORD PTR [esp+0x50],esi
  ab27f3:	lea    eax,[ebx+0x460f8]
  ab27f9:	mov    eax,DWORD PTR [eax]
  ab27fb:	mov    DWORD PTR [esp],eax
  ab27fe:	call   20bfb2
  ab2803:	mov    DWORD PTR [esp+0x54],eax
  ab2807:	mov    DWORD PTR [esp],eax
  ab280a:	mov    DWORD PTR [esp+0x4],0x0
  ab2812:	call   ec42fc  ; ABH.GameDatas.Battle.BattleStartGameData::.ctor
  ab2817:	mov    edi,DWORD PTR [esp+0x40]
  ab281b:	mov    eax,DWORD PTR [edi+0xc]
  ab281e:	test   eax,eax
  ab2820:	je     ab2bbb
  ab2826:	mov    DWORD PTR [esp],eax
  ab2829:	mov    DWORD PTR [esp+0x4],0x0
  ab2831:	call   6e05e4  ; ABH.GameDatas.HotspotGameData::get_OverrideBattleGround
  ab2836:	mov    esi,eax
  ab2838:	mov    eax,DWORD PTR [esp+0x4c]
  ab283c:	mov    eax,DWORD PTR [eax]
  ab283e:	test   BYTE PTR [eax+0xb2],0x1
  ab2845:	je     ab2855
  ab2847:	cmp    DWORD PTR [eax+0x60],0x0
  ab284b:	jne    ab2855
  ab284d:	mov    DWORD PTR [esp],eax
  ab2850:	call   1db0b8
  ab2855:	mov    DWORD PTR [esp+0x4],esi
  ab2859:	mov    DWORD PTR [esp+0x8],0x0
  ab2861:	mov    DWORD PTR [esp],0x0
  ab2868:	call   cbedf7  ; System.String::IsNullOrEmpty
  ab286d:	test   al,al
  ab286f:	je     ab2877
  ab2871:	mov    esi,DWORD PTR [esp+0x34]
  ab2875:	jmp    ab28d1
  ab2877:	mov    eax,DWORD PTR [esp+0x4c]
  ab287b:	mov    eax,DWORD PTR [eax]
  ab287d:	test   BYTE PTR [eax+0xb2],0x1
  ab2884:	mov    esi,DWORD PTR [esp+0x34]
  ab2888:	je     ab2898
  ab288a:	cmp    DWORD PTR [eax+0x60],0x0
  ab288e:	jne    ab2898
  ab2890:	mov    DWORD PTR [esp],eax
  ab2893:	call   1db0b8
  ab2898:	mov    DWORD PTR [esp+0x4],esi
  ab289c:	mov    DWORD PTR [esp+0x8],0x0
  ab28a4:	mov    DWORD PTR [esp],0x0
  ab28ab:	call   cbedf7  ; System.String::IsNullOrEmpty
  ab28b0:	test   al,al
  ab28b2:	je     ab28d1
  ab28b4:	mov    eax,DWORD PTR [edi+0xc]
  ab28b7:	test   eax,eax
  ab28b9:	je     ab2bbb
  ab28bf:	mov    DWORD PTR [esp],eax
  ab28c2:	mov    DWORD PTR [esp+0x4],0x0
  ab28ca:	call   6e05e4  ; ABH.GameDatas.HotspotGameData::get_OverrideBattleGround
  ab28cf:	mov    esi,eax
  ab28d1:	mov    edi,DWORD PTR [esp+0x54]
  ab28d5:	test   edi,edi
  ab28d7:	je     ab2bbb
  ab28dd:	mov    DWORD PTR [edi+0x28],esi
  ab28e0:	mov    DWORD PTR [esp+0x4],0x0
  ab28e8:	mov    DWORD PTR [esp],0x0
  ab28ef:	call   106b137  ; DIContainerLogic::get_InventoryService
  ab28f4:	mov    esi,eax
  ab28f6:	lea    eax,[ebx+0x4584c]
  ab28fc:	mov    eax,DWORD PTR [eax]
  ab28fe:	test   BYTE PTR [eax+0xb2],0x1
  ab2905:	je     ab2915
  ab2907:	cmp    DWORD PTR [eax+0x60],0x0
  ab290b:	jne    ab2915
  ab290d:	mov    DWORD PTR [esp],eax
  ab2910:	call   1db0b8
  ab2915:	mov    DWORD PTR [esp+0x4],0x0
  ab291d:	mov    DWORD PTR [esp],0x0
  ab2924:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  ab2929:	test   eax,eax
  ab292b:	je     ab2bbb
  ab2931:	mov    DWORD PTR [esp],eax
  ab2934:	mov    DWORD PTR [esp+0x4],0x0
  ab293c:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
  ab2941:	test   esi,esi
  ab2943:	je     ab2bbb
  ab2949:	lea    ecx,[ebx+0x5763c]  ; literal "unlock_rage"
  ab294f:	mov    ecx,DWORD PTR [ecx]
  ab2951:	mov    DWORD PTR [esp+0x8],ecx
  ab2955:	mov    DWORD PTR [esp+0x4],eax
  ab2959:	mov    DWORD PTR [esp],esi
  ab295c:	mov    DWORD PTR [esp+0xc],0x0
  ab2964:	call   545119  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::CheckForItem
  ab2969:	mov    BYTE PTR [edi+0x2c],al
  ab296c:	mov    eax,DWORD PTR [ebp+0x14]
  ab296f:	mov    DWORD PTR [edi+0xc],eax
  ab2972:	mov    eax,DWORD PTR [esp+0x44]
  ab2976:	mov    DWORD PTR [edi+0x20],eax
  ab2979:	lea    eax,[ebx+0x4bb30]
  ab297f:	mov    esi,DWORD PTR [eax]
  ab2981:	lea    eax,[ebx+0x43550]
  ab2987:	mov    eax,DWORD PTR [eax]
  ab2989:	mov    DWORD PTR [esp],eax
  ab298c:	call   20bfb2
  ab2991:	mov    edi,eax
  ab2993:	mov    DWORD PTR [esp+0x58],esi
  ab2997:	mov    eax,DWORD PTR [esp+0x58]
  ab299b:	mov    DWORD PTR [esp+0x8],eax
  ab299f:	mov    esi,DWORD PTR [esp+0x40]
  ab29a3:	mov    DWORD PTR [esp+0x4],esi
  ab29a7:	mov    DWORD PTR [esp],edi
  ab29aa:	mov    DWORD PTR [esp+0xc],0x0
  ab29b2:	call   efe37f  ; System.AsyncCallback::.ctor
  ab29b7:	mov    eax,DWORD PTR [esp+0x54]
  ab29bb:	mov    DWORD PTR [eax+0x8],edi
  ab29be:	mov    edi,eax
  ab29c0:	mov    eax,DWORD PTR [esi+0x8]
  ab29c3:	test   eax,eax
  ab29c5:	je     ab2bbb
  ab29cb:	mov    DWORD PTR [esp],eax
  ab29ce:	mov    DWORD PTR [esp+0x4],0x0
  ab29d6:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
  ab29db:	mov    DWORD PTR [edi+0x1c],eax
  ab29de:	mov    eax,DWORD PTR [esi+0x8]
  ab29e1:	test   eax,eax
  ab29e3:	mov    ecx,DWORD PTR [esp+0x24]
  ab29e7:	je     ab2bbb
  ab29ed:	mov    ecx,DWORD PTR [ecx]
  ab29ef:	mov    DWORD PTR [esp+0x4],ecx
  ab29f3:	mov    DWORD PTR [esp],eax
  ab29f6:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab29fb:	test   eax,eax
  ab29fd:	je     ab2bbb
  ab2a03:	mov    DWORD PTR [esp],eax
  ab2a06:	mov    DWORD PTR [esp+0x4],0x0
  ab2a0e:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  ab2a13:	mov    DWORD PTR [edi+0x30],eax
  ab2a16:	mov    eax,DWORD PTR [ebp+0x18]
  ab2a19:	mov    DWORD PTR [edi+0x38],eax
  ab2a1c:	mov    eax,DWORD PTR [esi+0xc]
  ab2a1f:	test   eax,eax
  ab2a21:	je     ab2bbb
  ab2a27:	mov    ecx,DWORD PTR [esp+0x38]
  ab2a2b:	mov    ecx,DWORD PTR [ecx]
  ab2a2d:	mov    DWORD PTR [esp+0x4],ecx
  ab2a31:	mov    DWORD PTR [esp],eax
  ab2a34:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab2a39:	test   eax,eax
  ab2a3b:	je     ab2bbb
  ab2a41:	mov    DWORD PTR [esp],eax
  ab2a44:	mov    DWORD PTR [esp+0x4],0x0
  ab2a4c:	call   179b80f  ; ABH.Shared.Models.HotspotData::get_RandomSeed
  ab2a51:	mov    DWORD PTR [edi+0x34],eax
  ab2a54:	mov    eax,DWORD PTR [esp+0x50]
  ab2a58:	mov    DWORD PTR [edi+0x24],eax
  ab2a5b:	mov    eax,DWORD PTR [esp+0x2c]
  ab2a5f:	mov    eax,DWORD PTR [eax]
  ab2a61:	test   BYTE PTR [eax+0xb2],0x1
  ab2a68:	je     ab2a78
  ab2a6a:	cmp    DWORD PTR [eax+0x60],0x0
  ab2a6e:	jne    ab2a78
  ab2a70:	mov    DWORD PTR [esp],eax
  ab2a73:	call   1db0b8
  ab2a78:	mov    DWORD PTR [esp+0x4],0x0
  ab2a80:	mov    DWORD PTR [esp],0x0
  ab2a87:	call   107cf95  ; DIContainerBalancing::get_Service
  ab2a8c:	mov    esi,eax
  ab2a8e:	test   esi,esi
  ab2a90:	je     ab2bbb
  ab2a96:	mov    eax,DWORD PTR [esp+0x28]
  ab2a9a:	mov    eax,DWORD PTR [eax]
  ab2a9c:	mov    DWORD PTR [esp+0x4c],eax
  ab2aa0:	mov    ecx,DWORD PTR [eax+0xc]
  ab2aa3:	movzx  eax,WORD PTR [eax+0x2c]
  ab2aa7:	mov    DWORD PTR [esp+0x48],eax
  ab2aab:	mov    edx,DWORD PTR [esi]
  ab2aad:	mov    DWORD PTR [esp+0x50],esi
  ab2ab1:	movzx  eax,WORD PTR [edx+0xaa]
  ab2ab8:	test   eax,eax
  ab2aba:	je     ab2acb
  ab2abc:	mov    edi,DWORD PTR [edx+0x4c]
  ab2abf:	xor    esi,esi
  ab2ac1:	cmp    DWORD PTR [edi+esi*8],ecx
  ab2ac4:	je     ab2ae5
  ab2ac6:	inc    esi
  ab2ac7:	cmp    esi,eax
  ab2ac9:	jb     ab2ac1
  ab2acb:	mov    eax,DWORD PTR [esp+0x48]
  ab2acf:	mov    DWORD PTR [esp+0x8],eax
  ab2ad3:	mov    DWORD PTR [esp+0x4],ecx
  ab2ad7:	mov    esi,DWORD PTR [esp+0x50]
  ab2adb:	mov    DWORD PTR [esp],esi
  ab2ade:	call   1c1964
  ab2ae3:	jmp    ab2af8
  ab2ae5:	mov    eax,DWORD PTR [esp+0x48]
  ab2ae9:	add    eax,DWORD PTR [edi+esi*8+0x4]
  ab2aed:	lea    eax,[edx+eax*8+0xb4]
  ab2af4:	mov    esi,DWORD PTR [esp+0x50]
  ab2af8:	mov    eax,DWORD PTR [eax+0x4]
  ab2afb:	mov    ecx,DWORD PTR [esp+0x4c]
  ab2aff:	mov    DWORD PTR [esp+0x4],ecx
  ab2b03:	mov    DWORD PTR [esp],eax
  ab2b06:	call   1da450
  ab2b0b:	mov    DWORD PTR [esp+0x8],eax
  ab2b0f:	mov    ecx,DWORD PTR [esp+0x44]
  ab2b13:	mov    DWORD PTR [esp+0x4],ecx
  ab2b17:	mov    DWORD PTR [esp],esi
  ab2b1a:	call   DWORD PTR [eax]
  ab2b1c:	test   eax,eax
  ab2b1e:	mov    esi,DWORD PTR [esp+0x40]
  ab2b22:	mov    edi,DWORD PTR [esp+0x54]
  ab2b26:	je     ab2bbb
  ab2b2c:	mov    DWORD PTR [esp],eax
  ab2b2f:	mov    DWORD PTR [esp+0x4],0x0
  ab2b37:	call   16fe554  ; ABH.Shared.BalancingData.BattleBalancingData::get_EnvironmentalEffects
  ab2b3c:	mov    DWORD PTR [edi+0x40],eax
  ab2b3f:	mov    eax,DWORD PTR [esp+0x20]
  ab2b43:	mov    DWORD PTR [edi+0x44],eax
  ab2b46:	mov    eax,DWORD PTR [esp+0x30]
  ab2b4a:	mov    DWORD PTR [edi+0x3c],eax
  ab2b4d:	mov    al,BYTE PTR [ebp+0x1c]
  ab2b50:	mov    BYTE PTR [edi+0x4c],al
  ab2b53:	mov    eax,DWORD PTR [esi+0xc]
  ab2b56:	test   eax,eax
  ab2b58:	je     ab2bbb
  ab2b5a:	mov    DWORD PTR [esp],eax
  ab2b5d:	mov    DWORD PTR [esp+0x4],0x0
  ab2b65:	call   6e0921  ; ABH.GameDatas.HotspotGameData::IsDungeon
  ab2b6a:	mov    BYTE PTR [edi+0x4d],al
  ab2b6d:	mov    eax,DWORD PTR [esi+0xc]
  ab2b70:	test   eax,eax
  ab2b72:	je     ab2bbb
  ab2b74:	mov    DWORD PTR [esp],eax
  ab2b77:	mov    DWORD PTR [esp+0x4],0x0
  ab2b7f:	call   6e0a93  ; ABH.GameDatas.HotspotGameData::IsChronicleCave
  ab2b84:	mov    BYTE PTR [edi+0x4e],al
  ab2b87:	lea    esi,[ebx+0x458fc]
  ab2b8d:	mov    eax,DWORD PTR [esi]
  ab2b8f:	test   BYTE PTR [eax+0xb2],0x1
  ab2b96:	je     ab2ba8
  ab2b98:	cmp    DWORD PTR [eax+0x60],0x0
  ab2b9c:	jne    ab2ba8
  ab2b9e:	mov    DWORD PTR [esp],eax
  ab2ba1:	call   1db0b8
  ab2ba6:	mov    eax,DWORD PTR [esi]
  ab2ba8:	mov    eax,DWORD PTR [eax+0x50]
  ab2bab:	mov    DWORD PTR [eax+0x4],edi
  ab2bae:	mov    al,0x1
  ab2bb0:	movzx  eax,al
  ab2bb3:	lea    esp,[ebp-0xc]
  ab2bb6:	pop    esi
  ab2bb7:	pop    edi
  ab2bb8:	pop    ebx
  ab2bb9:	pop    ebp
  ab2bba:	ret
  ab2bbb:	call   1fbc48
  ab2bc0:	call   ab1162