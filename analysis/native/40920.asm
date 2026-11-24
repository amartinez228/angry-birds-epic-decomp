
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

004fb23d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ceb5f>:
  4fb23d:	55                   	push   ebp
  4fb23e:	89 e5                	mov    ebp,esp
  4fb240:	53                   	push   ebx
  4fb241:	57                   	push   edi
  4fb242:	56                   	push   esi
  4fb243:	83 e4 f0             	and    esp,0xfffffff0
  4fb246:	81 ec 90 00 00 00    	sub    esp,0x90
  4fb24c:	e8 00 00 00 00       	call   4fb251 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ceb73>
  4fb251:	5b                   	pop    ebx
  4fb252:	81 c3 f3 6c a1 01    	add    ebx,0x1a16cf3
  4fb258:	8a 83 d1 d4 05 00    	mov    al,BYTE PTR [ebx+0x5d4d1]
  4fb25e:	84 c0                	test   al,al
  4fb260:	75 17                	jne    4fb279 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ceb9b>
  4fb262:	8d 83 54 0b 99 ff    	lea    eax,[ebx-0x66f4ac]
  4fb268:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb26a:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb26d:	e8 76 f4 cc ff       	call   1ca6e8 <_ZNSt6vectorISsSaISsEE19_M_emplace_back_auxIJSsEEEvDpOT_+0x4e3e>
  4fb272:	c6 83 d1 d4 05 00 01 	mov    BYTE PTR [ebx+0x5d4d1],0x1
  4fb279:	8d 83 f4 5f 04 00    	lea    eax,[ebx+0x45ff4]
  4fb27f:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb281:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb284:	e8 29 0d d1 ff       	call   20bfb2 <_ZNSt8_Rb_treeISsSsSt9_IdentityISsESt4lessISsESaISsEE8_M_eraseEPSt13_Rb_tree_nodeISsE+0xb6b6>
  4fb289:	89 c7                	mov    edi,eax
  4fb28b:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb28e:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb295:	00 
  4fb296:	e8 93 b0 d4 00       	call   124632e <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x1019c50>  ; System.Object::.ctor
  4fb29b:	8d 83 90 52 04 00    	lea    eax,[ebx+0x45290]
  4fb2a1:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb2a3:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb2a6:	e8 07 0d d1 ff       	call   20bfb2 <_ZNSt8_Rb_treeISsSsSt9_IdentityISsESt4lessISsESaISsEE8_M_eraseEPSt13_Rb_tree_nodeISsE+0xb6b6>
  4fb2ab:	89 c6                	mov    esi,eax
  4fb2ad:	8d 83 08 97 04 00    	lea    eax,[ebx+0x49708]
  4fb2b3:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb2b5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb2b9:	89 34 24             	mov    DWORD PTR [esp],esi
  4fb2bc:	e8 2e 6f fd ff       	call   4d21ef <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2a5b11>
  4fb2c1:	89 b4 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],esi
  4fb2c8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4fb2cb:	85 c0                	test   eax,eax
  4fb2cd:	0f 84 5a 08 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb2d3:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  4fb2d7:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  4fb2da:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb2dd:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb2e4:	00 
  4fb2e5:	e8 25 36 20 01       	call   16fe90f <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14d2231>  ; ABH.Shared.BalancingData.BattleParticipantTableBalancingData::get_BattleParticipants
  4fb2ea:	89 c6                	mov    esi,eax
  4fb2ec:	85 ff                	test   edi,edi
  4fb2ee:	0f 84 39 08 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb2f4:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb2f7:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb2fe:	00 
  4fb2ff:	e8 f0 64 9c 00       	call   ec17f4 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0xc95116>  ; ABH.GameDatas.Battle.BattleGameData::get_BattleLevel
  4fb304:	8d 84 24 88 00 00 00 	lea    eax,[esp+0x88]
  4fb30b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  4fb30f:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
  4fb313:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fb317:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4fb31a:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb31d:	e8 3f 17 00 00       	call   4fca61 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2d0383>  ; ABH.Services.Logic.BattleService::GeneratePercentagePigGameDataList
  4fb322:	89 c6                	mov    esi,eax
  4fb324:	89 74 24 54          	mov    DWORD PTR [esp+0x54],esi
  4fb328:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb32f:	00 
  4fb330:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  4fb337:	e8 62 38 18 01       	call   167eb9e <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14524c0>  ; UnityEngine.Random::get_value
  4fb33c:	d9 5c 24 74          	fstp   DWORD PTR [esp+0x74]
  4fb340:	85 f6                	test   esi,esi
  4fb342:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  4fb346:	0f 84 e1 07 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb34c:	f3 0f 10 44 24 74    	movss  xmm0,DWORD PTR [esp+0x74]
  4fb352:	f3 0f 59 83 d4 03 9b 	mulss  xmm0,DWORD PTR [ebx-0x64fc2c]
  4fb359:	ff 
  4fb35a:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  4fb360:	8b bc 24 88 00 00 00 	mov    edi,DWORD PTR [esp+0x88]
  4fb367:	31 f6                	xor    esi,esi
  4fb369:	8d 83 38 af 04 00    	lea    eax,[ebx+0x4af38]
  4fb36f:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  4fb373:	eb 01                	jmp    4fb376 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cec98>
  4fb375:	46                   	inc    esi
  4fb376:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  4fb37a:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb37c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb380:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  4fb384:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb387:	e8 6b 93 fc ff       	call   4c46f7 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298019>
  4fb38c:	39 c6                	cmp    esi,eax
  4fb38e:	0f 8d 9b 00 00 00    	jge    4fb42f <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ced51>
  4fb394:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
  4fb398:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  4fb39c:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb39e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb3a2:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  4fb3a6:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb3a9:	e8 49 93 fc ff       	call   4c46f7 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298019>
  4fb3ae:	89 c6                	mov    esi,eax
  4fb3b0:	85 ff                	test   edi,edi
  4fb3b2:	0f 84 75 07 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb3b8:	8d 83 f0 a4 04 00    	lea    eax,[ebx+0x4a4f0]
  4fb3be:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb3c0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb3c4:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb3c7:	e8 c6 a0 fd ff       	call   4d5492 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2a8db4>
  4fb3cc:	39 c6                	cmp    esi,eax
  4fb3ce:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
  4fb3d2:	75 5b                	jne    4fb42f <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ced51>
  4fb3d4:	8d 83 0c a3 04 00    	lea    eax,[ebx+0x4a30c]
  4fb3da:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb3dc:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb3e0:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fb3e4:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb3e7:	e8 b6 a0 fd ff       	call   4d54a2 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2a8dc4>
  4fb3ec:	d9 5c 24 70          	fstp   DWORD PTR [esp+0x70]
  4fb3f0:	f3 0f 10 44 24 70    	movss  xmm0,DWORD PTR [esp+0x70]
  4fb3f6:	0f 2e 44 24 48       	ucomiss xmm0,DWORD PTR [esp+0x48]
  4fb3fb:	0f 82 74 ff ff ff    	jb     4fb375 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cec97>
  4fb401:	8d 83 40 af 04 00    	lea    eax,[ebx+0x4af40]
  4fb407:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb409:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb40d:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fb411:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  4fb415:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb418:	e8 ea 92 fc ff       	call   4c4707 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298029>
  4fb41d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4fb420:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb422:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb426:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  4fb42a:	e8 70 15 00 00       	call   4fc99f <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2d02c1>  ; ABH.Services.Logic.BattleService::AddPigCombatant
  4fb42f:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  4fb432:	83 7e 2c 00          	cmp    DWORD PTR [esi+0x2c],0x0
  4fb436:	75 55                	jne    4fb48d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cedaf>
  4fb438:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
  4fb43f:	00 
  4fb440:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [esp+0x8],0x7fffffff
  4fb447:	7f 
  4fb448:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  4fb44f:	00 
  4fb450:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  4fb457:	e8 aa 36 18 01       	call   167eb06 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x1452428>  ; UnityEngine.Random::Range
  4fb45c:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  4fb460:	8d 83 f8 44 04 00    	lea    eax,[ebx+0x444f8]
  4fb466:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb468:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb46b:	e8 42 0b d1 ff       	call   20bfb2 <_ZNSt8_Rb_treeISsSsSt9_IdentityISsESt4lessISsESaISsEE8_M_eraseEPSt13_Rb_tree_nodeISsE+0xb6b6>
  4fb470:	89 c7                	mov    edi,eax
  4fb472:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  4fb476:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb47a:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb47d:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  4fb484:	00 
  4fb485:	e8 ad 36 d6 00       	call   125eb37 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x1032459>  ; System.Random::.ctor
  4fb48a:	89 7e 2c             	mov    DWORD PTR [esi+0x2c],edi
  4fb48d:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  4fb490:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb493:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb49a:	00 
  4fb49b:	e8 6f 34 20 01       	call   16fe90f <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14d2231>  ; ABH.Shared.BalancingData.BattleParticipantTableBalancingData::get_BattleParticipants
  4fb4a0:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
  4fb4a4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb4a8:	e8 07 12 00 00       	call   4fc6b4 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cffd6>  ; ABH.Services.Logic.BattleService::GenerateWeightedPigGameDataList
  4fb4ad:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  4fb4b1:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb4b4:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb4bb:	00 
  4fb4bc:	e8 4e 34 20 01       	call   16fe90f <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14d2231>  ; ABH.Shared.BalancingData.BattleParticipantTableBalancingData::get_BattleParticipants
  4fb4c1:	8d b3 f0 5f 04 00    	lea    esi,[ebx+0x45ff0]
  4fb4c7:	8b 0e                	mov    ecx,DWORD PTR [esi]
  4fb4c9:	8b 49 50             	mov    ecx,DWORD PTR [ecx+0x50]
  4fb4cc:	83 79 08 00          	cmp    DWORD PTR [ecx+0x8],0x0
  4fb4d0:	75 6b                	jne    4fb53d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cee5f>
  4fb4d2:	8d 8b 44 af 04 00    	lea    ecx,[ebx+0x4af44]
  4fb4d8:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb4da:	89 4c 24 50          	mov    DWORD PTR [esp+0x50],ecx
  4fb4de:	8d 8b f8 5f 04 00    	lea    ecx,[ebx+0x45ff8]
  4fb4e4:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb4e6:	89 0c 24             	mov    DWORD PTR [esp],ecx
  4fb4e9:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  4fb4ed:	e8 c0 0a d1 ff       	call   20bfb2 <_ZNSt8_Rb_treeISsSsSt9_IdentityISsESt4lessISsESaISsEE8_M_eraseEPSt13_Rb_tree_nodeISsE+0xb6b6>
  4fb4f2:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  4fb4f6:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  4fb4fa:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
  4fb501:	8d 8b 48 af 04 00    	lea    ecx,[ebx+0x4af48]
  4fb507:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb509:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  4fb50d:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  4fb514:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  4fb518:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb51b:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb522:	00 
  4fb523:	e8 e4 2b 0a 01       	call   159e10c <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x1371a2e>
  4fb528:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  4fb52c:	8b 0e                	mov    ecx,DWORD PTR [esi]
  4fb52e:	8b 49 50             	mov    ecx,DWORD PTR [ecx+0x50]
  4fb531:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  4fb535:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4fb538:	8b 0e                	mov    ecx,DWORD PTR [esi]
  4fb53a:	8b 49 50             	mov    ecx,DWORD PTR [ecx+0x50]
  4fb53d:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  4fb540:	8d 8b 4c af 04 00    	lea    ecx,[ebx+0x4af4c]
  4fb546:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb548:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  4fb54c:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  4fb550:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb554:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  4fb55b:	e8 d7 4c 4c 00       	call   9c0237 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x793b59>
  4fb560:	8d 8b 50 af 04 00    	lea    ecx,[ebx+0x4af50]
  4fb566:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb568:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  4fb56c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb570:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  4fb577:	e8 bc c1 4c 00       	call   9c7738 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x79b05a>
  4fb57c:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  4fb580:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
  4fb584:	e8 c1 12 00 00       	call   4fc84a <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2d016c>  ; ABH.Services.Logic.BattleService::GetMaxRoll
  4fb589:	d9 5c 24 6c          	fstp   DWORD PTR [esp+0x6c]
  4fb58d:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  4fb591:	85 c0                	test   eax,eax
  4fb593:	0f 84 94 05 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb599:	f3 0f 10 44 24 6c    	movss  xmm0,DWORD PTR [esp+0x6c]
  4fb59f:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  4fb5a5:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
  4fb5ac:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4fb5af:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb5b1:	85 c0                	test   eax,eax
  4fb5b3:	0f 84 74 05 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb5b9:	31 f6                	xor    esi,esi
  4fb5bb:	8d 8b 48 a0 04 00    	lea    ecx,[ebx+0x4a048]
  4fb5c1:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  4fb5c5:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  4fb5c9:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb5cb:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  4fb5cf:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb5d2:	e8 20 91 fc ff       	call   4c46f7 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298019>
  4fb5d7:	39 c6                	cmp    esi,eax
  4fb5d9:	0f 8d 02 01 00 00    	jge    4fb6e1 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf003>
  4fb5df:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4fb5e2:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb5e4:	85 c0                	test   eax,eax
  4fb5e6:	0f 84 41 05 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb5ec:	8d 8b ac a0 04 00    	lea    ecx,[ebx+0x4a0ac]
  4fb5f2:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb5f4:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  4fb5f8:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fb5fc:	89 74 24 54          	mov    DWORD PTR [esp+0x54],esi
  4fb600:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb603:	e8 ff 90 fc ff       	call   4c4707 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298029>
  4fb608:	89 c6                	mov    esi,eax
  4fb60a:	85 f6                	test   esi,esi
  4fb60c:	0f 84 1b 05 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb612:	8d 83 74 58 04 00    	lea    eax,[ebx+0x45874]
  4fb618:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb61a:	8b 1e                	mov    ebx,DWORD PTR [esi]
  4fb61c:	0f b7 93 aa 00 00 00 	movzx  edx,WORD PTR [ebx+0xaa]
  4fb623:	85 d2                	test   edx,edx
  4fb625:	74 0f                	je     4fb636 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cef58>
  4fb627:	8b 7b 4c             	mov    edi,DWORD PTR [ebx+0x4c]
  4fb62a:	31 c9                	xor    ecx,ecx
  4fb62c:	39 04 cf             	cmp    DWORD PTR [edi+ecx*8],eax
  4fb62f:	74 21                	je     4fb652 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cef74>
  4fb631:	41                   	inc    ecx
  4fb632:	39 d1                	cmp    ecx,edx
  4fb634:	72 f6                	jb     4fb62c <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cef4e>
  4fb636:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb63a:	89 34 24             	mov    DWORD PTR [esp],esi
  4fb63d:	c7 44 24 08 09 00 00 	mov    DWORD PTR [esp+0x8],0x9
  4fb644:	00 
  4fb645:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  4fb649:	e8 16 63 cc ff       	call   1c1964 <dladdr@plt+0x72b4>
  4fb64e:	89 c1                	mov    ecx,eax
  4fb650:	eb 0f                	jmp    4fb661 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cef83>
  4fb652:	8b 44 cf 04          	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  4fb656:	8d 8c c3 fc 00 00 00 	lea    ecx,[ebx+eax*8+0xfc]
  4fb65d:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  4fb661:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  4fb664:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb668:	89 34 24             	mov    DWORD PTR [esp],esi
  4fb66b:	ff 11                	call   DWORD PTR [ecx]
  4fb66d:	85 c0                	test   eax,eax
  4fb66f:	74 59                	je     4fb6ca <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cefec>
  4fb671:	8d 8b dc 5d 04 00    	lea    ecx,[ebx+0x45ddc]
  4fb677:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb679:	8b 10                	mov    edx,DWORD PTR [eax]
  4fb67b:	0f b6 b1 ac 00 00 00 	movzx  esi,BYTE PTR [ecx+0xac]
  4fb682:	0f b6 ba ac 00 00 00 	movzx  edi,BYTE PTR [edx+0xac]
  4fb689:	39 f7                	cmp    edi,esi
  4fb68b:	72 3d                	jb     4fb6ca <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cefec>
  4fb68d:	8b 52 58             	mov    edx,DWORD PTR [edx+0x58]
  4fb690:	39 4c b2 fc          	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  4fb694:	75 34                	jne    4fb6ca <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cefec>
  4fb696:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  4fb69a:	8b 77 08             	mov    esi,DWORD PTR [edi+0x8]
  4fb69d:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb6a0:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb6a7:	00 
  4fb6a8:	e8 cd 94 1f 00       	call   6f4b7a <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x4c849c>  ; ABH.GameDatas.PigGameData::get_BalancingData
  4fb6ad:	85 c0                	test   eax,eax
  4fb6af:	0f 84 78 04 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb6b5:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb6b8:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb6bf:	00 
  4fb6c0:	e8 62 66 20 01       	call   1701d27 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14d5649>  ; ABH.Shared.BalancingData.PigBalancingData::get_PigStrength
  4fb6c5:	01 f0                	add    eax,esi
  4fb6c7:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
  4fb6ca:	8b 74 24 54          	mov    esi,DWORD PTR [esp+0x54]
  4fb6ce:	46                   	inc    esi
  4fb6cf:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4fb6d2:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb6d4:	85 c0                	test   eax,eax
  4fb6d6:	0f 85 e9 fe ff ff    	jne    4fb5c5 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ceee7>
  4fb6dc:	e9 4c 04 00 00       	jmp    4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb6e1:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  4fb6e4:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb6e7:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb6ee:	00 
  4fb6ef:	e8 64 60 9c 00       	call   ec1758 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0xc9507a>  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4fb6f4:	85 c0                	test   eax,eax
  4fb6f6:	0f 84 31 04 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb6fc:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb6ff:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb706:	00 
  4fb707:	e8 30 2d 20 01       	call   16fe43c <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14d1d5e>  ; ABH.Shared.BalancingData.BattleBalancingData::get_StrengthPoints
  4fb70c:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  4fb710:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
  4fb713:	c7 44 24 30 00 00 00 	mov    DWORD PTR [esp+0x30],0x0
  4fb71a:	00 
  4fb71b:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  4fb71e:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  4fb721:	85 c0                	test   eax,eax
  4fb723:	0f 84 04 04 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb729:	8b 08                	mov    ecx,DWORD PTR [eax]
  4fb72b:	8b 91 f8 00 00 00    	mov    edx,DWORD PTR [ecx+0xf8]
  4fb731:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  4fb735:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb738:	ff 91 f4 00 00 00    	call   DWORD PTR [ecx+0xf4]
  4fb73e:	dd 5c 24 60          	fstp   QWORD PTR [esp+0x60]
  4fb742:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [esp+0x60]
  4fb748:	f2 0f 11 44 24 48    	movsd  QWORD PTR [esp+0x48],xmm0
  4fb74e:	8d 83 54 af 04 00    	lea    eax,[ebx+0x4af54]
  4fb754:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb756:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  4fb75a:	8d 83 fc 5f 04 00    	lea    eax,[ebx+0x45ffc]
  4fb760:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb762:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb765:	e8 48 08 d1 ff       	call   20bfb2 <_ZNSt8_Rb_treeISsSsSt9_IdentityISsESt4lessISsESaISsEE8_M_eraseEPSt13_Rb_tree_nodeISsE+0xb6b6>
  4fb76a:	89 c6                	mov    esi,eax
  4fb76c:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  4fb770:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
  4fb774:	8d 83 58 af 04 00    	lea    eax,[ebx+0x4af58]
  4fb77a:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb77c:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  4fb780:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
  4fb784:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb788:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
  4fb78c:	89 34 24             	mov    DWORD PTR [esp],esi
  4fb78f:	e8 78 29 0a 01       	call   159e10c <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x1371a2e>
  4fb794:	8d 83 5c af 04 00    	lea    eax,[ebx+0x4af5c]
  4fb79a:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb79c:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  4fb7a0:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
  4fb7a4:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  4fb7a8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb7ac:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  4fb7b3:	e8 7f 4a 4c 00       	call   9c0237 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x793b59>
  4fb7b8:	8d 8b 60 af 04 00    	lea    ecx,[ebx+0x4af60]
  4fb7be:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb7c0:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  4fb7c4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb7c8:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  4fb7cf:	e8 64 bf 4c 00       	call   9c7738 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x79b05a>
  4fb7d4:	85 c0                	test   eax,eax
  4fb7d6:	0f 84 51 03 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb7dc:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  4fb7e0:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fb7e2:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  4fb7e6:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb7e9:	e8 09 8f fc ff       	call   4c46f7 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298019>
  4fb7ee:	85 c0                	test   eax,eax
  4fb7f0:	0f 84 2a 03 00 00    	je     4fbb20 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf442>
  4fb7f6:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  4fb7fa:	85 c9                	test   ecx,ecx
  4fb7fc:	0f 84 2b 03 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb802:	ff 44 24 30          	inc    DWORD PTR [esp+0x30]
  4fb806:	f2 0f 5a 44 24 48    	cvtsd2ss xmm0,QWORD PTR [esp+0x48]
  4fb80c:	f3 0f 59 44 24 2c    	mulss  xmm0,DWORD PTR [esp+0x2c]
  4fb812:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  4fb818:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  4fb81c:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb81e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb822:	89 0c 24             	mov    DWORD PTR [esp],ecx
  4fb825:	89 df                	mov    edi,ebx
  4fb827:	e8 cb 8e fc ff       	call   4c46f7 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298019>
  4fb82c:	89 c6                	mov    esi,eax
  4fb82e:	4e                   	dec    esi
  4fb82f:	0f 88 af 02 00 00    	js     4fbae4 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf406>
  4fb835:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  4fb839:	85 c9                	test   ecx,ecx
  4fb83b:	89 fb                	mov    ebx,edi
  4fb83d:	0f 84 ea 02 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb843:	8d 83 3c af 04 00    	lea    eax,[ebx+0x4af3c]
  4fb849:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  4fb84d:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb84f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb853:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fb857:	89 0c 24             	mov    DWORD PTR [esp],ecx
  4fb85a:	e8 a8 8e fc ff       	call   4c4707 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298029>
  4fb85f:	85 c0                	test   eax,eax
  4fb861:	0f 84 c6 02 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb867:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb86a:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb871:	00 
  4fb872:	89 df                	mov    edi,ebx
  4fb874:	e8 30 f8 29 01       	call   179b0a9 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x156e9cb>  ; ABH.Shared.Models.Generic.BattleParticipantTableEntry::get_Probability
  4fb879:	d9 5c 24 5c          	fstp   DWORD PTR [esp+0x5c]
  4fb87d:	f3 0f 10 4c 24 54    	movss  xmm1,DWORD PTR [esp+0x54]
  4fb883:	f3 0f 5c 4c 24 5c    	subss  xmm1,DWORD PTR [esp+0x5c]
  4fb889:	f3 0f 11 4c 24 54    	movss  DWORD PTR [esp+0x54],xmm1
  4fb88f:	0f 57 c0             	xorps  xmm0,xmm0
  4fb892:	0f 2e c1             	ucomiss xmm0,xmm1
  4fb895:	72 97                	jb     4fb82e <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf150>
  4fb897:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  4fb89b:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4fb89e:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  4fb8a2:	89 fb                	mov    ebx,edi
  4fb8a4:	8d bb 40 af 04 00    	lea    edi,[ebx+0x4af40]
  4fb8aa:	8b 07                	mov    eax,DWORD PTR [edi]
  4fb8ac:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb8b0:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fb8b4:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  4fb8b8:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb8bb:	e8 47 8e fc ff       	call   4c4707 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298029>
  4fb8c0:	85 c0                	test   eax,eax
  4fb8c2:	0f 84 65 02 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb8c8:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  4fb8cc:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb8cf:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb8d6:	00 
  4fb8d7:	e8 9e 92 1f 00       	call   6f4b7a <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x4c849c>  ; ABH.GameDatas.PigGameData::get_BalancingData
  4fb8dc:	85 c0                	test   eax,eax
  4fb8de:	0f 84 49 02 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb8e4:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb8e7:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb8ee:	00 
  4fb8ef:	e8 33 64 20 01       	call   1701d27 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14d5649>  ; ABH.Shared.BalancingData.PigBalancingData::get_PigStrength
  4fb8f4:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  4fb8f8:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4fb8fb:	03 44 24 54          	add    eax,DWORD PTR [esp+0x54]
  4fb8ff:	39 c8                	cmp    eax,ecx
  4fb901:	0f 8f e6 01 00 00    	jg     4fbaed <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf40f>
  4fb907:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  4fb90b:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb90d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb911:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fb915:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  4fb919:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb91c:	e8 e6 8d fc ff       	call   4c4707 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298029>
  4fb921:	85 c0                	test   eax,eax
  4fb923:	0f 84 04 02 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb929:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb92c:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb933:	00 
  4fb934:	e8 2a f7 29 01       	call   179b063 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x156e985>  ; ABH.Shared.Models.Generic.BattleParticipantTableEntry::get_NameId
  4fb939:	89 c7                	mov    edi,eax
  4fb93b:	8d 83 dc 5d 04 00    	lea    eax,[ebx+0x45ddc]
  4fb941:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb943:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb946:	e8 67 06 d1 ff       	call   20bfb2 <_ZNSt8_Rb_treeISsSsSt9_IdentityISsESt4lessISsESaISsEE8_M_eraseEPSt13_Rb_tree_nodeISsE+0xb6b6>
  4fb94b:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  4fb94f:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
  4fb953:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb956:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  4fb95d:	00 
  4fb95e:	e8 57 d1 1b 00       	call   6b8aba <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x48c3dc>  ; ABH.GameDatas.PigGameData::.ctor
  4fb963:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  4fb966:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb969:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb970:	00 
  4fb971:	e8 7f 78 9c 00       	call   ec31f5 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0xc96b17>  ; ABH.GameDatas.Battle.BattleGameData::GetPlayerLevelForHotSpot
  4fb976:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  4fb97a:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fb97d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb984:	00 
  4fb985:	e8 ce 5d 9c 00       	call   ec1758 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0xc9507a>  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  4fb98a:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  4fb98e:	85 c9                	test   ecx,ecx
  4fb990:	0f 84 97 01 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb996:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb99a:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  4fb99e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fb9a2:	89 0c 24             	mov    DWORD PTR [esp],ecx
  4fb9a5:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
  4fb9ac:	00 
  4fb9ad:	e8 49 d2 1b 00       	call   6b8bfb <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x48c51d>  ; ABH.GameDatas.PigGameData::SetDifficulties
  4fb9b2:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  4fb9b6:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  4fb9ba:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  4fb9bd:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  4fb9c1:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  4fb9c5:	8b 00                	mov    eax,DWORD PTR [eax]
  4fb9c7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fb9cb:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fb9cf:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  4fb9d3:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb9d6:	e8 2c 8d fc ff       	call   4c4707 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298029>
  4fb9db:	85 c0                	test   eax,eax
  4fb9dd:	0f 84 4a 01 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb9e3:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb9e6:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fb9ed:	00 
  4fb9ee:	e8 87 91 1f 00       	call   6f4b7a <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x4c849c>  ; ABH.GameDatas.PigGameData::get_BalancingData
  4fb9f3:	85 c0                	test   eax,eax
  4fb9f5:	0f 84 32 01 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fb9fb:	89 04 24             	mov    DWORD PTR [esp],eax
  4fb9fe:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fba05:	00 
  4fba06:	e8 1c 63 20 01       	call   1701d27 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14d5649>  ; ABH.Shared.BalancingData.PigBalancingData::get_PigStrength
  4fba0b:	03 44 24 54          	add    eax,DWORD PTR [esp+0x54]
  4fba0f:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
  4fba12:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  4fba16:	8b 00                	mov    eax,DWORD PTR [eax]
  4fba18:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fba1c:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fba20:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  4fba24:	89 04 24             	mov    DWORD PTR [esp],eax
  4fba27:	e8 db 8c fc ff       	call   4c4707 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298029>
  4fba2c:	85 c0                	test   eax,eax
  4fba2e:	0f 84 f9 00 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fba34:	89 04 24             	mov    DWORD PTR [esp],eax
  4fba37:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fba3e:	00 
  4fba3f:	e8 b3 f6 29 01       	call   179b0f7 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x156ea19>  ; ABH.Shared.Models.Generic.BattleParticipantTableEntry::get_Unique
  4fba44:	84 c0                	test   al,al
  4fba46:	0f 84 80 00 00 00    	je     4fbacc <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf3ee>
  4fba4c:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  4fba50:	8b 00                	mov    eax,DWORD PTR [eax]
  4fba52:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fba56:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fba5a:	8b 7c 24 50          	mov    edi,DWORD PTR [esp+0x50]
  4fba5e:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fba61:	e8 a1 8c fc ff       	call   4c4707 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298029>
  4fba66:	85 c0                	test   eax,eax
  4fba68:	0f 84 bf 00 00 00    	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fba6e:	89 04 24             	mov    DWORD PTR [esp],eax
  4fba71:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4fba78:	00 
  4fba79:	e8 2b f6 29 01       	call   179b0a9 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x156e9cb>  ; ABH.Shared.Models.Generic.BattleParticipantTableEntry::get_Probability
  4fba7e:	d9 5c 24 58          	fstp   DWORD PTR [esp+0x58]
  4fba82:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  4fba88:	f3 0f 5c 44 24 58    	subss  xmm0,DWORD PTR [esp+0x58]
  4fba8e:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  4fba94:	8d 83 64 af 04 00    	lea    eax,[ebx+0x4af64]
  4fba9a:	8b 00                	mov    eax,DWORD PTR [eax]
  4fba9c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fbaa0:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fbaa4:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  4fbaa8:	89 04 24             	mov    DWORD PTR [esp],eax
  4fbaab:	e8 44 87 fc ff       	call   4c41f4 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x297b16>
  4fbab0:	8d 83 68 af 04 00    	lea    eax,[ebx+0x4af68]
  4fbab6:	8b 00                	mov    eax,DWORD PTR [eax]
  4fbab8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4fbabc:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4fbac0:	89 3c 24             	mov    DWORD PTR [esp],edi
  4fbac3:	e8 2c 87 fc ff       	call   4c41f4 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x297b16>
  4fbac8:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  4fbacc:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4fbacf:	8b 00                	mov    eax,DWORD PTR [eax]
  4fbad1:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  4fbad5:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  4fbad9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4fbadd:	e8 bd 0e 00 00       	call   4fc99f <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2d02c1>  ; ABH.Services.Logic.BattleService::AddPigCombatant
  4fbae2:	eb 06                	jmp    4fbaea <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf40c>
  4fbae4:	89 fb                	mov    ebx,edi
  4fbae6:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  4fbaea:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4fbaed:	39 4f 08             	cmp    DWORD PTR [edi+0x8],ecx
  4fbaf0:	7d 2e                	jge    4fbb20 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf442>
  4fbaf2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4fbaf5:	8b 00                	mov    eax,DWORD PTR [eax]
  4fbaf7:	85 c0                	test   eax,eax
  4fbaf9:	74 32                	je     4fbb2d <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf44f>
  4fbafb:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  4fbaff:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4fbb01:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  4fbb05:	89 04 24             	mov    DWORD PTR [esp],eax
  4fbb08:	e8 ea 8b fc ff       	call   4c46f7 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x298019>
  4fbb0d:	81 7c 24 30 e7 03 00 	cmp    DWORD PTR [esp+0x30],0x3e7
  4fbb14:	00 
  4fbb15:	7f 09                	jg     4fbb20 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf442>
  4fbb17:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
  4fbb1a:	0f 8c fb fb ff ff    	jl     4fb71b <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2cf03d>
  4fbb20:	b8 01 00 00 00       	mov    eax,0x1
  4fbb25:	8d 65 f4             	lea    esp,[ebp-0xc]
  4fbb28:	5e                   	pop    esi
  4fbb29:	5f                   	pop    edi
  4fbb2a:	5b                   	pop    ebx
  4fbb2b:	5d                   	pop    ebp
  4fbb2c:	c3                   	ret
  4fbb2d:	e8 16 01 d0 ff       	call   1fbc48 <_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEES2_T_S7_RKS4_St20forward_iterator_tag+0x40c>
  4fbb32:	e8 61 50 04 00       	call   540b98 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x3144ba>