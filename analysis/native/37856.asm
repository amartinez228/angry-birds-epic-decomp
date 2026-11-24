
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fbed1:
 13fbed1:	push   ebp
 13fbed2:	mov    ebp,esp
 13fbed4:	push   ebx
 13fbed5:	push   edi
 13fbed6:	push   esi
 13fbed7:	and    esp,0xfffffff0
 13fbeda:	sub    esp,0x30
 13fbedd:	call   13fbee2
 13fbee2:	pop    ebx
 13fbee3:	add    ebx,0xb16062
 13fbee9:	mov    edi,DWORD PTR [ebp+0x8]
 13fbeec:	mov    al,BYTE PTR [ebx+0x654e1]
 13fbef2:	test   al,al
 13fbef4:	jne    13fbf0d
 13fbef6:	lea    eax,[ebx-0x65e634]
 13fbefc:	mov    eax,DWORD PTR [eax]
 13fbefe:	mov    DWORD PTR [esp],eax
 13fbf01:	call   1ca6e8
 13fbf06:	mov    BYTE PTR [ebx+0x654e1],0x1
 13fbf0d:	lea    eax,[ebx+0x44d10]
 13fbf13:	mov    eax,DWORD PTR [eax]
 13fbf15:	mov    DWORD PTR [esp],eax
 13fbf18:	call   20bfb2
 13fbf1d:	mov    esi,eax
 13fbf1f:	lea    eax,[ebx+0x49298]
 13fbf25:	mov    eax,DWORD PTR [eax]
 13fbf27:	mov    DWORD PTR [esp+0x4],eax
 13fbf2b:	mov    DWORD PTR [esp],esi
 13fbf2e:	call   617b0b
 13fbf33:	lea    eax,[edi+0x8c]
 13fbf39:	lea    ecx,[ebx+0x508e0]
 13fbf3f:	mov    DWORD PTR [esp+0x1c],ecx
 13fbf43:	mov    ecx,DWORD PTR [ecx]
 13fbf45:	mov    DWORD PTR [esp+0x4],ecx
 13fbf49:	mov    DWORD PTR [esp],eax
 13fbf4c:	mov    DWORD PTR [esp+0x8],0x0
 13fbf54:	call   cb9b7c
 13fbf59:	test   esi,esi
 13fbf5b:	je     13fc1f6
 13fbf61:	lea    ecx,[ebx+0x56c1c]
 13fbf67:	mov    ecx,DWORD PTR [ecx]
 13fbf69:	lea    edi,[ebx+0x4929c]
 13fbf6f:	mov    DWORD PTR [esp+0x18],edi
 13fbf73:	mov    edx,DWORD PTR [edi]
 13fbf75:	mov    DWORD PTR [esp+0xc],edx
 13fbf79:	mov    DWORD PTR [esp+0x8],eax
 13fbf7d:	mov    DWORD PTR [esp+0x4],ecx
 13fbf81:	mov    DWORD PTR [esp],esi
 13fbf84:	call   619d68
 13fbf89:	mov    eax,DWORD PTR [ebp+0x8]
 13fbf8c:	mov    DWORD PTR [esp+0x20],esi
 13fbf90:	mov    esi,eax
 13fbf92:	lea    eax,[esi+0x90]
 13fbf98:	mov    ecx,DWORD PTR [esp+0x1c]
 13fbf9c:	mov    ecx,DWORD PTR [ecx]
 13fbf9e:	mov    DWORD PTR [esp+0x4],ecx
 13fbfa2:	mov    DWORD PTR [esp],eax
 13fbfa5:	mov    DWORD PTR [esp+0x8],0x0
 13fbfad:	call   cb9b7c
 13fbfb2:	lea    ecx,[ebx+0x56b94]
 13fbfb8:	mov    ecx,DWORD PTR [ecx]
 13fbfba:	mov    edx,DWORD PTR [edi]
 13fbfbc:	mov    DWORD PTR [esp+0xc],edx
 13fbfc0:	mov    DWORD PTR [esp+0x8],eax
 13fbfc4:	mov    DWORD PTR [esp+0x4],ecx
 13fbfc8:	mov    eax,DWORD PTR [esp+0x20]
 13fbfcc:	mov    DWORD PTR [esp],eax
 13fbfcf:	call   619d68
 13fbfd4:	lea    eax,[esi+0x88]
 13fbfda:	mov    ecx,DWORD PTR [esp+0x1c]
 13fbfde:	mov    ecx,DWORD PTR [ecx]
 13fbfe0:	mov    DWORD PTR [esp+0x4],ecx
 13fbfe4:	mov    DWORD PTR [esp],eax
 13fbfe7:	mov    DWORD PTR [esp+0x8],0x0
 13fbfef:	call   cb9b7c
 13fbff4:	lea    ecx,[ebx+0x56b90]
 13fbffa:	mov    ecx,DWORD PTR [ecx]
 13fbffc:	mov    edx,DWORD PTR [edi]
 13fbffe:	mov    DWORD PTR [esp+0xc],edx
 13fc002:	mov    DWORD PTR [esp+0x8],eax
 13fc006:	mov    DWORD PTR [esp+0x4],ecx
 13fc00a:	mov    eax,DWORD PTR [esp+0x20]
 13fc00e:	mov    DWORD PTR [esp],eax
 13fc011:	mov    esi,DWORD PTR [ebp+0xc]
 13fc014:	call   619d68
 13fc019:	test   esi,esi
 13fc01b:	je     13fc1f6
 13fc021:	mov    eax,DWORD PTR [ebp+0x8]
 13fc024:	movss  xmm0,DWORD PTR [eax+0x98]
 13fc02c:	lea    eax,[ebx+0x45874]
 13fc032:	mov    eax,DWORD PTR [eax]
 13fc034:	mov    ecx,DWORD PTR [esi]
 13fc036:	movzx  edx,WORD PTR [ecx+0xaa]
 13fc03d:	test   edx,edx
 13fc03f:	je     13fc050
 13fc041:	mov    edi,DWORD PTR [ecx+0x4c]
 13fc044:	xor    esi,esi
 13fc046:	cmp    DWORD PTR [edi+esi*8],eax
 13fc049:	je     13fc06f
 13fc04b:	inc    esi
 13fc04c:	cmp    esi,edx
 13fc04e:	jb     13fc046
 13fc050:	movss  DWORD PTR [esp+0x1c],xmm0
 13fc056:	mov    DWORD PTR [esp+0x4],eax
 13fc05a:	mov    esi,DWORD PTR [ebp+0xc]
 13fc05d:	mov    DWORD PTR [esp],esi
 13fc060:	mov    DWORD PTR [esp+0x8],0x1c
 13fc068:	call   1c1964
 13fc06d:	jmp    13fc083
 13fc06f:	movss  DWORD PTR [esp+0x1c],xmm0
 13fc075:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 13fc079:	lea    eax,[ecx+eax*8+0x194]
 13fc080:	mov    esi,DWORD PTR [ebp+0xc]
 13fc083:	mov    ecx,DWORD PTR [eax+0x4]
 13fc086:	mov    DWORD PTR [esp+0x4],ecx
 13fc08a:	mov    DWORD PTR [esp],esi
 13fc08d:	call   DWORD PTR [eax]
 13fc08f:	fstp   DWORD PTR [esp+0x24]
 13fc093:	movss  xmm1,DWORD PTR [esp+0x24]
 13fc099:	lea    eax,[ebx+0x431bc]
 13fc09f:	mov    eax,DWORD PTR [eax]
 13fc0a1:	test   BYTE PTR [eax+0xb2],0x1
 13fc0a8:	je     13fc0c4
 13fc0aa:	cmp    DWORD PTR [eax+0x60],0x0
 13fc0ae:	jne    13fc0c4
 13fc0b0:	mov    DWORD PTR [esp],eax
 13fc0b3:	movss  DWORD PTR [esp+0x14],xmm1
 13fc0b9:	call   1db0b8
 13fc0be:	movss  xmm1,DWORD PTR [esp+0x14]
 13fc0c4:	movss  xmm0,DWORD PTR [esp+0x1c]
 13fc0ca:	mulss  xmm0,xmm1
 13fc0ce:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 13fc0d6:	movss  DWORD PTR [esp+0x4],xmm0
 13fc0dc:	mov    DWORD PTR [esp+0x8],0x0
 13fc0e4:	mov    DWORD PTR [esp],0x0
 13fc0eb:	call   f1e4b9  ; System.Convert::ToInt32
 13fc0f0:	mov    edi,eax
 13fc0f2:	lea    esi,[ebx+0x430e4]
 13fc0f8:	mov    eax,DWORD PTR [esi]
 13fc0fa:	test   BYTE PTR [eax+0xb2],0x1
 13fc101:	je     13fc113
 13fc103:	cmp    DWORD PTR [eax+0x60],0x0
 13fc107:	jne    13fc113
 13fc109:	mov    DWORD PTR [esp],eax
 13fc10c:	call   1db0b8
 13fc111:	mov    eax,DWORD PTR [esi]
 13fc113:	mov    eax,DWORD PTR [eax+0x50]
 13fc116:	mov    esi,DWORD PTR [eax]
 13fc118:	mov    DWORD PTR [esp+0x28],edi
 13fc11c:	lea    eax,[ebx+0x43120]
 13fc122:	mov    eax,DWORD PTR [eax]
 13fc124:	lea    ecx,[esp+0x28]
 13fc128:	mov    DWORD PTR [esp+0x4],ecx
 13fc12c:	mov    DWORD PTR [esp],eax
 13fc12f:	call   20bf14
 13fc134:	mov    DWORD PTR [esp+0x8],eax
 13fc138:	mov    DWORD PTR [esp+0x4],esi
 13fc13c:	mov    DWORD PTR [esp+0xc],0x0
 13fc144:	mov    DWORD PTR [esp],0x0
 13fc14b:	call   cb2fed  ; System.String::Concat
 13fc150:	lea    ecx,[ebx+0x56adc]
 13fc156:	mov    ecx,DWORD PTR [ecx]
 13fc158:	mov    edx,DWORD PTR [esp+0x18]
 13fc15c:	mov    edx,DWORD PTR [edx]
 13fc15e:	mov    DWORD PTR [esp+0xc],edx
 13fc162:	mov    DWORD PTR [esp+0x8],eax
 13fc166:	mov    DWORD PTR [esp+0x4],ecx
 13fc16a:	mov    esi,DWORD PTR [esp+0x20]
 13fc16e:	mov    DWORD PTR [esp],esi
 13fc171:	call   619d68
 13fc176:	lea    eax,[ebx+0x4584c]
 13fc17c:	mov    eax,DWORD PTR [eax]
 13fc17e:	test   BYTE PTR [eax+0xb2],0x1
 13fc185:	je     13fc195
 13fc187:	cmp    DWORD PTR [eax+0x60],0x0
 13fc18b:	jne    13fc195
 13fc18d:	mov    DWORD PTR [esp],eax
 13fc190:	call   1db0b8
 13fc195:	mov    DWORD PTR [esp+0x4],0x0
 13fc19d:	mov    DWORD PTR [esp],0x0
 13fc1a4:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 13fc1a9:	mov    edi,eax
 13fc1ab:	mov    eax,DWORD PTR [ebp+0x8]
 13fc1ae:	mov    DWORD PTR [esp],eax
 13fc1b1:	mov    DWORD PTR [esp+0x4],0x0
 13fc1b9:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 13fc1be:	test   eax,eax
 13fc1c0:	je     13fc1f6
 13fc1c2:	mov    DWORD PTR [esp],eax
 13fc1c5:	mov    DWORD PTR [esp+0x4],0x0
 13fc1cd:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
 13fc1d2:	test   edi,edi
 13fc1d4:	je     13fc1f6
 13fc1d6:	mov    DWORD PTR [esp+0x8],esi
 13fc1da:	mov    DWORD PTR [esp+0x4],eax
 13fc1de:	mov    DWORD PTR [esp],edi
 13fc1e1:	mov    DWORD PTR [esp+0xc],0x0
 13fc1e9:	call   af6df4  ; ABHLocaService::GetSkillDescriptions
 13fc1ee:	lea    esp,[ebp-0xc]
 13fc1f1:	pop    esi
 13fc1f2:	pop    edi
 13fc1f3:	pop    ebx
 13fc1f4:	pop    ebp
 13fc1f5:	ret
 13fc1f6:	call   1fbc48
 13fc1fb:	call   13f24e0