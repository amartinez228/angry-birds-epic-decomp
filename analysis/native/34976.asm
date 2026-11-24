
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c35fc:
  6c35fc:	push   ebp
  6c35fd:	mov    ebp,esp
  6c35ff:	push   ebx
  6c3600:	push   edi
  6c3601:	push   esi
  6c3602:	and    esp,0xfffffff0
  6c3605:	sub    esp,0x30
  6c3608:	call   6c360d
  6c360d:	pop    ebx
  6c360e:	add    ebx,0x184e937
  6c3614:	mov    esi,DWORD PTR [ebp+0xc]
  6c3617:	mov    al,BYTE PTR [ebx+0x5f63b]
  6c361d:	test   al,al
  6c361f:	jne    6c3638
  6c3621:	lea    eax,[ebx-0x66eb88]
  6c3627:	mov    eax,DWORD PTR [eax]
  6c3629:	mov    DWORD PTR [esp],eax
  6c362c:	call   1ca6e8
  6c3631:	mov    BYTE PTR [ebx+0x5f63b],0x1
  6c3638:	lea    eax,[ebx+0x4a7f4]
  6c363e:	mov    eax,DWORD PTR [eax]
  6c3640:	mov    DWORD PTR [esp+0x4],eax
  6c3644:	mov    eax,DWORD PTR [ebp+0x8]
  6c3647:	mov    DWORD PTR [esp],eax
  6c364a:	call   1606f69  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::.ctor | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::.ctor | +3 other aliases
  6c364f:	test   esi,esi
  6c3651:	je     6c3a71
  6c3657:	lea    eax,[ebx+0x4a260]
  6c365d:	mov    DWORD PTR [esp+0x14],eax
  6c3661:	mov    eax,DWORD PTR [eax]
  6c3663:	mov    DWORD PTR [esp+0x4],eax
  6c3667:	mov    DWORD PTR [esp],esi
  6c366a:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c366f:	test   eax,eax
  6c3671:	je     6c3a71
  6c3677:	mov    DWORD PTR [esp],eax
  6c367a:	mov    DWORD PTR [esp+0x4],0x0
  6c3682:	call   16fe9ca  ; ABH.Shared.BalancingData.BirdBalancingData::get_DefaultInventoryNameId
  6c3687:	mov    edi,eax
  6c3689:	lea    eax,[ebx+0x45824]
  6c368f:	mov    eax,DWORD PTR [eax]
  6c3691:	mov    DWORD PTR [esp],eax
  6c3694:	call   20bfb2
  6c3699:	mov    esi,eax
  6c369b:	mov    DWORD PTR [esp+0x4],edi
  6c369f:	mov    DWORD PTR [esp],esi
  6c36a2:	call   6c3a7b  ; ABH.GameDatas.InventoryGameData::.ctor
  6c36a7:	mov    eax,DWORD PTR [ebp+0x8]
  6c36aa:	mov    DWORD PTR [eax+0x18],esi
  6c36ad:	test   esi,esi
  6c36af:	je     6c3a71
  6c36b5:	mov    eax,DWORD PTR [ebp+0xc]
  6c36b8:	mov    eax,DWORD PTR [eax+0x18]
  6c36bb:	test   eax,eax
  6c36bd:	je     6c3a71
  6c36c3:	mov    eax,DWORD PTR [eax+0x10]
  6c36c6:	test   eax,eax
  6c36c8:	je     6c3a71
  6c36ce:	mov    ecx,DWORD PTR [esi+0x10]
  6c36d1:	mov    DWORD PTR [esp+0x18],ecx
  6c36d5:	lea    ecx,[ebx+0x49f74]
  6c36db:	mov    DWORD PTR [esp+0x28],ecx
  6c36df:	mov    ecx,DWORD PTR [ecx]
  6c36e1:	mov    DWORD PTR [esp+0x8],ecx
  6c36e5:	mov    DWORD PTR [esp],eax
  6c36e8:	mov    DWORD PTR [esp+0x4],0xa
  6c36f0:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6c36f5:	mov    edi,eax
  6c36f7:	lea    eax,[ebx+0x458bc]
  6c36fd:	mov    DWORD PTR [esp+0x24],eax
  6c3701:	mov    eax,DWORD PTR [eax]
  6c3703:	mov    DWORD PTR [esp],eax
  6c3706:	call   20bfb2
  6c370b:	mov    esi,eax
  6c370d:	lea    eax,[ebx+0x4a80c]
  6c3713:	mov    DWORD PTR [esp+0x20],eax
  6c3717:	mov    eax,DWORD PTR [eax]
  6c3719:	mov    DWORD PTR [esp+0x8],eax
  6c371d:	mov    DWORD PTR [esp+0x4],edi
  6c3721:	mov    DWORD PTR [esp],esi
  6c3724:	call   4c167f  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::.ctor | System.Collections.Generic.List`1<System.Reflection.PropertyInfo>::.ctor | +8 other aliases
  6c3729:	mov    ecx,DWORD PTR [esp+0x18]
  6c372d:	test   ecx,ecx
  6c372f:	je     6c3a71
  6c3735:	lea    eax,[ebx+0x49f78]
  6c373b:	mov    DWORD PTR [esp+0x1c],eax
  6c373f:	mov    eax,DWORD PTR [eax]
  6c3741:	mov    DWORD PTR [esp+0xc],eax
  6c3745:	mov    DWORD PTR [esp+0x8],esi
  6c3749:	mov    DWORD PTR [esp],ecx
  6c374c:	mov    DWORD PTR [esp+0x4],0xa
  6c3754:	call   59f24e  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::set_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::set_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::set_Item | +1 other aliases
  6c3759:	mov    eax,DWORD PTR [ebp+0x8]
  6c375c:	mov    eax,DWORD PTR [eax+0x18]
  6c375f:	test   eax,eax
  6c3761:	je     6c3a71
  6c3767:	mov    ecx,DWORD PTR [ebp+0xc]
  6c376a:	mov    ecx,DWORD PTR [ecx+0x18]
  6c376d:	test   ecx,ecx
  6c376f:	je     6c3a71
  6c3775:	mov    ecx,DWORD PTR [ecx+0x10]
  6c3778:	test   ecx,ecx
  6c377a:	je     6c3a71
  6c3780:	mov    eax,DWORD PTR [eax+0x10]
  6c3783:	mov    DWORD PTR [esp+0x18],eax
  6c3787:	mov    eax,DWORD PTR [esp+0x28]
  6c378b:	mov    eax,DWORD PTR [eax]
  6c378d:	mov    DWORD PTR [esp+0x8],eax
  6c3791:	mov    DWORD PTR [esp],ecx
  6c3794:	mov    DWORD PTR [esp+0x4],0x17
  6c379c:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6c37a1:	mov    edi,eax
  6c37a3:	mov    eax,DWORD PTR [esp+0x24]
  6c37a7:	mov    eax,DWORD PTR [eax]
  6c37a9:	mov    DWORD PTR [esp],eax
  6c37ac:	call   20bfb2
  6c37b1:	mov    esi,eax
  6c37b3:	mov    eax,DWORD PTR [esp+0x20]
  6c37b7:	mov    eax,DWORD PTR [eax]
  6c37b9:	mov    DWORD PTR [esp+0x8],eax
  6c37bd:	mov    DWORD PTR [esp+0x4],edi
  6c37c1:	mov    DWORD PTR [esp],esi
  6c37c4:	call   4c167f  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::.ctor | System.Collections.Generic.List`1<System.Reflection.PropertyInfo>::.ctor | +8 other aliases
  6c37c9:	mov    ecx,DWORD PTR [esp+0x18]
  6c37cd:	test   ecx,ecx
  6c37cf:	je     6c3a71
  6c37d5:	mov    eax,DWORD PTR [esp+0x1c]
  6c37d9:	mov    eax,DWORD PTR [eax]
  6c37db:	mov    DWORD PTR [esp+0xc],eax
  6c37df:	mov    DWORD PTR [esp+0x8],esi
  6c37e3:	mov    DWORD PTR [esp],ecx
  6c37e6:	mov    DWORD PTR [esp+0x4],0x17
  6c37ee:	call   59f24e  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::set_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::set_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::set_Item | +1 other aliases
  6c37f3:	mov    eax,DWORD PTR [ebp+0x8]
  6c37f6:	mov    eax,DWORD PTR [eax+0x18]
  6c37f9:	test   eax,eax
  6c37fb:	je     6c3a71
  6c3801:	mov    ecx,DWORD PTR [ebp+0xc]
  6c3804:	mov    ecx,DWORD PTR [ecx+0x18]
  6c3807:	test   ecx,ecx
  6c3809:	je     6c3a71
  6c380f:	mov    ecx,DWORD PTR [ecx+0x10]
  6c3812:	test   ecx,ecx
  6c3814:	je     6c3a71
  6c381a:	mov    eax,DWORD PTR [eax+0x10]
  6c381d:	mov    DWORD PTR [esp+0x18],eax
  6c3821:	mov    eax,DWORD PTR [esp+0x28]
  6c3825:	mov    eax,DWORD PTR [eax]
  6c3827:	mov    DWORD PTR [esp+0x8],eax
  6c382b:	mov    DWORD PTR [esp],ecx
  6c382e:	mov    DWORD PTR [esp+0x4],0x3
  6c3836:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6c383b:	mov    edi,eax
  6c383d:	mov    eax,DWORD PTR [esp+0x24]
  6c3841:	mov    eax,DWORD PTR [eax]
  6c3843:	mov    DWORD PTR [esp],eax
  6c3846:	call   20bfb2
  6c384b:	mov    esi,eax
  6c384d:	mov    eax,DWORD PTR [esp+0x20]
  6c3851:	mov    eax,DWORD PTR [eax]
  6c3853:	mov    DWORD PTR [esp+0x8],eax
  6c3857:	mov    DWORD PTR [esp+0x4],edi
  6c385b:	mov    DWORD PTR [esp],esi
  6c385e:	call   4c167f  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::.ctor | System.Collections.Generic.List`1<System.Reflection.PropertyInfo>::.ctor | +8 other aliases
  6c3863:	mov    ecx,DWORD PTR [esp+0x18]
  6c3867:	test   ecx,ecx
  6c3869:	je     6c3a71
  6c386f:	mov    eax,DWORD PTR [esp+0x1c]
  6c3873:	mov    eax,DWORD PTR [eax]
  6c3875:	mov    DWORD PTR [esp+0xc],eax
  6c3879:	mov    DWORD PTR [esp+0x8],esi
  6c387d:	mov    DWORD PTR [esp],ecx
  6c3880:	mov    DWORD PTR [esp+0x4],0x3
  6c3888:	call   59f24e  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::set_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::set_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::set_Item | +1 other aliases
  6c388d:	mov    eax,DWORD PTR [ebp+0x8]
  6c3890:	mov    eax,DWORD PTR [eax+0x18]
  6c3893:	test   eax,eax
  6c3895:	je     6c3a71
  6c389b:	mov    ecx,DWORD PTR [ebp+0xc]
  6c389e:	mov    ecx,DWORD PTR [ecx+0x18]
  6c38a1:	test   ecx,ecx
  6c38a3:	je     6c3a71
  6c38a9:	mov    ecx,DWORD PTR [ecx+0x10]
  6c38ac:	test   ecx,ecx
  6c38ae:	je     6c3a71
  6c38b4:	mov    eax,DWORD PTR [eax+0x10]
  6c38b7:	mov    DWORD PTR [esp+0x18],eax
  6c38bb:	mov    eax,DWORD PTR [esp+0x28]
  6c38bf:	mov    eax,DWORD PTR [eax]
  6c38c1:	mov    DWORD PTR [esp+0x8],eax
  6c38c5:	mov    DWORD PTR [esp],ecx
  6c38c8:	mov    DWORD PTR [esp+0x4],0x4
  6c38d0:	call   59ef98  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e6b810(kind=0x15,data=0x1f2d694)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::get_Item | +2 other aliases
  6c38d5:	mov    edi,eax
  6c38d7:	mov    eax,DWORD PTR [esp+0x24]
  6c38db:	mov    eax,DWORD PTR [eax]
  6c38dd:	mov    DWORD PTR [esp],eax
  6c38e0:	call   20bfb2
  6c38e5:	mov    esi,eax
  6c38e7:	mov    eax,DWORD PTR [esp+0x20]
  6c38eb:	mov    eax,DWORD PTR [eax]
  6c38ed:	mov    DWORD PTR [esp+0x8],eax
  6c38f1:	mov    DWORD PTR [esp+0x4],edi
  6c38f5:	mov    DWORD PTR [esp],esi
  6c38f8:	call   4c167f  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::.ctor | System.Collections.Generic.List`1<System.Reflection.PropertyInfo>::.ctor | +8 other aliases
  6c38fd:	mov    ecx,DWORD PTR [esp+0x18]
  6c3901:	test   ecx,ecx
  6c3903:	je     6c3a71
  6c3909:	mov    eax,DWORD PTR [esp+0x1c]
  6c390d:	mov    eax,DWORD PTR [eax]
  6c390f:	mov    DWORD PTR [esp+0xc],eax
  6c3913:	mov    DWORD PTR [esp+0x8],esi
  6c3917:	mov    DWORD PTR [esp],ecx
  6c391a:	mov    DWORD PTR [esp+0x4],0x4
  6c3922:	call   59f24e  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, unresolved-type@0x1e68190(kind=0x15,data=0x1f27644)>::set_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, BaseItemSlot>::set_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.InventoryItemType, ABH.GameDatas.IInventoryItemGameData>::set_Item | +1 other aliases
  6c3927:	mov    eax,DWORD PTR [esp+0x14]
  6c392b:	mov    eax,DWORD PTR [eax]
  6c392d:	mov    DWORD PTR [esp+0x4],eax
  6c3931:	mov    edi,DWORD PTR [ebp+0xc]
  6c3934:	mov    DWORD PTR [esp],edi
  6c3937:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c393c:	mov    edi,DWORD PTR [ebp+0x8]
  6c393f:	mov    DWORD PTR [edi+0x8],eax
  6c3942:	lea    eax,[ebx+0x454dc]
  6c3948:	mov    eax,DWORD PTR [eax]
  6c394a:	mov    DWORD PTR [esp],eax
  6c394d:	call   20bfb2
  6c3952:	mov    esi,eax
  6c3954:	mov    DWORD PTR [esp],esi
  6c3957:	mov    DWORD PTR [esp+0x4],0x0
  6c395f:	call   179a1c5  ; ABH.Shared.Models.Character.BirdData::.ctor
  6c3964:	mov    DWORD PTR [edi+0xc],esi
  6c3967:	lea    esi,[ebx+0x4a800]
  6c396d:	mov    eax,DWORD PTR [esi]
  6c396f:	mov    DWORD PTR [esp+0x4],eax
  6c3973:	mov    DWORD PTR [esp],edi
  6c3976:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c397b:	mov    edi,eax
  6c397d:	mov    eax,DWORD PTR [esi]
  6c397f:	mov    DWORD PTR [esp+0x4],eax
  6c3983:	mov    eax,DWORD PTR [ebp+0xc]
  6c3986:	mov    DWORD PTR [esp],eax
  6c3989:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c398e:	test   eax,eax
  6c3990:	je     6c3a71
  6c3996:	mov    DWORD PTR [esp],eax
  6c3999:	mov    DWORD PTR [esp+0x4],0x0
  6c39a1:	call   179a1a1  ; ABH.Shared.Models.Character.BirdData::get_IsUnavaliable
  6c39a6:	test   edi,edi
  6c39a8:	je     6c3a71
  6c39ae:	movzx  eax,al
  6c39b1:	mov    DWORD PTR [esp+0x4],eax
  6c39b5:	mov    DWORD PTR [esp],edi
  6c39b8:	mov    DWORD PTR [esp+0x8],0x0
  6c39c0:	call   179a1b2  ; ABH.Shared.Models.Character.BirdData::set_IsUnavaliable
  6c39c5:	mov    eax,DWORD PTR [esi]
  6c39c7:	mov    DWORD PTR [esp+0x4],eax
  6c39cb:	mov    eax,DWORD PTR [ebp+0x8]
  6c39ce:	mov    DWORD PTR [esp],eax
  6c39d1:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c39d6:	mov    edi,eax
  6c39d8:	mov    eax,DWORD PTR [esi]
  6c39da:	mov    DWORD PTR [esp+0x4],eax
  6c39de:	mov    eax,DWORD PTR [ebp+0xc]
  6c39e1:	mov    DWORD PTR [esp],eax
  6c39e4:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c39e9:	test   eax,eax
  6c39eb:	je     6c3a71
  6c39f1:	mov    DWORD PTR [esp],eax
  6c39f4:	mov    DWORD PTR [esp+0x4],0x0
  6c39fc:	call   179a15b  ; ABH.Shared.Models.Character.BirdData::get_Level
  6c3a01:	test   edi,edi
  6c3a03:	je     6c3a71
  6c3a05:	mov    DWORD PTR [esp+0x4],eax
  6c3a09:	mov    DWORD PTR [esp],edi
  6c3a0c:	mov    DWORD PTR [esp+0x8],0x0
  6c3a14:	call   179a16b  ; ABH.Shared.Models.Character.BirdData::set_Level
  6c3a19:	mov    eax,DWORD PTR [esi]
  6c3a1b:	mov    DWORD PTR [esp+0x4],eax
  6c3a1f:	mov    eax,DWORD PTR [ebp+0x8]
  6c3a22:	mov    DWORD PTR [esp],eax
  6c3a25:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c3a2a:	mov    edi,eax
  6c3a2c:	mov    eax,DWORD PTR [esi]
  6c3a2e:	mov    DWORD PTR [esp+0x4],eax
  6c3a32:	mov    eax,DWORD PTR [ebp+0xc]
  6c3a35:	mov    DWORD PTR [esp],eax
  6c3a38:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c3a3d:	test   eax,eax
  6c3a3f:	je     6c3a71
  6c3a41:	mov    DWORD PTR [esp],eax
  6c3a44:	mov    DWORD PTR [esp+0x4],0x0
  6c3a4c:	call   179a138  ; ABH.Shared.Models.Character.BirdData::get_NameId
  6c3a51:	test   edi,edi
  6c3a53:	je     6c3a71
  6c3a55:	mov    DWORD PTR [esp+0x4],eax
  6c3a59:	mov    DWORD PTR [esp],edi
  6c3a5c:	mov    DWORD PTR [esp+0x8],0x0
  6c3a64:	call   179a148  ; ABH.Shared.Models.Character.BirdData::set_NameId
  6c3a69:	lea    esp,[ebp-0xc]
  6c3a6c:	pop    esi
  6c3a6d:	pop    edi
  6c3a6e:	pop    ebx
  6c3a6f:	pop    ebp
  6c3a70:	ret
  6c3a71:	call   1fbc48
  6c3a76:	call   6b106a