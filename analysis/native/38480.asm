
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014b8e20:
 14b8e20:	push   ebp
 14b8e21:	mov    ebp,esp
 14b8e23:	push   ebx
 14b8e24:	push   edi
 14b8e25:	push   esi
 14b8e26:	and    esp,0xfffffff0
 14b8e29:	sub    esp,0x50
 14b8e2c:	call   14b8e31
 14b8e31:	pop    ebx
 14b8e32:	add    ebx,0xa59113
 14b8e38:	mov    esi,DWORD PTR [ebp+0x8]
 14b8e3b:	mov    al,BYTE PTR [ebx+0x65a29]
 14b8e41:	test   al,al
 14b8e43:	jne    14b8e5c
 14b8e45:	lea    eax,[ebx-0x665de8]
 14b8e4b:	mov    eax,DWORD PTR [eax]
 14b8e4d:	mov    DWORD PTR [esp],eax
 14b8e50:	call   1ca6e8
 14b8e55:	mov    BYTE PTR [ebx+0x65a29],0x1
 14b8e5c:	mov    ecx,DWORD PTR [ebp+0x18]
 14b8e5f:	mov    edi,DWORD PTR [ebp+0xc]
 14b8e62:	mov    DWORD PTR [esp+0x48],0x0
 14b8e6a:	movss  xmm1,DWORD PTR [esi+0x40]
 14b8e6f:	xorps  xmm0,xmm0
 14b8e72:	ucomiss xmm1,xmm0
 14b8e75:	jne    14b8e7d
 14b8e77:	jnp    14b909f
 14b8e7d:	cmp    edi,ecx
 14b8e7f:	jne    14b8e86
 14b8e81:	addss  xmm1,DWORD PTR [esi+0x4c]
 14b8e86:	cmp    BYTE PTR [esi+0x53],0x0
 14b8e8a:	je     14b8edf
 14b8e8c:	mov    esi,DWORD PTR [esi+0x30]
 14b8e8f:	test   esi,esi
 14b8e91:	je     14b92e3
 14b8e97:	lea    eax,[ebx+0x45874]
 14b8e9d:	mov    eax,DWORD PTR [eax]
 14b8e9f:	mov    ecx,DWORD PTR [esi]
 14b8ea1:	mov    DWORD PTR [esp+0x30],ecx
 14b8ea5:	movzx  edx,WORD PTR [ecx+0xaa]
 14b8eac:	test   edx,edx
 14b8eae:	je     14b8ec3
 14b8eb0:	mov    ecx,DWORD PTR [esp+0x30]
 14b8eb4:	mov    edi,DWORD PTR [ecx+0x4c]
 14b8eb7:	xor    ecx,ecx
 14b8eb9:	cmp    DWORD PTR [edi+ecx*8],eax
 14b8ebc:	je     14b8f3b
 14b8ebe:	inc    ecx
 14b8ebf:	cmp    ecx,edx
 14b8ec1:	jb     14b8eb9
 14b8ec3:	movss  DWORD PTR [esp+0x34],xmm1
 14b8ec9:	mov    DWORD PTR [esp+0x4],eax
 14b8ecd:	mov    DWORD PTR [esp],esi
 14b8ed0:	mov    DWORD PTR [esp+0x8],0x19
 14b8ed8:	call   1c1964
 14b8edd:	jmp    14b8f50
 14b8edf:	cmp    BYTE PTR [esi+0x54],0x0
 14b8ee3:	je     14b8f6e
 14b8ee9:	test   ecx,ecx
 14b8eeb:	je     14b92e3
 14b8ef1:	lea    eax,[ebx+0x45874]
 14b8ef7:	mov    eax,DWORD PTR [eax]
 14b8ef9:	mov    ecx,DWORD PTR [ecx]
 14b8efb:	movzx  edx,WORD PTR [ecx+0xaa]
 14b8f02:	test   edx,edx
 14b8f04:	je     14b8f19
 14b8f06:	mov    esi,DWORD PTR [ecx+0x4c]
 14b8f09:	xor    edi,edi
 14b8f0b:	cmp    DWORD PTR [esi+edi*8],eax
 14b8f0e:	je     14b8fb9
 14b8f14:	inc    edi
 14b8f15:	cmp    edi,edx
 14b8f17:	jb     14b8f0b
 14b8f19:	movss  DWORD PTR [esp+0x34],xmm1
 14b8f1f:	mov    DWORD PTR [esp+0x4],eax
 14b8f23:	mov    esi,DWORD PTR [ebp+0x18]
 14b8f26:	mov    DWORD PTR [esp],esi
 14b8f29:	mov    DWORD PTR [esp+0x8],0x19
 14b8f31:	call   1c1964
 14b8f36:	jmp    14b8fcd
 14b8f3b:	movss  DWORD PTR [esp+0x34],xmm1
 14b8f41:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 14b8f45:	mov    ecx,DWORD PTR [esp+0x30]
 14b8f49:	lea    eax,[ecx+eax*8+0x17c]
 14b8f50:	mov    ecx,DWORD PTR [eax+0x4]
 14b8f53:	mov    DWORD PTR [esp+0x4],ecx
 14b8f57:	mov    DWORD PTR [esp],esi
 14b8f5a:	call   DWORD PTR [eax]
 14b8f5c:	fstp   DWORD PTR [esp+0x44]
 14b8f60:	movss  xmm0,DWORD PTR [esp+0x44]
 14b8f66:	mov    esi,DWORD PTR [ebp+0xc]
 14b8f69:	jmp    14b9012
 14b8f6e:	test   edi,edi
 14b8f70:	je     14b92e3
 14b8f76:	lea    eax,[ebx+0x45874]
 14b8f7c:	mov    eax,DWORD PTR [eax]
 14b8f7e:	mov    ecx,DWORD PTR [edi]
 14b8f80:	movzx  edx,WORD PTR [ecx+0xaa]
 14b8f87:	test   edx,edx
 14b8f89:	je     14b8f9a
 14b8f8b:	mov    esi,DWORD PTR [ecx+0x4c]
 14b8f8e:	xor    edi,edi
 14b8f90:	cmp    DWORD PTR [esi+edi*8],eax
 14b8f93:	je     14b8fe8
 14b8f95:	inc    edi
 14b8f96:	cmp    edi,edx
 14b8f98:	jb     14b8f90
 14b8f9a:	movss  DWORD PTR [esp+0x34],xmm1
 14b8fa0:	mov    DWORD PTR [esp+0x4],eax
 14b8fa4:	mov    esi,DWORD PTR [ebp+0xc]
 14b8fa7:	mov    DWORD PTR [esp],esi
 14b8faa:	mov    DWORD PTR [esp+0x8],0x19
 14b8fb2:	call   1c1964
 14b8fb7:	jmp    14b8ffc
 14b8fb9:	movss  DWORD PTR [esp+0x34],xmm1
 14b8fbf:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 14b8fc3:	lea    eax,[ecx+eax*8+0x17c]
 14b8fca:	mov    esi,DWORD PTR [ebp+0x18]
 14b8fcd:	mov    ecx,DWORD PTR [eax+0x4]
 14b8fd0:	mov    DWORD PTR [esp+0x4],ecx
 14b8fd4:	mov    DWORD PTR [esp],esi
 14b8fd7:	call   DWORD PTR [eax]
 14b8fd9:	fstp   DWORD PTR [esp+0x40]
 14b8fdd:	movss  xmm0,DWORD PTR [esp+0x40]
 14b8fe3:	mov    esi,DWORD PTR [ebp+0xc]
 14b8fe6:	jmp    14b9012
 14b8fe8:	movss  DWORD PTR [esp+0x34],xmm1
 14b8fee:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 14b8ff2:	lea    eax,[ecx+eax*8+0x17c]
 14b8ff9:	mov    esi,DWORD PTR [ebp+0xc]
 14b8ffc:	mov    ecx,DWORD PTR [eax+0x4]
 14b8fff:	mov    DWORD PTR [esp+0x4],ecx
 14b9003:	mov    DWORD PTR [esp],esi
 14b9006:	call   DWORD PTR [eax]
 14b9008:	fstp   DWORD PTR [esp+0x3c]
 14b900c:	movss  xmm0,DWORD PTR [esp+0x3c]
 14b9012:	test   esi,esi
 14b9014:	movss  xmm1,DWORD PTR [esp+0x34]
 14b901a:	je     14b92e3
 14b9020:	lea    eax,[ebx+0x45874]
 14b9026:	mov    eax,DWORD PTR [eax]
 14b9028:	mulss  xmm1,xmm0
 14b902c:	divss  xmm1,DWORD PTR [ebx-0x64fc2c]
 14b9034:	mov    ecx,DWORD PTR [esi]
 14b9036:	movzx  edx,WORD PTR [ecx+0xaa]
 14b903d:	test   edx,edx
 14b903f:	je     14b9050
 14b9041:	mov    esi,DWORD PTR [ecx+0x4c]
 14b9044:	xor    edi,edi
 14b9046:	cmp    DWORD PTR [esi+edi*8],eax
 14b9049:	je     14b9075
 14b904b:	inc    edi
 14b904c:	cmp    edi,edx
 14b904e:	jb     14b9046
 14b9050:	mov    DWORD PTR [esp+0x4],eax
 14b9054:	mov    edi,DWORD PTR [ebp+0xc]
 14b9057:	mov    DWORD PTR [esp],edi
 14b905a:	mov    DWORD PTR [esp+0x8],0x70
 14b9062:	movss  DWORD PTR [esp+0x34],xmm1
 14b9068:	call   1c1964
 14b906d:	movss  xmm1,DWORD PTR [esp+0x34]
 14b9073:	jmp    14b9083
 14b9075:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 14b9079:	lea    eax,[ecx+eax*8+0x434]
 14b9080:	mov    edi,DWORD PTR [ebp+0xc]
 14b9083:	mov    ecx,DWORD PTR [eax+0x4]
 14b9086:	mov    DWORD PTR [esp+0xc],ecx
 14b908a:	mov    DWORD PTR [esp+0x8],edi
 14b908e:	movss  DWORD PTR [esp+0x4],xmm1
 14b9094:	mov    DWORD PTR [esp],edi
 14b9097:	call   DWORD PTR [eax]
 14b9099:	mov    esi,DWORD PTR [ebp+0x8]
 14b909c:	mov    ecx,DWORD PTR [ebp+0x18]
 14b909f:	cmp    edi,DWORD PTR [ebp+0x14]
 14b90a2:	je     14b9129
 14b90a8:	test   edi,edi
 14b90aa:	je     14b92e3
 14b90b0:	lea    eax,[ebx+0x45874]
 14b90b6:	mov    eax,DWORD PTR [eax]
 14b90b8:	mov    ecx,DWORD PTR [edi]
 14b90ba:	movzx  edx,WORD PTR [ecx+0xaa]
 14b90c1:	test   edx,edx
 14b90c3:	je     14b90d4
 14b90c5:	mov    esi,DWORD PTR [ecx+0x4c]
 14b90c8:	xor    edi,edi
 14b90ca:	cmp    DWORD PTR [esi+edi*8],eax
 14b90cd:	je     14b90ef
 14b90cf:	inc    edi
 14b90d0:	cmp    edi,edx
 14b90d2:	jb     14b90ca
 14b90d4:	mov    DWORD PTR [esp+0x4],eax
 14b90d8:	mov    edi,DWORD PTR [ebp+0xc]
 14b90db:	mov    DWORD PTR [esp],edi
 14b90de:	mov    DWORD PTR [esp+0x8],0x11
 14b90e6:	call   1c1964
 14b90eb:	mov    ecx,eax
 14b90ed:	jmp    14b90fd
 14b90ef:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 14b90f3:	lea    ecx,[ecx+eax*8+0x13c]
 14b90fa:	mov    edi,DWORD PTR [ebp+0xc]
 14b90fd:	mov    eax,DWORD PTR [ecx+0x4]
 14b9100:	mov    DWORD PTR [esp+0x4],eax
 14b9104:	mov    DWORD PTR [esp],edi
 14b9107:	call   DWORD PTR [ecx]
 14b9109:	test   eax,eax
 14b910b:	mov    esi,DWORD PTR [ebp+0x8]
 14b910e:	je     14b92e3
 14b9114:	mov    DWORD PTR [esp],eax
 14b9117:	mov    DWORD PTR [esp+0x4],0x0
 14b911f:	call   8de7cd  ; CharacterControllerBattleGroundBase::PlayCheerCharacter
 14b9124:	fstp   st(0)
 14b9126:	mov    ecx,DWORD PTR [ebp+0x18]
 14b9129:	cmp    edi,ecx
 14b912b:	je     14b9138
 14b912d:	mov    al,BYTE PTR [esi+0x52]
 14b9130:	test   al,al
 14b9132:	jne    14b9279
 14b9138:	mov    DWORD PTR [esp+0x4],0x0
 14b9140:	mov    DWORD PTR [esp],0x0
 14b9147:	call   167eb9e  ; UnityEngine.Random::get_value
 14b914c:	fstp   DWORD PTR [esp+0x38]
 14b9150:	movss  xmm0,DWORD PTR [esi+0x48]
 14b9155:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 14b915d:	ucomiss xmm0,DWORD PTR [esp+0x38]
 14b9162:	jb     14b9279
 14b9168:	mov    DWORD PTR [esp+0x4],0x0
 14b9170:	mov    DWORD PTR [esp],0x0
 14b9177:	call   109314e  ; DIContainerLogic::GetBattleService
 14b917c:	test   eax,eax
 14b917e:	je     14b92e3
 14b9184:	mov    DWORD PTR [esp+0x4],edi
 14b9188:	mov    DWORD PTR [esp],eax
 14b918b:	mov    DWORD PTR [esp+0x10],0x0
 14b9193:	mov    DWORD PTR [esp+0xc],0x0
 14b919b:	mov    DWORD PTR [esp+0x8],0x2
 14b91a3:	call   516f72  ; ABH.Services.Logic.BattleService::RemoveBattleEffects
 14b91a8:	test   eax,eax
 14b91aa:	jle    14b9279
 14b91b0:	mov    DWORD PTR [esp+0x48],0x0
 14b91b8:	mov    DWORD PTR [esp+0x4],0x0
 14b91c0:	mov    DWORD PTR [esp],0x0
 14b91c7:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
 14b91cc:	test   eax,eax
 14b91ce:	je     14b92e3
 14b91d4:	lea    ecx,[ebx+0x56e0c]
 14b91da:	mov    ecx,DWORD PTR [ecx]
 14b91dc:	lea    edx,[esp+0x48]
 14b91e0:	mov    DWORD PTR [esp+0x8],edx
 14b91e4:	mov    DWORD PTR [esp+0x4],ecx
 14b91e8:	mov    DWORD PTR [esp],eax
 14b91eb:	mov    DWORD PTR [esp+0xc],0x0
 14b91f3:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
 14b91f8:	test   al,al
 14b91fa:	je     14b9279
 14b91fc:	mov    eax,DWORD PTR [esp+0x48]
 14b9200:	mov    DWORD PTR [esp+0x34],eax
 14b9204:	lea    eax,[ebx+0x45890]
 14b920a:	mov    eax,DWORD PTR [eax]
 14b920c:	mov    DWORD PTR [esp],eax
 14b920f:	call   20bfb2
 14b9214:	mov    esi,eax
 14b9216:	lea    eax,[ebx+0x4a074]
 14b921c:	mov    eax,DWORD PTR [eax]
 14b921e:	mov    DWORD PTR [esp+0x4],eax
 14b9222:	mov    DWORD PTR [esp],esi
 14b9225:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 14b922a:	test   esi,esi
 14b922c:	je     14b92e3
 14b9232:	lea    eax,[ebx+0x4a078]
 14b9238:	mov    eax,DWORD PTR [eax]
 14b923a:	mov    DWORD PTR [esp+0x8],eax
 14b923e:	mov    DWORD PTR [esp+0x4],edi
 14b9242:	mov    DWORD PTR [esp],esi
 14b9245:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 14b924a:	mov    DWORD PTR [esp+0xc],esi
 14b924e:	mov    eax,DWORD PTR [esp+0x34]
 14b9252:	mov    DWORD PTR [esp+0x8],eax
 14b9256:	mov    eax,DWORD PTR [ebp+0x8]
 14b9259:	mov    DWORD PTR [esp],eax
 14b925c:	mov    DWORD PTR [esp+0x14],0x0
 14b9264:	mov    DWORD PTR [esp+0x10],0x0
 14b926c:	mov    DWORD PTR [esp+0x4],0x3
 14b9274:	call   ec9974  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
 14b9279:	mov    DWORD PTR [esp+0x4],0x0
 14b9281:	mov    DWORD PTR [esp],0x0
 14b9288:	call   109314e  ; DIContainerLogic::GetBattleService
 14b928d:	test   eax,eax
 14b928f:	je     14b92e3
 14b9291:	mov    ecx,DWORD PTR [ebp+0x10]
 14b9294:	mov    edx,DWORD PTR [ebp+0x14]
 14b9297:	mov    DWORD PTR [esp+0x20],edx
 14b929b:	mov    DWORD PTR [esp+0x8],ecx
 14b929f:	mov    DWORD PTR [esp+0x4],edi
 14b92a3:	mov    DWORD PTR [esp],eax
 14b92a6:	mov    DWORD PTR [esp+0x24],0x0
 14b92ae:	mov    DWORD PTR [esp+0x1c],0x1
 14b92b6:	mov    DWORD PTR [esp+0x18],0x0
 14b92be:	mov    DWORD PTR [esp+0x14],0x0
 14b92c6:	mov    DWORD PTR [esp+0x10],0x0
 14b92ce:	mov    DWORD PTR [esp+0xc],0x1
 14b92d6:	call   50a1af  ; ABH.Services.Logic.BattleService::HealCurrentTurn
 14b92db:	lea    esp,[ebp-0xc]
 14b92de:	pop    esi
 14b92df:	pop    edi
 14b92e0:	pop    ebx
 14b92e1:	pop    ebp
 14b92e2:	ret
 14b92e3:	call   1fbc48
 14b92e8:	call   14943fc