
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008c205e:
  8c205e:	push   ebp
  8c205f:	mov    ebp,esp
  8c2061:	push   ebx
  8c2062:	push   edi
  8c2063:	push   esi
  8c2064:	and    esp,0xfffffff0
  8c2067:	sub    esp,0x20
  8c206a:	call   8c206f
  8c206f:	pop    ebx
  8c2070:	add    ebx,0x164fed5
  8c2076:	mov    edi,DWORD PTR [ebp+0x8]
  8c2079:	mov    al,BYTE PTR [ebx+0x60172]
  8c207f:	test   al,al
  8c2081:	jne    8c209a
  8c2083:	lea    eax,[ebx-0x66d9d8]
  8c2089:	mov    eax,DWORD PTR [eax]
  8c208b:	mov    DWORD PTR [esp],eax
  8c208e:	call   1ca6e8
  8c2093:	mov    BYTE PTR [ebx+0x60172],0x1
  8c209a:	mov    DWORD PTR [esp+0x4],0x0
  8c20a2:	mov    DWORD PTR [esp],0x0
  8c20a9:	call   109314e  ; DIContainerLogic::GetBattleService
  8c20ae:	mov    esi,eax
  8c20b0:	mov    eax,DWORD PTR [edi+0x14]
  8c20b3:	test   eax,eax
  8c20b5:	je     8c240d
  8c20bb:	mov    DWORD PTR [esp],eax
  8c20be:	mov    DWORD PTR [esp+0x4],0x0
  8c20c6:	call   9f18af  ; BattleMgrBase::get_Model
  8c20cb:	test   esi,esi
  8c20cd:	je     8c240d
  8c20d3:	mov    ecx,DWORD PTR [edi+0x18]
  8c20d6:	mov    DWORD PTR [esp+0x8],ecx
  8c20da:	mov    DWORD PTR [esp+0x4],eax
  8c20de:	mov    DWORD PTR [esp],esi
  8c20e1:	mov    DWORD PTR [esp+0xc],0x0
  8c20e9:	call   50a671  ; ABH.Services.Logic.BattleService::RemoveCombatantFromBattle
  8c20ee:	mov    DWORD PTR [esp],edi
  8c20f1:	call   8d9561  ; CharacterControllerBattleGroundBase::RemoveCharacterFromChargeBubbles
  8c20f6:	mov    DWORD PTR [esp],edi
  8c20f9:	call   8d9bb4  ; CharacterControllerBattleGroundBase::RemoveTauntsFromOpponents
  8c20fe:	mov    eax,DWORD PTR [edi+0x14]
  8c2101:	test   eax,eax
  8c2103:	je     8c240d
  8c2109:	mov    DWORD PTR [esp],eax
  8c210c:	mov    DWORD PTR [esp+0x4],0x0
  8c2114:	call   9f18af  ; BattleMgrBase::get_Model
  8c2119:	test   eax,eax
  8c211b:	je     8c240d
  8c2121:	mov    DWORD PTR [esp],eax
  8c2124:	mov    DWORD PTR [esp+0x4],0x0
  8c212c:	xor    esi,esi
  8c212e:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  8c2133:	test   al,al
  8c2135:	je     8c22f8
  8c213b:	mov    edi,DWORD PTR [edi+0x18]
  8c213e:	test   edi,edi
  8c2140:	je     8c240d
  8c2146:	lea    eax,[ebx+0x45874]
  8c214c:	mov    DWORD PTR [esp+0x14],eax
  8c2150:	mov    eax,DWORD PTR [eax]
  8c2152:	mov    ecx,DWORD PTR [edi]
  8c2154:	mov    DWORD PTR [esp+0x18],ecx
  8c2158:	movzx  edx,WORD PTR [ecx+0xaa]
  8c215f:	test   edx,edx
  8c2161:	je     8c2176
  8c2163:	mov    ecx,DWORD PTR [esp+0x18]
  8c2167:	mov    esi,DWORD PTR [ecx+0x4c]
  8c216a:	xor    ecx,ecx
  8c216c:	cmp    DWORD PTR [esi+ecx*8],eax
  8c216f:	je     8c218e
  8c2171:	inc    ecx
  8c2172:	cmp    ecx,edx
  8c2174:	jb     8c216c
  8c2176:	mov    DWORD PTR [esp+0x4],eax
  8c217a:	mov    DWORD PTR [esp],edi
  8c217d:	mov    DWORD PTR [esp+0x8],0x2f
  8c2185:	call   1c1964
  8c218a:	mov    ecx,eax
  8c218c:	jmp    8c219d
  8c218e:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  8c2192:	mov    ecx,DWORD PTR [esp+0x18]
  8c2196:	lea    ecx,[ecx+eax*8+0x22c]
  8c219d:	mov    eax,DWORD PTR [ecx+0x4]
  8c21a0:	mov    DWORD PTR [esp+0x4],eax
  8c21a4:	mov    DWORD PTR [esp],edi
  8c21a7:	call   DWORD PTR [ecx]
  8c21a9:	xor    esi,esi
  8c21ab:	cmp    eax,0x1
  8c21ae:	jne    8c2200
  8c21b0:	mov    DWORD PTR [esp+0x18],ebx
  8c21b4:	mov    eax,DWORD PTR [ebp+0x8]
  8c21b7:	mov    edi,DWORD PTR [eax+0x18]
  8c21ba:	test   edi,edi
  8c21bc:	je     8c2409
  8c21c2:	mov    eax,DWORD PTR [esp+0x14]
  8c21c6:	mov    eax,DWORD PTR [eax]
  8c21c8:	mov    ebx,DWORD PTR [edi]
  8c21ca:	movzx  edx,WORD PTR [ebx+0xaa]
  8c21d1:	test   edx,edx
  8c21d3:	je     8c21e4
  8c21d5:	mov    esi,DWORD PTR [ebx+0x4c]
  8c21d8:	xor    ecx,ecx
  8c21da:	cmp    DWORD PTR [esi+ecx*8],eax
  8c21dd:	je     8c2208
  8c21df:	inc    ecx
  8c21e0:	cmp    ecx,edx
  8c21e2:	jb     8c21da
  8c21e4:	mov    DWORD PTR [esp+0x4],eax
  8c21e8:	mov    DWORD PTR [esp],edi
  8c21eb:	mov    DWORD PTR [esp+0x8],0x13
  8c21f3:	mov    ebx,DWORD PTR [esp+0x18]
  8c21f7:	call   1c1964
  8c21fc:	mov    ecx,eax
  8c21fe:	jmp    8c2217
  8c2200:	mov    edi,DWORD PTR [ebp+0x8]
  8c2203:	jmp    8c22f0
  8c2208:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  8c220c:	lea    ecx,[ebx+eax*8+0x14c]
  8c2213:	mov    ebx,DWORD PTR [esp+0x18]
  8c2217:	mov    eax,DWORD PTR [ecx+0x4]
  8c221a:	mov    DWORD PTR [esp+0x4],eax
  8c221e:	mov    DWORD PTR [esp],edi
  8c2221:	call   DWORD PTR [ecx]
  8c2223:	test   al,al
  8c2225:	mov    edi,DWORD PTR [ebp+0x8]
  8c2228:	mov    esi,0x0
  8c222d:	jne    8c22f0
  8c2233:	mov    DWORD PTR [esp+0x4],0x0
  8c223b:	mov    DWORD PTR [esp],0x0
  8c2242:	call   109314e  ; DIContainerLogic::GetBattleService
  8c2247:	mov    esi,eax
  8c2249:	mov    eax,DWORD PTR [edi+0x14]
  8c224c:	test   eax,eax
  8c224e:	je     8c240d
  8c2254:	mov    ecx,DWORD PTR [edi+0x18]
  8c2257:	mov    DWORD PTR [esp+0x18],ecx
  8c225b:	mov    DWORD PTR [esp],eax
  8c225e:	mov    DWORD PTR [esp+0x4],0x0
  8c2266:	call   9f18af  ; BattleMgrBase::get_Model
  8c226b:	test   esi,esi
  8c226d:	je     8c240d
  8c2273:	mov    DWORD PTR [esp+0x8],eax
  8c2277:	mov    eax,DWORD PTR [esp+0x18]
  8c227b:	mov    DWORD PTR [esp+0x4],eax
  8c227f:	mov    DWORD PTR [esp],esi
  8c2282:	mov    DWORD PTR [esp+0x10],0x0
  8c228a:	mov    DWORD PTR [esp+0xc],0x1
  8c2292:	call   502698  ; ABH.Services.Logic.BattleService::GetScoreForPig
  8c2297:	mov    esi,eax
  8c2299:	mov    DWORD PTR [esp+0x4],0x0
  8c22a1:	mov    DWORD PTR [esp],0x0
  8c22a8:	call   109314e  ; DIContainerLogic::GetBattleService
  8c22ad:	mov    DWORD PTR [esp+0x18],eax
  8c22b1:	mov    eax,DWORD PTR [edi+0x14]
  8c22b4:	test   eax,eax
  8c22b6:	je     8c240d
  8c22bc:	mov    DWORD PTR [esp],eax
  8c22bf:	mov    DWORD PTR [esp+0x4],0x0
  8c22c7:	call   9f18af  ; BattleMgrBase::get_Model
  8c22cc:	mov    ecx,DWORD PTR [esp+0x18]
  8c22d0:	test   ecx,ecx
  8c22d2:	je     8c240d
  8c22d8:	mov    DWORD PTR [esp+0x8],eax
  8c22dc:	mov    DWORD PTR [esp+0x4],esi
  8c22e0:	mov    DWORD PTR [esp],ecx
  8c22e3:	mov    DWORD PTR [esp+0xc],0x0
  8c22eb:	call   504604  ; ABH.Services.Logic.BattleService::AddScore
  8c22f0:	mov    DWORD PTR [esp],edi
  8c22f3:	call   8d9e1b  ; CharacterControllerBattleGroundBase::CheckKillAchievement
  8c22f8:	mov    DWORD PTR [esp+0x14],esi
  8c22fc:	mov    BYTE PTR [edi+0x8c],0x0
  8c2303:	mov    esi,DWORD PTR [edi+0x18]
  8c2306:	test   esi,esi
  8c2308:	je     8c240d
  8c230e:	lea    eax,[ebx+0x45874]
  8c2314:	mov    DWORD PTR [esp+0x18],ebx
  8c2318:	mov    eax,DWORD PTR [eax]
  8c231a:	mov    ebx,DWORD PTR [esi]
  8c231c:	movzx  edx,WORD PTR [ebx+0xaa]
  8c2323:	test   edx,edx
  8c2325:	je     8c2336
  8c2327:	mov    edi,DWORD PTR [ebx+0x4c]
  8c232a:	xor    ecx,ecx
  8c232c:	cmp    DWORD PTR [edi+ecx*8],eax
  8c232f:	je     8c2352
  8c2331:	inc    ecx
  8c2332:	cmp    ecx,edx
  8c2334:	jb     8c232c
  8c2336:	mov    DWORD PTR [esp+0x4],eax
  8c233a:	mov    DWORD PTR [esp],esi
  8c233d:	mov    DWORD PTR [esp+0x8],0x2f
  8c2345:	mov    ebx,DWORD PTR [esp+0x18]
  8c2349:	call   1c1964
  8c234e:	mov    ecx,eax
  8c2350:	jmp    8c2361
  8c2352:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8c2356:	lea    ecx,[ebx+eax*8+0x22c]
  8c235d:	mov    ebx,DWORD PTR [esp+0x18]
  8c2361:	mov    eax,DWORD PTR [ecx+0x4]
  8c2364:	mov    DWORD PTR [esp+0x4],eax
  8c2368:	mov    DWORD PTR [esp],esi
  8c236b:	call   DWORD PTR [ecx]
  8c236d:	test   eax,eax
  8c236f:	mov    esi,DWORD PTR [ebp+0x8]
  8c2372:	jne    8c23dd
  8c2374:	mov    eax,DWORD PTR [esi+0x14]
  8c2377:	test   eax,eax
  8c2379:	je     8c240d
  8c237f:	mov    DWORD PTR [esp],eax
  8c2382:	mov    DWORD PTR [esp+0x4],0x0
  8c238a:	call   9f18af  ; BattleMgrBase::get_Model
  8c238f:	test   eax,eax
  8c2391:	je     8c240d
  8c2393:	mov    DWORD PTR [esp],eax
  8c2396:	mov    DWORD PTR [esp+0x4],0x0
  8c239e:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  8c23a3:	test   al,al
  8c23a5:	jne    8c23dd
  8c23a7:	mov    DWORD PTR [esp+0x4],0x0
  8c23af:	mov    DWORD PTR [esp],0x0
  8c23b6:	call   1074d4d  ; DIContainerConfig::GetClientConfig
  8c23bb:	test   eax,eax
  8c23bd:	je     8c240d
  8c23bf:	mov    DWORD PTR [esp],eax
  8c23c2:	mov    DWORD PTR [esp+0x4],0x0
  8c23ca:	call   16ff8dc  ; ABH.Shared.BalancingData.ClientConfigBalancingData::get_EnableSingleBirdRevive
  8c23cf:	test   al,al
  8c23d1:	je     8c23dd
  8c23d3:	mov    DWORD PTR [esp],esi
  8c23d6:	call   8da580  ; CharacterControllerBattleGroundBase::KnockOutBird
  8c23db:	jmp    8c23ed
  8c23dd:	mov    eax,DWORD PTR [esp+0x14]
  8c23e1:	mov    DWORD PTR [esp+0x4],eax
  8c23e5:	mov    DWORD PTR [esp],esi
  8c23e8:	call   8da5f7  ; CharacterControllerBattleGroundBase::KnockOutCharacter
  8c23ed:	mov    DWORD PTR [esp+0x4],eax
  8c23f1:	mov    DWORD PTR [esp],esi
  8c23f4:	mov    DWORD PTR [esp+0x8],0x0
  8c23fc:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8c2401:	lea    esp,[ebp-0xc]
  8c2404:	pop    esi
  8c2405:	pop    edi
  8c2406:	pop    ebx
  8c2407:	pop    ebp
  8c2408:	ret
  8c2409:	mov    ebx,DWORD PTR [esp+0x18]
  8c240d:	call   1fbc48
  8c2412:	call   8b3f00