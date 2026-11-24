
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f5200:
  6f5200:	push   ebp
  6f5201:	mov    ebp,esp
  6f5203:	push   ebx
  6f5204:	push   edi
  6f5205:	push   esi
  6f5206:	and    esp,0xfffffff0
  6f5209:	sub    esp,0x60
  6f520c:	call   6f5211
  6f5211:	pop    ebx
  6f5212:	add    ebx,0x181cd33
  6f5218:	mov    edi,DWORD PTR [ebp+0x8]
  6f521b:	mov    al,BYTE PTR [ebx+0x5f80d]
  6f5221:	test   al,al
  6f5223:	jne    6f523c
  6f5225:	lea    eax,[ebx-0x65fcd4]
  6f522b:	mov    eax,DWORD PTR [eax]
  6f522d:	mov    DWORD PTR [esp],eax
  6f5230:	call   1ca6e8
  6f5235:	mov    BYTE PTR [ebx+0x5f80d],0x1
  6f523c:	mov    eax,DWORD PTR [edi+0x1c]
  6f523f:	test   eax,eax
  6f5241:	je     6f53ee
  6f5247:	mov    DWORD PTR [esp],eax
  6f524a:	mov    DWORD PTR [esp+0x4],0x0
  6f5252:	call   1701be8  ; ABH.Shared.BalancingData.PigBalancingData::get_BaseAttack
  6f5257:	mov    ecx,DWORD PTR [edi+0x1c]
  6f525a:	test   ecx,ecx
  6f525c:	je     6f53ee
  6f5262:	mov    DWORD PTR [esp+0x10],eax
  6f5266:	mov    DWORD PTR [esp],ecx
  6f5269:	mov    DWORD PTR [esp+0x4],0x0
  6f5271:	call   1701be8  ; ABH.Shared.BalancingData.PigBalancingData::get_BaseAttack
  6f5276:	mov    DWORD PTR [esp+0xc],eax
  6f527a:	mov    eax,DWORD PTR [edi+0x1c]
  6f527d:	test   eax,eax
  6f527f:	je     6f53ee
  6f5285:	mov    DWORD PTR [esp],eax
  6f5288:	mov    DWORD PTR [esp+0x4],0x0
  6f5290:	call   1701c2e  ; ABH.Shared.BalancingData.PigBalancingData::get_PerLevelAttack
  6f5295:	mov    esi,eax
  6f5297:	mov    eax,DWORD PTR [edi+0x20]
  6f529a:	test   eax,eax
  6f529c:	je     6f53ee
  6f52a2:	mov    DWORD PTR [esp],eax
  6f52a5:	mov    DWORD PTR [esp+0x4],0x0
  6f52ad:	call   179a319  ; ABH.Shared.Models.Character.PigData::get_Level
  6f52b2:	mov    edi,eax
  6f52b4:	lea    eax,[ebx+0x44ec8]
  6f52ba:	mov    eax,DWORD PTR [eax]
  6f52bc:	test   BYTE PTR [eax+0xb2],0x1
  6f52c3:	je     6f52d3
  6f52c5:	cmp    DWORD PTR [eax+0x60],0x0
  6f52c9:	jne    6f52d3
  6f52cb:	mov    DWORD PTR [esp],eax
  6f52ce:	call   1db0b8
  6f52d3:	cvtsi2ss xmm0,DWORD PTR [esp+0x10]
  6f52d9:	cvtsi2ss xmm1,DWORD PTR [esp+0xc]
  6f52df:	cvtsi2ss xmm2,esi
  6f52e3:	divss  xmm2,DWORD PTR [ebx-0x64fc2c]
  6f52eb:	mulss  xmm2,xmm1
  6f52ef:	dec    edi
  6f52f0:	xorps  xmm1,xmm1
  6f52f3:	cvtsi2ss xmm1,edi
  6f52f7:	mulss  xmm1,xmm2
  6f52fb:	addss  xmm1,xmm0
  6f52ff:	movss  DWORD PTR [esp+0x10],xmm1
  6f5305:	xorps  xmm0,xmm0
  6f5308:	cvtss2sd xmm0,xmm1
  6f530c:	lea    eax,[esp+0x50]
  6f5310:	mov    DWORD PTR [esp+0x8],eax
  6f5314:	movsd  QWORD PTR [esp],xmm0
  6f5319:	call   1b93f0
  6f531e:	movss  xmm1,DWORD PTR [esp+0x10]
  6f5324:	xorps  xmm0,xmm0
  6f5327:	ucomiss xmm1,xmm0
  6f532a:	fstp   QWORD PTR [esp+0x48]
  6f532e:	movsd  xmm0,QWORD PTR [esp+0x48]
  6f5334:	jae    6f536c
  6f5336:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6f533e:	jne    6f53a2
  6f5340:	jp     6f53a2
  6f5342:	movsd  xmm0,QWORD PTR [esp+0x50]
  6f5348:	movsd  QWORD PTR [esp+0x20],xmm0
  6f534e:	fld    QWORD PTR [esp+0x20]
  6f5352:	fisttp QWORD PTR [esp+0x18]
  6f5356:	mov    eax,DWORD PTR [esp+0x18]
  6f535a:	test   al,0x1
  6f535c:	cvtsd2ss xmm0,xmm0
  6f5360:	je     6f53dc
  6f5362:	addss  xmm0,DWORD PTR [ebx-0x64fc1c]
  6f536a:	jmp    6f53dc
  6f536c:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6f5374:	jne    6f53c0
  6f5376:	jp     6f53c0
  6f5378:	movsd  xmm0,QWORD PTR [esp+0x50]
  6f537e:	movsd  QWORD PTR [esp+0x38],xmm0
  6f5384:	fld    QWORD PTR [esp+0x38]
  6f5388:	fisttp QWORD PTR [esp+0x30]
  6f538c:	mov    eax,DWORD PTR [esp+0x30]
  6f5390:	test   al,0x1
  6f5392:	cvtsd2ss xmm0,xmm0
  6f5396:	je     6f53dc
  6f5398:	addss  xmm0,DWORD PTR [ebx-0x64fc28]
  6f53a0:	jmp    6f53dc
  6f53a2:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6f53aa:	movss  DWORD PTR [esp],xmm1
  6f53af:	call   1b9250
  6f53b4:	fstp   DWORD PTR [esp+0x2c]
  6f53b8:	movss  xmm0,DWORD PTR [esp+0x2c]
  6f53be:	jmp    6f53dc
  6f53c0:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6f53c8:	movss  DWORD PTR [esp],xmm1
  6f53cd:	call   1b9990
  6f53d2:	fstp   DWORD PTR [esp+0x44]
  6f53d6:	movss  xmm0,DWORD PTR [esp+0x44]
  6f53dc:	movss  DWORD PTR [esp+0x14],xmm0
  6f53e2:	fld    DWORD PTR [esp+0x14]
  6f53e6:	lea    esp,[ebp-0xc]
  6f53e9:	pop    esi
  6f53ea:	pop    edi
  6f53eb:	pop    ebx
  6f53ec:	pop    ebp
  6f53ed:	ret
  6f53ee:	call   1fbc48
  6f53f3:	call   6b106a