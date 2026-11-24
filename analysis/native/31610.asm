
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008b9188:
  8b9188:	push   ebp
  8b9189:	mov    ebp,esp
  8b918b:	push   ebx
  8b918c:	push   edi
  8b918d:	push   esi
  8b918e:	and    esp,0xfffffff0
  8b9191:	sub    esp,0x30
  8b9194:	call   8b9199
  8b9199:	pop    ebx
  8b919a:	add    ebx,0x1658dab
  8b91a0:	mov    esi,DWORD PTR [ebp+0x8]
  8b91a3:	mov    al,BYTE PTR [ebx+0x600d9]
  8b91a9:	test   al,al
  8b91ab:	jne    8b91c4
  8b91ad:	lea    eax,[ebx-0x66dbe0]
  8b91b3:	mov    eax,DWORD PTR [eax]
  8b91b5:	mov    DWORD PTR [esp],eax
  8b91b8:	call   1ca6e8
  8b91bd:	mov    BYTE PTR [ebx+0x600d9],0x1
  8b91c4:	mov    esi,DWORD PTR [esi+0x14]
  8b91c7:	test   esi,esi
  8b91c9:	je     8b93c8
  8b91cf:	lea    eax,[ebx+0x45884]
  8b91d5:	mov    DWORD PTR [esp+0x20],eax
  8b91d9:	mov    DWORD PTR [esp+0x24],ebx
  8b91dd:	mov    eax,DWORD PTR [eax]
  8b91df:	mov    ebx,DWORD PTR [esi]
  8b91e1:	movzx  edx,WORD PTR [ebx+0xaa]
  8b91e8:	test   edx,edx
  8b91ea:	je     8b91fb
  8b91ec:	mov    edi,DWORD PTR [ebx+0x4c]
  8b91ef:	xor    ecx,ecx
  8b91f1:	cmp    DWORD PTR [edi+ecx*8],eax
  8b91f4:	je     8b9217
  8b91f6:	inc    ecx
  8b91f7:	cmp    ecx,edx
  8b91f9:	jb     8b91f1
  8b91fb:	mov    DWORD PTR [esp+0x4],eax
  8b91ff:	mov    DWORD PTR [esp],esi
  8b9202:	mov    DWORD PTR [esp+0x8],0x9
  8b920a:	mov    ebx,DWORD PTR [esp+0x24]
  8b920e:	call   1c1964
  8b9213:	mov    ecx,eax
  8b9215:	jmp    8b9226
  8b9217:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8b921b:	lea    ecx,[ebx+eax*8+0xfc]
  8b9222:	mov    ebx,DWORD PTR [esp+0x24]
  8b9226:	mov    eax,DWORD PTR [ecx+0x4]
  8b9229:	mov    DWORD PTR [esp+0x4],eax
  8b922d:	mov    DWORD PTR [esp],esi
  8b9230:	call   DWORD PTR [ecx]
  8b9232:	test   eax,eax
  8b9234:	mov    edi,DWORD PTR [ebp+0x8]
  8b9237:	je     8b928f
  8b9239:	mov    esi,DWORD PTR [edi+0x14]
  8b923c:	test   esi,esi
  8b923e:	je     8b93c8
  8b9244:	mov    dl,BYTE PTR [ebp+0xc]
  8b9247:	lea    eax,[ebx+0x59478]  ; literal "Action_Attack_"
  8b924d:	mov    DWORD PTR [esp+0x24],ebx
  8b9251:	mov    eax,DWORD PTR [eax]
  8b9253:	mov    DWORD PTR [esp+0x1c],eax
  8b9257:	mov    eax,DWORD PTR [esp+0x20]
  8b925b:	mov    eax,DWORD PTR [eax]
  8b925d:	mov    ecx,DWORD PTR [esi]
  8b925f:	test   dl,dl
  8b9261:	movzx  edx,WORD PTR [ecx+0xaa]
  8b9268:	je     8b929c
  8b926a:	test   dx,dx
  8b926d:	je     8b927e
  8b926f:	mov    edi,DWORD PTR [ecx+0x4c]
  8b9272:	xor    ebx,ebx
  8b9274:	cmp    DWORD PTR [edi+ebx*8],eax
  8b9277:	je     8b92cc
  8b9279:	inc    ebx
  8b927a:	cmp    ebx,edx
  8b927c:	jb     8b9274
  8b927e:	mov    DWORD PTR [esp+0x4],eax
  8b9282:	mov    DWORD PTR [esp],esi
  8b9285:	mov    DWORD PTR [esp+0x8],0xa
  8b928d:	jmp    8b92bf
  8b928f:	lea    eax,[ebx+0x592b0]  ; literal "Action_Attack_1"
  8b9295:	mov    eax,DWORD PTR [eax]
  8b9297:	jmp    8b9390
  8b929c:	test   dx,dx
  8b929f:	je     8b92b0
  8b92a1:	mov    edi,DWORD PTR [ecx+0x4c]
  8b92a4:	xor    ebx,ebx
  8b92a6:	cmp    DWORD PTR [edi+ebx*8],eax
  8b92a9:	je     8b92dd
  8b92ab:	inc    ebx
  8b92ac:	cmp    ebx,edx
  8b92ae:	jb     8b92a6
  8b92b0:	mov    DWORD PTR [esp+0x4],eax
  8b92b4:	mov    DWORD PTR [esp],esi
  8b92b7:	mov    DWORD PTR [esp+0x8],0x9
  8b92bf:	mov    ebx,DWORD PTR [esp+0x24]
  8b92c3:	call   1c1964
  8b92c8:	mov    ecx,eax
  8b92ca:	jmp    8b92ec
  8b92cc:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8b92d0:	lea    ecx,[ecx+eax*8+0x104]
  8b92d7:	mov    ebx,DWORD PTR [esp+0x24]
  8b92db:	jmp    8b92ec
  8b92dd:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8b92e1:	lea    ecx,[ecx+eax*8+0xfc]
  8b92e8:	mov    ebx,DWORD PTR [esp+0x24]
  8b92ec:	mov    eax,DWORD PTR [ecx+0x4]
  8b92ef:	mov    DWORD PTR [esp+0x4],eax
  8b92f3:	mov    DWORD PTR [esp],esi
  8b92f6:	call   DWORD PTR [ecx]
  8b92f8:	test   eax,eax
  8b92fa:	je     8b93c8
  8b9300:	lea    ecx,[ebx+0x4a0c8]
  8b9306:	mov    ecx,DWORD PTR [ecx]
  8b9308:	mov    DWORD PTR [esp+0x4],ecx
  8b930c:	mov    DWORD PTR [esp],eax
  8b930f:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  8b9314:	test   eax,eax
  8b9316:	mov    edi,DWORD PTR [ebp+0x8]
  8b9319:	je     8b93c8
  8b931f:	mov    DWORD PTR [esp],eax
  8b9322:	mov    DWORD PTR [esp+0x4],0x0
  8b932a:	call   1700b44  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_AnimationIndex
  8b932f:	mov    DWORD PTR [esp+0x28],eax
  8b9333:	lea    eax,[ebx+0x43120]
  8b9339:	mov    eax,DWORD PTR [eax]
  8b933b:	lea    ecx,[esp+0x28]
  8b933f:	mov    DWORD PTR [esp+0x4],ecx
  8b9343:	mov    DWORD PTR [esp],eax
  8b9346:	call   20bf14
  8b934b:	mov    esi,eax
  8b934d:	lea    eax,[ebx+0x430e4]
  8b9353:	mov    eax,DWORD PTR [eax]
  8b9355:	test   BYTE PTR [eax+0xb2],0x1
  8b935c:	je     8b936c
  8b935e:	cmp    DWORD PTR [eax+0x60],0x0
  8b9362:	jne    8b936c
  8b9364:	mov    DWORD PTR [esp],eax
  8b9367:	call   1db0b8
  8b936c:	mov    DWORD PTR [esp+0x8],esi
  8b9370:	mov    eax,DWORD PTR [esp+0x1c]
  8b9374:	mov    DWORD PTR [esp+0x4],eax
  8b9378:	mov    DWORD PTR [esp+0xc],0x0
  8b9380:	mov    DWORD PTR [esp],0x0
  8b9387:	call   cb2fed  ; System.String::Concat
  8b938c:	test   edi,edi
  8b938e:	je     8b93c8
  8b9390:	mov    DWORD PTR [esp+0x4],eax
  8b9394:	mov    DWORD PTR [esp],edi
  8b9397:	mov    DWORD PTR [esp+0x8],0x0
  8b939f:	call   e4e6f3  ; AssetControllerWithBoneAnimationBase::PlayAnimation
  8b93a4:	lea    eax,[ebx+0x585d0]  ; literal "Idle"
  8b93aa:	mov    eax,DWORD PTR [eax]
  8b93ac:	mov    DWORD PTR [esp+0x4],eax
  8b93b0:	mov    DWORD PTR [esp],edi
  8b93b3:	mov    DWORD PTR [esp+0x8],0x0
  8b93bb:	call   e4eb5a  ; AssetControllerWithBoneAnimationBase::PlayAnimationQueued
  8b93c0:	lea    esp,[ebp-0xc]
  8b93c3:	pop    esi
  8b93c4:	pop    edi
  8b93c5:	pop    ebx
  8b93c6:	pop    ebp
  8b93c7:	ret
  8b93c8:	call   1fbc48
  8b93cd:	call   8b3f00