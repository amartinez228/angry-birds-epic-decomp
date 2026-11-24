
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0056830f:
  56830f:	push   ebp
  568310:	mov    ebp,esp
  568312:	push   ebx
  568313:	push   edi
  568314:	push   esi
  568315:	and    esp,0xfffffff0
  568318:	sub    esp,0x20
  56831b:	call   568320
  568320:	pop    ebx
  568321:	add    ebx,0x19a9c24
  568327:	mov    esi,DWORD PTR [ebp+0x10]
  56832a:	mov    al,BYTE PTR [ebx+0x5d6eb]
  568330:	test   al,al
  568332:	jne    56834b
  568334:	lea    eax,[ebx-0x664cb4]
  56833a:	mov    eax,DWORD PTR [eax]
  56833c:	mov    DWORD PTR [esp],eax
  56833f:	call   1ca6e8
  568344:	mov    BYTE PTR [ebx+0x5d6eb],0x1
  56834b:	test   esi,esi
  56834d:	je     5683c9
  56834f:	xor    edi,edi
  568351:	jmp    568389
  568353:	lea    ecx,[ebx+0x4af20]
  568359:	mov    ecx,DWORD PTR [ecx]
  56835b:	mov    DWORD PTR [esp+0x8],ecx
  56835f:	mov    DWORD PTR [esp+0x4],edi
  568363:	mov    DWORD PTR [esp],eax
  568366:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  56836b:	mov    ecx,DWORD PTR [ebp+0x14]
  56836e:	mov    DWORD PTR [esp+0xc],ecx
  568372:	mov    DWORD PTR [esp+0x8],eax
  568376:	mov    eax,DWORD PTR [ebp+0xc]
  568379:	mov    DWORD PTR [esp+0x4],eax
  56837d:	mov    eax,DWORD PTR [ebp+0x8]
  568380:	mov    DWORD PTR [esp],eax
  568383:	call   5683db  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMastery
  568388:	inc    edi
  568389:	mov    DWORD PTR [esp],esi
  56838c:	mov    DWORD PTR [esp+0x4],0x0
  568394:	call   6fe8b3  ; ABH.GameDatas.PlayerGameData::get_Birds
  568399:	test   eax,eax
  56839b:	je     5683c9
  56839d:	lea    ecx,[ebx+0x4aee4]
  5683a3:	mov    ecx,DWORD PTR [ecx]
  5683a5:	mov    DWORD PTR [esp+0x4],ecx
  5683a9:	mov    DWORD PTR [esp],eax
  5683ac:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  5683b1:	cmp    edi,eax
  5683b3:	jge    5683d3
  5683b5:	mov    DWORD PTR [esp],esi
  5683b8:	mov    DWORD PTR [esp+0x4],0x0
  5683c0:	call   6fe8b3  ; ABH.GameDatas.PlayerGameData::get_Birds
  5683c5:	test   eax,eax
  5683c7:	jne    568353
  5683c9:	call   1fbc48
  5683ce:	call   540b98
  5683d3:	lea    esp,[ebp-0xc]
  5683d6:	pop    esi
  5683d7:	pop    edi
  5683d8:	pop    ebx
  5683d9:	pop    ebp
  5683da:	ret