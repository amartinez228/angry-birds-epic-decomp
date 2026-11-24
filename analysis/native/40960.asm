
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050772f:
  50772f:	push   ebp
  507730:	mov    ebp,esp
  507732:	push   ebx
  507733:	push   edi
  507734:	push   esi
  507735:	and    esp,0xfffffff0
  507738:	sub    esp,0x30
  50773b:	call   507740
  507740:	pop    ebx
  507741:	add    ebx,0x1a0a804
  507747:	movss  xmm1,DWORD PTR [ebp+0x18]
  50774c:	mov    esi,DWORD PTR [ebp+0x10]
  50774f:	movss  xmm0,DWORD PTR [ebp+0xc]
  507754:	movss  DWORD PTR [esp+0x28],xmm0
  50775a:	mov    al,BYTE PTR [ebx+0x5d4f6]
  507760:	test   al,al
  507762:	jne    507785
  507764:	lea    eax,[ebx-0x66f528]
  50776a:	mov    eax,DWORD PTR [eax]
  50776c:	mov    DWORD PTR [esp],eax
  50776f:	call   1ca6e8
  507774:	movss  xmm1,DWORD PTR [ebp+0x18]
  507779:	movss  xmm0,DWORD PTR [ebp+0xc]
  50777e:	mov    BYTE PTR [ebx+0x5d4f6],0x1
  507785:	addss  xmm0,xmm1
  507789:	movss  DWORD PTR [esp+0x28],xmm0
  50778f:	test   esi,esi
  507791:	je     5078d0
  507797:	lea    eax,[ebx+0x45874]
  50779d:	mov    DWORD PTR [esp+0x1c],eax
  5077a1:	mov    eax,DWORD PTR [eax]
  5077a3:	mov    ecx,DWORD PTR [esi]
  5077a5:	movzx  edx,WORD PTR [ecx+0xaa]
  5077ac:	test   edx,edx
  5077ae:	je     5077bf
  5077b0:	mov    esi,DWORD PTR [ecx+0x4c]
  5077b3:	xor    edi,edi
  5077b5:	cmp    DWORD PTR [esi+edi*8],eax
  5077b8:	je     5077e0
  5077ba:	inc    edi
  5077bb:	cmp    edi,edx
  5077bd:	jb     5077b5
  5077bf:	movss  DWORD PTR [esp+0x20],xmm0
  5077c5:	mov    DWORD PTR [esp+0x4],eax
  5077c9:	mov    esi,DWORD PTR [ebp+0x10]
  5077cc:	mov    DWORD PTR [esp],esi
  5077cf:	mov    DWORD PTR [esp+0x8],0x10
  5077d7:	call   1c1964
  5077dc:	mov    ecx,eax
  5077de:	jmp    5077f4
  5077e0:	movss  DWORD PTR [esp+0x20],xmm0
  5077e6:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  5077ea:	lea    ecx,[ecx+eax*8+0x134]
  5077f1:	mov    esi,DWORD PTR [ebp+0x10]
  5077f4:	mov    eax,DWORD PTR [ecx+0x4]
  5077f7:	mov    DWORD PTR [esp+0x4],eax
  5077fb:	mov    DWORD PTR [esp],esi
  5077fe:	call   DWORD PTR [ecx]
  507800:	test   eax,eax
  507802:	movss  xmm0,DWORD PTR [esp+0x20]
  507808:	je     5078be
  50780e:	mov    eax,DWORD PTR [esp+0x1c]
  507812:	mov    eax,DWORD PTR [eax]
  507814:	mov    ecx,DWORD PTR [esi]
  507816:	movzx  edx,WORD PTR [ecx+0xaa]
  50781d:	test   edx,edx
  50781f:	je     507830
  507821:	mov    esi,DWORD PTR [ecx+0x4c]
  507824:	xor    edi,edi
  507826:	cmp    DWORD PTR [esi+edi*8],eax
  507829:	je     50784b
  50782b:	inc    edi
  50782c:	cmp    edi,edx
  50782e:	jb     507826
  507830:	mov    DWORD PTR [esp+0x4],eax
  507834:	mov    edi,DWORD PTR [ebp+0x10]
  507837:	mov    DWORD PTR [esp],edi
  50783a:	mov    DWORD PTR [esp+0x8],0x10
  507842:	call   1c1964
  507847:	mov    ecx,eax
  507849:	jmp    507859
  50784b:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50784f:	lea    ecx,[ecx+eax*8+0x134]
  507856:	mov    edi,DWORD PTR [ebp+0x10]
  507859:	mov    eax,DWORD PTR [ecx+0x4]
  50785c:	mov    DWORD PTR [esp+0x4],eax
  507860:	mov    DWORD PTR [esp],edi
  507863:	call   DWORD PTR [ecx]
  507865:	test   eax,eax
  507867:	je     5078d0
  507869:	lea    ecx,[ebx+0x4a0c8]
  50786f:	mov    ecx,DWORD PTR [ecx]
  507871:	mov    DWORD PTR [esp+0x4],ecx
  507875:	mov    DWORD PTR [esp],eax
  507878:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  50787d:	test   eax,eax
  50787f:	je     5078d0
  507881:	mov    esi,DWORD PTR [ebp+0x8]
  507884:	mov    DWORD PTR [esp],eax
  507887:	mov    DWORD PTR [esp+0x4],0x0
  50788f:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  507894:	lea    ecx,[esp+0x28]
  507898:	mov    DWORD PTR [esp+0x14],ecx
  50789c:	mov    DWORD PTR [esp+0xc],edi
  5078a0:	mov    DWORD PTR [esp+0x8],edi
  5078a4:	mov    DWORD PTR [esp+0x4],eax
  5078a8:	mov    DWORD PTR [esp],esi
  5078ab:	mov    DWORD PTR [esp+0x10],0x0
  5078b3:	call   5078da  ; ABH.Services.Logic.BattleService::ApplyPerkOnHealth
  5078b8:	movss  xmm0,DWORD PTR [esp+0x28]
  5078be:	movss  DWORD PTR [esp+0x24],xmm0
  5078c4:	fld    DWORD PTR [esp+0x24]
  5078c8:	lea    esp,[ebp-0xc]
  5078cb:	pop    esi
  5078cc:	pop    edi
  5078cd:	pop    ebx
  5078ce:	pop    ebp
  5078cf:	ret
  5078d0:	call   1fbc48
  5078d5:	call   540b98