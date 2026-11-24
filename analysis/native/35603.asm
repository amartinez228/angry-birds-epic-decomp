
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006cd484:
  6cd484:	push   ebp
  6cd485:	mov    ebp,esp
  6cd487:	push   ebx
  6cd488:	push   esi
  6cd489:	and    esp,0xfffffff0
  6cd48c:	sub    esp,0x10
  6cd48f:	call   6cd494
  6cd494:	pop    ebx
  6cd495:	add    ebx,0x1844ab0
  6cd49b:	mov    esi,DWORD PTR [ebp+0x8]
  6cd49e:	mov    al,BYTE PTR [ebx+0x5f6aa]
  6cd4a4:	test   al,al
  6cd4a6:	jne    6cd4bf
  6cd4a8:	lea    eax,[ebx-0x66d284]
  6cd4ae:	mov    eax,DWORD PTR [eax]
  6cd4b0:	mov    DWORD PTR [esp],eax
  6cd4b3:	call   1ca6e8
  6cd4b8:	mov    BYTE PTR [ebx+0x5f6aa],0x1
  6cd4bf:	lea    eax,[ebx+0x4a830]
  6cd4c5:	mov    eax,DWORD PTR [eax]
  6cd4c7:	mov    DWORD PTR [esp+0x4],eax
  6cd4cb:	mov    DWORD PTR [esp],esi
  6cd4ce:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cd4d3:	test   eax,eax
  6cd4d5:	je     6cd4f5
  6cd4d7:	mov    ecx,DWORD PTR [ebp+0xc]
  6cd4da:	mov    DWORD PTR [esp+0x4],ecx
  6cd4de:	mov    DWORD PTR [esp],eax
  6cd4e1:	mov    DWORD PTR [esp+0x8],0x0
  6cd4e9:	call   179beac  ; ABH.Shared.Models.InventoryItems.ClassItemData::set_Value
  6cd4ee:	lea    esp,[ebp-0x8]
  6cd4f1:	pop    esi
  6cd4f2:	pop    ebx
  6cd4f3:	pop    ebp
  6cd4f4:	ret
  6cd4f5:	call   1fbc48
  6cd4fa:	call   6b106a