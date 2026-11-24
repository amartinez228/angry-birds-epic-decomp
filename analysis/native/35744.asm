
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d3b8d:
  6d3b8d:	push   ebp
  6d3b8e:	mov    ebp,esp
  6d3b90:	push   ebx
  6d3b91:	push   edi
  6d3b92:	push   esi
  6d3b93:	and    esp,0xfffffff0
  6d3b96:	sub    esp,0xc0
  6d3b9c:	call   6d3ba1
  6d3ba1:	pop    ebx
  6d3ba2:	add    ebx,0x183e3a3
  6d3ba8:	mov    edi,DWORD PTR [ebp+0xc]
  6d3bab:	mov    al,BYTE PTR [ebx+0x5f712]
  6d3bb1:	test   al,al
  6d3bb3:	jne    6d3bcc
  6d3bb5:	lea    eax,[ebx-0x668440]
  6d3bbb:	mov    eax,DWORD PTR [eax]
  6d3bbd:	mov    DWORD PTR [esp],eax
  6d3bc0:	call   1ca6e8
  6d3bc5:	mov    BYTE PTR [ebx+0x5f712],0x1
  6d3bcc:	xorps  xmm1,xmm1
  6d3bcf:	test   edi,edi
  6d3bd1:	je     6d43a5
  6d3bd7:	mov    eax,DWORD PTR [ebp+0x10]
  6d3bda:	mov    DWORD PTR [esp+0x20],eax
  6d3bde:	cmp    eax,0xffffffff
  6d3be1:	jne    6d3bef
  6d3be3:	mov    DWORD PTR [esp],edi
  6d3be6:	call   6d35a2  ; ABH.GameDatas.EquipmentGameData::get_EnchantmentLevel
  6d3beb:	mov    DWORD PTR [esp+0x20],eax
  6d3bef:	lea    esi,[ebx+0x4a0c8]
  6d3bf5:	mov    eax,DWORD PTR [esi]
  6d3bf7:	mov    DWORD PTR [esp+0x4],eax
  6d3bfb:	mov    DWORD PTR [esp],edi
  6d3bfe:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d3c03:	test   eax,eax
  6d3c05:	je     6d43b7
  6d3c0b:	mov    DWORD PTR [esp],eax
  6d3c0e:	mov    DWORD PTR [esp+0x4],0x0
  6d3c16:	call   1700b21  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_StatPerQualityPercent
  6d3c1b:	xor    ecx,ecx
  6d3c1d:	test   eax,eax
  6d3c1f:	je     6d3d9a
  6d3c25:	mov    eax,DWORD PTR [esi]
  6d3c27:	mov    DWORD PTR [esp+0x24],esi
  6d3c2b:	mov    DWORD PTR [esp+0x4],eax
  6d3c2f:	mov    DWORD PTR [esp],edi
  6d3c32:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d3c37:	test   eax,eax
  6d3c39:	je     6d43b7
  6d3c3f:	mov    DWORD PTR [esp],eax
  6d3c42:	mov    DWORD PTR [esp+0x4],0x0
  6d3c4a:	call   1700b21  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_StatPerQualityPercent
  6d3c4f:	test   eax,eax
  6d3c51:	je     6d43b7
  6d3c57:	lea    ecx,[ebx+0x49e4c]
  6d3c5d:	mov    DWORD PTR [esp+0x18],ecx
  6d3c61:	mov    ecx,DWORD PTR [ecx]
  6d3c63:	mov    DWORD PTR [esp+0x4],ecx
  6d3c67:	mov    DWORD PTR [esp],eax
  6d3c6a:	call   4bdf02  ; System.Collections.Generic.List`1<int>::get_Count
  6d3c6f:	mov    DWORD PTR [esp+0x2c],eax
  6d3c73:	lea    eax,[ebx+0x4a9e8]
  6d3c79:	mov    DWORD PTR [esp+0x1c],eax
  6d3c7d:	mov    eax,DWORD PTR [eax]
  6d3c7f:	mov    DWORD PTR [esp+0x4],eax
  6d3c83:	mov    DWORD PTR [esp],edi
  6d3c86:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d3c8b:	test   eax,eax
  6d3c8d:	je     6d43b7
  6d3c93:	mov    DWORD PTR [esp],eax
  6d3c96:	mov    DWORD PTR [esp+0x4],0x0
  6d3c9e:	call   179c286  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Quality
  6d3ca3:	mov    esi,eax
  6d3ca5:	mov    eax,DWORD PTR [esp+0x24]
  6d3ca9:	mov    eax,DWORD PTR [eax]
  6d3cab:	mov    DWORD PTR [esp+0x4],eax
  6d3caf:	mov    DWORD PTR [esp],edi
  6d3cb2:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d3cb7:	test   eax,eax
  6d3cb9:	je     6d43b7
  6d3cbf:	mov    DWORD PTR [esp],eax
  6d3cc2:	mov    DWORD PTR [esp+0x4],0x0
  6d3cca:	call   1700b21  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_StatPerQualityPercent
  6d3ccf:	mov    DWORD PTR [esp+0x28],eax
  6d3cd3:	cmp    DWORD PTR [esp+0x2c],esi
  6d3cd7:	jle    6d3d2f
  6d3cd9:	mov    eax,DWORD PTR [esp+0x1c]
  6d3cdd:	mov    eax,DWORD PTR [eax]
  6d3cdf:	mov    DWORD PTR [esp+0x4],eax
  6d3ce3:	mov    DWORD PTR [esp],edi
  6d3ce6:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d3ceb:	test   eax,eax
  6d3ced:	je     6d43b7
  6d3cf3:	mov    DWORD PTR [esp],eax
  6d3cf6:	mov    DWORD PTR [esp+0x4],0x0
  6d3cfe:	call   179c286  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Quality
  6d3d03:	mov    edx,DWORD PTR [esp+0x28]
  6d3d07:	test   edx,edx
  6d3d09:	je     6d43b7
  6d3d0f:	lea    ecx,[ebx+0x49e50]
  6d3d15:	mov    ecx,DWORD PTR [ecx]
  6d3d17:	mov    DWORD PTR [esp+0x8],ecx
  6d3d1b:	mov    DWORD PTR [esp+0x4],eax
  6d3d1f:	mov    DWORD PTR [esp],edx
  6d3d22:	call   4bdf12  ; System.Collections.Generic.List`1<int>::get_Item
  6d3d27:	mov    ecx,eax
  6d3d29:	mov    esi,DWORD PTR [esp+0x24]
  6d3d2d:	jmp    6d3d9a
  6d3d2f:	mov    esi,DWORD PTR [esp+0x24]
  6d3d33:	mov    eax,DWORD PTR [esi]
  6d3d35:	mov    DWORD PTR [esp+0x4],eax
  6d3d39:	mov    DWORD PTR [esp],edi
  6d3d3c:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d3d41:	test   eax,eax
  6d3d43:	je     6d43b7
  6d3d49:	mov    DWORD PTR [esp],eax
  6d3d4c:	mov    DWORD PTR [esp+0x4],0x0
  6d3d54:	call   1700b21  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_StatPerQualityPercent
  6d3d59:	test   eax,eax
  6d3d5b:	je     6d43b7
  6d3d61:	mov    ecx,DWORD PTR [esp+0x18]
  6d3d65:	mov    ecx,DWORD PTR [ecx]
  6d3d67:	mov    DWORD PTR [esp+0x4],ecx
  6d3d6b:	mov    DWORD PTR [esp],eax
  6d3d6e:	call   4bdf02  ; System.Collections.Generic.List`1<int>::get_Count
  6d3d73:	mov    edx,DWORD PTR [esp+0x28]
  6d3d77:	test   edx,edx
  6d3d79:	je     6d43b7
  6d3d7f:	dec    eax
  6d3d80:	lea    ecx,[ebx+0x49e50]
  6d3d86:	mov    ecx,DWORD PTR [ecx]
  6d3d88:	mov    DWORD PTR [esp+0x8],ecx
  6d3d8c:	mov    DWORD PTR [esp+0x4],eax
  6d3d90:	mov    DWORD PTR [esp],edx
  6d3d93:	call   4bdf12  ; System.Collections.Generic.List`1<int>::get_Item
  6d3d98:	mov    ecx,eax
  6d3d9a:	mov    DWORD PTR [esp+0x10],ecx
  6d3d9e:	test   ecx,ecx
  6d3da0:	xorps  xmm0,xmm0
  6d3da3:	jle    6d3dad
  6d3da5:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
  6d3dad:	movss  DWORD PTR [esp+0x18],xmm0
  6d3db3:	mov    eax,DWORD PTR [esi]
  6d3db5:	mov    DWORD PTR [esp+0x4],eax
  6d3db9:	mov    DWORD PTR [esp],edi
  6d3dbc:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d3dc1:	test   eax,eax
  6d3dc3:	je     6d43b7
  6d3dc9:	mov    DWORD PTR [esp],eax
  6d3dcc:	mov    DWORD PTR [esp+0x4],0x0
  6d3dd4:	call   1700ab8  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_BaseStat
  6d3dd9:	mov    DWORD PTR [esp+0x2c],eax
  6d3ddd:	mov    eax,DWORD PTR [esi]
  6d3ddf:	mov    DWORD PTR [esp+0x4],eax
  6d3de3:	mov    DWORD PTR [esp],edi
  6d3de6:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d3deb:	test   eax,eax
  6d3ded:	je     6d43b7
  6d3df3:	mov    DWORD PTR [esp],eax
  6d3df6:	mov    DWORD PTR [esp+0x4],0x0
  6d3dfe:	call   1700ab8  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_BaseStat
  6d3e03:	mov    DWORD PTR [esp+0x1c],eax
  6d3e07:	mov    eax,DWORD PTR [esi]
  6d3e09:	mov    DWORD PTR [esp+0x24],esi
  6d3e0d:	mov    DWORD PTR [esp+0x4],eax
  6d3e11:	mov    DWORD PTR [esp],edi
  6d3e14:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d3e19:	test   eax,eax
  6d3e1b:	je     6d43b7
  6d3e21:	mov    DWORD PTR [esp],eax
  6d3e24:	mov    DWORD PTR [esp+0x4],0x0
  6d3e2c:	call   1700adb  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_StatPerLevel
  6d3e31:	mov    esi,eax
  6d3e33:	lea    eax,[ebx+0x4a9e8]
  6d3e39:	mov    DWORD PTR [esp+0x28],eax
  6d3e3d:	mov    eax,DWORD PTR [eax]
  6d3e3f:	mov    DWORD PTR [esp+0x4],eax
  6d3e43:	mov    DWORD PTR [esp],edi
  6d3e46:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d3e4b:	test   eax,eax
  6d3e4d:	je     6d43b7
  6d3e53:	mov    DWORD PTR [esp],eax
  6d3e56:	mov    DWORD PTR [esp+0x4],0x0
  6d3e5e:	call   179c240  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Level
  6d3e63:	mov    edi,eax
  6d3e65:	lea    eax,[ebx+0x44ec8]
  6d3e6b:	mov    DWORD PTR [esp+0x14],eax
  6d3e6f:	mov    eax,DWORD PTR [eax]
  6d3e71:	test   BYTE PTR [eax+0xb2],0x1
  6d3e78:	je     6d3e88
  6d3e7a:	cmp    DWORD PTR [eax+0x60],0x0
  6d3e7e:	jne    6d3e88
  6d3e80:	mov    DWORD PTR [esp],eax
  6d3e83:	call   1db0b8
  6d3e88:	cvtsi2ss xmm0,DWORD PTR [esp+0x2c]
  6d3e8e:	cvtsi2ss xmm1,DWORD PTR [esp+0x1c]
  6d3e94:	cvtsi2ss xmm2,esi
  6d3e98:	divss  xmm2,DWORD PTR [ebx-0x64fc2c]
  6d3ea0:	mulss  xmm2,xmm1
  6d3ea4:	dec    edi
  6d3ea5:	xorps  xmm1,xmm1
  6d3ea8:	cvtsi2ss xmm1,edi
  6d3eac:	mulss  xmm1,xmm2
  6d3eb0:	addss  xmm1,xmm0
  6d3eb4:	movss  DWORD PTR [esp+0x2c],xmm1
  6d3eba:	xorps  xmm0,xmm0
  6d3ebd:	cvtss2sd xmm0,xmm1
  6d3ec1:	lea    eax,[esp+0xb0]
  6d3ec8:	mov    DWORD PTR [esp+0x8],eax
  6d3ecc:	movsd  QWORD PTR [esp],xmm0
  6d3ed1:	call   1b93f0
  6d3ed6:	movss  xmm1,DWORD PTR [esp+0x2c]
  6d3edc:	xorps  xmm0,xmm0
  6d3edf:	ucomiss xmm1,xmm0
  6d3ee2:	fstp   QWORD PTR [esp+0xa8]
  6d3ee9:	movsd  xmm0,QWORD PTR [esp+0xa8]
  6d3ef2:	jae    6d3f49
  6d3ef4:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6d3efc:	mov    edi,DWORD PTR [ebp+0xc]
  6d3eff:	mov    esi,DWORD PTR [esp+0x24]
  6d3f03:	jne    6d3f95
  6d3f09:	jp     6d3f95
  6d3f0f:	movsd  xmm0,QWORD PTR [esp+0xb0]
  6d3f18:	movsd  QWORD PTR [esp+0x80],xmm0
  6d3f21:	fld    QWORD PTR [esp+0x80]
  6d3f28:	fisttp QWORD PTR [esp+0x78]
  6d3f2c:	mov    eax,DWORD PTR [esp+0x78]
  6d3f30:	test   al,0x1
  6d3f32:	cvtsd2ss xmm0,xmm0
  6d3f36:	je     6d3fdb
  6d3f3c:	addss  xmm0,DWORD PTR [ebx-0x64fc1c]
  6d3f44:	jmp    6d3fdb
  6d3f49:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6d3f51:	mov    edi,DWORD PTR [ebp+0xc]
  6d3f54:	mov    esi,DWORD PTR [esp+0x24]
  6d3f58:	jne    6d3fb9
  6d3f5a:	jp     6d3fb9
  6d3f5c:	movsd  xmm0,QWORD PTR [esp+0xb0]
  6d3f65:	movsd  QWORD PTR [esp+0x98],xmm0
  6d3f6e:	fld    QWORD PTR [esp+0x98]
  6d3f75:	fisttp QWORD PTR [esp+0x90]
  6d3f7c:	mov    eax,DWORD PTR [esp+0x90]
  6d3f83:	test   al,0x1
  6d3f85:	cvtsd2ss xmm0,xmm0
  6d3f89:	je     6d3fdb
  6d3f8b:	addss  xmm0,DWORD PTR [ebx-0x64fc28]
  6d3f93:	jmp    6d3fdb
  6d3f95:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6d3f9d:	movss  DWORD PTR [esp],xmm1
  6d3fa2:	call   1b9250
  6d3fa7:	fstp   DWORD PTR [esp+0x8c]
  6d3fae:	movss  xmm0,DWORD PTR [esp+0x8c]
  6d3fb7:	jmp    6d3fdb
  6d3fb9:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6d3fc1:	movss  DWORD PTR [esp],xmm1
  6d3fc6:	call   1b9990
  6d3fcb:	fstp   DWORD PTR [esp+0xa4]
  6d3fd2:	movss  xmm0,DWORD PTR [esp+0xa4]
  6d3fdb:	movss  DWORD PTR [esp+0x2c],xmm0
  6d3fe1:	mov    eax,DWORD PTR [esp+0x28]
  6d3fe5:	mov    eax,DWORD PTR [eax]
  6d3fe7:	mov    DWORD PTR [esp+0x4],eax
  6d3feb:	mov    DWORD PTR [esp],edi
  6d3fee:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d3ff3:	test   eax,eax
  6d3ff5:	je     6d43b7
  6d3ffb:	mov    DWORD PTR [esp],eax
  6d3ffe:	mov    DWORD PTR [esp+0x4],0x0
  6d4006:	call   179c286  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Quality
  6d400b:	xorps  xmm1,xmm1
  6d400e:	test   eax,eax
  6d4010:	jle    6d405b
  6d4012:	mov    eax,DWORD PTR [esp+0x28]
  6d4016:	mov    eax,DWORD PTR [eax]
  6d4018:	mov    DWORD PTR [esp+0x4],eax
  6d401c:	mov    DWORD PTR [esp],edi
  6d401f:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d4024:	test   eax,eax
  6d4026:	je     6d43b7
  6d402c:	mov    DWORD PTR [esp],eax
  6d402f:	mov    DWORD PTR [esp+0x4],0x0
  6d4037:	call   179c286  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Quality
  6d403c:	xorps  xmm1,xmm1
  6d403f:	cvtsi2ss xmm1,DWORD PTR [esp+0x10]
  6d4045:	cvtsi2ss xmm0,eax
  6d4049:	divss  xmm1,xmm0
  6d404d:	divss  xmm1,DWORD PTR [ebx-0x64fc2c]
  6d4055:	mulss  xmm1,DWORD PTR [esp+0x2c]
  6d405b:	movss  DWORD PTR [esp+0x24],xmm1
  6d4061:	mov    eax,DWORD PTR [esi]
  6d4063:	mov    DWORD PTR [esp+0x4],eax
  6d4067:	mov    DWORD PTR [esp],edi
  6d406a:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6d406f:	test   eax,eax
  6d4071:	je     6d43b7
  6d4077:	mov    DWORD PTR [esp],eax
  6d407a:	mov    DWORD PTR [esp+0x4],0x0
  6d4082:	call   1700afe  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_StatPerQuality
  6d4087:	mov    DWORD PTR [esp+0x1c],eax
  6d408b:	mov    esi,DWORD PTR [esp+0x28]
  6d408f:	mov    eax,DWORD PTR [esi]
  6d4091:	mov    DWORD PTR [esp+0x4],eax
  6d4095:	mov    DWORD PTR [esp],edi
  6d4098:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d409d:	test   eax,eax
  6d409f:	je     6d43b7
  6d40a5:	mov    DWORD PTR [esp],eax
  6d40a8:	mov    DWORD PTR [esp+0x4],0x0
  6d40b0:	call   179c286  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Quality
  6d40b5:	mov    DWORD PTR [esp+0x10],eax
  6d40b9:	mov    eax,DWORD PTR [esi]
  6d40bb:	mov    DWORD PTR [esp+0x4],eax
  6d40bf:	mov    DWORD PTR [esp],edi
  6d40c2:	mov    esi,edi
  6d40c4:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d40c9:	test   eax,eax
  6d40cb:	je     6d43b7
  6d40d1:	mov    DWORD PTR [esp],eax
  6d40d4:	mov    DWORD PTR [esp+0x4],0x0
  6d40dc:	call   179c286  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Quality
  6d40e1:	mov    edi,eax
  6d40e3:	mov    eax,DWORD PTR [esp+0x14]
  6d40e7:	mov    eax,DWORD PTR [eax]
  6d40e9:	test   BYTE PTR [eax+0xb2],0x1
  6d40f0:	je     6d4100
  6d40f2:	cmp    DWORD PTR [eax+0x60],0x0
  6d40f6:	jne    6d4100
  6d40f8:	mov    DWORD PTR [esp],eax
  6d40fb:	call   1db0b8
  6d4100:	cvtsi2ss xmm0,edi
  6d4104:	movss  xmm1,DWORD PTR [esp+0x24]
  6d410a:	mulss  xmm1,xmm0
  6d410e:	movss  DWORD PTR [esp+0x24],xmm1
  6d4114:	xorps  xmm0,xmm0
  6d4117:	cvtss2sd xmm0,xmm1
  6d411b:	lea    eax,[esp+0xb0]
  6d4122:	mov    DWORD PTR [esp+0x8],eax
  6d4126:	movsd  QWORD PTR [esp],xmm0
  6d412b:	call   1b93f0
  6d4130:	movss  xmm1,DWORD PTR [esp+0x24]
  6d4136:	xorps  xmm0,xmm0
  6d4139:	ucomiss xmm1,xmm0
  6d413c:	fstp   QWORD PTR [esp+0x70]
  6d4140:	movsd  xmm0,QWORD PTR [esp+0x70]
  6d4146:	jae    6d4187
  6d4148:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6d4150:	mov    edi,esi
  6d4152:	jne    6d41cc
  6d4154:	jp     6d41cc
  6d4156:	movsd  xmm0,QWORD PTR [esp+0xb0]
  6d415f:	movsd  QWORD PTR [esp+0x48],xmm0
  6d4165:	fld    QWORD PTR [esp+0x48]
  6d4169:	fisttp QWORD PTR [esp+0x40]
  6d416d:	mov    eax,DWORD PTR [esp+0x40]
  6d4171:	test   al,0x1
  6d4173:	cvtsd2ss xmm0,xmm0
  6d4177:	mov    esi,DWORD PTR [esp+0x28]
  6d417b:	je     6d41c4
  6d417d:	addss  xmm0,DWORD PTR [ebx-0x64fc1c]
  6d4185:	jmp    6d41c4
  6d4187:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6d418f:	mov    edi,esi
  6d4191:	jne    6d41ea
  6d4193:	jp     6d41ea
  6d4195:	movsd  xmm0,QWORD PTR [esp+0xb0]
  6d419e:	movsd  QWORD PTR [esp+0x60],xmm0
  6d41a4:	fld    QWORD PTR [esp+0x60]
  6d41a8:	fisttp QWORD PTR [esp+0x58]
  6d41ac:	mov    eax,DWORD PTR [esp+0x58]
  6d41b0:	test   al,0x1
  6d41b2:	cvtsd2ss xmm0,xmm0
  6d41b6:	mov    esi,DWORD PTR [esp+0x28]
  6d41ba:	je     6d41c4
  6d41bc:	addss  xmm0,DWORD PTR [ebx-0x64fc28]
  6d41c4:	movss  DWORD PTR [esp+0x24],xmm0
  6d41ca:	jmp    6d4210
  6d41cc:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6d41d4:	movss  DWORD PTR [esp],xmm1
  6d41d9:	call   1b9250
  6d41de:	fstp   DWORD PTR [esp+0x54]
  6d41e2:	movss  xmm0,DWORD PTR [esp+0x54]
  6d41e8:	jmp    6d4206
  6d41ea:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6d41f2:	movss  DWORD PTR [esp],xmm1
  6d41f7:	call   1b9990
  6d41fc:	fstp   DWORD PTR [esp+0x6c]
  6d4200:	movss  xmm0,DWORD PTR [esp+0x6c]
  6d4206:	movss  DWORD PTR [esp+0x24],xmm0
  6d420c:	mov    esi,DWORD PTR [esp+0x28]
  6d4210:	mov    eax,DWORD PTR [esi]
  6d4212:	mov    DWORD PTR [esp+0x4],eax
  6d4216:	mov    DWORD PTR [esp],edi
  6d4219:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d421e:	test   eax,eax
  6d4220:	je     6d43b7
  6d4226:	mov    DWORD PTR [esp],eax
  6d4229:	mov    DWORD PTR [esp+0x4],0x0
  6d4231:	call   179c286  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_Quality
  6d4236:	xorps  xmm0,xmm0
  6d4239:	cvtsi2ss xmm0,eax
  6d423d:	movss  xmm1,DWORD PTR [esp+0x18]
  6d4243:	mulss  xmm1,xmm0
  6d4247:	movss  DWORD PTR [esp+0x8],xmm1
  6d424d:	movss  xmm0,DWORD PTR [esp+0x24]
  6d4253:	movss  DWORD PTR [esp+0x4],xmm0
  6d4259:	mov    DWORD PTR [esp+0xc],0x0
  6d4261:	mov    DWORD PTR [esp],0x0
  6d4268:	call   1385329  ; UnityEngine.Mathf::Max
  6d426d:	fstp   DWORD PTR [esp+0x3c]
  6d4271:	mov    eax,DWORD PTR [esp+0x10]
  6d4275:	imul   eax,DWORD PTR [esp+0x1c]
  6d427a:	xorps  xmm0,xmm0
  6d427d:	cvtsi2ss xmm0,eax
  6d4281:	movss  xmm1,DWORD PTR [esp+0x2c]
  6d4287:	addss  xmm1,xmm0
  6d428b:	addss  xmm1,DWORD PTR [esp+0x3c]
  6d4291:	movss  DWORD PTR [esp+0x2c],xmm1
  6d4297:	mov    eax,DWORD PTR [esi]
  6d4299:	mov    DWORD PTR [esp+0x4],eax
  6d429d:	mov    DWORD PTR [esp],edi
  6d42a0:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6d42a5:	test   eax,eax
  6d42a7:	je     6d43b7
  6d42ad:	mov    DWORD PTR [esp],eax
  6d42b0:	mov    DWORD PTR [esp+0x4],0x0
  6d42b8:	call   179c35d  ; ABH.Shared.Models.InventoryItems.EquipmentData::get_IsAncient
  6d42bd:	test   al,al
  6d42bf:	je     6d432e
  6d42c1:	lea    eax,[ebx+0x45820]
  6d42c7:	mov    eax,DWORD PTR [eax]
  6d42c9:	test   BYTE PTR [eax+0xb2],0x1
  6d42d0:	je     6d42e0
  6d42d2:	cmp    DWORD PTR [eax+0x60],0x0
  6d42d6:	jne    6d42e0
  6d42d8:	mov    DWORD PTR [esp],eax
  6d42db:	call   1db0b8
  6d42e0:	mov    DWORD PTR [esp+0x4],0x0
  6d42e8:	mov    DWORD PTR [esp],0x0
  6d42ef:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
  6d42f4:	test   eax,eax
  6d42f6:	je     6d43b7
  6d42fc:	mov    DWORD PTR [esp],eax
  6d42ff:	mov    DWORD PTR [esp+0x4],0x0
  6d4307:	call   abb1b2  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_AncientEquipmentStatsBoost
  6d430c:	fstp   DWORD PTR [esp+0x38]
  6d4310:	movss  xmm0,DWORD PTR [esp+0x38]
  6d4316:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6d431e:	movss  xmm1,DWORD PTR [esp+0x2c]
  6d4324:	mulss  xmm0,xmm1
  6d4328:	addss  xmm1,xmm0
  6d432c:	jmp    6d4334
  6d432e:	movss  xmm1,DWORD PTR [esp+0x2c]
  6d4334:	cmp    DWORD PTR [esp+0x20],0x0
  6d4339:	jle    6d43a5
  6d433b:	movss  DWORD PTR [esp+0x2c],xmm1
  6d4341:	mov    DWORD PTR [esp+0x4],0x0
  6d4349:	mov    DWORD PTR [esp],0x0
  6d4350:	call   1092735  ; DIContainerLogic::get_EnchantmentLogic
  6d4355:	test   eax,eax
  6d4357:	je     6d43b7
  6d4359:	mov    ecx,DWORD PTR [esp+0x20]
  6d435d:	mov    DWORD PTR [esp+0x4],ecx
  6d4361:	mov    DWORD PTR [esp],eax
  6d4364:	mov    DWORD PTR [esp+0x8],0x0
  6d436c:	call   a5228d  ; EnchantmentLogic::GetBalancing
  6d4371:	test   eax,eax
  6d4373:	je     6d43b7
  6d4375:	mov    DWORD PTR [esp],eax
  6d4378:	mov    DWORD PTR [esp+0x4],0x0
  6d4380:	call   1700766  ; ABH.Shared.BalancingData.EnchantingBalancingData::get_StatsBoost
  6d4385:	fstp   DWORD PTR [esp+0x34]
  6d4389:	movss  xmm0,DWORD PTR [esp+0x34]
  6d438f:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6d4397:	movss  xmm1,DWORD PTR [esp+0x2c]
  6d439d:	mulss  xmm0,xmm1
  6d43a1:	addss  xmm1,xmm0
  6d43a5:	movss  DWORD PTR [esp+0x30],xmm1
  6d43ab:	fld    DWORD PTR [esp+0x30]
  6d43af:	lea    esp,[ebp-0xc]
  6d43b2:	pop    esi
  6d43b3:	pop    edi
  6d43b4:	pop    ebx
  6d43b5:	pop    ebp
  6d43b6:	ret
  6d43b7:	call   1fbc48
  6d43bc:	call   6b106a