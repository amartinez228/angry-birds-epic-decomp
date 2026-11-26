
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148e4d6:
 148e4d6:	push   ebp
 148e4d7:	mov    ebp,esp
 148e4d9:	push   ebx
 148e4da:	push   edi
 148e4db:	push   esi
 148e4dc:	and    esp,0xfffffff0
 148e4df:	sub    esp,0x20
 148e4e2:	call   148e4e7
 148e4e7:	pop    ebx
 148e4e8:	add    ebx,0xa83a5d
 148e4ee:	mov    al,BYTE PTR [ebx+0x65916]
 148e4f4:	test   al,al
 148e4f6:	jne    148e50f
 148e4f8:	lea    eax,[ebx-0x6703d0]
 148e4fe:	mov    eax,DWORD PTR [eax]
 148e500:	mov    DWORD PTR [esp],eax
 148e503:	call   1ca6e8
 148e508:	mov    BYTE PTR [ebx+0x65916],0x1
 148e50f:	mov    edi,DWORD PTR [ebp+0x8]
 148e512:	lea    eax,[ebx+0x4584c]
 148e518:	mov    eax,DWORD PTR [eax]
 148e51a:	test   BYTE PTR [eax+0xb2],0x1
 148e521:	je     148e531
 148e523:	cmp    DWORD PTR [eax+0x60],0x0
 148e527:	jne    148e531
 148e529:	mov    DWORD PTR [esp],eax
 148e52c:	call   1db0b8
 148e531:	mov    DWORD PTR [esp+0x4],0x0
 148e539:	mov    DWORD PTR [esp],0x0
 148e540:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 148e545:	mov    esi,eax
 148e547:	mov    DWORD PTR [esp],edi
 148e54a:	mov    DWORD PTR [esp+0x4],0x0
 148e552:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 148e557:	test   eax,eax
 148e559:	je     148e5bd
 148e55b:	mov    DWORD PTR [esp],eax
 148e55e:	mov    DWORD PTR [esp+0x4],0x0
 148e566:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
 148e56b:	mov    DWORD PTR [esp+0x18],eax
 148e56f:	lea    eax,[ebx+0x44d10]
 148e575:	mov    eax,DWORD PTR [eax]
 148e577:	mov    DWORD PTR [esp],eax
 148e57a:	call   20bfb2
 148e57f:	mov    edi,eax
 148e581:	lea    eax,[ebx+0x49298]
 148e587:	mov    eax,DWORD PTR [eax]
 148e589:	mov    DWORD PTR [esp+0x4],eax
 148e58d:	mov    DWORD PTR [esp],edi
 148e590:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
 148e595:	test   esi,esi
 148e597:	je     148e5bd
 148e599:	mov    DWORD PTR [esp+0x8],edi
 148e59d:	mov    eax,DWORD PTR [esp+0x18]
 148e5a1:	mov    DWORD PTR [esp+0x4],eax
 148e5a5:	mov    DWORD PTR [esp],esi
 148e5a8:	mov    DWORD PTR [esp+0xc],0x0
 148e5b0:	call   af6d3e  ; ABHLocaService::GetSkillName
 148e5b5:	lea    esp,[ebp-0xc]
 148e5b8:	pop    esi
 148e5b9:	pop    edi
 148e5ba:	pop    ebx
 148e5bb:	pop    ebp
 148e5bc:	ret
 148e5bd:	call   1fbc48
 148e5c2:	call   14943fc