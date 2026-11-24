
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f61b9:
  6f61b9:	push   ebp
  6f61ba:	mov    ebp,esp
  6f61bc:	push   ebx
  6f61bd:	push   esi
  6f61be:	and    esp,0xfffffff0
  6f61c1:	sub    esp,0x70
  6f61c4:	call   6f61c9
  6f61c9:	pop    ebx
  6f61ca:	add    ebx,0x181bd7b
  6f61d0:	mov    esi,DWORD PTR [ebp+0x8]
  6f61d3:	mov    al,BYTE PTR [ebx+0x5f814]
  6f61d9:	test   al,al
  6f61db:	jne    6f61f4
  6f61dd:	lea    eax,[ebx-0x65fcd8]
  6f61e3:	mov    eax,DWORD PTR [eax]
  6f61e5:	mov    DWORD PTR [esp],eax
  6f61e8:	call   1ca6e8
  6f61ed:	mov    BYTE PTR [ebx+0x5f814],0x1
  6f61f4:	cmp    BYTE PTR [esi+0x3c],0x0
  6f61f8:	je     6f62a1
  6f61fe:	mov    DWORD PTR [esp],esi
  6f6201:	call   6f60c8  ; ABH.GameDatas.PigGameData::get_ClassIndependentHealth
  6f6206:	fstp   DWORD PTR [esp+0x64]
  6f620a:	movss  xmm0,DWORD PTR [esp+0x64]
  6f6210:	movss  DWORD PTR [esp+0x18],xmm0
  6f6216:	mov    DWORD PTR [esp],esi
  6f6219:	call   6f5ea8  ; ABH.GameDatas.PigGameData::get_ClassHealth
  6f621e:	fstp   DWORD PTR [esp+0x60]
  6f6222:	movss  xmm0,DWORD PTR [esp+0x60]
  6f6228:	movss  DWORD PTR [esp+0x14],xmm0
  6f622e:	mov    DWORD PTR [esp],esi
  6f6231:	call   6f4dda  ; ABH.GameDatas.PigGameData::get_ClassSkin
  6f6236:	test   eax,eax
  6f6238:	je     6f6371
  6f623e:	mov    DWORD PTR [esp],esi
  6f6241:	call   6f4dda  ; ABH.GameDatas.PigGameData::get_ClassSkin
  6f6246:	test   eax,eax
  6f6248:	je     6f640d
  6f624e:	lea    ecx,[ebx+0x4a838]
  6f6254:	mov    ecx,DWORD PTR [ecx]
  6f6256:	mov    DWORD PTR [esp+0x4],ecx
  6f625a:	mov    DWORD PTR [esp],eax
  6f625d:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6f6262:	test   eax,eax
  6f6264:	je     6f640d
  6f626a:	mov    DWORD PTR [esp],eax
  6f626d:	mov    DWORD PTR [esp+0x4],0x0
  6f6275:	call   16ff593  ; ABH.Shared.BalancingData.ClassSkinBalancingData::get_BonusHp
  6f627a:	fstp   DWORD PTR [esp+0x5c]
  6f627e:	movss  xmm0,DWORD PTR [esp+0x5c]
  6f6284:	movss  xmm1,DWORD PTR [esp+0x18]
  6f628a:	addss  xmm1,DWORD PTR [esp+0x14]
  6f6290:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6f6298:	mulss  xmm0,xmm1
  6f629c:	jmp    6f6380
  6f62a1:	mov    eax,DWORD PTR [esi+0x1c]
  6f62a4:	test   eax,eax
  6f62a6:	je     6f640d
  6f62ac:	mov    DWORD PTR [esp],eax
  6f62af:	mov    DWORD PTR [esp+0x4],0x0
  6f62b7:	call   1701bc5  ; ABH.Shared.BalancingData.PigBalancingData::get_BaseHealth
  6f62bc:	cvtsi2ss xmm0,eax
  6f62c0:	movss  DWORD PTR [esp+0x4],xmm0
  6f62c6:	mov    DWORD PTR [esp],esi
  6f62c9:	call   6f5b13  ; ABH.GameDatas.PigGameData::ApplyDifficultyOnHealth
  6f62ce:	fstp   DWORD PTR [esp+0x58]
  6f62d2:	movss  xmm0,DWORD PTR [esp+0x58]
  6f62d8:	movss  DWORD PTR [esp+0x18],xmm0
  6f62de:	lea    eax,[ebx+0x44ec8]
  6f62e4:	mov    eax,DWORD PTR [eax]
  6f62e6:	test   BYTE PTR [eax+0xb2],0x1
  6f62ed:	je     6f62fd
  6f62ef:	cmp    DWORD PTR [eax+0x60],0x0
  6f62f3:	jne    6f62fd
  6f62f5:	mov    DWORD PTR [esp],eax
  6f62f8:	call   1db0b8
  6f62fd:	xorps  xmm0,xmm0
  6f6300:	cvtss2sd xmm0,DWORD PTR [esp+0x18]
  6f6306:	lea    eax,[esp+0x68]
  6f630a:	mov    DWORD PTR [esp+0x8],eax
  6f630e:	movsd  QWORD PTR [esp],xmm0
  6f6313:	call   1b93f0
  6f6318:	xorps  xmm0,xmm0
  6f631b:	movss  xmm1,DWORD PTR [esp+0x18]
  6f6321:	ucomiss xmm1,xmm0
  6f6324:	fstp   QWORD PTR [esp+0x50]
  6f6328:	movsd  xmm0,QWORD PTR [esp+0x50]
  6f632e:	jae    6f6395
  6f6330:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6f6338:	jne    6f63ce
  6f633e:	jp     6f63ce
  6f6344:	movsd  xmm0,QWORD PTR [esp+0x68]
  6f634a:	movsd  QWORD PTR [esp+0x28],xmm0
  6f6350:	fld    QWORD PTR [esp+0x28]
  6f6354:	fisttp QWORD PTR [esp+0x20]
  6f6358:	mov    eax,DWORD PTR [esp+0x20]
  6f635c:	test   al,0x1
  6f635e:	xorps  xmm1,xmm1
  6f6361:	cvtsd2ss xmm1,xmm0
  6f6365:	je     6f6384
  6f6367:	addss  xmm1,DWORD PTR [ebx-0x64fc1c]
  6f636f:	jmp    6f6384
  6f6371:	movss  xmm1,DWORD PTR [esp+0x18]
  6f6377:	addss  xmm1,DWORD PTR [esp+0x14]
  6f637d:	xorps  xmm0,xmm0
  6f6380:	addss  xmm1,xmm0
  6f6384:	movss  DWORD PTR [esp+0x1c],xmm1
  6f638a:	fld    DWORD PTR [esp+0x1c]
  6f638e:	lea    esp,[ebp-0x8]
  6f6391:	pop    esi
  6f6392:	pop    ebx
  6f6393:	pop    ebp
  6f6394:	ret
  6f6395:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6f639d:	jne    6f63ec
  6f639f:	jp     6f63ec
  6f63a1:	movsd  xmm0,QWORD PTR [esp+0x68]
  6f63a7:	movsd  QWORD PTR [esp+0x40],xmm0
  6f63ad:	fld    QWORD PTR [esp+0x40]
  6f63b1:	fisttp QWORD PTR [esp+0x38]
  6f63b5:	mov    eax,DWORD PTR [esp+0x38]
  6f63b9:	test   al,0x1
  6f63bb:	xorps  xmm1,xmm1
  6f63be:	cvtsd2ss xmm1,xmm0
  6f63c2:	je     6f6384
  6f63c4:	addss  xmm1,DWORD PTR [ebx-0x64fc28]
  6f63cc:	jmp    6f6384
  6f63ce:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6f63d6:	movss  DWORD PTR [esp],xmm1
  6f63db:	call   1b9250
  6f63e0:	fstp   DWORD PTR [esp+0x34]
  6f63e4:	movss  xmm1,DWORD PTR [esp+0x34]
  6f63ea:	jmp    6f6384
  6f63ec:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6f63f4:	movss  DWORD PTR [esp],xmm1
  6f63f9:	call   1b9990
  6f63fe:	fstp   DWORD PTR [esp+0x4c]
  6f6402:	movss  xmm1,DWORD PTR [esp+0x4c]
  6f6408:	jmp    6f6384
  6f640d:	call   1fbc48
  6f6412:	call   6b106a