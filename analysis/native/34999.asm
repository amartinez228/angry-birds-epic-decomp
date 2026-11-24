
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c4bfa:
  6c4bfa:	push   ebp
  6c4bfb:	mov    ebp,esp
  6c4bfd:	push   ebx
  6c4bfe:	push   edi
  6c4bff:	push   esi
  6c4c00:	and    esp,0xfffffff0
  6c4c03:	sub    esp,0x30
  6c4c06:	call   6c4c0b
  6c4c0b:	pop    ebx
  6c4c0c:	add    ebx,0x184d339
  6c4c12:	mov    esi,DWORD PTR [ebp+0x8]
  6c4c15:	mov    al,BYTE PTR [ebx+0x5f64a]
  6c4c1b:	test   al,al
  6c4c1d:	jne    6c4c36
  6c4c1f:	lea    eax,[ebx-0x66eb5c]
  6c4c25:	mov    eax,DWORD PTR [eax]
  6c4c27:	mov    DWORD PTR [esp],eax
  6c4c2a:	call   1ca6e8
  6c4c2f:	mov    BYTE PTR [ebx+0x5f64a],0x1
  6c4c36:	mov    DWORD PTR [esp+0x28],0x0
  6c4c3e:	mov    DWORD PTR [esp],esi
  6c4c41:	call   6c425a  ; ABH.GameDatas.BirdGameData::get_ClassItem
  6c4c46:	xorps  xmm0,xmm0
  6c4c49:	test   eax,eax
  6c4c4b:	je     6c4dfe
  6c4c51:	lea    eax,[ebx+0x45820]
  6c4c57:	mov    eax,DWORD PTR [eax]
  6c4c59:	test   BYTE PTR [eax+0xb2],0x1
  6c4c60:	je     6c4c70
  6c4c62:	cmp    DWORD PTR [eax+0x60],0x0
  6c4c66:	jne    6c4c70
  6c4c68:	mov    DWORD PTR [esp],eax
  6c4c6b:	call   1db0b8
  6c4c70:	mov    DWORD PTR [esp+0x4],0x0
  6c4c78:	mov    DWORD PTR [esp],0x0
  6c4c7f:	call   107cf95  ; DIContainerBalancing::get_Service
  6c4c84:	mov    edi,eax
  6c4c86:	mov    DWORD PTR [esp],esi
  6c4c89:	call   6c425a  ; ABH.GameDatas.BirdGameData::get_ClassItem
  6c4c8e:	test   eax,eax
  6c4c90:	je     6c4e10
  6c4c96:	mov    esi,edi
  6c4c98:	lea    ecx,[ebx+0x4a830]
  6c4c9e:	mov    ecx,DWORD PTR [ecx]
  6c4ca0:	mov    DWORD PTR [esp+0x4],ecx
  6c4ca4:	mov    DWORD PTR [esp],eax
  6c4ca7:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c4cac:	test   eax,eax
  6c4cae:	je     6c4e10
  6c4cb4:	mov    DWORD PTR [esp],eax
  6c4cb7:	mov    DWORD PTR [esp+0x4],0x0
  6c4cbf:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6c4cc4:	mov    DWORD PTR [esp+0x28],eax
  6c4cc8:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6c4cce:	mov    eax,DWORD PTR [eax]
  6c4cd0:	mov    DWORD PTR [esp+0x4],eax
  6c4cd4:	lea    eax,[esp+0x28]
  6c4cd8:	mov    DWORD PTR [esp],eax
  6c4cdb:	mov    DWORD PTR [esp+0x8],0x0
  6c4ce3:	call   fea004
  6c4ce8:	mov    edi,eax
  6c4cea:	lea    eax,[ebx+0x430e4]
  6c4cf0:	mov    eax,DWORD PTR [eax]
  6c4cf2:	test   BYTE PTR [eax+0xb2],0x1
  6c4cf9:	je     6c4d09
  6c4cfb:	cmp    DWORD PTR [eax+0x60],0x0
  6c4cff:	jne    6c4d09
  6c4d01:	mov    DWORD PTR [esp],eax
  6c4d04:	call   1db0b8
  6c4d09:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  6c4d0f:	mov    eax,DWORD PTR [eax]
  6c4d11:	mov    DWORD PTR [esp+0x8],edi
  6c4d15:	mov    DWORD PTR [esp+0x4],eax
  6c4d19:	mov    DWORD PTR [esp+0xc],0x0
  6c4d21:	mov    DWORD PTR [esp],0x0
  6c4d28:	call   ca462a  ; System.String::Concat
  6c4d2d:	mov    DWORD PTR [esp+0x1c],eax
  6c4d31:	test   esi,esi
  6c4d33:	je     6c4e10
  6c4d39:	lea    eax,[ebx+0x4a834]
  6c4d3f:	mov    eax,DWORD PTR [eax]
  6c4d41:	mov    DWORD PTR [esp+0x14],eax
  6c4d45:	mov    ecx,DWORD PTR [eax+0xc]
  6c4d48:	movzx  eax,WORD PTR [eax+0x2c]
  6c4d4c:	mov    DWORD PTR [esp+0x10],eax
  6c4d50:	mov    edx,DWORD PTR [esi]
  6c4d52:	mov    DWORD PTR [esp+0x18],esi
  6c4d56:	movzx  esi,WORD PTR [edx+0xaa]
  6c4d5d:	test   esi,esi
  6c4d5f:	je     6c4d70
  6c4d61:	mov    eax,DWORD PTR [edx+0x4c]
  6c4d64:	xor    edi,edi
  6c4d66:	cmp    DWORD PTR [eax+edi*8],ecx
  6c4d69:	je     6c4d8a
  6c4d6b:	inc    edi
  6c4d6c:	cmp    edi,esi
  6c4d6e:	jb     6c4d66
  6c4d70:	mov    eax,DWORD PTR [esp+0x10]
  6c4d74:	mov    DWORD PTR [esp+0x8],eax
  6c4d78:	mov    DWORD PTR [esp+0x4],ecx
  6c4d7c:	mov    esi,DWORD PTR [esp+0x18]
  6c4d80:	mov    DWORD PTR [esp],esi
  6c4d83:	call   1c1964
  6c4d88:	jmp    6c4d9d
  6c4d8a:	mov    ecx,DWORD PTR [esp+0x10]
  6c4d8e:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  6c4d92:	lea    eax,[edx+ecx*8+0xb4]
  6c4d99:	mov    esi,DWORD PTR [esp+0x18]
  6c4d9d:	mov    eax,DWORD PTR [eax+0x4]
  6c4da0:	mov    ecx,DWORD PTR [esp+0x14]
  6c4da4:	mov    DWORD PTR [esp+0x4],ecx
  6c4da8:	mov    DWORD PTR [esp],eax
  6c4dab:	call   1da450
  6c4db0:	mov    DWORD PTR [esp+0x8],eax
  6c4db4:	mov    ecx,DWORD PTR [esp+0x1c]
  6c4db8:	mov    DWORD PTR [esp+0x4],ecx
  6c4dbc:	mov    DWORD PTR [esp],esi
  6c4dbf:	call   DWORD PTR [eax]
  6c4dc1:	test   eax,eax
  6c4dc3:	xorps  xmm0,xmm0
  6c4dc6:	je     6c4dfe
  6c4dc8:	mov    DWORD PTR [esp],eax
  6c4dcb:	mov    DWORD PTR [esp+0x4],0x0
  6c4dd3:	call   170105d  ; ABH.Shared.BalancingData.ExperienceMasteryBalancingData::get_StatBonus
  6c4dd8:	mov    esi,eax
  6c4dda:	mov    eax,DWORD PTR [ebp+0x8]
  6c4ddd:	mov    DWORD PTR [esp],eax
  6c4de0:	call   6c4b3d  ; ABH.GameDatas.BirdGameData::get_ClassIndependentAttack
  6c4de5:	fstp   DWORD PTR [esp+0x24]
  6c4de9:	xorps  xmm0,xmm0
  6c4dec:	cvtsi2ss xmm0,esi
  6c4df0:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6c4df8:	mulss  xmm0,DWORD PTR [esp+0x24]
  6c4dfe:	movss  DWORD PTR [esp+0x20],xmm0
  6c4e04:	fld    DWORD PTR [esp+0x20]
  6c4e08:	lea    esp,[ebp-0xc]
  6c4e0b:	pop    esi
  6c4e0c:	pop    edi
  6c4e0d:	pop    ebx
  6c4e0e:	pop    ebp
  6c4e0f:	ret
  6c4e10:	call   1fbc48
  6c4e15:	call   6b106a