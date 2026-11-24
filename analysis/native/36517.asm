
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eb2627:
  eb2627:	push   ebp
  eb2628:	mov    ebp,esp
  eb262a:	push   ebx
  eb262b:	push   edi
  eb262c:	push   esi
  eb262d:	and    esp,0xfffffff0
  eb2630:	sub    esp,0x60
  eb2633:	call   eb2638
  eb2638:	pop    ebx
  eb2639:	add    ebx,0x105f90c
  eb263f:	mov    esi,DWORD PTR [ebp+0xc]
  eb2642:	mov    al,BYTE PTR [ebx+0x626ae]
  eb2648:	test   al,al
  eb264a:	jne    eb2663
  eb264c:	lea    eax,[ebx-0x670484]
  eb2652:	mov    eax,DWORD PTR [eax]
  eb2654:	mov    DWORD PTR [esp],eax
  eb2657:	call   1ca6e8
  eb265c:	mov    BYTE PTR [ebx+0x626ae],0x1
  eb2663:	xorps  xmm0,xmm0
  eb2666:	movaps XMMWORD PTR [esp+0x40],xmm0
  eb266b:	test   esi,esi
  eb266d:	je     eb2a19
  eb2673:	mov    edi,DWORD PTR [esi+0x30]
  eb2676:	lea    eax,[ebx+0x430e4]
  eb267c:	mov    DWORD PTR [esp+0x2c],eax
  eb2680:	mov    eax,DWORD PTR [eax]
  eb2682:	test   BYTE PTR [eax+0xb2],0x1
  eb2689:	je     eb2699
  eb268b:	cmp    DWORD PTR [eax+0x60],0x0
  eb268f:	jne    eb2699
  eb2691:	mov    DWORD PTR [esp],eax
  eb2694:	call   1db0b8
  eb2699:	mov    esi,DWORD PTR [ebp+0x8]
  eb269c:	lea    eax,[ebx+0x56b0c]  ; literal "Impact"
  eb26a2:	mov    eax,DWORD PTR [eax]
  eb26a4:	mov    DWORD PTR [esp+0x8],eax
  eb26a8:	mov    DWORD PTR [esp+0x4],edi
  eb26ac:	mov    DWORD PTR [esp+0xc],0x0
  eb26b4:	mov    DWORD PTR [esp],0x0
  eb26bb:	call   ca24cf  ; System.String::op_Equality
  eb26c0:	test   al,al
  eb26c2:	je     eb26e7
  eb26c4:	mov    BYTE PTR [esi+0x3c],0x0
  eb26c8:	mov    eax,DWORD PTR [esi+0xc]
  eb26cb:	mov    DWORD PTR [esp+0x8],eax
  eb26cf:	mov    DWORD PTR [esp],esi
  eb26d2:	mov    DWORD PTR [esp+0xc],0x0
  eb26da:	mov    DWORD PTR [esp+0x4],0x2
  eb26e2:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eb26e7:	mov    eax,DWORD PTR [ebp+0xc]
  eb26ea:	mov    edi,DWORD PTR [eax+0x30]
  eb26ed:	mov    eax,DWORD PTR [esp+0x2c]
  eb26f1:	mov    eax,DWORD PTR [eax]
  eb26f3:	test   BYTE PTR [eax+0xb2],0x1
  eb26fa:	je     eb270a
  eb26fc:	cmp    DWORD PTR [eax+0x60],0x0
  eb2700:	jne    eb270a
  eb2702:	mov    DWORD PTR [esp],eax
  eb2705:	call   1db0b8
  eb270a:	lea    eax,[ebx+0x56b10]  ; literal "Movement"
  eb2710:	mov    eax,DWORD PTR [eax]
  eb2712:	mov    DWORD PTR [esp+0x8],eax
  eb2716:	mov    DWORD PTR [esp+0x4],edi
  eb271a:	mov    DWORD PTR [esp+0xc],0x0
  eb2722:	mov    DWORD PTR [esp],0x0
  eb2729:	call   ca24cf  ; System.String::op_Equality
  eb272e:	test   al,al
  eb2730:	je     eb2933
  eb2736:	cmp    BYTE PTR [esi+0x3d],0x0
  eb273a:	jne    eb2933
  eb2740:	mov    eax,DWORD PTR [esi+0x5c]
  eb2743:	test   eax,eax
  eb2745:	je     eb2a19
  eb274b:	lea    ecx,[ebx+0x4a020]
  eb2751:	mov    ecx,DWORD PTR [ecx]
  eb2753:	mov    DWORD PTR [esp+0x8],ecx
  eb2757:	mov    DWORD PTR [esp+0x4],eax
  eb275b:	lea    eax,[esp+0x30]
  eb275f:	mov    DWORD PTR [esp],eax
  eb2762:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb2767:	sub    esp,0x4
  eb276a:	movsd  xmm0,QWORD PTR [esp+0x30]
  eb2770:	movsd  xmm1,QWORD PTR [esp+0x38]
  eb2776:	movsd  QWORD PTR [esp+0x48],xmm1
  eb277c:	movsd  QWORD PTR [esp+0x40],xmm0
  eb2782:	lea    eax,[ebx+0x4a02c]
  eb2788:	mov    DWORD PTR [esp+0x24],eax
  eb278c:	lea    esi,[esp+0x40]
  eb2790:	mov    eax,DWORD PTR [esp+0x24]
  eb2794:	mov    eax,DWORD PTR [eax]
  eb2796:	mov    DWORD PTR [esp+0x4],eax
  eb279a:	mov    DWORD PTR [esp],esi
  eb279d:	call   447e4e
  eb27a2:	test   al,al
  eb27a4:	je     eb2801
  eb27a6:	lea    eax,[ebx+0x4a024]
  eb27ac:	mov    eax,DWORD PTR [eax]
  eb27ae:	mov    DWORD PTR [esp+0x4],eax
  eb27b2:	mov    DWORD PTR [esp],esi
  eb27b5:	call   447f1e
  eb27ba:	test   eax,eax
  eb27bc:	je     eb280e
  eb27be:	mov    ecx,DWORD PTR [ebp+0x8]
  eb27c1:	mov    edx,DWORD PTR [ecx+0x14]
  eb27c4:	mov    DWORD PTR [esp+0x28],edx
  eb27c8:	mov    edx,DWORD PTR [ecx+0x18]
  eb27cb:	mov    esi,DWORD PTR [ecx+0x34]
  eb27ce:	mov    edi,DWORD PTR [ecx+0x30]
  eb27d1:	lea    ecx,[ebx+0x4a028]
  eb27d7:	mov    ecx,DWORD PTR [ecx]
  eb27d9:	mov    DWORD PTR [esp+0x14],ecx
  eb27dd:	mov    DWORD PTR [esp+0x10],edx
  eb27e1:	mov    DWORD PTR [esp+0xc],esi
  eb27e5:	mov    DWORD PTR [esp+0x8],edi
  eb27e9:	mov    ecx,DWORD PTR [esp+0x28]
  eb27ed:	mov    DWORD PTR [esp+0x4],ecx
  eb27f1:	mov    DWORD PTR [esp],eax
  eb27f4:	lea    esi,[esp+0x40]
  eb27f8:	call   15f5685  ; shared address: System.Action`4<object, object, object, object>::Invoke | System.Action`4<ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4), ABH.GameDatas.Interfaces.ICombatant>::Invoke | System.Action`4<System.IAsyncResult, unresolved-type@0x1e5f680(kind=0x1d,data=0x18787c0), string, unresolved-type@0x1e614e8(kind=0x15,data=0x1f1b554)>::Invoke
  eb27fd:	jmp    eb2790
  eb27ff:	jmp    eb2818
  eb2801:	xor    edi,edi
  eb2803:	mov    al,0x1
  eb2805:	mov    DWORD PTR [esp+0x28],eax
  eb2809:	mov    esi,DWORD PTR [ebp+0x8]
  eb280c:	jmp    eb283b
  eb280e:	call   1fbc48
  eb2813:	jmp    eb2a2b
  eb2818:	cmp    edx,0x1
  eb281b:	mov    esi,DWORD PTR [ebp+0x8]
  eb281e:	jne    eb2a23
  eb2824:	mov    DWORD PTR [esp],eax
  eb2827:	call   1ba3f0
  eb282c:	mov    edi,DWORD PTR [eax]
  eb282e:	call   1b9ce0
  eb2833:	mov    DWORD PTR [esp+0x28],0x0
  eb283b:	lea    eax,[ebx+0x4a030]
  eb2841:	mov    eax,DWORD PTR [eax]
  eb2843:	mov    DWORD PTR [esp+0x4],eax
  eb2847:	lea    eax,[esp+0x40]
  eb284b:	mov    DWORD PTR [esp],eax
  eb284e:	call   447df6
  eb2853:	mov    eax,DWORD PTR [esp+0x28]
  eb2857:	test   al,al
  eb2859:	jne    eb2867
  eb285b:	test   edi,edi
  eb285d:	je     eb2867
  eb285f:	mov    DWORD PTR [esp],edi
  eb2862:	call   1fbb20
  eb2867:	cmp    BYTE PTR [esi+0x40],0x0
  eb286b:	jne    eb287d
  eb286d:	cmp    BYTE PTR [esi+0x41],0x0
  eb2871:	jne    eb287d
  eb2873:	cmp    BYTE PTR [esi+0x42],0x0
  eb2877:	je     eb2914
  eb287d:	mov    edi,DWORD PTR [esi+0x30]
  eb2880:	test   edi,edi
  eb2882:	je     eb2a19
  eb2888:	lea    eax,[ebx+0x45874]
  eb288e:	mov    DWORD PTR [esp+0x28],ebx
  eb2892:	mov    eax,DWORD PTR [eax]
  eb2894:	mov    ebx,DWORD PTR [edi]
  eb2896:	movzx  edx,WORD PTR [ebx+0xaa]
  eb289d:	test   edx,edx
  eb289f:	je     eb28b0
  eb28a1:	mov    esi,DWORD PTR [ebx+0x4c]
  eb28a4:	xor    ecx,ecx
  eb28a6:	cmp    DWORD PTR [esi+ecx*8],eax
  eb28a9:	je     eb28cc
  eb28ab:	inc    ecx
  eb28ac:	cmp    ecx,edx
  eb28ae:	jb     eb28a6
  eb28b0:	mov    DWORD PTR [esp+0x4],eax
  eb28b4:	mov    DWORD PTR [esp],edi
  eb28b7:	mov    DWORD PTR [esp+0x8],0x11
  eb28bf:	mov    ebx,DWORD PTR [esp+0x28]
  eb28c3:	call   1c1964
  eb28c8:	mov    ecx,eax
  eb28ca:	jmp    eb28db
  eb28cc:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb28d0:	lea    ecx,[ebx+eax*8+0x13c]
  eb28d7:	mov    ebx,DWORD PTR [esp+0x28]
  eb28db:	mov    eax,DWORD PTR [ecx+0x4]
  eb28de:	mov    DWORD PTR [esp+0x4],eax
  eb28e2:	mov    DWORD PTR [esp],edi
  eb28e5:	call   DWORD PTR [ecx]
  eb28e7:	test   eax,eax
  eb28e9:	mov    esi,DWORD PTR [ebp+0x8]
  eb28ec:	je     eb2a19
  eb28f2:	movzx  ecx,BYTE PTR [esi+0x41]
  eb28f6:	movzx  edx,BYTE PTR [esi+0x42]
  eb28fa:	mov    DWORD PTR [esp+0x8],edx
  eb28fe:	mov    DWORD PTR [esp+0x4],ecx
  eb2902:	mov    DWORD PTR [esp],eax
  eb2905:	mov    DWORD PTR [esp+0xc],0x0
  eb290d:	call   8dcaf7  ; CharacterControllerBattleGroundBase::PlayGoToAttackPosition
  eb2912:	fstp   st(0)
  eb2914:	mov    eax,DWORD PTR [esi+0xc]
  eb2917:	mov    DWORD PTR [esp+0x8],eax
  eb291b:	mov    DWORD PTR [esp],esi
  eb291e:	mov    DWORD PTR [esp+0xc],0x0
  eb2926:	mov    DWORD PTR [esp+0x4],0x1
  eb292e:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eb2933:	mov    eax,DWORD PTR [ebp+0xc]
  eb2936:	mov    esi,DWORD PTR [eax+0x30]
  eb2939:	mov    eax,DWORD PTR [esp+0x2c]
  eb293d:	mov    eax,DWORD PTR [eax]
  eb293f:	test   BYTE PTR [eax+0xb2],0x1
  eb2946:	je     eb2956
  eb2948:	cmp    DWORD PTR [eax+0x60],0x0
  eb294c:	jne    eb2956
  eb294e:	mov    DWORD PTR [esp],eax
  eb2951:	call   1db0b8
  eb2956:	lea    edi,[ebx+0x56b14]  ; literal "Projectile"
  eb295c:	mov    eax,DWORD PTR [edi]
  eb295e:	mov    DWORD PTR [esp+0x8],eax
  eb2962:	mov    DWORD PTR [esp+0x4],esi
  eb2966:	mov    DWORD PTR [esp+0xc],0x0
  eb296e:	mov    DWORD PTR [esp],0x0
  eb2975:	call   ca24cf  ; System.String::op_Equality
  eb297a:	test   al,al
  eb297c:	je     eb2a11
  eb2982:	mov    eax,DWORD PTR [ebp+0xc]
  eb2985:	mov    esi,DWORD PTR [eax+0x30]
  eb2988:	mov    eax,DWORD PTR [esp+0x2c]
  eb298c:	mov    eax,DWORD PTR [eax]
  eb298e:	test   BYTE PTR [eax+0xb2],0x1
  eb2995:	je     eb29a5
  eb2997:	cmp    DWORD PTR [eax+0x60],0x0
  eb299b:	jne    eb29a5
  eb299d:	mov    DWORD PTR [esp],eax
  eb29a0:	call   1db0b8
  eb29a5:	mov    eax,DWORD PTR [edi]
  eb29a7:	mov    DWORD PTR [esp+0x8],eax
  eb29ab:	mov    DWORD PTR [esp+0x4],esi
  eb29af:	mov    DWORD PTR [esp+0xc],0x0
  eb29b7:	mov    DWORD PTR [esp],0x0
  eb29be:	call   ca24cf  ; System.String::op_Equality
  eb29c3:	test   al,al
  eb29c5:	je     eb2a11
  eb29c7:	lea    eax,[ebx+0x56b18]  ; literal "Projectile fired"
  eb29cd:	mov    eax,DWORD PTR [eax]
  eb29cf:	mov    DWORD PTR [esp+0x4],eax
  eb29d3:	mov    DWORD PTR [esp+0x8],0x0
  eb29db:	mov    DWORD PTR [esp],0x0
  eb29e2:	call   1068c69  ; DebugLog::Log
  eb29e7:	mov    eax,DWORD PTR [ebp+0x8]
  eb29ea:	mov    esi,eax
  eb29ec:	mov    eax,DWORD PTR [esi+0x20]
  eb29ef:	mov    ecx,DWORD PTR [esi+0x30]
  eb29f2:	mov    edx,DWORD PTR [esi+0x34]
  eb29f5:	movzx  esi,BYTE PTR [esi+0x84]
  eb29fc:	mov    DWORD PTR [esp+0x14],esi
  eb2a00:	mov    DWORD PTR [esp+0x10],eax
  eb2a04:	mov    DWORD PTR [esp+0xc],edx
  eb2a08:	mov    DWORD PTR [esp+0x8],ecx
  eb2a0c:	call   eb2f2a  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnProjectile
  eb2a11:	lea    esp,[ebp-0xc]
  eb2a14:	pop    esi
  eb2a15:	pop    edi
  eb2a16:	pop    ebx
  eb2a17:	pop    ebp
  eb2a18:	ret
  eb2a19:	call   1fbc48
  eb2a1e:	call   ebbb41
  eb2a23:	mov    DWORD PTR [esp],eax
  eb2a26:	call   1b9bd0
  eb2a2b:	call   ebbb41