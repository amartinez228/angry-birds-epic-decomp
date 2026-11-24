
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

009f5375:
  9f5375:	push   ebp
  9f5376:	mov    ebp,esp
  9f5378:	push   ebx
  9f5379:	push   edi
  9f537a:	push   esi
  9f537b:	and    esp,0xfffffff0
  9f537e:	sub    esp,0x20
  9f5381:	call   9f5386
  9f5386:	pop    ebx
  9f5387:	add    ebx,0x151cbbe
  9f538d:	mov    edi,DWORD PTR [ebp+0xc]
  9f5390:	mov    esi,DWORD PTR [ebp+0x8]
  9f5393:	mov    al,BYTE PTR [ebx+0x608f6]
  9f5399:	test   al,al
  9f539b:	jne    9f53b4
  9f539d:	lea    eax,[ebx-0x66f980]
  9f53a3:	mov    eax,DWORD PTR [eax]
  9f53a5:	mov    DWORD PTR [esp],eax
  9f53a8:	call   1ca6e8
  9f53ad:	mov    BYTE PTR [ebx+0x608f6],0x1
  9f53b4:	mov    DWORD PTR [esp+0x18],0x0
  9f53bc:	mov    BYTE PTR [esi+0xd2],0x1
  9f53c3:	test   edi,edi
  9f53c5:	je     9f5767
  9f53cb:	lea    eax,[ebx+0x45874]
  9f53d1:	mov    DWORD PTR [esp+0x14],eax
  9f53d5:	mov    eax,DWORD PTR [eax]
  9f53d7:	mov    ecx,DWORD PTR [edi]
  9f53d9:	movzx  edx,WORD PTR [ecx+0xaa]
  9f53e0:	test   edx,edx
  9f53e2:	je     9f53f3
  9f53e4:	mov    edi,DWORD PTR [ecx+0x4c]
  9f53e7:	xor    esi,esi
  9f53e9:	cmp    DWORD PTR [edi+esi*8],eax
  9f53ec:	je     9f540e
  9f53ee:	inc    esi
  9f53ef:	cmp    esi,edx
  9f53f1:	jb     9f53e9
  9f53f3:	mov    DWORD PTR [esp+0x4],eax
  9f53f7:	mov    esi,DWORD PTR [ebp+0xc]
  9f53fa:	mov    DWORD PTR [esp],esi
  9f53fd:	mov    DWORD PTR [esp+0x8],0x11
  9f5405:	call   1c1964
  9f540a:	mov    ecx,eax
  9f540c:	jmp    9f541c
  9f540e:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  9f5412:	lea    ecx,[ecx+eax*8+0x13c]
  9f5419:	mov    esi,DWORD PTR [ebp+0xc]
  9f541c:	mov    eax,DWORD PTR [ecx+0x4]
  9f541f:	mov    DWORD PTR [esp+0x4],eax
  9f5423:	mov    DWORD PTR [esp],esi
  9f5426:	call   DWORD PTR [ecx]
  9f5428:	test   eax,eax
  9f542a:	je     9f5767
  9f5430:	mov    DWORD PTR [esp],eax
  9f5433:	mov    DWORD PTR [esp+0x4],0x0
  9f543b:	call   1501684  ; UnityEngine.Component::get_gameObject
  9f5440:	test   eax,eax
  9f5442:	je     9f5767
  9f5448:	mov    DWORD PTR [esp],eax
  9f544b:	mov    DWORD PTR [esp+0x8],0x0
  9f5453:	mov    DWORD PTR [esp+0x4],0x1
  9f545b:	call   137e9a1  ; UnityEngine.GameObject::SetActive
  9f5460:	mov    eax,DWORD PTR [esp+0x14]
  9f5464:	mov    eax,DWORD PTR [eax]
  9f5466:	mov    ecx,DWORD PTR [esi]
  9f5468:	movzx  edx,WORD PTR [ecx+0xaa]
  9f546f:	test   edx,edx
  9f5471:	je     9f5482
  9f5473:	mov    edi,DWORD PTR [ecx+0x4c]
  9f5476:	xor    esi,esi
  9f5478:	cmp    DWORD PTR [edi+esi*8],eax
  9f547b:	je     9f549d
  9f547d:	inc    esi
  9f547e:	cmp    esi,edx
  9f5480:	jb     9f5478
  9f5482:	mov    DWORD PTR [esp+0x4],eax
  9f5486:	mov    esi,DWORD PTR [ebp+0xc]
  9f5489:	mov    DWORD PTR [esp],esi
  9f548c:	mov    DWORD PTR [esp+0x8],0x11
  9f5494:	call   1c1964
  9f5499:	mov    ecx,eax
  9f549b:	jmp    9f54ab
  9f549d:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  9f54a1:	lea    ecx,[ecx+eax*8+0x13c]
  9f54a8:	mov    esi,DWORD PTR [ebp+0xc]
  9f54ab:	mov    eax,DWORD PTR [ecx+0x4]
  9f54ae:	mov    DWORD PTR [esp+0x4],eax
  9f54b2:	mov    DWORD PTR [esp],esi
  9f54b5:	call   DWORD PTR [ecx]
  9f54b7:	test   eax,eax
  9f54b9:	je     9f5767
  9f54bf:	mov    DWORD PTR [esp+0x4],esi
  9f54c3:	mov    DWORD PTR [esp],eax
  9f54c6:	mov    DWORD PTR [esp+0xc],0x0
  9f54ce:	mov    DWORD PTR [esp+0x8],0x42c80000
  9f54d6:	call   8de051  ; CharacterControllerBattleGroundBase::ReviveCombatant
  9f54db:	mov    eax,DWORD PTR [esp+0x14]
  9f54df:	mov    eax,DWORD PTR [eax]
  9f54e1:	mov    ecx,DWORD PTR [esi]
  9f54e3:	movzx  edx,WORD PTR [ecx+0xaa]
  9f54ea:	test   edx,edx
  9f54ec:	je     9f54fd
  9f54ee:	mov    edi,DWORD PTR [ecx+0x4c]
  9f54f1:	xor    esi,esi
  9f54f3:	cmp    DWORD PTR [edi+esi*8],eax
  9f54f6:	je     9f5516
  9f54f8:	inc    esi
  9f54f9:	cmp    esi,edx
  9f54fb:	jb     9f54f3
  9f54fd:	mov    DWORD PTR [esp+0x4],eax
  9f5501:	mov    edi,DWORD PTR [ebp+0xc]
  9f5504:	mov    DWORD PTR [esp],edi
  9f5507:	mov    DWORD PTR [esp+0x8],0x61
  9f550f:	call   1c1964
  9f5514:	jmp    9f5524
  9f5516:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  9f551a:	lea    eax,[ecx+eax*8+0x3bc]
  9f5521:	mov    edi,DWORD PTR [ebp+0xc]
  9f5524:	mov    ecx,DWORD PTR [eax+0x4]
  9f5527:	mov    DWORD PTR [esp+0x8],ecx
  9f552b:	mov    DWORD PTR [esp],edi
  9f552e:	mov    DWORD PTR [esp+0x4],0x1
  9f5536:	call   DWORD PTR [eax]
  9f5538:	mov    esi,DWORD PTR [ebp+0x8]
  9f553b:	mov    eax,DWORD PTR [esi]
  9f553d:	mov    ecx,DWORD PTR [eax+0x118]
  9f5543:	mov    DWORD PTR [esp+0x8],ecx
  9f5547:	mov    DWORD PTR [esp+0x4],edi
  9f554b:	mov    DWORD PTR [esp],esi
  9f554e:	call   DWORD PTR [eax+0x114]
  9f5554:	mov    DWORD PTR [esp+0x4],eax
  9f5558:	mov    DWORD PTR [esp],esi
  9f555b:	mov    DWORD PTR [esp+0x8],0x0
  9f5563:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  9f5568:	mov    eax,DWORD PTR [esi]
  9f556a:	mov    ecx,DWORD PTR [esi+0x38]
  9f556d:	mov    edx,DWORD PTR [eax+0xe8]
  9f5573:	mov    DWORD PTR [esp+0xc],edx
  9f5577:	mov    DWORD PTR [esp+0x4],ecx
  9f557b:	mov    DWORD PTR [esp],esi
  9f557e:	mov    DWORD PTR [esp+0x8],0x0
  9f5586:	call   DWORD PTR [eax+0xe4]
  9f558c:	mov    DWORD PTR [esp+0x4],eax
  9f5590:	mov    DWORD PTR [esp],esi
  9f5593:	mov    DWORD PTR [esp+0x8],0x0
  9f559b:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  9f55a0:	mov    eax,DWORD PTR [esi+0x20]
  9f55a3:	test   eax,eax
  9f55a5:	je     9f5767
  9f55ab:	mov    eax,DWORD PTR [eax+0x14]
  9f55ae:	test   eax,eax
  9f55b0:	je     9f5767
  9f55b6:	inc    DWORD PTR [eax+0x54]
  9f55b9:	mov    eax,DWORD PTR [esp+0x14]
  9f55bd:	mov    eax,DWORD PTR [eax]
  9f55bf:	mov    ecx,DWORD PTR [edi]
  9f55c1:	movzx  edx,WORD PTR [ecx+0xaa]
  9f55c8:	test   edx,edx
  9f55ca:	je     9f55db
  9f55cc:	mov    esi,DWORD PTR [ecx+0x4c]
  9f55cf:	xor    edi,edi
  9f55d1:	cmp    DWORD PTR [esi+edi*8],eax
  9f55d4:	je     9f55f6
  9f55d6:	inc    edi
  9f55d7:	cmp    edi,edx
  9f55d9:	jb     9f55d1
  9f55db:	mov    DWORD PTR [esp+0x4],eax
  9f55df:	mov    esi,DWORD PTR [ebp+0xc]
  9f55e2:	mov    DWORD PTR [esp],esi
  9f55e5:	mov    DWORD PTR [esp+0x8],0x11
  9f55ed:	call   1c1964
  9f55f2:	mov    ecx,eax
  9f55f4:	jmp    9f5604
  9f55f6:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  9f55fa:	lea    ecx,[ecx+eax*8+0x13c]
  9f5601:	mov    esi,DWORD PTR [ebp+0xc]
  9f5604:	mov    eax,DWORD PTR [ecx+0x4]
  9f5607:	mov    DWORD PTR [esp+0x4],eax
  9f560b:	mov    DWORD PTR [esp],esi
  9f560e:	call   DWORD PTR [ecx]
  9f5610:	test   eax,eax
  9f5612:	mov    edi,DWORD PTR [ebp+0x8]
  9f5615:	je     9f5767
  9f561b:	mov    ecx,DWORD PTR [eax]
  9f561d:	mov    edx,DWORD PTR [ecx+0x100]
  9f5623:	mov    DWORD PTR [esp+0x4],edx
  9f5627:	mov    DWORD PTR [esp],eax
  9f562a:	call   DWORD PTR [ecx+0xfc]
  9f5630:	mov    DWORD PTR [esp+0x4],0x0
  9f5638:	mov    DWORD PTR [esp],0x0
  9f563f:	call   106b137  ; DIContainerLogic::get_InventoryService
  9f5644:	mov    ecx,DWORD PTR [edi+0x20]
  9f5647:	test   ecx,ecx
  9f5649:	je     9f5767
  9f564f:	test   eax,eax
  9f5651:	je     9f5767
  9f5657:	mov    ecx,DWORD PTR [ecx+0x78]
  9f565a:	lea    edx,[ebx+0x574c0]  ; literal "xp_multiplier_consumable_01"
  9f5660:	mov    edx,DWORD PTR [edx]
  9f5662:	mov    DWORD PTR [esp+0x8],edx
  9f5666:	mov    DWORD PTR [esp+0x4],ecx
  9f566a:	mov    DWORD PTR [esp],eax
  9f566d:	mov    DWORD PTR [esp+0xc],0x0
  9f5675:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  9f567a:	test   eax,eax
  9f567c:	jle    9f575f
  9f5682:	mov    DWORD PTR [esp+0x18],0x0
  9f568a:	lea    eax,[ebx+0x58d48]  ; literal "Consumable_XP"
  9f5690:	mov    esi,DWORD PTR [eax]
  9f5692:	mov    DWORD PTR [esp+0x4],0x0
  9f569a:	mov    DWORD PTR [esp],0x0
  9f56a1:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  9f56a6:	test   eax,eax
  9f56a8:	je     9f5767
  9f56ae:	lea    ecx,[esp+0x18]
  9f56b2:	mov    DWORD PTR [esp+0x8],ecx
  9f56b6:	mov    DWORD PTR [esp+0x4],esi
  9f56ba:	mov    DWORD PTR [esp],eax
  9f56bd:	mov    DWORD PTR [esp+0xc],0x0
  9f56c5:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  9f56ca:	test   al,al
  9f56cc:	je     9f575f
  9f56d2:	lea    eax,[ebx+0x58d4c]  ; literal "Try to instantiate XP doubler effect"
  9f56d8:	mov    eax,DWORD PTR [eax]
  9f56da:	mov    DWORD PTR [esp+0x4],eax
  9f56de:	mov    DWORD PTR [esp+0x8],0x0
  9f56e6:	mov    DWORD PTR [esp],0x0
  9f56ed:	call   1068c69  ; DebugLog::Log
  9f56f2:	lea    eax,[ebx+0x45890]
  9f56f8:	mov    eax,DWORD PTR [eax]
  9f56fa:	mov    DWORD PTR [esp],eax
  9f56fd:	call   20bfb2
  9f5702:	mov    esi,eax
  9f5704:	lea    eax,[ebx+0x4a074]
  9f570a:	mov    eax,DWORD PTR [eax]
  9f570c:	mov    DWORD PTR [esp+0x4],eax
  9f5710:	mov    DWORD PTR [esp],esi
  9f5713:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  9f5718:	test   esi,esi
  9f571a:	je     9f5767
  9f571c:	lea    eax,[ebx+0x4a078]
  9f5722:	mov    eax,DWORD PTR [eax]
  9f5724:	mov    DWORD PTR [esp+0x8],eax
  9f5728:	mov    eax,DWORD PTR [ebp+0xc]
  9f572b:	mov    DWORD PTR [esp+0x4],eax
  9f572f:	mov    DWORD PTR [esp],esi
  9f5732:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  9f5737:	mov    eax,DWORD PTR [esp+0x18]
  9f573b:	mov    DWORD PTR [esp+0x8],eax
  9f573f:	mov    DWORD PTR [esp+0x4],esi
  9f5743:	mov    DWORD PTR [esp],edi
  9f5746:	call   9f52f2  ; BattleMgrBase::DelayedInstantiateXPEffect
  9f574b:	mov    DWORD PTR [esp+0x4],eax
  9f574f:	mov    DWORD PTR [esp],edi
  9f5752:	mov    DWORD PTR [esp+0x8],0x0
  9f575a:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  9f575f:	lea    esp,[ebp-0xc]
  9f5762:	pop    esi
  9f5763:	pop    edi
  9f5764:	pop    ebx
  9f5765:	pop    ebp
  9f5766:	ret
  9f5767:	call   1fbc48
  9f576c:	call   9ef4ac