
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c490d:
  6c490d:	push   ebp
  6c490e:	mov    ebp,esp
  6c4910:	push   ebx
  6c4911:	push   edi
  6c4912:	push   esi
  6c4913:	and    esp,0xfffffff0
  6c4916:	sub    esp,0x60
  6c4919:	call   6c491e
  6c491e:	pop    ebx
  6c491f:	add    ebx,0x184d626
  6c4925:	mov    edi,DWORD PTR [ebp+0x8]
  6c4928:	mov    al,BYTE PTR [ebx+0x5f649]
  6c492e:	test   al,al
  6c4930:	jne    6c4949
  6c4932:	lea    eax,[ebx-0x66eb68]
  6c4938:	mov    eax,DWORD PTR [eax]
  6c493a:	mov    DWORD PTR [esp],eax
  6c493d:	call   1ca6e8
  6c4942:	mov    BYTE PTR [ebx+0x5f649],0x1
  6c4949:	lea    esi,[ebx+0x4a260]
  6c494f:	mov    eax,DWORD PTR [esi]
  6c4951:	mov    DWORD PTR [esp+0x4],eax
  6c4955:	mov    DWORD PTR [esp],edi
  6c4958:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c495d:	test   eax,eax
  6c495f:	je     6c4b33
  6c4965:	mov    DWORD PTR [esp],eax
  6c4968:	mov    DWORD PTR [esp+0x4],0x0
  6c4970:	call   16fea10  ; ABH.Shared.BalancingData.BirdBalancingData::get_BaseAttack
  6c4975:	mov    DWORD PTR [esp+0x10],eax
  6c4979:	mov    eax,DWORD PTR [esi]
  6c497b:	mov    DWORD PTR [esp+0x4],eax
  6c497f:	mov    DWORD PTR [esp],edi
  6c4982:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c4987:	test   eax,eax
  6c4989:	je     6c4b33
  6c498f:	mov    DWORD PTR [esp],eax
  6c4992:	mov    DWORD PTR [esp+0x4],0x0
  6c499a:	call   16fea10  ; ABH.Shared.BalancingData.BirdBalancingData::get_BaseAttack
  6c499f:	mov    DWORD PTR [esp+0xc],eax
  6c49a3:	mov    eax,DWORD PTR [esi]
  6c49a5:	mov    DWORD PTR [esp+0x4],eax
  6c49a9:	mov    DWORD PTR [esp],edi
  6c49ac:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c49b1:	test   eax,eax
  6c49b3:	je     6c4b33
  6c49b9:	mov    DWORD PTR [esp],eax
  6c49bc:	mov    DWORD PTR [esp+0x4],0x0
  6c49c4:	call   16fea56  ; ABH.Shared.BalancingData.BirdBalancingData::get_PerLevelAttack
  6c49c9:	mov    esi,eax
  6c49cb:	lea    eax,[ebx+0x4a800]
  6c49d1:	mov    eax,DWORD PTR [eax]
  6c49d3:	mov    DWORD PTR [esp+0x4],eax
  6c49d7:	mov    DWORD PTR [esp],edi
  6c49da:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c49df:	test   eax,eax
  6c49e1:	je     6c4b33
  6c49e7:	mov    DWORD PTR [esp],eax
  6c49ea:	mov    DWORD PTR [esp+0x4],0x0
  6c49f2:	call   179a15b  ; ABH.Shared.Models.Character.BirdData::get_Level
  6c49f7:	mov    edi,eax
  6c49f9:	lea    eax,[ebx+0x44ec8]
  6c49ff:	mov    eax,DWORD PTR [eax]
  6c4a01:	test   BYTE PTR [eax+0xb2],0x1
  6c4a08:	je     6c4a18
  6c4a0a:	cmp    DWORD PTR [eax+0x60],0x0
  6c4a0e:	jne    6c4a18
  6c4a10:	mov    DWORD PTR [esp],eax
  6c4a13:	call   1db0b8
  6c4a18:	cvtsi2ss xmm0,DWORD PTR [esp+0x10]
  6c4a1e:	cvtsi2ss xmm1,DWORD PTR [esp+0xc]
  6c4a24:	cvtsi2ss xmm2,esi
  6c4a28:	divss  xmm2,DWORD PTR [ebx-0x64fc2c]
  6c4a30:	mulss  xmm2,xmm1
  6c4a34:	dec    edi
  6c4a35:	xorps  xmm1,xmm1
  6c4a38:	cvtsi2ss xmm1,edi
  6c4a3c:	mulss  xmm1,xmm2
  6c4a40:	addss  xmm1,xmm0
  6c4a44:	movss  DWORD PTR [esp+0x10],xmm1
  6c4a4a:	xorps  xmm0,xmm0
  6c4a4d:	cvtss2sd xmm0,xmm1
  6c4a51:	lea    eax,[esp+0x50]
  6c4a55:	mov    DWORD PTR [esp+0x8],eax
  6c4a59:	movsd  QWORD PTR [esp],xmm0
  6c4a5e:	call   1b93f0
  6c4a63:	movss  xmm1,DWORD PTR [esp+0x10]
  6c4a69:	xorps  xmm0,xmm0
  6c4a6c:	ucomiss xmm1,xmm0
  6c4a6f:	fstp   QWORD PTR [esp+0x48]
  6c4a73:	movsd  xmm0,QWORD PTR [esp+0x48]
  6c4a79:	jae    6c4ab1
  6c4a7b:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6c4a83:	jne    6c4ae7
  6c4a85:	jp     6c4ae7
  6c4a87:	movsd  xmm0,QWORD PTR [esp+0x50]
  6c4a8d:	movsd  QWORD PTR [esp+0x20],xmm0
  6c4a93:	fld    QWORD PTR [esp+0x20]
  6c4a97:	fisttp QWORD PTR [esp+0x18]
  6c4a9b:	mov    eax,DWORD PTR [esp+0x18]
  6c4a9f:	test   al,0x1
  6c4aa1:	cvtsd2ss xmm0,xmm0
  6c4aa5:	je     6c4b21
  6c4aa7:	addss  xmm0,DWORD PTR [ebx-0x64fc1c]
  6c4aaf:	jmp    6c4b21
  6c4ab1:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6c4ab9:	jne    6c4b05
  6c4abb:	jp     6c4b05
  6c4abd:	movsd  xmm0,QWORD PTR [esp+0x50]
  6c4ac3:	movsd  QWORD PTR [esp+0x38],xmm0
  6c4ac9:	fld    QWORD PTR [esp+0x38]
  6c4acd:	fisttp QWORD PTR [esp+0x30]
  6c4ad1:	mov    eax,DWORD PTR [esp+0x30]
  6c4ad5:	test   al,0x1
  6c4ad7:	cvtsd2ss xmm0,xmm0
  6c4adb:	je     6c4b21
  6c4add:	addss  xmm0,DWORD PTR [ebx-0x64fc28]
  6c4ae5:	jmp    6c4b21
  6c4ae7:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6c4aef:	movss  DWORD PTR [esp],xmm1
  6c4af4:	call   1b9250
  6c4af9:	fstp   DWORD PTR [esp+0x2c]
  6c4afd:	movss  xmm0,DWORD PTR [esp+0x2c]
  6c4b03:	jmp    6c4b21
  6c4b05:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6c4b0d:	movss  DWORD PTR [esp],xmm1
  6c4b12:	call   1b9990
  6c4b17:	fstp   DWORD PTR [esp+0x44]
  6c4b1b:	movss  xmm0,DWORD PTR [esp+0x44]
  6c4b21:	movss  DWORD PTR [esp+0x14],xmm0
  6c4b27:	fld    DWORD PTR [esp+0x14]
  6c4b2b:	lea    esp,[ebp-0xc]
  6c4b2e:	pop    esi
  6c4b2f:	pop    edi
  6c4b30:	pop    ebx
  6c4b31:	pop    ebp
  6c4b32:	ret
  6c4b33:	call   1fbc48
  6c4b38:	call   6b106a