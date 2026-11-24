
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014785c4:
 14785c4:	push   ebp
 14785c5:	mov    ebp,esp
 14785c7:	push   ebx
 14785c8:	push   edi
 14785c9:	push   esi
 14785ca:	and    esp,0xfffffff0
 14785cd:	sub    esp,0x50
 14785d0:	call   14785d5
 14785d5:	pop    ebx
 14785d6:	add    ebx,0xa9996f
 14785dc:	mov    edi,DWORD PTR [ebp+0xc]
 14785df:	mov    al,BYTE PTR [ebx+0x6587a]
 14785e5:	test   al,al
 14785e7:	jne    1478600
 14785e9:	lea    eax,[ebx-0x66e8d4]
 14785ef:	mov    eax,DWORD PTR [eax]
 14785f1:	mov    DWORD PTR [esp],eax
 14785f4:	call   1ca6e8
 14785f9:	mov    BYTE PTR [ebx+0x6587a],0x1
 1478600:	test   edi,edi
 1478602:	je     1478998
 1478608:	mov    eax,DWORD PTR [edi+0x10]
 147860b:	test   eax,eax
 147860d:	je     1478998
 1478613:	mov    esi,DWORD PTR [ebp+0x8]
 1478616:	lea    ecx,[ebx+0x49d88]
 147861c:	mov    DWORD PTR [esp+0x48],ecx
 1478620:	mov    ecx,DWORD PTR [ecx]
 1478622:	mov    DWORD PTR [esp+0x8],ecx
 1478626:	mov    DWORD PTR [esp],eax
 1478629:	mov    DWORD PTR [esp+0x4],0x1
 1478631:	call   497288  ; System.Collections.Generic.List`1<SmoothMoves.TriggerFrameBone+TRIGGER_EVENT_TYPE>::Contains
 1478636:	mov    esi,DWORD PTR [esi+0x108]
 147863c:	test   esi,esi
 147863e:	je     1478998
 1478644:	mov    edi,DWORD PTR [edi+0xc]
 1478647:	cmp    DWORD PTR [esi+0xc],edi
 147864a:	ja     1478661
 147864c:	mov    BYTE PTR [esp+0x44],al
 1478650:	call   1fc7e4
 1478655:	mov    DWORD PTR [esp],eax
 1478658:	call   1fbb20
 147865d:	mov    al,BYTE PTR [esp+0x44]
 1478661:	mov    ecx,DWORD PTR [esi+edi*4+0x10]
 1478665:	test   ecx,ecx
 1478667:	je     1478998
 147866d:	mov    cl,BYTE PTR [ecx+0x31]
 1478670:	test   al,al
 1478672:	mov    edi,DWORD PTR [ebp+0xc]
 1478675:	mov    esi,DWORD PTR [ebp+0x8]
 1478678:	je     14786b8
 147867a:	test   cl,cl
 147867c:	je     14786c6
 147867e:	mov    esi,DWORD PTR [esi+0x108]
 1478684:	test   esi,esi
 1478686:	je     1478998
 147868c:	mov    edi,DWORD PTR [edi+0xc]
 147868f:	cmp    DWORD PTR [esi+0xc],edi
 1478692:	ja     14786a1
 1478694:	call   1fc7e4
 1478699:	mov    DWORD PTR [esp],eax
 147869c:	call   1fbb20
 14786a1:	mov    eax,DWORD PTR [esi+edi*4+0x10]
 14786a5:	test   eax,eax
 14786a7:	je     1478998
 14786ad:	mov    BYTE PTR [eax+0x31],0x0
 14786b1:	mov    al,0x1
 14786b3:	jmp    147898d
 14786b8:	test   cl,cl
 14786ba:	je     14786cd
 14786bc:	mov    DWORD PTR [esp+0x44],0x0
 14786c4:	jmp    147870c
 14786c6:	xor    eax,eax
 14786c8:	jmp    147898d
 14786cd:	mov    esi,DWORD PTR [esi+0x108]
 14786d3:	test   esi,esi
 14786d5:	je     1478998
 14786db:	mov    edi,DWORD PTR [edi+0xc]
 14786de:	cmp    DWORD PTR [esi+0xc],edi
 14786e1:	ja     14786f0
 14786e3:	call   1fc7e4
 14786e8:	mov    DWORD PTR [esp],eax
 14786eb:	call   1fbb20
 14786f0:	mov    eax,DWORD PTR [esi+edi*4+0x10]
 14786f4:	test   eax,eax
 14786f6:	je     1478998
 14786fc:	mov    BYTE PTR [eax+0x31],0x1
 1478700:	mov    al,0x1
 1478702:	mov    DWORD PTR [esp+0x44],eax
 1478706:	mov    edi,DWORD PTR [ebp+0xc]
 1478709:	mov    esi,DWORD PTR [ebp+0x8]
 147870c:	mov    eax,DWORD PTR [edi+0x10]
 147870f:	test   eax,eax
 1478711:	je     1478998
 1478717:	mov    ecx,DWORD PTR [esp+0x48]
 147871b:	mov    ecx,DWORD PTR [ecx]
 147871d:	mov    DWORD PTR [esp+0x8],ecx
 1478721:	mov    DWORD PTR [esp],eax
 1478724:	mov    DWORD PTR [esp+0x4],0x2
 147872c:	call   497288  ; System.Collections.Generic.List`1<SmoothMoves.TriggerFrameBone+TRIGGER_EVENT_TYPE>::Contains
 1478731:	test   al,al
 1478733:	je     147877e
 1478735:	mov    esi,DWORD PTR [esi+0x108]
 147873b:	test   esi,esi
 147873d:	je     1478998
 1478743:	mov    edi,DWORD PTR [edi+0xc]
 1478746:	cmp    DWORD PTR [esi+0xc],edi
 1478749:	ja     1478758
 147874b:	call   1fc7e4
 1478750:	mov    DWORD PTR [esp],eax
 1478753:	call   1fbb20
 1478758:	mov    eax,DWORD PTR [esi+edi*4+0x10]
 147875c:	test   eax,eax
 147875e:	je     1478998
 1478764:	mov    edi,DWORD PTR [ebp+0xc]
 1478767:	mov    ecx,DWORD PTR [edi+0x7c]
 147876a:	mov    DWORD PTR [eax+0x34],ecx
 147876d:	mov    al,0x1
 147876f:	mov    DWORD PTR [esp+0x40],eax
 1478773:	mov    al,0x1
 1478775:	mov    DWORD PTR [esp+0x44],eax
 1478779:	mov    esi,DWORD PTR [ebp+0x8]
 147877c:	jmp    1478786
 147877e:	mov    DWORD PTR [esp+0x40],0x0
 1478786:	mov    eax,DWORD PTR [edi+0x10]
 1478789:	test   eax,eax
 147878b:	je     1478998
 1478791:	mov    ecx,DWORD PTR [esp+0x48]
 1478795:	mov    ecx,DWORD PTR [ecx]
 1478797:	mov    DWORD PTR [esp+0x8],ecx
 147879b:	mov    DWORD PTR [esp],eax
 147879e:	mov    DWORD PTR [esp+0x4],0x4
 14787a6:	call   497288  ; System.Collections.Generic.List`1<SmoothMoves.TriggerFrameBone+TRIGGER_EVENT_TYPE>::Contains
 14787ab:	test   al,al
 14787ad:	je     147888b
 14787b3:	mov    eax,DWORD PTR [edi+0xc]
 14787b6:	shl    eax,0x2
 14787b9:	mov    ecx,DWORD PTR [edi+0x48]
 14787bc:	mov    DWORD PTR [esp+0x34],ecx
 14787c0:	movsd  xmm0,QWORD PTR [edi+0x40]
 14787c5:	movsd  QWORD PTR [esp+0x2c],xmm0
 14787cb:	mov    ecx,DWORD PTR [edi+0x3c]
 14787ce:	mov    DWORD PTR [esp+0x28],ecx
 14787d2:	movsd  xmm0,QWORD PTR [edi+0x34]
 14787d7:	movsd  QWORD PTR [esp+0x20],xmm0
 14787dd:	mov    ecx,DWORD PTR [edi+0x30]
 14787e0:	mov    DWORD PTR [esp+0x1c],ecx
 14787e4:	movsd  xmm0,QWORD PTR [edi+0x28]
 14787e9:	movsd  QWORD PTR [esp+0x14],xmm0
 14787ef:	mov    ecx,DWORD PTR [edi+0x24]
 14787f2:	mov    DWORD PTR [esp+0x10],ecx
 14787f6:	movsd  xmm0,QWORD PTR [edi+0x1c]
 14787fb:	movsd  QWORD PTR [esp+0x8],xmm0
 1478801:	mov    DWORD PTR [esp+0x4],eax
 1478805:	mov    DWORD PTR [esp],esi
 1478808:	call   14789a2  ; SmoothMoves.BoneAnimation::SetVertexData
 147880d:	mov    eax,DWORD PTR [esi+0xec]
 1478813:	test   eax,eax
 1478815:	je     1478998
 147881b:	mov    ecx,DWORD PTR [esi+0xf0]
 1478821:	mov    DWORD PTR [esp+0x4],ecx
 1478825:	mov    DWORD PTR [esp],eax
 1478828:	mov    DWORD PTR [esp+0x8],0x0
 1478830:	call   139d1e9  ; UnityEngine.Mesh::set_vertices
 1478835:	mov    eax,DWORD PTR [edi+0xc]
 1478838:	shl    eax,0x2
 147883b:	movsd  xmm0,QWORD PTR [edi+0x4c]
 1478840:	movsd  xmm1,QWORD PTR [edi+0x54]
 1478845:	movsd  QWORD PTR [esp+0x10],xmm1
 147884b:	movsd  QWORD PTR [esp+0x8],xmm0
 1478851:	mov    DWORD PTR [esp+0x4],eax
 1478855:	mov    DWORD PTR [esp],esi
 1478858:	call   1478b12  ; SmoothMoves.BoneAnimation::SetBoneUV
 147885d:	mov    eax,DWORD PTR [esi+0xec]
 1478863:	test   eax,eax
 1478865:	je     1478998
 147886b:	mov    ecx,DWORD PTR [esi+0xf4]
 1478871:	mov    DWORD PTR [esp+0x4],ecx
 1478875:	mov    DWORD PTR [esp],eax
 1478878:	mov    DWORD PTR [esp+0x8],0x0
 1478880:	call   139d31e  ; UnityEngine.Mesh::set_uv
 1478885:	mov    al,0x1
 1478887:	mov    DWORD PTR [esp+0x40],eax
 147888b:	mov    eax,DWORD PTR [edi+0x10]
 147888e:	test   eax,eax
 1478890:	je     1478998
 1478896:	mov    ecx,DWORD PTR [esp+0x48]
 147889a:	mov    ecx,DWORD PTR [ecx]
 147889c:	mov    DWORD PTR [esp+0x8],ecx
 14788a0:	mov    DWORD PTR [esp],eax
 14788a3:	mov    DWORD PTR [esp+0x4],0x5
 14788ab:	call   497288  ; System.Collections.Generic.List`1<SmoothMoves.TriggerFrameBone+TRIGGER_EVENT_TYPE>::Contains
 14788b0:	test   al,al
 14788b2:	je     1478938
 14788b8:	mov    eax,DWORD PTR [edi+0xc]
 14788bb:	shl    eax,0x2
 14788be:	mov    ecx,DWORD PTR [edi+0x48]
 14788c1:	mov    DWORD PTR [esp+0x34],ecx
 14788c5:	movsd  xmm0,QWORD PTR [edi+0x40]
 14788ca:	movsd  QWORD PTR [esp+0x2c],xmm0
 14788d0:	mov    ecx,DWORD PTR [edi+0x3c]
 14788d3:	mov    DWORD PTR [esp+0x28],ecx
 14788d7:	movsd  xmm0,QWORD PTR [edi+0x34]
 14788dc:	movsd  QWORD PTR [esp+0x20],xmm0
 14788e2:	mov    ecx,DWORD PTR [edi+0x30]
 14788e5:	mov    DWORD PTR [esp+0x1c],ecx
 14788e9:	movsd  xmm0,QWORD PTR [edi+0x28]
 14788ee:	movsd  QWORD PTR [esp+0x14],xmm0
 14788f4:	mov    ecx,DWORD PTR [edi+0x24]
 14788f7:	mov    DWORD PTR [esp+0x10],ecx
 14788fb:	movsd  xmm0,QWORD PTR [edi+0x1c]
 1478900:	movsd  QWORD PTR [esp+0x8],xmm0
 1478906:	mov    DWORD PTR [esp+0x4],eax
 147890a:	mov    DWORD PTR [esp],esi
 147890d:	call   14789a2  ; SmoothMoves.BoneAnimation::SetVertexData
 1478912:	mov    eax,DWORD PTR [esi+0xec]
 1478918:	test   eax,eax
 147891a:	je     1478998
 147891c:	mov    ecx,DWORD PTR [esi+0xf0]
 1478922:	mov    DWORD PTR [esp+0x4],ecx
 1478926:	mov    DWORD PTR [esp],eax
 1478929:	mov    DWORD PTR [esp+0x8],0x0
 1478931:	call   139d1e9  ; UnityEngine.Mesh::set_vertices
 1478936:	jmp    1478940
 1478938:	mov    eax,DWORD PTR [esp+0x40]
 147893c:	test   al,al
 147893e:	je     1478989
 1478940:	mov    eax,edi
 1478942:	mov    edi,DWORD PTR [esi+0x20]
 1478945:	test   edi,edi
 1478947:	je     1478998
 1478949:	mov    ecx,eax
 147894b:	mov    esi,DWORD PTR [ecx+0xc]
 147894e:	mov    eax,DWORD PTR [edi]
 1478950:	mov    eax,DWORD PTR [eax+0x18]
 1478953:	mov    DWORD PTR [esp+0x4],eax
 1478957:	mov    DWORD PTR [esp],ecx
 147895a:	call   20c1b8
 147895f:	test   eax,eax
 1478961:	jne    1478970
 1478963:	call   1fc998
 1478968:	mov    DWORD PTR [esp],eax
 147896b:	call   1fbb20
 1478970:	cmp    DWORD PTR [edi+0xc],esi
 1478973:	ja     1478982
 1478975:	call   1fc7e4
 147897a:	mov    DWORD PTR [esp],eax
 147897d:	call   1fbb20
 1478982:	mov    eax,DWORD PTR [ebp+0xc]
 1478985:	mov    DWORD PTR [edi+esi*4+0x10],eax
 1478989:	mov    eax,DWORD PTR [esp+0x44]
 147898d:	movzx  eax,al
 1478990:	lea    esp,[ebp-0xc]
 1478993:	pop    esi
 1478994:	pop    edi
 1478995:	pop    ebx
 1478996:	pop    ebp
 1478997:	ret
 1478998:	call   1fbc48
 147899d:	call   14745da