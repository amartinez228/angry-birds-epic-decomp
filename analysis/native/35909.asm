
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0070369d:
  70369d:	push   ebp
  70369e:	mov    ebp,esp
  7036a0:	push   ebx
  7036a1:	push   edi
  7036a2:	push   esi
  7036a3:	and    esp,0xfffffff0
  7036a6:	sub    esp,0x40
  7036a9:	call   7036ae
  7036ae:	pop    ebx
  7036af:	add    ebx,0x180e896
  7036b5:	mov    al,BYTE PTR [ebx+0x5f846]
  7036bb:	test   al,al
  7036bd:	jne    7036d6
  7036bf:	lea    eax,[ebx-0x65f9e4]
  7036c5:	mov    eax,DWORD PTR [eax]
  7036c7:	mov    DWORD PTR [esp],eax
  7036ca:	call   1ca6e8
  7036cf:	mov    BYTE PTR [ebx+0x5f846],0x1
  7036d6:	mov    esi,DWORD PTR [ebp+0x8]
  7036d9:	mov    DWORD PTR [esp+0x38],0x0
  7036e1:	mov    DWORD PTR [esp+0x34],0x0
  7036e9:	lea    eax,[ebx+0x45820]
  7036ef:	mov    eax,DWORD PTR [eax]
  7036f1:	test   BYTE PTR [eax+0xb2],0x1
  7036f8:	je     703708
  7036fa:	cmp    DWORD PTR [eax+0x60],0x0
  7036fe:	jne    703708
  703700:	mov    DWORD PTR [esp],eax
  703703:	call   1db0b8
  703708:	mov    DWORD PTR [esp+0x4],0x0
  703710:	mov    DWORD PTR [esp],0x0
  703717:	call   107cf95  ; DIContainerBalancing::get_Service
  70371c:	mov    DWORD PTR [esp+0x24],eax
  703720:	lea    eax,[ebx+0x4a210]
  703726:	mov    DWORD PTR [esp+0x20],eax
  70372a:	mov    eax,DWORD PTR [eax]
  70372c:	mov    DWORD PTR [esp+0x4],eax
  703730:	mov    DWORD PTR [esp],esi
  703733:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703738:	test   eax,eax
  70373a:	je     703977
  703740:	mov    DWORD PTR [esp],eax
  703743:	mov    DWORD PTR [esp+0x4],0x0
  70374b:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  703750:	mov    DWORD PTR [esp+0x34],eax
  703754:	lea    eax,[ebx+0x512f4]  ; literal "00"
  70375a:	mov    eax,DWORD PTR [eax]
  70375c:	mov    DWORD PTR [esp+0x4],eax
  703760:	lea    eax,[esp+0x34]
  703764:	mov    DWORD PTR [esp],eax
  703767:	mov    DWORD PTR [esp+0x8],0x0
  70376f:	call   fea004
  703774:	mov    edi,eax
  703776:	lea    eax,[ebx+0x430e4]
  70377c:	mov    eax,DWORD PTR [eax]
  70377e:	test   BYTE PTR [eax+0xb2],0x1
  703785:	je     703795
  703787:	cmp    DWORD PTR [eax+0x60],0x0
  70378b:	jne    703795
  70378d:	mov    DWORD PTR [esp],eax
  703790:	call   1db0b8
  703795:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  70379b:	mov    eax,DWORD PTR [eax]
  70379d:	mov    DWORD PTR [esp+0x8],edi
  7037a1:	mov    DWORD PTR [esp+0x4],eax
  7037a5:	mov    DWORD PTR [esp+0xc],0x0
  7037ad:	mov    DWORD PTR [esp],0x0
  7037b4:	call   ca462a  ; System.String::Concat
  7037b9:	mov    DWORD PTR [esp+0x1c],eax
  7037bd:	mov    edx,DWORD PTR [esp+0x24]
  7037c1:	test   edx,edx
  7037c3:	je     703977
  7037c9:	lea    eax,[ebx+0x49fb4]
  7037cf:	mov    eax,DWORD PTR [eax]
  7037d1:	mov    DWORD PTR [esp+0x18],eax
  7037d5:	mov    ecx,DWORD PTR [eax+0xc]
  7037d8:	movzx  eax,WORD PTR [eax+0x2c]
  7037dc:	mov    DWORD PTR [esp+0x14],eax
  7037e0:	mov    edx,DWORD PTR [edx]
  7037e2:	movzx  esi,WORD PTR [edx+0xaa]
  7037e9:	test   esi,esi
  7037eb:	je     7037fc
  7037ed:	mov    eax,DWORD PTR [edx+0x4c]
  7037f0:	xor    edi,edi
  7037f2:	cmp    DWORD PTR [eax+edi*8],ecx
  7037f5:	je     703816
  7037f7:	inc    edi
  7037f8:	cmp    edi,esi
  7037fa:	jb     7037f2
  7037fc:	mov    eax,DWORD PTR [esp+0x14]
  703800:	mov    DWORD PTR [esp+0x8],eax
  703804:	mov    DWORD PTR [esp+0x4],ecx
  703808:	mov    esi,DWORD PTR [esp+0x24]
  70380c:	mov    DWORD PTR [esp],esi
  70380f:	call   1c1964
  703814:	jmp    703829
  703816:	mov    ecx,DWORD PTR [esp+0x14]
  70381a:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  70381e:	lea    eax,[edx+ecx*8+0xb4]
  703825:	mov    esi,DWORD PTR [esp+0x24]
  703829:	mov    eax,DWORD PTR [eax+0x4]
  70382c:	mov    ecx,DWORD PTR [esp+0x18]
  703830:	mov    DWORD PTR [esp+0x4],ecx
  703834:	mov    DWORD PTR [esp],eax
  703837:	call   1da450
  70383c:	mov    DWORD PTR [esp+0xc],eax
  703840:	lea    ecx,[esp+0x38]
  703844:	mov    DWORD PTR [esp+0x8],ecx
  703848:	mov    ecx,DWORD PTR [esp+0x1c]
  70384c:	mov    DWORD PTR [esp+0x4],ecx
  703850:	mov    DWORD PTR [esp],esi
  703853:	call   DWORD PTR [eax]
  703855:	test   al,al
  703857:	je     70396f
  70385d:	mov    eax,DWORD PTR [esp+0x20]
  703861:	mov    eax,DWORD PTR [eax]
  703863:	mov    DWORD PTR [esp+0x4],eax
  703867:	mov    edi,DWORD PTR [ebp+0x8]
  70386a:	mov    DWORD PTR [esp],edi
  70386d:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703872:	mov    esi,eax
  703874:	test   esi,esi
  703876:	je     703977
  70387c:	mov    DWORD PTR [esp],esi
  70387f:	mov    DWORD PTR [esp+0x4],0x0
  703887:	call   179ce5d  ; ABH.Shared.Models.PlayerData::get_Experience
  70388c:	fstp   DWORD PTR [esp+0x30]
  703890:	movss  xmm0,DWORD PTR [ebp+0x10]
  703895:	addss  xmm0,DWORD PTR [esp+0x30]
  70389b:	movss  DWORD PTR [esp+0x4],xmm0
  7038a1:	mov    DWORD PTR [esp],esi
  7038a4:	mov    DWORD PTR [esp+0x8],0x0
  7038ac:	call   179ce6d  ; ABH.Shared.Models.PlayerData::set_Experience
  7038b1:	mov    eax,DWORD PTR [esp+0x38]
  7038b5:	test   eax,eax
  7038b7:	je     703977
  7038bd:	mov    DWORD PTR [esp],eax
  7038c0:	mov    DWORD PTR [esp+0x4],0x0
  7038c8:	call   1700eef  ; ABH.Shared.BalancingData.ExperienceLevelBalancingData::get_Experience
  7038cd:	mov    esi,eax
  7038cf:	mov    eax,DWORD PTR [esp+0x20]
  7038d3:	mov    eax,DWORD PTR [eax]
  7038d5:	mov    DWORD PTR [esp+0x4],eax
  7038d9:	mov    DWORD PTR [esp],edi
  7038dc:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  7038e1:	test   eax,eax
  7038e3:	je     703977
  7038e9:	mov    DWORD PTR [esp],eax
  7038ec:	mov    DWORD PTR [esp+0x4],0x0
  7038f4:	call   179ce5d  ; ABH.Shared.Models.PlayerData::get_Experience
  7038f9:	fstp   DWORD PTR [esp+0x2c]
  7038fd:	movss  xmm0,DWORD PTR [esp+0x2c]
  703903:	cvtsi2ss xmm1,esi
  703907:	ucomiss xmm0,xmm1
  70390a:	jb     703918
  70390c:	mov    DWORD PTR [esp+0x4],esi
  703910:	mov    DWORD PTR [esp],edi
  703913:	call   703981  ; ABH.GameDatas.PlayerGameData::ApplyLevelUp
  703918:	mov    eax,edi
  70391a:	mov    edi,DWORD PTR [eax+0x40]
  70391d:	mov    ecx,eax
  70391f:	test   edi,edi
  703921:	je     70396f
  703923:	mov    eax,DWORD PTR [esp+0x20]
  703927:	mov    eax,DWORD PTR [eax]
  703929:	mov    DWORD PTR [esp+0x4],eax
  70392d:	mov    DWORD PTR [esp],ecx
  703930:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703935:	test   eax,eax
  703937:	je     703977
  703939:	mov    DWORD PTR [esp],eax
  70393c:	mov    DWORD PTR [esp+0x4],0x0
  703944:	call   179ce5d  ; ABH.Shared.Models.PlayerData::get_Experience
  703949:	fstp   DWORD PTR [esp+0x28]
  70394d:	cvttss2si eax,DWORD PTR [esp+0x28]
  703953:	lea    ecx,[ebx+0x4a83c]
  703959:	mov    ecx,DWORD PTR [ecx]
  70395b:	mov    DWORD PTR [esp+0xc],ecx
  70395f:	mov    DWORD PTR [esp+0x8],esi
  703963:	mov    DWORD PTR [esp+0x4],eax
  703967:	mov    DWORD PTR [esp],edi
  70396a:	call   15f367f  ; System.Action`2<int, int>::Invoke
  70396f:	lea    esp,[ebp-0xc]
  703972:	pop    esi
  703973:	pop    edi
  703974:	pop    ebx
  703975:	pop    ebp
  703976:	ret
  703977:	call   1fbc48
  70397c:	call   6b106a