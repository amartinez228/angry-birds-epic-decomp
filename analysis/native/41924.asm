
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057726b:
  57726b:	push   ebp
  57726c:	mov    ebp,esp
  57726e:	push   ebx
  57726f:	push   edi
  577270:	push   esi
  577271:	and    esp,0xfffffff0
  577274:	sub    esp,0x30
  577277:	call   57727c
  57727c:	pop    ebx
  57727d:	add    ebx,0x199acc8
  577283:	mov    DWORD PTR [esp+0x20],ebx
  577287:	mov    esi,DWORD PTR [ebp+0xc]
  57728a:	mov    al,BYTE PTR [ebx+0x5d725]
  577290:	test   al,al
  577292:	jne    5772ab
  577294:	lea    eax,[ebx-0x664c9c]
  57729a:	mov    eax,DWORD PTR [eax]
  57729c:	mov    DWORD PTR [esp],eax
  57729f:	call   1ca6e8
  5772a4:	mov    BYTE PTR [ebx+0x5d725],0x1
  5772ab:	lea    eax,[ebx+0x458bc]
  5772b1:	mov    eax,DWORD PTR [eax]
  5772b3:	mov    DWORD PTR [esp],eax
  5772b6:	call   20bfb2
  5772bb:	mov    DWORD PTR [esp+0x18],eax
  5772bf:	lea    ecx,[ebx+0x4a1d0]
  5772c5:	mov    ecx,DWORD PTR [ecx]
  5772c7:	mov    DWORD PTR [esp+0x4],ecx
  5772cb:	mov    DWORD PTR [esp],eax
  5772ce:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  5772d3:	test   esi,esi
  5772d5:	je     57757a
  5772db:	mov    DWORD PTR [esp+0x1c],0x0
  5772e3:	lea    eax,[ebx+0x4a868]
  5772e9:	mov    DWORD PTR [esp+0x24],eax
  5772ed:	xor    edi,edi
  5772ef:	jmp    5772f8
  5772f1:	mov    eax,DWORD PTR [esp+0x28]
  5772f5:	inc    eax
  5772f6:	mov    edi,eax
  5772f8:	mov    eax,DWORD PTR [esp+0x24]
  5772fc:	mov    eax,DWORD PTR [eax]
  5772fe:	mov    DWORD PTR [esp+0x4],eax
  577302:	mov    DWORD PTR [esp],esi
  577305:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57730a:	cmp    edi,eax
  57730c:	jge    57740b
  577312:	lea    eax,[ebx+0x4a860]
  577318:	mov    eax,DWORD PTR [eax]
  57731a:	mov    DWORD PTR [esp+0x8],eax
  57731e:	mov    DWORD PTR [esp+0x4],edi
  577322:	mov    DWORD PTR [esp+0x28],edi
  577326:	mov    DWORD PTR [esp],esi
  577329:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57732e:	mov    edi,eax
  577330:	test   edi,edi
  577332:	je     5772f1
  577334:	lea    eax,[ebx+0x45854]
  57733a:	mov    eax,DWORD PTR [eax]
  57733c:	mov    ebx,DWORD PTR [edi]
  57733e:	movzx  edx,WORD PTR [ebx+0xaa]
  577345:	test   edx,edx
  577347:	je     577358
  577349:	mov    esi,DWORD PTR [ebx+0x4c]
  57734c:	xor    ecx,ecx
  57734e:	cmp    DWORD PTR [esi+ecx*8],eax
  577351:	je     577374
  577353:	inc    ecx
  577354:	cmp    ecx,edx
  577356:	jb     57734e
  577358:	mov    DWORD PTR [esp+0x4],eax
  57735c:	mov    DWORD PTR [esp],edi
  57735f:	mov    DWORD PTR [esp+0x8],0x0
  577367:	mov    ebx,DWORD PTR [esp+0x20]
  57736b:	call   1c1964
  577370:	mov    ecx,eax
  577372:	jmp    577383
  577374:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  577378:	lea    ecx,[ebx+eax*8+0xb4]
  57737f:	mov    ebx,DWORD PTR [esp+0x20]
  577383:	mov    eax,DWORD PTR [ecx+0x4]
  577386:	mov    DWORD PTR [esp+0x4],eax
  57738a:	mov    DWORD PTR [esp],edi
  57738d:	call   DWORD PTR [ecx]
  57738f:	mov    edi,eax
  577391:	test   edi,edi
  577393:	je     57757a
  577399:	lea    eax,[ebx+0x45578]
  57739f:	mov    eax,DWORD PTR [eax]
  5773a1:	mov    ecx,DWORD PTR [edi]
  5773a3:	movzx  edx,WORD PTR [ecx+0xaa]
  5773aa:	test   edx,edx
  5773ac:	je     5773bd
  5773ae:	mov    esi,DWORD PTR [ecx+0x4c]
  5773b1:	xor    ebx,ebx
  5773b3:	cmp    DWORD PTR [esi+ebx*8],eax
  5773b6:	je     5773d9
  5773b8:	inc    ebx
  5773b9:	cmp    ebx,edx
  5773bb:	jb     5773b3
  5773bd:	mov    DWORD PTR [esp+0x4],eax
  5773c1:	mov    DWORD PTR [esp],edi
  5773c4:	mov    DWORD PTR [esp+0x8],0x2
  5773cc:	mov    ebx,DWORD PTR [esp+0x20]
  5773d0:	call   1c1964
  5773d5:	mov    ecx,eax
  5773d7:	jmp    5773e8
  5773d9:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  5773dd:	lea    ecx,[ecx+eax*8+0xc4]
  5773e4:	mov    ebx,DWORD PTR [esp+0x20]
  5773e8:	mov    eax,DWORD PTR [ecx+0x4]
  5773eb:	mov    DWORD PTR [esp+0x4],eax
  5773ef:	mov    DWORD PTR [esp],edi
  5773f2:	call   DWORD PTR [ecx]
  5773f4:	cmp    eax,DWORD PTR [ebp+0x10]
  5773f7:	mov    al,0x1
  5773f9:	mov    esi,DWORD PTR [ebp+0xc]
  5773fc:	je     577402
  5773fe:	mov    eax,DWORD PTR [esp+0x1c]
  577402:	mov    DWORD PTR [esp+0x1c],eax
  577406:	jmp    5772f1
  57740b:	mov    eax,DWORD PTR [esp+0x1c]
  57740f:	test   al,0x1
  577411:	mov    eax,DWORD PTR [ebp+0x14]
  577414:	je     57756d
  57741a:	test   eax,eax
  57741c:	je     57757a
  577422:	mov    eax,DWORD PTR [eax+0x10]
  577425:	test   eax,eax
  577427:	je     57757a
  57742d:	lea    ecx,[ebx+0x49f84]
  577433:	mov    ecx,DWORD PTR [ecx]
  577435:	mov    DWORD PTR [esp+0x8],ecx
  577439:	mov    ecx,DWORD PTR [ebp+0x10]
  57743c:	mov    DWORD PTR [esp+0x4],ecx
  577440:	mov    DWORD PTR [esp],eax
  577443:	call   5a0666  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, object>::ContainsKey
  577448:	test   al,al
  57744a:	mov    ecx,DWORD PTR [esp+0x18]
  57744e:	je     57747b
  577450:	mov    eax,DWORD PTR [ebp+0x14]
  577453:	mov    eax,DWORD PTR [eax+0x10]
  577456:	test   eax,eax
  577458:	je     57757a
  57745e:	lea    ecx,[ebx+0x49f74]
  577464:	mov    ecx,DWORD PTR [ecx]
  577466:	mov    DWORD PTR [esp+0x8],ecx
  57746a:	mov    ecx,DWORD PTR [ebp+0x10]
  57746d:	mov    DWORD PTR [esp+0x4],ecx
  577471:	mov    DWORD PTR [esp],eax
  577474:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  577479:	mov    ecx,eax
  57747b:	test   ecx,ecx
  57747d:	je     57757a
  577483:	mov    eax,DWORD PTR [esp+0x24]
  577487:	mov    eax,DWORD PTR [eax]
  577489:	mov    DWORD PTR [esp+0x4],eax
  57748d:	mov    DWORD PTR [esp],ecx
  577490:	mov    DWORD PTR [esp+0x18],ecx
  577494:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  577499:	mov    edi,eax
  57749b:	mov    cl,0x1
  57749d:	dec    eax
  57749e:	js     5774e7
  5774a0:	dec    edi
  5774a1:	xor    eax,eax
  5774a3:	test   cl,0x1
  5774a6:	je     5774de
  5774a8:	lea    eax,[ebx+0x4a860]
  5774ae:	mov    eax,DWORD PTR [eax]
  5774b0:	mov    DWORD PTR [esp+0x8],eax
  5774b4:	mov    DWORD PTR [esp+0x4],edi
  5774b8:	mov    eax,DWORD PTR [esp+0x18]
  5774bc:	mov    DWORD PTR [esp],eax
  5774bf:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  5774c4:	mov    DWORD PTR [esp+0x4],eax
  5774c8:	mov    eax,DWORD PTR [ebp+0x14]
  5774cb:	mov    DWORD PTR [esp],eax
  5774ce:	mov    DWORD PTR [esp+0x8],0x0
  5774d6:	call   6e505b  ; ABH.GameDatas.InventoryGameData::RemoveItemFromInventory
  5774db:	movzx  eax,al
  5774de:	test   eax,eax
  5774e0:	setne  cl
  5774e3:	test   edi,edi
  5774e5:	jg     5774a0
  5774e7:	mov    DWORD PTR [esp+0x1c],ecx
  5774eb:	xor    edi,edi
  5774ed:	jmp    577551
  5774ef:	lea    eax,[ebx+0x4a860]
  5774f5:	mov    eax,DWORD PTR [eax]
  5774f7:	mov    DWORD PTR [esp+0x8],eax
  5774fb:	mov    DWORD PTR [esp+0x4],edi
  5774ff:	mov    DWORD PTR [esp],esi
  577502:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  577507:	mov    esi,eax
  577509:	mov    DWORD PTR [esp+0x4],esi
  57750d:	mov    eax,DWORD PTR [ebp+0x14]
  577510:	mov    DWORD PTR [esp+0x28],edi
  577514:	mov    edi,eax
  577516:	mov    DWORD PTR [esp],edi
  577519:	mov    DWORD PTR [esp+0xc],0x0
  577521:	mov    DWORD PTR [esp+0x8],0x1
  577529:	call   6e3d8d  ; ABH.GameDatas.InventoryGameData::AddNewItemToInventory
  57752e:	mov    DWORD PTR [esp+0x8],esi
  577532:	mov    esi,DWORD PTR [ebp+0xc]
  577535:	mov    eax,DWORD PTR [ebp+0x10]
  577538:	mov    DWORD PTR [esp+0x4],eax
  57753c:	mov    DWORD PTR [esp],edi
  57753f:	mov    edi,DWORD PTR [esp+0x28]
  577543:	mov    DWORD PTR [esp+0xc],0x0
  57754b:	call   6e380e  ; ABH.GameDatas.InventoryGameData::RaiseInventoryChanged
  577550:	inc    edi
  577551:	mov    eax,DWORD PTR [esp+0x24]
  577555:	mov    eax,DWORD PTR [eax]
  577557:	mov    DWORD PTR [esp+0x4],eax
  57755b:	mov    DWORD PTR [esp],esi
  57755e:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  577563:	cmp    edi,eax
  577565:	jl     5774ef
  577567:	mov    eax,DWORD PTR [esp+0x1c]
  57756b:	jmp    57756f
  57756d:	xor    eax,eax
  57756f:	movzx  eax,al
  577572:	lea    esp,[ebp-0xc]
  577575:	pop    esi
  577576:	pop    edi
  577577:	pop    ebx
  577578:	pop    ebp
  577579:	ret
  57757a:	call   1fbc48
  57757f:	call   540b98