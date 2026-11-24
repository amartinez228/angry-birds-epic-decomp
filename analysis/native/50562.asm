
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008de051:
  8de051:	push   ebp
  8de052:	mov    ebp,esp
  8de054:	push   ebx
  8de055:	push   edi
  8de056:	push   esi
  8de057:	and    esp,0xfffffff0
  8de05a:	sub    esp,0x40
  8de05d:	call   8de062
  8de062:	pop    ebx
  8de063:	add    ebx,0x1633ee2
  8de069:	mov    esi,DWORD PTR [ebp+0xc]
  8de06c:	mov    al,BYTE PTR [ebx+0x60189]
  8de072:	test   al,al
  8de074:	jne    8de08d
  8de076:	lea    eax,[ebx-0x66d90c]
  8de07c:	mov    eax,DWORD PTR [eax]
  8de07e:	mov    DWORD PTR [esp],eax
  8de081:	call   1ca6e8
  8de086:	mov    BYTE PTR [ebx+0x60189],0x1
  8de08d:	test   esi,esi
  8de08f:	je     8de4f0
  8de095:	lea    eax,[ebx+0x45874]
  8de09b:	mov    DWORD PTR [esp+0x30],eax
  8de09f:	mov    eax,DWORD PTR [eax]
  8de0a1:	mov    ecx,DWORD PTR [esi]
  8de0a3:	movzx  edx,WORD PTR [ecx+0xaa]
  8de0aa:	test   edx,edx
  8de0ac:	je     8de0bd
  8de0ae:	mov    esi,DWORD PTR [ecx+0x4c]
  8de0b1:	xor    edi,edi
  8de0b3:	cmp    DWORD PTR [esi+edi*8],eax
  8de0b6:	je     8de0d6
  8de0b8:	inc    edi
  8de0b9:	cmp    edi,edx
  8de0bb:	jb     8de0b3
  8de0bd:	mov    DWORD PTR [esp+0x4],eax
  8de0c1:	mov    esi,DWORD PTR [ebp+0xc]
  8de0c4:	mov    DWORD PTR [esp],esi
  8de0c7:	mov    DWORD PTR [esp+0x8],0x19
  8de0cf:	call   1c1964
  8de0d4:	jmp    8de0e4
  8de0d6:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  8de0da:	lea    eax,[ecx+eax*8+0x17c]
  8de0e1:	mov    esi,DWORD PTR [ebp+0xc]
  8de0e4:	mov    ecx,DWORD PTR [eax+0x4]
  8de0e7:	mov    DWORD PTR [esp+0x4],ecx
  8de0eb:	mov    DWORD PTR [esp],esi
  8de0ee:	call   DWORD PTR [eax]
  8de0f0:	fstp   DWORD PTR [esp+0x38]
  8de0f4:	movss  xmm0,DWORD PTR [esp+0x38]
  8de0fa:	mov    eax,DWORD PTR [esp+0x30]
  8de0fe:	mov    eax,DWORD PTR [eax]
  8de100:	mov    ecx,DWORD PTR [esi]
  8de102:	movzx  edx,WORD PTR [ecx+0xaa]
  8de109:	test   edx,edx
  8de10b:	je     8de11c
  8de10d:	mov    esi,DWORD PTR [ecx+0x4c]
  8de110:	xor    edi,edi
  8de112:	cmp    DWORD PTR [esi+edi*8],eax
  8de115:	je     8de13b
  8de117:	inc    edi
  8de118:	cmp    edi,edx
  8de11a:	jb     8de112
  8de11c:	movss  DWORD PTR [esp+0x2c],xmm0
  8de122:	mov    DWORD PTR [esp+0x4],eax
  8de126:	mov    esi,DWORD PTR [ebp+0xc]
  8de129:	mov    DWORD PTR [esp],esi
  8de12c:	mov    DWORD PTR [esp+0x8],0x1f
  8de134:	call   1c1964
  8de139:	jmp    8de14f
  8de13b:	movss  DWORD PTR [esp+0x2c],xmm0
  8de141:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  8de145:	lea    eax,[ecx+eax*8+0x1ac]
  8de14c:	mov    esi,DWORD PTR [ebp+0xc]
  8de14f:	mov    ecx,DWORD PTR [eax+0x4]
  8de152:	mov    DWORD PTR [esp+0x4],ecx
  8de156:	mov    DWORD PTR [esp],esi
  8de159:	call   DWORD PTR [eax]
  8de15b:	fstp   DWORD PTR [esp+0x34]
  8de15f:	mov    eax,DWORD PTR [esp+0x30]
  8de163:	mov    eax,DWORD PTR [eax]
  8de165:	movss  xmm0,DWORD PTR [esp+0x2c]
  8de16b:	mulss  xmm0,DWORD PTR [ebp+0x10]
  8de170:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  8de178:	subss  xmm0,DWORD PTR [esp+0x34]
  8de17e:	mov    ecx,DWORD PTR [esi]
  8de180:	movzx  edx,WORD PTR [ecx+0xaa]
  8de187:	test   edx,edx
  8de189:	je     8de19a
  8de18b:	mov    esi,DWORD PTR [ecx+0x4c]
  8de18e:	xor    edi,edi
  8de190:	cmp    DWORD PTR [esi+edi*8],eax
  8de193:	je     8de1bf
  8de195:	inc    edi
  8de196:	cmp    edi,edx
  8de198:	jb     8de190
  8de19a:	mov    DWORD PTR [esp+0x4],eax
  8de19e:	mov    edi,DWORD PTR [ebp+0xc]
  8de1a1:	mov    DWORD PTR [esp],edi
  8de1a4:	mov    DWORD PTR [esp+0x8],0x70
  8de1ac:	movss  DWORD PTR [esp+0x2c],xmm0
  8de1b2:	call   1c1964
  8de1b7:	movss  xmm0,DWORD PTR [esp+0x2c]
  8de1bd:	jmp    8de1cd
  8de1bf:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  8de1c3:	lea    eax,[ecx+eax*8+0x434]
  8de1ca:	mov    edi,DWORD PTR [ebp+0xc]
  8de1cd:	mov    ecx,DWORD PTR [eax+0x4]
  8de1d0:	mov    DWORD PTR [esp+0xc],ecx
  8de1d4:	mov    DWORD PTR [esp+0x8],edi
  8de1d8:	movss  DWORD PTR [esp+0x4],xmm0
  8de1de:	mov    DWORD PTR [esp],edi
  8de1e1:	call   DWORD PTR [eax]
  8de1e3:	mov    DWORD PTR [esp+0x4],0x0
  8de1eb:	mov    DWORD PTR [esp],0x0
  8de1f2:	call   109314e  ; DIContainerLogic::GetBattleService
  8de1f7:	mov    esi,eax
  8de1f9:	mov    eax,DWORD PTR [ebp+0x8]
  8de1fc:	mov    eax,DWORD PTR [eax+0x14]
  8de1ff:	test   eax,eax
  8de201:	je     8de4f0
  8de207:	mov    DWORD PTR [esp],eax
  8de20a:	mov    DWORD PTR [esp+0x4],0x0
  8de212:	call   9f18af  ; BattleMgrBase::get_Model
  8de217:	test   esi,esi
  8de219:	je     8de4f0
  8de21f:	mov    DWORD PTR [esp+0x8],eax
  8de223:	mov    DWORD PTR [esp+0x4],edi
  8de227:	mov    DWORD PTR [esp],esi
  8de22a:	mov    DWORD PTR [esp+0x24],0x0
  8de232:	mov    DWORD PTR [esp+0x20],0x0
  8de23a:	mov    DWORD PTR [esp+0x1c],0x0
  8de242:	mov    DWORD PTR [esp+0x18],0x1
  8de24a:	mov    DWORD PTR [esp+0x14],0x0
  8de252:	mov    DWORD PTR [esp+0x10],0x1
  8de25a:	mov    DWORD PTR [esp+0xc],0x1
  8de262:	call   50a1af  ; ABH.Services.Logic.BattleService::HealCurrentTurn
  8de267:	mov    eax,DWORD PTR [esp+0x30]
  8de26b:	mov    eax,DWORD PTR [eax]
  8de26d:	mov    ecx,DWORD PTR [edi]
  8de26f:	movzx  edx,WORD PTR [ecx+0xaa]
  8de276:	test   edx,edx
  8de278:	je     8de289
  8de27a:	mov    esi,DWORD PTR [ecx+0x4c]
  8de27d:	xor    edi,edi
  8de27f:	cmp    DWORD PTR [esi+edi*8],eax
  8de282:	je     8de2a4
  8de284:	inc    edi
  8de285:	cmp    edi,edx
  8de287:	jb     8de27f
  8de289:	mov    DWORD PTR [esp+0x4],eax
  8de28d:	mov    esi,DWORD PTR [ebp+0xc]
  8de290:	mov    DWORD PTR [esp],esi
  8de293:	mov    DWORD PTR [esp+0x8],0x58
  8de29b:	call   1c1964
  8de2a0:	mov    ecx,eax
  8de2a2:	jmp    8de2b2
  8de2a4:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  8de2a8:	lea    ecx,[ecx+eax*8+0x374]
  8de2af:	mov    esi,DWORD PTR [ebp+0xc]
  8de2b2:	mov    eax,DWORD PTR [ecx+0x4]
  8de2b5:	mov    DWORD PTR [esp+0x4],eax
  8de2b9:	mov    DWORD PTR [esp],esi
  8de2bc:	call   DWORD PTR [ecx]
  8de2be:	test   al,al
  8de2c0:	je     8de443
  8de2c6:	mov    eax,DWORD PTR [esp+0x30]
  8de2ca:	mov    eax,DWORD PTR [eax]
  8de2cc:	mov    ecx,DWORD PTR [esi]
  8de2ce:	movzx  edx,WORD PTR [ecx+0xaa]
  8de2d5:	test   edx,edx
  8de2d7:	je     8de2e8
  8de2d9:	mov    esi,DWORD PTR [ecx+0x4c]
  8de2dc:	xor    edi,edi
  8de2de:	cmp    DWORD PTR [esi+edi*8],eax
  8de2e1:	je     8de301
  8de2e3:	inc    edi
  8de2e4:	cmp    edi,edx
  8de2e6:	jb     8de2de
  8de2e8:	mov    DWORD PTR [esp+0x4],eax
  8de2ec:	mov    edi,DWORD PTR [ebp+0xc]
  8de2ef:	mov    DWORD PTR [esp],edi
  8de2f2:	mov    DWORD PTR [esp+0x8],0x59
  8de2fa:	call   1c1964
  8de2ff:	jmp    8de30f
  8de301:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  8de305:	lea    eax,[ecx+eax*8+0x37c]
  8de30c:	mov    edi,DWORD PTR [ebp+0xc]
  8de30f:	mov    ecx,DWORD PTR [eax+0x4]
  8de312:	mov    DWORD PTR [esp+0x8],ecx
  8de316:	mov    DWORD PTR [esp],edi
  8de319:	mov    DWORD PTR [esp+0x4],0x0
  8de321:	call   DWORD PTR [eax]
  8de323:	mov    DWORD PTR [esp+0x4],0x0
  8de32b:	mov    DWORD PTR [esp],0x0
  8de332:	call   109314e  ; DIContainerLogic::GetBattleService
  8de337:	mov    esi,eax
  8de339:	mov    eax,DWORD PTR [ebp+0x8]
  8de33c:	mov    eax,DWORD PTR [eax+0x14]
  8de33f:	test   eax,eax
  8de341:	je     8de4f0
  8de347:	mov    DWORD PTR [esp],eax
  8de34a:	mov    DWORD PTR [esp+0x4],0x0
  8de352:	call   9f18af  ; BattleMgrBase::get_Model
  8de357:	test   esi,esi
  8de359:	je     8de4f0
  8de35f:	mov    DWORD PTR [esp+0x8],edi
  8de363:	mov    DWORD PTR [esp+0x4],eax
  8de367:	mov    DWORD PTR [esp],esi
  8de36a:	mov    DWORD PTR [esp+0xc],0x0
  8de372:	call   50a6f4  ; ABH.Services.Logic.BattleService::AddNewCombatantToBattle
  8de377:	mov    DWORD PTR [esp+0x4],0x0
  8de37f:	mov    DWORD PTR [esp],0x0
  8de386:	call   109314e  ; DIContainerLogic::GetBattleService
  8de38b:	mov    esi,eax
  8de38d:	mov    eax,DWORD PTR [ebp+0x8]
  8de390:	mov    eax,DWORD PTR [eax+0x14]
  8de393:	test   eax,eax
  8de395:	je     8de4f0
  8de39b:	mov    DWORD PTR [esp],eax
  8de39e:	mov    DWORD PTR [esp+0x4],0x0
  8de3a6:	call   9f18af  ; BattleMgrBase::get_Model
  8de3ab:	test   esi,esi
  8de3ad:	je     8de4f0
  8de3b3:	mov    DWORD PTR [esp+0x4],eax
  8de3b7:	mov    DWORD PTR [esp],esi
  8de3ba:	mov    DWORD PTR [esp+0xc],0x0
  8de3c2:	mov    DWORD PTR [esp+0x8],0x0
  8de3ca:	call   505253  ; ABH.Services.Logic.BattleService::ReCalculateInitiative
  8de3cf:	mov    eax,DWORD PTR [esp+0x30]
  8de3d3:	mov    eax,DWORD PTR [eax]
  8de3d5:	mov    ecx,DWORD PTR [edi]
  8de3d7:	movzx  edx,WORD PTR [ecx+0xaa]
  8de3de:	test   edx,edx
  8de3e0:	je     8de3f1
  8de3e2:	mov    esi,DWORD PTR [ecx+0x4c]
  8de3e5:	xor    edi,edi
  8de3e7:	cmp    DWORD PTR [esi+edi*8],eax
  8de3ea:	je     8de40c
  8de3ec:	inc    edi
  8de3ed:	cmp    edi,edx
  8de3ef:	jb     8de3e7
  8de3f1:	mov    DWORD PTR [esp+0x4],eax
  8de3f5:	mov    esi,DWORD PTR [ebp+0xc]
  8de3f8:	mov    DWORD PTR [esp],esi
  8de3fb:	mov    DWORD PTR [esp+0x8],0x11
  8de403:	call   1c1964
  8de408:	mov    ecx,eax
  8de40a:	jmp    8de41a
  8de40c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  8de410:	lea    ecx,[ecx+eax*8+0x13c]
  8de417:	mov    esi,DWORD PTR [ebp+0xc]
  8de41a:	mov    eax,DWORD PTR [ecx+0x4]
  8de41d:	mov    DWORD PTR [esp+0x4],eax
  8de421:	mov    DWORD PTR [esp],esi
  8de424:	call   DWORD PTR [ecx]
  8de426:	test   eax,eax
  8de428:	je     8de4f0
  8de42e:	mov    ecx,DWORD PTR [eax]
  8de430:	mov    edx,DWORD PTR [ecx+0x100]
  8de436:	mov    DWORD PTR [esp+0x4],edx
  8de43a:	mov    DWORD PTR [esp],eax
  8de43d:	call   DWORD PTR [ecx+0xfc]
  8de443:	mov    eax,DWORD PTR [ebp+0x8]
  8de446:	mov    esi,DWORD PTR [eax+0x10]
  8de449:	lea    eax,[ebx+0x44ebc]
  8de44f:	mov    eax,DWORD PTR [eax]
  8de451:	test   BYTE PTR [eax+0xb2],0x1
  8de458:	je     8de468
  8de45a:	cmp    DWORD PTR [eax+0x60],0x0
  8de45e:	jne    8de468
  8de460:	mov    DWORD PTR [esp],eax
  8de463:	call   1db0b8
  8de468:	mov    DWORD PTR [esp+0x4],esi
  8de46c:	mov    DWORD PTR [esp+0xc],0x0
  8de474:	mov    DWORD PTR [esp+0x8],0x0
  8de47c:	mov    DWORD PTR [esp],0x0
  8de483:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  8de488:	test   al,al
  8de48a:	je     8de4e8
  8de48c:	mov    eax,DWORD PTR [ebp+0x8]
  8de48f:	mov    esi,eax
  8de491:	mov    DWORD PTR [esp],esi
  8de494:	mov    DWORD PTR [esp+0x4],0x0
  8de49c:	call   8de4fa  ; CharacterControllerBattleGroundBase::ToggleReviveme
  8de4a1:	mov    eax,DWORD PTR [esi+0x10]
  8de4a4:	lea    ecx,[ebx+0x59588]  ; literal "ReviveIndicator_Hide"
  8de4aa:	mov    ecx,DWORD PTR [ecx]
  8de4ac:	mov    DWORD PTR [esp+0x8],ecx
  8de4b0:	mov    DWORD PTR [esp+0x4],eax
  8de4b4:	mov    DWORD PTR [esp+0xc],0x0
  8de4bc:	mov    DWORD PTR [esp],0x0
  8de4c3:	call   e2e26b  ; AnimationExtensions::GetAnimationOrAnimatorStateLength
  8de4c8:	lea    eax,[ebx+0x59584]  ; literal "DestroyReviveMe"
  8de4ce:	mov    eax,DWORD PTR [eax]
  8de4d0:	fstp   DWORD PTR [esp+0x8]
  8de4d4:	mov    DWORD PTR [esp+0x4],eax
  8de4d8:	mov    DWORD PTR [esp],esi
  8de4db:	mov    DWORD PTR [esp+0xc],0x0
  8de4e3:	call   139d96d  ; UnityEngine.MonoBehaviour::Invoke
  8de4e8:	lea    esp,[ebp-0xc]
  8de4eb:	pop    esi
  8de4ec:	pop    edi
  8de4ed:	pop    ebx
  8de4ee:	pop    ebp
  8de4ef:	ret
  8de4f0:	call   1fbc48
  8de4f5:	call   8b3f00