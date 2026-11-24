
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c533a:
  6c533a:	push   ebp
  6c533b:	mov    ebp,esp
  6c533d:	push   ebx
  6c533e:	push   esi
  6c533f:	and    esp,0xfffffff0
  6c5342:	sub    esp,0x20
  6c5345:	call   6c534a
  6c534a:	pop    ebx
  6c534b:	add    ebx,0x184cbfa
  6c5351:	mov    esi,DWORD PTR [ebp+0x8]
  6c5354:	mov    al,BYTE PTR [ebx+0x5f64d]
  6c535a:	test   al,al
  6c535c:	jne    6c5375
  6c535e:	lea    eax,[ebx-0x66eb6c]
  6c5364:	mov    eax,DWORD PTR [eax]
  6c5366:	mov    DWORD PTR [esp],eax
  6c5369:	call   1ca6e8
  6c536e:	mov    BYTE PTR [ebx+0x5f64d],0x1
  6c5375:	mov    DWORD PTR [esp],esi
  6c5378:	call   6c5437  ; ABH.GameDatas.BirdGameData::get_ClassIndependentHealth
  6c537d:	fstp   DWORD PTR [esp+0x1c]
  6c5381:	movss  xmm0,DWORD PTR [esp+0x1c]
  6c5387:	movss  DWORD PTR [esp+0xc],xmm0
  6c538d:	mov    DWORD PTR [esp],esi
  6c5390:	call   6c54c4  ; ABH.GameDatas.BirdGameData::get_ClassHealth
  6c5395:	fstp   DWORD PTR [esp+0x18]
  6c5399:	movss  xmm0,DWORD PTR [esp+0x18]
  6c539f:	movss  DWORD PTR [esp+0x8],xmm0
  6c53a5:	mov    DWORD PTR [esp],esi
  6c53a8:	call   6c4525  ; ABH.GameDatas.BirdGameData::get_ClassSkin
  6c53ad:	test   eax,eax
  6c53af:	je     6c5409
  6c53b1:	mov    DWORD PTR [esp],esi
  6c53b4:	call   6c4525  ; ABH.GameDatas.BirdGameData::get_ClassSkin
  6c53b9:	test   eax,eax
  6c53bb:	je     6c542d
  6c53bd:	lea    ecx,[ebx+0x4a838]
  6c53c3:	mov    ecx,DWORD PTR [ecx]
  6c53c5:	mov    DWORD PTR [esp+0x4],ecx
  6c53c9:	mov    DWORD PTR [esp],eax
  6c53cc:	call   1605bb5
  6c53d1:	test   eax,eax
  6c53d3:	je     6c542d
  6c53d5:	mov    DWORD PTR [esp],eax
  6c53d8:	mov    DWORD PTR [esp+0x4],0x0
  6c53e0:	call   16ff593  ; ABH.Shared.BalancingData.ClassSkinBalancingData::get_BonusHp
  6c53e5:	fstp   DWORD PTR [esp+0x14]
  6c53e9:	movss  xmm0,DWORD PTR [esp+0x14]
  6c53ef:	movss  xmm1,DWORD PTR [esp+0xc]
  6c53f5:	addss  xmm1,DWORD PTR [esp+0x8]
  6c53fb:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  6c5403:	mulss  xmm0,xmm1
  6c5407:	jmp    6c5418
  6c5409:	movss  xmm1,DWORD PTR [esp+0xc]
  6c540f:	addss  xmm1,DWORD PTR [esp+0x8]
  6c5415:	xorps  xmm0,xmm0
  6c5418:	addss  xmm1,xmm0
  6c541c:	movss  DWORD PTR [esp+0x10],xmm1
  6c5422:	fld    DWORD PTR [esp+0x10]
  6c5426:	lea    esp,[ebp-0x8]
  6c5429:	pop    esi
  6c542a:	pop    ebx
  6c542b:	pop    ebp
  6c542c:	ret
  6c542d:	call   1fbc48
  6c5432:	call   6b106a