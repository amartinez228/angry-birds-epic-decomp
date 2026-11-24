
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f58a4:
  6f58a4:	push   ebp
  6f58a5:	mov    ebp,esp
  6f58a7:	push   ebx
  6f58a8:	push   esi
  6f58a9:	and    esp,0xfffffff0
  6f58ac:	sub    esp,0x70
  6f58af:	call   6f58b4
  6f58b4:	pop    ebx
  6f58b5:	add    ebx,0x181c690
  6f58bb:	mov    esi,DWORD PTR [ebp+0x8]
  6f58be:	mov    al,BYTE PTR [ebx+0x5f810]
  6f58c4:	test   al,al
  6f58c6:	jne    6f58df
  6f58c8:	lea    eax,[ebx-0x65fcdc]
  6f58ce:	mov    eax,DWORD PTR [eax]
  6f58d0:	mov    DWORD PTR [esp],eax
  6f58d3:	call   1ca6e8
  6f58d8:	mov    BYTE PTR [ebx+0x5f810],0x1
  6f58df:	cmp    BYTE PTR [esi+0x3c],0x0
  6f58e3:	je     6f598c
  6f58e9:	mov    DWORD PTR [esp],esi
  6f58ec:	call   6f53f8  ; ABH.GameDatas.PigGameData::get_ClassIndependentAttack
  6f58f1:	fstp   DWORD PTR [esp+0x64]
  6f58f5:	movss  xmm0,DWORD PTR [esp+0x64]
  6f58fb:	movss  DWORD PTR [esp+0x18],xmm0
  6f5901:	mov    DWORD PTR [esp],esi
  6f5904:	call   6f5485  ; ABH.GameDatas.PigGameData::get_ClassAttack
  6f5909:	fstp   DWORD PTR [esp+0x60]
  6f590d:	movss  xmm0,DWORD PTR [esp+0x60]
  6f5913:	movss  DWORD PTR [esp+0x14],xmm0
  6f5919:	mov    DWORD PTR [esp],esi
  6f591c:	call   6f4dda  ; ABH.GameDatas.PigGameData::get_ClassSkin
  6f5921:	test   eax,eax
  6f5923:	je     6f5a5c
  6f5929:	mov    DWORD PTR [esp],esi
  6f592c:	call   6f4dda  ; ABH.GameDatas.PigGameData::get_ClassSkin
  6f5931:	test   eax,eax
  6f5933:	je     6f5af8
  6f5939:	lea    ecx,[ebx+0x4a838]
  6f593f:	mov    ecx,DWORD PTR [ecx]
  6f5941:	mov    DWORD PTR [esp+0x4],ecx
  6f5945:	mov    DWORD PTR [esp],eax
  6f5948:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6f594d:	test   eax,eax
  6f594f:	je     6f5af8
  6f5955:	mov    DWORD PTR [esp],eax
  6f5958:	mov    DWORD PTR [esp+0x4],0x0
  6f5960:	call   16ff5ba  ; ABH.Shared.BalancingData.ClassSkinBalancingData::get_BonusDamage
  6f5965:	fstp   DWORD PTR [esp+0x5c]
  6f5969:	movss  xmm0,DWORD PTR [esp+0x5c]
  6f596f:	movss  xmm1,DWORD PTR [esp+0x18]
  6f5975:	addss  xmm1,DWORD PTR [esp+0x14]
  6f597b:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6f5983:	mulss  xmm0,xmm1
  6f5987:	jmp    6f5a6b
  6f598c:	mov    eax,DWORD PTR [esi+0x1c]
  6f598f:	test   eax,eax
  6f5991:	je     6f5af8
  6f5997:	mov    DWORD PTR [esp],eax
  6f599a:	mov    DWORD PTR [esp+0x4],0x0
  6f59a2:	call   1701be8  ; ABH.Shared.BalancingData.PigBalancingData::get_BaseAttack
  6f59a7:	cvtsi2ss xmm0,eax
  6f59ab:	movss  DWORD PTR [esp+0x4],xmm0
  6f59b1:	mov    DWORD PTR [esp],esi
  6f59b4:	call   6f5b13  ; ABH.GameDatas.PigGameData::ApplyDifficultyOnHealth
  6f59b9:	fstp   DWORD PTR [esp+0x58]
  6f59bd:	movss  xmm0,DWORD PTR [esp+0x58]
  6f59c3:	movss  DWORD PTR [esp+0x18],xmm0
  6f59c9:	lea    eax,[ebx+0x44ec8]
  6f59cf:	mov    eax,DWORD PTR [eax]
  6f59d1:	test   BYTE PTR [eax+0xb2],0x1
  6f59d8:	je     6f59e8
  6f59da:	cmp    DWORD PTR [eax+0x60],0x0
  6f59de:	jne    6f59e8
  6f59e0:	mov    DWORD PTR [esp],eax
  6f59e3:	call   1db0b8
  6f59e8:	xorps  xmm0,xmm0
  6f59eb:	cvtss2sd xmm0,DWORD PTR [esp+0x18]
  6f59f1:	lea    eax,[esp+0x68]
  6f59f5:	mov    DWORD PTR [esp+0x8],eax
  6f59f9:	movsd  QWORD PTR [esp],xmm0
  6f59fe:	call   1b93f0
  6f5a03:	xorps  xmm0,xmm0
  6f5a06:	movss  xmm1,DWORD PTR [esp+0x18]
  6f5a0c:	ucomiss xmm1,xmm0
  6f5a0f:	fstp   QWORD PTR [esp+0x50]
  6f5a13:	movsd  xmm0,QWORD PTR [esp+0x50]
  6f5a19:	jae    6f5a80
  6f5a1b:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6f5a23:	jne    6f5ab9
  6f5a29:	jp     6f5ab9
  6f5a2f:	movsd  xmm0,QWORD PTR [esp+0x68]
  6f5a35:	movsd  QWORD PTR [esp+0x28],xmm0
  6f5a3b:	fld    QWORD PTR [esp+0x28]
  6f5a3f:	fisttp QWORD PTR [esp+0x20]
  6f5a43:	mov    eax,DWORD PTR [esp+0x20]
  6f5a47:	test   al,0x1
  6f5a49:	xorps  xmm1,xmm1
  6f5a4c:	cvtsd2ss xmm1,xmm0
  6f5a50:	je     6f5a6f
  6f5a52:	addss  xmm1,DWORD PTR [ebx-0x64fc1c]
  6f5a5a:	jmp    6f5a6f
  6f5a5c:	movss  xmm1,DWORD PTR [esp+0x18]
  6f5a62:	addss  xmm1,DWORD PTR [esp+0x14]
  6f5a68:	xorps  xmm0,xmm0
  6f5a6b:	addss  xmm1,xmm0
  6f5a6f:	movss  DWORD PTR [esp+0x1c],xmm1
  6f5a75:	fld    DWORD PTR [esp+0x1c]
  6f5a79:	lea    esp,[ebp-0x8]
  6f5a7c:	pop    esi
  6f5a7d:	pop    ebx
  6f5a7e:	pop    ebp
  6f5a7f:	ret
  6f5a80:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6f5a88:	jne    6f5ad7
  6f5a8a:	jp     6f5ad7
  6f5a8c:	movsd  xmm0,QWORD PTR [esp+0x68]
  6f5a92:	movsd  QWORD PTR [esp+0x40],xmm0
  6f5a98:	fld    QWORD PTR [esp+0x40]
  6f5a9c:	fisttp QWORD PTR [esp+0x38]
  6f5aa0:	mov    eax,DWORD PTR [esp+0x38]
  6f5aa4:	test   al,0x1
  6f5aa6:	xorps  xmm1,xmm1
  6f5aa9:	cvtsd2ss xmm1,xmm0
  6f5aad:	je     6f5a6f
  6f5aaf:	addss  xmm1,DWORD PTR [ebx-0x64fc28]
  6f5ab7:	jmp    6f5a6f
  6f5ab9:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6f5ac1:	movss  DWORD PTR [esp],xmm1
  6f5ac6:	call   1b9250
  6f5acb:	fstp   DWORD PTR [esp+0x34]
  6f5acf:	movss  xmm1,DWORD PTR [esp+0x34]
  6f5ad5:	jmp    6f5a6f
  6f5ad7:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6f5adf:	movss  DWORD PTR [esp],xmm1
  6f5ae4:	call   1b9990
  6f5ae9:	fstp   DWORD PTR [esp+0x4c]
  6f5aed:	movss  xmm1,DWORD PTR [esp+0x4c]
  6f5af3:	jmp    6f5a6f
  6f5af8:	call   1fbc48
  6f5afd:	call   6b106a