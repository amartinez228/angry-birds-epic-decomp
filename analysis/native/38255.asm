
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec9260:
  ec9260:	push   ebp
  ec9261:	mov    ebp,esp
  ec9263:	push   ebx
  ec9264:	push   edi
  ec9265:	push   esi
  ec9266:	and    esp,0xfffffff0
  ec9269:	sub    esp,0x20
  ec926c:	call   ec9271
  ec9271:	pop    ebx
  ec9272:	add    ebx,0x1048cd3
  ec9278:	mov    esi,DWORD PTR [ebp+0xc]
  ec927b:	mov    edi,DWORD PTR [ebp+0x8]
  ec927e:	mov    al,BYTE PTR [ebx+0x6273a]
  ec9284:	test   al,al
  ec9286:	jne    ec929f
  ec9288:	lea    eax,[ebx-0x65b758]
  ec928e:	mov    eax,DWORD PTR [eax]
  ec9290:	mov    DWORD PTR [esp],eax
  ec9293:	call   1ca6e8
  ec9298:	mov    BYTE PTR [ebx+0x6273a],0x1
  ec929f:	mov    DWORD PTR [esi],0x0
  ec92a5:	mov    DWORD PTR [esp+0x18],0x0
  ec92ad:	mov    eax,DWORD PTR [edi+0x8]
  ec92b0:	test   eax,eax
  ec92b2:	je     ec94b2
  ec92b8:	mov    esi,DWORD PTR [ebp+0x10]
  ec92bb:	mov    DWORD PTR [esp],eax
  ec92be:	mov    DWORD PTR [esp+0x4],0x0
  ec92c6:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ec92cb:	xor    ecx,ecx
  ec92cd:	test   esi,esi
  ec92cf:	je     ec94a7
  ec92d5:	test   eax,eax
  ec92d7:	je     ec94a7
  ec92dd:	lea    eax,[ebx+0x45874]
  ec92e3:	mov    DWORD PTR [esp+0x14],eax
  ec92e7:	mov    eax,DWORD PTR [eax]
  ec92e9:	mov    ecx,DWORD PTR [esi]
  ec92eb:	movzx  edx,WORD PTR [ecx+0xaa]
  ec92f2:	test   edx,edx
  ec92f4:	je     ec9305
  ec92f6:	mov    edi,DWORD PTR [ecx+0x4c]
  ec92f9:	xor    esi,esi
  ec92fb:	cmp    DWORD PTR [edi+esi*8],eax
  ec92fe:	je     ec9320
  ec9300:	inc    esi
  ec9301:	cmp    esi,edx
  ec9303:	jb     ec92fb
  ec9305:	mov    DWORD PTR [esp+0x4],eax
  ec9309:	mov    esi,DWORD PTR [ebp+0x10]
  ec930c:	mov    DWORD PTR [esp],esi
  ec930f:	mov    DWORD PTR [esp+0x8],0x31
  ec9317:	call   1c1964
  ec931c:	mov    ecx,eax
  ec931e:	jmp    ec932e
  ec9320:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ec9324:	lea    ecx,[ecx+eax*8+0x23c]
  ec932b:	mov    esi,DWORD PTR [ebp+0x10]
  ec932e:	mov    eax,DWORD PTR [ecx+0x4]
  ec9331:	mov    DWORD PTR [esp+0x4],eax
  ec9335:	mov    DWORD PTR [esp],esi
  ec9338:	call   DWORD PTR [ecx]
  ec933a:	test   eax,eax
  ec933c:	mov    eax,DWORD PTR [ebp+0x8]
  ec933f:	je     ec94a5
  ec9345:	mov    eax,DWORD PTR [eax+0x8]
  ec9348:	test   eax,eax
  ec934a:	je     ec94b2
  ec9350:	mov    DWORD PTR [esp],eax
  ec9353:	mov    DWORD PTR [esp+0x4],0x0
  ec935b:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ec9360:	test   eax,eax
  ec9362:	je     ec94b2
  ec9368:	lea    ecx,[ebx+0x56b88]  ; literal "charge"
  ec936e:	mov    ecx,DWORD PTR [ecx]
  ec9370:	lea    edx,[ebx+0x4a014]
  ec9376:	mov    edx,DWORD PTR [edx]
  ec9378:	mov    DWORD PTR [esp+0x8],edx
  ec937c:	mov    DWORD PTR [esp+0x4],ecx
  ec9380:	mov    DWORD PTR [esp],eax
  ec9383:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  ec9388:	test   al,al
  ec938a:	je     ec94a5
  ec9390:	mov    eax,DWORD PTR [esp+0x14]
  ec9394:	mov    eax,DWORD PTR [eax]
  ec9396:	mov    ecx,DWORD PTR [esi]
  ec9398:	movzx  edx,WORD PTR [ecx+0xaa]
  ec939f:	test   edx,edx
  ec93a1:	je     ec93b2
  ec93a3:	mov    edi,DWORD PTR [ecx+0x4c]
  ec93a6:	xor    esi,esi
  ec93a8:	cmp    DWORD PTR [edi+esi*8],eax
  ec93ab:	je     ec93cd
  ec93ad:	inc    esi
  ec93ae:	cmp    esi,edx
  ec93b0:	jb     ec93a8
  ec93b2:	mov    DWORD PTR [esp+0x4],eax
  ec93b6:	mov    esi,DWORD PTR [ebp+0x10]
  ec93b9:	mov    DWORD PTR [esp],esi
  ec93bc:	mov    DWORD PTR [esp+0x8],0x31
  ec93c4:	call   1c1964
  ec93c9:	mov    ecx,eax
  ec93cb:	jmp    ec93db
  ec93cd:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ec93d1:	lea    ecx,[ecx+eax*8+0x23c]
  ec93d8:	mov    esi,DWORD PTR [ebp+0x10]
  ec93db:	mov    eax,DWORD PTR [ecx+0x4]
  ec93de:	mov    DWORD PTR [esp+0x4],eax
  ec93e2:	mov    DWORD PTR [esp],esi
  ec93e5:	call   DWORD PTR [ecx]
  ec93e7:	mov    esi,eax
  ec93e9:	mov    eax,DWORD PTR [ebp+0x8]
  ec93ec:	mov    eax,DWORD PTR [eax+0x8]
  ec93ef:	test   eax,eax
  ec93f1:	je     ec94b2
  ec93f7:	mov    DWORD PTR [esp],eax
  ec93fa:	mov    DWORD PTR [esp+0x4],0x0
  ec9402:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ec9407:	test   eax,eax
  ec9409:	je     ec94b2
  ec940f:	mov    DWORD PTR [esp],eax
  ec9412:	mov    DWORD PTR [esp+0x4],0x0
  ec941a:	call   17030e4  ; ABH.Shared.BalancingData.SkillBalancingData::get_AssetId
  ec941f:	mov    edi,eax
  ec9421:	lea    eax,[ebx+0x430e4]
  ec9427:	mov    eax,DWORD PTR [eax]
  ec9429:	test   BYTE PTR [eax+0xb2],0x1
  ec9430:	je     ec9440
  ec9432:	cmp    DWORD PTR [eax+0x60],0x0
  ec9436:	jne    ec9440
  ec9438:	mov    DWORD PTR [esp],eax
  ec943b:	call   1db0b8
  ec9440:	lea    eax,[ebx+0x56b8c]  ; literal "Charge_"
  ec9446:	mov    eax,DWORD PTR [eax]
  ec9448:	mov    DWORD PTR [esp+0x8],edi
  ec944c:	mov    DWORD PTR [esp+0x4],eax
  ec9450:	mov    DWORD PTR [esp+0xc],0x0
  ec9458:	mov    DWORD PTR [esp],0x0
  ec945f:	call   ca462a  ; System.String::Concat
  ec9464:	test   esi,esi
  ec9466:	je     ec94b2
  ec9468:	lea    ecx,[ebx+0x4a340]
  ec946e:	mov    ecx,DWORD PTR [ecx]
  ec9470:	mov    DWORD PTR [esp+0xc],ecx
  ec9474:	lea    ecx,[esp+0x18]
  ec9478:	mov    DWORD PTR [esp+0x8],ecx
  ec947c:	mov    DWORD PTR [esp+0x4],eax
  ec9480:	mov    DWORD PTR [esp],esi
  ec9483:	call   61b116  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, object>::TryGetValue | System.Collections.Generic.Dictionary`2<string, string>::TryGetValue | +25 other aliases
  ec9488:	test   al,al
  ec948a:	je     ec94a5
  ec948c:	mov    eax,DWORD PTR [esp+0x18]
  ec9490:	test   eax,eax
  ec9492:	je     ec94b2
  ec9494:	mov    DWORD PTR [esp],eax
  ec9497:	call   ebf170  ; ABH.GameDatas.Battle.BattleEffectGameData::GetTurnsLeft
  ec949c:	mov    ecx,DWORD PTR [ebp+0xc]
  ec949f:	mov    DWORD PTR [ecx],eax
  ec94a1:	mov    cl,0x1
  ec94a3:	jmp    ec94a7
  ec94a5:	xor    ecx,ecx
  ec94a7:	movzx  eax,cl
  ec94aa:	lea    esp,[ebp-0xc]
  ec94ad:	pop    esi
  ec94ae:	pop    edi
  ec94af:	pop    ebx
  ec94b0:	pop    ebp
  ec94b1:	ret
  ec94b2:	call   1fbc48
  ec94b7:	call   ebbb41