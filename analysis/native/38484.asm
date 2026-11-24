
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014b98d5:
 14b98d5:	push   ebp
 14b98d6:	mov    ebp,esp
 14b98d8:	push   ebx
 14b98d9:	push   edi
 14b98da:	push   esi
 14b98db:	and    esp,0xfffffff0
 14b98de:	sub    esp,0x50
 14b98e1:	call   14b98e6
 14b98e6:	pop    ebx
 14b98e7:	add    ebx,0xa5865e
 14b98ed:	mov    edi,DWORD PTR [ebp+0x8]
 14b98f0:	mov    al,BYTE PTR [ebx+0x65a2c]
 14b98f6:	test   al,al
 14b98f8:	jne    14b9911
 14b98fa:	lea    eax,[ebx-0x65826c]
 14b9900:	mov    eax,DWORD PTR [eax]
 14b9902:	mov    DWORD PTR [esp],eax
 14b9905:	call   1ca6e8
 14b990a:	mov    BYTE PTR [ebx+0x65a2c],0x1
 14b9911:	mov    eax,DWORD PTR [edi+0x30]
 14b9914:	mov    DWORD PTR [edi+0x30],0xffffffff
 14b991b:	cmp    eax,0x1
 14b991e:	jne    14b99fc
 14b9924:	mov    eax,DWORD PTR [edi+0x24]
 14b9927:	test   eax,eax
 14b9929:	je     14ba0b9
 14b992f:	mov    eax,DWORD PTR [eax+0x34]
 14b9932:	test   eax,eax
 14b9934:	je     14ba0b9
 14b993a:	lea    ecx,[ebx+0x4a228]
 14b9940:	mov    ecx,DWORD PTR [ecx]
 14b9942:	mov    DWORD PTR [esp+0x8],ecx
 14b9946:	mov    DWORD PTR [esp+0x4],eax
 14b994a:	lea    eax,[esp+0x38]
 14b994e:	mov    DWORD PTR [esp],eax
 14b9951:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
 14b9956:	sub    esp,0x4
 14b9959:	lea    esi,[edi+0x14]
 14b995c:	mov    DWORD PTR [esp+0x28],esi
 14b9960:	movsd  xmm0,QWORD PTR [esp+0x38]
 14b9966:	movsd  xmm1,QWORD PTR [esp+0x40]
 14b996c:	movsd  QWORD PTR [edi+0x1c],xmm1
 14b9971:	movsd  QWORD PTR [edi+0x14],xmm0
 14b9976:	lea    eax,[ebx+0x4a230]
 14b997c:	mov    DWORD PTR [esp+0x24],eax
 14b9980:	mov    eax,DWORD PTR [esp+0x24]
 14b9984:	mov    eax,DWORD PTR [eax]
 14b9986:	mov    DWORD PTR [esp+0x4],eax
 14b998a:	mov    DWORD PTR [esp],esi
 14b998d:	call   447e4e
 14b9992:	test   al,al
 14b9994:	je     14b9b0b
 14b999a:	lea    eax,[ebx+0x4a22c]
 14b99a0:	mov    eax,DWORD PTR [eax]
 14b99a2:	mov    DWORD PTR [esp+0x4],eax
 14b99a6:	mov    DWORD PTR [esp],esi
 14b99a9:	call   447f1e
 14b99ae:	mov    edx,DWORD PTR [edi+0x34]
 14b99b1:	test   edx,edx
 14b99b3:	je     14b9b1e
 14b99b9:	mov    ecx,DWORD PTR [edi+0x24]
 14b99bc:	test   ecx,ecx
 14b99be:	je     14b9db4
 14b99c4:	mov    esi,DWORD PTR [edi+0x10]
 14b99c7:	mov    DWORD PTR [esp+0x2c],esi
 14b99cb:	mov    esi,DWORD PTR [edx+0x8]
 14b99ce:	mov    edx,DWORD PTR [edx+0xc]
 14b99d1:	mov    DWORD PTR [esp+0x10],esi
 14b99d5:	mov    DWORD PTR [esp+0xc],edx
 14b99d9:	mov    edx,DWORD PTR [esp+0x2c]
 14b99dd:	mov    DWORD PTR [esp+0x8],edx
 14b99e1:	mov    DWORD PTR [esp+0x4],eax
 14b99e5:	mov    DWORD PTR [esp],ecx
 14b99e8:	mov    esi,DWORD PTR [esp+0x28]
 14b99ec:	call   14b8e20  ; ABH.GameDatas.Battle.Skills.HealAndCleanseSkill::Heal
 14b99f1:	jmp    14b9980
 14b99f3:	mov    DWORD PTR [esp+0x28],esi
 14b99f7:	jmp    14b9dbe
 14b99fc:	test   eax,eax
 14b99fe:	jne    14ba034
 14b9a04:	lea    eax,[ebx+0x45ab0]
 14b9a0a:	mov    eax,DWORD PTR [eax]
 14b9a0c:	mov    DWORD PTR [esp],eax
 14b9a0f:	call   20bfb2
 14b9a14:	mov    DWORD PTR [esp+0x20],ebx
 14b9a18:	mov    esi,eax
 14b9a1a:	mov    DWORD PTR [esp],esi
 14b9a1d:	mov    DWORD PTR [esp+0x4],0x0
 14b9a25:	call   14ba16f  ; ABH.GameDatas.Battle.Skills.HealAndCleanseSkill+<DoAction>c__Iterator0+<DoAction>c__AnonStorey1::.ctor
 14b9a2a:	mov    DWORD PTR [edi+0x34],esi
 14b9a2d:	test   esi,esi
 14b9a2f:	je     14ba0b5
 14b9a35:	mov    DWORD PTR [esi+0x10],edi
 14b9a38:	mov    eax,DWORD PTR [edi+0x34]
 14b9a3b:	test   eax,eax
 14b9a3d:	je     14ba0b5
 14b9a43:	mov    ecx,DWORD PTR [edi+0x8]
 14b9a46:	mov    DWORD PTR [eax+0x8],ecx
 14b9a49:	mov    eax,DWORD PTR [edi+0x34]
 14b9a4c:	test   eax,eax
 14b9a4e:	mov    ebx,DWORD PTR [esp+0x20]
 14b9a52:	je     14ba0b9
 14b9a58:	mov    ecx,DWORD PTR [edi+0xc]
 14b9a5b:	mov    DWORD PTR [eax+0xc],ecx
 14b9a5e:	mov    eax,DWORD PTR [edi+0x24]
 14b9a61:	test   eax,eax
 14b9a63:	je     14ba0b9
 14b9a69:	mov    DWORD PTR [esp],eax
 14b9a6c:	mov    DWORD PTR [esp+0x4],0x0
 14b9a74:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 14b9a79:	test   eax,eax
 14b9a7b:	je     14ba0b9
 14b9a81:	mov    DWORD PTR [esp],eax
 14b9a84:	mov    DWORD PTR [esp+0x4],0x0
 14b9a8c:	call   6b0fbb  ; ABH.GameDatas.SkillGameData::get_Balancing
 14b9a91:	test   eax,eax
 14b9a93:	je     14ba0b9
 14b9a99:	mov    DWORD PTR [esp],eax
 14b9a9c:	mov    DWORD PTR [esp+0x4],0x0
 14b9aa4:	call   17030c1  ; ABH.Shared.BalancingData.SkillBalancingData::get_NameId
 14b9aa9:	mov    ecx,DWORD PTR [edi+0x34]
 14b9aac:	test   ecx,ecx
 14b9aae:	je     14ba0b9
 14b9ab4:	mov    DWORD PTR [esp+0x2c],eax
 14b9ab8:	mov    edx,DWORD PTR [ecx+0x8]
 14b9abb:	test   edx,edx
 14b9abd:	je     14ba0b9
 14b9ac3:	lea    eax,[ebx+0x45874]
 14b9ac9:	mov    DWORD PTR [esp+0x24],eax
 14b9acd:	mov    eax,DWORD PTR [eax]
 14b9acf:	mov    ecx,DWORD PTR [edx]
 14b9ad1:	mov    DWORD PTR [esp+0x28],edx
 14b9ad5:	movzx  edx,WORD PTR [ecx+0xaa]
 14b9adc:	test   edx,edx
 14b9ade:	je     14b9aef
 14b9ae0:	mov    edi,DWORD PTR [ecx+0x4c]
 14b9ae3:	xor    esi,esi
 14b9ae5:	cmp    DWORD PTR [edi+esi*8],eax
 14b9ae8:	je     14b9b2c
 14b9aea:	inc    esi
 14b9aeb:	cmp    esi,edx
 14b9aed:	jb     14b9ae5
 14b9aef:	mov    DWORD PTR [esp+0x4],eax
 14b9af3:	mov    esi,DWORD PTR [esp+0x28]
 14b9af7:	mov    DWORD PTR [esp],esi
 14b9afa:	mov    DWORD PTR [esp+0x8],0xb
 14b9b02:	call   1c1964
 14b9b07:	mov    ecx,eax
 14b9b09:	jmp    14b9b3b
 14b9b0b:	mov    DWORD PTR [esp+0x28],esi
 14b9b0f:	mov    esi,edi
 14b9b11:	xor    edi,edi
 14b9b13:	mov    al,0x1
 14b9b15:	mov    DWORD PTR [esp+0x2c],eax
 14b9b19:	jmp    14b9de0
 14b9b1e:	mov    DWORD PTR [esp+0x28],esi
 14b9b22:	call   1fbc48
 14b9b27:	call   14943fc
 14b9b2c:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 14b9b30:	lea    ecx,[ecx+eax*8+0x10c]
 14b9b37:	mov    esi,DWORD PTR [esp+0x28]
 14b9b3b:	mov    eax,DWORD PTR [ecx+0x4]
 14b9b3e:	mov    DWORD PTR [esp+0x4],eax
 14b9b42:	mov    DWORD PTR [esp],esi
 14b9b45:	call   DWORD PTR [ecx]
 14b9b47:	mov    esi,eax
 14b9b49:	lea    eax,[ebx+0x430e4]
 14b9b4f:	mov    eax,DWORD PTR [eax]
 14b9b51:	test   BYTE PTR [eax+0xb2],0x1
 14b9b58:	mov    edi,DWORD PTR [ebp+0x8]
 14b9b5b:	je     14b9b6b
 14b9b5d:	cmp    DWORD PTR [eax+0x60],0x0
 14b9b61:	jne    14b9b6b
 14b9b63:	mov    DWORD PTR [esp],eax
 14b9b66:	call   1db0b8
 14b9b6b:	lea    eax,[ebx+0x56b98]
 14b9b71:	mov    eax,DWORD PTR [eax]
 14b9b73:	lea    ecx,[ebx+0x56b9c]
 14b9b79:	mov    ecx,DWORD PTR [ecx]
 14b9b7b:	mov    DWORD PTR [esp+0x10],esi
 14b9b7f:	mov    DWORD PTR [esp+0xc],ecx
 14b9b83:	mov    ecx,DWORD PTR [esp+0x2c]
 14b9b87:	mov    DWORD PTR [esp+0x8],ecx
 14b9b8b:	mov    DWORD PTR [esp+0x4],eax
 14b9b8f:	mov    DWORD PTR [esp+0x14],0x0
 14b9b97:	mov    DWORD PTR [esp],0x0
 14b9b9e:	call   cc1627  ; System.String::Concat
 14b9ba3:	mov    DWORD PTR [esp+0x4],eax
 14b9ba7:	mov    DWORD PTR [esp+0x8],0x0
 14b9baf:	mov    DWORD PTR [esp],0x0
 14b9bb6:	call   1068c69  ; DebugLog::Log
 14b9bbb:	mov    eax,DWORD PTR [edi+0x34]
 14b9bbe:	test   eax,eax
 14b9bc0:	je     14ba0b9
 14b9bc6:	mov    ecx,DWORD PTR [edi+0x24]
 14b9bc9:	test   ecx,ecx
 14b9bcb:	je     14ba0b9
 14b9bd1:	mov    eax,DWORD PTR [eax+0xc]
 14b9bd4:	mov    DWORD PTR [ecx+0x30],eax
 14b9bd7:	mov    eax,DWORD PTR [edi+0x34]
 14b9bda:	test   eax,eax
 14b9bdc:	je     14ba0b9
 14b9be2:	mov    ecx,DWORD PTR [edi+0x24]
 14b9be5:	test   ecx,ecx
 14b9be7:	je     14ba0b9
 14b9bed:	mov    eax,DWORD PTR [eax+0x8]
 14b9bf0:	mov    DWORD PTR [ecx+0x18],eax
 14b9bf3:	mov    eax,DWORD PTR [edi+0x24]
 14b9bf6:	test   eax,eax
 14b9bf8:	je     14ba0b9
 14b9bfe:	cmp    BYTE PTR [eax+0x50],0x0
 14b9c02:	je     14b9d16
 14b9c08:	mov    DWORD PTR [esp+0x2c],eax
 14b9c0c:	lea    eax,[ebx+0x45890]
 14b9c12:	mov    eax,DWORD PTR [eax]
 14b9c14:	mov    DWORD PTR [esp],eax
 14b9c17:	call   20bfb2
 14b9c1c:	mov    esi,eax
 14b9c1e:	lea    eax,[ebx+0x4a074]
 14b9c24:	mov    eax,DWORD PTR [eax]
 14b9c26:	mov    DWORD PTR [esp+0x4],eax
 14b9c2a:	mov    DWORD PTR [esp],esi
 14b9c2d:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 14b9c32:	mov    eax,DWORD PTR [esp+0x2c]
 14b9c36:	mov    DWORD PTR [eax+0x34],esi
 14b9c39:	mov    eax,DWORD PTR [edi+0x24]
 14b9c3c:	test   eax,eax
 14b9c3e:	je     14ba0b5
 14b9c44:	mov    ecx,DWORD PTR [edi+0x10]
 14b9c47:	test   ecx,ecx
 14b9c49:	je     14ba0b5
 14b9c4f:	mov    eax,DWORD PTR [eax+0x34]
 14b9c52:	mov    DWORD PTR [esp+0x2c],eax
 14b9c56:	mov    eax,DWORD PTR [ecx+0x58]
 14b9c59:	mov    DWORD PTR [esp+0x28],eax
 14b9c5d:	mov    eax,DWORD PTR [edi+0x34]
 14b9c60:	mov    DWORD PTR [esp+0x1c],eax
 14b9c64:	mov    ebx,DWORD PTR [esp+0x20]
 14b9c68:	lea    eax,[ebx+0x4a530]
 14b9c6e:	mov    edi,DWORD PTR [eax]
 14b9c70:	lea    eax,[ebx+0x4588c]
 14b9c76:	mov    eax,DWORD PTR [eax]
 14b9c78:	mov    DWORD PTR [esp],eax
 14b9c7b:	call   20bfb2
 14b9c80:	mov    esi,eax
 14b9c82:	mov    DWORD PTR [esp+0x48],edi
 14b9c86:	lea    eax,[ebx+0x4a054]
 14b9c8c:	mov    eax,DWORD PTR [eax]
 14b9c8e:	mov    DWORD PTR [esp+0xc],eax
 14b9c92:	mov    eax,DWORD PTR [esp+0x48]
 14b9c96:	mov    DWORD PTR [esp+0x8],eax
 14b9c9a:	mov    eax,DWORD PTR [esp+0x1c]
 14b9c9e:	mov    DWORD PTR [esp+0x4],eax
 14b9ca2:	mov    DWORD PTR [esp],esi
 14b9ca5:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
 14b9caa:	lea    eax,[ebx+0x4a058]
 14b9cb0:	mov    eax,DWORD PTR [eax]
 14b9cb2:	mov    DWORD PTR [esp+0xc],eax
 14b9cb6:	mov    DWORD PTR [esp+0x8],esi
 14b9cba:	mov    eax,DWORD PTR [esp+0x28]
 14b9cbe:	mov    DWORD PTR [esp+0x4],eax
 14b9cc2:	mov    DWORD PTR [esp],0x0
 14b9cc9:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
 14b9cce:	lea    ecx,[ebx+0x4a080]
 14b9cd4:	mov    ecx,DWORD PTR [ecx]
 14b9cd6:	mov    DWORD PTR [esp+0x8],ecx
 14b9cda:	mov    DWORD PTR [esp+0x4],eax
 14b9cde:	mov    DWORD PTR [esp],0x0
 14b9ce5:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
 14b9cea:	mov    edx,DWORD PTR [esp+0x2c]
 14b9cee:	test   edx,edx
 14b9cf0:	je     14ba0b9
 14b9cf6:	lea    ecx,[ebx+0x4a084]
 14b9cfc:	mov    ecx,DWORD PTR [ecx]
 14b9cfe:	mov    DWORD PTR [esp+0x8],ecx
 14b9d02:	mov    DWORD PTR [esp+0x4],eax
 14b9d06:	mov    DWORD PTR [esp],edx
 14b9d09:	call   4c29d3  ; shared address: System.Collections.Generic.List`1<object>::AddRange | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::AddRange | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::AddRange | +15 other aliases
 14b9d0e:	mov    edi,DWORD PTR [ebp+0x8]
 14b9d11:	jmp    14b9ec1
 14b9d16:	mov    cl,BYTE PTR [eax+0x51]
 14b9d19:	mov    BYTE PTR [esp+0x28],cl
 14b9d1d:	mov    DWORD PTR [esp+0x2c],eax
 14b9d21:	lea    eax,[ebx+0x45890]
 14b9d27:	mov    eax,DWORD PTR [eax]
 14b9d29:	mov    DWORD PTR [esp],eax
 14b9d2c:	call   20bfb2
 14b9d31:	mov    DWORD PTR [esp+0x20],ebx
 14b9d35:	mov    esi,eax
 14b9d37:	lea    eax,[ebx+0x4a074]
 14b9d3d:	mov    eax,DWORD PTR [eax]
 14b9d3f:	mov    DWORD PTR [esp+0x4],eax
 14b9d43:	mov    DWORD PTR [esp],esi
 14b9d46:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 14b9d4b:	mov    eax,DWORD PTR [edi+0x34]
 14b9d4e:	test   eax,eax
 14b9d50:	je     14ba0b5
 14b9d56:	cmp    BYTE PTR [esp+0x28],0x0
 14b9d5b:	je     14b9e93
 14b9d61:	test   esi,esi
 14b9d63:	je     14ba0b5
 14b9d69:	mov    eax,DWORD PTR [eax+0xc]
 14b9d6c:	mov    ebx,DWORD PTR [esp+0x20]
 14b9d70:	lea    ecx,[ebx+0x4a078]
 14b9d76:	mov    ecx,DWORD PTR [ecx]
 14b9d78:	mov    DWORD PTR [esp+0x8],ecx
 14b9d7c:	mov    DWORD PTR [esp+0x4],eax
 14b9d80:	mov    DWORD PTR [esp],esi
 14b9d83:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 14b9d88:	mov    eax,DWORD PTR [esp+0x2c]
 14b9d8c:	mov    DWORD PTR [eax+0x34],esi
 14b9d8f:	mov    eax,DWORD PTR [edi+0x34]
 14b9d92:	test   eax,eax
 14b9d94:	je     14ba0b5
 14b9d9a:	mov    ecx,DWORD PTR [edi+0x24]
 14b9d9d:	test   ecx,ecx
 14b9d9f:	je     14ba0b5
 14b9da5:	mov    eax,DWORD PTR [eax+0xc]
 14b9da8:	mov    DWORD PTR [ecx+0x18],eax
 14b9dab:	mov    ebx,DWORD PTR [esp+0x20]
 14b9daf:	jmp    14b9ec1
 14b9db4:	call   1fbc48
 14b9db9:	jmp    14ba0cb
 14b9dbe:	mov    esi,edi
 14b9dc0:	cmp    edx,0x1
 14b9dc3:	jne    14ba0c3
 14b9dc9:	mov    DWORD PTR [esp],eax
 14b9dcc:	call   1ba3f0
 14b9dd1:	mov    edi,DWORD PTR [eax]
 14b9dd3:	call   1b9ce0
 14b9dd8:	mov    DWORD PTR [esp+0x2c],0x0
 14b9de0:	mov    DWORD PTR [esp+0x20],ebx
 14b9de4:	lea    eax,[ebx+0x4a234]
 14b9dea:	mov    eax,DWORD PTR [eax]
 14b9dec:	mov    DWORD PTR [esp+0x4],eax
 14b9df0:	mov    eax,DWORD PTR [esp+0x28]
 14b9df4:	mov    DWORD PTR [esp],eax
 14b9df7:	call   447df6
 14b9dfc:	mov    eax,DWORD PTR [esp+0x2c]
 14b9e00:	test   al,al
 14b9e02:	jne    14b9e14
 14b9e04:	test   edi,edi
 14b9e06:	je     14b9e14
 14b9e08:	mov    DWORD PTR [esp],edi
 14b9e0b:	mov    ebx,DWORD PTR [esp+0x20]
 14b9e0f:	call   1fbb20
 14b9e14:	mov    edi,esi
 14b9e16:	mov    eax,DWORD PTR [edi+0x24]
 14b9e19:	test   eax,eax
 14b9e1b:	je     14ba0b5
 14b9e21:	cmp    BYTE PTR [eax+0x50],0x0
 14b9e25:	je     14b9e63
 14b9e27:	mov    ecx,DWORD PTR [edi+0x34]
 14b9e2a:	test   ecx,ecx
 14b9e2c:	je     14ba0b5
 14b9e32:	mov    edx,DWORD PTR [ecx+0x8]
 14b9e35:	mov    ecx,DWORD PTR [ecx+0xc]
 14b9e38:	mov    esi,DWORD PTR [edi+0x10]
 14b9e3b:	mov    DWORD PTR [esp+0x10],edx
 14b9e3f:	mov    DWORD PTR [esp+0xc],ecx
 14b9e43:	mov    DWORD PTR [esp+0x8],esi
 14b9e47:	mov    DWORD PTR [esp+0x4],ecx
 14b9e4b:	mov    DWORD PTR [esp],eax
 14b9e4e:	mov    ebx,DWORD PTR [esp+0x20]
 14b9e52:	call   14b8e20  ; ABH.GameDatas.Battle.Skills.HealAndCleanseSkill::Heal
 14b9e57:	mov    eax,DWORD PTR [edi+0x24]
 14b9e5a:	test   eax,eax
 14b9e5c:	jne    14b9e67
 14b9e5e:	jmp    14ba0b9
 14b9e63:	mov    ebx,DWORD PTR [esp+0x20]
 14b9e67:	mov    ecx,DWORD PTR [eax+0xc]
 14b9e6a:	mov    DWORD PTR [esp+0x8],ecx
 14b9e6e:	mov    DWORD PTR [esp],eax
 14b9e71:	mov    DWORD PTR [esp+0x10],0x0
 14b9e79:	mov    DWORD PTR [esp+0xc],0x0
 14b9e81:	mov    DWORD PTR [esp+0x4],0x3
 14b9e89:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
 14b9e8e:	jmp    14ba034
 14b9e93:	test   esi,esi
 14b9e95:	je     14ba0b5
 14b9e9b:	mov    eax,DWORD PTR [eax+0x8]
 14b9e9e:	mov    ebx,DWORD PTR [esp+0x20]
 14b9ea2:	lea    ecx,[ebx+0x4a078]
 14b9ea8:	mov    ecx,DWORD PTR [ecx]
 14b9eaa:	mov    DWORD PTR [esp+0x8],ecx
 14b9eae:	mov    DWORD PTR [esp+0x4],eax
 14b9eb2:	mov    DWORD PTR [esp],esi
 14b9eb5:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 14b9eba:	mov    eax,DWORD PTR [esp+0x2c]
 14b9ebe:	mov    DWORD PTR [eax+0x34],esi
 14b9ec1:	mov    ecx,DWORD PTR [edi+0x34]
 14b9ec4:	test   ecx,ecx
 14b9ec6:	je     14ba0b9
 14b9ecc:	mov    eax,DWORD PTR [edi+0x24]
 14b9ecf:	test   eax,eax
 14b9ed1:	je     14ba0b9
 14b9ed7:	mov    edx,DWORD PTR [edi+0x10]
 14b9eda:	mov    DWORD PTR [esp+0x2c],edx
 14b9ede:	mov    esi,DWORD PTR [ecx+0x8]
 14b9ee1:	mov    edx,DWORD PTR [ecx+0xc]
 14b9ee4:	mov    ecx,edi
 14b9ee6:	mov    edi,DWORD PTR [eax+0x34]
 14b9ee9:	mov    DWORD PTR [esp+0x10],esi
 14b9eed:	mov    DWORD PTR [esp+0xc],edi
 14b9ef1:	mov    esi,ecx
 14b9ef3:	mov    DWORD PTR [esp+0x8],edx
 14b9ef7:	mov    ecx,DWORD PTR [esp+0x2c]
 14b9efb:	mov    DWORD PTR [esp+0x4],ecx
 14b9eff:	mov    DWORD PTR [esp],eax
 14b9f02:	mov    DWORD PTR [esp+0x14],0x0
 14b9f0a:	call   eba86c  ; ABH.GameDatas.Battle.SkillBattleDataBase::EvaluateCharge
 14b9f0f:	mov    ecx,DWORD PTR [esi+0x24]
 14b9f12:	test   al,al
 14b9f14:	je     14b9f72
 14b9f16:	test   ecx,ecx
 14b9f18:	je     14ba0b9
 14b9f1e:	mov    esi,DWORD PTR [ecx+0x30]
 14b9f21:	test   esi,esi
 14b9f23:	je     14ba0b9
 14b9f29:	mov    eax,DWORD PTR [esp+0x24]
 14b9f2d:	mov    eax,DWORD PTR [eax]
 14b9f2f:	mov    ecx,DWORD PTR [esi]
 14b9f31:	mov    DWORD PTR [esp+0x2c],ecx
 14b9f35:	movzx  edx,WORD PTR [ecx+0xaa]
 14b9f3c:	test   edx,edx
 14b9f3e:	je     14b9f57
 14b9f40:	mov    ecx,DWORD PTR [esp+0x2c]
 14b9f44:	mov    edi,DWORD PTR [ecx+0x4c]
 14b9f47:	xor    ecx,ecx
 14b9f49:	cmp    DWORD PTR [edi+ecx*8],eax
 14b9f4c:	je     14b9ff9
 14b9f52:	inc    ecx
 14b9f53:	cmp    ecx,edx
 14b9f55:	jb     14b9f49
 14b9f57:	mov    DWORD PTR [esp+0x4],eax
 14b9f5b:	mov    DWORD PTR [esp],esi
 14b9f5e:	mov    DWORD PTR [esp+0x8],0x11
 14b9f66:	call   1c1964
 14b9f6b:	mov    ecx,eax
 14b9f6d:	jmp    14ba008
 14b9f72:	test   ecx,ecx
 14b9f74:	je     14ba0b9
 14b9f7a:	mov    eax,DWORD PTR [ecx+0xc]
 14b9f7d:	mov    DWORD PTR [esp+0x8],eax
 14b9f81:	mov    DWORD PTR [esp],ecx
 14b9f84:	mov    DWORD PTR [esp+0x10],0x0
 14b9f8c:	mov    DWORD PTR [esp+0xc],0x0
 14b9f94:	mov    DWORD PTR [esp+0x4],0x0
 14b9f9c:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
 14b9fa1:	mov    eax,DWORD PTR [esi+0x34]
 14b9fa4:	test   eax,eax
 14b9fa6:	je     14ba0b9
 14b9fac:	mov    esi,DWORD PTR [eax+0xc]
 14b9faf:	test   esi,esi
 14b9fb1:	je     14ba0b9
 14b9fb7:	mov    eax,DWORD PTR [esp+0x24]
 14b9fbb:	mov    eax,DWORD PTR [eax]
 14b9fbd:	mov    ecx,DWORD PTR [esi]
 14b9fbf:	mov    DWORD PTR [esp+0x2c],ecx
 14b9fc3:	movzx  edx,WORD PTR [ecx+0xaa]
 14b9fca:	test   edx,edx
 14b9fcc:	je     14b9fe1
 14b9fce:	mov    ecx,DWORD PTR [esp+0x2c]
 14b9fd2:	mov    edi,DWORD PTR [ecx+0x4c]
 14b9fd5:	xor    ecx,ecx
 14b9fd7:	cmp    DWORD PTR [edi+ecx*8],eax
 14b9fda:	je     14ba041
 14b9fdc:	inc    ecx
 14b9fdd:	cmp    ecx,edx
 14b9fdf:	jb     14b9fd7
 14b9fe1:	mov    DWORD PTR [esp+0x4],eax
 14b9fe5:	mov    DWORD PTR [esp],esi
 14b9fe8:	mov    DWORD PTR [esp+0x8],0x11
 14b9ff0:	call   1c1964
 14b9ff5:	mov    ecx,eax
 14b9ff7:	jmp    14ba050
 14b9ff9:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 14b9ffd:	mov    ecx,DWORD PTR [esp+0x2c]
 14ba001:	lea    ecx,[ecx+eax*8+0x13c]
 14ba008:	mov    eax,DWORD PTR [ecx+0x4]
 14ba00b:	mov    DWORD PTR [esp+0x4],eax
 14ba00f:	mov    DWORD PTR [esp],esi
 14ba012:	call   DWORD PTR [ecx]
 14ba014:	test   eax,eax
 14ba016:	je     14ba0b9
 14ba01c:	mov    DWORD PTR [esp],eax
 14ba01f:	mov    DWORD PTR [esp+0x8],0x0
 14ba027:	mov    DWORD PTR [esp+0x4],0x0
 14ba02f:	call   8d196a  ; CharacterControllerBattleGroundBase::set_targetSheltered
 14ba034:	xor    eax,eax
 14ba036:	movzx  eax,al
 14ba039:	lea    esp,[ebp-0xc]
 14ba03c:	pop    esi
 14ba03d:	pop    edi
 14ba03e:	pop    ebx
 14ba03f:	pop    ebp
 14ba040:	ret
 14ba041:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 14ba045:	mov    ecx,DWORD PTR [esp+0x2c]
 14ba049:	lea    ecx,[ecx+eax*8+0x13c]
 14ba050:	mov    eax,DWORD PTR [ecx+0x4]
 14ba053:	mov    DWORD PTR [esp+0x4],eax
 14ba057:	mov    DWORD PTR [esp],esi
 14ba05a:	call   DWORD PTR [ecx]
 14ba05c:	test   eax,eax
 14ba05e:	mov    edi,DWORD PTR [ebp+0x8]
 14ba061:	je     14ba0b9
 14ba063:	mov    DWORD PTR [esp],eax
 14ba066:	mov    DWORD PTR [esp+0x4],0x0
 14ba06e:	call   8df02e  ; CharacterControllerBattleGroundBase::PlaySupportAnimation
 14ba073:	fstp   TBYTE PTR [esp+0x2c]
 14ba077:	lea    eax,[ebx+0x45664]
 14ba07d:	mov    eax,DWORD PTR [eax]
 14ba07f:	mov    DWORD PTR [esp],eax
 14ba082:	call   20bfb2
 14ba087:	mov    esi,eax
 14ba089:	fld    TBYTE PTR [esp+0x2c]
 14ba08d:	fstp   DWORD PTR [esp+0x4]
 14ba091:	mov    DWORD PTR [esp],esi
 14ba094:	mov    DWORD PTR [esp+0x8],0x0
 14ba09c:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
 14ba0a1:	mov    DWORD PTR [edi+0x28],esi
 14ba0a4:	mov    al,0x1
 14ba0a6:	cmp    BYTE PTR [edi+0x2c],0x0
 14ba0aa:	jne    14ba036
 14ba0ac:	mov    DWORD PTR [edi+0x30],0x1
 14ba0b3:	jmp    14ba036
 14ba0b5:	mov    ebx,DWORD PTR [esp+0x20]
 14ba0b9:	call   1fbc48
 14ba0be:	call   14943fc
 14ba0c3:	mov    DWORD PTR [esp],eax
 14ba0c6:	call   1b9bd0
 14ba0cb:	call   14943fc