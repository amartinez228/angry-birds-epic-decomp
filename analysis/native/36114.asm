
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed8790:
  ed8790:	push   ebp
  ed8791:	mov    ebp,esp
  ed8793:	push   ebx
  ed8794:	push   edi
  ed8795:	push   esi
  ed8796:	and    esp,0xfffffff0
  ed8799:	sub    esp,0x60
  ed879c:	call   ed87a1
  ed87a1:	pop    ebx
  ed87a2:	add    ebx,0x10397a3
  ed87a8:	mov    esi,DWORD PTR [ebp+0xc]
  ed87ab:	mov    al,BYTE PTR [ebx+0x6279a]
  ed87b1:	test   al,al
  ed87b3:	jne    ed87cc
  ed87b5:	lea    eax,[ebx-0x6705bc]
  ed87bb:	mov    eax,DWORD PTR [eax]
  ed87bd:	mov    DWORD PTR [esp],eax
  ed87c0:	call   1ca6e8
  ed87c5:	mov    BYTE PTR [ebx+0x6279a],0x1
  ed87cc:	mov    DWORD PTR [esp+0x58],0x0
  ed87d4:	lea    eax,[ebx+0x44d10]
  ed87da:	mov    eax,DWORD PTR [eax]
  ed87dc:	mov    DWORD PTR [esp],eax
  ed87df:	call   20bfb2
  ed87e4:	mov    DWORD PTR [esp+0x34],eax
  ed87e8:	lea    ecx,[ebx+0x49298]
  ed87ee:	mov    ecx,DWORD PTR [ecx]
  ed87f0:	mov    DWORD PTR [esp+0x4],ecx
  ed87f4:	mov    DWORD PTR [esp],eax
  ed87f7:	call   617b0b
  ed87fc:	test   esi,esi
  ed87fe:	je     ed8cf9
  ed8804:	mov    eax,DWORD PTR [ebp+0x8]
  ed8807:	movss  xmm0,DWORD PTR [eax+0x88]
  ed880f:	lea    eax,[ebx+0x45874]
  ed8815:	mov    DWORD PTR [esp+0x28],eax
  ed8819:	mov    eax,DWORD PTR [eax]
  ed881b:	mov    ecx,DWORD PTR [esi]
  ed881d:	movzx  edx,WORD PTR [ecx+0xaa]
  ed8824:	test   edx,edx
  ed8826:	je     ed8837
  ed8828:	mov    esi,DWORD PTR [ecx+0x4c]
  ed882b:	xor    edi,edi
  ed882d:	cmp    DWORD PTR [esi+edi*8],eax
  ed8830:	je     ed8856
  ed8832:	inc    edi
  ed8833:	cmp    edi,edx
  ed8835:	jb     ed882d
  ed8837:	movss  DWORD PTR [esp+0x38],xmm0
  ed883d:	mov    DWORD PTR [esp+0x4],eax
  ed8841:	mov    esi,DWORD PTR [ebp+0xc]
  ed8844:	mov    DWORD PTR [esp],esi
  ed8847:	mov    DWORD PTR [esp+0x8],0x1c
  ed884f:	call   1c1964
  ed8854:	jmp    ed886a
  ed8856:	movss  DWORD PTR [esp+0x38],xmm0
  ed885c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ed8860:	lea    eax,[ecx+eax*8+0x194]
  ed8867:	mov    esi,DWORD PTR [ebp+0xc]
  ed886a:	mov    ecx,DWORD PTR [eax+0x4]
  ed886d:	mov    DWORD PTR [esp+0x4],ecx
  ed8871:	mov    DWORD PTR [esp],esi
  ed8874:	call   DWORD PTR [eax]
  ed8876:	fstp   DWORD PTR [esp+0x40]
  ed887a:	movss  xmm1,DWORD PTR [esp+0x40]
  ed8880:	lea    eax,[ebx+0x431bc]
  ed8886:	mov    eax,DWORD PTR [eax]
  ed8888:	test   BYTE PTR [eax+0xb2],0x1
  ed888f:	je     ed88ab
  ed8891:	cmp    DWORD PTR [eax+0x60],0x0
  ed8895:	jne    ed88ab
  ed8897:	mov    DWORD PTR [esp],eax
  ed889a:	movss  DWORD PTR [esp+0x30],xmm1
  ed88a0:	call   1db0b8
  ed88a5:	movss  xmm1,DWORD PTR [esp+0x30]
  ed88ab:	movss  xmm0,DWORD PTR [esp+0x38]
  ed88b1:	mulss  xmm0,xmm1
  ed88b5:	movss  DWORD PTR [esp+0x4],xmm0
  ed88bb:	mov    DWORD PTR [esp+0x8],0x0
  ed88c3:	mov    DWORD PTR [esp],0x0
  ed88ca:	call   f1e4b9  ; System.Convert::ToInt32
  ed88cf:	mov    edi,eax
  ed88d1:	lea    eax,[ebx+0x430e4]
  ed88d7:	mov    DWORD PTR [esp+0x38],eax
  ed88db:	mov    eax,DWORD PTR [eax]
  ed88dd:	test   BYTE PTR [eax+0xb2],0x1
  ed88e4:	je     ed88fa
  ed88e6:	cmp    DWORD PTR [eax+0x60],0x0
  ed88ea:	jne    ed88fa
  ed88ec:	mov    DWORD PTR [esp],eax
  ed88ef:	call   1db0b8
  ed88f4:	mov    eax,DWORD PTR [esp+0x38]
  ed88f8:	mov    eax,DWORD PTR [eax]
  ed88fa:	mov    eax,DWORD PTR [eax+0x50]
  ed88fd:	mov    esi,DWORD PTR [eax]
  ed88ff:	mov    DWORD PTR [esp+0x54],edi
  ed8903:	lea    eax,[ebx+0x43120]
  ed8909:	mov    DWORD PTR [esp+0x20],eax
  ed890d:	mov    eax,DWORD PTR [eax]
  ed890f:	lea    ecx,[esp+0x54]
  ed8913:	mov    DWORD PTR [esp+0x4],ecx
  ed8917:	mov    DWORD PTR [esp],eax
  ed891a:	call   20bf14
  ed891f:	mov    DWORD PTR [esp+0x8],eax
  ed8923:	mov    DWORD PTR [esp+0x4],esi
  ed8927:	mov    DWORD PTR [esp+0xc],0x0
  ed892f:	mov    DWORD PTR [esp],0x0
  ed8936:	call   cb2fed  ; System.String::Concat
  ed893b:	mov    edi,DWORD PTR [esp+0x34]
  ed893f:	test   edi,edi
  ed8941:	je     ed8cf9
  ed8947:	lea    ecx,[ebx+0x56adc]
  ed894d:	mov    ecx,DWORD PTR [ecx]
  ed894f:	lea    edx,[ebx+0x4929c]
  ed8955:	mov    DWORD PTR [esp+0x30],edx
  ed8959:	mov    edx,DWORD PTR [edx]
  ed895b:	mov    DWORD PTR [esp+0xc],edx
  ed895f:	mov    DWORD PTR [esp+0x8],eax
  ed8963:	mov    DWORD PTR [esp+0x4],ecx
  ed8967:	mov    DWORD PTR [esp],edi
  ed896a:	call   619d68
  ed896f:	mov    eax,DWORD PTR [esp+0x38]
  ed8973:	mov    eax,DWORD PTR [eax]
  ed8975:	mov    eax,DWORD PTR [eax+0x50]
  ed8978:	mov    eax,DWORD PTR [eax]
  ed897a:	mov    DWORD PTR [esp+0x24],eax
  ed897e:	mov    esi,DWORD PTR [ebp+0x8]
  ed8981:	movss  xmm0,DWORD PTR [esi+0x8c]
  ed8989:	movss  DWORD PTR [esp+0x50],xmm0
  ed898f:	lea    eax,[ebx+0x433a4]
  ed8995:	mov    DWORD PTR [esp+0x2c],eax
  ed8999:	mov    eax,DWORD PTR [eax]
  ed899b:	lea    ecx,[esp+0x50]
  ed899f:	mov    DWORD PTR [esp+0x4],ecx
  ed89a3:	mov    DWORD PTR [esp],eax
  ed89a6:	call   20bf14
  ed89ab:	mov    DWORD PTR [esp+0x8],eax
  ed89af:	mov    eax,DWORD PTR [esp+0x24]
  ed89b3:	mov    DWORD PTR [esp+0x4],eax
  ed89b7:	mov    DWORD PTR [esp+0xc],0x0
  ed89bf:	mov    DWORD PTR [esp],0x0
  ed89c6:	call   cb2fed  ; System.String::Concat
  ed89cb:	lea    ecx,[ebx+0x56bd4]
  ed89d1:	mov    ecx,DWORD PTR [ecx]
  ed89d3:	mov    edx,DWORD PTR [esp+0x30]
  ed89d7:	mov    edx,DWORD PTR [edx]
  ed89d9:	mov    DWORD PTR [esp+0xc],edx
  ed89dd:	mov    DWORD PTR [esp+0x8],eax
  ed89e1:	mov    DWORD PTR [esp+0x4],ecx
  ed89e5:	mov    DWORD PTR [esp],edi
  ed89e8:	call   619d68
  ed89ed:	mov    eax,DWORD PTR [esp+0x38]
  ed89f1:	mov    eax,DWORD PTR [eax]
  ed89f3:	mov    eax,DWORD PTR [eax+0x50]
  ed89f6:	mov    eax,DWORD PTR [eax]
  ed89f8:	mov    DWORD PTR [esp+0x24],eax
  ed89fc:	movss  xmm0,DWORD PTR [esi+0x98]
  ed8a04:	mov    eax,DWORD PTR [esp+0x28]
  ed8a08:	mov    eax,DWORD PTR [eax]
  ed8a0a:	mov    ecx,DWORD PTR [ebp+0xc]
  ed8a0d:	mov    ecx,DWORD PTR [ecx]
  ed8a0f:	movzx  edx,WORD PTR [ecx+0xaa]
  ed8a16:	test   edx,edx
  ed8a18:	je     ed8a29
  ed8a1a:	mov    esi,DWORD PTR [ecx+0x4c]
  ed8a1d:	xor    edi,edi
  ed8a1f:	cmp    DWORD PTR [esi+edi*8],eax
  ed8a22:	je     ed8a48
  ed8a24:	inc    edi
  ed8a25:	cmp    edi,edx
  ed8a27:	jb     ed8a1f
  ed8a29:	movss  DWORD PTR [esp+0x28],xmm0
  ed8a2f:	mov    DWORD PTR [esp+0x4],eax
  ed8a33:	mov    esi,DWORD PTR [ebp+0xc]
  ed8a36:	mov    DWORD PTR [esp],esi
  ed8a39:	mov    DWORD PTR [esp+0x8],0x1c
  ed8a41:	call   1c1964
  ed8a46:	jmp    ed8a5c
  ed8a48:	movss  DWORD PTR [esp+0x28],xmm0
  ed8a4e:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ed8a52:	lea    eax,[ecx+eax*8+0x194]
  ed8a59:	mov    esi,DWORD PTR [ebp+0xc]
  ed8a5c:	mov    ecx,DWORD PTR [eax+0x4]
  ed8a5f:	mov    DWORD PTR [esp+0x4],ecx
  ed8a63:	mov    DWORD PTR [esp],esi
  ed8a66:	call   DWORD PTR [eax]
  ed8a68:	fstp   DWORD PTR [esp+0x3c]
  ed8a6c:	movss  xmm0,DWORD PTR [esp+0x28]
  ed8a72:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ed8a7a:	mulss  xmm0,DWORD PTR [esp+0x3c]
  ed8a80:	movss  DWORD PTR [esp+0x4],xmm0
  ed8a86:	mov    DWORD PTR [esp+0x8],0x0
  ed8a8e:	mov    DWORD PTR [esp],0x0
  ed8a95:	call   f1e4b9  ; System.Convert::ToInt32
  ed8a9a:	mov    DWORD PTR [esp+0x58],eax
  ed8a9e:	lea    eax,[ebx+0x508e0]
  ed8aa4:	mov    eax,DWORD PTR [eax]
  ed8aa6:	mov    DWORD PTR [esp+0x4],eax
  ed8aaa:	lea    eax,[esp+0x58]
  ed8aae:	mov    DWORD PTR [esp],eax
  ed8ab1:	mov    DWORD PTR [esp+0x8],0x0
  ed8ab9:	call   fea004
  ed8abe:	mov    DWORD PTR [esp+0x8],eax
  ed8ac2:	mov    eax,DWORD PTR [esp+0x24]
  ed8ac6:	mov    DWORD PTR [esp+0x4],eax
  ed8aca:	mov    DWORD PTR [esp+0xc],0x0
  ed8ad2:	mov    DWORD PTR [esp],0x0
  ed8ad9:	call   ca462a  ; System.String::Concat
  ed8ade:	lea    ecx,[ebx+0x56c04]
  ed8ae4:	mov    ecx,DWORD PTR [ecx]
  ed8ae6:	mov    esi,DWORD PTR [esp+0x30]
  ed8aea:	mov    edx,DWORD PTR [esi]
  ed8aec:	mov    DWORD PTR [esp+0xc],edx
  ed8af0:	mov    DWORD PTR [esp+0x8],eax
  ed8af4:	mov    DWORD PTR [esp+0x4],ecx
  ed8af8:	mov    eax,DWORD PTR [esp+0x34]
  ed8afc:	mov    DWORD PTR [esp],eax
  ed8aff:	call   619d68
  ed8b04:	mov    eax,DWORD PTR [esp+0x38]
  ed8b08:	mov    eax,DWORD PTR [eax]
  ed8b0a:	mov    eax,DWORD PTR [eax+0x50]
  ed8b0d:	mov    eax,DWORD PTR [eax]
  ed8b0f:	mov    DWORD PTR [esp+0x28],eax
  ed8b13:	mov    edi,DWORD PTR [ebp+0x8]
  ed8b16:	movss  xmm0,DWORD PTR [edi+0x90]
  ed8b1e:	movss  DWORD PTR [esp+0x4c],xmm0
  ed8b24:	mov    eax,DWORD PTR [esp+0x2c]
  ed8b28:	mov    eax,DWORD PTR [eax]
  ed8b2a:	lea    ecx,[esp+0x4c]
  ed8b2e:	mov    DWORD PTR [esp+0x4],ecx
  ed8b32:	mov    DWORD PTR [esp],eax
  ed8b35:	call   20bf14
  ed8b3a:	mov    DWORD PTR [esp+0x8],eax
  ed8b3e:	mov    eax,DWORD PTR [esp+0x28]
  ed8b42:	mov    DWORD PTR [esp+0x4],eax
  ed8b46:	mov    DWORD PTR [esp+0xc],0x0
  ed8b4e:	mov    DWORD PTR [esp],0x0
  ed8b55:	call   cb2fed  ; System.String::Concat
  ed8b5a:	lea    ecx,[ebx+0x56c0c]
  ed8b60:	mov    ecx,DWORD PTR [ecx]
  ed8b62:	mov    edx,DWORD PTR [esi]
  ed8b64:	mov    DWORD PTR [esp+0xc],edx
  ed8b68:	mov    DWORD PTR [esp+0x8],eax
  ed8b6c:	mov    DWORD PTR [esp+0x4],ecx
  ed8b70:	mov    eax,DWORD PTR [esp+0x34]
  ed8b74:	mov    DWORD PTR [esp],eax
  ed8b77:	call   619d68
  ed8b7c:	mov    eax,DWORD PTR [edi+0x8]
  ed8b7f:	test   eax,eax
  ed8b81:	je     ed8cf9
  ed8b87:	mov    ecx,DWORD PTR [esp+0x38]
  ed8b8b:	mov    ecx,DWORD PTR [ecx]
  ed8b8d:	mov    ecx,DWORD PTR [ecx+0x50]
  ed8b90:	mov    edi,DWORD PTR [ecx]
  ed8b92:	mov    DWORD PTR [esp],eax
  ed8b95:	mov    DWORD PTR [esp+0x4],0x0
  ed8b9d:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
  ed8ba2:	test   eax,eax
  ed8ba4:	je     ed8cf9
  ed8baa:	mov    DWORD PTR [esp],eax
  ed8bad:	mov    DWORD PTR [esp+0x4],0x0
  ed8bb5:	call   1703170  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectDuration
  ed8bba:	mov    DWORD PTR [esp+0x48],eax
  ed8bbe:	mov    eax,DWORD PTR [esp+0x20]
  ed8bc2:	mov    eax,DWORD PTR [eax]
  ed8bc4:	lea    ecx,[esp+0x48]
  ed8bc8:	mov    DWORD PTR [esp+0x4],ecx
  ed8bcc:	mov    DWORD PTR [esp],eax
  ed8bcf:	call   20bf14
  ed8bd4:	mov    DWORD PTR [esp+0x8],eax
  ed8bd8:	mov    DWORD PTR [esp+0x4],edi
  ed8bdc:	mov    DWORD PTR [esp+0xc],0x0
  ed8be4:	mov    DWORD PTR [esp],0x0
  ed8beb:	call   cb2fed  ; System.String::Concat
  ed8bf0:	lea    ecx,[ebx+0x56b94]
  ed8bf6:	mov    ecx,DWORD PTR [ecx]
  ed8bf8:	mov    edx,DWORD PTR [esp+0x30]
  ed8bfc:	mov    edx,DWORD PTR [edx]
  ed8bfe:	mov    DWORD PTR [esp+0xc],edx
  ed8c02:	mov    DWORD PTR [esp+0x8],eax
  ed8c06:	mov    DWORD PTR [esp+0x4],ecx
  ed8c0a:	mov    esi,DWORD PTR [esp+0x34]
  ed8c0e:	mov    DWORD PTR [esp],esi
  ed8c11:	call   619d68
  ed8c16:	mov    eax,DWORD PTR [esp+0x38]
  ed8c1a:	mov    eax,DWORD PTR [eax]
  ed8c1c:	mov    eax,DWORD PTR [eax+0x50]
  ed8c1f:	mov    edi,DWORD PTR [eax]
  ed8c21:	mov    eax,DWORD PTR [ebp+0x8]
  ed8c24:	movss  xmm0,DWORD PTR [eax+0x94]
  ed8c2c:	movss  DWORD PTR [esp+0x44],xmm0
  ed8c32:	mov    eax,DWORD PTR [esp+0x2c]
  ed8c36:	mov    eax,DWORD PTR [eax]
  ed8c38:	lea    ecx,[esp+0x44]
  ed8c3c:	mov    DWORD PTR [esp+0x4],ecx
  ed8c40:	mov    DWORD PTR [esp],eax
  ed8c43:	call   20bf14
  ed8c48:	mov    DWORD PTR [esp+0x8],eax
  ed8c4c:	mov    DWORD PTR [esp+0x4],edi
  ed8c50:	mov    DWORD PTR [esp+0xc],0x0
  ed8c58:	mov    DWORD PTR [esp],0x0
  ed8c5f:	call   cb2fed  ; System.String::Concat
  ed8c64:	lea    ecx,[ebx+0x56b90]
  ed8c6a:	mov    ecx,DWORD PTR [ecx]
  ed8c6c:	mov    edx,DWORD PTR [esp+0x30]
  ed8c70:	mov    edx,DWORD PTR [edx]
  ed8c72:	mov    DWORD PTR [esp+0xc],edx
  ed8c76:	mov    DWORD PTR [esp+0x8],eax
  ed8c7a:	mov    DWORD PTR [esp+0x4],ecx
  ed8c7e:	mov    DWORD PTR [esp],esi
  ed8c81:	call   619d68
  ed8c86:	lea    eax,[ebx+0x4584c]
  ed8c8c:	mov    eax,DWORD PTR [eax]
  ed8c8e:	test   BYTE PTR [eax+0xb2],0x1
  ed8c95:	je     ed8ca5
  ed8c97:	cmp    DWORD PTR [eax+0x60],0x0
  ed8c9b:	jne    ed8ca5
  ed8c9d:	mov    DWORD PTR [esp],eax
  ed8ca0:	call   1db0b8
  ed8ca5:	mov    DWORD PTR [esp+0x4],0x0
  ed8cad:	mov    DWORD PTR [esp],0x0
  ed8cb4:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  ed8cb9:	mov    edi,eax
  ed8cbb:	mov    eax,DWORD PTR [ebp+0x8]
  ed8cbe:	mov    eax,DWORD PTR [eax+0x8]
  ed8cc1:	test   eax,eax
  ed8cc3:	je     ed8cf9
  ed8cc5:	mov    DWORD PTR [esp],eax
  ed8cc8:	mov    DWORD PTR [esp+0x4],0x0
  ed8cd0:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
  ed8cd5:	test   edi,edi
  ed8cd7:	je     ed8cf9
  ed8cd9:	mov    DWORD PTR [esp+0x8],esi
  ed8cdd:	mov    DWORD PTR [esp+0x4],eax
  ed8ce1:	mov    DWORD PTR [esp],edi
  ed8ce4:	mov    DWORD PTR [esp+0xc],0x0
  ed8cec:	call   af6df4  ; ABHLocaService::GetSkillDescriptions
  ed8cf1:	lea    esp,[ebp-0xc]
  ed8cf4:	pop    esi
  ed8cf5:	pop    edi
  ed8cf6:	pop    ebx
  ed8cf7:	pop    ebp
  ed8cf8:	ret
  ed8cf9:	call   1fbc48
  ed8cfe:	call   ebbb41