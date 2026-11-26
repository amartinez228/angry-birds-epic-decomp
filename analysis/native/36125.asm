
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed9154:
  ed9154:	push   ebp
  ed9155:	mov    ebp,esp
  ed9157:	push   ebx
  ed9158:	push   edi
  ed9159:	push   esi
  ed915a:	and    esp,0xfffffff0
  ed915d:	sub    esp,0x50
  ed9160:	call   ed9165
  ed9165:	pop    ebx
  ed9166:	add    ebx,0x1038ddf
  ed916c:	mov    esi,DWORD PTR [ebp+0x8]
  ed916f:	mov    al,BYTE PTR [ebx+0x6279d]
  ed9175:	test   al,al
  ed9177:	jne    ed9190
  ed9179:	lea    eax,[ebx-0x6705a0]
  ed917f:	mov    eax,DWORD PTR [eax]
  ed9181:	mov    DWORD PTR [esp],eax
  ed9184:	call   1ca6e8
  ed9189:	mov    BYTE PTR [ebx+0x6279d],0x1
  ed9190:	mov    DWORD PTR [esp+0x4],0x0
  ed9198:	mov    DWORD PTR [esp],0x0
  ed919f:	call   167eb9e  ; UnityEngine.Random::get_value
  ed91a4:	fstp   DWORD PTR [esp+0x48]
  ed91a8:	movss  xmm0,DWORD PTR [esi+0x94]
  ed91b0:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ed91b8:	ucomiss xmm0,DWORD PTR [esp+0x48]
  ed91bd:	jb     ed9505
  ed91c3:	mov    edi,esi
  ed91c5:	lea    eax,[ebx+0x45290]
  ed91cb:	mov    eax,DWORD PTR [eax]
  ed91cd:	mov    DWORD PTR [esp],eax
  ed91d0:	call   20bfb2
  ed91d5:	mov    esi,eax
  ed91d7:	lea    eax,[ebx+0x49708]
  ed91dd:	mov    eax,DWORD PTR [eax]
  ed91df:	mov    DWORD PTR [esp+0x4],eax
  ed91e3:	mov    DWORD PTR [esp],esi
  ed91e6:	call   4d21ef  ; System.Collections.Generic.List`1<float>::.ctor
  ed91eb:	test   esi,esi
  ed91ed:	je     ed950d
  ed91f3:	movss  xmm0,DWORD PTR [edi+0x98]
  ed91fb:	lea    eax,[ebx+0x4970c]
  ed9201:	mov    eax,DWORD PTR [eax]
  ed9203:	mov    DWORD PTR [esp+0x8],eax
  ed9207:	movss  DWORD PTR [esp+0x4],xmm0
  ed920d:	mov    DWORD PTR [esp],esi
  ed9210:	call   4d30f2  ; System.Collections.Generic.List`1<float>::Add
  ed9215:	lea    eax,[ebx+0x4589c]
  ed921b:	mov    eax,DWORD PTR [eax]
  ed921d:	mov    DWORD PTR [esp],eax
  ed9220:	call   20bfb2
  ed9225:	mov    DWORD PTR [esp+0x44],eax
  ed9229:	lea    ecx,[ebx+0x4a138]
  ed922f:	mov    ecx,DWORD PTR [ecx]
  ed9231:	mov    DWORD PTR [esp+0x4],ecx
  ed9235:	mov    DWORD PTR [esp],eax
  ed9238:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ed923d:	lea    eax,[ebx+0x454a8]
  ed9243:	mov    eax,DWORD PTR [eax]
  ed9245:	mov    DWORD PTR [esp],eax
  ed9248:	call   20bfb2
  ed924d:	mov    edi,eax
  ed924f:	mov    DWORD PTR [esp],edi
  ed9252:	mov    DWORD PTR [esp+0x4],0x0
  ed925a:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
  ed925f:	test   edi,edi
  ed9261:	je     ed950d
  ed9267:	mov    DWORD PTR [esp],edi
  ed926a:	mov    DWORD PTR [esp+0x8],0x0
  ed9272:	mov    DWORD PTR [esp+0x4],0xa
  ed927a:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
  ed927f:	mov    DWORD PTR [esp],edi
  ed9282:	mov    DWORD PTR [esp+0x8],0x0
  ed928a:	mov    DWORD PTR [esp+0x4],0x2b
  ed9292:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
  ed9297:	mov    DWORD PTR [esp+0x4],esi
  ed929b:	mov    DWORD PTR [esp],edi
  ed929e:	mov    DWORD PTR [esp+0x8],0x0
  ed92a6:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
  ed92ab:	mov    eax,DWORD PTR [ebp+0x8]
  ed92ae:	mov    ecx,eax
  ed92b0:	mov    eax,DWORD PTR [ecx+0x8]
  ed92b3:	test   eax,eax
  ed92b5:	mov    esi,ecx
  ed92b7:	je     ed950d
  ed92bd:	mov    DWORD PTR [esp],eax
  ed92c0:	mov    DWORD PTR [esp+0x4],0x0
  ed92c8:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed92cd:	test   eax,eax
  ed92cf:	je     ed950d
  ed92d5:	mov    DWORD PTR [esp],eax
  ed92d8:	mov    DWORD PTR [esp+0x4],0x0
  ed92e0:	call   17031b6  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectType
  ed92e5:	mov    DWORD PTR [esp+0x4],eax
  ed92e9:	mov    DWORD PTR [esp],edi
  ed92ec:	mov    DWORD PTR [esp+0x8],0x0
  ed92f4:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
  ed92f9:	mov    eax,DWORD PTR [esi+0x8]
  ed92fc:	test   eax,eax
  ed92fe:	je     ed950d
  ed9304:	mov    DWORD PTR [esp],eax
  ed9307:	mov    DWORD PTR [esp+0x4],0x0
  ed930f:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed9314:	test   eax,eax
  ed9316:	je     ed950d
  ed931c:	mov    DWORD PTR [esp],eax
  ed931f:	mov    DWORD PTR [esp+0x4],0x0
  ed9327:	call   1703170  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectDuration
  ed932c:	mov    DWORD PTR [esp+0x4],eax
  ed9330:	mov    DWORD PTR [esp],edi
  ed9333:	mov    DWORD PTR [esp+0x8],0x0
  ed933b:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
  ed9340:	mov    eax,DWORD PTR [esi+0x8]
  ed9343:	test   eax,eax
  ed9345:	je     ed950d
  ed934b:	mov    DWORD PTR [esp],eax
  ed934e:	mov    DWORD PTR [esp+0x4],0x0
  ed9356:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed935b:	test   eax,eax
  ed935d:	je     ed950d
  ed9363:	mov    DWORD PTR [esp],eax
  ed9366:	mov    DWORD PTR [esp+0x4],0x0
  ed936e:	call   17032ad  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAssetId
  ed9373:	mov    DWORD PTR [esp+0x4],eax
  ed9377:	mov    DWORD PTR [esp],edi
  ed937a:	mov    DWORD PTR [esp+0x8],0x0
  ed9382:	call   179afdb  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAssetId
  ed9387:	mov    eax,DWORD PTR [esi+0x8]
  ed938a:	test   eax,eax
  ed938c:	je     ed950d
  ed9392:	mov    DWORD PTR [esp],eax
  ed9395:	mov    DWORD PTR [esp+0x4],0x0
  ed939d:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed93a2:	test   eax,eax
  ed93a4:	je     ed950d
  ed93aa:	mov    DWORD PTR [esp],eax
  ed93ad:	mov    DWORD PTR [esp+0x4],0x0
  ed93b5:	call   170328a  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAtlasId
  ed93ba:	mov    DWORD PTR [esp+0x4],eax
  ed93be:	mov    DWORD PTR [esp],edi
  ed93c1:	mov    DWORD PTR [esp+0x8],0x0
  ed93c9:	call   179afb8  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAtlasId
  ed93ce:	mov    ecx,DWORD PTR [esp+0x44]
  ed93d2:	test   ecx,ecx
  ed93d4:	je     ed950d
  ed93da:	lea    eax,[ebx+0x4a144]
  ed93e0:	mov    eax,DWORD PTR [eax]
  ed93e2:	mov    DWORD PTR [esp+0x8],eax
  ed93e6:	mov    DWORD PTR [esp+0x4],edi
  ed93ea:	mov    DWORD PTR [esp],ecx
  ed93ed:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  ed93f2:	mov    eax,DWORD PTR [esi+0x8]
  ed93f5:	test   eax,eax
  ed93f7:	je     ed950d
  ed93fd:	mov    DWORD PTR [esp],eax
  ed9400:	mov    DWORD PTR [esp+0x4],0x0
  ed9408:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed940d:	test   eax,eax
  ed940f:	je     ed950d
  ed9415:	mov    DWORD PTR [esp],eax
  ed9418:	mov    DWORD PTR [esp+0x4],0x0
  ed9420:	call   1703170  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectDuration
  ed9425:	mov    ecx,DWORD PTR [esi+0x8]
  ed9428:	test   ecx,ecx
  ed942a:	je     ed950d
  ed9430:	mov    DWORD PTR [esp+0x40],eax
  ed9434:	mov    DWORD PTR [esp],ecx
  ed9437:	mov    DWORD PTR [esp+0x4],0x0
  ed943f:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed9444:	test   eax,eax
  ed9446:	je     ed950d
  ed944c:	mov    DWORD PTR [esp],eax
  ed944f:	mov    DWORD PTR [esp+0x4],0x0
  ed9457:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  ed945c:	mov    DWORD PTR [esp+0x3c],eax
  ed9460:	mov    eax,DWORD PTR [esi]
  ed9462:	mov    ecx,DWORD PTR [eax+0x110]
  ed9468:	mov    DWORD PTR [esp+0x4],ecx
  ed946c:	mov    DWORD PTR [esp],esi
  ed946f:	call   DWORD PTR [eax+0x10c]
  ed9475:	mov    DWORD PTR [esp+0x38],eax
  ed9479:	mov    eax,DWORD PTR [esi+0x8]
  ed947c:	test   eax,eax
  ed947e:	je     ed950d
  ed9484:	mov    DWORD PTR [esp],eax
  ed9487:	mov    DWORD PTR [esp+0x4],0x0
  ed948f:	call   6b291c  ; ABH.GameDatas.SkillGameData::get_SkillNameId
  ed9494:	mov    esi,eax
  ed9496:	lea    eax,[ebx+0x458a8]
  ed949c:	mov    eax,DWORD PTR [eax]
  ed949e:	mov    DWORD PTR [esp],eax
  ed94a1:	call   20bfb2
  ed94a6:	mov    edi,eax
  ed94a8:	mov    DWORD PTR [esp+0x28],esi
  ed94ac:	mov    eax,DWORD PTR [esp+0x38]
  ed94b0:	mov    DWORD PTR [esp+0x24],eax
  ed94b4:	mov    eax,DWORD PTR [esp+0x3c]
  ed94b8:	mov    DWORD PTR [esp+0x1c],eax
  ed94bc:	mov    eax,DWORD PTR [ebp+0xc]
  ed94bf:	mov    DWORD PTR [esp+0x18],eax
  ed94c3:	mov    eax,DWORD PTR [esp+0x40]
  ed94c7:	mov    DWORD PTR [esp+0x14],eax
  ed94cb:	mov    eax,DWORD PTR [esp+0x44]
  ed94cf:	mov    DWORD PTR [esp+0x10],eax
  ed94d3:	mov    eax,DWORD PTR [ebp+0x14]
  ed94d6:	mov    DWORD PTR [esp+0x8],eax
  ed94da:	mov    eax,DWORD PTR [ebp+0x10]
  ed94dd:	mov    DWORD PTR [esp+0x4],eax
  ed94e1:	mov    DWORD PTR [esp],edi
  ed94e4:	mov    DWORD PTR [esp+0x20],0x2
  ed94ec:	call   ebd536  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
  ed94f1:	test   edi,edi
  ed94f3:	je     ed950d
  ed94f5:	mov    DWORD PTR [esp],edi
  ed94f8:	mov    DWORD PTR [esp+0x4],0x1
  ed9500:	call   ebf8b0  ; ABH.GameDatas.Battle.BattleEffectGameData::AddEffect
  ed9505:	lea    esp,[ebp-0xc]
  ed9508:	pop    esi
  ed9509:	pop    edi
  ed950a:	pop    ebx
  ed950b:	pop    ebp
  ed950c:	ret
  ed950d:	call   1fbc48
  ed9512:	call   ebbb41