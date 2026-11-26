
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0149328f:
 149328f:	push   ebp
 1493290:	mov    ebp,esp
 1493292:	push   ebx
 1493293:	push   edi
 1493294:	push   esi
 1493295:	and    esp,0xfffffff0
 1493298:	sub    esp,0x20
 149329b:	call   14932a0
 14932a0:	pop    ebx
 14932a1:	add    ebx,0xa7eca4
 14932a7:	mov    al,BYTE PTR [ebx+0x6592e]
 14932ad:	test   al,al
 14932af:	jne    14932c8
 14932b1:	lea    eax,[ebx-0x670388]
 14932b7:	mov    eax,DWORD PTR [eax]
 14932b9:	mov    DWORD PTR [esp],eax
 14932bc:	call   1ca6e8
 14932c1:	mov    BYTE PTR [ebx+0x6592e],0x1
 14932c8:	mov    edi,DWORD PTR [ebp+0x8]
 14932cb:	lea    eax,[ebx+0x4584c]
 14932d1:	mov    eax,DWORD PTR [eax]
 14932d3:	test   BYTE PTR [eax+0xb2],0x1
 14932da:	je     14932ea
 14932dc:	cmp    DWORD PTR [eax+0x60],0x0
 14932e0:	jne    14932ea
 14932e2:	mov    DWORD PTR [esp],eax
 14932e5:	call   1db0b8
 14932ea:	mov    DWORD PTR [esp+0x4],0x0
 14932f2:	mov    DWORD PTR [esp],0x0
 14932f9:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 14932fe:	mov    esi,eax
 1493300:	mov    DWORD PTR [esp],edi
 1493303:	mov    DWORD PTR [esp+0x4],0x0
 149330b:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1493310:	test   eax,eax
 1493312:	je     1493376
 1493314:	mov    DWORD PTR [esp],eax
 1493317:	mov    DWORD PTR [esp+0x4],0x0
 149331f:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
 1493324:	mov    DWORD PTR [esp+0x18],eax
 1493328:	lea    eax,[ebx+0x44d10]
 149332e:	mov    eax,DWORD PTR [eax]
 1493330:	mov    DWORD PTR [esp],eax
 1493333:	call   20bfb2
 1493338:	mov    edi,eax
 149333a:	lea    eax,[ebx+0x49298]
 1493340:	mov    eax,DWORD PTR [eax]
 1493342:	mov    DWORD PTR [esp+0x4],eax
 1493346:	mov    DWORD PTR [esp],edi
 1493349:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
 149334e:	test   esi,esi
 1493350:	je     1493376
 1493352:	mov    DWORD PTR [esp+0x8],edi
 1493356:	mov    eax,DWORD PTR [esp+0x18]
 149335a:	mov    DWORD PTR [esp+0x4],eax
 149335e:	mov    DWORD PTR [esp],esi
 1493361:	mov    DWORD PTR [esp+0xc],0x0
 1493369:	call   af6d3e  ; ABHLocaService::GetSkillName
 149336e:	lea    esp,[ebp-0xc]
 1493371:	pop    esi
 1493372:	pop    edi
 1493373:	pop    ebx
 1493374:	pop    ebp
 1493375:	ret
 1493376:	call   1fbc48
 149337b:	call   14943fc