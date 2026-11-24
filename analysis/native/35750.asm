
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d5818:
  6d5818:	push   ebp
  6d5819:	mov    ebp,esp
  6d581b:	push   ebx
  6d581c:	push   edi
  6d581d:	push   esi
  6d581e:	and    esp,0xfffffff0
  6d5821:	sub    esp,0x30
  6d5824:	call   6d5829
  6d5829:	pop    ebx
  6d582a:	add    ebx,0x183c71b
  6d5830:	mov    esi,DWORD PTR [ebp+0xc]
  6d5833:	mov    al,BYTE PTR [ebx+0x5f715]
  6d5839:	test   al,al
  6d583b:	jne    6d5854
  6d583d:	lea    eax,[ebx-0x668428]
  6d5843:	mov    eax,DWORD PTR [eax]
  6d5845:	mov    DWORD PTR [esp],eax
  6d5848:	call   1ca6e8
  6d584d:	mov    BYTE PTR [ebx+0x5f715],0x1
  6d5854:	mov    DWORD PTR [esp+0x28],0x0
  6d585c:	mov    DWORD PTR [esp+0x24],0x0
  6d5864:	test   esi,esi
  6d5866:	je     6d5dca
  6d586c:	lea    edi,[ebx+0x4a0c8]
  6d5872:	mov    eax,DWORD PTR [edi]
  6d5874:	mov    DWORD PTR [esp+0x4],eax
  6d5878:	mov    DWORD PTR [esp],esi
  6d587b:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d5880:	test   eax,eax
  6d5882:	je     6d5dca
  6d5888:	mov    DWORD PTR [esp],eax
  6d588b:	mov    DWORD PTR [esp+0x4],0x0
  6d5893:	call   1700b67  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_IsRanged
  6d5898:	test   al,al
  6d589a:	je     6d58d4
  6d589c:	mov    eax,DWORD PTR [edi]
  6d589e:	mov    DWORD PTR [esp+0x4],eax
  6d58a2:	mov    DWORD PTR [esp],esi
  6d58a5:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d58aa:	test   eax,eax
  6d58ac:	je     6d5dca
  6d58b2:	mov    DWORD PTR [esp],eax
  6d58b5:	mov    DWORD PTR [esp+0x4],0x0
  6d58bd:	call   1700cc7  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_DirectProjectileAssetAndLoca
  6d58c2:	test   al,al
  6d58c4:	je     6d58ff
  6d58c6:	mov    eax,DWORD PTR [edi]
  6d58c8:	mov    DWORD PTR [esp+0x4],eax
  6d58cc:	mov    DWORD PTR [esp],esi
  6d58cf:	jmp    6d5bbc
  6d58d4:	lea    esi,[ebx+0x430e4]
  6d58da:	mov    eax,DWORD PTR [esi]
  6d58dc:	test   BYTE PTR [eax+0xb2],0x1
  6d58e3:	je     6d58f5
  6d58e5:	cmp    DWORD PTR [eax+0x60],0x0
  6d58e9:	jne    6d58f5
  6d58eb:	mov    DWORD PTR [esp],eax
  6d58ee:	call   1db0b8
  6d58f3:	mov    eax,DWORD PTR [esi]
  6d58f5:	mov    eax,DWORD PTR [eax+0x50]
  6d58f8:	mov    eax,DWORD PTR [eax]
  6d58fa:	jmp    6d5dc2
  6d58ff:	mov    DWORD PTR [esp+0x20],edi
  6d5903:	mov    DWORD PTR [esp],esi
  6d5906:	call   6d374a  ; ABH.GameDatas.EquipmentGameData::get_ItemData
  6d590b:	mov    esi,eax
  6d590d:	test   esi,esi
  6d590f:	je     6d5dca
  6d5915:	lea    eax,[ebx+0x45850]
  6d591b:	mov    DWORD PTR [esp+0x1c],eax
  6d591f:	mov    eax,DWORD PTR [eax]
  6d5921:	mov    ecx,DWORD PTR [esi]
  6d5923:	mov    DWORD PTR [esp+0x18],ecx
  6d5927:	movzx  edx,WORD PTR [ecx+0xaa]
  6d592e:	test   edx,edx
  6d5930:	je     6d5945
  6d5932:	mov    ecx,DWORD PTR [esp+0x18]
  6d5936:	mov    edi,DWORD PTR [ecx+0x4c]
  6d5939:	xor    ecx,ecx
  6d593b:	cmp    DWORD PTR [edi+ecx*8],eax
  6d593e:	je     6d595d
  6d5940:	inc    ecx
  6d5941:	cmp    ecx,edx
  6d5943:	jb     6d593b
  6d5945:	mov    DWORD PTR [esp+0x4],eax
  6d5949:	mov    DWORD PTR [esp],esi
  6d594c:	mov    DWORD PTR [esp+0x8],0x2
  6d5954:	call   1c1964
  6d5959:	mov    ecx,eax
  6d595b:	jmp    6d596c
  6d595d:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6d5961:	mov    ecx,DWORD PTR [esp+0x18]
  6d5965:	lea    ecx,[ecx+eax*8+0xc4]
  6d596c:	mov    eax,DWORD PTR [ecx+0x4]
  6d596f:	mov    DWORD PTR [esp+0x4],eax
  6d5973:	mov    DWORD PTR [esp],esi
  6d5976:	call   DWORD PTR [ecx]
  6d5978:	test   eax,eax
  6d597a:	js     6d5a57
  6d5980:	mov    eax,DWORD PTR [ebp+0xc]
  6d5983:	mov    DWORD PTR [esp],eax
  6d5986:	call   6d36f4  ; ABH.GameDatas.EquipmentGameData::get_ItemBalancing
  6d598b:	mov    esi,eax
  6d598d:	test   esi,esi
  6d598f:	je     6d5dca
  6d5995:	lea    eax,[ebx+0x45578]
  6d599b:	mov    eax,DWORD PTR [eax]
  6d599d:	mov    ecx,DWORD PTR [esi]
  6d599f:	mov    DWORD PTR [esp+0x18],ecx
  6d59a3:	movzx  edx,WORD PTR [ecx+0xaa]
  6d59aa:	test   edx,edx
  6d59ac:	je     6d59c1
  6d59ae:	mov    ecx,DWORD PTR [esp+0x18]
  6d59b2:	mov    edi,DWORD PTR [ecx+0x4c]
  6d59b5:	xor    ecx,ecx
  6d59b7:	cmp    DWORD PTR [edi+ecx*8],eax
  6d59ba:	je     6d59d9
  6d59bc:	inc    ecx
  6d59bd:	cmp    ecx,edx
  6d59bf:	jb     6d59b7
  6d59c1:	mov    DWORD PTR [esp+0x4],eax
  6d59c5:	mov    DWORD PTR [esp],esi
  6d59c8:	mov    DWORD PTR [esp+0x8],0x2
  6d59d0:	call   1c1964
  6d59d5:	mov    ecx,eax
  6d59d7:	jmp    6d59e8
  6d59d9:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6d59dd:	mov    ecx,DWORD PTR [esp+0x18]
  6d59e1:	lea    ecx,[ecx+eax*8+0xc4]
  6d59e8:	mov    eax,DWORD PTR [ecx+0x4]
  6d59eb:	mov    DWORD PTR [esp+0x4],eax
  6d59ef:	mov    DWORD PTR [esp],esi
  6d59f2:	call   DWORD PTR [ecx]
  6d59f4:	cmp    eax,0x3
  6d59f7:	jne    6d5a57
  6d59f9:	mov    eax,DWORD PTR [ebp+0xc]
  6d59fc:	mov    DWORD PTR [esp],eax
  6d59ff:	call   6d374a  ; ABH.GameDatas.EquipmentGameData::get_ItemData
  6d5a04:	mov    esi,eax
  6d5a06:	test   esi,esi
  6d5a08:	je     6d5dca
  6d5a0e:	mov    eax,DWORD PTR [esp+0x1c]
  6d5a12:	mov    eax,DWORD PTR [eax]
  6d5a14:	mov    ecx,DWORD PTR [esi]
  6d5a16:	mov    DWORD PTR [esp+0x1c],ecx
  6d5a1a:	movzx  edx,WORD PTR [ecx+0xaa]
  6d5a21:	test   edx,edx
  6d5a23:	je     6d5a3c
  6d5a25:	mov    ecx,DWORD PTR [esp+0x1c]
  6d5a29:	mov    edi,DWORD PTR [ecx+0x4c]
  6d5a2c:	xor    ecx,ecx
  6d5a2e:	cmp    DWORD PTR [edi+ecx*8],eax
  6d5a31:	je     6d5bde
  6d5a37:	inc    ecx
  6d5a38:	cmp    ecx,edx
  6d5a3a:	jb     6d5a2e
  6d5a3c:	mov    DWORD PTR [esp+0x4],eax
  6d5a40:	mov    DWORD PTR [esp],esi
  6d5a43:	mov    DWORD PTR [esp+0x8],0x2
  6d5a4b:	call   1c1964
  6d5a50:	mov    ecx,eax
  6d5a52:	jmp    6d5bed
  6d5a57:	mov    eax,DWORD PTR [ebp+0xc]
  6d5a5a:	mov    DWORD PTR [esp],eax
  6d5a5d:	call   6d374a  ; ABH.GameDatas.EquipmentGameData::get_ItemData
  6d5a62:	mov    esi,eax
  6d5a64:	test   esi,esi
  6d5a66:	je     6d5dca
  6d5a6c:	mov    eax,DWORD PTR [esp+0x1c]
  6d5a70:	mov    eax,DWORD PTR [eax]
  6d5a72:	mov    ecx,DWORD PTR [esi]
  6d5a74:	mov    DWORD PTR [esp+0x18],ecx
  6d5a78:	movzx  edx,WORD PTR [ecx+0xaa]
  6d5a7f:	test   edx,edx
  6d5a81:	je     6d5a96
  6d5a83:	mov    ecx,DWORD PTR [esp+0x18]
  6d5a87:	mov    edi,DWORD PTR [ecx+0x4c]
  6d5a8a:	xor    ecx,ecx
  6d5a8c:	cmp    DWORD PTR [edi+ecx*8],eax
  6d5a8f:	je     6d5aae
  6d5a91:	inc    ecx
  6d5a92:	cmp    ecx,edx
  6d5a94:	jb     6d5a8c
  6d5a96:	mov    DWORD PTR [esp+0x4],eax
  6d5a9a:	mov    DWORD PTR [esp],esi
  6d5a9d:	mov    DWORD PTR [esp+0x8],0x2
  6d5aa5:	call   1c1964
  6d5aaa:	mov    ecx,eax
  6d5aac:	jmp    6d5abd
  6d5aae:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6d5ab2:	mov    ecx,DWORD PTR [esp+0x18]
  6d5ab6:	lea    ecx,[ecx+eax*8+0xc4]
  6d5abd:	mov    eax,DWORD PTR [ecx+0x4]
  6d5ac0:	mov    DWORD PTR [esp+0x4],eax
  6d5ac4:	mov    DWORD PTR [esp],esi
  6d5ac7:	call   DWORD PTR [ecx]
  6d5ac9:	test   eax,eax
  6d5acb:	mov    eax,DWORD PTR [esp+0x20]
  6d5acf:	js     6d5bb0
  6d5ad5:	mov    eax,DWORD PTR [ebp+0xc]
  6d5ad8:	mov    DWORD PTR [esp],eax
  6d5adb:	call   6d36f4  ; ABH.GameDatas.EquipmentGameData::get_ItemBalancing
  6d5ae0:	mov    esi,eax
  6d5ae2:	test   esi,esi
  6d5ae4:	je     6d5dca
  6d5aea:	lea    eax,[ebx+0x45578]
  6d5af0:	mov    eax,DWORD PTR [eax]
  6d5af2:	mov    ecx,DWORD PTR [esi]
  6d5af4:	mov    DWORD PTR [esp+0x18],ecx
  6d5af8:	movzx  edx,WORD PTR [ecx+0xaa]
  6d5aff:	test   edx,edx
  6d5b01:	je     6d5b16
  6d5b03:	mov    ecx,DWORD PTR [esp+0x18]
  6d5b07:	mov    edi,DWORD PTR [ecx+0x4c]
  6d5b0a:	xor    ecx,ecx
  6d5b0c:	cmp    DWORD PTR [edi+ecx*8],eax
  6d5b0f:	je     6d5b2e
  6d5b11:	inc    ecx
  6d5b12:	cmp    ecx,edx
  6d5b14:	jb     6d5b0c
  6d5b16:	mov    DWORD PTR [esp+0x4],eax
  6d5b1a:	mov    DWORD PTR [esp],esi
  6d5b1d:	mov    DWORD PTR [esp+0x8],0x2
  6d5b25:	call   1c1964
  6d5b2a:	mov    ecx,eax
  6d5b2c:	jmp    6d5b3d
  6d5b2e:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6d5b32:	mov    ecx,DWORD PTR [esp+0x18]
  6d5b36:	lea    ecx,[ecx+eax*8+0xc4]
  6d5b3d:	mov    eax,DWORD PTR [ecx+0x4]
  6d5b40:	mov    DWORD PTR [esp+0x4],eax
  6d5b44:	mov    DWORD PTR [esp],esi
  6d5b47:	call   DWORD PTR [ecx]
  6d5b49:	cmp    eax,0x4
  6d5b4c:	mov    eax,DWORD PTR [esp+0x20]
  6d5b50:	jne    6d5bb0
  6d5b52:	mov    eax,DWORD PTR [ebp+0xc]
  6d5b55:	mov    DWORD PTR [esp],eax
  6d5b58:	call   6d374a  ; ABH.GameDatas.EquipmentGameData::get_ItemData
  6d5b5d:	mov    esi,eax
  6d5b5f:	test   esi,esi
  6d5b61:	je     6d5dca
  6d5b67:	mov    eax,DWORD PTR [esp+0x1c]
  6d5b6b:	mov    eax,DWORD PTR [eax]
  6d5b6d:	mov    ecx,DWORD PTR [esi]
  6d5b6f:	mov    DWORD PTR [esp+0x1c],ecx
  6d5b73:	movzx  edx,WORD PTR [ecx+0xaa]
  6d5b7a:	test   edx,edx
  6d5b7c:	je     6d5b95
  6d5b7e:	mov    ecx,DWORD PTR [esp+0x1c]
  6d5b82:	mov    edi,DWORD PTR [ecx+0x4c]
  6d5b85:	xor    ecx,ecx
  6d5b87:	cmp    DWORD PTR [edi+ecx*8],eax
  6d5b8a:	je     6d5ca8
  6d5b90:	inc    ecx
  6d5b91:	cmp    ecx,edx
  6d5b93:	jb     6d5b87
  6d5b95:	mov    DWORD PTR [esp+0x4],eax
  6d5b99:	mov    DWORD PTR [esp],esi
  6d5b9c:	mov    DWORD PTR [esp+0x8],0x2
  6d5ba4:	call   1c1964
  6d5ba9:	mov    ecx,eax
  6d5bab:	jmp    6d5cb7
  6d5bb0:	mov    eax,DWORD PTR [eax]
  6d5bb2:	mov    DWORD PTR [esp+0x4],eax
  6d5bb6:	mov    eax,DWORD PTR [ebp+0xc]
  6d5bb9:	mov    DWORD PTR [esp],eax
  6d5bbc:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d5bc1:	test   eax,eax
  6d5bc3:	je     6d5dca
  6d5bc9:	mov    DWORD PTR [esp],eax
  6d5bcc:	mov    DWORD PTR [esp+0x4],0x0
  6d5bd4:	call   1700b8b  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_ProjectileAssetId
  6d5bd9:	jmp    6d5dc2
  6d5bde:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6d5be2:	mov    ecx,DWORD PTR [esp+0x1c]
  6d5be6:	lea    ecx,[ecx+eax*8+0xc4]
  6d5bed:	mov    eax,DWORD PTR [ecx+0x4]
  6d5bf0:	mov    DWORD PTR [esp+0x4],eax
  6d5bf4:	mov    DWORD PTR [esp],esi
  6d5bf7:	call   DWORD PTR [ecx]
  6d5bf9:	mov    DWORD PTR [esp+0x1c],eax
  6d5bfd:	mov    eax,DWORD PTR [esp+0x20]
  6d5c01:	mov    eax,DWORD PTR [eax]
  6d5c03:	mov    DWORD PTR [esp+0x4],eax
  6d5c07:	mov    esi,DWORD PTR [ebp+0xc]
  6d5c0a:	mov    DWORD PTR [esp],esi
  6d5c0d:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d5c12:	test   eax,eax
  6d5c14:	je     6d5dca
  6d5c1a:	mov    DWORD PTR [esp],eax
  6d5c1d:	mov    DWORD PTR [esp+0x4],0x0
  6d5c25:	call   1700c3b  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_AssetLevelOffset
  6d5c2a:	mov    edi,eax
  6d5c2c:	mov    eax,DWORD PTR [esp+0x20]
  6d5c30:	mov    eax,DWORD PTR [eax]
  6d5c32:	mov    DWORD PTR [esp+0x4],eax
  6d5c36:	mov    DWORD PTR [esp],esi
  6d5c39:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d5c3e:	test   eax,eax
  6d5c40:	je     6d5dca
  6d5c46:	add    edi,DWORD PTR [esp+0x1c]
  6d5c4a:	lea    esi,[edi+0x1b]
  6d5c4d:	test   edi,edi
  6d5c4f:	cmovg  esi,edi
  6d5c52:	mov    DWORD PTR [esp],eax
  6d5c55:	mov    DWORD PTR [esp+0x4],0x0
  6d5c5d:	call   1700b8b  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_ProjectileAssetId
  6d5c62:	mov    DWORD PTR [esp+0x20],eax
  6d5c66:	dec    esi
  6d5c67:	mov    ecx,0x55555556
  6d5c6c:	mov    eax,esi
  6d5c6e:	imul   ecx
  6d5c70:	mov    ecx,edx
  6d5c72:	shr    ecx,0x1f
  6d5c75:	add    ecx,edx
  6d5c77:	mov    edx,0x38e38e39
  6d5c7c:	mov    eax,ecx
  6d5c7e:	imul   edx
  6d5c80:	mov    eax,edx
  6d5c82:	shr    eax,0x1f
  6d5c85:	sar    edx,1
  6d5c87:	add    edx,eax
  6d5c89:	lea    eax,[edx+edx*8]
  6d5c8c:	sub    ecx,eax
  6d5c8e:	inc    ecx
  6d5c8f:	mov    DWORD PTR [esp+0x28],ecx
  6d5c93:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6d5c99:	mov    eax,DWORD PTR [eax]
  6d5c9b:	mov    DWORD PTR [esp+0x4],eax
  6d5c9f:	lea    eax,[esp+0x28]
  6d5ca3:	jmp    6d5d65
  6d5ca8:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6d5cac:	mov    ecx,DWORD PTR [esp+0x1c]
  6d5cb0:	lea    ecx,[ecx+eax*8+0xc4]
  6d5cb7:	mov    eax,DWORD PTR [ecx+0x4]
  6d5cba:	mov    DWORD PTR [esp+0x4],eax
  6d5cbe:	mov    DWORD PTR [esp],esi
  6d5cc1:	call   DWORD PTR [ecx]
  6d5cc3:	mov    DWORD PTR [esp+0x1c],eax
  6d5cc7:	mov    eax,DWORD PTR [esp+0x20]
  6d5ccb:	mov    eax,DWORD PTR [eax]
  6d5ccd:	mov    DWORD PTR [esp+0x4],eax
  6d5cd1:	mov    esi,DWORD PTR [ebp+0xc]
  6d5cd4:	mov    DWORD PTR [esp],esi
  6d5cd7:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d5cdc:	test   eax,eax
  6d5cde:	je     6d5dca
  6d5ce4:	mov    DWORD PTR [esp],eax
  6d5ce7:	mov    DWORD PTR [esp+0x4],0x0
  6d5cef:	call   1700c3b  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_AssetLevelOffset
  6d5cf4:	mov    edi,eax
  6d5cf6:	mov    eax,DWORD PTR [esp+0x20]
  6d5cfa:	mov    eax,DWORD PTR [eax]
  6d5cfc:	mov    DWORD PTR [esp+0x4],eax
  6d5d00:	mov    DWORD PTR [esp],esi
  6d5d03:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d5d08:	test   eax,eax
  6d5d0a:	je     6d5dca
  6d5d10:	add    edi,DWORD PTR [esp+0x1c]
  6d5d14:	lea    esi,[edi+0x18]
  6d5d17:	test   edi,edi
  6d5d19:	cmovg  esi,edi
  6d5d1c:	mov    DWORD PTR [esp],eax
  6d5d1f:	mov    DWORD PTR [esp+0x4],0x0
  6d5d27:	call   1700b8b  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_ProjectileAssetId
  6d5d2c:	mov    DWORD PTR [esp+0x20],eax
  6d5d30:	dec    esi
  6d5d31:	mov    ecx,0x55555556
  6d5d36:	mov    eax,esi
  6d5d38:	imul   ecx
  6d5d3a:	mov    eax,edx
  6d5d3c:	shr    eax,0x1f
  6d5d3f:	add    eax,edx
  6d5d41:	mov    ecx,eax
  6d5d43:	sar    ecx,0x1f
  6d5d46:	shr    ecx,0x1d
  6d5d49:	add    ecx,eax
  6d5d4b:	and    ecx,0xfffffff8
  6d5d4e:	sub    eax,ecx
  6d5d50:	inc    eax
  6d5d51:	mov    DWORD PTR [esp+0x24],eax
  6d5d55:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6d5d5b:	mov    eax,DWORD PTR [eax]
  6d5d5d:	mov    DWORD PTR [esp+0x4],eax
  6d5d61:	lea    eax,[esp+0x24]
  6d5d65:	mov    DWORD PTR [esp],eax
  6d5d68:	mov    DWORD PTR [esp+0x8],0x0
  6d5d70:	call   fea004
  6d5d75:	mov    edi,eax
  6d5d77:	lea    eax,[ebx+0x430e4]
  6d5d7d:	mov    eax,DWORD PTR [eax]
  6d5d7f:	test   BYTE PTR [eax+0xb2],0x1
  6d5d86:	je     6d5d96
  6d5d88:	cmp    DWORD PTR [eax+0x60],0x0
  6d5d8c:	jne    6d5d96
  6d5d8e:	mov    DWORD PTR [esp],eax
  6d5d91:	call   1db0b8
  6d5d96:	lea    eax,[ebx+0x52488]  ; literal "_"
  6d5d9c:	mov    eax,DWORD PTR [eax]
  6d5d9e:	mov    DWORD PTR [esp+0xc],edi
  6d5da2:	mov    DWORD PTR [esp+0x8],eax
  6d5da6:	mov    eax,DWORD PTR [esp+0x20]
  6d5daa:	mov    DWORD PTR [esp+0x4],eax
  6d5dae:	mov    DWORD PTR [esp+0x10],0x0
  6d5db6:	mov    DWORD PTR [esp],0x0
  6d5dbd:	call   caa312  ; System.String::Concat
  6d5dc2:	lea    esp,[ebp-0xc]
  6d5dc5:	pop    esi
  6d5dc6:	pop    edi
  6d5dc7:	pop    ebx
  6d5dc8:	pop    ebp
  6d5dc9:	ret
  6d5dca:	call   1fbc48
  6d5dcf:	call   6b106a