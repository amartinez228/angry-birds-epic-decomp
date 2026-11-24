
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008df7ea:
  8df7ea:	push   ebp
  8df7eb:	mov    ebp,esp
  8df7ed:	push   ebx
  8df7ee:	push   edi
  8df7ef:	push   esi
  8df7f0:	and    esp,0xfffffff0
  8df7f3:	sub    esp,0x40
  8df7f6:	call   8df7fb
  8df7fb:	pop    ebx
  8df7fc:	add    ebx,0x1632749
  8df802:	mov    al,BYTE PTR [ebx+0x6019d]
  8df808:	test   al,al
  8df80a:	jne    8df823
  8df80c:	lea    eax,[ebx-0x66da0c]
  8df812:	mov    eax,DWORD PTR [eax]
  8df814:	mov    DWORD PTR [esp],eax
  8df817:	call   1ca6e8
  8df81c:	mov    BYTE PTR [ebx+0x6019d],0x1
  8df823:	lea    eax,[ebx+0x4584c]
  8df829:	mov    eax,DWORD PTR [eax]
  8df82b:	test   BYTE PTR [eax+0xb2],0x1
  8df832:	je     8df842
  8df834:	cmp    DWORD PTR [eax+0x60],0x0
  8df838:	jne    8df842
  8df83a:	mov    DWORD PTR [esp],eax
  8df83d:	call   1db0b8
  8df842:	mov    DWORD PTR [esp+0x4],0x0
  8df84a:	mov    DWORD PTR [esp],0x0
  8df851:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  8df856:	test   eax,eax
  8df858:	je     8dfdb2
  8df85e:	lea    ecx,[ebx+0x4a210]
  8df864:	mov    ecx,DWORD PTR [ecx]
  8df866:	mov    DWORD PTR [esp+0x4],ecx
  8df86a:	mov    DWORD PTR [esp],eax
  8df86d:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  8df872:	test   eax,eax
  8df874:	je     8dfdb2
  8df87a:	mov    esi,DWORD PTR [ebp+0x8]
  8df87d:	mov    DWORD PTR [esp],eax
  8df880:	mov    DWORD PTR [esp+0x4],0x0
  8df888:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  8df88d:	mov    DWORD PTR [esp+0x24],eax
  8df891:	mov    edi,DWORD PTR [esi+0x18]
  8df894:	test   edi,edi
  8df896:	je     8dfdb2
  8df89c:	lea    eax,[ebx+0x45874]
  8df8a2:	mov    DWORD PTR [esp+0x28],ebx
  8df8a6:	mov    eax,DWORD PTR [eax]
  8df8a8:	mov    ebx,DWORD PTR [edi]
  8df8aa:	movzx  edx,WORD PTR [ebx+0xaa]
  8df8b1:	test   edx,edx
  8df8b3:	je     8df8c4
  8df8b5:	mov    esi,DWORD PTR [ebx+0x4c]
  8df8b8:	xor    ecx,ecx
  8df8ba:	cmp    DWORD PTR [esi+ecx*8],eax
  8df8bd:	je     8df8e0
  8df8bf:	inc    ecx
  8df8c0:	cmp    ecx,edx
  8df8c2:	jb     8df8ba
  8df8c4:	mov    DWORD PTR [esp+0x4],eax
  8df8c8:	mov    DWORD PTR [esp],edi
  8df8cb:	mov    DWORD PTR [esp+0x8],0x9
  8df8d3:	mov    ebx,DWORD PTR [esp+0x28]
  8df8d7:	call   1c1964
  8df8dc:	mov    ecx,eax
  8df8de:	jmp    8df8ef
  8df8e0:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  8df8e4:	lea    ecx,[ebx+eax*8+0xfc]
  8df8eb:	mov    ebx,DWORD PTR [esp+0x28]
  8df8ef:	mov    eax,DWORD PTR [ecx+0x4]
  8df8f2:	mov    DWORD PTR [esp+0x4],eax
  8df8f6:	mov    DWORD PTR [esp],edi
  8df8f9:	call   DWORD PTR [ecx]
  8df8fb:	mov    edi,eax
  8df8fd:	test   edi,edi
  8df8ff:	je     8dfdb2
  8df905:	cvtsi2ss xmm0,DWORD PTR [esp+0x24]
  8df90b:	movss  DWORD PTR [esp+0x24],xmm0
  8df911:	lea    eax,[ebx+0x45884]
  8df917:	mov    eax,DWORD PTR [eax]
  8df919:	mov    ecx,DWORD PTR [edi]
  8df91b:	movzx  edx,WORD PTR [ecx+0xaa]
  8df922:	test   edx,edx
  8df924:	je     8df935
  8df926:	mov    esi,DWORD PTR [ecx+0x4c]
  8df929:	xor    ebx,ebx
  8df92b:	cmp    DWORD PTR [esi+ebx*8],eax
  8df92e:	je     8df951
  8df930:	inc    ebx
  8df931:	cmp    ebx,edx
  8df933:	jb     8df92b
  8df935:	mov    DWORD PTR [esp+0x4],eax
  8df939:	mov    DWORD PTR [esp],edi
  8df93c:	mov    DWORD PTR [esp+0x8],0x12
  8df944:	mov    ebx,DWORD PTR [esp+0x28]
  8df948:	call   1c1964
  8df94d:	mov    ecx,eax
  8df94f:	jmp    8df960
  8df951:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8df955:	lea    ecx,[ecx+eax*8+0x144]
  8df95c:	mov    ebx,DWORD PTR [esp+0x28]
  8df960:	mov    eax,DWORD PTR [ecx+0x4]
  8df963:	mov    DWORD PTR [esp+0x4],eax
  8df967:	mov    DWORD PTR [esp],edi
  8df96a:	call   DWORD PTR [ecx]
  8df96c:	cvtsi2ss xmm2,eax
  8df970:	subss  xmm2,DWORD PTR [esp+0x24]
  8df976:	movss  xmm1,DWORD PTR [ebx-0x64fc28]
  8df97e:	xorps  xmm0,xmm0
  8df981:	ucomiss xmm2,xmm0
  8df984:	jne    8df98c
  8df986:	jnp    8dfda0
  8df98c:	movss  DWORD PTR [esp+0x20],xmm2
  8df992:	movss  DWORD PTR [esp+0x1c],xmm1
  8df998:	lea    eax,[ebx+0x45820]
  8df99e:	mov    eax,DWORD PTR [eax]
  8df9a0:	test   BYTE PTR [eax+0xb2],0x1
  8df9a7:	je     8df9b7
  8df9a9:	cmp    DWORD PTR [eax+0x60],0x0
  8df9ad:	jne    8df9b7
  8df9af:	mov    DWORD PTR [esp],eax
  8df9b2:	call   1db0b8
  8df9b7:	mov    DWORD PTR [esp+0x4],0x0
  8df9bf:	mov    DWORD PTR [esp],0x0
  8df9c6:	call   107cf95  ; DIContainerBalancing::get_Service
  8df9cb:	test   eax,eax
  8df9cd:	je     8dfdb2
  8df9d3:	lea    ecx,[ebx+0x4cc48]
  8df9d9:	mov    edx,DWORD PTR [ecx]
  8df9db:	mov    DWORD PTR [esp+0x18],edx
  8df9df:	mov    ecx,DWORD PTR [edx+0xc]
  8df9e2:	movzx  ebx,WORD PTR [edx+0x2c]
  8df9e6:	mov    edx,DWORD PTR [eax]
  8df9e8:	mov    DWORD PTR [esp+0x24],eax
  8df9ec:	movzx  eax,WORD PTR [edx+0xaa]
  8df9f3:	test   eax,eax
  8df9f5:	je     8dfa06
  8df9f7:	mov    esi,DWORD PTR [edx+0x4c]
  8df9fa:	xor    edi,edi
  8df9fc:	cmp    DWORD PTR [esi+edi*8],ecx
  8df9ff:	je     8dfa20
  8dfa01:	inc    edi
  8dfa02:	cmp    edi,eax
  8dfa04:	jb     8df9fc
  8dfa06:	mov    DWORD PTR [esp+0x8],ebx
  8dfa0a:	mov    DWORD PTR [esp+0x4],ecx
  8dfa0e:	mov    esi,DWORD PTR [esp+0x24]
  8dfa12:	mov    DWORD PTR [esp],esi
  8dfa15:	mov    ebx,DWORD PTR [esp+0x28]
  8dfa19:	call   1c1964
  8dfa1e:	jmp    8dfa33
  8dfa20:	add    ebx,DWORD PTR [esi+edi*8+0x4]
  8dfa24:	lea    eax,[edx+ebx*8+0xb4]
  8dfa2b:	mov    ebx,DWORD PTR [esp+0x28]
  8dfa2f:	mov    esi,DWORD PTR [esp+0x24]
  8dfa33:	mov    eax,DWORD PTR [eax+0x4]
  8dfa36:	mov    ecx,DWORD PTR [esp+0x18]
  8dfa3a:	mov    DWORD PTR [esp+0x4],ecx
  8dfa3e:	mov    DWORD PTR [esp],eax
  8dfa41:	call   1da450
  8dfa46:	mov    DWORD PTR [esp+0x4],eax
  8dfa4a:	mov    DWORD PTR [esp],esi
  8dfa4d:	call   DWORD PTR [eax]
  8dfa4f:	lea    esi,[ebx+0x46b9c]
  8dfa55:	mov    ecx,DWORD PTR [esi]
  8dfa57:	mov    ecx,DWORD PTR [ecx+0x50]
  8dfa5a:	cmp    DWORD PTR [ecx+0x4],0x0
  8dfa5e:	jne    8dfabf
  8dfa60:	lea    ecx,[ebx+0x4cc4c]
  8dfa66:	mov    ecx,DWORD PTR [ecx]
  8dfa68:	mov    DWORD PTR [esp+0x18],ecx
  8dfa6c:	lea    ecx,[ebx+0x46ba4]
  8dfa72:	mov    ecx,DWORD PTR [ecx]
  8dfa74:	mov    DWORD PTR [esp],ecx
  8dfa77:	mov    DWORD PTR [esp+0x24],eax
  8dfa7b:	call   20bfb2
  8dfa80:	mov    edi,eax
  8dfa82:	mov    eax,DWORD PTR [esp+0x18]
  8dfa86:	mov    DWORD PTR [esp+0x38],eax
  8dfa8a:	lea    eax,[ebx+0x4cc50]
  8dfa90:	mov    eax,DWORD PTR [eax]
  8dfa92:	mov    DWORD PTR [esp+0xc],eax
  8dfa96:	mov    eax,DWORD PTR [esp+0x38]
  8dfa9a:	mov    DWORD PTR [esp+0x8],eax
  8dfa9e:	mov    DWORD PTR [esp],edi
  8dfaa1:	mov    DWORD PTR [esp+0x4],0x0
  8dfaa9:	call   17d7670  ; shared address: System.Func`2<ABH.GameDatas.Interfaces.ICombatant, float>::.ctor | System.Func`2<ABH.GameDatas.IInventoryItemGameData, float>::.ctor | System.Func`2<ABH.Shared.BalancingData.ExperienceScalingBalancingData, float>::.ctor | +2 other aliases
  8dfaae:	mov    eax,DWORD PTR [esp+0x24]
  8dfab2:	mov    ecx,DWORD PTR [esi]
  8dfab4:	mov    ecx,DWORD PTR [ecx+0x50]
  8dfab7:	mov    DWORD PTR [ecx+0x4],edi
  8dfaba:	mov    ecx,DWORD PTR [esi]
  8dfabc:	mov    ecx,DWORD PTR [ecx+0x50]
  8dfabf:	mov    edx,DWORD PTR [ecx+0x4]
  8dfac2:	lea    ecx,[ebx+0x4cc54]
  8dfac8:	mov    ecx,DWORD PTR [ecx]
  8dfaca:	mov    DWORD PTR [esp+0xc],ecx
  8dface:	mov    DWORD PTR [esp+0x8],edx
  8dfad2:	mov    DWORD PTR [esp+0x4],eax
  8dfad6:	mov    DWORD PTR [esp],0x0
  8dfadd:	call   de147c  ; shared address: System.Linq.Enumerable::OrderBy | System.Linq.Enumerable::OrderBy | System.Linq.Enumerable::OrderBy | +1 other aliases
  8dfae2:	mov    esi,eax
  8dfae4:	test   esi,esi
  8dfae6:	je     8dfdb2
  8dfaec:	lea    eax,[ebx+0x46ba8]
  8dfaf2:	mov    eax,DWORD PTR [eax]
  8dfaf4:	mov    ecx,DWORD PTR [esi]
  8dfaf6:	movzx  edx,WORD PTR [ecx+0xaa]
  8dfafd:	test   edx,edx
  8dfaff:	je     8dfb10
  8dfb01:	mov    edi,DWORD PTR [ecx+0x4c]
  8dfb04:	xor    ebx,ebx
  8dfb06:	cmp    DWORD PTR [edi+ebx*8],eax
  8dfb09:	je     8dfb2c
  8dfb0b:	inc    ebx
  8dfb0c:	cmp    ebx,edx
  8dfb0e:	jb     8dfb06
  8dfb10:	mov    DWORD PTR [esp+0x4],eax
  8dfb14:	mov    DWORD PTR [esp],esi
  8dfb17:	mov    DWORD PTR [esp+0x8],0x0
  8dfb1f:	mov    ebx,DWORD PTR [esp+0x28]
  8dfb23:	call   1c1964
  8dfb28:	mov    ecx,eax
  8dfb2a:	jmp    8dfb3b
  8dfb2c:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8dfb30:	lea    ecx,[ecx+eax*8+0xb4]
  8dfb37:	mov    ebx,DWORD PTR [esp+0x28]
  8dfb3b:	mov    eax,DWORD PTR [ecx+0x4]
  8dfb3e:	mov    DWORD PTR [esp+0x4],eax
  8dfb42:	mov    DWORD PTR [esp],esi
  8dfb45:	call   DWORD PTR [ecx]
  8dfb47:	mov    DWORD PTR [esp+0x24],eax
  8dfb4b:	test   eax,eax
  8dfb4d:	je     8dfc9d
  8dfb53:	mov    ecx,DWORD PTR [esp+0x28]
  8dfb57:	lea    ecx,[ecx+0x4319c]
  8dfb5d:	mov    esi,DWORD PTR [ecx]
  8dfb5f:	mov    ecx,DWORD PTR [eax]
  8dfb61:	movzx  edx,WORD PTR [ecx+0xaa]
  8dfb68:	test   edx,edx
  8dfb6a:	je     8dfb7b
  8dfb6c:	mov    edi,DWORD PTR [ecx+0x4c]
  8dfb6f:	xor    ebx,ebx
  8dfb71:	cmp    DWORD PTR [edi+ebx*8],esi
  8dfb74:	je     8dfb99
  8dfb76:	inc    ebx
  8dfb77:	cmp    ebx,edx
  8dfb79:	jb     8dfb71
  8dfb7b:	mov    DWORD PTR [esp+0x4],esi
  8dfb7f:	mov    eax,DWORD PTR [esp+0x24]
  8dfb83:	mov    DWORD PTR [esp],eax
  8dfb86:	mov    DWORD PTR [esp+0x8],0x1
  8dfb8e:	mov    ebx,DWORD PTR [esp+0x28]
  8dfb92:	call   1c1964
  8dfb97:	jmp    8dfba4
  8dfb99:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8dfb9d:	lea    eax,[ecx+eax*8+0xbc]
  8dfba4:	mov    ecx,DWORD PTR [eax]
  8dfba6:	mov    eax,DWORD PTR [eax+0x4]
  8dfba9:	mov    DWORD PTR [esp+0x4],eax
  8dfbad:	mov    eax,DWORD PTR [esp+0x24]
  8dfbb1:	mov    DWORD PTR [esp],eax
  8dfbb4:	mov    ebx,DWORD PTR [esp+0x28]
  8dfbb8:	call   ecx
  8dfbba:	xor    esi,esi
  8dfbbc:	test   al,al
  8dfbbe:	je     8dfcaf
  8dfbc4:	mov    eax,DWORD PTR [esp+0x28]
  8dfbc8:	lea    eax,[eax+0x46bac]
  8dfbce:	mov    eax,DWORD PTR [eax]
  8dfbd0:	mov    ecx,DWORD PTR [esp+0x24]
  8dfbd4:	mov    ecx,DWORD PTR [ecx]
  8dfbd6:	movzx  edx,WORD PTR [ecx+0xaa]
  8dfbdd:	test   edx,edx
  8dfbdf:	je     8dfbf0
  8dfbe1:	mov    edi,DWORD PTR [ecx+0x4c]
  8dfbe4:	xor    ebx,ebx
  8dfbe6:	cmp    DWORD PTR [edi+ebx*8],eax
  8dfbe9:	je     8dfc0e
  8dfbeb:	inc    ebx
  8dfbec:	cmp    ebx,edx
  8dfbee:	jb     8dfbe6
  8dfbf0:	mov    DWORD PTR [esp+0x4],eax
  8dfbf4:	mov    eax,DWORD PTR [esp+0x24]
  8dfbf8:	mov    DWORD PTR [esp],eax
  8dfbfb:	mov    DWORD PTR [esp+0x8],0x0
  8dfc03:	mov    ebx,DWORD PTR [esp+0x28]
  8dfc07:	call   1c1964
  8dfc0c:	jmp    8dfc19
  8dfc0e:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8dfc12:	lea    eax,[ecx+eax*8+0xb4]
  8dfc19:	mov    ecx,DWORD PTR [eax]
  8dfc1b:	mov    eax,DWORD PTR [eax+0x4]
  8dfc1e:	mov    DWORD PTR [esp+0x4],eax
  8dfc22:	mov    eax,DWORD PTR [esp+0x24]
  8dfc26:	mov    DWORD PTR [esp],eax
  8dfc29:	mov    ebx,DWORD PTR [esp+0x28]
  8dfc2d:	call   ecx
  8dfc2f:	mov    edi,eax
  8dfc31:	test   edi,edi
  8dfc33:	je     8dfcbd
  8dfc39:	mov    DWORD PTR [esp],edi
  8dfc3c:	mov    DWORD PTR [esp+0x4],0x0
  8dfc44:	mov    ebx,DWORD PTR [esp+0x28]
  8dfc48:	call   17010d2  ; ABH.Shared.BalancingData.ExperienceScalingBalancingData::get_Difference
  8dfc4d:	fstp   DWORD PTR [esp+0x34]
  8dfc51:	movss  xmm0,DWORD PTR [esp+0x34]
  8dfc57:	movss  xmm1,DWORD PTR [esp+0x20]
  8dfc5d:	ucomiss xmm0,xmm1
  8dfc60:	mov    eax,DWORD PTR [esp+0x24]
  8dfc64:	jb     8dfb4b
  8dfc6a:	mov    DWORD PTR [esp],edi
  8dfc6d:	mov    DWORD PTR [esp+0x4],0x0
  8dfc75:	mov    ebx,DWORD PTR [esp+0x28]
  8dfc79:	call   17010f9  ; ABH.Shared.BalancingData.ExperienceScalingBalancingData::get_XpModifier
  8dfc7e:	fstp   DWORD PTR [esp+0x30]
  8dfc82:	movss  xmm1,DWORD PTR [esp+0x30]
  8dfc88:	divss  xmm1,DWORD PTR [ebx-0x64fc2c]
  8dfc90:	mov    eax,0xbd
  8dfc95:	jmp    8dfce8
  8dfc97:	mov    ebx,DWORD PTR [esp+0x28]
  8dfc9b:	jmp    8dfccb
  8dfc9d:	mov    DWORD PTR [esp+0x24],eax
  8dfca1:	mov    ebx,DWORD PTR [esp+0x28]
  8dfca5:	call   1fbc48
  8dfcaa:	call   8b3f00
  8dfcaf:	xorps  xmm1,xmm1
  8dfcb2:	mov    eax,0xb7
  8dfcb7:	mov    ebx,DWORD PTR [esp+0x28]
  8dfcbb:	jmp    8dfce8
  8dfcbd:	mov    ebx,DWORD PTR [esp+0x28]
  8dfcc1:	call   1fbc48
  8dfcc6:	jmp    8dfdc4
  8dfccb:	cmp    edx,0x1
  8dfcce:	jne    8dfdbc
  8dfcd4:	mov    DWORD PTR [esp],eax
  8dfcd7:	call   1ba3f0
  8dfcdc:	mov    esi,DWORD PTR [eax]
  8dfcde:	call   1b9ce0
  8dfce3:	xorps  xmm1,xmm1
  8dfce6:	xor    eax,eax
  8dfce8:	movss  xmm0,DWORD PTR [esp+0x1c]
  8dfcee:	mov    ecx,DWORD PTR [esp+0x24]
  8dfcf2:	test   ecx,ecx
  8dfcf4:	je     8dfd7d
  8dfcfa:	mov    DWORD PTR [esp+0x14],eax
  8dfcfe:	mov    DWORD PTR [esp+0x20],esi
  8dfd02:	lea    eax,[ebx+0x431a4]
  8dfd08:	mov    eax,DWORD PTR [eax]
  8dfd0a:	mov    esi,ecx
  8dfd0c:	mov    ecx,DWORD PTR [esi]
  8dfd0e:	movzx  edx,WORD PTR [ecx+0xaa]
  8dfd15:	test   edx,edx
  8dfd17:	je     8dfd28
  8dfd19:	mov    edi,DWORD PTR [ecx+0x4c]
  8dfd1c:	xor    ebx,ebx
  8dfd1e:	cmp    DWORD PTR [edi+ebx*8],eax
  8dfd21:	je     8dfd48
  8dfd23:	inc    ebx
  8dfd24:	cmp    ebx,edx
  8dfd26:	jb     8dfd1e
  8dfd28:	movss  DWORD PTR [esp+0x18],xmm1
  8dfd2e:	mov    DWORD PTR [esp+0x4],eax
  8dfd32:	mov    DWORD PTR [esp],esi
  8dfd35:	mov    DWORD PTR [esp+0x8],0x0
  8dfd3d:	mov    ebx,DWORD PTR [esp+0x28]
  8dfd41:	call   1c1964
  8dfd46:	jmp    8dfd5d
  8dfd48:	movss  DWORD PTR [esp+0x18],xmm1
  8dfd4e:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8dfd52:	lea    eax,[ecx+eax*8+0xb4]
  8dfd59:	mov    ebx,DWORD PTR [esp+0x28]
  8dfd5d:	mov    ecx,DWORD PTR [eax+0x4]
  8dfd60:	mov    DWORD PTR [esp+0x4],ecx
  8dfd64:	mov    DWORD PTR [esp],esi
  8dfd67:	call   DWORD PTR [eax]
  8dfd69:	movss  xmm0,DWORD PTR [esp+0x1c]
  8dfd6f:	mov    esi,DWORD PTR [esp+0x20]
  8dfd73:	movss  xmm1,DWORD PTR [esp+0x18]
  8dfd79:	mov    eax,DWORD PTR [esp+0x14]
  8dfd7d:	cmp    eax,0xb7
  8dfd82:	je     8dfd9d
  8dfd84:	cmp    eax,0xbd
  8dfd89:	je     8dfda0
  8dfd8b:	test   esi,esi
  8dfd8d:	je     8dfd9d
  8dfd8f:	mov    DWORD PTR [esp],esi
  8dfd92:	call   1fbb20
  8dfd97:	movss  xmm0,DWORD PTR [esp+0x1c]
  8dfd9d:	movaps xmm1,xmm0
  8dfda0:	movss  DWORD PTR [esp+0x2c],xmm1
  8dfda6:	fld    DWORD PTR [esp+0x2c]
  8dfdaa:	lea    esp,[ebp-0xc]
  8dfdad:	pop    esi
  8dfdae:	pop    edi
  8dfdaf:	pop    ebx
  8dfdb0:	pop    ebp
  8dfdb1:	ret
  8dfdb2:	call   1fbc48
  8dfdb7:	call   8b3f00
  8dfdbc:	mov    DWORD PTR [esp],eax
  8dfdbf:	call   1b9bd0
  8dfdc4:	call   8b3f00