
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d5764:
  6d5764:	push   ebp
  6d5765:	mov    ebp,esp
  6d5767:	push   ebx
  6d5768:	push   edi
  6d5769:	push   esi
  6d576a:	and    esp,0xfffffff0
  6d576d:	sub    esp,0x10
  6d5770:	call   6d5775
  6d5775:	pop    ebx
  6d5776:	add    ebx,0x183c7cf
  6d577c:	mov    edi,DWORD PTR [ebp+0xc]
  6d577f:	test   edi,edi
  6d5781:	je     6d57bb
  6d5783:	mov    DWORD PTR [esp],edi
  6d5786:	mov    DWORD PTR [esp+0x4],0x0
  6d578e:	call   1700c3b  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_AssetLevelOffset
  6d5793:	mov    esi,eax
  6d5795:	add    esi,DWORD PTR [ebp+0x10]
  6d5798:	test   esi,esi
  6d579a:	jg     6d57b1
  6d579c:	mov    DWORD PTR [esp],edi
  6d579f:	mov    DWORD PTR [esp+0x4],0x0
  6d57a7:	call   1700c5e  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_AssetCycleCount
  6d57ac:	lea    eax,[eax+eax*2]
  6d57af:	add    esi,eax
  6d57b1:	mov    eax,esi
  6d57b3:	lea    esp,[ebp-0xc]
  6d57b6:	pop    esi
  6d57b7:	pop    edi
  6d57b8:	pop    ebx
  6d57b9:	pop    ebp
  6d57ba:	ret
  6d57bb:	call   1fbc48
  6d57c0:	call   6b106a