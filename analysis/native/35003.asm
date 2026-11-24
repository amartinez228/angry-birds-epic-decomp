
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c510a:
  6c510a:	push   ebp
  6c510b:	mov    ebp,esp
  6c510d:	push   ebx
  6c510e:	push   edi
  6c510f:	push   esi
  6c5110:	and    esp,0xfffffff0
  6c5113:	sub    esp,0x60
  6c5116:	call   6c511b
  6c511b:	pop    ebx
  6c511c:	add    ebx,0x184ce29
  6c5122:	mov    edi,DWORD PTR [ebp+0x8]
  6c5125:	mov    al,BYTE PTR [ebx+0x5f64c]
  6c512b:	test   al,al
  6c512d:	jne    6c5146
  6c512f:	lea    eax,[ebx-0x66eb64]
  6c5135:	mov    eax,DWORD PTR [eax]
  6c5137:	mov    DWORD PTR [esp],eax
  6c513a:	call   1ca6e8
  6c513f:	mov    BYTE PTR [ebx+0x5f64c],0x1
  6c5146:	lea    esi,[ebx+0x4a260]
  6c514c:	mov    eax,DWORD PTR [esi]
  6c514e:	mov    DWORD PTR [esp+0x4],eax
  6c5152:	mov    DWORD PTR [esp],edi
  6c5155:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c515a:	test   eax,eax
  6c515c:	je     6c5330
  6c5162:	mov    DWORD PTR [esp],eax
  6c5165:	mov    DWORD PTR [esp+0x4],0x0
  6c516d:	call   16fe9ed  ; ABH.Shared.BalancingData.BirdBalancingData::get_BaseHealth
  6c5172:	mov    DWORD PTR [esp+0x10],eax
  6c5176:	mov    eax,DWORD PTR [esi]
  6c5178:	mov    DWORD PTR [esp+0x4],eax
  6c517c:	mov    DWORD PTR [esp],edi
  6c517f:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c5184:	test   eax,eax
  6c5186:	je     6c5330
  6c518c:	mov    DWORD PTR [esp],eax
  6c518f:	mov    DWORD PTR [esp+0x4],0x0
  6c5197:	call   16fe9ed  ; ABH.Shared.BalancingData.BirdBalancingData::get_BaseHealth
  6c519c:	mov    DWORD PTR [esp+0xc],eax
  6c51a0:	mov    eax,DWORD PTR [esi]
  6c51a2:	mov    DWORD PTR [esp+0x4],eax
  6c51a6:	mov    DWORD PTR [esp],edi
  6c51a9:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6c51ae:	test   eax,eax
  6c51b0:	je     6c5330
  6c51b6:	mov    DWORD PTR [esp],eax
  6c51b9:	mov    DWORD PTR [esp+0x4],0x0
  6c51c1:	call   16fea33  ; ABH.Shared.BalancingData.BirdBalancingData::get_PerLevelHealth
  6c51c6:	mov    esi,eax
  6c51c8:	lea    eax,[ebx+0x4a800]
  6c51ce:	mov    eax,DWORD PTR [eax]
  6c51d0:	mov    DWORD PTR [esp+0x4],eax
  6c51d4:	mov    DWORD PTR [esp],edi
  6c51d7:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6c51dc:	test   eax,eax
  6c51de:	je     6c5330
  6c51e4:	mov    DWORD PTR [esp],eax
  6c51e7:	mov    DWORD PTR [esp+0x4],0x0
  6c51ef:	call   179a15b  ; ABH.Shared.Models.Character.BirdData::get_Level
  6c51f4:	mov    edi,eax
  6c51f6:	lea    eax,[ebx+0x44ec8]
  6c51fc:	mov    eax,DWORD PTR [eax]
  6c51fe:	test   BYTE PTR [eax+0xb2],0x1
  6c5205:	je     6c5215
  6c5207:	cmp    DWORD PTR [eax+0x60],0x0
  6c520b:	jne    6c5215
  6c520d:	mov    DWORD PTR [esp],eax
  6c5210:	call   1db0b8
  6c5215:	cvtsi2ss xmm0,DWORD PTR [esp+0x10]
  6c521b:	cvtsi2ss xmm1,DWORD PTR [esp+0xc]
  6c5221:	cvtsi2ss xmm2,esi
  6c5225:	divss  xmm2,DWORD PTR [ebx-0x64fc2c]
  6c522d:	mulss  xmm2,xmm1
  6c5231:	dec    edi
  6c5232:	xorps  xmm1,xmm1
  6c5235:	cvtsi2ss xmm1,edi
  6c5239:	mulss  xmm1,xmm2
  6c523d:	addss  xmm1,xmm0
  6c5241:	movss  DWORD PTR [esp+0x10],xmm1
  6c5247:	xorps  xmm0,xmm0
  6c524a:	cvtss2sd xmm0,xmm1
  6c524e:	lea    eax,[esp+0x50]
  6c5252:	mov    DWORD PTR [esp+0x8],eax
  6c5256:	movsd  QWORD PTR [esp],xmm0
  6c525b:	call   1b93f0
  6c5260:	movss  xmm1,DWORD PTR [esp+0x10]
  6c5266:	xorps  xmm0,xmm0
  6c5269:	ucomiss xmm1,xmm0
  6c526c:	fstp   QWORD PTR [esp+0x48]
  6c5270:	movsd  xmm0,QWORD PTR [esp+0x48]
  6c5276:	jae    6c52ae
  6c5278:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6c5280:	jne    6c52e4
  6c5282:	jp     6c52e4
  6c5284:	movsd  xmm0,QWORD PTR [esp+0x50]
  6c528a:	movsd  QWORD PTR [esp+0x20],xmm0
  6c5290:	fld    QWORD PTR [esp+0x20]
  6c5294:	fisttp QWORD PTR [esp+0x18]
  6c5298:	mov    eax,DWORD PTR [esp+0x18]
  6c529c:	test   al,0x1
  6c529e:	cvtsd2ss xmm0,xmm0
  6c52a2:	je     6c531e
  6c52a4:	addss  xmm0,DWORD PTR [ebx-0x64fc1c]
  6c52ac:	jmp    6c531e
  6c52ae:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6c52b6:	jne    6c5302
  6c52b8:	jp     6c5302
  6c52ba:	movsd  xmm0,QWORD PTR [esp+0x50]
  6c52c0:	movsd  QWORD PTR [esp+0x38],xmm0
  6c52c6:	fld    QWORD PTR [esp+0x38]
  6c52ca:	fisttp QWORD PTR [esp+0x30]
  6c52ce:	mov    eax,DWORD PTR [esp+0x30]
  6c52d2:	test   al,0x1
  6c52d4:	cvtsd2ss xmm0,xmm0
  6c52d8:	je     6c531e
  6c52da:	addss  xmm0,DWORD PTR [ebx-0x64fc28]
  6c52e2:	jmp    6c531e
  6c52e4:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6c52ec:	movss  DWORD PTR [esp],xmm1
  6c52f1:	call   1b9250
  6c52f6:	fstp   DWORD PTR [esp+0x2c]
  6c52fa:	movss  xmm0,DWORD PTR [esp+0x2c]
  6c5300:	jmp    6c531e
  6c5302:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6c530a:	movss  DWORD PTR [esp],xmm1
  6c530f:	call   1b9990
  6c5314:	fstp   DWORD PTR [esp+0x44]
  6c5318:	movss  xmm0,DWORD PTR [esp+0x44]
  6c531e:	movss  DWORD PTR [esp+0x14],xmm0
  6c5324:	fld    DWORD PTR [esp+0x14]
  6c5328:	lea    esp,[ebp-0xc]
  6c532b:	pop    esi
  6c532c:	pop    edi
  6c532d:	pop    ebx
  6c532e:	pop    ebp
  6c532f:	ret
  6c5330:	call   1fbc48
  6c5335:	call   6b106a