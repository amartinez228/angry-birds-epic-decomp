
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006bf4a7:
  6bf4a7:	push   ebp
  6bf4a8:	mov    ebp,esp
  6bf4aa:	push   ebx
  6bf4ab:	push   edi
  6bf4ac:	push   esi
  6bf4ad:	and    esp,0xfffffff0
  6bf4b0:	sub    esp,0x20
  6bf4b3:	call   6bf4b8
  6bf4b8:	pop    ebx
  6bf4b9:	add    ebx,0x1852a8c
  6bf4bf:	mov    al,BYTE PTR [ebx+0x5f621]
  6bf4c5:	test   al,al
  6bf4c7:	jne    6bf4e0
  6bf4c9:	lea    eax,[ebx-0x659978]
  6bf4cf:	mov    eax,DWORD PTR [eax]
  6bf4d1:	mov    DWORD PTR [esp],eax
  6bf4d4:	call   1ca6e8
  6bf4d9:	mov    BYTE PTR [ebx+0x5f621],0x1
  6bf4e0:	mov    edi,DWORD PTR [ebp+0x8]
  6bf4e3:	lea    eax,[ebx+0x4584c]
  6bf4e9:	mov    eax,DWORD PTR [eax]
  6bf4eb:	test   BYTE PTR [eax+0xb2],0x1
  6bf4f2:	je     6bf502
  6bf4f4:	cmp    DWORD PTR [eax+0x60],0x0
  6bf4f8:	jne    6bf502
  6bf4fa:	mov    DWORD PTR [esp],eax
  6bf4fd:	call   1db0b8
  6bf502:	mov    DWORD PTR [esp+0x4],0x0
  6bf50a:	mov    DWORD PTR [esp],0x0
  6bf511:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  6bf516:	mov    esi,eax
  6bf518:	mov    DWORD PTR [esp],edi
  6bf51b:	mov    DWORD PTR [esp+0x4],0x0
  6bf523:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bf528:	test   eax,eax
  6bf52a:	je     6bf586
  6bf52c:	mov    DWORD PTR [esp],eax
  6bf52f:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
  6bf534:	mov    DWORD PTR [esp+0x18],eax
  6bf538:	lea    eax,[ebx+0x44d10]
  6bf53e:	mov    eax,DWORD PTR [eax]
  6bf540:	mov    DWORD PTR [esp],eax
  6bf543:	call   20bfb2
  6bf548:	mov    edi,eax
  6bf54a:	lea    eax,[ebx+0x49298]
  6bf550:	mov    eax,DWORD PTR [eax]
  6bf552:	mov    DWORD PTR [esp+0x4],eax
  6bf556:	mov    DWORD PTR [esp],edi
  6bf559:	call   617b0b
  6bf55e:	test   esi,esi
  6bf560:	je     6bf586
  6bf562:	mov    DWORD PTR [esp+0x8],edi
  6bf566:	mov    eax,DWORD PTR [esp+0x18]
  6bf56a:	mov    DWORD PTR [esp+0x4],eax
  6bf56e:	mov    DWORD PTR [esp],esi
  6bf571:	mov    DWORD PTR [esp+0xc],0x0
  6bf579:	call   af6d3e  ; ABHLocaService::GetSkillName
  6bf57e:	lea    esp,[ebp-0xc]
  6bf581:	pop    esi
  6bf582:	pop    edi
  6bf583:	pop    ebx
  6bf584:	pop    ebp
  6bf585:	ret
  6bf586:	call   1fbc48
  6bf58b:	call   6b106a