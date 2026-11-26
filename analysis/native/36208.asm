
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eea41b:
  eea41b:	push   ebp
  eea41c:	mov    ebp,esp
  eea41e:	push   ebx
  eea41f:	push   edi
  eea420:	push   esi
  eea421:	and    esp,0xfffffff0
  eea424:	sub    esp,0x40
  eea427:	call   eea42c
  eea42c:	pop    ebx
  eea42d:	add    ebx,0x1027b18
  eea433:	mov    esi,DWORD PTR [ebp+0xc]
  eea436:	mov    al,BYTE PTR [ebx+0x627ef]
  eea43c:	test   al,al
  eea43e:	jne    eea457
  eea440:	lea    eax,[ebx-0x67045c]
  eea446:	mov    eax,DWORD PTR [eax]
  eea448:	mov    DWORD PTR [esp],eax
  eea44b:	call   1ca6e8
  eea450:	mov    BYTE PTR [ebx+0x627ef],0x1
  eea457:	lea    eax,[ebx+0x44d10]
  eea45d:	mov    eax,DWORD PTR [eax]
  eea45f:	mov    DWORD PTR [esp],eax
  eea462:	call   20bfb2
  eea467:	mov    DWORD PTR [esp+0x24],eax
  eea46b:	lea    ecx,[ebx+0x49298]
  eea471:	mov    ecx,DWORD PTR [ecx]
  eea473:	mov    DWORD PTR [esp+0x4],ecx
  eea477:	mov    DWORD PTR [esp],eax
  eea47a:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  eea47f:	test   esi,esi
  eea481:	je     eea7f2
  eea487:	mov    eax,DWORD PTR [ebp+0x8]
  eea48a:	movss  xmm0,DWORD PTR [eax+0x88]
  eea492:	lea    eax,[ebx+0x45874]
  eea498:	mov    eax,DWORD PTR [eax]
  eea49a:	mov    ecx,DWORD PTR [esi]
  eea49c:	movzx  edx,WORD PTR [ecx+0xaa]
  eea4a3:	test   edx,edx
  eea4a5:	je     eea4b6
  eea4a7:	mov    edi,DWORD PTR [ecx+0x4c]
  eea4aa:	xor    esi,esi
  eea4ac:	cmp    DWORD PTR [edi+esi*8],eax
  eea4af:	je     eea4d5
  eea4b1:	inc    esi
  eea4b2:	cmp    esi,edx
  eea4b4:	jb     eea4ac
  eea4b6:	movss  DWORD PTR [esp+0x20],xmm0
  eea4bc:	mov    DWORD PTR [esp+0x4],eax
  eea4c0:	mov    esi,DWORD PTR [ebp+0xc]
  eea4c3:	mov    DWORD PTR [esp],esi
  eea4c6:	mov    DWORD PTR [esp+0x8],0x1c
  eea4ce:	call   1c1964
  eea4d3:	jmp    eea4e9
  eea4d5:	movss  DWORD PTR [esp+0x20],xmm0
  eea4db:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eea4df:	lea    eax,[ecx+eax*8+0x194]
  eea4e6:	mov    esi,DWORD PTR [ebp+0xc]
  eea4e9:	mov    ecx,DWORD PTR [eax+0x4]
  eea4ec:	mov    DWORD PTR [esp+0x4],ecx
  eea4f0:	mov    DWORD PTR [esp],esi
  eea4f3:	call   DWORD PTR [eax]
  eea4f5:	fstp   DWORD PTR [esp+0x28]
  eea4f9:	movss  xmm1,DWORD PTR [esp+0x28]
  eea4ff:	lea    eax,[ebx+0x431bc]
  eea505:	mov    eax,DWORD PTR [eax]
  eea507:	test   BYTE PTR [eax+0xb2],0x1
  eea50e:	je     eea52a
  eea510:	cmp    DWORD PTR [eax+0x60],0x0
  eea514:	jne    eea52a
  eea516:	mov    DWORD PTR [esp],eax
  eea519:	movss  DWORD PTR [esp+0x1c],xmm1
  eea51f:	call   1db0b8
  eea524:	movss  xmm1,DWORD PTR [esp+0x1c]
  eea52a:	movss  xmm0,DWORD PTR [esp+0x20]
  eea530:	mulss  xmm0,xmm1
  eea534:	movss  DWORD PTR [esp+0x4],xmm0
  eea53a:	mov    DWORD PTR [esp+0x8],0x0
  eea542:	mov    DWORD PTR [esp],0x0
  eea549:	call   f1e4b9  ; System.Convert::ToInt32
  eea54e:	mov    edi,eax
  eea550:	lea    esi,[ebx+0x430e4]
  eea556:	mov    eax,DWORD PTR [esi]
  eea558:	test   BYTE PTR [eax+0xb2],0x1
  eea55f:	je     eea571
  eea561:	cmp    DWORD PTR [eax+0x60],0x0
  eea565:	jne    eea571
  eea567:	mov    DWORD PTR [esp],eax
  eea56a:	call   1db0b8
  eea56f:	mov    eax,DWORD PTR [esi]
  eea571:	mov    DWORD PTR [esp+0x1c],esi
  eea575:	mov    eax,DWORD PTR [eax+0x50]
  eea578:	mov    esi,DWORD PTR [eax]
  eea57a:	mov    DWORD PTR [esp+0x38],edi
  eea57e:	lea    eax,[ebx+0x43120]
  eea584:	mov    eax,DWORD PTR [eax]
  eea586:	lea    ecx,[esp+0x38]
  eea58a:	mov    DWORD PTR [esp+0x4],ecx
  eea58e:	mov    DWORD PTR [esp],eax
  eea591:	call   20bf14
  eea596:	mov    DWORD PTR [esp+0x8],eax
  eea59a:	mov    DWORD PTR [esp+0x4],esi
  eea59e:	mov    DWORD PTR [esp+0xc],0x0
  eea5a6:	mov    DWORD PTR [esp],0x0
  eea5ad:	call   cb2fed  ; System.String::Concat
  eea5b2:	mov    esi,DWORD PTR [esp+0x24]
  eea5b6:	test   esi,esi
  eea5b8:	je     eea7f2
  eea5be:	lea    ecx,[ebx+0x56adc]  ; literal "{value_1}"
  eea5c4:	mov    ecx,DWORD PTR [ecx]
  eea5c6:	lea    edx,[ebx+0x4929c]
  eea5cc:	mov    DWORD PTR [esp+0x20],edx
  eea5d0:	mov    edx,DWORD PTR [edx]
  eea5d2:	mov    DWORD PTR [esp+0xc],edx
  eea5d6:	mov    DWORD PTR [esp+0x8],eax
  eea5da:	mov    DWORD PTR [esp+0x4],ecx
  eea5de:	mov    DWORD PTR [esp],esi
  eea5e1:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  eea5e6:	mov    edi,DWORD PTR [esp+0x1c]
  eea5ea:	mov    eax,DWORD PTR [edi]
  eea5ec:	mov    eax,DWORD PTR [eax+0x50]
  eea5ef:	mov    eax,DWORD PTR [eax]
  eea5f1:	mov    DWORD PTR [esp+0x18],eax
  eea5f5:	mov    eax,DWORD PTR [ebp+0x8]
  eea5f8:	movss  xmm0,DWORD PTR [eax+0x8c]
  eea600:	movss  DWORD PTR [esp+0x34],xmm0
  eea606:	lea    esi,[ebx+0x433a4]
  eea60c:	mov    DWORD PTR [esp+0x14],esi
  eea610:	mov    eax,DWORD PTR [esi]
  eea612:	lea    ecx,[esp+0x34]
  eea616:	mov    DWORD PTR [esp+0x4],ecx
  eea61a:	mov    DWORD PTR [esp],eax
  eea61d:	call   20bf14
  eea622:	mov    DWORD PTR [esp+0x8],eax
  eea626:	mov    eax,DWORD PTR [esp+0x18]
  eea62a:	mov    DWORD PTR [esp+0x4],eax
  eea62e:	mov    DWORD PTR [esp+0xc],0x0
  eea636:	mov    DWORD PTR [esp],0x0
  eea63d:	call   cb2fed  ; System.String::Concat
  eea642:	lea    ecx,[ebx+0x56b94]  ; literal "{value_2}"
  eea648:	mov    ecx,DWORD PTR [ecx]
  eea64a:	mov    edx,DWORD PTR [esp+0x20]
  eea64e:	mov    edx,DWORD PTR [edx]
  eea650:	mov    DWORD PTR [esp+0xc],edx
  eea654:	mov    DWORD PTR [esp+0x8],eax
  eea658:	mov    DWORD PTR [esp+0x4],ecx
  eea65c:	mov    eax,DWORD PTR [esp+0x24]
  eea660:	mov    DWORD PTR [esp],eax
  eea663:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  eea668:	mov    eax,DWORD PTR [edi]
  eea66a:	mov    eax,DWORD PTR [eax+0x50]
  eea66d:	mov    eax,DWORD PTR [eax]
  eea66f:	mov    DWORD PTR [esp+0x18],eax
  eea673:	mov    edi,DWORD PTR [ebp+0x8]
  eea676:	movss  xmm0,DWORD PTR [edi+0x94]
  eea67e:	movss  DWORD PTR [esp+0x30],xmm0
  eea684:	mov    eax,DWORD PTR [esi]
  eea686:	lea    ecx,[esp+0x30]
  eea68a:	mov    DWORD PTR [esp+0x4],ecx
  eea68e:	mov    DWORD PTR [esp],eax
  eea691:	call   20bf14
  eea696:	mov    DWORD PTR [esp+0x8],eax
  eea69a:	mov    eax,DWORD PTR [esp+0x18]
  eea69e:	mov    DWORD PTR [esp+0x4],eax
  eea6a2:	mov    DWORD PTR [esp+0xc],0x0
  eea6aa:	mov    DWORD PTR [esp],0x0
  eea6b1:	call   cb2fed  ; System.String::Concat
  eea6b6:	lea    ecx,[ebx+0x56c0c]  ; literal "{value_4}"
  eea6bc:	mov    ecx,DWORD PTR [ecx]
  eea6be:	mov    edx,DWORD PTR [esp+0x20]
  eea6c2:	mov    edx,DWORD PTR [edx]
  eea6c4:	mov    DWORD PTR [esp+0xc],edx
  eea6c8:	mov    DWORD PTR [esp+0x8],eax
  eea6cc:	mov    DWORD PTR [esp+0x4],ecx
  eea6d0:	mov    eax,DWORD PTR [esp+0x24]
  eea6d4:	mov    DWORD PTR [esp],eax
  eea6d7:	mov    esi,edi
  eea6d9:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  eea6de:	movss  xmm0,DWORD PTR [esi+0x90]
  eea6e6:	xorps  xmm1,xmm1
  eea6e9:	ucomiss xmm0,xmm1
  eea6ec:	jbe    eea77e
  eea6f2:	mov    ecx,DWORD PTR [esp+0x1c]
  eea6f6:	mov    eax,DWORD PTR [ecx]
  eea6f8:	mov    edi,ecx
  eea6fa:	test   BYTE PTR [eax+0xb2],0x1
  eea701:	je     eea71b
  eea703:	cmp    DWORD PTR [eax+0x60],0x0
  eea707:	jne    eea71b
  eea709:	mov    DWORD PTR [esp],eax
  eea70c:	call   1db0b8
  eea711:	mov    eax,DWORD PTR [edi]
  eea713:	movss  xmm0,DWORD PTR [esi+0x90]
  eea71b:	mov    ecx,DWORD PTR [esp+0x14]
  eea71f:	mov    eax,DWORD PTR [eax+0x50]
  eea722:	mov    edi,DWORD PTR [eax]
  eea724:	movss  DWORD PTR [esp+0x2c],xmm0
  eea72a:	mov    eax,DWORD PTR [ecx]
  eea72c:	lea    ecx,[esp+0x2c]
  eea730:	mov    DWORD PTR [esp+0x4],ecx
  eea734:	mov    DWORD PTR [esp],eax
  eea737:	call   20bf14
  eea73c:	mov    DWORD PTR [esp+0x8],eax
  eea740:	mov    DWORD PTR [esp+0x4],edi
  eea744:	mov    DWORD PTR [esp+0xc],0x0
  eea74c:	mov    DWORD PTR [esp],0x0
  eea753:	call   cb2fed  ; System.String::Concat
  eea758:	lea    ecx,[ebx+0x56b90]  ; literal "{value_3}"
  eea75e:	mov    ecx,DWORD PTR [ecx]
  eea760:	mov    edx,DWORD PTR [esp+0x20]
  eea764:	mov    edx,DWORD PTR [edx]
  eea766:	mov    DWORD PTR [esp+0xc],edx
  eea76a:	mov    DWORD PTR [esp+0x8],eax
  eea76e:	mov    DWORD PTR [esp+0x4],ecx
  eea772:	mov    eax,DWORD PTR [esp+0x24]
  eea776:	mov    DWORD PTR [esp],eax
  eea779:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  eea77e:	lea    eax,[ebx+0x4584c]
  eea784:	mov    eax,DWORD PTR [eax]
  eea786:	test   BYTE PTR [eax+0xb2],0x1
  eea78d:	je     eea79d
  eea78f:	cmp    DWORD PTR [eax+0x60],0x0
  eea793:	jne    eea79d
  eea795:	mov    DWORD PTR [esp],eax
  eea798:	call   1db0b8
  eea79d:	mov    DWORD PTR [esp+0x4],0x0
  eea7a5:	mov    DWORD PTR [esp],0x0
  eea7ac:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  eea7b1:	mov    edi,eax
  eea7b3:	mov    eax,DWORD PTR [esi+0x8]
  eea7b6:	test   eax,eax
  eea7b8:	mov    esi,DWORD PTR [esp+0x24]
  eea7bc:	je     eea7f2
  eea7be:	mov    DWORD PTR [esp],eax
  eea7c1:	mov    DWORD PTR [esp+0x4],0x0
  eea7c9:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
  eea7ce:	test   edi,edi
  eea7d0:	je     eea7f2
  eea7d2:	mov    DWORD PTR [esp+0x8],esi
  eea7d6:	mov    DWORD PTR [esp+0x4],eax
  eea7da:	mov    DWORD PTR [esp],edi
  eea7dd:	mov    DWORD PTR [esp+0xc],0x0
  eea7e5:	call   af6df4  ; ABHLocaService::GetSkillDescriptions
  eea7ea:	lea    esp,[ebp-0xc]
  eea7ed:	pop    esi
  eea7ee:	pop    edi
  eea7ef:	pop    ebx
  eea7f0:	pop    ebp
  eea7f1:	ret
  eea7f2:	call   1fbc48
  eea7f7:	call   ebbb41