
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ab3ff2:
  ab3ff2:	push   ebp
  ab3ff3:	mov    ebp,esp
  ab3ff5:	push   ebx
  ab3ff6:	push   edi
  ab3ff7:	push   esi
  ab3ff8:	and    esp,0xfffffff0
  ab3ffb:	sub    esp,0x40
  ab3ffe:	call   ab4003
  ab4003:	pop    ebx
  ab4004:	add    ebx,0x145df41
  ab400a:	mov    eax,DWORD PTR [ebp+0x14]
  ab400d:	mov    edi,DWORD PTR [ebp+0x10]
  ab4010:	mov    DWORD PTR [esp+0x38],eax
  ab4014:	mov    al,BYTE PTR [ebx+0x60d32]
  ab401a:	test   al,al
  ab401c:	jne    ab4035
  ab401e:	lea    eax,[ebx-0x6541c0]
  ab4024:	mov    eax,DWORD PTR [eax]
  ab4026:	mov    DWORD PTR [esp],eax
  ab4029:	call   1ca6e8
  ab402e:	mov    BYTE PTR [ebx+0x60d32],0x1
  ab4035:	test   edi,edi
  ab4037:	je     ab495d
  ab403d:	lea    esi,[ebx+0x4a8ac]
  ab4043:	mov    DWORD PTR [esp+0x34],esi
  ab4047:	mov    eax,DWORD PTR [esi]
  ab4049:	mov    DWORD PTR [esp+0x4],eax
  ab404d:	mov    DWORD PTR [esp],edi
  ab4050:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab4055:	mov    DWORD PTR [esp+0x30],eax
  ab4059:	mov    eax,DWORD PTR [esi]
  ab405b:	mov    DWORD PTR [esp+0x4],eax
  ab405f:	mov    DWORD PTR [esp],edi
  ab4062:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab4067:	test   eax,eax
  ab4069:	je     ab4965
  ab406f:	mov    esi,DWORD PTR [ebp+0x18]
  ab4072:	mov    DWORD PTR [esp],eax
  ab4075:	mov    DWORD PTR [esp+0x4],0x0
  ab407d:	call   179b7ec  ; ABH.Shared.Models.HotspotData::get_Score
  ab4082:	mov    edi,eax
  ab4084:	lea    eax,[ebx+0x44ec8]
  ab408a:	mov    eax,DWORD PTR [eax]
  ab408c:	test   BYTE PTR [eax+0xb2],0x1
  ab4093:	je     ab40a3
  ab4095:	cmp    DWORD PTR [eax+0x60],0x0
  ab4099:	jne    ab40a3
  ab409b:	mov    DWORD PTR [esp],eax
  ab409e:	call   1db0b8
  ab40a3:	mov    DWORD PTR [esp+0x8],edi
  ab40a7:	mov    DWORD PTR [esp+0x4],esi
  ab40ab:	mov    DWORD PTR [esp+0xc],0x0
  ab40b3:	mov    DWORD PTR [esp],0x0
  ab40ba:	call   138c91b  ; UnityEngine.Mathf::Max
  ab40bf:	mov    ecx,DWORD PTR [esp+0x30]
  ab40c3:	test   ecx,ecx
  ab40c5:	je     ab4965
  ab40cb:	mov    DWORD PTR [esp+0x4],eax
  ab40cf:	mov    DWORD PTR [esp],ecx
  ab40d2:	mov    DWORD PTR [esp+0x8],0x0
  ab40da:	call   179b7fc  ; ABH.Shared.Models.HotspotData::set_Score
  ab40df:	mov    esi,DWORD PTR [esp+0x34]
  ab40e3:	mov    eax,DWORD PTR [esi]
  ab40e5:	mov    DWORD PTR [esp+0x4],eax
  ab40e9:	mov    edi,DWORD PTR [ebp+0x10]
  ab40ec:	mov    DWORD PTR [esp],edi
  ab40ef:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab40f4:	test   eax,eax
  ab40f6:	je     ab4965
  ab40fc:	mov    DWORD PTR [esp],eax
  ab40ff:	mov    DWORD PTR [esp+0x4],0x0
  ab4107:	call   179b744  ; ABH.Shared.Models.HotspotData::get_UnlockState
  ab410c:	mov    DWORD PTR [esp+0x30],eax
  ab4110:	mov    eax,DWORD PTR [esi]
  ab4112:	mov    DWORD PTR [esp+0x4],eax
  ab4116:	mov    DWORD PTR [esp],edi
  ab4119:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab411e:	cmp    DWORD PTR [esp+0x30],0xa
  ab4123:	jle    ab42cc
  ab4129:	test   eax,eax
  ab412b:	je     ab4965
  ab4131:	mov    DWORD PTR [esp],eax
  ab4134:	mov    DWORD PTR [esp+0x4],0x0
  ab413c:	call   179b767  ; ABH.Shared.Models.HotspotData::get_StarCount
  ab4141:	cmp    eax,DWORD PTR [ebp+0x14]
  ab4144:	mov    edi,DWORD PTR [esp+0x34]
  ab4148:	jge    ab453b
  ab414e:	mov    eax,DWORD PTR [edi]
  ab4150:	mov    DWORD PTR [esp+0x4],eax
  ab4154:	mov    eax,DWORD PTR [ebp+0x10]
  ab4157:	mov    DWORD PTR [esp],eax
  ab415a:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab415f:	test   eax,eax
  ab4161:	je     ab4965
  ab4167:	mov    DWORD PTR [esp],eax
  ab416a:	mov    DWORD PTR [esp+0x8],0x0
  ab4172:	mov    DWORD PTR [esp+0x4],0xc
  ab417a:	call   179b754  ; ABH.Shared.Models.HotspotData::set_UnlockState
  ab417f:	lea    eax,[ebx+0x44d10]
  ab4185:	mov    eax,DWORD PTR [eax]
  ab4187:	mov    DWORD PTR [esp],eax
  ab418a:	call   20bfb2
  ab418f:	mov    esi,eax
  ab4191:	lea    eax,[ebx+0x49298]
  ab4197:	mov    eax,DWORD PTR [eax]
  ab4199:	mov    DWORD PTR [esp+0x4],eax
  ab419d:	mov    DWORD PTR [esp],esi
  ab41a0:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  ab41a5:	mov    eax,DWORD PTR [edi]
  ab41a7:	mov    DWORD PTR [esp+0x4],eax
  ab41ab:	mov    eax,DWORD PTR [ebp+0x10]
  ab41ae:	mov    DWORD PTR [esp],eax
  ab41b1:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab41b6:	test   eax,eax
  ab41b8:	je     ab4965
  ab41be:	mov    DWORD PTR [esp],eax
  ab41c1:	mov    DWORD PTR [esp+0x4],0x0
  ab41c9:	call   179b721  ; ABH.Shared.Models.HotspotData::get_NameId
  ab41ce:	test   esi,esi
  ab41d0:	mov    edi,esi
  ab41d2:	je     ab4965
  ab41d8:	lea    ecx,[ebx+0x57d30]  ; literal "HotspotName"
  ab41de:	mov    ecx,DWORD PTR [ecx]
  ab41e0:	lea    esi,[ebx+0x4929c]
  ab41e6:	mov    edx,DWORD PTR [esi]
  ab41e8:	mov    DWORD PTR [esp+0xc],edx
  ab41ec:	mov    DWORD PTR [esp+0x8],eax
  ab41f0:	mov    DWORD PTR [esp+0x4],ecx
  ab41f4:	mov    DWORD PTR [esp],edi
  ab41f7:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  ab41fc:	lea    eax,[ebx+0x508e0]  ; literal "0"
  ab4202:	mov    eax,DWORD PTR [eax]
  ab4204:	mov    DWORD PTR [esp+0x4],eax
  ab4208:	lea    eax,[esp+0x38]
  ab420c:	mov    DWORD PTR [esp],eax
  ab420f:	mov    DWORD PTR [esp+0x8],0x0
  ab4217:	call   fea004
  ab421c:	lea    ecx,[ebx+0x574d8]  ; literal "Performance"
  ab4222:	mov    ecx,DWORD PTR [ecx]
  ab4224:	mov    edx,DWORD PTR [esi]
  ab4226:	mov    DWORD PTR [esp+0xc],edx
  ab422a:	mov    DWORD PTR [esp+0x8],eax
  ab422e:	mov    DWORD PTR [esp+0x4],ecx
  ab4232:	mov    DWORD PTR [esp],edi
  ab4235:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  ab423a:	lea    eax,[ebx+0x4584c]
  ab4240:	mov    eax,DWORD PTR [eax]
  ab4242:	test   BYTE PTR [eax+0xb2],0x1
  ab4249:	mov    esi,ebx
  ab424b:	je     ab425d
  ab424d:	cmp    DWORD PTR [eax+0x60],0x0
  ab4251:	jne    ab425d
  ab4253:	mov    DWORD PTR [esp],eax
  ab4256:	mov    ebx,esi
  ab4258:	call   1db0b8
  ab425d:	mov    DWORD PTR [esp+0x2c],edi
  ab4261:	mov    DWORD PTR [esp+0x8],0x0
  ab4269:	mov    DWORD PTR [esp+0x4],0x1
  ab4271:	mov    DWORD PTR [esp],0x0
  ab4278:	mov    ebx,esi
  ab427a:	call   1076512  ; DIContainerInfrastructure::GetAnalyticsSystem
  ab427f:	test   eax,eax
  ab4281:	je     ab496f
  ab4287:	lea    ecx,[esi+0x45e5c]
  ab428d:	mov    ebx,DWORD PTR [ecx]
  ab428f:	lea    ecx,[esi+0x57d3c]
  ab4295:	mov    DWORD PTR [esp+0x30],esi
  ab4299:	mov    ecx,DWORD PTR [ecx]
  ab429b:	mov    DWORD PTR [esp+0x24],ecx
  ab429f:	mov    ecx,DWORD PTR [eax]
  ab42a1:	mov    DWORD PTR [esp+0x28],eax
  ab42a5:	movzx  edx,WORD PTR [ecx+0xaa]
  ab42ac:	test   edx,edx
  ab42ae:	je     ab467b
  ab42b4:	mov    esi,DWORD PTR [ecx+0x4c]
  ab42b7:	xor    edi,edi
  ab42b9:	cmp    DWORD PTR [esi+edi*8],ebx
  ab42bc:	je     ab469b
  ab42c2:	inc    edi
  ab42c3:	cmp    edi,edx
  ab42c5:	jb     ab42b9
  ab42c7:	jmp    ab467b
  ab42cc:	test   eax,eax
  ab42ce:	je     ab4965
  ab42d4:	mov    DWORD PTR [esp],eax
  ab42d7:	mov    DWORD PTR [esp+0x8],0x0
  ab42df:	mov    DWORD PTR [esp+0x4],0xa
  ab42e7:	call   179b754  ; ABH.Shared.Models.HotspotData::set_UnlockState
  ab42ec:	lea    eax,[ebx+0x4a94c]
  ab42f2:	mov    DWORD PTR [esp+0x20],eax
  ab42f6:	mov    eax,DWORD PTR [eax]
  ab42f8:	mov    DWORD PTR [esp+0x4],eax
  ab42fc:	mov    DWORD PTR [esp],edi
  ab42ff:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab4304:	test   eax,eax
  ab4306:	je     ab4965
  ab430c:	mov    DWORD PTR [esp],eax
  ab430f:	mov    DWORD PTR [esp+0x4],0x0
  ab4317:	call   17014b9  ; ABH.Shared.BalancingData.HotspotBalancingData::get_MaxLevel
  ab431c:	mov    esi,eax
  ab431e:	lea    eax,[ebx+0x4584c]
  ab4324:	mov    DWORD PTR [esp+0x30],eax
  ab4328:	mov    eax,DWORD PTR [eax]
  ab432a:	test   BYTE PTR [eax+0xb2],0x1
  ab4331:	je     ab4341
  ab4333:	cmp    DWORD PTR [eax+0x60],0x0
  ab4337:	jne    ab4341
  ab4339:	mov    DWORD PTR [esp],eax
  ab433c:	call   1db0b8
  ab4341:	mov    DWORD PTR [esp+0x4],0x0
  ab4349:	mov    DWORD PTR [esp],0x0
  ab4350:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  ab4355:	test   eax,eax
  ab4357:	je     ab4965
  ab435d:	lea    ecx,[ebx+0x4a210]
  ab4363:	mov    ecx,DWORD PTR [ecx]
  ab4365:	mov    DWORD PTR [esp+0x4],ecx
  ab4369:	mov    DWORD PTR [esp],eax
  ab436c:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab4371:	test   eax,eax
  ab4373:	je     ab4965
  ab4379:	mov    DWORD PTR [esp],eax
  ab437c:	mov    DWORD PTR [esp+0x4],0x0
  ab4384:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  ab4389:	test   esi,esi
  ab438b:	je     ab43a9
  ab438d:	mov    DWORD PTR [esp+0x8],eax
  ab4391:	mov    DWORD PTR [esp+0x4],esi
  ab4395:	mov    DWORD PTR [esp+0xc],0x0
  ab439d:	mov    DWORD PTR [esp],0x0
  ab43a4:	call   1247844  ; System.Math::Min
  ab43a9:	mov    DWORD PTR [esp+0x2c],eax
  ab43ad:	mov    edi,DWORD PTR [esp+0x34]
  ab43b1:	mov    eax,DWORD PTR [edi]
  ab43b3:	mov    DWORD PTR [esp+0x4],eax
  ab43b7:	mov    esi,DWORD PTR [ebp+0x10]
  ab43ba:	mov    DWORD PTR [esp],esi
  ab43bd:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab43c2:	test   eax,eax
  ab43c4:	je     ab4965
  ab43ca:	mov    ecx,DWORD PTR [esp+0x2c]
  ab43ce:	mov    DWORD PTR [esp+0x4],ecx
  ab43d2:	mov    DWORD PTR [esp],eax
  ab43d5:	mov    DWORD PTR [esp+0x8],0x0
  ab43dd:	call   179b865  ; ABH.Shared.Models.HotspotData::set_CompletionPlayerLevel
  ab43e2:	lea    eax,[ebx+0x44d10]
  ab43e8:	mov    eax,DWORD PTR [eax]
  ab43ea:	mov    DWORD PTR [esp],eax
  ab43ed:	call   20bfb2
  ab43f2:	mov    esi,eax
  ab43f4:	lea    eax,[ebx+0x49298]
  ab43fa:	mov    eax,DWORD PTR [eax]
  ab43fc:	mov    DWORD PTR [esp+0x4],eax
  ab4400:	mov    DWORD PTR [esp],esi
  ab4403:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  ab4408:	mov    eax,DWORD PTR [edi]
  ab440a:	mov    DWORD PTR [esp+0x4],eax
  ab440e:	mov    eax,DWORD PTR [ebp+0x10]
  ab4411:	mov    DWORD PTR [esp],eax
  ab4414:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab4419:	test   eax,eax
  ab441b:	je     ab4965
  ab4421:	mov    DWORD PTR [esp],eax
  ab4424:	mov    DWORD PTR [esp+0x4],0x0
  ab442c:	call   179b721  ; ABH.Shared.Models.HotspotData::get_NameId
  ab4431:	test   esi,esi
  ab4433:	mov    edi,esi
  ab4435:	je     ab4965
  ab443b:	lea    ecx,[ebx+0x57d30]  ; literal "HotspotName"
  ab4441:	mov    ecx,DWORD PTR [ecx]
  ab4443:	lea    esi,[ebx+0x4929c]
  ab4449:	mov    edx,DWORD PTR [esi]
  ab444b:	mov    DWORD PTR [esp+0xc],edx
  ab444f:	mov    DWORD PTR [esp+0x8],eax
  ab4453:	mov    DWORD PTR [esp+0x4],ecx
  ab4457:	mov    DWORD PTR [esp],edi
  ab445a:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  ab445f:	lea    eax,[ebx+0x508e0]  ; literal "0"
  ab4465:	mov    eax,DWORD PTR [eax]
  ab4467:	mov    DWORD PTR [esp+0x4],eax
  ab446b:	lea    eax,[esp+0x38]
  ab446f:	mov    DWORD PTR [esp],eax
  ab4472:	mov    DWORD PTR [esp+0x8],0x0
  ab447a:	call   fea004
  ab447f:	lea    ecx,[ebx+0x574d8]  ; literal "Performance"
  ab4485:	mov    ecx,DWORD PTR [ecx]
  ab4487:	mov    edx,DWORD PTR [esi]
  ab4489:	mov    DWORD PTR [esp+0xc],edx
  ab448d:	mov    DWORD PTR [esp+0x8],eax
  ab4491:	mov    DWORD PTR [esp+0x4],ecx
  ab4495:	mov    DWORD PTR [esp],edi
  ab4498:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  ab449d:	mov    eax,DWORD PTR [esp+0x30]
  ab44a1:	mov    eax,DWORD PTR [eax]
  ab44a3:	test   BYTE PTR [eax+0xb2],0x1
  ab44aa:	je     ab44ba
  ab44ac:	cmp    DWORD PTR [eax+0x60],0x0
  ab44b0:	jne    ab44ba
  ab44b2:	mov    DWORD PTR [esp],eax
  ab44b5:	call   1db0b8
  ab44ba:	mov    DWORD PTR [esp+0x2c],edi
  ab44be:	mov    DWORD PTR [esp+0x8],0x0
  ab44c6:	mov    DWORD PTR [esp+0x4],0x1
  ab44ce:	mov    DWORD PTR [esp],0x0
  ab44d5:	call   1076512  ; DIContainerInfrastructure::GetAnalyticsSystem
  ab44da:	mov    edx,eax
  ab44dc:	test   edx,edx
  ab44de:	je     ab4965
  ab44e4:	lea    ecx,[ebx+0x45e5c]
  ab44ea:	mov    eax,DWORD PTR [ecx]
  ab44ec:	lea    ecx,[ebx+0x57d34]  ; literal "HotspotResolvedNew"
  ab44f2:	mov    ecx,DWORD PTR [ecx]
  ab44f4:	mov    DWORD PTR [esp+0x24],ecx
  ab44f8:	mov    ecx,DWORD PTR [edx]
  ab44fa:	mov    DWORD PTR [esp+0x28],edx
  ab44fe:	movzx  edx,WORD PTR [ecx+0xaa]
  ab4505:	test   edx,edx
  ab4507:	je     ab451c
  ab4509:	mov    esi,DWORD PTR [ecx+0x4c]
  ab450c:	xor    edi,edi
  ab450e:	cmp    DWORD PTR [esi+edi*8],eax
  ab4511:	je     ab46d7
  ab4517:	inc    edi
  ab4518:	cmp    edi,edx
  ab451a:	jb     ab450e
  ab451c:	mov    DWORD PTR [esp+0x4],eax
  ab4520:	mov    esi,DWORD PTR [esp+0x28]
  ab4524:	mov    DWORD PTR [esp],esi
  ab4527:	mov    DWORD PTR [esp+0x8],0x4
  ab452f:	call   1c1964
  ab4534:	mov    ecx,eax
  ab4536:	jmp    ab46e6
  ab453b:	lea    eax,[ebx+0x44d10]
  ab4541:	mov    eax,DWORD PTR [eax]
  ab4543:	mov    DWORD PTR [esp],eax
  ab4546:	call   20bfb2
  ab454b:	mov    esi,eax
  ab454d:	lea    eax,[ebx+0x49298]
  ab4553:	mov    eax,DWORD PTR [eax]
  ab4555:	mov    DWORD PTR [esp+0x4],eax
  ab4559:	mov    DWORD PTR [esp],esi
  ab455c:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  ab4561:	mov    eax,DWORD PTR [edi]
  ab4563:	mov    DWORD PTR [esp+0x4],eax
  ab4567:	mov    eax,DWORD PTR [ebp+0x10]
  ab456a:	mov    DWORD PTR [esp],eax
  ab456d:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab4572:	test   eax,eax
  ab4574:	je     ab4965
  ab457a:	mov    DWORD PTR [esp],eax
  ab457d:	mov    DWORD PTR [esp+0x4],0x0
  ab4585:	call   179b721  ; ABH.Shared.Models.HotspotData::get_NameId
  ab458a:	test   esi,esi
  ab458c:	mov    edi,esi
  ab458e:	je     ab4965
  ab4594:	lea    ecx,[ebx+0x57d30]  ; literal "HotspotName"
  ab459a:	mov    ecx,DWORD PTR [ecx]
  ab459c:	lea    esi,[ebx+0x4929c]
  ab45a2:	mov    edx,DWORD PTR [esi]
  ab45a4:	mov    DWORD PTR [esp+0xc],edx
  ab45a8:	mov    DWORD PTR [esp+0x8],eax
  ab45ac:	mov    DWORD PTR [esp+0x4],ecx
  ab45b0:	mov    DWORD PTR [esp],edi
  ab45b3:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  ab45b8:	lea    eax,[ebx+0x508e0]  ; literal "0"
  ab45be:	mov    eax,DWORD PTR [eax]
  ab45c0:	mov    DWORD PTR [esp+0x4],eax
  ab45c4:	lea    eax,[esp+0x38]
  ab45c8:	mov    DWORD PTR [esp],eax
  ab45cb:	mov    DWORD PTR [esp+0x8],0x0
  ab45d3:	call   fea004
  ab45d8:	lea    ecx,[ebx+0x574d8]  ; literal "Performance"
  ab45de:	mov    ecx,DWORD PTR [ecx]
  ab45e0:	mov    edx,DWORD PTR [esi]
  ab45e2:	mov    DWORD PTR [esp+0xc],edx
  ab45e6:	mov    DWORD PTR [esp+0x8],eax
  ab45ea:	mov    DWORD PTR [esp+0x4],ecx
  ab45ee:	mov    DWORD PTR [esp],edi
  ab45f1:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  ab45f6:	lea    eax,[ebx+0x4584c]
  ab45fc:	mov    eax,DWORD PTR [eax]
  ab45fe:	test   BYTE PTR [eax+0xb2],0x1
  ab4605:	mov    esi,ebx
  ab4607:	je     ab4619
  ab4609:	cmp    DWORD PTR [eax+0x60],0x0
  ab460d:	jne    ab4619
  ab460f:	mov    DWORD PTR [esp],eax
  ab4612:	mov    ebx,esi
  ab4614:	call   1db0b8
  ab4619:	mov    DWORD PTR [esp+0x2c],edi
  ab461d:	mov    DWORD PTR [esp+0x8],0x0
  ab4625:	mov    DWORD PTR [esp+0x4],0x1
  ab462d:	mov    DWORD PTR [esp],0x0
  ab4634:	mov    ebx,esi
  ab4636:	call   1076512  ; DIContainerInfrastructure::GetAnalyticsSystem
  ab463b:	test   eax,eax
  ab463d:	je     ab496f
  ab4643:	lea    ecx,[esi+0x45e5c]
  ab4649:	mov    ebx,DWORD PTR [ecx]
  ab464b:	lea    ecx,[esi+0x57d40]
  ab4651:	mov    DWORD PTR [esp+0x30],esi
  ab4655:	mov    ecx,DWORD PTR [ecx]
  ab4657:	mov    DWORD PTR [esp+0x24],ecx
  ab465b:	mov    ecx,DWORD PTR [eax]
  ab465d:	mov    DWORD PTR [esp+0x28],eax
  ab4661:	movzx  edx,WORD PTR [ecx+0xaa]
  ab4668:	test   edx,edx
  ab466a:	je     ab467b
  ab466c:	mov    esi,DWORD PTR [ecx+0x4c]
  ab466f:	xor    edi,edi
  ab4671:	cmp    DWORD PTR [esi+edi*8],ebx
  ab4674:	je     ab469b
  ab4676:	inc    edi
  ab4677:	cmp    edi,edx
  ab4679:	jb     ab4671
  ab467b:	mov    DWORD PTR [esp+0x4],ebx
  ab467f:	mov    esi,DWORD PTR [esp+0x28]
  ab4683:	mov    DWORD PTR [esp],esi
  ab4686:	mov    DWORD PTR [esp+0x8],0x4
  ab468e:	mov    ebx,DWORD PTR [esp+0x30]
  ab4692:	call   1c1964
  ab4697:	mov    ecx,eax
  ab4699:	jmp    ab46ae
  ab469b:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ab469f:	lea    ecx,[ecx+eax*8+0xd4]
  ab46a6:	mov    ebx,DWORD PTR [esp+0x30]
  ab46aa:	mov    esi,DWORD PTR [esp+0x28]
  ab46ae:	mov    eax,DWORD PTR [ecx+0x4]
  ab46b1:	mov    DWORD PTR [esp+0x10],eax
  ab46b5:	mov    eax,DWORD PTR [esp+0x2c]
  ab46b9:	mov    DWORD PTR [esp+0x8],eax
  ab46bd:	mov    eax,DWORD PTR [esp+0x24]
  ab46c1:	mov    DWORD PTR [esp+0x4],eax
  ab46c5:	mov    DWORD PTR [esp],esi
  ab46c8:	mov    DWORD PTR [esp+0xc],0x0
  ab46d0:	call   DWORD PTR [ecx]
  ab46d2:	jmp    ab4890
  ab46d7:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ab46db:	lea    ecx,[ecx+eax*8+0xd4]
  ab46e2:	mov    esi,DWORD PTR [esp+0x28]
  ab46e6:	mov    eax,DWORD PTR [ecx+0x4]
  ab46e9:	mov    DWORD PTR [esp+0x10],eax
  ab46ed:	mov    eax,DWORD PTR [esp+0x2c]
  ab46f1:	mov    DWORD PTR [esp+0x8],eax
  ab46f5:	mov    eax,DWORD PTR [esp+0x24]
  ab46f9:	mov    DWORD PTR [esp+0x4],eax
  ab46fd:	mov    DWORD PTR [esp],esi
  ab4700:	mov    DWORD PTR [esp+0xc],0x0
  ab4708:	call   DWORD PTR [ecx]
  ab470a:	mov    DWORD PTR [esp+0x4],0x0
  ab4712:	mov    DWORD PTR [esp],0x0
  ab4719:	call   108dc18  ; DIContainerInfrastructure::get_EventSystemStateManager
  ab471e:	lea    ecx,[ebx+0x44ebc]
  ab4724:	mov    ecx,DWORD PTR [ecx]
  ab4726:	test   BYTE PTR [ecx+0xb2],0x1
  ab472d:	mov    esi,DWORD PTR [ebp+0x10]
  ab4730:	je     ab4744
  ab4732:	cmp    DWORD PTR [ecx+0x60],0x0
  ab4736:	jne    ab4744
  ab4738:	mov    DWORD PTR [esp],ecx
  ab473b:	mov    edi,eax
  ab473d:	call   1db0b8
  ab4742:	mov    eax,edi
  ab4744:	mov    DWORD PTR [esp+0x4],eax
  ab4748:	mov    DWORD PTR [esp+0xc],0x0
  ab4750:	mov    DWORD PTR [esp+0x8],0x0
  ab4758:	mov    DWORD PTR [esp],0x0
  ab475f:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  ab4764:	test   al,al
  ab4766:	mov    edi,DWORD PTR [esp+0x34]
  ab476a:	je     ab4897
  ab4770:	mov    eax,DWORD PTR [esp+0x30]
  ab4774:	mov    eax,DWORD PTR [eax]
  ab4776:	test   BYTE PTR [eax+0xb2],0x1
  ab477d:	je     ab478d
  ab477f:	cmp    DWORD PTR [eax+0x60],0x0
  ab4783:	jne    ab478d
  ab4785:	mov    DWORD PTR [esp],eax
  ab4788:	call   1db0b8
  ab478d:	mov    DWORD PTR [esp+0x4],0x0
  ab4795:	mov    DWORD PTR [esp],0x0
  ab479c:	call   108dc18  ; DIContainerInfrastructure::get_EventSystemStateManager
  ab47a1:	test   eax,eax
  ab47a3:	je     ab4965
  ab47a9:	mov    DWORD PTR [esp],eax
  ab47ac:	mov    DWORD PTR [esp+0x4],0x0
  ab47b4:	call   a9935e  ; EventSystemStateMgr::get_IsInitialized
  ab47b9:	test   al,al
  ab47bb:	je     ab4897
  ab47c1:	mov    eax,DWORD PTR [esp+0x30]
  ab47c5:	mov    eax,DWORD PTR [eax]
  ab47c7:	test   BYTE PTR [eax+0xb2],0x1
  ab47ce:	je     ab47de
  ab47d0:	cmp    DWORD PTR [eax+0x60],0x0
  ab47d4:	jne    ab47de
  ab47d6:	mov    DWORD PTR [esp],eax
  ab47d9:	call   1db0b8
  ab47de:	mov    DWORD PTR [esp+0x4],0x0
  ab47e6:	mov    DWORD PTR [esp],0x0
  ab47ed:	call   108dc18  ; DIContainerInfrastructure::get_EventSystemStateManager
  ab47f2:	mov    DWORD PTR [esp+0x30],eax
  ab47f6:	mov    eax,DWORD PTR [esp+0x20]
  ab47fa:	mov    eax,DWORD PTR [eax]
  ab47fc:	mov    DWORD PTR [esp+0x4],eax
  ab4800:	mov    DWORD PTR [esp],esi
  ab4803:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  ab4808:	test   eax,eax
  ab480a:	je     ab4965
  ab4810:	mov    DWORD PTR [esp],eax
  ab4813:	mov    DWORD PTR [esp+0x4],0x0
  ab481b:	call   1701284  ; ABH.Shared.BalancingData.HotspotBalancingData::get_NameId
  ab4820:	mov    edi,eax
  ab4822:	lea    esi,[ebx+0x430e4]
  ab4828:	mov    eax,DWORD PTR [esi]
  ab482a:	test   BYTE PTR [eax+0xb2],0x1
  ab4831:	je     ab4841
  ab4833:	cmp    DWORD PTR [eax+0x60],0x0
  ab4837:	jne    ab4841
  ab4839:	mov    DWORD PTR [esp],eax
  ab483c:	call   1db0b8
  ab4841:	test   edi,edi
  ab4843:	je     ab4965
  ab4849:	mov    eax,DWORD PTR [esi]
  ab484b:	mov    eax,DWORD PTR [eax+0x50]
  ab484e:	mov    eax,DWORD PTR [eax]
  ab4850:	lea    ecx,[ebx+0x57d38]  ; literal "_battleground"
  ab4856:	mov    ecx,DWORD PTR [ecx]
  ab4858:	mov    DWORD PTR [esp+0x8],eax
  ab485c:	mov    DWORD PTR [esp+0x4],ecx
  ab4860:	mov    DWORD PTR [esp],edi
  ab4863:	mov    DWORD PTR [esp+0xc],0x0
  ab486b:	call   cbfb3e  ; System.String::Replace
  ab4870:	mov    ecx,DWORD PTR [esp+0x30]
  ab4874:	test   ecx,ecx
  ab4876:	je     ab4965
  ab487c:	mov    DWORD PTR [esp+0x4],eax
  ab4880:	mov    DWORD PTR [esp],ecx
  ab4883:	mov    DWORD PTR [esp+0x8],0x0
  ab488b:	call   a9b518  ; EventSystemStateMgr::RemoveEventItemFromLocation
  ab4890:	mov    esi,DWORD PTR [ebp+0x10]
  ab4893:	mov    edi,DWORD PTR [esp+0x34]
  ab4897:	mov    eax,DWORD PTR [edi]
  ab4899:	mov    DWORD PTR [esp+0x4],eax
  ab489d:	mov    DWORD PTR [esp],esi
  ab48a0:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab48a5:	test   eax,eax
  ab48a7:	je     ab4965
  ab48ad:	mov    DWORD PTR [esp],eax
  ab48b0:	mov    DWORD PTR [esp+0x8],0x0
  ab48b8:	mov    DWORD PTR [esp+0x4],0x0
  ab48c0:	call   179b81f  ; ABH.Shared.Models.HotspotData::set_RandomSeed
  ab48c5:	mov    eax,DWORD PTR [esp+0x38]
  ab48c9:	mov    DWORD PTR [esp+0x30],eax
  ab48cd:	mov    eax,DWORD PTR [edi]
  ab48cf:	mov    DWORD PTR [esp+0x4],eax
  ab48d3:	mov    DWORD PTR [esp],esi
  ab48d6:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab48db:	test   eax,eax
  ab48dd:	je     ab4965
  ab48e3:	mov    DWORD PTR [esp],eax
  ab48e6:	mov    DWORD PTR [esp+0x4],0x0
  ab48ee:	call   179b767  ; ABH.Shared.Models.HotspotData::get_StarCount
  ab48f3:	cmp    DWORD PTR [esp+0x30],eax
  ab48f7:	jle    ab4937
  ab48f9:	mov    eax,DWORD PTR [esp+0x34]
  ab48fd:	mov    eax,DWORD PTR [eax]
  ab48ff:	mov    DWORD PTR [esp+0x4],eax
  ab4903:	mov    DWORD PTR [esp],esi
  ab4906:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  ab490b:	test   eax,eax
  ab490d:	je     ab4965
  ab490f:	mov    ecx,DWORD PTR [esp+0x38]
  ab4913:	mov    DWORD PTR [esp+0x4],ecx
  ab4917:	mov    DWORD PTR [esp],eax
  ab491a:	mov    DWORD PTR [esp+0x8],0x0
  ab4922:	call   179b777  ; ABH.Shared.Models.HotspotData::set_StarCount
  ab4927:	mov    DWORD PTR [esp],esi
  ab492a:	mov    DWORD PTR [esp+0x4],0x0
  ab4932:	call   6e0382  ; ABH.GameDatas.HotspotGameData::RaiseHotspotChanged
  ab4937:	mov    edi,DWORD PTR [ebp+0xc]
  ab493a:	mov    esi,DWORD PTR [ebp+0x8]
  ab493d:	test   edi,edi
  ab493f:	je     ab4951
  ab4941:	mov    DWORD PTR [esp],edi
  ab4944:	mov    DWORD PTR [esp+0x4],0x0
  ab494c:	call   6cb120  ; ABH.GameDatas.PlayerGameData::SavePlayerData
  ab4951:	mov    DWORD PTR [esp+0x4],edi
  ab4955:	mov    DWORD PTR [esp],esi
  ab4958:	call   ab497d  ; ABH.Services.Logic.WorldMapService::EvaluateStarCollection
  ab495d:	lea    esp,[ebp-0xc]
  ab4960:	pop    esi
  ab4961:	pop    edi
  ab4962:	pop    ebx
  ab4963:	pop    ebp
  ab4964:	ret
  ab4965:	call   1fbc48
  ab496a:	call   ab1162
  ab496f:	mov    ebx,esi
  ab4971:	call   1fbc48
  ab4976:	mov    ebx,esi
  ab4978:	call   ab1162