
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c5001:
  6c5001:	push   ebp
  6c5002:	mov    ebp,esp
  6c5004:	push   ebx
  6c5005:	push   esi
  6c5006:	and    esp,0xfffffff0
  6c5009:	sub    esp,0x20
  6c500c:	call   6c5011
  6c5011:	pop    ebx
  6c5012:	add    ebx,0x184cf33
  6c5018:	mov    esi,DWORD PTR [ebp+0x8]
  6c501b:	mov    al,BYTE PTR [ebx+0x5f64b]
  6c5021:	test   al,al
  6c5023:	jne    6c503c
  6c5025:	lea    eax,[ebx-0x66eb70]
  6c502b:	mov    eax,DWORD PTR [eax]
  6c502d:	mov    DWORD PTR [esp],eax
  6c5030:	call   1ca6e8
  6c5035:	mov    BYTE PTR [ebx+0x5f64b],0x1
  6c503c:	mov    DWORD PTR [esp],esi
  6c503f:	call   6c4b3d  ; ABH.GameDatas.BirdGameData::get_ClassIndependentAttack
  6c5044:	fstp   DWORD PTR [esp+0x1c]
  6c5048:	movss  xmm0,DWORD PTR [esp+0x1c]
  6c504e:	movss  DWORD PTR [esp+0xc],xmm0
  6c5054:	mov    DWORD PTR [esp],esi
  6c5057:	call   6c4bfa  ; ABH.GameDatas.BirdGameData::get_ClassAttack
  6c505c:	fstp   DWORD PTR [esp+0x18]
  6c5060:	movss  xmm0,DWORD PTR [esp+0x18]
  6c5066:	movss  DWORD PTR [esp+0x8],xmm0
  6c506c:	mov    DWORD PTR [esp],esi
  6c506f:	call   6c4525  ; ABH.GameDatas.BirdGameData::get_ClassSkin
  6c5074:	test   eax,eax
  6c5076:	je     6c50d0
  6c5078:	mov    DWORD PTR [esp],esi
  6c507b:	call   6c4525  ; ABH.GameDatas.BirdGameData::get_ClassSkin
  6c5080:	test   eax,eax
  6c5082:	je     6c50f4
  6c5084:	lea    ecx,[ebx+0x4a838]
  6c508a:	mov    ecx,DWORD PTR [ecx]
  6c508c:	mov    DWORD PTR [esp+0x4],ecx
  6c5090:	mov    DWORD PTR [esp],eax
  6c5093:	call   1605bb5
  6c5098:	test   eax,eax
  6c509a:	je     6c50f4
  6c509c:	mov    DWORD PTR [esp],eax
  6c509f:	mov    DWORD PTR [esp+0x4],0x0
  6c50a7:	call   16ff5ba  ; ABH.Shared.BalancingData.ClassSkinBalancingData::get_BonusDamage
  6c50ac:	fstp   DWORD PTR [esp+0x14]
  6c50b0:	movss  xmm0,DWORD PTR [esp+0x14]
  6c50b6:	movss  xmm1,DWORD PTR [esp+0xc]
  6c50bc:	addss  xmm1,DWORD PTR [esp+0x8]
  6c50c2:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6c50ca:	mulss  xmm0,xmm1
  6c50ce:	jmp    6c50df
  6c50d0:	movss  xmm1,DWORD PTR [esp+0xc]
  6c50d6:	addss  xmm1,DWORD PTR [esp+0x8]
  6c50dc:	xorps  xmm0,xmm0
  6c50df:	addss  xmm1,xmm0
  6c50e3:	movss  DWORD PTR [esp+0x10],xmm1
  6c50e9:	fld    DWORD PTR [esp+0x10]
  6c50ed:	lea    esp,[ebp-0x8]
  6c50f0:	pop    esi
  6c50f1:	pop    ebx
  6c50f2:	pop    ebp
  6c50f3:	ret
  6c50f4:	call   1fbc48
  6c50f9:	call   6b106a