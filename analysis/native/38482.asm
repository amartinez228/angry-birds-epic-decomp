
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014b97e4:
 14b97e4:	push   ebp
 14b97e5:	mov    ebp,esp
 14b97e7:	push   ebx
 14b97e8:	push   edi
 14b97e9:	push   esi
 14b97ea:	and    esp,0xfffffff0
 14b97ed:	sub    esp,0x20
 14b97f0:	call   14b97f5
 14b97f5:	pop    ebx
 14b97f6:	add    ebx,0xa5874f
 14b97fc:	mov    al,BYTE PTR [ebx+0x65a2b]
 14b9802:	test   al,al
 14b9804:	jne    14b981d
 14b9806:	lea    eax,[ebx-0x665dec]
 14b980c:	mov    eax,DWORD PTR [eax]
 14b980e:	mov    DWORD PTR [esp],eax
 14b9811:	call   1ca6e8
 14b9816:	mov    BYTE PTR [ebx+0x65a2b],0x1
 14b981d:	mov    edi,DWORD PTR [ebp+0x8]
 14b9820:	lea    eax,[ebx+0x4584c]
 14b9826:	mov    eax,DWORD PTR [eax]
 14b9828:	test   BYTE PTR [eax+0xb2],0x1
 14b982f:	je     14b983f
 14b9831:	cmp    DWORD PTR [eax+0x60],0x0
 14b9835:	jne    14b983f
 14b9837:	mov    DWORD PTR [esp],eax
 14b983a:	call   1db0b8
 14b983f:	mov    DWORD PTR [esp+0x4],0x0
 14b9847:	mov    DWORD PTR [esp],0x0
 14b984e:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 14b9853:	mov    esi,eax
 14b9855:	mov    DWORD PTR [esp],edi
 14b9858:	mov    DWORD PTR [esp+0x4],0x0
 14b9860:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b9865:	test   eax,eax
 14b9867:	je     14b98cb
 14b9869:	mov    DWORD PTR [esp],eax
 14b986c:	mov    DWORD PTR [esp+0x4],0x0
 14b9874:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
 14b9879:	mov    DWORD PTR [esp+0x18],eax
 14b987d:	lea    eax,[ebx+0x44d10]
 14b9883:	mov    eax,DWORD PTR [eax]
 14b9885:	mov    DWORD PTR [esp],eax
 14b9888:	call   20bfb2
 14b988d:	mov    edi,eax
 14b988f:	lea    eax,[ebx+0x49298]
 14b9895:	mov    eax,DWORD PTR [eax]
 14b9897:	mov    DWORD PTR [esp+0x4],eax
 14b989b:	mov    DWORD PTR [esp],edi
 14b989e:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
 14b98a3:	test   esi,esi
 14b98a5:	je     14b98cb
 14b98a7:	mov    DWORD PTR [esp+0x8],edi
 14b98ab:	mov    eax,DWORD PTR [esp+0x18]
 14b98af:	mov    DWORD PTR [esp+0x4],eax
 14b98b3:	mov    DWORD PTR [esp],esi
 14b98b6:	mov    DWORD PTR [esp+0xc],0x0
 14b98be:	call   af6d3e  ; ABHLocaService::GetSkillName
 14b98c3:	lea    esp,[ebp-0xc]
 14b98c6:	pop    esi
 14b98c7:	pop    edi
 14b98c8:	pop    ebx
 14b98c9:	pop    ebp
 14b98ca:	ret
 14b98cb:	call   1fbc48
 14b98d0:	call   14943fc