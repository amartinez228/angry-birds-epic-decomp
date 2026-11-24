
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006e62de:
  6e62de:	push   ebp
  6e62df:	mov    ebp,esp
  6e62e1:	push   ebx
  6e62e2:	push   edi
  6e62e3:	push   esi
  6e62e4:	and    esp,0xfffffff0
  6e62e7:	sub    esp,0x30
  6e62ea:	call   6e62ef
  6e62ef:	pop    ebx
  6e62f0:	add    ebx,0x182bc55
  6e62f6:	mov    al,BYTE PTR [ebx+0x5f784]
  6e62fc:	test   al,al
  6e62fe:	jne    6e6317
  6e6300:	lea    eax,[ebx-0x664e08]
  6e6306:	mov    eax,DWORD PTR [eax]
  6e6308:	mov    DWORD PTR [esp],eax
  6e630b:	call   1ca6e8
  6e6310:	mov    BYTE PTR [ebx+0x5f784],0x1
  6e6317:	lea    eax,[ebx+0x45eec]
  6e631d:	mov    eax,DWORD PTR [eax]
  6e631f:	mov    DWORD PTR [esp],eax
  6e6322:	call   20bfb2
  6e6327:	mov    esi,eax
  6e6329:	mov    DWORD PTR [esp],esi
  6e632c:	mov    DWORD PTR [esp+0x4],0x0
  6e6334:	call   124632e  ; System.Object::.ctor
  6e6339:	test   esi,esi
  6e633b:	je     6e649c
  6e6341:	mov    eax,DWORD PTR [ebp+0x10]
  6e6344:	mov    edx,DWORD PTR [ebp+0xc]
  6e6347:	mov    edi,DWORD PTR [ebp+0x8]
  6e634a:	mov    DWORD PTR [esi+0x8],eax
  6e634d:	cmp    edx,0xa
  6e6350:	jne    6e63fb
  6e6356:	mov    eax,DWORD PTR [edi+0x10]
  6e6359:	test   eax,eax
  6e635b:	je     6e649c
  6e6361:	lea    ecx,[ebx+0x49f74]
  6e6367:	mov    ecx,DWORD PTR [ecx]
  6e6369:	mov    DWORD PTR [esp+0x8],ecx
  6e636d:	mov    DWORD PTR [esp],eax
  6e6370:	mov    DWORD PTR [esp+0x4],0x17
  6e6378:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6e637d:	mov    DWORD PTR [esp+0x1c],eax
  6e6381:	lea    eax,[ebx+0x4ab94]
  6e6387:	mov    eax,DWORD PTR [eax]
  6e6389:	mov    DWORD PTR [esp+0x18],eax
  6e638d:	lea    eax,[ebx+0x45e1c]
  6e6393:	mov    eax,DWORD PTR [eax]
  6e6395:	mov    DWORD PTR [esp],eax
  6e6398:	call   20bfb2
  6e639d:	mov    edi,eax
  6e639f:	mov    eax,DWORD PTR [esp+0x18]
  6e63a3:	mov    DWORD PTR [esp+0x28],eax
  6e63a7:	lea    eax,[ebx+0x4a814]
  6e63ad:	mov    eax,DWORD PTR [eax]
  6e63af:	mov    DWORD PTR [esp+0xc],eax
  6e63b3:	mov    eax,DWORD PTR [esp+0x28]
  6e63b7:	mov    DWORD PTR [esp+0x8],eax
  6e63bb:	mov    DWORD PTR [esp+0x4],esi
  6e63bf:	mov    DWORD PTR [esp],edi
  6e63c2:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  6e63c7:	lea    eax,[ebx+0x4ab98]
  6e63cd:	mov    eax,DWORD PTR [eax]
  6e63cf:	mov    DWORD PTR [esp+0xc],eax
  6e63d3:	mov    DWORD PTR [esp+0x8],edi
  6e63d7:	mov    eax,DWORD PTR [esp+0x1c]
  6e63db:	mov    DWORD PTR [esp+0x4],eax
  6e63df:	mov    DWORD PTR [esp],0x0
  6e63e6:	call   15f0251  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +35 other aliases
  6e63eb:	mov    cl,0x1
  6e63ed:	test   eax,eax
  6e63ef:	mov    edx,DWORD PTR [ebp+0xc]
  6e63f2:	mov    edi,DWORD PTR [ebp+0x8]
  6e63f5:	jne    6e6491
  6e63fb:	mov    DWORD PTR [esp+0x1c],esi
  6e63ff:	mov    eax,DWORD PTR [edi+0x10]
  6e6402:	test   eax,eax
  6e6404:	je     6e649c
  6e640a:	lea    ecx,[ebx+0x49f74]
  6e6410:	mov    ecx,DWORD PTR [ecx]
  6e6412:	mov    DWORD PTR [esp+0x8],ecx
  6e6416:	mov    DWORD PTR [esp+0x4],edx
  6e641a:	mov    DWORD PTR [esp],eax
  6e641d:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6e6422:	mov    DWORD PTR [esp+0x18],eax
  6e6426:	lea    eax,[ebx+0x4ab9c]
  6e642c:	mov    esi,DWORD PTR [eax]
  6e642e:	lea    eax,[ebx+0x45e1c]
  6e6434:	mov    eax,DWORD PTR [eax]
  6e6436:	mov    DWORD PTR [esp],eax
  6e6439:	call   20bfb2
  6e643e:	mov    edi,eax
  6e6440:	mov    DWORD PTR [esp+0x20],esi
  6e6444:	lea    eax,[ebx+0x4a814]
  6e644a:	mov    eax,DWORD PTR [eax]
  6e644c:	mov    DWORD PTR [esp+0xc],eax
  6e6450:	mov    eax,DWORD PTR [esp+0x20]
  6e6454:	mov    DWORD PTR [esp+0x8],eax
  6e6458:	mov    eax,DWORD PTR [esp+0x1c]
  6e645c:	mov    DWORD PTR [esp+0x4],eax
  6e6460:	mov    DWORD PTR [esp],edi
  6e6463:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  6e6468:	lea    eax,[ebx+0x4ab98]
  6e646e:	mov    eax,DWORD PTR [eax]
  6e6470:	mov    DWORD PTR [esp+0xc],eax
  6e6474:	mov    DWORD PTR [esp+0x8],edi
  6e6478:	mov    eax,DWORD PTR [esp+0x18]
  6e647c:	mov    DWORD PTR [esp+0x4],eax
  6e6480:	mov    DWORD PTR [esp],0x0
  6e6487:	call   15f0251  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault | +35 other aliases
  6e648c:	test   eax,eax
  6e648e:	setne  cl
  6e6491:	movzx  eax,cl
  6e6494:	lea    esp,[ebp-0xc]
  6e6497:	pop    esi
  6e6498:	pop    edi
  6e6499:	pop    ebx
  6e649a:	pop    ebp
  6e649b:	ret
  6e649c:	call   1fbc48
  6e64a1:	call   6b106a