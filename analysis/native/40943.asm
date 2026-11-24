
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0050463e:
  50463e:	push   ebp
  50463f:	mov    ebp,esp
  504641:	push   ebx
  504642:	push   edi
  504643:	push   esi
  504644:	and    esp,0xfffffff0
  504647:	sub    esp,0x30
  50464a:	call   50464f
  50464f:	pop    ebx
  504650:	add    ebx,0x1a0d8f5
  504656:	mov    esi,DWORD PTR [ebp+0xc]
  504659:	mov    al,BYTE PTR [ebx+0x5d4e6]
  50465f:	test   al,al
  504661:	jne    50467a
  504663:	lea    eax,[ebx-0x66f418]
  504669:	mov    eax,DWORD PTR [eax]
  50466b:	mov    DWORD PTR [esp],eax
  50466e:	call   1ca6e8
  504673:	mov    BYTE PTR [ebx+0x5d4e6],0x1
  50467a:	test   esi,esi
  50467c:	je     5047e4
  504682:	mov    DWORD PTR [esp],esi
  504685:	mov    DWORD PTR [esp+0x4],0x0
  50468d:	call   ec178b  ; ABH.GameDatas.Battle.BattleGameData::get_m_AccumulatedStrengthPoints
  504692:	mov    DWORD PTR [esp+0x18],eax
  504696:	lea    eax,[ebx+0x45820]
  50469c:	mov    eax,DWORD PTR [eax]
  50469e:	test   BYTE PTR [eax+0xb2],0x1
  5046a5:	je     5046b5
  5046a7:	cmp    DWORD PTR [eax+0x60],0x0
  5046ab:	jne    5046b5
  5046ad:	mov    DWORD PTR [esp],eax
  5046b0:	call   1db0b8
  5046b5:	mov    DWORD PTR [esp+0x4],0x0
  5046bd:	mov    DWORD PTR [esp],0x0
  5046c4:	call   107cf95  ; DIContainerBalancing::get_Service
  5046c9:	test   eax,eax
  5046cb:	je     5047e4
  5046d1:	lea    ecx,[ebx+0x4afac]
  5046d7:	mov    edx,DWORD PTR [ecx]
  5046d9:	mov    DWORD PTR [esp+0x24],edx
  5046dd:	lea    ecx,[ebx+0x5756c]  ; literal "default_score"
  5046e3:	mov    ecx,DWORD PTR [ecx]
  5046e5:	mov    DWORD PTR [esp+0x28],ecx
  5046e9:	mov    ecx,DWORD PTR [edx+0xc]
  5046ec:	movzx  edx,WORD PTR [edx+0x2c]
  5046f0:	mov    DWORD PTR [esp+0x1c],edx
  5046f4:	mov    edx,DWORD PTR [eax]
  5046f6:	mov    DWORD PTR [esp+0x20],eax
  5046fa:	movzx  eax,WORD PTR [edx+0xaa]
  504701:	test   eax,eax
  504703:	je     504714
  504705:	mov    edi,DWORD PTR [edx+0x4c]
  504708:	xor    esi,esi
  50470a:	cmp    DWORD PTR [edi+esi*8],ecx
  50470d:	je     50472e
  50470f:	inc    esi
  504710:	cmp    esi,eax
  504712:	jb     50470a
  504714:	mov    eax,DWORD PTR [esp+0x1c]
  504718:	mov    DWORD PTR [esp+0x8],eax
  50471c:	mov    DWORD PTR [esp+0x4],ecx
  504720:	mov    esi,DWORD PTR [esp+0x20]
  504724:	mov    DWORD PTR [esp],esi
  504727:	call   1c1964
  50472c:	jmp    504741
  50472e:	mov    eax,DWORD PTR [esp+0x1c]
  504732:	add    eax,DWORD PTR [edi+esi*8+0x4]
  504736:	lea    eax,[edx+eax*8+0xb4]
  50473d:	mov    esi,DWORD PTR [esp+0x20]
  504741:	mov    eax,DWORD PTR [eax+0x4]
  504744:	mov    ecx,DWORD PTR [esp+0x24]
  504748:	mov    DWORD PTR [esp+0x4],ecx
  50474c:	mov    DWORD PTR [esp],eax
  50474f:	call   1da450
  504754:	mov    DWORD PTR [esp+0x8],eax
  504758:	mov    ecx,DWORD PTR [esp+0x28]
  50475c:	mov    DWORD PTR [esp+0x4],ecx
  504760:	mov    DWORD PTR [esp],esi
  504763:	call   DWORD PTR [eax]
  504765:	test   eax,eax
  504767:	mov    esi,DWORD PTR [ebp+0xc]
  50476a:	je     5047e4
  50476c:	mov    DWORD PTR [esp],eax
  50476f:	mov    DWORD PTR [esp+0x4],0x0
  504777:	call   1702a61  ; ABH.Shared.BalancingData.ScoreBalancingData::get_ScorePerStrengthPoint
  50477c:	mov    edi,eax
  50477e:	mov    eax,DWORD PTR [esi+0x68]
  504781:	test   eax,eax
  504783:	je     5047e4
  504785:	lea    ecx,[ebx+0x4a04c]
  50478b:	mov    ecx,DWORD PTR [ecx]
  50478d:	mov    DWORD PTR [esp+0x8],ecx
  504791:	mov    DWORD PTR [esp],eax
  504794:	mov    DWORD PTR [esp+0x4],0x0
  50479c:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  5047a1:	test   eax,eax
  5047a3:	je     5047e4
  5047a5:	imul   edi,DWORD PTR [esp+0x18]
  5047aa:	lea    ecx,[ebx+0x4a048]
  5047b0:	mov    ecx,DWORD PTR [ecx]
  5047b2:	mov    DWORD PTR [esp+0x4],ecx
  5047b6:	mov    DWORD PTR [esp],eax
  5047b9:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  5047be:	mov    DWORD PTR [esp+0x8],esi
  5047c2:	mov    DWORD PTR [esp+0x4],eax
  5047c6:	call   504374  ; ABH.Services.Logic.BattleService::GetMaxScoreForBird
  5047cb:	add    eax,edi
  5047cd:	mov    ecx,eax
  5047cf:	sar    ecx,0x1f
  5047d2:	shr    ecx,0x1e
  5047d5:	add    ecx,eax
  5047d7:	sar    ecx,0x2
  5047da:	mov    eax,ecx
  5047dc:	lea    esp,[ebp-0xc]
  5047df:	pop    esi
  5047e0:	pop    edi
  5047e1:	pop    ebx
  5047e2:	pop    ebp
  5047e3:	ret
  5047e4:	call   1fbc48
  5047e9:	call   540b98