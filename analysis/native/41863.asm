
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

005683db:
  5683db:	push   ebp
  5683dc:	mov    ebp,esp
  5683de:	push   ebx
  5683df:	push   edi
  5683e0:	push   esi
  5683e1:	and    esp,0xfffffff0
  5683e4:	sub    esp,0x30
  5683e7:	call   5683ec
  5683ec:	pop    ebx
  5683ed:	add    ebx,0x19a9b58
  5683f3:	mov    al,BYTE PTR [ebx+0x5d6ec]
  5683f9:	test   al,al
  5683fb:	jne    568414
  5683fd:	lea    eax,[ebx-0x664cbc]
  568403:	mov    eax,DWORD PTR [eax]
  568405:	mov    DWORD PTR [esp],eax
  568408:	call   1ca6e8
  56840d:	mov    BYTE PTR [ebx+0x5d6ec],0x1
  568414:	lea    eax,[ebx+0x461ac]
  56841a:	mov    eax,DWORD PTR [eax]
  56841c:	mov    DWORD PTR [esp],eax
  56841f:	call   20bfb2
  568424:	mov    esi,eax
  568426:	mov    DWORD PTR [esp],esi
  568429:	mov    DWORD PTR [esp+0x4],0x0
  568431:	call   124632e  ; System.Object::.ctor
  568436:	test   esi,esi
  568438:	je     5685b5
  56843e:	mov    eax,DWORD PTR [ebp+0x10]
  568441:	mov    ecx,DWORD PTR [ebp+0xc]
  568444:	mov    DWORD PTR [esi+0x8],eax
  568447:	test   ecx,ecx
  568449:	je     5685b5
  56844f:	mov    eax,DWORD PTR [ecx+0x10]
  568452:	test   eax,eax
  568454:	je     5685b5
  56845a:	lea    ecx,[ebx+0x49f74]
  568460:	mov    ecx,DWORD PTR [ecx]
  568462:	mov    DWORD PTR [esp+0x8],ecx
  568466:	mov    DWORD PTR [esp],eax
  568469:	mov    DWORD PTR [esp+0x4],0xa
  568471:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  568476:	mov    DWORD PTR [esp+0x1c],eax
  56847a:	lea    eax,[ebx+0x4b658]
  568480:	mov    eax,DWORD PTR [eax]
  568482:	mov    DWORD PTR [esp+0x18],eax
  568486:	lea    eax,[ebx+0x45e1c]
  56848c:	mov    eax,DWORD PTR [eax]
  56848e:	mov    DWORD PTR [esp],eax
  568491:	call   20bfb2
  568496:	mov    edi,eax
  568498:	mov    eax,DWORD PTR [esp+0x18]
  56849c:	mov    DWORD PTR [esp+0x28],eax
  5684a0:	lea    eax,[ebx+0x4a814]
  5684a6:	mov    eax,DWORD PTR [eax]
  5684a8:	mov    DWORD PTR [esp+0xc],eax
  5684ac:	mov    eax,DWORD PTR [esp+0x28]
  5684b0:	mov    DWORD PTR [esp+0x8],eax
  5684b4:	mov    DWORD PTR [esp+0x4],esi
  5684b8:	mov    DWORD PTR [esp],edi
  5684bb:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  5684c0:	lea    eax,[ebx+0x4a818]
  5684c6:	mov    eax,DWORD PTR [eax]
  5684c8:	mov    DWORD PTR [esp+0xc],eax
  5684cc:	mov    DWORD PTR [esp+0x8],edi
  5684d0:	mov    eax,DWORD PTR [esp+0x1c]
  5684d4:	mov    DWORD PTR [esp+0x4],eax
  5684d8:	mov    DWORD PTR [esp],0x0
  5684df:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  5684e4:	lea    esi,[ebx+0x461b0]
  5684ea:	mov    edx,DWORD PTR [esi]
  5684ec:	mov    ecx,DWORD PTR [edx+0x50]
  5684ef:	cmp    DWORD PTR [ecx],0x0
  5684f2:	jne    56854f
  5684f4:	lea    ecx,[ebx+0x4b65c]
  5684fa:	mov    ecx,DWORD PTR [ecx]
  5684fc:	mov    DWORD PTR [esp+0x18],ecx
  568500:	lea    ecx,[ebx+0x461b4]
  568506:	mov    ecx,DWORD PTR [ecx]
  568508:	mov    DWORD PTR [esp],ecx
  56850b:	mov    DWORD PTR [esp+0x1c],eax
  56850f:	call   20bfb2
  568514:	mov    edi,eax
  568516:	mov    eax,DWORD PTR [esp+0x18]
  56851a:	mov    DWORD PTR [esp+0x20],eax
  56851e:	lea    eax,[ebx+0x4b660]
  568524:	mov    eax,DWORD PTR [eax]
  568526:	mov    DWORD PTR [esp+0xc],eax
  56852a:	mov    eax,DWORD PTR [esp+0x20]
  56852e:	mov    DWORD PTR [esp+0x8],eax
  568532:	mov    DWORD PTR [esp],edi
  568535:	mov    DWORD PTR [esp+0x4],0x0
  56853d:	call   17d7526  ; shared address: System.Func`2<object, object>::.ctor | System.Func`2<System.Type, Newtonsoft.Json.Serialization.JsonContract>::.ctor | System.Func`2<string, string>::.ctor | +22 other aliases
  568542:	mov    eax,DWORD PTR [esp+0x1c]
  568546:	mov    ecx,DWORD PTR [esi]
  568548:	mov    ecx,DWORD PTR [ecx+0x50]
  56854b:	mov    DWORD PTR [ecx],edi
  56854d:	mov    edx,DWORD PTR [esi]
  56854f:	mov    ecx,DWORD PTR [edx+0x50]
  568552:	mov    edx,DWORD PTR [ecx]
  568554:	lea    ecx,[ebx+0x4b664]
  56855a:	mov    ecx,DWORD PTR [ecx]
  56855c:	mov    DWORD PTR [esp+0xc],ecx
  568560:	mov    DWORD PTR [esp+0x8],edx
  568564:	mov    DWORD PTR [esp+0x4],eax
  568568:	mov    DWORD PTR [esp],0x0
  56856f:	call   9bf855  ; shared address: System.Linq.Enumerable::Select | System.Linq.Enumerable::Select | System.Linq.Enumerable::Select | +13 other aliases
  568574:	lea    ecx,[ebx+0x4b668]
  56857a:	mov    ecx,DWORD PTR [ecx]
  56857c:	mov    DWORD PTR [esp+0x8],ecx
  568580:	mov    DWORD PTR [esp+0x4],eax
  568584:	mov    DWORD PTR [esp],0x0
  56858b:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  568590:	mov    ecx,DWORD PTR [ebp+0x14]
  568593:	mov    DWORD PTR [esp+0xc],ecx
  568597:	mov    DWORD PTR [esp+0x8],eax
  56859b:	mov    eax,DWORD PTR [ebp+0xc]
  56859e:	mov    DWORD PTR [esp+0x4],eax
  5685a2:	mov    eax,DWORD PTR [ebp+0x8]
  5685a5:	mov    DWORD PTR [esp],eax
  5685a8:	call   5685ee  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMastery
  5685ad:	lea    esp,[ebp-0xc]
  5685b0:	pop    esi
  5685b1:	pop    edi
  5685b2:	pop    ebx
  5685b3:	pop    ebp
  5685b4:	ret
  5685b5:	call   1fbc48
  5685ba:	call   540b98