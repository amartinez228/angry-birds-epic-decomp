
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006bf178:
  6bf178:	push   ebp
  6bf179:	mov    ebp,esp
  6bf17b:	push   ebx
  6bf17c:	push   edi
  6bf17d:	push   esi
  6bf17e:	and    esp,0xfffffff0
  6bf181:	sub    esp,0x40
  6bf184:	call   6bf189
  6bf189:	pop    ebx
  6bf18a:	add    ebx,0x1852dbb
  6bf190:	mov    esi,DWORD PTR [ebp+0xc]
  6bf193:	mov    al,BYTE PTR [ebx+0x5f620]
  6bf199:	test   al,al
  6bf19b:	jne    6bf1b4
  6bf19d:	lea    eax,[ebx-0x65997c]
  6bf1a3:	mov    eax,DWORD PTR [eax]
  6bf1a5:	mov    DWORD PTR [esp],eax
  6bf1a8:	call   1ca6e8
  6bf1ad:	mov    BYTE PTR [ebx+0x5f620],0x1
  6bf1b4:	lea    eax,[ebx+0x44d10]
  6bf1ba:	mov    eax,DWORD PTR [eax]
  6bf1bc:	mov    DWORD PTR [esp],eax
  6bf1bf:	call   20bfb2
  6bf1c4:	mov    DWORD PTR [esp+0x28],eax
  6bf1c8:	lea    ecx,[ebx+0x49298]
  6bf1ce:	mov    ecx,DWORD PTR [ecx]
  6bf1d0:	mov    DWORD PTR [esp+0x4],ecx
  6bf1d4:	mov    DWORD PTR [esp],eax
  6bf1d7:	call   617b0b
  6bf1dc:	test   esi,esi
  6bf1de:	je     6bf49d
  6bf1e4:	mov    eax,DWORD PTR [ebp+0x8]
  6bf1e7:	movss  xmm0,DWORD PTR [eax+0x40]
  6bf1ec:	lea    eax,[ebx+0x45874]
  6bf1f2:	mov    eax,DWORD PTR [eax]
  6bf1f4:	mov    ecx,DWORD PTR [esi]
  6bf1f6:	movzx  edx,WORD PTR [ecx+0xaa]
  6bf1fd:	test   edx,edx
  6bf1ff:	je     6bf210
  6bf201:	mov    edi,DWORD PTR [ecx+0x4c]
  6bf204:	xor    esi,esi
  6bf206:	cmp    DWORD PTR [edi+esi*8],eax
  6bf209:	je     6bf22f
  6bf20b:	inc    esi
  6bf20c:	cmp    esi,edx
  6bf20e:	jb     6bf206
  6bf210:	movss  DWORD PTR [esp+0x24],xmm0
  6bf216:	mov    DWORD PTR [esp+0x4],eax
  6bf21a:	mov    esi,DWORD PTR [ebp+0xc]
  6bf21d:	mov    DWORD PTR [esp],esi
  6bf220:	mov    DWORD PTR [esp+0x8],0x1c
  6bf228:	call   1c1964
  6bf22d:	jmp    6bf243
  6bf22f:	movss  DWORD PTR [esp+0x24],xmm0
  6bf235:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  6bf239:	lea    eax,[ecx+eax*8+0x194]
  6bf240:	mov    esi,DWORD PTR [ebp+0xc]
  6bf243:	mov    ecx,DWORD PTR [eax+0x4]
  6bf246:	mov    DWORD PTR [esp+0x4],ecx
  6bf24a:	mov    DWORD PTR [esp],esi
  6bf24d:	call   DWORD PTR [eax]
  6bf24f:	fstp   DWORD PTR [esp+0x2c]
  6bf253:	movss  xmm1,DWORD PTR [esp+0x2c]
  6bf259:	lea    eax,[ebx+0x431bc]
  6bf25f:	mov    eax,DWORD PTR [eax]
  6bf261:	test   BYTE PTR [eax+0xb2],0x1
  6bf268:	je     6bf284
  6bf26a:	cmp    DWORD PTR [eax+0x60],0x0
  6bf26e:	jne    6bf284
  6bf270:	mov    DWORD PTR [esp],eax
  6bf273:	movss  DWORD PTR [esp+0x20],xmm1
  6bf279:	call   1db0b8
  6bf27e:	movss  xmm1,DWORD PTR [esp+0x20]
  6bf284:	movss  xmm0,DWORD PTR [esp+0x24]
  6bf28a:	mulss  xmm0,xmm1
  6bf28e:	movss  DWORD PTR [esp+0x4],xmm0
  6bf294:	mov    DWORD PTR [esp+0x8],0x0
  6bf29c:	mov    DWORD PTR [esp],0x0
  6bf2a3:	call   f1e4b9  ; System.Convert::ToInt32
  6bf2a8:	mov    esi,eax
  6bf2aa:	lea    eax,[ebx+0x430e4]
  6bf2b0:	mov    DWORD PTR [esp+0x24],eax
  6bf2b4:	mov    eax,DWORD PTR [eax]
  6bf2b6:	test   BYTE PTR [eax+0xb2],0x1
  6bf2bd:	je     6bf2d3
  6bf2bf:	cmp    DWORD PTR [eax+0x60],0x0
  6bf2c3:	jne    6bf2d3
  6bf2c5:	mov    DWORD PTR [esp],eax
  6bf2c8:	call   1db0b8
  6bf2cd:	mov    eax,DWORD PTR [esp+0x24]
  6bf2d1:	mov    eax,DWORD PTR [eax]
  6bf2d3:	mov    eax,DWORD PTR [eax+0x50]
  6bf2d6:	mov    edi,DWORD PTR [eax]
  6bf2d8:	mov    DWORD PTR [esp+0x38],esi
  6bf2dc:	lea    eax,[ebx+0x43120]
  6bf2e2:	mov    DWORD PTR [esp+0x1c],eax
  6bf2e6:	mov    eax,DWORD PTR [eax]
  6bf2e8:	lea    ecx,[esp+0x38]
  6bf2ec:	mov    DWORD PTR [esp+0x4],ecx
  6bf2f0:	mov    DWORD PTR [esp],eax
  6bf2f3:	call   20bf14
  6bf2f8:	mov    DWORD PTR [esp+0x8],eax
  6bf2fc:	mov    DWORD PTR [esp+0x4],edi
  6bf300:	mov    DWORD PTR [esp+0xc],0x0
  6bf308:	mov    DWORD PTR [esp],0x0
  6bf30f:	call   cb2fed  ; System.String::Concat
  6bf314:	mov    esi,DWORD PTR [esp+0x28]
  6bf318:	test   esi,esi
  6bf31a:	je     6bf49d
  6bf320:	lea    ecx,[ebx+0x56adc]
  6bf326:	mov    ecx,DWORD PTR [ecx]
  6bf328:	lea    edx,[ebx+0x4929c]
  6bf32e:	mov    DWORD PTR [esp+0x20],edx
  6bf332:	mov    edx,DWORD PTR [edx]
  6bf334:	mov    DWORD PTR [esp+0xc],edx
  6bf338:	mov    DWORD PTR [esp+0x8],eax
  6bf33c:	mov    DWORD PTR [esp+0x4],ecx
  6bf340:	mov    DWORD PTR [esp],esi
  6bf343:	call   619d68
  6bf348:	mov    eax,DWORD PTR [esp+0x24]
  6bf34c:	mov    eax,DWORD PTR [eax]
  6bf34e:	mov    eax,DWORD PTR [eax+0x50]
  6bf351:	mov    edi,DWORD PTR [eax]
  6bf353:	mov    esi,DWORD PTR [ebp+0x8]
  6bf356:	mov    eax,DWORD PTR [esi+0x3c]
  6bf359:	mov    DWORD PTR [esp+0x34],eax
  6bf35d:	mov    eax,DWORD PTR [esp+0x1c]
  6bf361:	mov    eax,DWORD PTR [eax]
  6bf363:	lea    ecx,[esp+0x34]
  6bf367:	mov    DWORD PTR [esp+0x4],ecx
  6bf36b:	mov    DWORD PTR [esp],eax
  6bf36e:	call   20bf14
  6bf373:	mov    DWORD PTR [esp+0x8],eax
  6bf377:	mov    DWORD PTR [esp+0x4],edi
  6bf37b:	mov    DWORD PTR [esp+0xc],0x0
  6bf383:	mov    DWORD PTR [esp],0x0
  6bf38a:	call   cb2fed  ; System.String::Concat
  6bf38f:	lea    ecx,[ebx+0x56b94]
  6bf395:	mov    ecx,DWORD PTR [ecx]
  6bf397:	mov    edx,DWORD PTR [esp+0x20]
  6bf39b:	mov    edx,DWORD PTR [edx]
  6bf39d:	mov    DWORD PTR [esp+0xc],edx
  6bf3a1:	mov    DWORD PTR [esp+0x8],eax
  6bf3a5:	mov    DWORD PTR [esp+0x4],ecx
  6bf3a9:	mov    eax,DWORD PTR [esp+0x28]
  6bf3ad:	mov    DWORD PTR [esp],eax
  6bf3b0:	call   619d68
  6bf3b5:	mov    eax,DWORD PTR [esp+0x24]
  6bf3b9:	mov    eax,DWORD PTR [eax]
  6bf3bb:	mov    eax,DWORD PTR [eax+0x50]
  6bf3be:	mov    edi,DWORD PTR [eax]
  6bf3c0:	movss  xmm0,DWORD PTR [esi+0x44]
  6bf3c5:	movss  DWORD PTR [esp+0x30],xmm0
  6bf3cb:	lea    eax,[ebx+0x433a4]
  6bf3d1:	mov    eax,DWORD PTR [eax]
  6bf3d3:	lea    ecx,[esp+0x30]
  6bf3d7:	mov    DWORD PTR [esp+0x4],ecx
  6bf3db:	mov    DWORD PTR [esp],eax
  6bf3de:	call   20bf14
  6bf3e3:	mov    DWORD PTR [esp+0x8],eax
  6bf3e7:	mov    DWORD PTR [esp+0x4],edi
  6bf3eb:	mov    esi,DWORD PTR [esp+0x28]
  6bf3ef:	mov    DWORD PTR [esp+0xc],0x0
  6bf3f7:	mov    DWORD PTR [esp],0x0
  6bf3fe:	call   cb2fed  ; System.String::Concat
  6bf403:	lea    ecx,[ebx+0x56b90]
  6bf409:	mov    ecx,DWORD PTR [ecx]
  6bf40b:	mov    edx,DWORD PTR [esp+0x20]
  6bf40f:	mov    edx,DWORD PTR [edx]
  6bf411:	mov    DWORD PTR [esp+0xc],edx
  6bf415:	mov    DWORD PTR [esp+0x8],eax
  6bf419:	mov    DWORD PTR [esp+0x4],ecx
  6bf41d:	mov    DWORD PTR [esp],esi
  6bf420:	call   619d68
  6bf425:	lea    eax,[ebx+0x4584c]
  6bf42b:	mov    eax,DWORD PTR [eax]
  6bf42d:	test   BYTE PTR [eax+0xb2],0x1
  6bf434:	je     6bf444
  6bf436:	cmp    DWORD PTR [eax+0x60],0x0
  6bf43a:	jne    6bf444
  6bf43c:	mov    DWORD PTR [esp],eax
  6bf43f:	call   1db0b8
  6bf444:	mov    DWORD PTR [esp+0x4],0x0
  6bf44c:	mov    DWORD PTR [esp],0x0
  6bf453:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  6bf458:	mov    edi,eax
  6bf45a:	mov    eax,DWORD PTR [ebp+0x8]
  6bf45d:	mov    DWORD PTR [esp],eax
  6bf460:	mov    DWORD PTR [esp+0x4],0x0
  6bf468:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bf46d:	test   eax,eax
  6bf46f:	je     6bf49d
  6bf471:	mov    DWORD PTR [esp],eax
  6bf474:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
  6bf479:	test   edi,edi
  6bf47b:	je     6bf49d
  6bf47d:	mov    DWORD PTR [esp+0x8],esi
  6bf481:	mov    DWORD PTR [esp+0x4],eax
  6bf485:	mov    DWORD PTR [esp],edi
  6bf488:	mov    DWORD PTR [esp+0xc],0x0
  6bf490:	call   af6df4  ; ABHLocaService::GetSkillDescriptions
  6bf495:	lea    esp,[ebp-0xc]
  6bf498:	pop    esi
  6bf499:	pop    edi
  6bf49a:	pop    ebx
  6bf49b:	pop    ebp
  6bf49c:	ret
  6bf49d:	call   1fbc48
  6bf4a2:	call   6b106a