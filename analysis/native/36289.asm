
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0149234e:
 149234e:	push   ebp
 149234f:	mov    ebp,esp
 1492351:	push   ebx
 1492352:	push   edi
 1492353:	push   esi
 1492354:	and    esp,0xfffffff0
 1492357:	sub    esp,0x60
 149235a:	call   149235f
 149235f:	pop    ebx
 1492360:	add    ebx,0xa7fbe5
 1492366:	mov    esi,DWORD PTR [ebp+0x8]
 1492369:	mov    al,BYTE PTR [ebx+0x6592b]
 149236f:	test   al,al
 1492371:	jne    149238a
 1492373:	lea    eax,[ebx-0x67037c]
 1492379:	mov    eax,DWORD PTR [eax]
 149237b:	mov    DWORD PTR [esp],eax
 149237e:	call   1ca6e8
 1492383:	mov    BYTE PTR [ebx+0x6592b],0x1
 149238a:	mov    edi,DWORD PTR [ebp+0x14]
 149238d:	cmp    BYTE PTR [esi+0xa1],0x0
 1492394:	je     149242e
 149239a:	test   edi,edi
 149239c:	je     14929b5
 14923a2:	lea    eax,[ebx+0x45874]
 14923a8:	mov    eax,DWORD PTR [eax]
 14923aa:	mov    ecx,DWORD PTR [edi]
 14923ac:	movzx  edx,WORD PTR [ecx+0xaa]
 14923b3:	test   edx,edx
 14923b5:	je     14923c6
 14923b7:	mov    esi,DWORD PTR [ecx+0x4c]
 14923ba:	xor    edi,edi
 14923bc:	cmp    DWORD PTR [esi+edi*8],eax
 14923bf:	je     14923e1
 14923c1:	inc    edi
 14923c2:	cmp    edi,edx
 14923c4:	jb     14923bc
 14923c6:	mov    DWORD PTR [esp+0x4],eax
 14923ca:	mov    edi,DWORD PTR [ebp+0x14]
 14923cd:	mov    DWORD PTR [esp],edi
 14923d0:	mov    DWORD PTR [esp+0x8],0x31
 14923d8:	call   1c1964
 14923dd:	mov    ecx,eax
 14923df:	jmp    14923ef
 14923e1:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 14923e5:	lea    ecx,[ecx+eax*8+0x23c]
 14923ec:	mov    edi,DWORD PTR [ebp+0x14]
 14923ef:	mov    eax,DWORD PTR [ecx+0x4]
 14923f2:	mov    DWORD PTR [esp+0x4],eax
 14923f6:	mov    DWORD PTR [esp],edi
 14923f9:	call   DWORD PTR [ecx]
 14923fb:	test   eax,eax
 14923fd:	mov    esi,DWORD PTR [ebp+0x8]
 1492400:	je     14929b5
 1492406:	lea    ecx,[ebx+0x56cb4]  ; literal "WaterBomb"
 149240c:	mov    ecx,DWORD PTR [ecx]
 149240e:	lea    edx,[ebx+0x4a1c0]
 1492414:	mov    edx,DWORD PTR [edx]
 1492416:	mov    DWORD PTR [esp+0x8],edx
 149241a:	mov    DWORD PTR [esp+0x4],ecx
 149241e:	mov    DWORD PTR [esp],eax
 1492421:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
 1492426:	test   al,al
 1492428:	je     14929a2
 149242e:	movss  xmm0,DWORD PTR [esi+0x94]
 1492436:	movss  DWORD PTR [esp+0x48],xmm0
 149243c:	mov    DWORD PTR [esp+0x4],0x0
 1492444:	mov    DWORD PTR [esp],0x0
 149244b:	call   167eb9e  ; UnityEngine.Random::get_value
 1492450:	fstp   DWORD PTR [esp+0x4c]
 1492454:	movss  xmm0,DWORD PTR [esp+0x4c]
 149245a:	movss  xmm1,DWORD PTR [esp+0x48]
 1492460:	divss  xmm1,DWORD PTR [ebx-0x64fc2c]
 1492468:	ucomiss xmm0,xmm1
 149246b:	ja     14929a2
 1492471:	lea    eax,[ebx+0x56c78]  ; literal "Stunned"
 1492477:	mov    eax,DWORD PTR [eax]
 1492479:	mov    DWORD PTR [esp+0x4],eax
 149247d:	mov    DWORD PTR [esp+0x8],0x0
 1492485:	mov    DWORD PTR [esp],0x0
 149248c:	call   1068c69  ; DebugLog::Log
 1492491:	cmp    BYTE PTR [esi+0xa1],0x0
 1492498:	jne    14924a7
 149249a:	cmp    BYTE PTR [esi+0xa2],0x0
 14924a1:	je     14929aa
 14924a7:	lea    eax,[ebx+0x56c28]  ; literal "Frozen"
 14924ad:	cmp    BYTE PTR [esi+0xa3],0x0
 14924b4:	cmovne eax,DWORD PTR [ebx-0x30]
 14924bb:	mov    eax,DWORD PTR [eax]
 14924bd:	mov    DWORD PTR [esp+0x40],eax
 14924c1:	lea    eax,[ebx+0x45290]
 14924c7:	mov    eax,DWORD PTR [eax]
 14924c9:	mov    DWORD PTR [esp],eax
 14924cc:	call   20bfb2
 14924d1:	mov    esi,eax
 14924d3:	lea    eax,[ebx+0x49708]
 14924d9:	mov    eax,DWORD PTR [eax]
 14924db:	mov    DWORD PTR [esp+0x4],eax
 14924df:	mov    DWORD PTR [esp],esi
 14924e2:	call   4d21ef  ; System.Collections.Generic.List`1<float>::.ctor
 14924e7:	test   esi,esi
 14924e9:	je     14929b5
 14924ef:	lea    eax,[ebx+0x4970c]
 14924f5:	mov    eax,DWORD PTR [eax]
 14924f7:	mov    DWORD PTR [esp+0x8],eax
 14924fb:	mov    DWORD PTR [esp],esi
 14924fe:	mov    DWORD PTR [esp+0x44],esi
 1492502:	mov    DWORD PTR [esp+0x4],0x3f800000
 149250a:	call   4d30f2  ; System.Collections.Generic.List`1<float>::Add
 149250f:	test   edi,edi
 1492511:	je     14929b5
 1492517:	lea    eax,[ebx+0x45874]
 149251d:	mov    DWORD PTR [esp+0x3c],eax
 1492521:	mov    eax,DWORD PTR [eax]
 1492523:	mov    ecx,DWORD PTR [edi]
 1492525:	movzx  edx,WORD PTR [ecx+0xaa]
 149252c:	test   edx,edx
 149252e:	je     149253f
 1492530:	mov    edi,DWORD PTR [ecx+0x4c]
 1492533:	xor    esi,esi
 1492535:	cmp    DWORD PTR [edi+esi*8],eax
 1492538:	je     149255a
 149253a:	inc    esi
 149253b:	cmp    esi,edx
 149253d:	jb     1492535
 149253f:	mov    DWORD PTR [esp+0x4],eax
 1492543:	mov    esi,DWORD PTR [ebp+0x14]
 1492546:	mov    DWORD PTR [esp],esi
 1492549:	mov    DWORD PTR [esp+0x8],0x11
 1492551:	call   1c1964
 1492556:	mov    ecx,eax
 1492558:	jmp    1492568
 149255a:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 149255e:	lea    ecx,[ecx+eax*8+0x13c]
 1492565:	mov    esi,DWORD PTR [ebp+0x14]
 1492568:	mov    eax,DWORD PTR [ecx+0x4]
 149256b:	mov    DWORD PTR [esp+0x4],eax
 149256f:	mov    DWORD PTR [esp],esi
 1492572:	call   DWORD PTR [ecx]
 1492574:	test   eax,eax
 1492576:	mov    esi,DWORD PTR [ebp+0x8]
 1492579:	je     14929b5
 149257f:	mov    DWORD PTR [esp],eax
 1492582:	mov    DWORD PTR [esp+0x4],0x0
 149258a:	call   8d8313  ; CharacterControllerBattleGroundBase::PlayStunnedAnimation
 149258f:	lea    eax,[ebx+0x4589c]
 1492595:	mov    eax,DWORD PTR [eax]
 1492597:	mov    DWORD PTR [esp],eax
 149259a:	call   20bfb2
 149259f:	mov    DWORD PTR [esp+0x48],eax
 14925a3:	lea    ecx,[ebx+0x4a138]
 14925a9:	mov    ecx,DWORD PTR [ecx]
 14925ab:	mov    DWORD PTR [esp+0x4],ecx
 14925af:	mov    DWORD PTR [esp],eax
 14925b2:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 14925b7:	lea    eax,[ebx+0x454a8]
 14925bd:	mov    eax,DWORD PTR [eax]
 14925bf:	mov    DWORD PTR [esp],eax
 14925c2:	call   20bfb2
 14925c7:	mov    edi,eax
 14925c9:	mov    DWORD PTR [esp],edi
 14925cc:	mov    DWORD PTR [esp+0x4],0x0
 14925d4:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
 14925d9:	test   edi,edi
 14925db:	je     14929b5
 14925e1:	mov    DWORD PTR [esp],edi
 14925e4:	mov    DWORD PTR [esp+0x8],0x0
 14925ec:	mov    DWORD PTR [esp+0x4],0x5
 14925f4:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
 14925f9:	mov    DWORD PTR [esp],edi
 14925fc:	mov    DWORD PTR [esp+0x8],0x0
 1492604:	mov    DWORD PTR [esp+0x4],0x12
 149260c:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
 1492611:	mov    DWORD PTR [esp],edi
 1492614:	mov    DWORD PTR [esp+0x8],0x0
 149261c:	mov    DWORD PTR [esp+0x4],0x2
 1492624:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
 1492629:	mov    eax,DWORD PTR [esp+0x44]
 149262d:	mov    DWORD PTR [esp+0x4],eax
 1492631:	mov    DWORD PTR [esp],edi
 1492634:	mov    DWORD PTR [esp+0x8],0x0
 149263c:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
 1492641:	cvttss2si eax,DWORD PTR [esi+0x9c]
 1492649:	mov    DWORD PTR [esp+0x4],eax
 149264d:	mov    DWORD PTR [esp],edi
 1492650:	mov    DWORD PTR [esp+0x8],0x0
 1492658:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
 149265d:	cmp    BYTE PTR [esi+0xa0],0x0
 1492664:	je     14926a8
 1492666:	mov    DWORD PTR [esp],esi
 1492669:	mov    DWORD PTR [esp+0x4],0x0
 1492671:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1492676:	test   eax,eax
 1492678:	je     14929b5
 149267e:	mov    DWORD PTR [esp],eax
 1492681:	mov    DWORD PTR [esp+0x4],0x0
 1492689:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
 149268e:	test   eax,eax
 1492690:	je     14929b5
 1492696:	mov    DWORD PTR [esp],eax
 1492699:	mov    DWORD PTR [esp+0x4],0x0
 14926a1:	call   17032ad  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAssetId
 14926a6:	jmp    14926b0
 14926a8:	lea    eax,[ebx+0x56c2c]  ; literal "Stun"
 14926ae:	mov    eax,DWORD PTR [eax]
 14926b0:	mov    DWORD PTR [esp+0x4],eax
 14926b4:	mov    DWORD PTR [esp],edi
 14926b7:	mov    DWORD PTR [esp+0x8],0x0
 14926bf:	call   179afdb  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAssetId
 14926c4:	cmp    BYTE PTR [esi+0xa0],0x0
 14926cb:	je     149270f
 14926cd:	mov    DWORD PTR [esp],esi
 14926d0:	mov    DWORD PTR [esp+0x4],0x0
 14926d8:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14926dd:	test   eax,eax
 14926df:	je     14929b5
 14926e5:	mov    DWORD PTR [esp],eax
 14926e8:	mov    DWORD PTR [esp+0x4],0x0
 14926f0:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
 14926f5:	test   eax,eax
 14926f7:	je     14929b5
 14926fd:	mov    DWORD PTR [esp],eax
 1492700:	mov    DWORD PTR [esp+0x4],0x0
 1492708:	call   170328a  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectIconAtlasId
 149270d:	jmp    1492717
 149270f:	lea    eax,[ebx+0x56c7c]  ; literal "Skills_Generic"
 1492715:	mov    eax,DWORD PTR [eax]
 1492717:	mov    DWORD PTR [esp+0x4],eax
 149271b:	mov    DWORD PTR [esp],edi
 149271e:	mov    DWORD PTR [esp+0x8],0x0
 1492726:	call   179afb8  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAtlasId
 149272b:	mov    ecx,DWORD PTR [esp+0x48]
 149272f:	test   ecx,ecx
 1492731:	je     14929b5
 1492737:	lea    eax,[ebx+0x4a144]
 149273d:	mov    eax,DWORD PTR [eax]
 149273f:	mov    DWORD PTR [esp+0x8],eax
 1492743:	mov    DWORD PTR [esp+0x4],edi
 1492747:	mov    DWORD PTR [esp],ecx
 149274a:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 149274f:	movss  xmm0,DWORD PTR [esi+0x9c]
 1492757:	movss  DWORD PTR [esp+0x38],xmm0
 149275d:	mov    eax,DWORD PTR [esi]
 149275f:	mov    ecx,DWORD PTR [eax+0x110]
 1492765:	mov    DWORD PTR [esp+0x4],ecx
 1492769:	mov    DWORD PTR [esp],esi
 149276c:	call   DWORD PTR [eax+0x10c]
 1492772:	mov    ecx,esi
 1492774:	mov    esi,eax
 1492776:	mov    DWORD PTR [esp],ecx
 1492779:	mov    DWORD PTR [esp+0x4],0x0
 1492781:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 1492786:	test   eax,eax
 1492788:	je     14929b5
 149278e:	mov    DWORD PTR [esp],eax
 1492791:	mov    DWORD PTR [esp+0x4],0x0
 1492799:	call   6b291c  ; ABH.GameDatas.SkillGameData::get_SkillNameId
 149279e:	mov    edi,eax
 14927a0:	lea    eax,[ebx+0x458a8]
 14927a6:	mov    eax,DWORD PTR [eax]
 14927a8:	mov    DWORD PTR [esp],eax
 14927ab:	call   20bfb2
 14927b0:	cvttss2si edx,DWORD PTR [esp+0x38]
 14927b6:	mov    DWORD PTR [esp+0x24],edi
 14927ba:	mov    DWORD PTR [esp+0x20],esi
 14927be:	mov    esi,eax
 14927c0:	mov    ecx,DWORD PTR [esp+0x40]
 14927c4:	mov    DWORD PTR [esp+0x18],ecx
 14927c8:	mov    eax,DWORD PTR [ebp+0xc]
 14927cb:	mov    DWORD PTR [esp+0x14],eax
 14927cf:	mov    DWORD PTR [esp+0x10],edx
 14927d3:	mov    eax,DWORD PTR [esp+0x48]
 14927d7:	mov    DWORD PTR [esp+0xc],eax
 14927db:	mov    eax,DWORD PTR [ebp+0x14]
 14927de:	mov    DWORD PTR [esp+0x8],eax
 14927e2:	mov    eax,DWORD PTR [ebp+0x10]
 14927e5:	mov    DWORD PTR [esp+0x4],eax
 14927e9:	mov    DWORD PTR [esp],esi
 14927ec:	mov    DWORD PTR [esp+0x28],0x0
 14927f4:	mov    DWORD PTR [esp+0x1c],0x2
 14927fc:	call   ebd4cc  ; ABH.GameDatas.Battle.BattleEffectGameData::.ctor
 1492801:	test   esi,esi
 1492803:	je     14929b5
 1492809:	mov    DWORD PTR [esp],esi
 149280c:	mov    DWORD PTR [esp+0x8],0x0
 1492814:	mov    DWORD PTR [esp+0x4],0x1
 149281c:	call   ebf8b0  ; ABH.GameDatas.Battle.BattleEffectGameData::AddEffect
 1492821:	lea    edi,[ebx+0x459c4]
 1492827:	mov    eax,DWORD PTR [edi]
 1492829:	mov    eax,DWORD PTR [eax+0x50]
 149282c:	mov    eax,DWORD PTR [eax+0x4]
 149282f:	test   eax,eax
 1492831:	jne    1492895
 1492833:	lea    eax,[ebx+0x4a4ac]
 1492839:	mov    eax,DWORD PTR [eax]
 149283b:	mov    DWORD PTR [esp+0x48],eax
 149283f:	lea    eax,[ebx+0x458a0]
 1492845:	mov    eax,DWORD PTR [eax]
 1492847:	mov    DWORD PTR [esp],eax
 149284a:	call   20bfb2
 149284f:	mov    DWORD PTR [esp+0x44],esi
 1492853:	mov    esi,eax
 1492855:	mov    eax,DWORD PTR [esp+0x48]
 1492859:	mov    DWORD PTR [esp+0x58],eax
 149285d:	lea    eax,[ebx+0x4a390]
 1492863:	mov    eax,DWORD PTR [eax]
 1492865:	mov    DWORD PTR [esp+0xc],eax
 1492869:	mov    eax,DWORD PTR [esp+0x58]
 149286d:	mov    DWORD PTR [esp+0x8],eax
 1492871:	mov    DWORD PTR [esp],esi
 1492874:	mov    DWORD PTR [esp+0x4],0x0
 149287c:	call   176d657  ; shared address: System.Action`1<object>::.ctor | System.Action`1<Facebook.Unity.Settings.FacebookSettings+OnChangeCallback>::.ctor | System.Action`1<ABH.GameDatas.Battle.BattleEffectGameData>::.ctor | +69 other aliases
 1492881:	mov    eax,DWORD PTR [edi]
 1492883:	mov    eax,DWORD PTR [eax+0x50]
 1492886:	mov    DWORD PTR [eax+0x4],esi
 1492889:	mov    esi,DWORD PTR [esp+0x44]
 149288d:	mov    eax,DWORD PTR [edi]
 149288f:	mov    eax,DWORD PTR [eax+0x50]
 1492892:	mov    eax,DWORD PTR [eax+0x4]
 1492895:	mov    DWORD PTR [esp+0x44],esi
 1492899:	mov    DWORD PTR [esi+0x14],eax
 149289c:	mov    ecx,DWORD PTR [ebp+0x10]
 149289f:	test   ecx,ecx
 14928a1:	je     14929b5
 14928a7:	mov    eax,DWORD PTR [esp+0x3c]
 14928ab:	mov    eax,DWORD PTR [eax]
 14928ad:	mov    ecx,DWORD PTR [ecx]
 14928af:	movzx  edx,WORD PTR [ecx+0xaa]
 14928b6:	test   edx,edx
 14928b8:	je     14928c9
 14928ba:	mov    esi,DWORD PTR [ecx+0x4c]
 14928bd:	xor    edi,edi
 14928bf:	cmp    DWORD PTR [esi+edi*8],eax
 14928c2:	je     14928e4
 14928c4:	inc    edi
 14928c5:	cmp    edi,edx
 14928c7:	jb     14928bf
 14928c9:	mov    DWORD PTR [esp+0x4],eax
 14928cd:	mov    esi,DWORD PTR [ebp+0x10]
 14928d0:	mov    DWORD PTR [esp],esi
 14928d3:	mov    DWORD PTR [esp+0x8],0x11
 14928db:	call   1c1964
 14928e0:	mov    ecx,eax
 14928e2:	jmp    14928f2
 14928e4:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 14928e8:	lea    ecx,[ecx+eax*8+0x13c]
 14928ef:	mov    esi,DWORD PTR [ebp+0x10]
 14928f2:	mov    eax,DWORD PTR [ecx+0x4]
 14928f5:	mov    DWORD PTR [esp+0x4],eax
 14928f9:	mov    DWORD PTR [esp],esi
 14928fc:	call   DWORD PTR [ecx]
 14928fe:	test   eax,eax
 1492900:	je     14929b5
 1492906:	mov    ecx,DWORD PTR [eax+0x68]
 1492909:	test   ecx,ecx
 149290b:	je     149297a
 149290d:	lea    eax,[ebx+0x459cc]
 1492913:	mov    eax,DWORD PTR [eax]
 1492915:	mov    ecx,DWORD PTR [ecx]
 1492917:	movzx  edx,BYTE PTR [eax+0xac]
 149291e:	movzx  esi,BYTE PTR [ecx+0xac]
 1492925:	cmp    esi,edx
 1492927:	jb     149297a
 1492929:	mov    ecx,DWORD PTR [ecx+0x58]
 149292c:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
 1492930:	jne    149297a
 1492932:	lea    eax,[ebx+0x4a4b0]
 1492938:	mov    edi,DWORD PTR [eax]
 149293a:	lea    eax,[ebx+0x458a0]
 1492940:	mov    eax,DWORD PTR [eax]
 1492942:	mov    DWORD PTR [esp],eax
 1492945:	call   20bfb2
 149294a:	mov    esi,eax
 149294c:	mov    DWORD PTR [esp+0x50],edi
 1492950:	lea    eax,[ebx+0x4a390]
 1492956:	mov    eax,DWORD PTR [eax]
 1492958:	mov    DWORD PTR [esp+0xc],eax
 149295c:	mov    eax,DWORD PTR [esp+0x50]
 1492960:	mov    DWORD PTR [esp+0x8],eax
 1492964:	mov    eax,DWORD PTR [ebp+0x8]
 1492967:	mov    DWORD PTR [esp+0x4],eax
 149296b:	mov    DWORD PTR [esp],esi
 149296e:	call   176d657  ; shared address: System.Action`1<object>::.ctor | System.Action`1<Facebook.Unity.Settings.FacebookSettings+OnChangeCallback>::.ctor | System.Action`1<ABH.GameDatas.Battle.BattleEffectGameData>::.ctor | +69 other aliases
 1492973:	mov    eax,DWORD PTR [esp+0x44]
 1492977:	mov    DWORD PTR [eax+0x14],esi
 149297a:	mov    eax,DWORD PTR [ebp+0x8]
 149297d:	cmp    BYTE PTR [eax+0xa4],0x0
 1492984:	je     14929a2
 1492986:	mov    eax,DWORD PTR [esp+0x44]
 149298a:	mov    DWORD PTR [esp],eax
 149298d:	mov    DWORD PTR [esp+0x8],0x0
 1492995:	mov    DWORD PTR [esp+0x4],0x0
 149299d:	call   ebe0cc  ; ABH.GameDatas.Battle.BattleEffectGameData::SetPersistanceAfterDefeat
 14929a2:	lea    esp,[ebp-0xc]
 14929a5:	pop    esi
 14929a6:	pop    edi
 14929a7:	pop    ebx
 14929a8:	pop    ebp
 14929a9:	ret
 14929aa:	lea    eax,[ebx+0x56c2c]  ; literal "Stun"
 14929b0:	jmp    14924ad
 14929b5:	call   1fbc48
 14929ba:	call   14943fc