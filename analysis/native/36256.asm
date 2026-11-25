
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0148e192:
 148e192:	push   ebp
 148e193:	mov    ebp,esp
 148e195:	push   ebx
 148e196:	push   edi
 148e197:	push   esi
 148e198:	and    esp,0xfffffff0
 148e19b:	sub    esp,0x40
 148e19e:	call   148e1a3
 148e1a3:	pop    ebx
 148e1a4:	add    ebx,0xa83da1
 148e1aa:	mov    esi,DWORD PTR [ebp+0xc]
 148e1ad:	mov    al,BYTE PTR [ebx+0x65915]
 148e1b3:	test   al,al
 148e1b5:	jne    148e1ce
 148e1b7:	lea    eax,[ebx-0x6703d4]
 148e1bd:	mov    eax,DWORD PTR [eax]
 148e1bf:	mov    DWORD PTR [esp],eax
 148e1c2:	call   1ca6e8
 148e1c7:	mov    BYTE PTR [ebx+0x65915],0x1
 148e1ce:	lea    eax,[ebx+0x44d10]
 148e1d4:	mov    eax,DWORD PTR [eax]
 148e1d6:	mov    DWORD PTR [esp],eax
 148e1d9:	call   20bfb2
 148e1de:	mov    DWORD PTR [esp+0x28],eax
 148e1e2:	lea    ecx,[ebx+0x49298]
 148e1e8:	mov    ecx,DWORD PTR [ecx]
 148e1ea:	mov    DWORD PTR [esp+0x4],ecx
 148e1ee:	mov    DWORD PTR [esp],eax
 148e1f1:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
 148e1f6:	test   esi,esi
 148e1f8:	je     148e4cc
 148e1fe:	mov    eax,DWORD PTR [ebp+0x8]
 148e201:	movss  xmm0,DWORD PTR [eax+0x88]
 148e209:	lea    eax,[ebx+0x45874]
 148e20f:	mov    eax,DWORD PTR [eax]
 148e211:	mov    ecx,DWORD PTR [esi]
 148e213:	movzx  edx,WORD PTR [ecx+0xaa]
 148e21a:	test   edx,edx
 148e21c:	je     148e22d
 148e21e:	mov    edi,DWORD PTR [ecx+0x4c]
 148e221:	xor    esi,esi
 148e223:	cmp    DWORD PTR [edi+esi*8],eax
 148e226:	je     148e24c
 148e228:	inc    esi
 148e229:	cmp    esi,edx
 148e22b:	jb     148e223
 148e22d:	movss  DWORD PTR [esp+0x24],xmm0
 148e233:	mov    DWORD PTR [esp+0x4],eax
 148e237:	mov    esi,DWORD PTR [ebp+0xc]
 148e23a:	mov    DWORD PTR [esp],esi
 148e23d:	mov    DWORD PTR [esp+0x8],0x1c
 148e245:	call   1c1964
 148e24a:	jmp    148e260
 148e24c:	movss  DWORD PTR [esp+0x24],xmm0
 148e252:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 148e256:	lea    eax,[ecx+eax*8+0x194]
 148e25d:	mov    esi,DWORD PTR [ebp+0xc]
 148e260:	mov    ecx,DWORD PTR [eax+0x4]
 148e263:	mov    DWORD PTR [esp+0x4],ecx
 148e267:	mov    DWORD PTR [esp],esi
 148e26a:	call   DWORD PTR [eax]
 148e26c:	fstp   DWORD PTR [esp+0x2c]
 148e270:	movss  xmm1,DWORD PTR [esp+0x2c]
 148e276:	lea    eax,[ebx+0x431bc]
 148e27c:	mov    eax,DWORD PTR [eax]
 148e27e:	test   BYTE PTR [eax+0xb2],0x1
 148e285:	je     148e2a1
 148e287:	cmp    DWORD PTR [eax+0x60],0x0
 148e28b:	jne    148e2a1
 148e28d:	mov    DWORD PTR [esp],eax
 148e290:	movss  DWORD PTR [esp+0x20],xmm1
 148e296:	call   1db0b8
 148e29b:	movss  xmm1,DWORD PTR [esp+0x20]
 148e2a1:	movss  xmm0,DWORD PTR [esp+0x24]
 148e2a7:	mulss  xmm0,xmm1
 148e2ab:	movss  DWORD PTR [esp+0x4],xmm0
 148e2b1:	mov    DWORD PTR [esp+0x8],0x0
 148e2b9:	mov    DWORD PTR [esp],0x0
 148e2c0:	call   f1e4b9  ; System.Convert::ToInt32
 148e2c5:	mov    edi,eax
 148e2c7:	lea    esi,[ebx+0x430e4]
 148e2cd:	mov    eax,DWORD PTR [esi]
 148e2cf:	test   BYTE PTR [eax+0xb2],0x1
 148e2d6:	je     148e2e8
 148e2d8:	cmp    DWORD PTR [eax+0x60],0x0
 148e2dc:	jne    148e2e8
 148e2de:	mov    DWORD PTR [esp],eax
 148e2e1:	call   1db0b8
 148e2e6:	mov    eax,DWORD PTR [esi]
 148e2e8:	mov    DWORD PTR [esp+0x20],esi
 148e2ec:	mov    eax,DWORD PTR [eax+0x50]
 148e2ef:	mov    esi,DWORD PTR [eax]
 148e2f1:	mov    DWORD PTR [esp+0x38],edi
 148e2f5:	lea    eax,[ebx+0x43120]
 148e2fb:	mov    eax,DWORD PTR [eax]
 148e2fd:	lea    ecx,[esp+0x38]
 148e301:	mov    DWORD PTR [esp+0x4],ecx
 148e305:	mov    DWORD PTR [esp],eax
 148e308:	call   20bf14
 148e30d:	mov    DWORD PTR [esp+0x8],eax
 148e311:	mov    DWORD PTR [esp+0x4],esi
 148e315:	mov    DWORD PTR [esp+0xc],0x0
 148e31d:	mov    DWORD PTR [esp],0x0
 148e324:	call   cb2fed  ; System.String::Concat
 148e329:	mov    esi,DWORD PTR [esp+0x28]
 148e32d:	test   esi,esi
 148e32f:	je     148e4cc
 148e335:	lea    ecx,[ebx+0x56adc]  ; literal "{value_1}"
 148e33b:	mov    ecx,DWORD PTR [ecx]
 148e33d:	lea    edx,[ebx+0x4929c]
 148e343:	mov    DWORD PTR [esp+0x24],edx
 148e347:	mov    edx,DWORD PTR [edx]
 148e349:	mov    DWORD PTR [esp+0xc],edx
 148e34d:	mov    DWORD PTR [esp+0x8],eax
 148e351:	mov    DWORD PTR [esp+0x4],ecx
 148e355:	mov    DWORD PTR [esp],esi
 148e358:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 148e35d:	mov    edi,DWORD PTR [esp+0x20]
 148e361:	mov    eax,DWORD PTR [edi]
 148e363:	mov    eax,DWORD PTR [eax+0x50]
 148e366:	mov    eax,DWORD PTR [eax]
 148e368:	mov    DWORD PTR [esp+0x18],eax
 148e36c:	mov    esi,DWORD PTR [ebp+0x8]
 148e36f:	movss  xmm0,DWORD PTR [esi+0x8c]
 148e377:	movss  DWORD PTR [esp+0x34],xmm0
 148e37d:	lea    eax,[ebx+0x433a4]
 148e383:	mov    DWORD PTR [esp+0x1c],eax
 148e387:	mov    eax,DWORD PTR [eax]
 148e389:	lea    ecx,[esp+0x34]
 148e38d:	mov    DWORD PTR [esp+0x4],ecx
 148e391:	mov    DWORD PTR [esp],eax
 148e394:	call   20bf14
 148e399:	mov    DWORD PTR [esp+0x8],eax
 148e39d:	mov    eax,DWORD PTR [esp+0x18]
 148e3a1:	mov    DWORD PTR [esp+0x4],eax
 148e3a5:	mov    DWORD PTR [esp+0xc],0x0
 148e3ad:	mov    DWORD PTR [esp],0x0
 148e3b4:	call   cb2fed  ; System.String::Concat
 148e3b9:	lea    ecx,[ebx+0x56b90]  ; literal "{value_3}"
 148e3bf:	mov    ecx,DWORD PTR [ecx]
 148e3c1:	mov    edx,DWORD PTR [esp+0x24]
 148e3c5:	mov    edx,DWORD PTR [edx]
 148e3c7:	mov    DWORD PTR [esp+0xc],edx
 148e3cb:	mov    DWORD PTR [esp+0x8],eax
 148e3cf:	mov    DWORD PTR [esp+0x4],ecx
 148e3d3:	mov    eax,DWORD PTR [esp+0x28]
 148e3d7:	mov    DWORD PTR [esp],eax
 148e3da:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 148e3df:	mov    eax,DWORD PTR [edi]
 148e3e1:	mov    eax,DWORD PTR [eax+0x50]
 148e3e4:	mov    edi,DWORD PTR [eax]
 148e3e6:	movss  xmm0,DWORD PTR [esi+0x90]
 148e3ee:	movss  DWORD PTR [esp+0x30],xmm0
 148e3f4:	mov    eax,DWORD PTR [esp+0x1c]
 148e3f8:	mov    eax,DWORD PTR [eax]
 148e3fa:	mov    esi,DWORD PTR [esp+0x28]
 148e3fe:	lea    ecx,[esp+0x30]
 148e402:	mov    DWORD PTR [esp+0x4],ecx
 148e406:	mov    DWORD PTR [esp],eax
 148e409:	call   20bf14
 148e40e:	mov    DWORD PTR [esp+0x8],eax
 148e412:	mov    DWORD PTR [esp+0x4],edi
 148e416:	mov    DWORD PTR [esp+0xc],0x0
 148e41e:	mov    DWORD PTR [esp],0x0
 148e425:	call   cb2fed  ; System.String::Concat
 148e42a:	lea    ecx,[ebx+0x56c0c]  ; literal "{value_4}"
 148e430:	mov    ecx,DWORD PTR [ecx]
 148e432:	mov    edx,DWORD PTR [esp+0x24]
 148e436:	mov    edx,DWORD PTR [edx]
 148e438:	mov    DWORD PTR [esp+0xc],edx
 148e43c:	mov    DWORD PTR [esp+0x8],eax
 148e440:	mov    DWORD PTR [esp+0x4],ecx
 148e444:	mov    DWORD PTR [esp],esi
 148e447:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 148e44c:	lea    eax,[ebx+0x4584c]
 148e452:	mov    eax,DWORD PTR [eax]
 148e454:	test   BYTE PTR [eax+0xb2],0x1
 148e45b:	je     148e46b
 148e45d:	cmp    DWORD PTR [eax+0x60],0x0
 148e461:	jne    148e46b
 148e463:	mov    DWORD PTR [esp],eax
 148e466:	call   1db0b8
 148e46b:	mov    DWORD PTR [esp+0x4],0x0
 148e473:	mov    DWORD PTR [esp],0x0
 148e47a:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 148e47f:	mov    edi,eax
 148e481:	mov    eax,DWORD PTR [ebp+0x8]
 148e484:	mov    DWORD PTR [esp],eax
 148e487:	mov    DWORD PTR [esp+0x4],0x0
 148e48f:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 148e494:	test   eax,eax
 148e496:	je     148e4cc
 148e498:	mov    DWORD PTR [esp],eax
 148e49b:	mov    DWORD PTR [esp+0x4],0x0
 148e4a3:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
 148e4a8:	test   edi,edi
 148e4aa:	je     148e4cc
 148e4ac:	mov    DWORD PTR [esp+0x8],esi
 148e4b0:	mov    DWORD PTR [esp+0x4],eax
 148e4b4:	mov    DWORD PTR [esp],edi
 148e4b7:	mov    DWORD PTR [esp+0xc],0x0
 148e4bf:	call   af6df4  ; ABHLocaService::GetSkillDescriptions
 148e4c4:	lea    esp,[ebp-0xc]
 148e4c7:	pop    esi
 148e4c8:	pop    edi
 148e4c9:	pop    ebx
 148e4ca:	pop    ebp
 148e4cb:	ret
 148e4cc:	call   1fbc48
 148e4d1:	call   14943fc