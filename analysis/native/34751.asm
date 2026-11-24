
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ebf719:
  ebf719:	push   ebp
  ebf71a:	mov    ebp,esp
  ebf71c:	push   ebx
  ebf71d:	push   edi
  ebf71e:	push   esi
  ebf71f:	and    esp,0xfffffff0
  ebf722:	sub    esp,0x20
  ebf725:	call   ebf72a
  ebf72a:	pop    ebx
  ebf72b:	add    ebx,0x105281a
  ebf731:	mov    esi,DWORD PTR [ebp+0x8]
  ebf734:	mov    al,BYTE PTR [ebx+0x626ce]
  ebf73a:	test   al,al
  ebf73c:	jne    ebf755
  ebf73e:	lea    eax,[ebx-0x66fbd0]
  ebf744:	mov    eax,DWORD PTR [eax]
  ebf746:	mov    DWORD PTR [esp],eax
  ebf749:	call   1ca6e8
  ebf74e:	mov    BYTE PTR [ebx+0x626ce],0x1
  ebf755:	mov    esi,DWORD PTR [esi+0x20]
  ebf758:	test   esi,esi
  ebf75a:	je     ebf8a8
  ebf760:	lea    eax,[ebx+0x45874]
  ebf766:	mov    eax,DWORD PTR [eax]
  ebf768:	mov    ecx,DWORD PTR [esi]
  ebf76a:	mov    DWORD PTR [esp+0x14],ecx
  ebf76e:	movzx  edx,WORD PTR [ecx+0xaa]
  ebf775:	test   edx,edx
  ebf777:	je     ebf78c
  ebf779:	mov    ecx,DWORD PTR [esp+0x14]
  ebf77d:	mov    edi,DWORD PTR [ecx+0x4c]
  ebf780:	xor    ecx,ecx
  ebf782:	cmp    DWORD PTR [edi+ecx*8],eax
  ebf785:	je     ebf7a4
  ebf787:	inc    ecx
  ebf788:	cmp    ecx,edx
  ebf78a:	jb     ebf782
  ebf78c:	mov    DWORD PTR [esp+0x4],eax
  ebf790:	mov    DWORD PTR [esp],esi
  ebf793:	mov    DWORD PTR [esp+0x8],0x7b
  ebf79b:	call   1c1964
  ebf7a0:	mov    ecx,eax
  ebf7a2:	jmp    ebf7b3
  ebf7a4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  ebf7a8:	mov    ecx,DWORD PTR [esp+0x14]
  ebf7ac:	lea    ecx,[ecx+eax*8+0x48c]
  ebf7b3:	mov    eax,DWORD PTR [ecx+0x4]
  ebf7b6:	mov    DWORD PTR [esp+0x4],eax
  ebf7ba:	mov    DWORD PTR [esp],esi
  ebf7bd:	call   DWORD PTR [ecx]
  ebf7bf:	test   al,al
  ebf7c1:	mov    edi,DWORD PTR [ebp+0x8]
  ebf7c4:	je     ebf865
  ebf7ca:	mov    edx,DWORD PTR [edi+0x8]
  ebf7cd:	lea    esi,[ebx+0x458a8]
  ebf7d3:	mov    eax,DWORD PTR [esi]
  ebf7d5:	mov    eax,DWORD PTR [eax+0x50]
  ebf7d8:	cmp    DWORD PTR [eax+0x4],0x0
  ebf7dc:	jne    ebf83e
  ebf7de:	lea    eax,[ebx+0x4a16c]
  ebf7e4:	mov    edi,DWORD PTR [eax]
  ebf7e6:	lea    eax,[ebx+0x458ac]
  ebf7ec:	mov    eax,DWORD PTR [eax]
  ebf7ee:	mov    DWORD PTR [esp],eax
  ebf7f1:	mov    DWORD PTR [esp+0x14],edx
  ebf7f5:	call   20bfb2
  ebf7fa:	mov    DWORD PTR [esp+0x10],eax
  ebf7fe:	mov    DWORD PTR [esp+0x18],edi
  ebf802:	mov    edi,DWORD PTR [ebp+0x8]
  ebf805:	lea    ecx,[ebx+0x4a164]
  ebf80b:	mov    ecx,DWORD PTR [ecx]
  ebf80d:	mov    DWORD PTR [esp+0xc],ecx
  ebf811:	mov    ecx,DWORD PTR [esp+0x18]
  ebf815:	mov    DWORD PTR [esp+0x8],ecx
  ebf819:	mov    DWORD PTR [esp],eax
  ebf81c:	mov    DWORD PTR [esp+0x4],0x0
  ebf824:	call   159e10c
  ebf829:	mov    edx,DWORD PTR [esp+0x14]
  ebf82d:	mov    eax,DWORD PTR [esi]
  ebf82f:	mov    eax,DWORD PTR [eax+0x50]
  ebf832:	mov    ecx,DWORD PTR [esp+0x10]
  ebf836:	mov    DWORD PTR [eax+0x4],ecx
  ebf839:	mov    eax,DWORD PTR [esi]
  ebf83b:	mov    eax,DWORD PTR [eax+0x50]
  ebf83e:	mov    eax,DWORD PTR [eax+0x4]
  ebf841:	lea    ecx,[ebx+0x4a168]
  ebf847:	mov    ecx,DWORD PTR [ecx]
  ebf849:	mov    DWORD PTR [esp+0xc],ecx
  ebf84d:	mov    DWORD PTR [esp+0x8],eax
  ebf851:	mov    DWORD PTR [esp+0x4],edx
  ebf855:	mov    DWORD PTR [esp],0x0
  ebf85c:	call   9bc953
  ebf861:	test   al,al
  ebf863:	jne    ebf8a8
  ebf865:	mov    eax,DWORD PTR [ebp+0xc]
  ebf868:	cmp    BYTE PTR [edi+0x39],0x0
  ebf86c:	jne    ebf879
  ebf86e:	mov    ecx,DWORD PTR [edi+0x4c]
  ebf871:	add    ecx,eax
  ebf873:	sub    ecx,DWORD PTR [edi+0x48]
  ebf876:	mov    DWORD PTR [edi+0x4c],ecx
  ebf879:	mov    DWORD PTR [edi+0x48],eax
  ebf87c:	mov    DWORD PTR [esp],edi
  ebf87f:	call   ebf1fb  ; ABH.GameDatas.Battle.BattleEffectGameData::UpdateEffect
  ebf884:	mov    eax,DWORD PTR [edi+0x44]
  ebf887:	test   eax,eax
  ebf889:	js     ebf8a8
  ebf88b:	cmp    DWORD PTR [edi+0x4c],eax
  ebf88e:	jl     ebf8a8
  ebf890:	mov    DWORD PTR [esp],edi
  ebf893:	mov    DWORD PTR [esp+0x8],0x0
  ebf89b:	mov    DWORD PTR [esp+0x4],0x0
  ebf8a3:	call   ebe37e  ; ABH.GameDatas.Battle.BattleEffectGameData::RemoveEffect
  ebf8a8:	lea    esp,[ebp-0xc]
  ebf8ab:	pop    esi
  ebf8ac:	pop    edi
  ebf8ad:	pop    ebx
  ebf8ae:	pop    ebp
  ebf8af:	ret