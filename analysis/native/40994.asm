
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050f1c5:
  50f1c5:	push   ebp
  50f1c6:	mov    ebp,esp
  50f1c8:	push   ebx
  50f1c9:	push   edi
  50f1ca:	push   esi
  50f1cb:	and    esp,0xfffffff0
  50f1ce:	sub    esp,0x20
  50f1d1:	call   50f1d6
  50f1d6:	pop    ebx
  50f1d7:	add    ebx,0x1a02d6e
  50f1dd:	mov    esi,DWORD PTR [ebp+0xc]
  50f1e0:	mov    al,BYTE PTR [ebx+0x5d514]
  50f1e6:	test   al,al
  50f1e8:	jne    50f201
  50f1ea:	lea    eax,[ebx-0x66f3c4]
  50f1f0:	mov    eax,DWORD PTR [eax]
  50f1f2:	mov    DWORD PTR [esp],eax
  50f1f5:	call   1ca6e8
  50f1fa:	mov    BYTE PTR [ebx+0x5d514],0x1
  50f201:	mov    DWORD PTR [esp+0x4],esi
  50f205:	call   50f9f6  ; ABH.Services.Logic.BattleService::GetRandomCombo
  50f20a:	mov    edi,eax
  50f20c:	test   edi,edi
  50f20e:	je     50f44f
  50f214:	lea    eax,[ebx+0x46034]
  50f21a:	mov    eax,DWORD PTR [eax]
  50f21c:	mov    DWORD PTR [esp],eax
  50f21f:	call   20bfb2
  50f224:	mov    esi,eax
  50f226:	mov    DWORD PTR [esp],esi
  50f229:	mov    DWORD PTR [esp+0x4],0x0
  50f231:	call   ec7cd7  ; ABH.GameDatas.Battle.ComboInfo::.ctor
  50f236:	test   esi,esi
  50f238:	je     50f460
  50f23e:	mov    DWORD PTR [esi+0x10],edi
  50f241:	mov    DWORD PTR [esi+0x8],0x0
  50f248:	mov    ecx,DWORD PTR [ebp+0xc]
  50f24b:	test   ecx,ecx
  50f24d:	je     50f460
  50f253:	lea    eax,[ebx+0x45874]
  50f259:	mov    DWORD PTR [esp+0x18],eax
  50f25d:	mov    eax,DWORD PTR [eax]
  50f25f:	mov    ecx,DWORD PTR [ecx]
  50f261:	mov    DWORD PTR [esp+0x14],ecx
  50f265:	movzx  edx,WORD PTR [ecx+0xaa]
  50f26c:	test   edx,edx
  50f26e:	je     50f283
  50f270:	mov    ecx,DWORD PTR [esp+0x14]
  50f274:	mov    edi,DWORD PTR [ecx+0x4c]
  50f277:	xor    ecx,ecx
  50f279:	cmp    DWORD PTR [edi+ecx*8],eax
  50f27c:	je     50f29c
  50f27e:	inc    ecx
  50f27f:	cmp    ecx,edx
  50f281:	jb     50f279
  50f283:	mov    DWORD PTR [esp+0x4],eax
  50f287:	mov    edi,DWORD PTR [ebp+0xc]
  50f28a:	mov    DWORD PTR [esp],edi
  50f28d:	mov    DWORD PTR [esp+0x8],0x8
  50f295:	call   1c1964
  50f29a:	jmp    50f2ae
  50f29c:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  50f2a0:	mov    ecx,DWORD PTR [esp+0x14]
  50f2a4:	lea    eax,[ecx+eax*8+0xf4]
  50f2ab:	mov    edi,DWORD PTR [ebp+0xc]
  50f2ae:	mov    ecx,DWORD PTR [eax+0x4]
  50f2b1:	mov    DWORD PTR [esp+0x8],ecx
  50f2b5:	mov    DWORD PTR [esp+0x4],esi
  50f2b9:	mov    DWORD PTR [esp],edi
  50f2bc:	call   DWORD PTR [eax]
  50f2be:	mov    eax,DWORD PTR [esp+0x18]
  50f2c2:	mov    eax,DWORD PTR [eax]
  50f2c4:	mov    ecx,DWORD PTR [edi]
  50f2c6:	movzx  edx,WORD PTR [ecx+0xaa]
  50f2cd:	test   edx,edx
  50f2cf:	je     50f2e0
  50f2d1:	mov    esi,DWORD PTR [ecx+0x4c]
  50f2d4:	xor    edi,edi
  50f2d6:	cmp    DWORD PTR [esi+edi*8],eax
  50f2d9:	je     50f2fb
  50f2db:	inc    edi
  50f2dc:	cmp    edi,edx
  50f2de:	jb     50f2d6
  50f2e0:	mov    DWORD PTR [esp+0x4],eax
  50f2e4:	mov    esi,DWORD PTR [ebp+0xc]
  50f2e7:	mov    DWORD PTR [esp],esi
  50f2ea:	mov    DWORD PTR [esp+0x8],0x7
  50f2f2:	call   1c1964
  50f2f7:	mov    ecx,eax
  50f2f9:	jmp    50f309
  50f2fb:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f2ff:	lea    ecx,[ecx+eax*8+0xec]
  50f306:	mov    esi,DWORD PTR [ebp+0xc]
  50f309:	mov    eax,DWORD PTR [ecx+0x4]
  50f30c:	mov    DWORD PTR [esp+0x4],eax
  50f310:	mov    DWORD PTR [esp],esi
  50f313:	call   DWORD PTR [ecx]
  50f315:	test   eax,eax
  50f317:	je     50f460
  50f31d:	mov    eax,DWORD PTR [eax+0x10]
  50f320:	test   eax,eax
  50f322:	je     50f460
  50f328:	mov    DWORD PTR [esp],eax
  50f32b:	mov    DWORD PTR [esp+0x4],0x0
  50f333:	call   179aeca  ; ABH.Shared.Models.Generic.AiCombo::get_ComboChain
  50f338:	test   eax,eax
  50f33a:	je     50f3f2
  50f340:	mov    eax,DWORD PTR [esp+0x18]
  50f344:	mov    eax,DWORD PTR [eax]
  50f346:	mov    ecx,DWORD PTR [esi]
  50f348:	movzx  edx,WORD PTR [ecx+0xaa]
  50f34f:	test   edx,edx
  50f351:	je     50f362
  50f353:	mov    esi,DWORD PTR [ecx+0x4c]
  50f356:	xor    edi,edi
  50f358:	cmp    DWORD PTR [esi+edi*8],eax
  50f35b:	je     50f37d
  50f35d:	inc    edi
  50f35e:	cmp    edi,edx
  50f360:	jb     50f358
  50f362:	mov    DWORD PTR [esp+0x4],eax
  50f366:	mov    esi,DWORD PTR [ebp+0xc]
  50f369:	mov    DWORD PTR [esp],esi
  50f36c:	mov    DWORD PTR [esp+0x8],0x7
  50f374:	call   1c1964
  50f379:	mov    ecx,eax
  50f37b:	jmp    50f38b
  50f37d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f381:	lea    ecx,[ecx+eax*8+0xec]
  50f388:	mov    esi,DWORD PTR [ebp+0xc]
  50f38b:	mov    eax,DWORD PTR [ecx+0x4]
  50f38e:	mov    DWORD PTR [esp+0x4],eax
  50f392:	mov    DWORD PTR [esp],esi
  50f395:	call   DWORD PTR [ecx]
  50f397:	test   eax,eax
  50f399:	je     50f460
  50f39f:	mov    eax,DWORD PTR [eax+0x10]
  50f3a2:	test   eax,eax
  50f3a4:	je     50f460
  50f3aa:	mov    DWORD PTR [esp],eax
  50f3ad:	mov    DWORD PTR [esp+0x4],0x0
  50f3b5:	call   179aeca  ; ABH.Shared.Models.Generic.AiCombo::get_ComboChain
  50f3ba:	test   eax,eax
  50f3bc:	je     50f460
  50f3c2:	lea    ecx,[ebx+0x48c20]
  50f3c8:	mov    ecx,DWORD PTR [ecx]
  50f3ca:	mov    DWORD PTR [esp+0x4],ecx
  50f3ce:	mov    DWORD PTR [esp],eax
  50f3d1:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  50f3d6:	test   eax,eax
  50f3d8:	je     50f3f2
  50f3da:	mov    eax,DWORD PTR [ebp+0x10]
  50f3dd:	mov    ecx,DWORD PTR [ebp+0x8]
  50f3e0:	mov    DWORD PTR [esp+0x8],eax
  50f3e4:	mov    DWORD PTR [esp+0x4],esi
  50f3e8:	mov    DWORD PTR [esp],ecx
  50f3eb:	call   50f46a  ; ABH.Services.Logic.BattleService::GetCurrentSkillFromComboAndUpdateCombo
  50f3f0:	jmp    50f458
  50f3f2:	mov    eax,DWORD PTR [esp+0x18]
  50f3f6:	mov    eax,DWORD PTR [eax]
  50f3f8:	mov    ecx,DWORD PTR [esi]
  50f3fa:	movzx  edx,WORD PTR [ecx+0xaa]
  50f401:	test   edx,edx
  50f403:	je     50f414
  50f405:	mov    esi,DWORD PTR [ecx+0x4c]
  50f408:	xor    edi,edi
  50f40a:	cmp    DWORD PTR [esi+edi*8],eax
  50f40d:	je     50f42d
  50f40f:	inc    edi
  50f410:	cmp    edi,edx
  50f412:	jb     50f40a
  50f414:	mov    DWORD PTR [esp+0x4],eax
  50f418:	mov    esi,DWORD PTR [ebp+0xc]
  50f41b:	mov    DWORD PTR [esp],esi
  50f41e:	mov    DWORD PTR [esp+0x8],0x8
  50f426:	call   1c1964
  50f42b:	jmp    50f43b
  50f42d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  50f431:	lea    eax,[ecx+eax*8+0xf4]
  50f438:	mov    esi,DWORD PTR [ebp+0xc]
  50f43b:	mov    ecx,DWORD PTR [eax+0x4]
  50f43e:	mov    DWORD PTR [esp+0x8],ecx
  50f442:	mov    DWORD PTR [esp],esi
  50f445:	mov    DWORD PTR [esp+0x4],0x0
  50f44d:	call   DWORD PTR [eax]
  50f44f:	mov    DWORD PTR [esp+0x4],esi
  50f453:	call   50fe4a  ; ABH.Services.Logic.BattleService::GetFallbackSkill
  50f458:	lea    esp,[ebp-0xc]
  50f45b:	pop    esi
  50f45c:	pop    edi
  50f45d:	pop    ebx
  50f45e:	pop    ebp
  50f45f:	ret
  50f460:	call   1fbc48
  50f465:	call   540b98