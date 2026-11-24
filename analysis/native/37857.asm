
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fc200:
 13fc200:	push   ebp
 13fc201:	mov    ebp,esp
 13fc203:	push   ebx
 13fc204:	push   edi
 13fc205:	push   esi
 13fc206:	and    esp,0xfffffff0
 13fc209:	sub    esp,0x20
 13fc20c:	call   13fc211
 13fc211:	pop    ebx
 13fc212:	add    ebx,0xb15d33
 13fc218:	mov    al,BYTE PTR [ebx+0x654e2]
 13fc21e:	test   al,al
 13fc220:	jne    13fc239
 13fc222:	lea    eax,[ebx-0x65e630]
 13fc228:	mov    eax,DWORD PTR [eax]
 13fc22a:	mov    DWORD PTR [esp],eax
 13fc22d:	call   1ca6e8
 13fc232:	mov    BYTE PTR [ebx+0x654e2],0x1
 13fc239:	mov    edi,DWORD PTR [ebp+0x8]
 13fc23c:	lea    eax,[ebx+0x4584c]
 13fc242:	mov    eax,DWORD PTR [eax]
 13fc244:	test   BYTE PTR [eax+0xb2],0x1
 13fc24b:	je     13fc25b
 13fc24d:	cmp    DWORD PTR [eax+0x60],0x0
 13fc251:	jne    13fc25b
 13fc253:	mov    DWORD PTR [esp],eax
 13fc256:	call   1db0b8
 13fc25b:	mov    DWORD PTR [esp+0x4],0x0
 13fc263:	mov    DWORD PTR [esp],0x0
 13fc26a:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 13fc26f:	mov    esi,eax
 13fc271:	mov    DWORD PTR [esp],edi
 13fc274:	mov    DWORD PTR [esp+0x4],0x0
 13fc27c:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fc281:	test   eax,eax
 13fc283:	je     13fc2e7
 13fc285:	mov    DWORD PTR [esp],eax
 13fc288:	mov    DWORD PTR [esp+0x4],0x0
 13fc290:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
 13fc295:	mov    DWORD PTR [esp+0x18],eax
 13fc299:	lea    eax,[ebx+0x44d10]
 13fc29f:	mov    eax,DWORD PTR [eax]
 13fc2a1:	mov    DWORD PTR [esp],eax
 13fc2a4:	call   20bfb2
 13fc2a9:	mov    edi,eax
 13fc2ab:	lea    eax,[ebx+0x49298]
 13fc2b1:	mov    eax,DWORD PTR [eax]
 13fc2b3:	mov    DWORD PTR [esp+0x4],eax
 13fc2b7:	mov    DWORD PTR [esp],edi
 13fc2ba:	call   617b0b
 13fc2bf:	test   esi,esi
 13fc2c1:	je     13fc2e7
 13fc2c3:	mov    DWORD PTR [esp+0x8],edi
 13fc2c7:	mov    eax,DWORD PTR [esp+0x18]
 13fc2cb:	mov    DWORD PTR [esp+0x4],eax
 13fc2cf:	mov    DWORD PTR [esp],esi
 13fc2d2:	mov    DWORD PTR [esp+0xc],0x0
 13fc2da:	call   af6d3e  ; ABHLocaService::GetSkillName
 13fc2df:	lea    esp,[ebp-0xc]
 13fc2e2:	pop    esi
 13fc2e3:	pop    edi
 13fc2e4:	pop    ebx
 13fc2e5:	pop    ebp
 13fc2e6:	ret
 13fc2e7:	call   1fbc48
 13fc2ec:	call   13f24e0