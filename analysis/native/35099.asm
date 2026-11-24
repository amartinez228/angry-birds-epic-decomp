
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f5ea8:
  6f5ea8:	push   ebp
  6f5ea9:	mov    ebp,esp
  6f5eab:	push   ebx
  6f5eac:	push   edi
  6f5ead:	push   esi
  6f5eae:	and    esp,0xfffffff0
  6f5eb1:	sub    esp,0x30
  6f5eb4:	call   6f5eb9
  6f5eb9:	pop    ebx
  6f5eba:	add    ebx,0x181c08b
  6f5ec0:	mov    esi,DWORD PTR [ebp+0x8]
  6f5ec3:	mov    al,BYTE PTR [ebx+0x5f812]
  6f5ec9:	test   al,al
  6f5ecb:	jne    6f5ee4
  6f5ecd:	lea    eax,[ebx-0x65fcc8]
  6f5ed3:	mov    eax,DWORD PTR [eax]
  6f5ed5:	mov    DWORD PTR [esp],eax
  6f5ed8:	call   1ca6e8
  6f5edd:	mov    BYTE PTR [ebx+0x5f812],0x1
  6f5ee4:	mov    DWORD PTR [esp+0x28],0x0
  6f5eec:	mov    DWORD PTR [esp],esi
  6f5eef:	call   6f4ce0  ; ABH.GameDatas.PigGameData::get_ClassItem
  6f5ef4:	xorps  xmm0,xmm0
  6f5ef7:	test   eax,eax
  6f5ef9:	je     6f60ac
  6f5eff:	lea    eax,[ebx+0x45820]
  6f5f05:	mov    eax,DWORD PTR [eax]
  6f5f07:	test   BYTE PTR [eax+0xb2],0x1
  6f5f0e:	je     6f5f1e
  6f5f10:	cmp    DWORD PTR [eax+0x60],0x0
  6f5f14:	jne    6f5f1e
  6f5f16:	mov    DWORD PTR [esp],eax
  6f5f19:	call   1db0b8
  6f5f1e:	mov    DWORD PTR [esp+0x4],0x0
  6f5f26:	mov    DWORD PTR [esp],0x0
  6f5f2d:	call   107cf95  ; DIContainerBalancing::get_Service
  6f5f32:	mov    edi,eax
  6f5f34:	mov    DWORD PTR [esp],esi
  6f5f37:	call   6f4ce0  ; ABH.GameDatas.PigGameData::get_ClassItem
  6f5f3c:	test   eax,eax
  6f5f3e:	je     6f60be
  6f5f44:	mov    esi,edi
  6f5f46:	lea    ecx,[ebx+0x4a830]
  6f5f4c:	mov    ecx,DWORD PTR [ecx]
  6f5f4e:	mov    DWORD PTR [esp+0x4],ecx
  6f5f52:	mov    DWORD PTR [esp],eax
  6f5f55:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6f5f5a:	test   eax,eax
  6f5f5c:	je     6f60be
  6f5f62:	mov    DWORD PTR [esp],eax
  6f5f65:	mov    DWORD PTR [esp+0x4],0x0
  6f5f6d:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6f5f72:	mov    DWORD PTR [esp+0x28],eax
  6f5f76:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6f5f7c:	mov    eax,DWORD PTR [eax]
  6f5f7e:	mov    DWORD PTR [esp+0x4],eax
  6f5f82:	lea    eax,[esp+0x28]
  6f5f86:	mov    DWORD PTR [esp],eax
  6f5f89:	mov    DWORD PTR [esp+0x8],0x0
  6f5f91:	call   fea004
  6f5f96:	mov    edi,eax
  6f5f98:	lea    eax,[ebx+0x430e4]
  6f5f9e:	mov    eax,DWORD PTR [eax]
  6f5fa0:	test   BYTE PTR [eax+0xb2],0x1
  6f5fa7:	je     6f5fb7
  6f5fa9:	cmp    DWORD PTR [eax+0x60],0x0
  6f5fad:	jne    6f5fb7
  6f5faf:	mov    DWORD PTR [esp],eax
  6f5fb2:	call   1db0b8
  6f5fb7:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  6f5fbd:	mov    eax,DWORD PTR [eax]
  6f5fbf:	mov    DWORD PTR [esp+0x8],edi
  6f5fc3:	mov    DWORD PTR [esp+0x4],eax
  6f5fc7:	mov    DWORD PTR [esp+0xc],0x0
  6f5fcf:	mov    DWORD PTR [esp],0x0
  6f5fd6:	call   ca462a  ; System.String::Concat
  6f5fdb:	mov    DWORD PTR [esp+0x1c],eax
  6f5fdf:	test   esi,esi
  6f5fe1:	je     6f60be
  6f5fe7:	lea    eax,[ebx+0x4a834]
  6f5fed:	mov    eax,DWORD PTR [eax]
  6f5fef:	mov    DWORD PTR [esp+0x14],eax
  6f5ff3:	mov    ecx,DWORD PTR [eax+0xc]
  6f5ff6:	movzx  eax,WORD PTR [eax+0x2c]
  6f5ffa:	mov    DWORD PTR [esp+0x10],eax
  6f5ffe:	mov    edx,DWORD PTR [esi]
  6f6000:	mov    DWORD PTR [esp+0x18],esi
  6f6004:	movzx  esi,WORD PTR [edx+0xaa]
  6f600b:	test   esi,esi
  6f600d:	je     6f601e
  6f600f:	mov    eax,DWORD PTR [edx+0x4c]
  6f6012:	xor    edi,edi
  6f6014:	cmp    DWORD PTR [eax+edi*8],ecx
  6f6017:	je     6f6038
  6f6019:	inc    edi
  6f601a:	cmp    edi,esi
  6f601c:	jb     6f6014
  6f601e:	mov    eax,DWORD PTR [esp+0x10]
  6f6022:	mov    DWORD PTR [esp+0x8],eax
  6f6026:	mov    DWORD PTR [esp+0x4],ecx
  6f602a:	mov    esi,DWORD PTR [esp+0x18]
  6f602e:	mov    DWORD PTR [esp],esi
  6f6031:	call   1c1964
  6f6036:	jmp    6f604b
  6f6038:	mov    ecx,DWORD PTR [esp+0x10]
  6f603c:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  6f6040:	lea    eax,[edx+ecx*8+0xb4]
  6f6047:	mov    esi,DWORD PTR [esp+0x18]
  6f604b:	mov    eax,DWORD PTR [eax+0x4]
  6f604e:	mov    ecx,DWORD PTR [esp+0x14]
  6f6052:	mov    DWORD PTR [esp+0x4],ecx
  6f6056:	mov    DWORD PTR [esp],eax
  6f6059:	call   1da450
  6f605e:	mov    DWORD PTR [esp+0x8],eax
  6f6062:	mov    ecx,DWORD PTR [esp+0x1c]
  6f6066:	mov    DWORD PTR [esp+0x4],ecx
  6f606a:	mov    DWORD PTR [esp],esi
  6f606d:	call   DWORD PTR [eax]
  6f606f:	test   eax,eax
  6f6071:	xorps  xmm0,xmm0
  6f6074:	je     6f60ac
  6f6076:	mov    DWORD PTR [esp],eax
  6f6079:	mov    DWORD PTR [esp+0x4],0x0
  6f6081:	call   170105d  ; ABH.Shared.BalancingData.ExperienceMasteryBalancingData::get_StatBonus
  6f6086:	mov    esi,eax
  6f6088:	mov    eax,DWORD PTR [ebp+0x8]
  6f608b:	mov    DWORD PTR [esp],eax
  6f608e:	call   6f60c8  ; ABH.GameDatas.PigGameData::get_ClassIndependentHealth
  6f6093:	fstp   DWORD PTR [esp+0x24]
  6f6097:	xorps  xmm0,xmm0
  6f609a:	cvtsi2ss xmm0,esi
  6f609e:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6f60a6:	mulss  xmm0,DWORD PTR [esp+0x24]
  6f60ac:	movss  DWORD PTR [esp+0x20],xmm0
  6f60b2:	fld    DWORD PTR [esp+0x20]
  6f60b6:	lea    esp,[ebp-0xc]
  6f60b9:	pop    esi
  6f60ba:	pop    edi
  6f60bb:	pop    ebx
  6f60bc:	pop    ebp
  6f60bd:	ret
  6f60be:	call   1fbc48
  6f60c3:	call   6b106a