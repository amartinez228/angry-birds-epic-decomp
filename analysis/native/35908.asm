
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00703475:
  703475:	push   ebp
  703476:	mov    ebp,esp
  703478:	push   ebx
  703479:	push   edi
  70347a:	push   esi
  70347b:	and    esp,0xfffffff0
  70347e:	sub    esp,0x40
  703481:	call   703486
  703486:	pop    ebx
  703487:	add    ebx,0x180eabe
  70348d:	mov    al,BYTE PTR [ebx+0x5f845]
  703493:	test   al,al
  703495:	jne    7034ae
  703497:	lea    eax,[ebx-0x65f9fc]
  70349d:	mov    eax,DWORD PTR [eax]
  70349f:	mov    DWORD PTR [esp],eax
  7034a2:	call   1ca6e8
  7034a7:	mov    BYTE PTR [ebx+0x5f845],0x1
  7034ae:	mov    edi,DWORD PTR [ebp+0x8]
  7034b1:	mov    DWORD PTR [esp+0x38],0x0
  7034b9:	mov    DWORD PTR [esp+0x34],0x0
  7034c1:	lea    eax,[ebx+0x45820]
  7034c7:	mov    eax,DWORD PTR [eax]
  7034c9:	test   BYTE PTR [eax+0xb2],0x1
  7034d0:	je     7034e0
  7034d2:	cmp    DWORD PTR [eax+0x60],0x0
  7034d6:	jne    7034e0
  7034d8:	mov    DWORD PTR [esp],eax
  7034db:	call   1db0b8
  7034e0:	mov    DWORD PTR [esp+0x4],0x0
  7034e8:	mov    DWORD PTR [esp],0x0
  7034ef:	call   107cf95  ; DIContainerBalancing::get_Service
  7034f4:	mov    esi,eax
  7034f6:	lea    eax,[ebx+0x4a210]
  7034fc:	mov    DWORD PTR [esp+0x1c],eax
  703500:	mov    eax,DWORD PTR [eax]
  703502:	mov    DWORD PTR [esp+0x4],eax
  703506:	mov    DWORD PTR [esp],edi
  703509:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  70350e:	test   eax,eax
  703510:	je     703693
  703516:	mov    DWORD PTR [esp],eax
  703519:	mov    DWORD PTR [esp+0x4],0x0
  703521:	call   179cbbe  ; ABH.Shared.Models.PlayerData::get_Level
  703526:	mov    DWORD PTR [esp+0x34],eax
  70352a:	lea    eax,[ebx+0x512f4]  ; literal "00"
  703530:	mov    eax,DWORD PTR [eax]
  703532:	mov    DWORD PTR [esp+0x4],eax
  703536:	lea    eax,[esp+0x34]
  70353a:	mov    DWORD PTR [esp],eax
  70353d:	mov    DWORD PTR [esp+0x8],0x0
  703545:	call   fea004
  70354a:	mov    edi,eax
  70354c:	lea    eax,[ebx+0x430e4]
  703552:	mov    eax,DWORD PTR [eax]
  703554:	test   BYTE PTR [eax+0xb2],0x1
  70355b:	je     70356b
  70355d:	cmp    DWORD PTR [eax+0x60],0x0
  703561:	jne    70356b
  703563:	mov    DWORD PTR [esp],eax
  703566:	call   1db0b8
  70356b:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  703571:	mov    eax,DWORD PTR [eax]
  703573:	mov    DWORD PTR [esp+0x8],edi
  703577:	mov    DWORD PTR [esp+0x4],eax
  70357b:	mov    DWORD PTR [esp+0xc],0x0
  703583:	mov    DWORD PTR [esp],0x0
  70358a:	call   ca462a  ; System.String::Concat
  70358f:	mov    DWORD PTR [esp+0x2c],eax
  703593:	test   esi,esi
  703595:	je     703693
  70359b:	lea    eax,[ebx+0x49fb4]
  7035a1:	mov    eax,DWORD PTR [eax]
  7035a3:	mov    DWORD PTR [esp+0x24],eax
  7035a7:	mov    ecx,DWORD PTR [eax+0xc]
  7035aa:	movzx  eax,WORD PTR [eax+0x2c]
  7035ae:	mov    DWORD PTR [esp+0x20],eax
  7035b2:	mov    edx,DWORD PTR [esi]
  7035b4:	mov    DWORD PTR [esp+0x28],esi
  7035b8:	movzx  esi,WORD PTR [edx+0xaa]
  7035bf:	test   esi,esi
  7035c1:	je     7035d2
  7035c3:	mov    eax,DWORD PTR [edx+0x4c]
  7035c6:	xor    edi,edi
  7035c8:	cmp    DWORD PTR [eax+edi*8],ecx
  7035cb:	je     7035ec
  7035cd:	inc    edi
  7035ce:	cmp    edi,esi
  7035d0:	jb     7035c8
  7035d2:	mov    eax,DWORD PTR [esp+0x20]
  7035d6:	mov    DWORD PTR [esp+0x8],eax
  7035da:	mov    DWORD PTR [esp+0x4],ecx
  7035de:	mov    esi,DWORD PTR [esp+0x28]
  7035e2:	mov    DWORD PTR [esp],esi
  7035e5:	call   1c1964
  7035ea:	jmp    7035ff
  7035ec:	mov    ecx,DWORD PTR [esp+0x20]
  7035f0:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  7035f4:	lea    eax,[edx+ecx*8+0xb4]
  7035fb:	mov    esi,DWORD PTR [esp+0x28]
  7035ff:	mov    eax,DWORD PTR [eax+0x4]
  703602:	mov    ecx,DWORD PTR [esp+0x24]
  703606:	mov    DWORD PTR [esp+0x4],ecx
  70360a:	mov    DWORD PTR [esp],eax
  70360d:	call   1da450
  703612:	mov    DWORD PTR [esp+0xc],eax
  703616:	lea    ecx,[esp+0x38]
  70361a:	mov    DWORD PTR [esp+0x8],ecx
  70361e:	mov    ecx,DWORD PTR [esp+0x2c]
  703622:	mov    DWORD PTR [esp+0x4],ecx
  703626:	mov    DWORD PTR [esp],esi
  703629:	call   DWORD PTR [eax]
  70362b:	mov    cl,al
  70362d:	mov    eax,0xffffffff
  703632:	test   cl,cl
  703634:	je     70368b
  703636:	mov    eax,DWORD PTR [esp+0x38]
  70363a:	test   eax,eax
  70363c:	je     703693
  70363e:	mov    DWORD PTR [esp],eax
  703641:	mov    DWORD PTR [esp+0x4],0x0
  703649:	call   1700eef  ; ABH.Shared.BalancingData.ExperienceLevelBalancingData::get_Experience
  70364e:	mov    esi,eax
  703650:	mov    eax,DWORD PTR [esp+0x1c]
  703654:	mov    eax,DWORD PTR [eax]
  703656:	mov    DWORD PTR [esp+0x4],eax
  70365a:	mov    eax,DWORD PTR [ebp+0x8]
  70365d:	mov    DWORD PTR [esp],eax
  703660:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  703665:	test   eax,eax
  703667:	je     703693
  703669:	mov    DWORD PTR [esp],eax
  70366c:	mov    DWORD PTR [esp+0x4],0x0
  703674:	call   179ce5d  ; ABH.Shared.Models.PlayerData::get_Experience
  703679:	fstp   DWORD PTR [esp+0x30]
  70367d:	cvtsi2ss xmm0,esi
  703681:	subss  xmm0,DWORD PTR [esp+0x30]
  703687:	cvttss2si eax,xmm0
  70368b:	lea    esp,[ebp-0xc]
  70368e:	pop    esi
  70368f:	pop    edi
  703690:	pop    ebx
  703691:	pop    ebp
  703692:	ret
  703693:	call   1fbc48
  703698:	call   6b106a