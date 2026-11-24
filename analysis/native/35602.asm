
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006cd410:
  6cd410:	push   ebp
  6cd411:	mov    ebp,esp
  6cd413:	push   ebx
  6cd414:	push   esi
  6cd415:	and    esp,0xfffffff0
  6cd418:	sub    esp,0x10
  6cd41b:	call   6cd420
  6cd420:	pop    ebx
  6cd421:	add    ebx,0x1844b24
  6cd427:	mov    esi,DWORD PTR [ebp+0x8]
  6cd42a:	mov    al,BYTE PTR [ebx+0x5f6a9]
  6cd430:	test   al,al
  6cd432:	jne    6cd44b
  6cd434:	lea    eax,[ebx-0x66d2d0]
  6cd43a:	mov    eax,DWORD PTR [eax]
  6cd43c:	mov    DWORD PTR [esp],eax
  6cd43f:	call   1ca6e8
  6cd444:	mov    BYTE PTR [ebx+0x5f6a9],0x1
  6cd44b:	lea    eax,[ebx+0x4a830]
  6cd451:	mov    eax,DWORD PTR [eax]
  6cd453:	mov    DWORD PTR [esp+0x4],eax
  6cd457:	mov    DWORD PTR [esp],esi
  6cd45a:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cd45f:	test   eax,eax
  6cd461:	je     6cd47a
  6cd463:	mov    DWORD PTR [esp],eax
  6cd466:	mov    DWORD PTR [esp+0x4],0x0
  6cd46e:	call   179be9c  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Value
  6cd473:	lea    esp,[ebp-0x8]
  6cd476:	pop    esi
  6cd477:	pop    ebx
  6cd478:	pop    ebp
  6cd479:	ret
  6cd47a:	call   1fbc48
  6cd47f:	call   6b106a