
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eb4cd3:
  eb4cd3:	push   ebp
  eb4cd4:	mov    ebp,esp
  eb4cd6:	push   ebx
  eb4cd7:	push   edi
  eb4cd8:	push   esi
  eb4cd9:	and    esp,0xfffffff0
  eb4cdc:	sub    esp,0x1c0
  eb4ce2:	call   eb4ce7
  eb4ce7:	pop    ecx
  eb4ce8:	add    ecx,0x105d25d
  eb4cee:	mov    edi,DWORD PTR [ebp+0x8]
  eb4cf1:	mov    al,BYTE PTR [ecx+0x626b4]
  eb4cf7:	test   al,al
  eb4cf9:	jne    eb4d16
  eb4cfb:	mov    ebx,ecx
  eb4cfd:	lea    eax,[ebx-0x658304]
  eb4d03:	mov    eax,DWORD PTR [eax]
  eb4d05:	mov    DWORD PTR [esp],eax
  eb4d08:	call   1ca6e8
  eb4d0d:	mov    BYTE PTR [ebx+0x626b4],0x1
  eb4d14:	mov    ecx,ebx
  eb4d16:	xorps  xmm0,xmm0
  eb4d19:	movaps XMMWORD PTR [esp+0x1a0],xmm0
  eb4d21:	mov    eax,DWORD PTR [edi+0x148]
  eb4d27:	mov    DWORD PTR [edi+0x148],0xffffffff
  eb4d31:	cmp    eax,0x10
  eb4d34:	ja     eba810
  eb4d3a:	mov    DWORD PTR [esp+0x5c],ecx
  eb4d3e:	mov    eax,DWORD PTR [ecx+eax*4-0x5de424]
  eb4d45:	add    eax,ecx
  eb4d47:	jmp    eax
  eb4d49:	mov    ebx,DWORD PTR [esp+0x5c]
  eb4d4d:	lea    eax,[ebx+0x45888]
  eb4d53:	mov    eax,DWORD PTR [eax]
  eb4d55:	mov    DWORD PTR [esp],eax
  eb4d58:	call   20bfb2
  eb4d5d:	mov    esi,eax
  eb4d5f:	mov    DWORD PTR [esp],esi
  eb4d62:	mov    DWORD PTR [esp+0x4],0x0
  eb4d6a:	call   124632e  ; System.Object::.ctor
  eb4d6f:	mov    DWORD PTR [edi+0x14c],esi
  eb4d75:	test   esi,esi
  eb4d77:	je     eb7722
  eb4d7d:	mov    DWORD PTR [esi+0x10],edi
  eb4d80:	mov    eax,DWORD PTR [edi+0x14c]
  eb4d86:	test   eax,eax
  eb4d88:	je     eb7722
  eb4d8e:	mov    ecx,DWORD PTR [edi+0x18]
  eb4d91:	mov    DWORD PTR [eax+0x8],ecx
  eb4d94:	mov    eax,DWORD PTR [edi+0x14c]
  eb4d9a:	test   eax,eax
  eb4d9c:	je     eb7722
  eb4da2:	mov    ecx,DWORD PTR [edi+0x10]
  eb4da5:	mov    DWORD PTR [eax+0xc],ecx
  eb4da8:	mov    eax,DWORD PTR [edi+0x8]
  eb4dab:	test   eax,eax
  eb4dad:	je     eb7722
  eb4db3:	mov    eax,DWORD PTR [eax+0x68]
  eb4db6:	test   eax,eax
  eb4db8:	je     eb7722
  eb4dbe:	mov    ebx,DWORD PTR [esp+0x5c]
  eb4dc2:	lea    ecx,[ebx+0x4a04c]
  eb4dc8:	mov    ecx,DWORD PTR [ecx]
  eb4dca:	mov    DWORD PTR [esp+0x8],ecx
  eb4dce:	mov    DWORD PTR [esp],eax
  eb4dd1:	mov    DWORD PTR [esp+0x4],0x1
  eb4dd9:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  eb4dde:	lea    esi,[ebx+0x45880]
  eb4de4:	mov    edx,DWORD PTR [esi]
  eb4de6:	mov    ecx,DWORD PTR [edx+0x50]
  eb4de9:	cmp    DWORD PTR [ecx],0x0
  eb4dec:	jne    eb4e52
  eb4dee:	lea    ecx,[ebx+0x4a050]
  eb4df4:	mov    ecx,DWORD PTR [ecx]
  eb4df6:	mov    DWORD PTR [esp+0x58],ecx
  eb4dfa:	lea    ecx,[ebx+0x4588c]
  eb4e00:	mov    ecx,DWORD PTR [ecx]
  eb4e02:	mov    DWORD PTR [esp],ecx
  eb4e05:	mov    DWORD PTR [esp+0x60],eax
  eb4e09:	call   20bfb2
  eb4e0e:	mov    edi,eax
  eb4e10:	mov    eax,DWORD PTR [esp+0x58]
  eb4e14:	mov    DWORD PTR [esp+0x198],eax
  eb4e1b:	lea    eax,[ebx+0x4a054]
  eb4e21:	mov    eax,DWORD PTR [eax]
  eb4e23:	mov    DWORD PTR [esp+0xc],eax
  eb4e27:	mov    eax,DWORD PTR [esp+0x198]
  eb4e2e:	mov    DWORD PTR [esp+0x8],eax
  eb4e32:	mov    DWORD PTR [esp],edi
  eb4e35:	mov    DWORD PTR [esp+0x4],0x0
  eb4e3d:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  eb4e42:	mov    eax,DWORD PTR [esp+0x60]
  eb4e46:	mov    ecx,DWORD PTR [esi]
  eb4e48:	mov    ecx,DWORD PTR [ecx+0x50]
  eb4e4b:	mov    DWORD PTR [ecx],edi
  eb4e4d:	mov    edi,DWORD PTR [ebp+0x8]
  eb4e50:	mov    edx,DWORD PTR [esi]
  eb4e52:	mov    ecx,DWORD PTR [edx+0x50]
  eb4e55:	mov    edx,DWORD PTR [ecx]
  eb4e57:	lea    ecx,[ebx+0x4a058]
  eb4e5d:	mov    ecx,DWORD PTR [ecx]
  eb4e5f:	mov    DWORD PTR [esp+0xc],ecx
  eb4e63:	mov    DWORD PTR [esp+0x8],edx
  eb4e67:	mov    DWORD PTR [esp+0x4],eax
  eb4e6b:	mov    DWORD PTR [esp],0x0
  eb4e72:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  eb4e77:	lea    ecx,[ebx+0x4a05c]
  eb4e7d:	mov    ecx,DWORD PTR [ecx]
  eb4e7f:	mov    DWORD PTR [esp+0x8],ecx
  eb4e83:	mov    DWORD PTR [esp+0x4],eax
  eb4e87:	mov    DWORD PTR [esp],0x0
  eb4e8e:	call   ddf8e7  ; shared address: System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | +12 other aliases
  eb4e93:	mov    DWORD PTR [edi+0xc],eax
  eb4e96:	mov    eax,DWORD PTR [edi+0x14c]
  eb4e9c:	test   eax,eax
  eb4e9e:	je     eb7722
  eb4ea4:	mov    edi,DWORD PTR [eax+0xc]
  eb4ea7:	test   edi,edi
  eb4ea9:	je     eb7722
  eb4eaf:	mov    eax,DWORD PTR [esp+0x5c]
  eb4eb3:	lea    eax,[eax+0x45874]
  eb4eb9:	mov    DWORD PTR [esp+0x60],eax
  eb4ebd:	mov    eax,DWORD PTR [eax]
  eb4ebf:	mov    ebx,DWORD PTR [edi]
  eb4ec1:	movzx  edx,WORD PTR [ebx+0xaa]
  eb4ec8:	test   edx,edx
  eb4eca:	je     eb4edf
  eb4ecc:	mov    esi,DWORD PTR [ebx+0x4c]
  eb4ecf:	xor    ecx,ecx
  eb4ed1:	cmp    DWORD PTR [esi+ecx*8],eax
  eb4ed4:	je     eb580b
  eb4eda:	inc    ecx
  eb4edb:	cmp    ecx,edx
  eb4edd:	jb     eb4ed1
  eb4edf:	mov    DWORD PTR [esp+0x4],eax
  eb4ee3:	mov    DWORD PTR [esp],edi
  eb4ee6:	mov    DWORD PTR [esp+0x8],0x89
  eb4eee:	mov    ebx,DWORD PTR [esp+0x5c]
  eb4ef2:	call   1c1964
  eb4ef7:	jmp    eb581a
  eb4efc:	lea    ecx,[edi+0x1c]
  eb4eff:	mov    ebx,DWORD PTR [esp+0x5c]
  eb4f03:	jmp    eb640e
  eb4f08:	lea    ecx,[edi+0x3c]
  eb4f0b:	jmp    eb6ba2
  eb4f10:	lea    eax,[edi+0x14c]
  eb4f16:	mov    DWORD PTR [esp+0x60],eax
  eb4f1a:	mov    DWORD PTR [esp+0x4],0x0
  eb4f22:	mov    DWORD PTR [esp],0x0
  eb4f29:	mov    ebx,DWORD PTR [esp+0x5c]
  eb4f2d:	call   109314e  ; DIContainerLogic::GetBattleService
  eb4f32:	mov    ecx,DWORD PTR [edi+0x14c]
  eb4f38:	test   ecx,ecx
  eb4f3a:	je     eb7722
  eb4f40:	mov    edx,DWORD PTR [edi+0x13c]
  eb4f46:	test   edx,edx
  eb4f48:	je     eb7722
  eb4f4e:	test   eax,eax
  eb4f50:	je     eb7722
  eb4f56:	movss  xmm0,DWORD PTR [edi+0x30]
  eb4f5b:	mov    ecx,DWORD PTR [ecx+0x8]
  eb4f5e:	lea    esi,[edi+0x13c]
  eb4f64:	mov    edx,DWORD PTR [edx+0x30]
  eb4f67:	mov    DWORD PTR [esp+0x10],edx
  eb4f6b:	mov    DWORD PTR [esp+0xc],ecx
  eb4f6f:	movss  DWORD PTR [esp+0x4],xmm0
  eb4f75:	mov    DWORD PTR [esp],eax
  eb4f78:	mov    DWORD PTR [esp+0x14],0x0
  eb4f80:	mov    DWORD PTR [esp+0x8],0x1a
  eb4f88:	mov    ebx,DWORD PTR [esp+0x5c]
  eb4f8c:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eb4f91:	fstp   st(0)
  eb4f93:	mov    eax,DWORD PTR [esi]
  eb4f95:	test   eax,eax
  eb4f97:	je     eb7726
  eb4f9d:	mov    DWORD PTR [esp+0x58],esi
  eb4fa1:	mov    esi,DWORD PTR [eax+0x30]
  eb4fa4:	test   esi,esi
  eb4fa6:	je     eb7726
  eb4fac:	lea    eax,[ebx+0x45874]
  eb4fb2:	mov    DWORD PTR [esp+0x54],eax
  eb4fb6:	mov    eax,DWORD PTR [eax]
  eb4fb8:	mov    ebx,DWORD PTR [esi]
  eb4fba:	movzx  edx,WORD PTR [ebx+0xaa]
  eb4fc1:	test   edx,edx
  eb4fc3:	je     eb4fd8
  eb4fc5:	mov    edi,DWORD PTR [ebx+0x4c]
  eb4fc8:	xor    ecx,ecx
  eb4fca:	cmp    DWORD PTR [edi+ecx*8],eax
  eb4fcd:	je     eb5691
  eb4fd3:	inc    ecx
  eb4fd4:	cmp    ecx,edx
  eb4fd6:	jb     eb4fca
  eb4fd8:	mov    DWORD PTR [esp+0x4],eax
  eb4fdc:	mov    DWORD PTR [esp],esi
  eb4fdf:	mov    DWORD PTR [esp+0x8],0x11
  eb4fe7:	mov    ebx,DWORD PTR [esp+0x5c]
  eb4feb:	call   1c1964
  eb4ff0:	mov    ecx,eax
  eb4ff2:	jmp    eb56a0
  eb4ff7:	lea    eax,[edi+0x13c]
  eb4ffd:	jmp    eb5d70
  eb5002:	lea    esi,[edi+0x54]
  eb5005:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5009:	jmp    eb5dca
  eb500e:	movss  xmm0,DWORD PTR [edi+0x68]
  eb5013:	movss  DWORD PTR [esp+0x60],xmm0
  eb5019:	mov    DWORD PTR [esp+0x4],0x0
  eb5021:	mov    DWORD PTR [esp],0x0
  eb5028:	mov    ebx,DWORD PTR [esp+0x5c]
  eb502c:	call   177530b  ; UnityEngine.Time::get_deltaTime
  eb5031:	fstp   DWORD PTR [esp+0xb4]
  eb5038:	movss  xmm0,DWORD PTR [esp+0x60]
  eb503e:	subss  xmm0,DWORD PTR [esp+0xb4]
  eb5047:	movss  DWORD PTR [edi+0x68],xmm0
  eb504c:	lea    edi,[edi+0x13c]
  eb5052:	mov    eax,DWORD PTR [edi]
  eb5054:	test   eax,eax
  eb5056:	je     eb7722
  eb505c:	cmp    BYTE PTR [eax+0x3c],0x0
  eb5060:	mov    edi,DWORD PTR [ebp+0x8]
  eb5063:	je     eb50bc
  eb5065:	movss  xmm0,DWORD PTR [edi+0x68]
  eb506a:	xorps  xmm1,xmm1
  eb506d:	ucomiss xmm0,xmm1
  eb5070:	jbe    eb50bc
  eb5072:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5076:	lea    eax,[ebx+0x45894]
  eb507c:	mov    eax,DWORD PTR [eax]
  eb507e:	mov    DWORD PTR [esp],eax
  eb5081:	call   20bfb2
  eb5086:	mov    esi,eax
  eb5088:	mov    DWORD PTR [esp],esi
  eb508b:	mov    DWORD PTR [esp+0x4],0x0
  eb5093:	call   177a908  ; UnityEngine.WaitForEndOfFrame::.ctor
  eb5098:	mov    DWORD PTR [edi+0x140],esi
  eb509e:	mov    al,0x1
  eb50a0:	cmp    BYTE PTR [edi+0x144],0x0
  eb50a7:	jne    eba812
  eb50ad:	mov    DWORD PTR [edi+0x148],0x6
  eb50b7:	jmp    eba812
  eb50bc:	mov    eax,DWORD PTR [edi+0x13c]
  eb50c2:	test   eax,eax
  eb50c4:	je     eba82f
  eb50ca:	mov    eax,DWORD PTR [eax+0x60]
  eb50cd:	test   eax,eax
  eb50cf:	je     eba82f
  eb50d5:	mov    ebx,DWORD PTR [esp+0x5c]
  eb50d9:	lea    ecx,[ebx+0x4a090]
  eb50df:	mov    ecx,DWORD PTR [ecx]
  eb50e1:	mov    DWORD PTR [esp+0x8],ecx
  eb50e5:	mov    DWORD PTR [esp+0x4],eax
  eb50e9:	lea    eax,[esp+0x148]
  eb50f0:	mov    DWORD PTR [esp],eax
  eb50f3:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb50f8:	sub    esp,0x4
  eb50fb:	lea    esi,[edi+0x74]
  eb50fe:	movsd  xmm0,QWORD PTR [esp+0x148]
  eb5107:	movsd  xmm1,QWORD PTR [esp+0x150]
  eb5110:	movsd  QWORD PTR [edi+0x7c],xmm1
  eb5115:	movsd  QWORD PTR [edi+0x74],xmm0
  eb511a:	jmp    eb51da
  eb511f:	mov    eax,DWORD PTR [esp+0x5c]
  eb5123:	lea    eax,[eax+0x4584c]
  eb5129:	mov    eax,DWORD PTR [eax]
  eb512b:	test   BYTE PTR [eax+0xb2],0x1
  eb5132:	je     eb5146
  eb5134:	cmp    DWORD PTR [eax+0x60],0x0
  eb5138:	jne    eb5146
  eb513a:	mov    DWORD PTR [esp],eax
  eb513d:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5141:	call   1db0b8
  eb5146:	mov    DWORD PTR [esp+0x4],0x0
  eb514e:	mov    DWORD PTR [esp],0x0
  eb5155:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5159:	call   1068a45  ; DIContainerInfrastructure::get_ProjectileAssetProvider
  eb515e:	mov    ecx,DWORD PTR [edi+0x13c]
  eb5164:	test   ecx,ecx
  eb5166:	je     eb7722
  eb516c:	test   eax,eax
  eb516e:	je     eba82f
  eb5174:	mov    ecx,DWORD PTR [ecx+0x20]
  eb5177:	mov    DWORD PTR [esp+0x4],ecx
  eb517b:	mov    DWORD PTR [esp],eax
  eb517e:	mov    DWORD PTR [esp+0x8],0x0
  eb5186:	mov    ebx,DWORD PTR [esp+0x5c]
  eb518a:	call   154658f  ; GenericAssetProvider::ContainsAsset
  eb518f:	mov    ecx,DWORD PTR [edi+0x13c]
  eb5195:	test   al,al
  eb5197:	je     eb54a9
  eb519d:	test   ecx,ecx
  eb519f:	je     eba82f
  eb51a5:	mov    eax,DWORD PTR [ecx+0x20]
  eb51a8:	mov    edx,DWORD PTR [ecx+0x30]
  eb51ab:	mov    esi,DWORD PTR [ecx+0x34]
  eb51ae:	movzx  ecx,BYTE PTR [ecx+0x84]
  eb51b5:	mov    DWORD PTR [esp+0x14],ecx
  eb51b9:	mov    DWORD PTR [esp+0x10],eax
  eb51bd:	mov    DWORD PTR [esp+0xc],esi
  eb51c1:	mov    DWORD PTR [esp+0x8],edx
  eb51c5:	mov    ebx,DWORD PTR [esp+0x5c]
  eb51c9:	call   eb2f2a  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnProjectile
  eb51ce:	jmp    eb54e6
  eb51d3:	lea    esi,[edi+0x74]
  eb51d6:	mov    ebx,DWORD PTR [esp+0x5c]
  eb51da:	lea    eax,[ebx+0x4a09c]
  eb51e0:	mov    eax,DWORD PTR [eax]
  eb51e2:	mov    DWORD PTR [esp+0x4],eax
  eb51e6:	mov    DWORD PTR [esp],esi
  eb51e9:	mov    edi,ebx
  eb51eb:	call   447e4e
  eb51f0:	test   al,al
  eb51f2:	je     eb52ec
  eb51f8:	lea    eax,[edi+0x4a094]
  eb51fe:	mov    eax,DWORD PTR [eax]
  eb5200:	mov    DWORD PTR [esp+0x4],eax
  eb5204:	mov    DWORD PTR [esp],esi
  eb5207:	mov    ebx,edi
  eb5209:	call   447f1e
  eb520e:	mov    ecx,DWORD PTR [ebp+0x8]
  eb5211:	mov    DWORD PTR [ecx+0x84],eax
  eb5217:	mov    ecx,DWORD PTR [ecx+0x13c]
  eb521d:	test   ecx,ecx
  eb521f:	je     eb5430
  eb5225:	test   eax,eax
  eb5227:	je     eb554b
  eb522d:	mov    edx,DWORD PTR [ecx+0x14]
  eb5230:	mov    DWORD PTR [esp+0x60],edx
  eb5234:	mov    edx,DWORD PTR [ecx+0x18]
  eb5237:	mov    DWORD PTR [esp+0x58],edx
  eb523b:	mov    edx,DWORD PTR [ecx+0x34]
  eb523e:	mov    ecx,DWORD PTR [ecx+0x30]
  eb5241:	mov    DWORD PTR [esp+0x54],ecx
  eb5245:	lea    ecx,[edi+0x4a098]
  eb524b:	mov    ecx,DWORD PTR [ecx]
  eb524d:	mov    DWORD PTR [esp+0x14],ecx
  eb5251:	mov    ecx,DWORD PTR [esp+0x58]
  eb5255:	mov    DWORD PTR [esp+0x10],ecx
  eb5259:	mov    DWORD PTR [esp+0xc],edx
  eb525d:	mov    ecx,DWORD PTR [esp+0x54]
  eb5261:	mov    DWORD PTR [esp+0x8],ecx
  eb5265:	mov    ecx,DWORD PTR [esp+0x60]
  eb5269:	mov    DWORD PTR [esp+0x4],ecx
  eb526d:	mov    DWORD PTR [esp],eax
  eb5270:	mov    ebx,edi
  eb5272:	call   17d922c  ; shared address: System.Func`5<ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4), ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<object, object, object, object, float>::Invoke
  eb5277:	fstp   DWORD PTR [esp+0xa0]
  eb527e:	movss  xmm0,DWORD PTR [esp+0xa0]
  eb5287:	movss  DWORD PTR [esp+0x60],xmm0
  eb528d:	lea    eax,[edi+0x45664]
  eb5293:	mov    eax,DWORD PTR [eax]
  eb5295:	mov    DWORD PTR [esp],eax
  eb5298:	mov    ebx,edi
  eb529a:	call   20bfb2
  eb529f:	movss  xmm0,DWORD PTR [esp+0x60]
  eb52a5:	movss  DWORD PTR [esp+0x4],xmm0
  eb52ab:	mov    DWORD PTR [esp],eax
  eb52ae:	mov    DWORD PTR [esp+0x8],0x0
  eb52b6:	mov    ebx,edi
  eb52b8:	mov    DWORD PTR [esp+0x60],eax
  eb52bc:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb52c1:	mov    eax,DWORD PTR [esp+0x60]
  eb52c5:	mov    ecx,DWORD PTR [ebp+0x8]
  eb52c8:	mov    DWORD PTR [ecx+0x140],eax
  eb52ce:	mov    al,0x1
  eb52d0:	cmp    BYTE PTR [ecx+0x144],0x0
  eb52d7:	jne    eba812
  eb52dd:	mov    DWORD PTR [ecx+0x148],0xa
  eb52e7:	jmp    eba812
  eb52ec:	lea    eax,[edi+0x4a0a0]
  eb52f2:	mov    eax,DWORD PTR [eax]
  eb52f4:	mov    DWORD PTR [esp+0x4],eax
  eb52f8:	mov    DWORD PTR [esp],esi
  eb52fb:	mov    ebx,edi
  eb52fd:	call   447df6
  eb5302:	jmp    eb5591
  eb5307:	mov    eax,DWORD PTR [edi+0x14c]
  eb530d:	test   eax,eax
  eb530f:	je     eba82f
  eb5315:	mov    esi,DWORD PTR [eax+0xc]
  eb5318:	test   esi,esi
  eb531a:	mov    ebx,DWORD PTR [esp+0x5c]
  eb531e:	je     eba833
  eb5324:	lea    eax,[ebx+0x45874]
  eb532a:	mov    eax,DWORD PTR [eax]
  eb532c:	mov    ebx,DWORD PTR [esi]
  eb532e:	movzx  edx,WORD PTR [ebx+0xaa]
  eb5335:	test   edx,edx
  eb5337:	je     eb5393
  eb5339:	mov    edi,DWORD PTR [ebx+0x4c]
  eb533c:	xor    ecx,ecx
  eb533e:	cmp    DWORD PTR [edi+ecx*8],eax
  eb5341:	je     eb543c
  eb5347:	inc    ecx
  eb5348:	cmp    ecx,edx
  eb534a:	jb     eb533e
  eb534c:	jmp    eb5393
  eb534e:	mov    eax,DWORD PTR [edi+0x14c]
  eb5354:	test   eax,eax
  eb5356:	je     eba82f
  eb535c:	mov    esi,DWORD PTR [eax+0xc]
  eb535f:	test   esi,esi
  eb5361:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5365:	je     eba833
  eb536b:	lea    eax,[ebx+0x45874]
  eb5371:	mov    eax,DWORD PTR [eax]
  eb5373:	mov    ebx,DWORD PTR [esi]
  eb5375:	movzx  edx,WORD PTR [ebx+0xaa]
  eb537c:	test   edx,edx
  eb537e:	je     eb5393
  eb5380:	mov    edi,DWORD PTR [ebx+0x4c]
  eb5383:	xor    ecx,ecx
  eb5385:	cmp    DWORD PTR [edi+ecx*8],eax
  eb5388:	je     eb543c
  eb538e:	inc    ecx
  eb538f:	cmp    ecx,edx
  eb5391:	jb     eb5385
  eb5393:	mov    DWORD PTR [esp+0x4],eax
  eb5397:	mov    DWORD PTR [esp],esi
  eb539a:	mov    DWORD PTR [esp+0x8],0x2e
  eb53a2:	mov    ebx,DWORD PTR [esp+0x5c]
  eb53a6:	call   1c1964
  eb53ab:	jmp    eb544b
  eb53b0:	mov    eax,DWORD PTR [edi+0x14c]
  eb53b6:	test   eax,eax
  eb53b8:	je     eba81d
  eb53be:	mov    esi,DWORD PTR [eax+0xc]
  eb53c1:	test   esi,esi
  eb53c3:	mov    ebx,DWORD PTR [esp+0x5c]
  eb53c7:	je     eba821
  eb53cd:	lea    eax,[ebx+0x45874]
  eb53d3:	mov    eax,DWORD PTR [eax]
  eb53d5:	mov    ebx,DWORD PTR [esi]
  eb53d7:	movzx  edx,WORD PTR [ebx+0xaa]
  eb53de:	test   edx,edx
  eb53e0:	je     eb53f5
  eb53e2:	mov    edi,DWORD PTR [ebx+0x4c]
  eb53e5:	xor    ecx,ecx
  eb53e7:	cmp    DWORD PTR [edi+ecx*8],eax
  eb53ea:	je     eb572a
  eb53f0:	inc    ecx
  eb53f1:	cmp    ecx,edx
  eb53f3:	jb     eb53e7
  eb53f5:	mov    DWORD PTR [esp+0x4],eax
  eb53f9:	mov    DWORD PTR [esp],esi
  eb53fc:	mov    DWORD PTR [esp+0x8],0x2e
  eb5404:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5408:	call   1c1964
  eb540d:	jmp    eb5739
  eb5412:	lea    esi,[edi+0x114]
  eb5418:	mov    ebx,DWORD PTR [esp+0x5c]
  eb541c:	jmp    eba1be
  eb5421:	lea    ecx,[edi+0x128]
  eb5427:	mov    ebx,DWORD PTR [esp+0x5c]
  eb542b:	jmp    eba3bd
  eb5430:	mov    ebx,edi
  eb5432:	call   1fbc48
  eb5437:	jmp    eb773b
  eb543c:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb5440:	lea    eax,[ebx+eax*8+0x224]
  eb5447:	mov    ebx,DWORD PTR [esp+0x5c]
  eb544b:	mov    ecx,DWORD PTR [eax+0x4]
  eb544e:	mov    DWORD PTR [esp+0x8],ecx
  eb5452:	mov    DWORD PTR [esp],esi
  eb5455:	mov    DWORD PTR [esp+0x4],0x0
  eb545d:	call   DWORD PTR [eax]
  eb545f:	mov    esi,DWORD PTR [ebp+0x8]
  eb5462:	mov    eax,DWORD PTR [esi+0x94]
  eb5468:	test   eax,eax
  eb546a:	je     eba833
  eb5470:	mov    ecx,DWORD PTR [esi+0x9c]
  eb5476:	lea    edx,[ebx+0x48d88]
  eb547c:	mov    edx,DWORD PTR [edx]
  eb547e:	mov    DWORD PTR [esp+0x8],edx
  eb5482:	mov    DWORD PTR [esp+0x4],ecx
  eb5486:	mov    DWORD PTR [esp],eax
  eb5489:	call   5dc626  ; System.Collections.Generic.Dictionary`2<int, int>::ContainsKey
  eb548e:	test   al,al
  eb5490:	jne    eb57b4
  eb5496:	mov    eax,DWORD PTR [esi+0x94]
  eb549c:	test   eax,eax
  eb549e:	jne    eb578e
  eb54a4:	jmp    eba833
  eb54a9:	test   ecx,ecx
  eb54ab:	je     eba82f
  eb54b1:	mov    BYTE PTR [ecx+0x3c],0x0
  eb54b5:	mov    eax,DWORD PTR [edi+0x13c]
  eb54bb:	test   eax,eax
  eb54bd:	je     eba82f
  eb54c3:	mov    ecx,DWORD PTR [eax+0xc]
  eb54c6:	mov    DWORD PTR [esp+0x8],ecx
  eb54ca:	mov    DWORD PTR [esp],eax
  eb54cd:	mov    DWORD PTR [esp+0xc],0x0
  eb54d5:	mov    DWORD PTR [esp+0x4],0x2
  eb54dd:	mov    ebx,DWORD PTR [esp+0x5c]
  eb54e1:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eb54e6:	movss  xmm0,DWORD PTR [edi+0x70]
  eb54eb:	movss  DWORD PTR [esp+0x60],xmm0
  eb54f1:	lea    eax,[ebx+0x45664]
  eb54f7:	mov    eax,DWORD PTR [eax]
  eb54f9:	mov    DWORD PTR [esp],eax
  eb54fc:	call   20bfb2
  eb5501:	mov    esi,eax
  eb5503:	movss  xmm0,DWORD PTR [esp+0x60]
  eb5509:	mulss  xmm0,DWORD PTR [ebx-0x6cefe4]
  eb5511:	movss  DWORD PTR [esp+0x4],xmm0
  eb5517:	mov    DWORD PTR [esp],esi
  eb551a:	mov    DWORD PTR [esp+0x8],0x0
  eb5522:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb5527:	mov    DWORD PTR [edi+0x140],esi
  eb552d:	mov    al,0x1
  eb552f:	cmp    BYTE PTR [edi+0x144],0x0
  eb5536:	jne    eba812
  eb553c:	mov    DWORD PTR [edi+0x148],0x8
  eb5546:	jmp    eba812
  eb554b:	mov    ebx,edi
  eb554d:	call   1fbc48
  eb5552:	jmp    eb773b
  eb5557:	cmp    edx,0x1
  eb555a:	jne    eb9a95
  eb5560:	mov    DWORD PTR [esp],eax
  eb5563:	mov    ebx,edi
  eb5565:	call   1ba3f0
  eb556a:	mov    edi,DWORD PTR [eax]
  eb556c:	call   1b9ce0
  eb5571:	lea    eax,[ebx+0x4a0a0]
  eb5577:	mov    eax,DWORD PTR [eax]
  eb5579:	mov    DWORD PTR [esp+0x4],eax
  eb557d:	mov    DWORD PTR [esp],esi
  eb5580:	call   447df6
  eb5585:	test   edi,edi
  eb5587:	je     eb5591
  eb5589:	mov    DWORD PTR [esp],edi
  eb558c:	call   1fbb20
  eb5591:	mov    esi,DWORD PTR [ebp+0x8]
  eb5594:	mov    eax,DWORD PTR [esi+0x13c]
  eb559a:	test   eax,eax
  eb559c:	je     eba833
  eb55a2:	cmp    BYTE PTR [eax+0x44],0x0
  eb55a6:	jne    eb59e7
  eb55ac:	mov    eax,DWORD PTR [esi+0x14c]
  eb55b2:	test   eax,eax
  eb55b4:	je     eba833
  eb55ba:	mov    edi,DWORD PTR [eax+0xc]
  eb55bd:	test   edi,edi
  eb55bf:	je     eba833
  eb55c5:	lea    eax,[ebx+0x45874]
  eb55cb:	mov    DWORD PTR [esp+0x58],eax
  eb55cf:	mov    eax,DWORD PTR [eax]
  eb55d1:	mov    ecx,DWORD PTR [edi]
  eb55d3:	mov    DWORD PTR [esp+0x60],ecx
  eb55d7:	movzx  edx,WORD PTR [ecx+0xaa]
  eb55de:	test   edx,edx
  eb55e0:	je     eb55f5
  eb55e2:	mov    ecx,DWORD PTR [esp+0x60]
  eb55e6:	mov    esi,DWORD PTR [ecx+0x4c]
  eb55e9:	xor    ecx,ecx
  eb55eb:	cmp    DWORD PTR [esi+ecx*8],eax
  eb55ee:	je     eb560d
  eb55f0:	inc    ecx
  eb55f1:	cmp    ecx,edx
  eb55f3:	jb     eb55eb
  eb55f5:	mov    DWORD PTR [esp+0x4],eax
  eb55f9:	mov    DWORD PTR [esp],edi
  eb55fc:	mov    DWORD PTR [esp+0x8],0x2d
  eb5604:	call   1c1964
  eb5609:	mov    ecx,eax
  eb560b:	jmp    eb561c
  eb560d:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb5611:	mov    ecx,DWORD PTR [esp+0x60]
  eb5615:	lea    ecx,[ecx+eax*8+0x21c]
  eb561c:	mov    eax,DWORD PTR [ecx+0x4]
  eb561f:	mov    DWORD PTR [esp+0x4],eax
  eb5623:	mov    DWORD PTR [esp],edi
  eb5626:	call   DWORD PTR [ecx]
  eb5628:	test   eax,eax
  eb562a:	mov    esi,DWORD PTR [ebp+0x8]
  eb562d:	je     eb5a31
  eb5633:	mov    eax,DWORD PTR [esi+0x14c]
  eb5639:	test   eax,eax
  eb563b:	je     eba82f
  eb5641:	mov    edi,DWORD PTR [eax+0xc]
  eb5644:	test   edi,edi
  eb5646:	je     eba82f
  eb564c:	mov    eax,DWORD PTR [esp+0x58]
  eb5650:	mov    eax,DWORD PTR [eax]
  eb5652:	mov    ebx,DWORD PTR [edi]
  eb5654:	movzx  edx,WORD PTR [ebx+0xaa]
  eb565b:	test   edx,edx
  eb565d:	je     eb5672
  eb565f:	mov    esi,DWORD PTR [ebx+0x4c]
  eb5662:	xor    ecx,ecx
  eb5664:	cmp    DWORD PTR [esi+ecx*8],eax
  eb5667:	je     eb59bb
  eb566d:	inc    ecx
  eb566e:	cmp    ecx,edx
  eb5670:	jb     eb5664
  eb5672:	mov    DWORD PTR [esp+0x4],eax
  eb5676:	mov    DWORD PTR [esp],edi
  eb5679:	mov    DWORD PTR [esp+0x8],0x2d
  eb5681:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5685:	call   1c1964
  eb568a:	mov    ecx,eax
  eb568c:	jmp    eb59ca
  eb5691:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb5695:	lea    ecx,[ebx+eax*8+0x13c]
  eb569c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb56a0:	mov    eax,DWORD PTR [ecx+0x4]
  eb56a3:	mov    DWORD PTR [esp+0x4],eax
  eb56a7:	mov    DWORD PTR [esp],esi
  eb56aa:	call   DWORD PTR [ecx]
  eb56ac:	test   eax,eax
  eb56ae:	mov    edi,DWORD PTR [esp+0x58]
  eb56b2:	je     eb7726
  eb56b8:	mov    DWORD PTR [esp],eax
  eb56bb:	mov    DWORD PTR [esp+0x4],0x0
  eb56c3:	call   8d1388  ; CharacterControllerBattleGroundBase::get_targetSheltered
  eb56c8:	test   eax,eax
  eb56ca:	je     eb5cd3
  eb56d0:	mov    eax,DWORD PTR [edi]
  eb56d2:	test   eax,eax
  eb56d4:	je     eb7722
  eb56da:	mov    esi,DWORD PTR [eax+0x30]
  eb56dd:	test   esi,esi
  eb56df:	je     eb7722
  eb56e5:	mov    eax,DWORD PTR [esp+0x54]
  eb56e9:	mov    eax,DWORD PTR [eax]
  eb56eb:	mov    ebx,DWORD PTR [esi]
  eb56ed:	movzx  edx,WORD PTR [ebx+0xaa]
  eb56f4:	test   edx,edx
  eb56f6:	je     eb570b
  eb56f8:	mov    edi,DWORD PTR [ebx+0x4c]
  eb56fb:	xor    ecx,ecx
  eb56fd:	cmp    DWORD PTR [edi+ecx*8],eax
  eb5700:	je     eb5b89
  eb5706:	inc    ecx
  eb5707:	cmp    ecx,edx
  eb5709:	jb     eb56fd
  eb570b:	mov    DWORD PTR [esp+0x4],eax
  eb570f:	mov    DWORD PTR [esp],esi
  eb5712:	mov    DWORD PTR [esp+0x8],0x11
  eb571a:	mov    ebx,DWORD PTR [esp+0x5c]
  eb571e:	call   1c1964
  eb5723:	mov    ecx,eax
  eb5725:	jmp    eb5b98
  eb572a:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb572e:	lea    eax,[ebx+eax*8+0x224]
  eb5735:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5739:	mov    ecx,DWORD PTR [eax+0x4]
  eb573c:	mov    DWORD PTR [esp+0x8],ecx
  eb5740:	mov    DWORD PTR [esp],esi
  eb5743:	mov    DWORD PTR [esp+0x4],0x0
  eb574b:	call   DWORD PTR [eax]
  eb574d:	mov    esi,DWORD PTR [ebp+0x8]
  eb5750:	mov    eax,DWORD PTR [esi+0x94]
  eb5756:	test   eax,eax
  eb5758:	je     eba821
  eb575e:	mov    ecx,DWORD PTR [esi+0x9c]
  eb5764:	lea    edx,[ebx+0x48d88]
  eb576a:	mov    edx,DWORD PTR [edx]
  eb576c:	mov    DWORD PTR [esp+0x8],edx
  eb5770:	mov    DWORD PTR [esp+0x4],ecx
  eb5774:	mov    DWORD PTR [esp],eax
  eb5777:	call   5dc626  ; System.Collections.Generic.Dictionary`2<int, int>::ContainsKey
  eb577c:	test   al,al
  eb577e:	jne    eb57b4
  eb5780:	mov    eax,DWORD PTR [esi+0x94]
  eb5786:	test   eax,eax
  eb5788:	je     eba821
  eb578e:	mov    ecx,DWORD PTR [esi+0x9c]
  eb5794:	lea    edx,[ebx+0x4a0b0]
  eb579a:	mov    edx,DWORD PTR [edx]
  eb579c:	mov    DWORD PTR [esp+0xc],edx
  eb57a0:	mov    DWORD PTR [esp+0x4],ecx
  eb57a4:	mov    DWORD PTR [esp],eax
  eb57a7:	mov    DWORD PTR [esp+0x8],0x0
  eb57af:	call   5dc0cb  ; System.Collections.Generic.Dictionary`2<int, int>::Add
  eb57b4:	mov    esi,DWORD PTR [esi+0x94]
  eb57ba:	test   esi,esi
  eb57bc:	je     eba833
  eb57c2:	mov    eax,DWORD PTR [ebp+0x8]
  eb57c5:	mov    edi,DWORD PTR [eax+0x9c]
  eb57cb:	mov    DWORD PTR [esp+0x5c],ebx
  eb57cf:	lea    eax,[ebx+0x48d8c]
  eb57d5:	mov    eax,DWORD PTR [eax]
  eb57d7:	mov    DWORD PTR [esp+0x8],eax
  eb57db:	mov    DWORD PTR [esp+0x4],edi
  eb57df:	mov    DWORD PTR [esp],esi
  eb57e2:	call   5daf58  ; System.Collections.Generic.Dictionary`2<int, int>::get_Item
  eb57e7:	lea    ecx,[ebx+0x48d78]
  eb57ed:	mov    ecx,DWORD PTR [ecx]
  eb57ef:	mov    DWORD PTR [esp+0xc],ecx
  eb57f3:	mov    DWORD PTR [esp+0x8],eax
  eb57f7:	mov    DWORD PTR [esp+0x4],edi
  eb57fb:	mov    edi,DWORD PTR [ebp+0x8]
  eb57fe:	mov    DWORD PTR [esp],esi
  eb5801:	call   5db20e  ; System.Collections.Generic.Dictionary`2<int, int>::set_Item
  eb5806:	jmp    eb9a9f
  eb580b:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb580f:	lea    eax,[ebx+eax*8+0x4fc]
  eb5816:	mov    ebx,DWORD PTR [esp+0x5c]
  eb581a:	mov    ecx,DWORD PTR [eax+0x4]
  eb581d:	mov    DWORD PTR [esp+0x8],ecx
  eb5821:	mov    DWORD PTR [esp],edi
  eb5824:	mov    DWORD PTR [esp+0x4],0x1
  eb582c:	call   DWORD PTR [eax]
  eb582e:	mov    edx,DWORD PTR [ebp+0x8]
  eb5831:	mov    eax,DWORD PTR [edx+0x13c]
  eb5837:	test   eax,eax
  eb5839:	je     eb7726
  eb583f:	mov    cl,BYTE PTR [edx+0x14]
  eb5842:	mov    BYTE PTR [eax+0x46],cl
  eb5845:	mov    eax,DWORD PTR [edx+0x14c]
  eb584b:	test   eax,eax
  eb584d:	je     eb7722
  eb5853:	mov    edi,DWORD PTR [eax+0xc]
  eb5856:	test   edi,edi
  eb5858:	je     eb7722
  eb585e:	mov    eax,DWORD PTR [esp+0x60]
  eb5862:	mov    eax,DWORD PTR [eax]
  eb5864:	mov    ebx,DWORD PTR [edi]
  eb5866:	movzx  edx,WORD PTR [ebx+0xaa]
  eb586d:	test   edx,edx
  eb586f:	je     eb5880
  eb5871:	mov    esi,DWORD PTR [ebx+0x4c]
  eb5874:	xor    ecx,ecx
  eb5876:	cmp    DWORD PTR [esi+ecx*8],eax
  eb5879:	je     eb589a
  eb587b:	inc    ecx
  eb587c:	cmp    ecx,edx
  eb587e:	jb     eb5876
  eb5880:	mov    DWORD PTR [esp+0x4],eax
  eb5884:	mov    DWORD PTR [esp],edi
  eb5887:	mov    DWORD PTR [esp+0x8],0x2e
  eb588f:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5893:	call   1c1964
  eb5898:	jmp    eb58a9
  eb589a:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb589e:	lea    eax,[ebx+eax*8+0x224]
  eb58a5:	mov    ebx,DWORD PTR [esp+0x5c]
  eb58a9:	mov    ecx,DWORD PTR [eax+0x4]
  eb58ac:	mov    DWORD PTR [esp+0x8],ecx
  eb58b0:	mov    DWORD PTR [esp],edi
  eb58b3:	mov    DWORD PTR [esp+0x4],0x0
  eb58bb:	call   DWORD PTR [eax]
  eb58bd:	mov    edx,DWORD PTR [ebp+0x8]
  eb58c0:	mov    eax,DWORD PTR [edx+0x14c]
  eb58c6:	test   eax,eax
  eb58c8:	je     eb7726
  eb58ce:	mov    ecx,DWORD PTR [edx+0x13c]
  eb58d4:	test   ecx,ecx
  eb58d6:	je     eb7726
  eb58dc:	mov    eax,DWORD PTR [eax+0xc]
  eb58df:	mov    DWORD PTR [ecx+0x30],eax
  eb58e2:	mov    eax,DWORD PTR [edx+0x13c]
  eb58e8:	test   eax,eax
  eb58ea:	je     eb7726
  eb58f0:	mov    ecx,DWORD PTR [edx+0x8]
  eb58f3:	mov    DWORD PTR [eax+0x14],ecx
  eb58f6:	mov    eax,DWORD PTR [edx+0x14c]
  eb58fc:	test   eax,eax
  eb58fe:	je     eb7726
  eb5904:	mov    ecx,DWORD PTR [edx+0x13c]
  eb590a:	test   ecx,ecx
  eb590c:	je     eb7726
  eb5912:	mov    eax,DWORD PTR [eax+0x8]
  eb5915:	mov    DWORD PTR [ecx+0x18],eax
  eb5918:	mov    eax,DWORD PTR [edx+0x13c]
  eb591e:	test   eax,eax
  eb5920:	je     eb7726
  eb5926:	mov    edx,DWORD PTR [eax+0x30]
  eb5929:	test   edx,edx
  eb592b:	je     eb7726
  eb5931:	cmp    BYTE PTR [eax+0x84],0x0
  eb5938:	mov    eax,DWORD PTR [esp+0x60]
  eb593c:	mov    eax,DWORD PTR [eax]
  eb593e:	mov    ecx,DWORD PTR [edx]
  eb5940:	mov    DWORD PTR [esp+0x58],edx
  eb5944:	movzx  edx,WORD PTR [ecx+0xaa]
  eb594b:	je     eb5984
  eb594d:	test   dx,dx
  eb5950:	je     eb5965
  eb5952:	mov    esi,DWORD PTR [ecx+0x4c]
  eb5955:	xor    edi,edi
  eb5957:	cmp    DWORD PTR [esi+edi*8],eax
  eb595a:	je     eb6043
  eb5960:	inc    edi
  eb5961:	cmp    edi,edx
  eb5963:	jb     eb5957
  eb5965:	mov    DWORD PTR [esp+0x4],eax
  eb5969:	mov    esi,DWORD PTR [esp+0x58]
  eb596d:	mov    DWORD PTR [esp],esi
  eb5970:	mov    DWORD PTR [esp+0x8],0x10
  eb5978:	call   1c1964
  eb597d:	mov    ecx,eax
  eb597f:	jmp    eb6052
  eb5984:	test   dx,dx
  eb5987:	je     eb599c
  eb5989:	mov    esi,DWORD PTR [ecx+0x4c]
  eb598c:	xor    edi,edi
  eb598e:	cmp    DWORD PTR [esi+edi*8],eax
  eb5991:	je     eb6303
  eb5997:	inc    edi
  eb5998:	cmp    edi,edx
  eb599a:	jb     eb598e
  eb599c:	mov    DWORD PTR [esp+0x4],eax
  eb59a0:	mov    esi,DWORD PTR [esp+0x58]
  eb59a4:	mov    DWORD PTR [esp],esi
  eb59a7:	mov    DWORD PTR [esp+0x8],0xf
  eb59af:	call   1c1964
  eb59b4:	mov    ecx,eax
  eb59b6:	jmp    eb6312
  eb59bb:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb59bf:	lea    ecx,[ebx+eax*8+0x21c]
  eb59c6:	mov    ebx,DWORD PTR [esp+0x5c]
  eb59ca:	mov    eax,DWORD PTR [ecx+0x4]
  eb59cd:	mov    DWORD PTR [esp+0x4],eax
  eb59d1:	mov    DWORD PTR [esp],edi
  eb59d4:	call   DWORD PTR [ecx]
  eb59d6:	test   eax,eax
  eb59d8:	je     eba833
  eb59de:	cmp    DWORD PTR [eax+0x8],0x4
  eb59e2:	mov    esi,DWORD PTR [ebp+0x8]
  eb59e5:	jne    eb5a31
  eb59e7:	mov    eax,DWORD PTR [esi+0x14c]
  eb59ed:	test   eax,eax
  eb59ef:	je     eba833
  eb59f5:	mov    esi,DWORD PTR [eax+0xc]
  eb59f8:	test   esi,esi
  eb59fa:	je     eba833
  eb5a00:	lea    eax,[ebx+0x45874]
  eb5a06:	mov    eax,DWORD PTR [eax]
  eb5a08:	mov    ebx,DWORD PTR [esi]
  eb5a0a:	movzx  edx,WORD PTR [ebx+0xaa]
  eb5a11:	test   edx,edx
  eb5a13:	je     eb753a
  eb5a19:	mov    edi,DWORD PTR [ebx+0x4c]
  eb5a1c:	xor    ecx,ecx
  eb5a1e:	cmp    DWORD PTR [edi+ecx*8],eax
  eb5a21:	je     eb7554
  eb5a27:	inc    ecx
  eb5a28:	cmp    ecx,edx
  eb5a2a:	jb     eb5a1e
  eb5a2c:	jmp    eb753a
  eb5a31:	mov    BYTE PTR [esi+0x88],0x1
  eb5a38:	mov    DWORD PTR [esi+0x8c],0x3f800000
  eb5a42:	mov    eax,DWORD PTR [esi+0x13c]
  eb5a48:	test   eax,eax
  eb5a4a:	je     eba833
  eb5a50:	mov    eax,DWORD PTR [eax+0x8]
  eb5a53:	test   eax,eax
  eb5a55:	je     eba833
  eb5a5b:	mov    DWORD PTR [esp],eax
  eb5a5e:	mov    DWORD PTR [esp+0x4],0x0
  eb5a66:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb5a6b:	test   eax,eax
  eb5a6d:	je     eba833
  eb5a73:	lea    ecx,[esi+0x8c]
  eb5a79:	mov    DWORD PTR [esp+0x60],ecx
  eb5a7d:	lea    esi,[ebx+0x56b30]  ; literal "attack_count"
  eb5a83:	mov    ecx,DWORD PTR [esi]
  eb5a85:	lea    edx,[ebx+0x4a014]
  eb5a8b:	mov    edx,DWORD PTR [edx]
  eb5a8d:	mov    DWORD PTR [esp+0x8],edx
  eb5a91:	mov    DWORD PTR [esp+0x4],ecx
  eb5a95:	mov    DWORD PTR [esp],eax
  eb5a98:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eb5a9d:	test   al,al
  eb5a9f:	je     eb5af5
  eb5aa1:	mov    eax,DWORD PTR [ebp+0x8]
  eb5aa4:	mov    eax,DWORD PTR [eax+0x13c]
  eb5aaa:	test   eax,eax
  eb5aac:	je     eba833
  eb5ab2:	mov    eax,DWORD PTR [eax+0x8]
  eb5ab5:	test   eax,eax
  eb5ab7:	je     eba833
  eb5abd:	mov    DWORD PTR [esp],eax
  eb5ac0:	mov    DWORD PTR [esp+0x4],0x0
  eb5ac8:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb5acd:	test   eax,eax
  eb5acf:	je     eba833
  eb5ad5:	mov    ecx,DWORD PTR [esi]
  eb5ad7:	lea    edx,[ebx+0x4a0a8]
  eb5add:	mov    edx,DWORD PTR [edx]
  eb5adf:	mov    DWORD PTR [esp+0x8],edx
  eb5ae3:	mov    DWORD PTR [esp+0x4],ecx
  eb5ae7:	mov    DWORD PTR [esp],eax
  eb5aea:	call   61cb89  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::get_Item | System.Collections.Generic.Dictionary`2<object, float>::get_Item
  eb5aef:	mov    eax,DWORD PTR [esp+0x60]
  eb5af3:	fstp   DWORD PTR [eax]
  eb5af5:	mov    DWORD PTR [esp+0x4],0x0
  eb5afd:	mov    DWORD PTR [esp],0x0
  eb5b04:	call   10659dc  ; DIContainerLogic::GetPacingBalancing
  eb5b09:	test   eax,eax
  eb5b0b:	je     eba833
  eb5b11:	mov    DWORD PTR [esp],eax
  eb5b14:	mov    DWORD PTR [esp+0x4],0x0
  eb5b1c:	call   78199e  ; PacingBalancing::get_DelayForAllMultiAttacks
  eb5b21:	fstp   DWORD PTR [esp+0x9c]
  eb5b28:	movss  xmm0,DWORD PTR [esp+0x9c]
  eb5b31:	mov    edi,DWORD PTR [ebp+0x8]
  eb5b34:	mov    DWORD PTR [esp+0x5c],ebx
  eb5b38:	divss  xmm0,DWORD PTR [edi+0x8c]
  eb5b40:	movss  DWORD PTR [edi+0x90],xmm0
  eb5b48:	lea    eax,[ebx+0x4458c]
  eb5b4e:	mov    eax,DWORD PTR [eax]
  eb5b50:	mov    DWORD PTR [esp],eax
  eb5b53:	call   20bfb2
  eb5b58:	mov    esi,eax
  eb5b5a:	lea    eax,[ebx+0x48d74]
  eb5b60:	mov    eax,DWORD PTR [eax]
  eb5b62:	mov    DWORD PTR [esp+0x4],eax
  eb5b66:	mov    DWORD PTR [esp],esi
  eb5b69:	call   5d9e74  ; System.Collections.Generic.Dictionary`2<int, int>::.ctor
  eb5b6e:	mov    DWORD PTR [edi+0x94],esi
  eb5b74:	mov    DWORD PTR [edi+0x98],0x0
  eb5b7e:	xor    eax,eax
  eb5b80:	mov    edx,DWORD PTR [esp+0x60]
  eb5b84:	jmp    eb9c20
  eb5b89:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb5b8d:	lea    ecx,[ebx+eax*8+0x13c]
  eb5b94:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5b98:	mov    eax,DWORD PTR [ecx+0x4]
  eb5b9b:	mov    DWORD PTR [esp+0x4],eax
  eb5b9f:	mov    DWORD PTR [esp],esi
  eb5ba2:	call   DWORD PTR [ecx]
  eb5ba4:	test   eax,eax
  eb5ba6:	je     eb7726
  eb5bac:	mov    DWORD PTR [esp],eax
  eb5baf:	mov    DWORD PTR [esp+0x4],0x0
  eb5bb7:	call   8d1388  ; CharacterControllerBattleGroundBase::get_targetSheltered
  eb5bbc:	mov    esi,eax
  eb5bbe:	test   esi,esi
  eb5bc0:	je     eb7722
  eb5bc6:	mov    eax,DWORD PTR [esp+0x54]
  eb5bca:	mov    eax,DWORD PTR [eax]
  eb5bcc:	mov    ebx,DWORD PTR [esi]
  eb5bce:	movzx  edx,WORD PTR [ebx+0xaa]
  eb5bd5:	test   edx,edx
  eb5bd7:	je     eb5be8
  eb5bd9:	mov    edi,DWORD PTR [ebx+0x4c]
  eb5bdc:	xor    ecx,ecx
  eb5bde:	cmp    DWORD PTR [edi+ecx*8],eax
  eb5be1:	je     eb5c04
  eb5be3:	inc    ecx
  eb5be4:	cmp    ecx,edx
  eb5be6:	jb     eb5bde
  eb5be8:	mov    DWORD PTR [esp+0x4],eax
  eb5bec:	mov    DWORD PTR [esp],esi
  eb5bef:	mov    DWORD PTR [esp+0x8],0x55
  eb5bf7:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5bfb:	call   1c1964
  eb5c00:	mov    ecx,eax
  eb5c02:	jmp    eb5c13
  eb5c04:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb5c08:	lea    ecx,[ebx+eax*8+0x35c]
  eb5c0f:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5c13:	mov    eax,DWORD PTR [ecx+0x4]
  eb5c16:	mov    DWORD PTR [esp+0x4],eax
  eb5c1a:	mov    DWORD PTR [esp],esi
  eb5c1d:	call   DWORD PTR [ecx]
  eb5c1f:	test   al,al
  eb5c21:	mov    edi,DWORD PTR [esp+0x58]
  eb5c25:	je     eb5cd3
  eb5c2b:	mov    eax,DWORD PTR [edi]
  eb5c2d:	test   eax,eax
  eb5c2f:	je     eb7722
  eb5c35:	mov    eax,DWORD PTR [eax+0x8]
  eb5c38:	test   eax,eax
  eb5c3a:	je     eb7722
  eb5c40:	mov    DWORD PTR [esp],eax
  eb5c43:	mov    DWORD PTR [esp+0x4],0x0
  eb5c4b:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5c4f:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb5c54:	test   eax,eax
  eb5c56:	je     eb7726
  eb5c5c:	lea    ecx,[ebx+0x538b4]  ; literal "all"
  eb5c62:	mov    ecx,DWORD PTR [ecx]
  eb5c64:	lea    esi,[ebx+0x4a014]
  eb5c6a:	mov    edx,DWORD PTR [esi]
  eb5c6c:	mov    DWORD PTR [esp+0x8],edx
  eb5c70:	mov    DWORD PTR [esp+0x4],ecx
  eb5c74:	mov    DWORD PTR [esp],eax
  eb5c77:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eb5c7c:	test   al,al
  eb5c7e:	jne    eb5cd3
  eb5c80:	mov    eax,DWORD PTR [edi]
  eb5c82:	test   eax,eax
  eb5c84:	je     eb7722
  eb5c8a:	mov    eax,DWORD PTR [eax+0x8]
  eb5c8d:	test   eax,eax
  eb5c8f:	je     eb7722
  eb5c95:	mov    DWORD PTR [esp],eax
  eb5c98:	mov    DWORD PTR [esp+0x4],0x0
  eb5ca0:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5ca4:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb5ca9:	test   eax,eax
  eb5cab:	je     eb7726
  eb5cb1:	lea    ecx,[ebx+0x56b28]  ; literal "spray_count"
  eb5cb7:	mov    ecx,DWORD PTR [ecx]
  eb5cb9:	mov    edx,DWORD PTR [esi]
  eb5cbb:	mov    DWORD PTR [esp+0x8],edx
  eb5cbf:	mov    DWORD PTR [esp+0x4],ecx
  eb5cc3:	mov    DWORD PTR [esp],eax
  eb5cc6:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eb5ccb:	test   al,al
  eb5ccd:	je     eb6f54
  eb5cd3:	mov    eax,DWORD PTR [edi]
  eb5cd5:	test   eax,eax
  eb5cd7:	je     eb7722
  eb5cdd:	mov    DWORD PTR [esp+0x58],edi
  eb5ce1:	mov    esi,DWORD PTR [eax+0x30]
  eb5ce4:	test   esi,esi
  eb5ce6:	je     eb7722
  eb5cec:	mov    eax,DWORD PTR [esp+0x54]
  eb5cf0:	mov    eax,DWORD PTR [eax]
  eb5cf2:	mov    ebx,DWORD PTR [esi]
  eb5cf4:	movzx  edx,WORD PTR [ebx+0xaa]
  eb5cfb:	test   edx,edx
  eb5cfd:	je     eb5d0e
  eb5cff:	mov    edi,DWORD PTR [ebx+0x4c]
  eb5d02:	xor    ecx,ecx
  eb5d04:	cmp    DWORD PTR [edi+ecx*8],eax
  eb5d07:	je     eb5d2a
  eb5d09:	inc    ecx
  eb5d0a:	cmp    ecx,edx
  eb5d0c:	jb     eb5d04
  eb5d0e:	mov    DWORD PTR [esp+0x4],eax
  eb5d12:	mov    DWORD PTR [esp],esi
  eb5d15:	mov    DWORD PTR [esp+0x8],0x11
  eb5d1d:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5d21:	call   1c1964
  eb5d26:	mov    ecx,eax
  eb5d28:	jmp    eb5d39
  eb5d2a:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb5d2e:	lea    ecx,[ebx+eax*8+0x13c]
  eb5d35:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5d39:	mov    eax,DWORD PTR [ecx+0x4]
  eb5d3c:	mov    DWORD PTR [esp+0x4],eax
  eb5d40:	mov    DWORD PTR [esp],esi
  eb5d43:	call   DWORD PTR [ecx]
  eb5d45:	test   eax,eax
  eb5d47:	mov    edi,DWORD PTR [ebp+0x8]
  eb5d4a:	je     eb7726
  eb5d50:	mov    DWORD PTR [esp],eax
  eb5d53:	mov    DWORD PTR [esp+0x8],0x0
  eb5d5b:	mov    DWORD PTR [esp+0x4],0x0
  eb5d63:	mov    DWORD PTR [esp+0x5c],ebx
  eb5d67:	call   8d196a  ; CharacterControllerBattleGroundBase::set_targetSheltered
  eb5d6c:	mov    eax,DWORD PTR [esp+0x58]
  eb5d70:	mov    eax,DWORD PTR [eax]
  eb5d72:	test   eax,eax
  eb5d74:	je     eb7722
  eb5d7a:	mov    eax,DWORD PTR [eax+0x58]
  eb5d7d:	test   eax,eax
  eb5d7f:	je     eb7722
  eb5d85:	mov    ebx,DWORD PTR [esp+0x5c]
  eb5d89:	lea    ecx,[ebx+0x4a090]
  eb5d8f:	mov    ecx,DWORD PTR [ecx]
  eb5d91:	mov    DWORD PTR [esp+0x8],ecx
  eb5d95:	mov    DWORD PTR [esp+0x4],eax
  eb5d99:	lea    eax,[esp+0x158]
  eb5da0:	mov    DWORD PTR [esp],eax
  eb5da3:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb5da8:	sub    esp,0x4
  eb5dab:	lea    esi,[edi+0x54]
  eb5dae:	movsd  xmm0,QWORD PTR [esp+0x158]
  eb5db7:	movsd  xmm1,QWORD PTR [esp+0x160]
  eb5dc0:	movsd  QWORD PTR [edi+0x5c],xmm1
  eb5dc5:	movsd  QWORD PTR [edi+0x54],xmm0
  eb5dca:	lea    eax,[ebx+0x4a09c]
  eb5dd0:	mov    eax,DWORD PTR [eax]
  eb5dd2:	mov    DWORD PTR [esp+0x4],eax
  eb5dd6:	mov    DWORD PTR [esp],esi
  eb5dd9:	mov    edi,ebx
  eb5ddb:	call   447e4e
  eb5de0:	test   al,al
  eb5de2:	je     eb5ed9
  eb5de8:	lea    eax,[edi+0x4a094]
  eb5dee:	mov    eax,DWORD PTR [eax]
  eb5df0:	mov    DWORD PTR [esp+0x4],eax
  eb5df4:	mov    DWORD PTR [esp],esi
  eb5df7:	mov    ebx,edi
  eb5df9:	call   447f1e
  eb5dfe:	mov    ecx,DWORD PTR [ebp+0x8]
  eb5e01:	mov    DWORD PTR [ecx+0x64],eax
  eb5e04:	mov    ecx,DWORD PTR [ecx+0x13c]
  eb5e0a:	test   ecx,ecx
  eb5e0c:	je     eb5ef1
  eb5e12:	test   eax,eax
  eb5e14:	je     eb5efd
  eb5e1a:	mov    edx,DWORD PTR [ecx+0x14]
  eb5e1d:	mov    DWORD PTR [esp+0x60],edx
  eb5e21:	mov    edx,DWORD PTR [ecx+0x18]
  eb5e24:	mov    DWORD PTR [esp+0x58],edx
  eb5e28:	mov    edx,DWORD PTR [ecx+0x34]
  eb5e2b:	mov    ecx,DWORD PTR [ecx+0x30]
  eb5e2e:	mov    DWORD PTR [esp+0x54],ecx
  eb5e32:	lea    ecx,[edi+0x4a098]
  eb5e38:	mov    ecx,DWORD PTR [ecx]
  eb5e3a:	mov    DWORD PTR [esp+0x14],ecx
  eb5e3e:	mov    ecx,DWORD PTR [esp+0x58]
  eb5e42:	mov    DWORD PTR [esp+0x10],ecx
  eb5e46:	mov    DWORD PTR [esp+0xc],edx
  eb5e4a:	mov    ecx,DWORD PTR [esp+0x54]
  eb5e4e:	mov    DWORD PTR [esp+0x8],ecx
  eb5e52:	mov    ecx,DWORD PTR [esp+0x60]
  eb5e56:	mov    DWORD PTR [esp+0x4],ecx
  eb5e5a:	mov    DWORD PTR [esp],eax
  eb5e5d:	mov    ebx,edi
  eb5e5f:	call   17d922c  ; shared address: System.Func`5<ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4), ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<object, object, object, object, float>::Invoke
  eb5e64:	fstp   DWORD PTR [esp+0xa8]
  eb5e6b:	movss  xmm0,DWORD PTR [esp+0xa8]
  eb5e74:	movss  DWORD PTR [esp+0x60],xmm0
  eb5e7a:	lea    eax,[edi+0x45664]
  eb5e80:	mov    eax,DWORD PTR [eax]
  eb5e82:	mov    DWORD PTR [esp],eax
  eb5e85:	mov    ebx,edi
  eb5e87:	call   20bfb2
  eb5e8c:	movss  xmm0,DWORD PTR [esp+0x60]
  eb5e92:	movss  DWORD PTR [esp+0x4],xmm0
  eb5e98:	mov    DWORD PTR [esp],eax
  eb5e9b:	mov    DWORD PTR [esp+0x8],0x0
  eb5ea3:	mov    ebx,edi
  eb5ea5:	mov    DWORD PTR [esp+0x60],eax
  eb5ea9:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb5eae:	mov    eax,DWORD PTR [esp+0x60]
  eb5eb2:	mov    ecx,DWORD PTR [ebp+0x8]
  eb5eb5:	mov    DWORD PTR [ecx+0x140],eax
  eb5ebb:	mov    al,0x1
  eb5ebd:	cmp    BYTE PTR [ecx+0x144],0x0
  eb5ec4:	jne    eba812
  eb5eca:	mov    DWORD PTR [ecx+0x148],0x5
  eb5ed4:	jmp    eba812
  eb5ed9:	lea    eax,[edi+0x4a0a0]
  eb5edf:	mov    eax,DWORD PTR [eax]
  eb5ee1:	mov    DWORD PTR [esp+0x4],eax
  eb5ee5:	mov    DWORD PTR [esp],esi
  eb5ee8:	mov    ebx,edi
  eb5eea:	call   447df6
  eb5eef:	jmp    eb5f43
  eb5ef1:	mov    ebx,edi
  eb5ef3:	call   1fbc48
  eb5ef8:	jmp    eb7730
  eb5efd:	mov    ebx,edi
  eb5eff:	call   1fbc48
  eb5f04:	jmp    eb7730
  eb5f09:	cmp    edx,0x1
  eb5f0c:	jne    eb9a95
  eb5f12:	mov    DWORD PTR [esp],eax
  eb5f15:	mov    ebx,edi
  eb5f17:	call   1ba3f0
  eb5f1c:	mov    edi,DWORD PTR [eax]
  eb5f1e:	call   1b9ce0
  eb5f23:	lea    eax,[ebx+0x4a0a0]
  eb5f29:	mov    eax,DWORD PTR [eax]
  eb5f2b:	mov    DWORD PTR [esp+0x4],eax
  eb5f2f:	mov    DWORD PTR [esp],esi
  eb5f32:	call   447df6
  eb5f37:	test   edi,edi
  eb5f39:	je     eb5f43
  eb5f3b:	mov    DWORD PTR [esp],edi
  eb5f3e:	call   1fbb20
  eb5f43:	mov    ecx,DWORD PTR [ebp+0x8]
  eb5f46:	mov    eax,DWORD PTR [ecx+0x13c]
  eb5f4c:	test   eax,eax
  eb5f4e:	je     eb7726
  eb5f54:	cmp    BYTE PTR [eax+0x44],0x0
  eb5f58:	jne    eb60ec
  eb5f5e:	mov    eax,DWORD PTR [ecx+0x14c]
  eb5f64:	test   eax,eax
  eb5f66:	je     eb7726
  eb5f6c:	mov    edi,DWORD PTR [eax+0xc]
  eb5f6f:	test   edi,edi
  eb5f71:	je     eb7726
  eb5f77:	lea    eax,[ebx+0x45874]
  eb5f7d:	mov    DWORD PTR [esp+0x58],eax
  eb5f81:	mov    eax,DWORD PTR [eax]
  eb5f83:	mov    ecx,DWORD PTR [edi]
  eb5f85:	mov    DWORD PTR [esp+0x60],ecx
  eb5f89:	movzx  edx,WORD PTR [ecx+0xaa]
  eb5f90:	test   edx,edx
  eb5f92:	je     eb5fa7
  eb5f94:	mov    ecx,DWORD PTR [esp+0x60]
  eb5f98:	mov    esi,DWORD PTR [ecx+0x4c]
  eb5f9b:	xor    ecx,ecx
  eb5f9d:	cmp    DWORD PTR [esi+ecx*8],eax
  eb5fa0:	je     eb5fbf
  eb5fa2:	inc    ecx
  eb5fa3:	cmp    ecx,edx
  eb5fa5:	jb     eb5f9d
  eb5fa7:	mov    DWORD PTR [esp+0x4],eax
  eb5fab:	mov    DWORD PTR [esp],edi
  eb5fae:	mov    DWORD PTR [esp+0x8],0x2d
  eb5fb6:	call   1c1964
  eb5fbb:	mov    ecx,eax
  eb5fbd:	jmp    eb5fce
  eb5fbf:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb5fc3:	mov    ecx,DWORD PTR [esp+0x60]
  eb5fc7:	lea    ecx,[ecx+eax*8+0x21c]
  eb5fce:	mov    eax,DWORD PTR [ecx+0x4]
  eb5fd1:	mov    DWORD PTR [esp+0x4],eax
  eb5fd5:	mov    DWORD PTR [esp],edi
  eb5fd8:	call   DWORD PTR [ecx]
  eb5fda:	test   eax,eax
  eb5fdc:	mov    ecx,DWORD PTR [ebp+0x8]
  eb5fdf:	je     eb6136
  eb5fe5:	mov    eax,DWORD PTR [ecx+0x14c]
  eb5feb:	test   eax,eax
  eb5fed:	je     eb7722
  eb5ff3:	mov    edi,DWORD PTR [eax+0xc]
  eb5ff6:	test   edi,edi
  eb5ff8:	je     eb7722
  eb5ffe:	mov    eax,DWORD PTR [esp+0x58]
  eb6002:	mov    eax,DWORD PTR [eax]
  eb6004:	mov    ebx,DWORD PTR [edi]
  eb6006:	movzx  edx,WORD PTR [ebx+0xaa]
  eb600d:	test   edx,edx
  eb600f:	je     eb6024
  eb6011:	mov    esi,DWORD PTR [ebx+0x4c]
  eb6014:	xor    ecx,ecx
  eb6016:	cmp    DWORD PTR [esi+ecx*8],eax
  eb6019:	je     eb60c0
  eb601f:	inc    ecx
  eb6020:	cmp    ecx,edx
  eb6022:	jb     eb6016
  eb6024:	mov    DWORD PTR [esp+0x4],eax
  eb6028:	mov    DWORD PTR [esp],edi
  eb602b:	mov    DWORD PTR [esp+0x8],0x2d
  eb6033:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6037:	call   1c1964
  eb603c:	mov    ecx,eax
  eb603e:	jmp    eb60cf
  eb6043:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb6047:	lea    ecx,[ecx+eax*8+0x134]
  eb604e:	mov    esi,DWORD PTR [esp+0x58]
  eb6052:	mov    eax,DWORD PTR [ecx+0x4]
  eb6055:	mov    DWORD PTR [esp+0x4],eax
  eb6059:	mov    DWORD PTR [esp],esi
  eb605c:	call   DWORD PTR [ecx]
  eb605e:	test   eax,eax
  eb6060:	mov    esi,DWORD PTR [ebp+0x8]
  eb6063:	je     eb63b4
  eb6069:	mov    eax,DWORD PTR [esi+0x13c]
  eb606f:	test   eax,eax
  eb6071:	je     eb7722
  eb6077:	mov    esi,DWORD PTR [eax+0x30]
  eb607a:	mov    DWORD PTR [esp+0x58],eax
  eb607e:	test   esi,esi
  eb6080:	je     eb7722
  eb6086:	mov    eax,DWORD PTR [esp+0x60]
  eb608a:	mov    eax,DWORD PTR [eax]
  eb608c:	mov    ebx,DWORD PTR [esi]
  eb608e:	movzx  edx,WORD PTR [ebx+0xaa]
  eb6095:	test   edx,edx
  eb6097:	je     eb60ac
  eb6099:	mov    edi,DWORD PTR [ebx+0x4c]
  eb609c:	xor    ecx,ecx
  eb609e:	cmp    DWORD PTR [edi+ecx*8],eax
  eb60a1:	je     eb62ef
  eb60a7:	inc    ecx
  eb60a8:	cmp    ecx,edx
  eb60aa:	jb     eb609e
  eb60ac:	mov    DWORD PTR [esp+0x4],eax
  eb60b0:	mov    DWORD PTR [esp],esi
  eb60b3:	mov    DWORD PTR [esp+0x8],0x10
  eb60bb:	jmp    eb637b
  eb60c0:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb60c4:	lea    ecx,[ebx+eax*8+0x21c]
  eb60cb:	mov    ebx,DWORD PTR [esp+0x5c]
  eb60cf:	mov    eax,DWORD PTR [ecx+0x4]
  eb60d2:	mov    DWORD PTR [esp+0x4],eax
  eb60d6:	mov    DWORD PTR [esp],edi
  eb60d9:	call   DWORD PTR [ecx]
  eb60db:	test   eax,eax
  eb60dd:	je     eb7726
  eb60e3:	cmp    DWORD PTR [eax+0x8],0x4
  eb60e7:	mov    ecx,DWORD PTR [ebp+0x8]
  eb60ea:	jne    eb6136
  eb60ec:	mov    eax,DWORD PTR [ecx+0x14c]
  eb60f2:	test   eax,eax
  eb60f4:	je     eb7726
  eb60fa:	mov    esi,DWORD PTR [eax+0xc]
  eb60fd:	test   esi,esi
  eb60ff:	je     eb7726
  eb6105:	lea    eax,[ebx+0x45874]
  eb610b:	mov    eax,DWORD PTR [eax]
  eb610d:	mov    ebx,DWORD PTR [esi]
  eb610f:	movzx  edx,WORD PTR [ebx+0xaa]
  eb6116:	test   edx,edx
  eb6118:	je     eb753a
  eb611e:	mov    edi,DWORD PTR [ebx+0x4c]
  eb6121:	xor    ecx,ecx
  eb6123:	cmp    DWORD PTR [edi+ecx*8],eax
  eb6126:	je     eb7554
  eb612c:	inc    ecx
  eb612d:	cmp    ecx,edx
  eb612f:	jb     eb6123
  eb6131:	jmp    eb753a
  eb6136:	mov    esi,ecx
  eb6138:	lea    edi,[esi+0x13c]
  eb613e:	mov    eax,DWORD PTR [edi]
  eb6140:	test   eax,eax
  eb6142:	je     eb7726
  eb6148:	mov    ecx,DWORD PTR [eax+0xc]
  eb614b:	mov    DWORD PTR [esp+0x8],ecx
  eb614f:	mov    DWORD PTR [esp],eax
  eb6152:	mov    DWORD PTR [esp+0xc],0x0
  eb615a:	mov    DWORD PTR [esp+0x4],0x0
  eb6162:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  eb6167:	mov    eax,DWORD PTR [esi+0x14c]
  eb616d:	test   eax,eax
  eb616f:	je     eb7726
  eb6175:	mov    ecx,DWORD PTR [esi+0x13c]
  eb617b:	test   ecx,ecx
  eb617d:	je     eb7726
  eb6183:	mov    eax,DWORD PTR [eax+0xc]
  eb6186:	mov    DWORD PTR [esp+0x4],eax
  eb618a:	mov    DWORD PTR [esp],ecx
  eb618d:	call   eb49cc  ; ABH.GameDatas.Battle.AttackSkillTemplate::IsMeeleAttack
  eb6192:	test   al,al
  eb6194:	je     eb6224
  eb619a:	mov    eax,DWORD PTR [edi]
  eb619c:	test   eax,eax
  eb619e:	je     eb7726
  eb61a4:	mov    BYTE PTR [eax+0x40],0x1
  eb61a8:	mov    eax,DWORD PTR [edi]
  eb61aa:	test   eax,eax
  eb61ac:	je     eb7726
  eb61b2:	mov    ecx,DWORD PTR [esi+0x14c]
  eb61b8:	test   ecx,ecx
  eb61ba:	je     eb7726
  eb61c0:	mov    eax,DWORD PTR [eax+0x4c]
  eb61c3:	test   eax,eax
  eb61c5:	je     eb7726
  eb61cb:	mov    ecx,DWORD PTR [ecx+0xc]
  eb61ce:	mov    DWORD PTR [esp+0x5c],ebx
  eb61d2:	lea    edx,[ebx+0x4a0a4]
  eb61d8:	mov    edx,DWORD PTR [edx]
  eb61da:	mov    DWORD PTR [esp+0x8],edx
  eb61de:	mov    DWORD PTR [esp+0x4],ecx
  eb61e2:	mov    DWORD PTR [esp],eax
  eb61e5:	call   17d7691  ; shared address: System.Func`2<ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`2<object, float>::Invoke
  eb61ea:	fstp   st(0)
  eb61ec:	mov    eax,DWORD PTR [edi]
  eb61ee:	test   eax,eax
  eb61f0:	je     eb7722
  eb61f6:	mov    BYTE PTR [eax+0x3c],0x1
  eb61fa:	mov    eax,DWORD PTR [edi]
  eb61fc:	test   eax,eax
  eb61fe:	je     eb7722
  eb6204:	movss  xmm0,DWORD PTR [eax+0x48]
  eb6209:	movss  DWORD PTR [esi+0x68],xmm0
  eb620e:	cmp    BYTE PTR [esi+0x6c],0x0
  eb6212:	je     eb6eee
  eb6218:	mov    DWORD PTR [esi+0x68],0x3ecccccd
  eb621f:	jmp    eb5052
  eb6224:	mov    edi,esi
  eb6226:	mov    eax,DWORD PTR [edi+0x13c]
  eb622c:	test   eax,eax
  eb622e:	je     eb7726
  eb6234:	mov    ecx,DWORD PTR [edi+0x14c]
  eb623a:	test   ecx,ecx
  eb623c:	je     eb7726
  eb6242:	mov    eax,DWORD PTR [eax+0x4c]
  eb6245:	test   eax,eax
  eb6247:	je     eb7726
  eb624d:	mov    dl,BYTE PTR [edi+0x6c]
  eb6250:	mov    BYTE PTR [esp+0x60],dl
  eb6254:	mov    ecx,DWORD PTR [ecx+0xc]
  eb6257:	lea    edx,[ebx+0x4a0a4]
  eb625d:	mov    edx,DWORD PTR [edx]
  eb625f:	mov    DWORD PTR [esp+0x8],edx
  eb6263:	mov    DWORD PTR [esp+0x4],ecx
  eb6267:	mov    DWORD PTR [esp],eax
  eb626a:	call   17d7691  ; shared address: System.Func`2<ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`2<object, float>::Invoke
  eb626f:	cmp    BYTE PTR [esp+0x60],0x0
  eb6274:	fstp   DWORD PTR [esp+0xa4]
  eb627b:	movss  xmm0,DWORD PTR [esp+0xa4]
  eb6284:	je     eb6e96
  eb628a:	movss  DWORD PTR [edi+0x70],xmm0
  eb628f:	lea    eax,[ebx+0x45664]
  eb6295:	mov    eax,DWORD PTR [eax]
  eb6297:	mov    DWORD PTR [esp],eax
  eb629a:	movss  DWORD PTR [esp+0x60],xmm0
  eb62a0:	call   20bfb2
  eb62a5:	mov    esi,eax
  eb62a7:	movss  xmm0,DWORD PTR [esp+0x60]
  eb62ad:	mulss  xmm0,DWORD PTR [ebx-0x6cefe4]
  eb62b5:	movss  DWORD PTR [esp+0x4],xmm0
  eb62bb:	mov    DWORD PTR [esp],esi
  eb62be:	mov    DWORD PTR [esp+0x8],0x0
  eb62c6:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb62cb:	mov    DWORD PTR [edi+0x140],esi
  eb62d1:	mov    al,0x1
  eb62d3:	cmp    BYTE PTR [edi+0x144],0x0
  eb62da:	jne    eba812
  eb62e0:	mov    DWORD PTR [edi+0x148],0x7
  eb62ea:	jmp    eba812
  eb62ef:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb62f3:	lea    ecx,[ebx+eax*8+0x134]
  eb62fa:	mov    ebx,DWORD PTR [esp+0x5c]
  eb62fe:	jmp    eb6386
  eb6303:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb6307:	lea    ecx,[ecx+eax*8+0x12c]
  eb630e:	mov    esi,DWORD PTR [esp+0x58]
  eb6312:	mov    eax,DWORD PTR [ecx+0x4]
  eb6315:	mov    DWORD PTR [esp+0x4],eax
  eb6319:	mov    DWORD PTR [esp],esi
  eb631c:	call   DWORD PTR [ecx]
  eb631e:	test   eax,eax
  eb6320:	mov    esi,DWORD PTR [ebp+0x8]
  eb6323:	je     eb63b4
  eb6329:	mov    eax,DWORD PTR [esi+0x13c]
  eb632f:	test   eax,eax
  eb6331:	je     eb7722
  eb6337:	mov    esi,DWORD PTR [eax+0x30]
  eb633a:	mov    DWORD PTR [esp+0x58],eax
  eb633e:	test   esi,esi
  eb6340:	je     eb7722
  eb6346:	mov    eax,DWORD PTR [esp+0x60]
  eb634a:	mov    eax,DWORD PTR [eax]
  eb634c:	mov    ebx,DWORD PTR [esi]
  eb634e:	movzx  edx,WORD PTR [ebx+0xaa]
  eb6355:	test   edx,edx
  eb6357:	je     eb636c
  eb6359:	mov    edi,DWORD PTR [ebx+0x4c]
  eb635c:	xor    ecx,ecx
  eb635e:	cmp    DWORD PTR [edi+ecx*8],eax
  eb6361:	je     eb6fe0
  eb6367:	inc    ecx
  eb6368:	cmp    ecx,edx
  eb636a:	jb     eb635e
  eb636c:	mov    DWORD PTR [esp+0x4],eax
  eb6370:	mov    DWORD PTR [esp],esi
  eb6373:	mov    DWORD PTR [esp+0x8],0xf
  eb637b:	mov    ebx,DWORD PTR [esp+0x5c]
  eb637f:	call   1c1964
  eb6384:	mov    ecx,eax
  eb6386:	mov    eax,DWORD PTR [ecx+0x4]
  eb6389:	mov    DWORD PTR [esp+0x4],eax
  eb638d:	mov    DWORD PTR [esp],esi
  eb6390:	call   DWORD PTR [ecx]
  eb6392:	test   eax,eax
  eb6394:	mov    esi,DWORD PTR [ebp+0x8]
  eb6397:	je     eb7726
  eb639d:	mov    DWORD PTR [esp],eax
  eb63a0:	mov    DWORD PTR [esp+0x4],0x0
  eb63a8:	call   6d57f0  ; ABH.GameDatas.EquipmentGameData::get_ProjectileAssetName
  eb63ad:	mov    ecx,DWORD PTR [esp+0x58]
  eb63b1:	mov    DWORD PTR [ecx+0x20],eax
  eb63b4:	mov    eax,DWORD PTR [esi+0x13c]
  eb63ba:	test   eax,eax
  eb63bc:	je     eb7726
  eb63c2:	mov    eax,DWORD PTR [eax+0x50]
  eb63c5:	test   eax,eax
  eb63c7:	je     eb7726
  eb63cd:	lea    ecx,[ebx+0x4a060]
  eb63d3:	mov    ecx,DWORD PTR [ecx]
  eb63d5:	mov    DWORD PTR [esp+0x8],ecx
  eb63d9:	mov    DWORD PTR [esp+0x4],eax
  eb63dd:	lea    eax,[esp+0x188]
  eb63e4:	mov    DWORD PTR [esp],eax
  eb63e7:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb63ec:	sub    esp,0x4
  eb63ef:	lea    ecx,[esi+0x1c]
  eb63f2:	movsd  xmm0,QWORD PTR [esp+0x188]
  eb63fb:	movsd  xmm1,QWORD PTR [esp+0x190]
  eb6404:	movsd  QWORD PTR [esi+0x24],xmm1
  eb6409:	movsd  QWORD PTR [esi+0x1c],xmm0
  eb640e:	mov    DWORD PTR [esp+0x60],ecx
  eb6412:	lea    eax,[ebx+0x4a06c]
  eb6418:	mov    eax,DWORD PTR [eax]
  eb641a:	mov    DWORD PTR [esp+0x4],eax
  eb641e:	mov    DWORD PTR [esp],ecx
  eb6421:	mov    edi,ebx
  eb6423:	call   447e4e
  eb6428:	test   al,al
  eb642a:	je     eb6508
  eb6430:	lea    eax,[edi+0x4a064]
  eb6436:	mov    eax,DWORD PTR [eax]
  eb6438:	mov    DWORD PTR [esp+0x4],eax
  eb643c:	mov    eax,DWORD PTR [esp+0x60]
  eb6440:	mov    DWORD PTR [esp],eax
  eb6443:	mov    ebx,edi
  eb6445:	call   447f1e
  eb644a:	mov    ecx,DWORD PTR [ebp+0x8]
  eb644d:	mov    DWORD PTR [ecx+0x2c],eax
  eb6450:	mov    ecx,DWORD PTR [ecx+0x13c]
  eb6456:	test   ecx,ecx
  eb6458:	je     eb6524
  eb645e:	test   eax,eax
  eb6460:	je     eb6530
  eb6466:	mov    edx,DWORD PTR [ecx+0x14]
  eb6469:	mov    DWORD PTR [esp+0x58],edx
  eb646d:	mov    esi,DWORD PTR [ecx+0x18]
  eb6470:	mov    ecx,DWORD PTR [ecx+0x30]
  eb6473:	lea    edx,[edi+0x4a068]
  eb6479:	mov    edx,DWORD PTR [edx]
  eb647b:	mov    DWORD PTR [esp+0x10],edx
  eb647f:	mov    DWORD PTR [esp+0xc],esi
  eb6483:	mov    DWORD PTR [esp+0x8],ecx
  eb6487:	mov    ecx,DWORD PTR [esp+0x58]
  eb648b:	mov    DWORD PTR [esp+0x4],ecx
  eb648f:	mov    DWORD PTR [esp],eax
  eb6492:	mov    ebx,edi
  eb6494:	call   17d88a2  ; shared address: System.Func`4<ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`4<object, object, object, float>::Invoke
  eb6499:	fstp   DWORD PTR [esp+0xb0]
  eb64a0:	movss  xmm0,DWORD PTR [esp+0xb0]
  eb64a9:	movss  DWORD PTR [esp+0x58],xmm0
  eb64af:	lea    eax,[edi+0x45664]
  eb64b5:	mov    eax,DWORD PTR [eax]
  eb64b7:	mov    DWORD PTR [esp],eax
  eb64ba:	mov    ebx,edi
  eb64bc:	call   20bfb2
  eb64c1:	mov    esi,eax
  eb64c3:	movss  xmm0,DWORD PTR [esp+0x58]
  eb64c9:	movss  DWORD PTR [esp+0x4],xmm0
  eb64cf:	mov    DWORD PTR [esp],esi
  eb64d2:	mov    DWORD PTR [esp+0x8],0x0
  eb64da:	mov    ebx,edi
  eb64dc:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb64e1:	mov    ecx,DWORD PTR [ebp+0x8]
  eb64e4:	mov    DWORD PTR [ecx+0x140],esi
  eb64ea:	mov    al,0x1
  eb64ec:	cmp    BYTE PTR [ecx+0x144],0x0
  eb64f3:	jne    eba812
  eb64f9:	mov    DWORD PTR [ecx+0x148],0x1
  eb6503:	jmp    eba812
  eb6508:	lea    eax,[edi+0x4a070]
  eb650e:	mov    eax,DWORD PTR [eax]
  eb6510:	mov    DWORD PTR [esp+0x4],eax
  eb6514:	mov    eax,DWORD PTR [esp+0x60]
  eb6518:	mov    DWORD PTR [esp],eax
  eb651b:	mov    ebx,edi
  eb651d:	call   447df6
  eb6522:	jmp    eb657a
  eb6524:	mov    ebx,edi
  eb6526:	call   1fbc48
  eb652b:	jmp    eb7730
  eb6530:	mov    ebx,edi
  eb6532:	call   1fbc48
  eb6537:	jmp    eb7730
  eb653c:	cmp    edx,0x1
  eb653f:	jne    eb9a95
  eb6545:	mov    DWORD PTR [esp],eax
  eb6548:	mov    ebx,edi
  eb654a:	call   1ba3f0
  eb654f:	mov    esi,DWORD PTR [eax]
  eb6551:	call   1b9ce0
  eb6556:	lea    eax,[ebx+0x4a070]
  eb655c:	mov    eax,DWORD PTR [eax]
  eb655e:	mov    DWORD PTR [esp+0x4],eax
  eb6562:	mov    eax,DWORD PTR [esp+0x60]
  eb6566:	mov    DWORD PTR [esp],eax
  eb6569:	call   447df6
  eb656e:	test   esi,esi
  eb6570:	je     eb657a
  eb6572:	mov    DWORD PTR [esp],esi
  eb6575:	call   1fbb20
  eb657a:	mov    esi,DWORD PTR [ebp+0x8]
  eb657d:	mov    eax,DWORD PTR [esi+0x13c]
  eb6583:	test   eax,eax
  eb6585:	je     eb7726
  eb658b:	cmp    BYTE PTR [eax+0x44],0x0
  eb658f:	jne    eb669f
  eb6595:	mov    eax,DWORD PTR [esi+0x14c]
  eb659b:	test   eax,eax
  eb659d:	je     eb7726
  eb65a3:	mov    edi,DWORD PTR [eax+0xc]
  eb65a6:	test   edi,edi
  eb65a8:	je     eb7726
  eb65ae:	lea    eax,[ebx+0x45874]
  eb65b4:	mov    DWORD PTR [esp+0x58],eax
  eb65b8:	mov    eax,DWORD PTR [eax]
  eb65ba:	mov    ecx,DWORD PTR [edi]
  eb65bc:	mov    DWORD PTR [esp+0x60],ecx
  eb65c0:	movzx  edx,WORD PTR [ecx+0xaa]
  eb65c7:	test   edx,edx
  eb65c9:	je     eb65de
  eb65cb:	mov    ecx,DWORD PTR [esp+0x60]
  eb65cf:	mov    esi,DWORD PTR [ecx+0x4c]
  eb65d2:	xor    ecx,ecx
  eb65d4:	cmp    DWORD PTR [esi+ecx*8],eax
  eb65d7:	je     eb65f6
  eb65d9:	inc    ecx
  eb65da:	cmp    ecx,edx
  eb65dc:	jb     eb65d4
  eb65de:	mov    DWORD PTR [esp+0x4],eax
  eb65e2:	mov    DWORD PTR [esp],edi
  eb65e5:	mov    DWORD PTR [esp+0x8],0x2d
  eb65ed:	call   1c1964
  eb65f2:	mov    ecx,eax
  eb65f4:	jmp    eb6605
  eb65f6:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb65fa:	mov    ecx,DWORD PTR [esp+0x60]
  eb65fe:	lea    ecx,[ecx+eax*8+0x21c]
  eb6605:	mov    eax,DWORD PTR [ecx+0x4]
  eb6608:	mov    DWORD PTR [esp+0x4],eax
  eb660c:	mov    DWORD PTR [esp],edi
  eb660f:	call   DWORD PTR [ecx]
  eb6611:	test   eax,eax
  eb6613:	mov    esi,DWORD PTR [ebp+0x8]
  eb6616:	je     eb66e9
  eb661c:	mov    eax,DWORD PTR [esi+0x14c]
  eb6622:	test   eax,eax
  eb6624:	je     eb7722
  eb662a:	mov    edi,DWORD PTR [eax+0xc]
  eb662d:	test   edi,edi
  eb662f:	je     eb7722
  eb6635:	mov    eax,DWORD PTR [esp+0x58]
  eb6639:	mov    eax,DWORD PTR [eax]
  eb663b:	mov    ebx,DWORD PTR [edi]
  eb663d:	movzx  edx,WORD PTR [ebx+0xaa]
  eb6644:	test   edx,edx
  eb6646:	je     eb6657
  eb6648:	mov    esi,DWORD PTR [ebx+0x4c]
  eb664b:	xor    ecx,ecx
  eb664d:	cmp    DWORD PTR [esi+ecx*8],eax
  eb6650:	je     eb6673
  eb6652:	inc    ecx
  eb6653:	cmp    ecx,edx
  eb6655:	jb     eb664d
  eb6657:	mov    DWORD PTR [esp+0x4],eax
  eb665b:	mov    DWORD PTR [esp],edi
  eb665e:	mov    DWORD PTR [esp+0x8],0x2d
  eb6666:	mov    ebx,DWORD PTR [esp+0x5c]
  eb666a:	call   1c1964
  eb666f:	mov    ecx,eax
  eb6671:	jmp    eb6682
  eb6673:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb6677:	lea    ecx,[ebx+eax*8+0x21c]
  eb667e:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6682:	mov    eax,DWORD PTR [ecx+0x4]
  eb6685:	mov    DWORD PTR [esp+0x4],eax
  eb6689:	mov    DWORD PTR [esp],edi
  eb668c:	call   DWORD PTR [ecx]
  eb668e:	test   eax,eax
  eb6690:	je     eb7726
  eb6696:	cmp    DWORD PTR [eax+0x8],0x4
  eb669a:	mov    esi,DWORD PTR [ebp+0x8]
  eb669d:	jne    eb66e9
  eb669f:	mov    eax,DWORD PTR [esi+0x14c]
  eb66a5:	test   eax,eax
  eb66a7:	je     eb7726
  eb66ad:	mov    esi,DWORD PTR [eax+0xc]
  eb66b0:	test   esi,esi
  eb66b2:	je     eb7726
  eb66b8:	lea    eax,[ebx+0x45874]
  eb66be:	mov    eax,DWORD PTR [eax]
  eb66c0:	mov    ebx,DWORD PTR [esi]
  eb66c2:	movzx  edx,WORD PTR [ebx+0xaa]
  eb66c9:	test   edx,edx
  eb66cb:	je     eb753a
  eb66d1:	mov    edi,DWORD PTR [ebx+0x4c]
  eb66d4:	xor    ecx,ecx
  eb66d6:	cmp    DWORD PTR [edi+ecx*8],eax
  eb66d9:	je     eb7554
  eb66df:	inc    ecx
  eb66e0:	cmp    ecx,edx
  eb66e2:	jb     eb66d6
  eb66e4:	jmp    eb753a
  eb66e9:	mov    DWORD PTR [esi+0x30],0x3f800000
  eb66f0:	mov    eax,DWORD PTR [esi+0x13c]
  eb66f6:	test   eax,eax
  eb66f8:	je     eb7726
  eb66fe:	mov    eax,DWORD PTR [eax+0x8]
  eb6701:	test   eax,eax
  eb6703:	je     eb7726
  eb6709:	mov    DWORD PTR [esp],eax
  eb670c:	mov    DWORD PTR [esp+0x4],0x0
  eb6714:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb6719:	test   eax,eax
  eb671b:	je     eb7726
  eb6721:	lea    ecx,[ebx+0x538b4]  ; literal "all"
  eb6727:	mov    ecx,DWORD PTR [ecx]
  eb6729:	lea    edx,[ebx+0x4a014]
  eb672f:	mov    edx,DWORD PTR [edx]
  eb6731:	mov    DWORD PTR [esp+0x8],edx
  eb6735:	mov    DWORD PTR [esp+0x4],ecx
  eb6739:	mov    DWORD PTR [esp],eax
  eb673c:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eb6741:	mov    BYTE PTR [esp+0x60],al
  eb6745:	mov    eax,DWORD PTR [esi+0x13c]
  eb674b:	mov    DWORD PTR [esp+0x58],eax
  eb674f:	lea    eax,[ebx+0x45890]
  eb6755:	mov    eax,DWORD PTR [eax]
  eb6757:	mov    DWORD PTR [esp],eax
  eb675a:	call   20bfb2
  eb675f:	mov    edi,eax
  eb6761:	lea    eax,[ebx+0x4a074]
  eb6767:	mov    eax,DWORD PTR [eax]
  eb6769:	mov    DWORD PTR [esp+0x4],eax
  eb676d:	mov    DWORD PTR [esp],edi
  eb6770:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eb6775:	cmp    BYTE PTR [esp+0x60],0x0
  eb677a:	je     eb6874
  eb6780:	mov    eax,DWORD PTR [esp+0x58]
  eb6784:	test   eax,eax
  eb6786:	je     eb7722
  eb678c:	mov    DWORD PTR [eax+0x34],edi
  eb678f:	mov    eax,DWORD PTR [esi+0x13c]
  eb6795:	test   eax,eax
  eb6797:	je     eb7722
  eb679d:	mov    ecx,DWORD PTR [esi+0x8]
  eb67a0:	test   ecx,ecx
  eb67a2:	mov    ebx,DWORD PTR [esp+0x5c]
  eb67a6:	je     eb7726
  eb67ac:	mov    eax,DWORD PTR [eax+0x34]
  eb67af:	mov    DWORD PTR [esp+0x60],eax
  eb67b3:	mov    eax,DWORD PTR [ecx+0x58]
  eb67b6:	mov    DWORD PTR [esp+0x58],eax
  eb67ba:	mov    eax,DWORD PTR [esi+0x14c]
  eb67c0:	mov    DWORD PTR [esp+0x54],eax
  eb67c4:	lea    eax,[ebx+0x4a07c]
  eb67ca:	mov    edi,DWORD PTR [eax]
  eb67cc:	lea    eax,[ebx+0x4588c]
  eb67d2:	mov    eax,DWORD PTR [eax]
  eb67d4:	mov    DWORD PTR [esp],eax
  eb67d7:	call   20bfb2
  eb67dc:	mov    esi,eax
  eb67de:	mov    DWORD PTR [esp+0x180],edi
  eb67e5:	lea    eax,[ebx+0x4a054]
  eb67eb:	mov    eax,DWORD PTR [eax]
  eb67ed:	mov    DWORD PTR [esp+0xc],eax
  eb67f1:	mov    eax,DWORD PTR [esp+0x180]
  eb67f8:	mov    DWORD PTR [esp+0x8],eax
  eb67fc:	mov    eax,DWORD PTR [esp+0x54]
  eb6800:	mov    DWORD PTR [esp+0x4],eax
  eb6804:	mov    DWORD PTR [esp],esi
  eb6807:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  eb680c:	lea    eax,[ebx+0x4a058]
  eb6812:	mov    eax,DWORD PTR [eax]
  eb6814:	mov    DWORD PTR [esp+0xc],eax
  eb6818:	mov    DWORD PTR [esp+0x8],esi
  eb681c:	mov    eax,DWORD PTR [esp+0x58]
  eb6820:	mov    DWORD PTR [esp+0x4],eax
  eb6824:	mov    DWORD PTR [esp],0x0
  eb682b:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  eb6830:	lea    ecx,[ebx+0x4a080]
  eb6836:	mov    ecx,DWORD PTR [ecx]
  eb6838:	mov    DWORD PTR [esp+0x8],ecx
  eb683c:	mov    DWORD PTR [esp+0x4],eax
  eb6840:	mov    DWORD PTR [esp],0x0
  eb6847:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  eb684c:	mov    edx,DWORD PTR [esp+0x60]
  eb6850:	test   edx,edx
  eb6852:	je     eb7726
  eb6858:	lea    ecx,[ebx+0x4a084]
  eb685e:	mov    ecx,DWORD PTR [ecx]
  eb6860:	mov    DWORD PTR [esp+0x8],ecx
  eb6864:	mov    DWORD PTR [esp+0x4],eax
  eb6868:	mov    DWORD PTR [esp],edx
  eb686b:	mov    esi,ebx
  eb686d:	call   4c29d3  ; shared address: System.Collections.Generic.List`1<object>::AddRange | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::AddRange | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::AddRange | +15 other aliases
  eb6872:	jmp    eb68ba
  eb6874:	mov    eax,DWORD PTR [esi+0x14c]
  eb687a:	test   eax,eax
  eb687c:	je     eb7722
  eb6882:	test   edi,edi
  eb6884:	je     eb7722
  eb688a:	mov    eax,DWORD PTR [eax+0x8]
  eb688d:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6891:	lea    ecx,[ebx+0x4a078]
  eb6897:	mov    ecx,DWORD PTR [ecx]
  eb6899:	mov    DWORD PTR [esp+0x8],ecx
  eb689d:	mov    DWORD PTR [esp+0x4],eax
  eb68a1:	mov    DWORD PTR [esp],edi
  eb68a4:	mov    esi,ebx
  eb68a6:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eb68ab:	mov    eax,DWORD PTR [esp+0x58]
  eb68af:	test   eax,eax
  eb68b1:	je     eb7737
  eb68b7:	mov    DWORD PTR [eax+0x34],edi
  eb68ba:	mov    edi,DWORD PTR [ebp+0x8]
  eb68bd:	mov    DWORD PTR [edi+0x34],0x0
  eb68c4:	mov    DWORD PTR [edi+0x38],0x0
  eb68cb:	mov    eax,DWORD PTR [edi+0x13c]
  eb68d1:	test   eax,eax
  eb68d3:	je     eb7737
  eb68d9:	mov    eax,DWORD PTR [eax+0x8]
  eb68dc:	test   eax,eax
  eb68de:	je     eb7737
  eb68e4:	mov    DWORD PTR [esp],eax
  eb68e7:	mov    DWORD PTR [esp+0x4],0x0
  eb68ef:	mov    ebx,esi
  eb68f1:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb68f6:	test   eax,eax
  eb68f8:	je     eb7726
  eb68fe:	lea    esi,[edi+0x34]
  eb6901:	mov    DWORD PTR [esp+0x60],esi
  eb6905:	lea    ecx,[ebx+0x56b20]  ; literal "target_self"
  eb690b:	mov    ecx,DWORD PTR [ecx]
  eb690d:	lea    edx,[ebx+0x4a034]
  eb6913:	mov    DWORD PTR [esp+0x58],edx
  eb6917:	mov    edx,DWORD PTR [edx]
  eb6919:	mov    DWORD PTR [esp+0xc],edx
  eb691d:	mov    DWORD PTR [esp+0x8],esi
  eb6921:	mov    DWORD PTR [esp+0x4],ecx
  eb6925:	mov    DWORD PTR [esp],eax
  eb6928:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eb692d:	mov    eax,DWORD PTR [edi+0x13c]
  eb6933:	test   eax,eax
  eb6935:	je     eb7722
  eb693b:	mov    eax,DWORD PTR [eax+0x8]
  eb693e:	test   eax,eax
  eb6940:	je     eb7722
  eb6946:	mov    DWORD PTR [esp],eax
  eb6949:	mov    DWORD PTR [esp+0x4],0x0
  eb6951:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6955:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb695a:	test   eax,eax
  eb695c:	je     eb7726
  eb6962:	lea    edi,[edi+0x38]
  eb6965:	lea    ecx,[ebx+0x56b24]  ; literal "target_allies"
  eb696b:	mov    ecx,DWORD PTR [ecx]
  eb696d:	mov    edx,DWORD PTR [esp+0x58]
  eb6971:	mov    edx,DWORD PTR [edx]
  eb6973:	mov    DWORD PTR [esp+0xc],edx
  eb6977:	mov    DWORD PTR [esp+0x8],edi
  eb697b:	mov    DWORD PTR [esp+0x4],ecx
  eb697f:	mov    DWORD PTR [esp],eax
  eb6982:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eb6987:	mov    eax,DWORD PTR [esp+0x60]
  eb698b:	movss  xmm0,DWORD PTR [eax]
  eb698f:	ucomiss xmm0,DWORD PTR [ebx-0x64fc28]
  eb6996:	jne    eb69df
  eb6998:	jp     eb69df
  eb699a:	mov    ecx,DWORD PTR [ebp+0x8]
  eb699d:	mov    eax,DWORD PTR [ecx+0x13c]
  eb69a3:	test   eax,eax
  eb69a5:	je     eb7726
  eb69ab:	mov    ecx,DWORD PTR [ecx+0x14c]
  eb69b1:	test   ecx,ecx
  eb69b3:	je     eb7726
  eb69b9:	mov    eax,DWORD PTR [eax+0x34]
  eb69bc:	test   eax,eax
  eb69be:	je     eb7726
  eb69c4:	mov    ecx,DWORD PTR [ecx+0xc]
  eb69c7:	lea    edx,[ebx+0x4a078]
  eb69cd:	mov    edx,DWORD PTR [edx]
  eb69cf:	mov    DWORD PTR [esp+0x8],edx
  eb69d3:	mov    DWORD PTR [esp+0x4],ecx
  eb69d7:	mov    DWORD PTR [esp],eax
  eb69da:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eb69df:	movss  xmm0,DWORD PTR [edi]
  eb69e3:	ucomiss xmm0,DWORD PTR [ebx-0x64fc28]
  eb69ea:	jne    eb6ad6
  eb69f0:	jp     eb6ad6
  eb69f6:	mov    edx,DWORD PTR [ebp+0x8]
  eb69f9:	mov    eax,DWORD PTR [edx+0x13c]
  eb69ff:	test   eax,eax
  eb6a01:	je     eb7726
  eb6a07:	mov    ecx,DWORD PTR [edx+0x8]
  eb6a0a:	test   ecx,ecx
  eb6a0c:	je     eb7726
  eb6a12:	mov    eax,DWORD PTR [eax+0x34]
  eb6a15:	mov    DWORD PTR [esp+0x60],eax
  eb6a19:	mov    eax,DWORD PTR [ecx+0x58]
  eb6a1c:	mov    DWORD PTR [esp+0x58],eax
  eb6a20:	mov    eax,DWORD PTR [edx+0x14c]
  eb6a26:	mov    DWORD PTR [esp+0x54],eax
  eb6a2a:	lea    eax,[ebx+0x4a088]
  eb6a30:	mov    edi,DWORD PTR [eax]
  eb6a32:	lea    eax,[ebx+0x4588c]
  eb6a38:	mov    eax,DWORD PTR [eax]
  eb6a3a:	mov    DWORD PTR [esp],eax
  eb6a3d:	call   20bfb2
  eb6a42:	mov    esi,eax
  eb6a44:	mov    DWORD PTR [esp+0x178],edi
  eb6a4b:	lea    eax,[ebx+0x4a054]
  eb6a51:	mov    eax,DWORD PTR [eax]
  eb6a53:	mov    DWORD PTR [esp+0xc],eax
  eb6a57:	mov    eax,DWORD PTR [esp+0x178]
  eb6a5e:	mov    DWORD PTR [esp+0x8],eax
  eb6a62:	mov    eax,DWORD PTR [esp+0x54]
  eb6a66:	mov    DWORD PTR [esp+0x4],eax
  eb6a6a:	mov    DWORD PTR [esp],esi
  eb6a6d:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  eb6a72:	lea    eax,[ebx+0x4a058]
  eb6a78:	mov    eax,DWORD PTR [eax]
  eb6a7a:	mov    DWORD PTR [esp+0xc],eax
  eb6a7e:	mov    DWORD PTR [esp+0x8],esi
  eb6a82:	mov    eax,DWORD PTR [esp+0x58]
  eb6a86:	mov    DWORD PTR [esp+0x4],eax
  eb6a8a:	mov    DWORD PTR [esp],0x0
  eb6a91:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  eb6a96:	lea    ecx,[ebx+0x4a080]
  eb6a9c:	mov    ecx,DWORD PTR [ecx]
  eb6a9e:	mov    DWORD PTR [esp+0x8],ecx
  eb6aa2:	mov    DWORD PTR [esp+0x4],eax
  eb6aa6:	mov    DWORD PTR [esp],0x0
  eb6aad:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  eb6ab2:	mov    edx,DWORD PTR [esp+0x60]
  eb6ab6:	test   edx,edx
  eb6ab8:	je     eb7726
  eb6abe:	lea    ecx,[ebx+0x4a084]
  eb6ac4:	mov    ecx,DWORD PTR [ecx]
  eb6ac6:	mov    DWORD PTR [esp+0x8],ecx
  eb6aca:	mov    DWORD PTR [esp+0x4],eax
  eb6ace:	mov    DWORD PTR [esp],edx
  eb6ad1:	call   4c29d3  ; shared address: System.Collections.Generic.List`1<object>::AddRange | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::AddRange | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::AddRange | +15 other aliases
  eb6ad6:	mov    DWORD PTR [esp+0x4],0x0
  eb6ade:	mov    DWORD PTR [esp],0x0
  eb6ae5:	call   109314e  ; DIContainerLogic::GetBattleService
  eb6aea:	mov    esi,DWORD PTR [ebp+0x8]
  eb6aed:	mov    ecx,DWORD PTR [esi+0x14c]
  eb6af3:	test   ecx,ecx
  eb6af5:	je     eb7726
  eb6afb:	mov    edx,DWORD PTR [esi+0x13c]
  eb6b01:	test   edx,edx
  eb6b03:	je     eb7726
  eb6b09:	test   eax,eax
  eb6b0b:	je     eb7726
  eb6b11:	movss  xmm0,DWORD PTR [esi+0x30]
  eb6b16:	mov    ecx,DWORD PTR [ecx+0x8]
  eb6b19:	mov    edx,DWORD PTR [edx+0x30]
  eb6b1c:	mov    DWORD PTR [esp+0x10],edx
  eb6b20:	mov    DWORD PTR [esp+0xc],ecx
  eb6b24:	movss  DWORD PTR [esp+0x4],xmm0
  eb6b2a:	mov    DWORD PTR [esp],eax
  eb6b2d:	mov    DWORD PTR [esp+0x14],0x0
  eb6b35:	mov    DWORD PTR [esp+0x8],0xe
  eb6b3d:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eb6b42:	fstp   st(0)
  eb6b44:	mov    eax,DWORD PTR [esi+0x13c]
  eb6b4a:	test   eax,eax
  eb6b4c:	je     eb7726
  eb6b52:	mov    eax,DWORD PTR [eax+0x54]
  eb6b55:	test   eax,eax
  eb6b57:	je     eb7726
  eb6b5d:	lea    ecx,[ebx+0x4a060]
  eb6b63:	mov    ecx,DWORD PTR [ecx]
  eb6b65:	mov    DWORD PTR [esp+0x8],ecx
  eb6b69:	mov    DWORD PTR [esp+0x4],eax
  eb6b6d:	lea    eax,[esp+0x168]
  eb6b74:	mov    DWORD PTR [esp],eax
  eb6b77:	mov    DWORD PTR [esp+0x5c],ebx
  eb6b7b:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb6b80:	sub    esp,0x4
  eb6b83:	lea    ecx,[esi+0x3c]
  eb6b86:	movsd  xmm0,QWORD PTR [esp+0x168]
  eb6b8f:	movsd  xmm1,QWORD PTR [esp+0x170]
  eb6b98:	movsd  QWORD PTR [esi+0x44],xmm1
  eb6b9d:	movsd  QWORD PTR [esi+0x3c],xmm0
  eb6ba2:	mov    DWORD PTR [esp+0x60],ecx
  eb6ba6:	mov    edi,DWORD PTR [esp+0x5c]
  eb6baa:	lea    eax,[edi+0x4a06c]
  eb6bb0:	mov    eax,DWORD PTR [eax]
  eb6bb2:	mov    DWORD PTR [esp+0x4],eax
  eb6bb6:	mov    DWORD PTR [esp],ecx
  eb6bb9:	mov    ebx,edi
  eb6bbb:	call   447e4e
  eb6bc0:	test   al,al
  eb6bc2:	je     eb6ca0
  eb6bc8:	lea    eax,[edi+0x4a064]
  eb6bce:	mov    eax,DWORD PTR [eax]
  eb6bd0:	mov    DWORD PTR [esp+0x4],eax
  eb6bd4:	mov    eax,DWORD PTR [esp+0x60]
  eb6bd8:	mov    DWORD PTR [esp],eax
  eb6bdb:	mov    ebx,edi
  eb6bdd:	call   447f1e
  eb6be2:	mov    ecx,DWORD PTR [ebp+0x8]
  eb6be5:	mov    DWORD PTR [ecx+0x4c],eax
  eb6be8:	mov    ecx,DWORD PTR [ecx+0x13c]
  eb6bee:	test   ecx,ecx
  eb6bf0:	je     eb6cbc
  eb6bf6:	test   eax,eax
  eb6bf8:	je     eb6cc8
  eb6bfe:	mov    edx,DWORD PTR [ecx+0x14]
  eb6c01:	mov    DWORD PTR [esp+0x58],edx
  eb6c05:	mov    esi,DWORD PTR [ecx+0x18]
  eb6c08:	mov    ecx,DWORD PTR [ecx+0x30]
  eb6c0b:	lea    edx,[edi+0x4a068]
  eb6c11:	mov    edx,DWORD PTR [edx]
  eb6c13:	mov    DWORD PTR [esp+0x10],edx
  eb6c17:	mov    DWORD PTR [esp+0xc],esi
  eb6c1b:	mov    DWORD PTR [esp+0x8],ecx
  eb6c1f:	mov    ecx,DWORD PTR [esp+0x58]
  eb6c23:	mov    DWORD PTR [esp+0x4],ecx
  eb6c27:	mov    DWORD PTR [esp],eax
  eb6c2a:	mov    ebx,edi
  eb6c2c:	call   17d88a2  ; shared address: System.Func`4<ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`4<object, object, object, float>::Invoke
  eb6c31:	fstp   DWORD PTR [esp+0xac]
  eb6c38:	movss  xmm0,DWORD PTR [esp+0xac]
  eb6c41:	movss  DWORD PTR [esp+0x58],xmm0
  eb6c47:	lea    eax,[edi+0x45664]
  eb6c4d:	mov    eax,DWORD PTR [eax]
  eb6c4f:	mov    DWORD PTR [esp],eax
  eb6c52:	mov    ebx,edi
  eb6c54:	call   20bfb2
  eb6c59:	mov    esi,eax
  eb6c5b:	movss  xmm0,DWORD PTR [esp+0x58]
  eb6c61:	movss  DWORD PTR [esp+0x4],xmm0
  eb6c67:	mov    DWORD PTR [esp],esi
  eb6c6a:	mov    DWORD PTR [esp+0x8],0x0
  eb6c72:	mov    ebx,edi
  eb6c74:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb6c79:	mov    ecx,DWORD PTR [ebp+0x8]
  eb6c7c:	mov    DWORD PTR [ecx+0x140],esi
  eb6c82:	mov    al,0x1
  eb6c84:	cmp    BYTE PTR [ecx+0x144],0x0
  eb6c8b:	jne    eba812
  eb6c91:	mov    DWORD PTR [ecx+0x148],0x2
  eb6c9b:	jmp    eba812
  eb6ca0:	lea    eax,[edi+0x4a070]
  eb6ca6:	mov    eax,DWORD PTR [eax]
  eb6ca8:	mov    DWORD PTR [esp+0x4],eax
  eb6cac:	mov    eax,DWORD PTR [esp+0x60]
  eb6cb0:	mov    DWORD PTR [esp],eax
  eb6cb3:	mov    ebx,edi
  eb6cb5:	call   447df6
  eb6cba:	jmp    eb6d12
  eb6cbc:	mov    ebx,edi
  eb6cbe:	call   1fbc48
  eb6cc3:	jmp    eb7730
  eb6cc8:	mov    ebx,edi
  eb6cca:	call   1fbc48
  eb6ccf:	jmp    eb7730
  eb6cd4:	cmp    edx,0x1
  eb6cd7:	jne    eb9a95
  eb6cdd:	mov    DWORD PTR [esp],eax
  eb6ce0:	mov    ebx,edi
  eb6ce2:	call   1ba3f0
  eb6ce7:	mov    esi,DWORD PTR [eax]
  eb6ce9:	call   1b9ce0
  eb6cee:	lea    eax,[ebx+0x4a070]
  eb6cf4:	mov    eax,DWORD PTR [eax]
  eb6cf6:	mov    DWORD PTR [esp+0x4],eax
  eb6cfa:	mov    eax,DWORD PTR [esp+0x60]
  eb6cfe:	mov    DWORD PTR [esp],eax
  eb6d01:	call   447df6
  eb6d06:	test   esi,esi
  eb6d08:	je     eb6d12
  eb6d0a:	mov    DWORD PTR [esp],esi
  eb6d0d:	call   1fbb20
  eb6d12:	mov    ecx,DWORD PTR [ebp+0x8]
  eb6d15:	mov    eax,DWORD PTR [ecx+0x14c]
  eb6d1b:	test   eax,eax
  eb6d1d:	je     eb7726
  eb6d23:	mov    edx,DWORD PTR [eax+0x8]
  eb6d26:	test   edx,edx
  eb6d28:	je     eb7726
  eb6d2e:	lea    eax,[ecx+0x14c]
  eb6d34:	mov    DWORD PTR [esp+0x60],eax
  eb6d38:	lea    eax,[ebx+0x45874]
  eb6d3e:	mov    DWORD PTR [esp+0x58],eax
  eb6d42:	mov    eax,DWORD PTR [eax]
  eb6d44:	mov    ecx,DWORD PTR [edx]
  eb6d46:	mov    DWORD PTR [esp+0x54],edx
  eb6d4a:	movzx  edx,WORD PTR [ecx+0xaa]
  eb6d51:	test   edx,edx
  eb6d53:	je     eb6d64
  eb6d55:	mov    edi,DWORD PTR [ecx+0x4c]
  eb6d58:	xor    esi,esi
  eb6d5a:	cmp    DWORD PTR [edi+esi*8],eax
  eb6d5d:	je     eb6d80
  eb6d5f:	inc    esi
  eb6d60:	cmp    esi,edx
  eb6d62:	jb     eb6d5a
  eb6d64:	mov    DWORD PTR [esp+0x4],eax
  eb6d68:	mov    esi,DWORD PTR [esp+0x54]
  eb6d6c:	mov    DWORD PTR [esp],esi
  eb6d6f:	mov    DWORD PTR [esp+0x8],0x2f
  eb6d77:	call   1c1964
  eb6d7c:	mov    ecx,eax
  eb6d7e:	jmp    eb6d8f
  eb6d80:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eb6d84:	lea    ecx,[ecx+eax*8+0x22c]
  eb6d8b:	mov    esi,DWORD PTR [esp+0x54]
  eb6d8f:	mov    eax,DWORD PTR [ecx+0x4]
  eb6d92:	mov    DWORD PTR [esp+0x4],eax
  eb6d96:	mov    DWORD PTR [esp],esi
  eb6d99:	call   DWORD PTR [ecx]
  eb6d9b:	mov    ecx,eax
  eb6d9d:	mov    eax,DWORD PTR [esp+0x60]
  eb6da1:	mov    eax,DWORD PTR [eax]
  eb6da3:	test   eax,eax
  eb6da5:	je     eb7722
  eb6dab:	mov    DWORD PTR [esp+0x54],ecx
  eb6daf:	mov    edi,DWORD PTR [eax+0xc]
  eb6db2:	test   edi,edi
  eb6db4:	je     eb7722
  eb6dba:	mov    eax,DWORD PTR [esp+0x58]
  eb6dbe:	mov    eax,DWORD PTR [eax]
  eb6dc0:	mov    ebx,DWORD PTR [edi]
  eb6dc2:	movzx  edx,WORD PTR [ebx+0xaa]
  eb6dc9:	test   edx,edx
  eb6dcb:	je     eb6ddc
  eb6dcd:	mov    esi,DWORD PTR [ebx+0x4c]
  eb6dd0:	xor    ecx,ecx
  eb6dd2:	cmp    DWORD PTR [esi+ecx*8],eax
  eb6dd5:	je     eb6df8
  eb6dd7:	inc    ecx
  eb6dd8:	cmp    ecx,edx
  eb6dda:	jb     eb6dd2
  eb6ddc:	mov    DWORD PTR [esp+0x4],eax
  eb6de0:	mov    DWORD PTR [esp],edi
  eb6de3:	mov    DWORD PTR [esp+0x8],0x2f
  eb6deb:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6def:	call   1c1964
  eb6df4:	mov    ecx,eax
  eb6df6:	jmp    eb6e07
  eb6df8:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb6dfc:	lea    ecx,[ebx+eax*8+0x22c]
  eb6e03:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6e07:	mov    eax,DWORD PTR [ecx+0x4]
  eb6e0a:	mov    DWORD PTR [esp+0x4],eax
  eb6e0e:	mov    DWORD PTR [esp],edi
  eb6e11:	call   DWORD PTR [ecx]
  eb6e13:	cmp    DWORD PTR [esp+0x54],eax
  eb6e17:	je     eb7097
  eb6e1d:	mov    eax,DWORD PTR [ebp+0x8]
  eb6e20:	mov    eax,DWORD PTR [eax+0x13c]
  eb6e26:	test   eax,eax
  eb6e28:	je     eb7726
  eb6e2e:	cmp    BYTE PTR [eax+0x44],0x0
  eb6e32:	jne    eb7097
  eb6e38:	mov    eax,DWORD PTR [esp+0x60]
  eb6e3c:	mov    eax,DWORD PTR [eax]
  eb6e3e:	test   eax,eax
  eb6e40:	je     eb7722
  eb6e46:	mov    esi,DWORD PTR [eax+0xc]
  eb6e49:	test   esi,esi
  eb6e4b:	je     eb7722
  eb6e51:	mov    eax,DWORD PTR [esp+0x58]
  eb6e55:	mov    eax,DWORD PTR [eax]
  eb6e57:	mov    ebx,DWORD PTR [esi]
  eb6e59:	movzx  edx,WORD PTR [ebx+0xaa]
  eb6e60:	test   edx,edx
  eb6e62:	je     eb6e77
  eb6e64:	mov    edi,DWORD PTR [ebx+0x4c]
  eb6e67:	xor    ecx,ecx
  eb6e69:	cmp    DWORD PTR [edi+ecx*8],eax
  eb6e6c:	je     eb6ff4
  eb6e72:	inc    ecx
  eb6e73:	cmp    ecx,edx
  eb6e75:	jb     eb6e69
  eb6e77:	mov    DWORD PTR [esp+0x4],eax
  eb6e7b:	mov    DWORD PTR [esp],esi
  eb6e7e:	mov    DWORD PTR [esp+0x8],0x2d
  eb6e86:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6e8a:	call   1c1964
  eb6e8f:	mov    ecx,eax
  eb6e91:	jmp    eb7003
  eb6e96:	lea    eax,[ebx+0x45664]
  eb6e9c:	mov    eax,DWORD PTR [eax]
  eb6e9e:	mov    DWORD PTR [esp],eax
  eb6ea1:	movss  DWORD PTR [esp+0x60],xmm0
  eb6ea7:	call   20bfb2
  eb6eac:	mov    esi,eax
  eb6eae:	movss  xmm0,DWORD PTR [esp+0x60]
  eb6eb4:	movss  DWORD PTR [esp+0x4],xmm0
  eb6eba:	mov    DWORD PTR [esp],esi
  eb6ebd:	mov    DWORD PTR [esp+0x8],0x0
  eb6ec5:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb6eca:	mov    DWORD PTR [edi+0x140],esi
  eb6ed0:	mov    al,0x1
  eb6ed2:	cmp    BYTE PTR [edi+0x144],0x0
  eb6ed9:	jne    eba812
  eb6edf:	mov    DWORD PTR [edi+0x148],0x9
  eb6ee9:	jmp    eba812
  eb6eee:	mov    eax,DWORD PTR [esi+0x14c]
  eb6ef4:	test   eax,eax
  eb6ef6:	je     eb7722
  eb6efc:	mov    ecx,DWORD PTR [eax+0xc]
  eb6eff:	test   ecx,ecx
  eb6f01:	je     eb7722
  eb6f07:	mov    eax,DWORD PTR [esp+0x58]
  eb6f0b:	mov    eax,DWORD PTR [eax]
  eb6f0d:	mov    ebx,DWORD PTR [ecx]
  eb6f0f:	mov    DWORD PTR [esp+0x60],ecx
  eb6f13:	movzx  edx,WORD PTR [ebx+0xaa]
  eb6f1a:	test   edx,edx
  eb6f1c:	je     eb6f31
  eb6f1e:	mov    esi,DWORD PTR [ebx+0x4c]
  eb6f21:	xor    ecx,ecx
  eb6f23:	cmp    DWORD PTR [esi+ecx*8],eax
  eb6f26:	je     eb7135
  eb6f2c:	inc    ecx
  eb6f2d:	cmp    ecx,edx
  eb6f2f:	jb     eb6f23
  eb6f31:	mov    DWORD PTR [esp+0x4],eax
  eb6f35:	mov    esi,DWORD PTR [esp+0x60]
  eb6f39:	mov    DWORD PTR [esp],esi
  eb6f3c:	mov    DWORD PTR [esp+0x8],0xa
  eb6f44:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6f48:	call   1c1964
  eb6f4d:	mov    ecx,eax
  eb6f4f:	jmp    eb7148
  eb6f54:	mov    eax,DWORD PTR [edi]
  eb6f56:	mov    DWORD PTR [esp+0x4c],eax
  eb6f5a:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6f5e:	lea    eax,[ebx+0x45890]
  eb6f64:	mov    eax,DWORD PTR [eax]
  eb6f66:	mov    DWORD PTR [esp],eax
  eb6f69:	call   20bfb2
  eb6f6e:	mov    DWORD PTR [esp+0x50],eax
  eb6f72:	lea    ecx,[ebx+0x4a074]
  eb6f78:	mov    ecx,DWORD PTR [ecx]
  eb6f7a:	mov    DWORD PTR [esp+0x4],ecx
  eb6f7e:	mov    DWORD PTR [esp],eax
  eb6f81:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eb6f86:	mov    eax,DWORD PTR [edi]
  eb6f88:	test   eax,eax
  eb6f8a:	je     eb7722
  eb6f90:	mov    esi,DWORD PTR [eax+0x30]
  eb6f93:	test   esi,esi
  eb6f95:	je     eb7722
  eb6f9b:	mov    eax,DWORD PTR [esp+0x54]
  eb6f9f:	mov    eax,DWORD PTR [eax]
  eb6fa1:	mov    ebx,DWORD PTR [esi]
  eb6fa3:	movzx  edx,WORD PTR [ebx+0xaa]
  eb6faa:	test   edx,edx
  eb6fac:	je     eb6fc1
  eb6fae:	mov    edi,DWORD PTR [ebx+0x4c]
  eb6fb1:	xor    ecx,ecx
  eb6fb3:	cmp    DWORD PTR [edi+ecx*8],eax
  eb6fb6:	je     eb71b4
  eb6fbc:	inc    ecx
  eb6fbd:	cmp    ecx,edx
  eb6fbf:	jb     eb6fb3
  eb6fc1:	mov    DWORD PTR [esp+0x4],eax
  eb6fc5:	mov    DWORD PTR [esp],esi
  eb6fc8:	mov    DWORD PTR [esp+0x8],0x11
  eb6fd0:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6fd4:	call   1c1964
  eb6fd9:	mov    ecx,eax
  eb6fdb:	jmp    eb71c3
  eb6fe0:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb6fe4:	lea    ecx,[ebx+eax*8+0x12c]
  eb6feb:	mov    ebx,DWORD PTR [esp+0x5c]
  eb6fef:	jmp    eb6386
  eb6ff4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb6ff8:	lea    ecx,[ebx+eax*8+0x21c]
  eb6fff:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7003:	mov    eax,DWORD PTR [ecx+0x4]
  eb7006:	mov    DWORD PTR [esp+0x4],eax
  eb700a:	mov    DWORD PTR [esp],esi
  eb700d:	call   DWORD PTR [ecx]
  eb700f:	test   eax,eax
  eb7011:	je     eb70df
  eb7017:	mov    eax,DWORD PTR [esp+0x60]
  eb701b:	mov    eax,DWORD PTR [eax]
  eb701d:	test   eax,eax
  eb701f:	je     eb7722
  eb7025:	mov    esi,DWORD PTR [eax+0xc]
  eb7028:	test   esi,esi
  eb702a:	je     eb7722
  eb7030:	mov    eax,DWORD PTR [esp+0x58]
  eb7034:	mov    eax,DWORD PTR [eax]
  eb7036:	mov    ebx,DWORD PTR [esi]
  eb7038:	movzx  edx,WORD PTR [ebx+0xaa]
  eb703f:	test   edx,edx
  eb7041:	je     eb7052
  eb7043:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7046:	xor    ecx,ecx
  eb7048:	cmp    DWORD PTR [edi+ecx*8],eax
  eb704b:	je     eb706e
  eb704d:	inc    ecx
  eb704e:	cmp    ecx,edx
  eb7050:	jb     eb7048
  eb7052:	mov    DWORD PTR [esp+0x4],eax
  eb7056:	mov    DWORD PTR [esp],esi
  eb7059:	mov    DWORD PTR [esp+0x8],0x2d
  eb7061:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7065:	call   1c1964
  eb706a:	mov    ecx,eax
  eb706c:	jmp    eb707d
  eb706e:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb7072:	lea    ecx,[ebx+eax*8+0x21c]
  eb7079:	mov    ebx,DWORD PTR [esp+0x5c]
  eb707d:	mov    eax,DWORD PTR [ecx+0x4]
  eb7080:	mov    DWORD PTR [esp+0x4],eax
  eb7084:	mov    DWORD PTR [esp],esi
  eb7087:	call   DWORD PTR [ecx]
  eb7089:	test   eax,eax
  eb708b:	je     eb7726
  eb7091:	cmp    DWORD PTR [eax+0x8],0x4
  eb7095:	jne    eb70df
  eb7097:	mov    eax,DWORD PTR [esp+0x60]
  eb709b:	mov    eax,DWORD PTR [eax]
  eb709d:	test   eax,eax
  eb709f:	je     eb7722
  eb70a5:	mov    esi,DWORD PTR [eax+0xc]
  eb70a8:	test   esi,esi
  eb70aa:	je     eb7722
  eb70b0:	mov    eax,DWORD PTR [esp+0x58]
  eb70b4:	mov    eax,DWORD PTR [eax]
  eb70b6:	mov    ebx,DWORD PTR [esi]
  eb70b8:	movzx  edx,WORD PTR [ebx+0xaa]
  eb70bf:	test   edx,edx
  eb70c1:	je     eb753a
  eb70c7:	mov    edi,DWORD PTR [ebx+0x4c]
  eb70ca:	xor    ecx,ecx
  eb70cc:	cmp    DWORD PTR [edi+ecx*8],eax
  eb70cf:	je     eb7554
  eb70d5:	inc    ecx
  eb70d6:	cmp    ecx,edx
  eb70d8:	jb     eb70cc
  eb70da:	jmp    eb753a
  eb70df:	mov    eax,DWORD PTR [esp+0x60]
  eb70e3:	mov    eax,DWORD PTR [eax]
  eb70e5:	test   eax,eax
  eb70e7:	je     eb7726
  eb70ed:	mov    eax,DWORD PTR [eax+0xc]
  eb70f0:	test   eax,eax
  eb70f2:	je     eb7110
  eb70f4:	lea    ecx,[ebx+0x45878]
  eb70fa:	mov    ecx,DWORD PTR [ecx]
  eb70fc:	mov    edx,DWORD PTR [eax]
  eb70fe:	movzx  esi,BYTE PTR [ecx+0xac]
  eb7105:	movzx  edi,BYTE PTR [edx+0xac]
  eb710c:	cmp    edi,esi
  eb710e:	jae    eb711c
  eb7110:	xor    eax,eax
  eb7112:	mov    edi,DWORD PTR [ebp+0x8]
  eb7115:	mov    esi,edi
  eb7117:	jmp    eb7389
  eb711c:	mov    edx,DWORD PTR [edx+0x58]
  eb711f:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  eb7123:	mov    edi,DWORD PTR [ebp+0x8]
  eb7126:	mov    esi,edi
  eb7128:	je     eb7371
  eb712e:	xor    eax,eax
  eb7130:	jmp    eb7389
  eb7135:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb7139:	lea    ecx,[ebx+eax*8+0x104]
  eb7140:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7144:	mov    esi,DWORD PTR [esp+0x60]
  eb7148:	mov    eax,DWORD PTR [ecx+0x4]
  eb714b:	mov    DWORD PTR [esp+0x4],eax
  eb714f:	mov    DWORD PTR [esp],esi
  eb7152:	call   DWORD PTR [ecx]
  eb7154:	mov    esi,eax
  eb7156:	lea    eax,[ebx+0x430e4]
  eb715c:	mov    eax,DWORD PTR [eax]
  eb715e:	test   BYTE PTR [eax+0xb2],0x1
  eb7165:	je     eb7175
  eb7167:	cmp    DWORD PTR [eax+0x60],0x0
  eb716b:	jne    eb7175
  eb716d:	mov    DWORD PTR [esp],eax
  eb7170:	call   1db0b8
  eb7175:	mov    DWORD PTR [esp+0x5c],ebx
  eb7179:	lea    eax,[ebx+0x56b2c]  ; literal "bird_sonic"
  eb717f:	mov    eax,DWORD PTR [eax]
  eb7181:	mov    DWORD PTR [esp+0x8],eax
  eb7185:	mov    DWORD PTR [esp+0x4],esi
  eb7189:	mov    DWORD PTR [esp+0xc],0x0
  eb7191:	mov    DWORD PTR [esp],0x0
  eb7198:	call   ca24cf  ; System.String::op_Equality
  eb719d:	test   al,al
  eb719f:	je     eb5052
  eb71a5:	mov    eax,DWORD PTR [ebp+0x8]
  eb71a8:	mov    DWORD PTR [eax+0x68],0x40600000
  eb71af:	jmp    eb5052
  eb71b4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb71b8:	lea    ecx,[ebx+eax*8+0x13c]
  eb71bf:	mov    ebx,DWORD PTR [esp+0x5c]
  eb71c3:	mov    eax,DWORD PTR [ecx+0x4]
  eb71c6:	mov    DWORD PTR [esp+0x4],eax
  eb71ca:	mov    DWORD PTR [esp],esi
  eb71cd:	call   DWORD PTR [ecx]
  eb71cf:	test   eax,eax
  eb71d1:	mov    esi,DWORD PTR [esp+0x58]
  eb71d5:	mov    edi,DWORD PTR [esp+0x50]
  eb71d9:	je     eb7726
  eb71df:	mov    DWORD PTR [esp],eax
  eb71e2:	mov    DWORD PTR [esp+0x4],0x0
  eb71ea:	call   8d1388  ; CharacterControllerBattleGroundBase::get_targetSheltered
  eb71ef:	test   edi,edi
  eb71f1:	je     eb7726
  eb71f7:	lea    ecx,[ebx+0x4a078]
  eb71fd:	mov    ecx,DWORD PTR [ecx]
  eb71ff:	mov    DWORD PTR [esp+0x8],ecx
  eb7203:	mov    DWORD PTR [esp+0x4],eax
  eb7207:	mov    DWORD PTR [esp],edi
  eb720a:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  eb720f:	mov    eax,DWORD PTR [esp+0x4c]
  eb7213:	test   eax,eax
  eb7215:	je     eb7726
  eb721b:	mov    DWORD PTR [eax+0x34],edi
  eb721e:	mov    eax,DWORD PTR [esi]
  eb7220:	test   eax,eax
  eb7222:	je     eb7722
  eb7228:	mov    esi,DWORD PTR [eax+0x30]
  eb722b:	test   esi,esi
  eb722d:	je     eb7722
  eb7233:	mov    eax,DWORD PTR [esp+0x54]
  eb7237:	mov    eax,DWORD PTR [eax]
  eb7239:	mov    ebx,DWORD PTR [esi]
  eb723b:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7242:	test   edx,edx
  eb7244:	je     eb7255
  eb7246:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7249:	xor    ecx,ecx
  eb724b:	cmp    DWORD PTR [edi+ecx*8],eax
  eb724e:	je     eb7271
  eb7250:	inc    ecx
  eb7251:	cmp    ecx,edx
  eb7253:	jb     eb724b
  eb7255:	mov    DWORD PTR [esp+0x4],eax
  eb7259:	mov    DWORD PTR [esp],esi
  eb725c:	mov    DWORD PTR [esp+0x8],0x11
  eb7264:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7268:	call   1c1964
  eb726d:	mov    ecx,eax
  eb726f:	jmp    eb7280
  eb7271:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb7275:	lea    ecx,[ebx+eax*8+0x13c]
  eb727c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7280:	mov    eax,DWORD PTR [ecx+0x4]
  eb7283:	mov    DWORD PTR [esp+0x4],eax
  eb7287:	mov    DWORD PTR [esp],esi
  eb728a:	call   DWORD PTR [ecx]
  eb728c:	test   eax,eax
  eb728e:	je     eb7726
  eb7294:	mov    DWORD PTR [esp],eax
  eb7297:	mov    DWORD PTR [esp+0x4],0x0
  eb729f:	call   8d1388  ; CharacterControllerBattleGroundBase::get_targetSheltered
  eb72a4:	mov    esi,eax
  eb72a6:	test   esi,esi
  eb72a8:	je     eb7722
  eb72ae:	mov    eax,DWORD PTR [esp+0x54]
  eb72b2:	mov    eax,DWORD PTR [eax]
  eb72b4:	mov    ebx,DWORD PTR [esi]
  eb72b6:	movzx  edx,WORD PTR [ebx+0xaa]
  eb72bd:	test   edx,edx
  eb72bf:	je     eb72d0
  eb72c1:	mov    edi,DWORD PTR [ebx+0x4c]
  eb72c4:	xor    ecx,ecx
  eb72c6:	cmp    DWORD PTR [edi+ecx*8],eax
  eb72c9:	je     eb72ec
  eb72cb:	inc    ecx
  eb72cc:	cmp    ecx,edx
  eb72ce:	jb     eb72c6
  eb72d0:	mov    DWORD PTR [esp+0x4],eax
  eb72d4:	mov    DWORD PTR [esp],esi
  eb72d7:	mov    DWORD PTR [esp+0x8],0x13
  eb72df:	mov    ebx,DWORD PTR [esp+0x5c]
  eb72e3:	call   1c1964
  eb72e8:	mov    ecx,eax
  eb72ea:	jmp    eb72fb
  eb72ec:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb72f0:	lea    ecx,[ebx+eax*8+0x14c]
  eb72f7:	mov    ebx,DWORD PTR [esp+0x5c]
  eb72fb:	mov    eax,DWORD PTR [ecx+0x4]
  eb72fe:	mov    DWORD PTR [esp+0x4],eax
  eb7302:	mov    DWORD PTR [esp],esi
  eb7305:	call   DWORD PTR [ecx]
  eb7307:	test   al,al
  eb7309:	mov    esi,DWORD PTR [esp+0x58]
  eb730d:	jne    eb75b3
  eb7313:	mov    eax,DWORD PTR [esp+0x60]
  eb7317:	mov    eax,DWORD PTR [eax]
  eb7319:	test   eax,eax
  eb731b:	je     eb7722
  eb7321:	mov    esi,DWORD PTR [eax+0x8]
  eb7324:	test   esi,esi
  eb7326:	je     eb7722
  eb732c:	mov    eax,DWORD PTR [esp+0x54]
  eb7330:	mov    eax,DWORD PTR [eax]
  eb7332:	mov    ebx,DWORD PTR [esi]
  eb7334:	movzx  edx,WORD PTR [ebx+0xaa]
  eb733b:	test   edx,edx
  eb733d:	je     eb7352
  eb733f:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7342:	xor    ecx,ecx
  eb7344:	cmp    DWORD PTR [edi+ecx*8],eax
  eb7347:	je     eb757c
  eb734d:	inc    ecx
  eb734e:	cmp    ecx,edx
  eb7350:	jb     eb7344
  eb7352:	mov    DWORD PTR [esp+0x4],eax
  eb7356:	mov    DWORD PTR [esp],esi
  eb7359:	mov    DWORD PTR [esp+0x8],0x11
  eb7361:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7365:	call   1c1964
  eb736a:	mov    ecx,eax
  eb736c:	jmp    eb758b
  eb7371:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7375:	lea    ecx,[ebx+0x4a08c]
  eb737b:	mov    ecx,DWORD PTR [ecx]
  eb737d:	mov    DWORD PTR [esp+0x4],ecx
  eb7381:	mov    DWORD PTR [esp],eax
  eb7384:	call   1606553  ; shared address: ABH.GameDatas.Battle.BaseCombatant`1<object>::get_ChargeDone | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BannerGameData>::get_ChargeDone | ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>::get_ChargeDone | +2 other aliases
  eb7389:	mov    BYTE PTR [esi+0x50],al
  eb738c:	mov    ecx,DWORD PTR [esi+0x14c]
  eb7392:	test   ecx,ecx
  eb7394:	je     eb7722
  eb739a:	mov    eax,DWORD PTR [esi+0x13c]
  eb73a0:	test   eax,eax
  eb73a2:	je     eb7722
  eb73a8:	mov    edx,DWORD PTR [esi+0x8]
  eb73ab:	mov    esi,DWORD PTR [ecx+0x8]
  eb73ae:	mov    ecx,DWORD PTR [ecx+0xc]
  eb73b1:	mov    edi,DWORD PTR [eax+0x34]
  eb73b4:	mov    DWORD PTR [esp+0x10],esi
  eb73b8:	mov    DWORD PTR [esp+0xc],edi
  eb73bc:	mov    DWORD PTR [esp+0x8],ecx
  eb73c0:	mov    DWORD PTR [esp+0x4],edx
  eb73c4:	mov    DWORD PTR [esp],eax
  eb73c7:	mov    ebx,DWORD PTR [esp+0x5c]
  eb73cb:	call   eba86c  ; ABH.GameDatas.Battle.SkillBattleDataBase::EvaluateCharge
  eb73d0:	test   al,al
  eb73d2:	je     eb7435
  eb73d4:	mov    eax,DWORD PTR [ebp+0x8]
  eb73d7:	mov    eax,DWORD PTR [eax+0x13c]
  eb73dd:	test   eax,eax
  eb73df:	je     eb7722
  eb73e5:	mov    esi,DWORD PTR [eax+0x30]
  eb73e8:	test   esi,esi
  eb73ea:	je     eb7722
  eb73f0:	mov    eax,DWORD PTR [esp+0x58]
  eb73f4:	mov    eax,DWORD PTR [eax]
  eb73f6:	mov    ebx,DWORD PTR [esi]
  eb73f8:	movzx  edx,WORD PTR [ebx+0xaa]
  eb73ff:	test   edx,edx
  eb7401:	je     eb7416
  eb7403:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7406:	xor    ecx,ecx
  eb7408:	cmp    DWORD PTR [edi+ecx*8],eax
  eb740b:	je     eb74c4
  eb7411:	inc    ecx
  eb7412:	cmp    ecx,edx
  eb7414:	jb     eb7408
  eb7416:	mov    DWORD PTR [esp+0x4],eax
  eb741a:	mov    DWORD PTR [esp],esi
  eb741d:	mov    DWORD PTR [esp+0x8],0x11
  eb7425:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7429:	call   1c1964
  eb742e:	mov    ecx,eax
  eb7430:	jmp    eb74d3
  eb7435:	mov    edi,DWORD PTR [ebp+0x8]
  eb7438:	cmp    BYTE PTR [edi+0x50],0x0
  eb743c:	je     eb4f1a
  eb7442:	mov    DWORD PTR [esp+0x4],0x0
  eb744a:	mov    DWORD PTR [esp],0x0
  eb7451:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7455:	call   10659dc  ; DIContainerLogic::GetPacingBalancing
  eb745a:	test   eax,eax
  eb745c:	je     eb7726
  eb7462:	mov    DWORD PTR [esp],eax
  eb7465:	mov    DWORD PTR [esp+0x4],0x0
  eb746d:	call   781885  ; PacingBalancing::get_TimeForPigToChooseTargetAndDoSkillInSec
  eb7472:	fstp   TBYTE PTR [esp+0x60]
  eb7476:	lea    eax,[ebx+0x45664]
  eb747c:	mov    eax,DWORD PTR [eax]
  eb747e:	mov    DWORD PTR [esp],eax
  eb7481:	call   20bfb2
  eb7486:	mov    esi,eax
  eb7488:	fld    TBYTE PTR [esp+0x60]
  eb748c:	fstp   DWORD PTR [esp+0x4]
  eb7490:	mov    DWORD PTR [esp],esi
  eb7493:	mov    DWORD PTR [esp+0x8],0x0
  eb749b:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb74a0:	mov    DWORD PTR [edi+0x140],esi
  eb74a6:	mov    al,0x1
  eb74a8:	cmp    BYTE PTR [edi+0x144],0x0
  eb74af:	jne    eba812
  eb74b5:	mov    DWORD PTR [edi+0x148],0x3
  eb74bf:	jmp    eba812
  eb74c4:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb74c8:	lea    ecx,[ebx+eax*8+0x13c]
  eb74cf:	mov    ebx,DWORD PTR [esp+0x5c]
  eb74d3:	mov    eax,DWORD PTR [ecx+0x4]
  eb74d6:	mov    DWORD PTR [esp+0x4],eax
  eb74da:	mov    DWORD PTR [esp],esi
  eb74dd:	call   DWORD PTR [ecx]
  eb74df:	test   eax,eax
  eb74e1:	je     eb7726
  eb74e7:	mov    DWORD PTR [esp],eax
  eb74ea:	mov    DWORD PTR [esp+0x8],0x0
  eb74f2:	mov    DWORD PTR [esp+0x4],0x0
  eb74fa:	call   8d196a  ; CharacterControllerBattleGroundBase::set_targetSheltered
  eb74ff:	mov    eax,DWORD PTR [esp+0x60]
  eb7503:	mov    eax,DWORD PTR [eax]
  eb7505:	test   eax,eax
  eb7507:	je     eb7726
  eb750d:	mov    esi,DWORD PTR [eax+0xc]
  eb7510:	test   esi,esi
  eb7512:	je     eb7722
  eb7518:	mov    eax,DWORD PTR [esp+0x58]
  eb751c:	mov    eax,DWORD PTR [eax]
  eb751e:	mov    ebx,DWORD PTR [esi]
  eb7520:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7527:	test   edx,edx
  eb7529:	je     eb753a
  eb752b:	mov    edi,DWORD PTR [ebx+0x4c]
  eb752e:	xor    ecx,ecx
  eb7530:	cmp    DWORD PTR [edi+ecx*8],eax
  eb7533:	je     eb7554
  eb7535:	inc    ecx
  eb7536:	cmp    ecx,edx
  eb7538:	jb     eb7530
  eb753a:	mov    DWORD PTR [esp+0x4],eax
  eb753e:	mov    DWORD PTR [esp],esi
  eb7541:	mov    DWORD PTR [esp+0x8],0x89
  eb7549:	mov    ebx,DWORD PTR [esp+0x5c]
  eb754d:	call   1c1964
  eb7552:	jmp    eb7563
  eb7554:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb7558:	lea    eax,[ebx+eax*8+0x4fc]
  eb755f:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7563:	mov    ecx,DWORD PTR [eax+0x4]
  eb7566:	mov    DWORD PTR [esp+0x8],ecx
  eb756a:	mov    DWORD PTR [esp],esi
  eb756d:	mov    DWORD PTR [esp+0x4],0x0
  eb7575:	call   DWORD PTR [eax]
  eb7577:	jmp    eba810
  eb757c:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb7580:	lea    ecx,[ebx+eax*8+0x13c]
  eb7587:	mov    ebx,DWORD PTR [esp+0x5c]
  eb758b:	mov    eax,DWORD PTR [ecx+0x4]
  eb758e:	mov    DWORD PTR [esp+0x4],eax
  eb7592:	mov    DWORD PTR [esp],esi
  eb7595:	call   DWORD PTR [ecx]
  eb7597:	test   eax,eax
  eb7599:	mov    esi,DWORD PTR [esp+0x58]
  eb759d:	je     eb7726
  eb75a3:	mov    DWORD PTR [esp],eax
  eb75a6:	mov    DWORD PTR [esp+0x4],0x0
  eb75ae:	call   8dbef5  ; CharacterControllerBattleGroundBase::BeSheltered
  eb75b3:	mov    eax,DWORD PTR [esi]
  eb75b5:	test   eax,eax
  eb75b7:	je     eb7722
  eb75bd:	mov    esi,DWORD PTR [eax+0x30]
  eb75c0:	test   esi,esi
  eb75c2:	je     eb7722
  eb75c8:	mov    eax,DWORD PTR [esp+0x54]
  eb75cc:	mov    eax,DWORD PTR [eax]
  eb75ce:	mov    ebx,DWORD PTR [esi]
  eb75d0:	movzx  edx,WORD PTR [ebx+0xaa]
  eb75d7:	test   edx,edx
  eb75d9:	je     eb75ea
  eb75db:	mov    edi,DWORD PTR [ebx+0x4c]
  eb75de:	xor    ecx,ecx
  eb75e0:	cmp    DWORD PTR [edi+ecx*8],eax
  eb75e3:	je     eb7606
  eb75e5:	inc    ecx
  eb75e6:	cmp    ecx,edx
  eb75e8:	jb     eb75e0
  eb75ea:	mov    DWORD PTR [esp+0x4],eax
  eb75ee:	mov    DWORD PTR [esp],esi
  eb75f1:	mov    DWORD PTR [esp+0x8],0x11
  eb75f9:	mov    ebx,DWORD PTR [esp+0x5c]
  eb75fd:	call   1c1964
  eb7602:	mov    ecx,eax
  eb7604:	jmp    eb7615
  eb7606:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb760a:	lea    ecx,[ebx+eax*8+0x13c]
  eb7611:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7615:	mov    eax,DWORD PTR [ecx+0x4]
  eb7618:	mov    DWORD PTR [esp+0x4],eax
  eb761c:	mov    DWORD PTR [esp],esi
  eb761f:	call   DWORD PTR [ecx]
  eb7621:	test   eax,eax
  eb7623:	je     eb7726
  eb7629:	mov    DWORD PTR [esp],eax
  eb762c:	mov    DWORD PTR [esp+0x4],0x0
  eb7634:	call   8d1388  ; CharacterControllerBattleGroundBase::get_targetSheltered
  eb7639:	mov    esi,eax
  eb763b:	test   esi,esi
  eb763d:	je     eb7722
  eb7643:	mov    eax,DWORD PTR [esp+0x54]
  eb7647:	mov    eax,DWORD PTR [eax]
  eb7649:	mov    ebx,DWORD PTR [esi]
  eb764b:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7652:	test   edx,edx
  eb7654:	je     eb7665
  eb7656:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7659:	xor    ecx,ecx
  eb765b:	cmp    DWORD PTR [edi+ecx*8],eax
  eb765e:	je     eb7681
  eb7660:	inc    ecx
  eb7661:	cmp    ecx,edx
  eb7663:	jb     eb765b
  eb7665:	mov    DWORD PTR [esp+0x4],eax
  eb7669:	mov    DWORD PTR [esp],esi
  eb766c:	mov    DWORD PTR [esp+0x8],0x11
  eb7674:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7678:	call   1c1964
  eb767d:	mov    ecx,eax
  eb767f:	jmp    eb7690
  eb7681:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb7685:	lea    ecx,[ebx+eax*8+0x13c]
  eb768c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7690:	mov    eax,DWORD PTR [ecx+0x4]
  eb7693:	mov    DWORD PTR [esp+0x4],eax
  eb7697:	mov    DWORD PTR [esp],esi
  eb769a:	mov    esi,ebx
  eb769c:	call   DWORD PTR [ecx]
  eb769e:	mov    ecx,DWORD PTR [esp+0x60]
  eb76a2:	mov    ecx,DWORD PTR [ecx]
  eb76a4:	test   ecx,ecx
  eb76a6:	mov    edi,DWORD PTR [ebp+0x8]
  eb76a9:	je     eb7737
  eb76af:	test   eax,eax
  eb76b1:	je     eb7737
  eb76b7:	mov    ecx,DWORD PTR [ecx+0x8]
  eb76ba:	mov    DWORD PTR [esp+0x4],ecx
  eb76be:	mov    DWORD PTR [esp],eax
  eb76c1:	mov    DWORD PTR [esp+0x8],0x0
  eb76c9:	mov    ebx,esi
  eb76cb:	call   8dc160  ; CharacterControllerBattleGroundBase::Shelter
  eb76d0:	fstp   TBYTE PTR [esp+0x60]
  eb76d4:	lea    eax,[ebx+0x45664]
  eb76da:	mov    eax,DWORD PTR [eax]
  eb76dc:	mov    DWORD PTR [esp],eax
  eb76df:	call   20bfb2
  eb76e4:	mov    esi,eax
  eb76e6:	fld    TBYTE PTR [esp+0x60]
  eb76ea:	fstp   DWORD PTR [esp+0x4]
  eb76ee:	mov    DWORD PTR [esp],esi
  eb76f1:	mov    DWORD PTR [esp+0x8],0x0
  eb76f9:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb76fe:	mov    DWORD PTR [edi+0x140],esi
  eb7704:	mov    al,0x1
  eb7706:	cmp    BYTE PTR [edi+0x144],0x0
  eb770d:	jne    eba812
  eb7713:	mov    DWORD PTR [edi+0x148],0x4
  eb771d:	jmp    eba812
  eb7722:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7726:	call   1fbc48
  eb772b:	call   ebbb41
  eb7730:	mov    ebx,edi
  eb7732:	call   ebbb41
  eb7737:	mov    ebx,esi
  eb7739:	jmp    eb7726
  eb773b:	mov    ebx,edi
  eb773d:	call   ebbb41
  eb7742:	movss  xmm0,DWORD PTR [edi+0x90]
  eb774a:	movss  DWORD PTR [esp+0x60],xmm0
  eb7750:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7754:	lea    eax,[ebx+0x45664]
  eb775a:	mov    eax,DWORD PTR [eax]
  eb775c:	mov    DWORD PTR [esp],eax
  eb775f:	call   20bfb2
  eb7764:	mov    esi,eax
  eb7766:	movss  xmm0,DWORD PTR [esp+0x60]
  eb776c:	movss  DWORD PTR [esp+0x4],xmm0
  eb7772:	mov    DWORD PTR [esp],esi
  eb7775:	mov    DWORD PTR [esp+0x8],0x0
  eb777d:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb7782:	mov    DWORD PTR [edi+0x140],esi
  eb7788:	mov    al,0x1
  eb778a:	cmp    BYTE PTR [edi+0x144],0x0
  eb7791:	jne    eba812
  eb7797:	mov    DWORD PTR [edi+0x148],0xb
  eb77a1:	jmp    eba812
  eb77a6:	mov    DWORD PTR [edi+0xa4],0x42c80000
  eb77b0:	mov    eax,DWORD PTR [edi+0x13c]
  eb77b6:	test   eax,eax
  eb77b8:	je     eba82f
  eb77be:	mov    eax,DWORD PTR [eax+0x8]
  eb77c1:	test   eax,eax
  eb77c3:	je     eba82f
  eb77c9:	mov    DWORD PTR [esp],eax
  eb77cc:	mov    DWORD PTR [esp+0x4],0x0
  eb77d4:	mov    ebx,DWORD PTR [esp+0x5c]
  eb77d8:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb77dd:	test   eax,eax
  eb77df:	je     eba833
  eb77e5:	lea    esi,[edi+0xa4]
  eb77eb:	mov    DWORD PTR [esp+0x58],esi
  eb77ef:	lea    ecx,[ebx+0x56b1c]  ; literal "damage_in_percent"
  eb77f5:	mov    ecx,DWORD PTR [ecx]
  eb77f7:	lea    edx,[ebx+0x4a034]
  eb77fd:	mov    DWORD PTR [esp+0x50],edx
  eb7801:	mov    edx,DWORD PTR [edx]
  eb7803:	mov    DWORD PTR [esp+0xc],edx
  eb7807:	mov    DWORD PTR [esp+0x8],esi
  eb780b:	mov    DWORD PTR [esp+0x4],ecx
  eb780f:	mov    DWORD PTR [esp],eax
  eb7812:	mov    edi,ebx
  eb7814:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eb7819:	test   al,al
  eb781b:	jne    eb7827
  eb781d:	mov    eax,DWORD PTR [esp+0x58]
  eb7821:	mov    DWORD PTR [eax],0x42c80000
  eb7827:	mov    esi,DWORD PTR [ebp+0x8]
  eb782a:	mov    DWORD PTR [esi+0xa8],0x0
  eb7834:	mov    eax,DWORD PTR [esi+0x13c]
  eb783a:	test   eax,eax
  eb783c:	je     eb9a74
  eb7842:	mov    ecx,DWORD PTR [esi+0xa0]
  eb7848:	cmp    ecx,DWORD PTR [eax+0x38]
  eb784b:	mov    ebx,edi
  eb784d:	jne    eb78ae
  eb784f:	mov    eax,DWORD PTR [eax+0x8]
  eb7852:	test   eax,eax
  eb7854:	je     eba833
  eb785a:	mov    DWORD PTR [esp],eax
  eb785d:	mov    DWORD PTR [esp+0x4],0x0
  eb7865:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb786a:	test   eax,eax
  eb786c:	je     eba833
  eb7872:	lea    edi,[esi+0xa8]
  eb7878:	lea    ecx,[ebx+0x56b34]  ; literal "extra_damage_in_percent_on_target"
  eb787e:	mov    ecx,DWORD PTR [ecx]
  eb7880:	mov    edx,DWORD PTR [esp+0x50]
  eb7884:	mov    edx,DWORD PTR [edx]
  eb7886:	mov    DWORD PTR [esp+0xc],edx
  eb788a:	mov    DWORD PTR [esp+0x8],edi
  eb788e:	mov    DWORD PTR [esp+0x4],ecx
  eb7892:	mov    DWORD PTR [esp],eax
  eb7895:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  eb789a:	test   al,al
  eb789c:	je     eb78ae
  eb789e:	mov    eax,DWORD PTR [esp+0x58]
  eb78a2:	movss  xmm0,DWORD PTR [eax]
  eb78a6:	addss  xmm0,DWORD PTR [edi]
  eb78aa:	movss  DWORD PTR [eax],xmm0
  eb78ae:	mov    DWORD PTR [esp+0x4],0x0
  eb78b6:	mov    DWORD PTR [esp],0x0
  eb78bd:	call   109314e  ; DIContainerLogic::GetBattleService
  eb78c2:	mov    ecx,DWORD PTR [esi+0x13c]
  eb78c8:	test   ecx,ecx
  eb78ca:	je     eba833
  eb78d0:	test   eax,eax
  eb78d2:	je     eba833
  eb78d8:	movss  xmm0,DWORD PTR [esi+0x30]
  eb78dd:	mov    ecx,DWORD PTR [ecx+0x30]
  eb78e0:	mov    DWORD PTR [esp+0x10],ecx
  eb78e4:	mov    DWORD PTR [esp+0xc],ecx
  eb78e8:	movss  DWORD PTR [esp+0x4],xmm0
  eb78ee:	mov    DWORD PTR [esp],eax
  eb78f1:	mov    DWORD PTR [esp+0x14],0x0
  eb78f9:	mov    DWORD PTR [esp+0x8],0x8
  eb7901:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eb7906:	fstp   st(0)
  eb7908:	mov    eax,DWORD PTR [esp+0x54]
  eb790c:	mov    ecx,DWORD PTR [eax]
  eb790e:	test   ecx,ecx
  eb7910:	je     eba833
  eb7916:	cmp    BYTE PTR [ecx+0x44],0x0
  eb791a:	je     eb7979
  eb791c:	lea    esi,[esi+0x14c]
  eb7922:	mov    eax,DWORD PTR [esi]
  eb7924:	test   eax,eax
  eb7926:	je     eba82f
  eb792c:	mov    DWORD PTR [esp+0x58],ecx
  eb7930:	mov    esi,DWORD PTR [eax+0xc]
  eb7933:	test   esi,esi
  eb7935:	je     eba82f
  eb793b:	mov    eax,DWORD PTR [esp+0x60]
  eb793f:	mov    eax,DWORD PTR [eax]
  eb7941:	mov    ebx,DWORD PTR [esi]
  eb7943:	movzx  edx,WORD PTR [ebx+0xaa]
  eb794a:	test   edx,edx
  eb794c:	je     eb795d
  eb794e:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7951:	xor    ecx,ecx
  eb7953:	cmp    DWORD PTR [edi+ecx*8],eax
  eb7956:	je     eb79d7
  eb7958:	inc    ecx
  eb7959:	cmp    ecx,edx
  eb795b:	jb     eb7953
  eb795d:	mov    DWORD PTR [esp+0x4],eax
  eb7961:	mov    DWORD PTR [esp],esi
  eb7964:	mov    DWORD PTR [esp+0x8],0x2d
  eb796c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7970:	call   1c1964
  eb7975:	mov    ecx,eax
  eb7977:	jmp    eb79e6
  eb7979:	mov    eax,DWORD PTR [esi+0x14c]
  eb797f:	test   eax,eax
  eb7981:	je     eba82f
  eb7987:	mov    edi,DWORD PTR [eax+0xc]
  eb798a:	test   edi,edi
  eb798c:	je     eba82f
  eb7992:	mov    eax,DWORD PTR [esp+0x60]
  eb7996:	mov    eax,DWORD PTR [eax]
  eb7998:	mov    ebx,DWORD PTR [edi]
  eb799a:	movzx  edx,WORD PTR [ebx+0xaa]
  eb79a1:	test   edx,edx
  eb79a3:	je     eb79b8
  eb79a5:	mov    esi,DWORD PTR [ebx+0x4c]
  eb79a8:	xor    ecx,ecx
  eb79aa:	cmp    DWORD PTR [esi+ecx*8],eax
  eb79ad:	je     eb7a5f
  eb79b3:	inc    ecx
  eb79b4:	cmp    ecx,edx
  eb79b6:	jb     eb79aa
  eb79b8:	mov    DWORD PTR [esp+0x4],eax
  eb79bc:	mov    DWORD PTR [esp],edi
  eb79bf:	mov    DWORD PTR [esp+0x8],0x2d
  eb79c7:	mov    ebx,DWORD PTR [esp+0x5c]
  eb79cb:	call   1c1964
  eb79d0:	mov    ecx,eax
  eb79d2:	jmp    eb7a6e
  eb79d7:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb79db:	lea    ecx,[ebx+eax*8+0x21c]
  eb79e2:	mov    ebx,DWORD PTR [esp+0x5c]
  eb79e6:	mov    eax,DWORD PTR [ecx+0x4]
  eb79e9:	mov    DWORD PTR [esp+0x4],eax
  eb79ed:	mov    DWORD PTR [esp],esi
  eb79f0:	mov    esi,ebx
  eb79f2:	call   DWORD PTR [ecx]
  eb79f4:	mov    eax,DWORD PTR [esp+0x54]
  eb79f8:	cmp    DWORD PTR [eax],0x0
  eb79fb:	mov    edi,DWORD PTR [ebp+0x8]
  eb79fe:	je     eb9a6d
  eb7a04:	cmp    DWORD PTR [esp+0x58],0x0
  eb7a09:	je     eb9a6d
  eb7a0f:	mov    ebx,esi
  eb7a11:	lea    eax,[ebx+0x45664]
  eb7a17:	mov    eax,DWORD PTR [eax]
  eb7a19:	mov    DWORD PTR [esp],eax
  eb7a1c:	call   20bfb2
  eb7a21:	mov    esi,eax
  eb7a23:	mov    DWORD PTR [esp],esi
  eb7a26:	mov    DWORD PTR [esp+0x8],0x0
  eb7a2e:	mov    DWORD PTR [esp+0x4],0x0
  eb7a36:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb7a3b:	mov    DWORD PTR [edi+0x140],esi
  eb7a41:	mov    al,0x1
  eb7a43:	cmp    BYTE PTR [edi+0x144],0x0
  eb7a4a:	jne    eba812
  eb7a50:	mov    DWORD PTR [edi+0x148],0xc
  eb7a5a:	jmp    eba812
  eb7a5f:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb7a63:	lea    ecx,[ebx+eax*8+0x21c]
  eb7a6a:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7a6e:	mov    eax,DWORD PTR [ebp+0x8]
  eb7a71:	lea    esi,[eax+0x14c]
  eb7a77:	mov    eax,DWORD PTR [ecx+0x4]
  eb7a7a:	mov    DWORD PTR [esp+0x4],eax
  eb7a7e:	mov    DWORD PTR [esp],edi
  eb7a81:	call   DWORD PTR [ecx]
  eb7a83:	test   eax,eax
  eb7a85:	mov    ecx,DWORD PTR [esp+0x54]
  eb7a89:	je     eb7b1e
  eb7a8f:	mov    eax,DWORD PTR [esi]
  eb7a91:	test   eax,eax
  eb7a93:	je     eba82f
  eb7a99:	mov    DWORD PTR [esp+0x4c],esi
  eb7a9d:	mov    edi,DWORD PTR [eax+0xc]
  eb7aa0:	test   edi,edi
  eb7aa2:	je     eba82f
  eb7aa8:	mov    eax,DWORD PTR [esp+0x60]
  eb7aac:	mov    eax,DWORD PTR [eax]
  eb7aae:	mov    ebx,DWORD PTR [edi]
  eb7ab0:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7ab7:	test   edx,edx
  eb7ab9:	je     eb7aca
  eb7abb:	mov    esi,DWORD PTR [ebx+0x4c]
  eb7abe:	xor    ecx,ecx
  eb7ac0:	cmp    DWORD PTR [esi+ecx*8],eax
  eb7ac3:	je     eb7ae6
  eb7ac5:	inc    ecx
  eb7ac6:	cmp    ecx,edx
  eb7ac8:	jb     eb7ac0
  eb7aca:	mov    DWORD PTR [esp+0x4],eax
  eb7ace:	mov    DWORD PTR [esp],edi
  eb7ad1:	mov    DWORD PTR [esp+0x8],0x2d
  eb7ad9:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7add:	call   1c1964
  eb7ae2:	mov    ecx,eax
  eb7ae4:	jmp    eb7af5
  eb7ae6:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb7aea:	lea    ecx,[ebx+eax*8+0x21c]
  eb7af1:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7af5:	mov    eax,DWORD PTR [ecx+0x4]
  eb7af8:	mov    DWORD PTR [esp+0x4],eax
  eb7afc:	mov    DWORD PTR [esp],edi
  eb7aff:	call   DWORD PTR [ecx]
  eb7b01:	test   eax,eax
  eb7b03:	mov    ecx,DWORD PTR [esp+0x54]
  eb7b07:	mov    esi,DWORD PTR [esp+0x4c]
  eb7b0b:	je     eba833
  eb7b11:	cmp    DWORD PTR [eax+0x8],0x4
  eb7b15:	jne    eb7b1e
  eb7b17:	mov    ecx,DWORD PTR [ecx]
  eb7b19:	jmp    eb7922
  eb7b1e:	mov    eax,DWORD PTR [ecx]
  eb7b20:	test   eax,eax
  eb7b22:	je     eba833
  eb7b28:	xorps  xmm0,xmm0
  eb7b2b:	cmp    BYTE PTR [eax+0x3e],0x0
  eb7b2f:	mov    ecx,DWORD PTR [ebp+0x8]
  eb7b32:	jne    eb7bc5
  eb7b38:	mov    DWORD PTR [esp+0x4c],esi
  eb7b3c:	mov    edi,DWORD PTR [eax+0x30]
  eb7b3f:	test   edi,edi
  eb7b41:	je     eba82f
  eb7b47:	mov    eax,DWORD PTR [esp+0x60]
  eb7b4b:	mov    eax,DWORD PTR [eax]
  eb7b4d:	mov    ebx,DWORD PTR [edi]
  eb7b4f:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7b56:	test   edx,edx
  eb7b58:	je     eb7b69
  eb7b5a:	mov    esi,DWORD PTR [ebx+0x4c]
  eb7b5d:	xor    ecx,ecx
  eb7b5f:	cmp    DWORD PTR [esi+ecx*8],eax
  eb7b62:	je     eb7b83
  eb7b64:	inc    ecx
  eb7b65:	cmp    ecx,edx
  eb7b67:	jb     eb7b5f
  eb7b69:	mov    DWORD PTR [esp+0x4],eax
  eb7b6d:	mov    DWORD PTR [esp],edi
  eb7b70:	mov    DWORD PTR [esp+0x8],0x1c
  eb7b78:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7b7c:	call   1c1964
  eb7b81:	jmp    eb7b92
  eb7b83:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb7b87:	lea    eax,[ebx+eax*8+0x194]
  eb7b8e:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7b92:	mov    ecx,DWORD PTR [eax+0x4]
  eb7b95:	mov    DWORD PTR [esp+0x4],ecx
  eb7b99:	mov    DWORD PTR [esp],edi
  eb7b9c:	call   DWORD PTR [eax]
  eb7b9e:	fstp   DWORD PTR [esp+0x98]
  eb7ba5:	mov    eax,DWORD PTR [esp+0x58]
  eb7ba9:	movss  xmm0,DWORD PTR [eax]
  eb7bad:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eb7bb5:	mulss  xmm0,DWORD PTR [esp+0x98]
  eb7bbe:	mov    ecx,DWORD PTR [ebp+0x8]
  eb7bc1:	mov    esi,DWORD PTR [esp+0x4c]
  eb7bc5:	mov    DWORD PTR [esp+0x4c],esi
  eb7bc9:	movss  DWORD PTR [ecx+0xac],xmm0
  eb7bd1:	mov    DWORD PTR [ecx+0xb0],0x3f800000
  eb7bdb:	mov    DWORD PTR [ecx+0xb4],0x3f800000
  eb7be5:	mov    eax,DWORD PTR [ecx+0x13c]
  eb7beb:	test   eax,eax
  eb7bed:	je     eba82f
  eb7bf3:	mov    esi,DWORD PTR [eax+0x30]
  eb7bf6:	test   esi,esi
  eb7bf8:	je     eba82f
  eb7bfe:	movss  DWORD PTR [esp+0x58],xmm0
  eb7c04:	mov    eax,DWORD PTR [esp+0x60]
  eb7c08:	mov    eax,DWORD PTR [eax]
  eb7c0a:	mov    ebx,DWORD PTR [esi]
  eb7c0c:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7c13:	test   edx,edx
  eb7c15:	je     eb7c2c
  eb7c17:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7c1a:	xor    ecx,ecx
  eb7c1c:	movss  xmm0,DWORD PTR [esp+0x58]
  eb7c22:	cmp    DWORD PTR [edi+ecx*8],eax
  eb7c25:	je     eb7c4c
  eb7c27:	inc    ecx
  eb7c28:	cmp    ecx,edx
  eb7c2a:	jb     eb7c22
  eb7c2c:	mov    DWORD PTR [esp+0x4],eax
  eb7c30:	mov    DWORD PTR [esp],esi
  eb7c33:	mov    DWORD PTR [esp+0x8],0x78
  eb7c3b:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7c3f:	call   1c1964
  eb7c44:	movss  xmm0,DWORD PTR [esp+0x58]
  eb7c4a:	jmp    eb7c5b
  eb7c4c:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb7c50:	lea    eax,[ebx+eax*8+0x474]
  eb7c57:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7c5b:	mov    ecx,DWORD PTR [eax+0x4]
  eb7c5e:	mov    DWORD PTR [esp+0x8],ecx
  eb7c62:	movss  DWORD PTR [esp+0x4],xmm0
  eb7c68:	mov    DWORD PTR [esp],esi
  eb7c6b:	call   DWORD PTR [eax]
  eb7c6d:	mov    eax,DWORD PTR [esp+0x54]
  eb7c71:	mov    eax,DWORD PTR [eax]
  eb7c73:	test   eax,eax
  eb7c75:	mov    esi,DWORD PTR [ebp+0x8]
  eb7c78:	je     eba833
  eb7c7e:	mov    eax,DWORD PTR [eax+0x74]
  eb7c81:	test   eax,eax
  eb7c83:	je     eba833
  eb7c89:	lea    ecx,[esi+0xb4]
  eb7c8f:	mov    DWORD PTR [esp+0x40],ecx
  eb7c93:	lea    ecx,[ebx+0x4a0b4]
  eb7c99:	mov    DWORD PTR [esp+0x38],ecx
  eb7c9d:	mov    ecx,DWORD PTR [ecx]
  eb7c9f:	mov    DWORD PTR [esp+0x8],ecx
  eb7ca3:	mov    DWORD PTR [esp+0x4],eax
  eb7ca7:	lea    eax,[esp+0x138]
  eb7cae:	mov    DWORD PTR [esp],eax
  eb7cb1:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb7cb6:	sub    esp,0x4
  eb7cb9:	lea    edi,[esi+0xb8]
  eb7cbf:	mov    DWORD PTR [esp+0x58],edi
  eb7cc3:	movsd  xmm0,QWORD PTR [esp+0x138]
  eb7ccc:	movsd  xmm1,QWORD PTR [esp+0x140]
  eb7cd5:	movsd  QWORD PTR [esi+0xc0],xmm1
  eb7cdd:	movsd  QWORD PTR [esi+0xb8],xmm0
  eb7ce5:	lea    eax,[ebx+0x4a0c0]
  eb7ceb:	mov    DWORD PTR [esp+0x44],eax
  eb7cef:	mov    eax,DWORD PTR [esp+0x44]
  eb7cf3:	mov    eax,DWORD PTR [eax]
  eb7cf5:	mov    DWORD PTR [esp+0x4],eax
  eb7cf9:	mov    DWORD PTR [esp],edi
  eb7cfc:	call   447e4e
  eb7d01:	test   al,al
  eb7d03:	je     eb7d70
  eb7d05:	lea    eax,[ebx+0x4a0b8]
  eb7d0b:	mov    eax,DWORD PTR [eax]
  eb7d0d:	mov    DWORD PTR [esp+0x4],eax
  eb7d11:	mov    DWORD PTR [esp],edi
  eb7d14:	call   447f1e
  eb7d19:	mov    ecx,DWORD PTR [esi+0x13c]
  eb7d1f:	test   ecx,ecx
  eb7d21:	je     eb7d8a
  eb7d23:	test   eax,eax
  eb7d25:	je     eb7d98
  eb7d27:	movss  xmm0,DWORD PTR [esi+0xac]
  eb7d2f:	mov    edx,DWORD PTR [esi+0xa0]
  eb7d35:	mov    edi,DWORD PTR [ecx+0x14]
  eb7d38:	mov    ecx,DWORD PTR [ecx+0x30]
  eb7d3b:	lea    esi,[ebx+0x4a0bc]
  eb7d41:	mov    esi,DWORD PTR [esi]
  eb7d43:	mov    DWORD PTR [esp+0x14],esi
  eb7d47:	mov    DWORD PTR [esp+0x10],edx
  eb7d4b:	mov    DWORD PTR [esp+0xc],ecx
  eb7d4f:	mov    DWORD PTR [esp+0x8],edi
  eb7d53:	mov    esi,DWORD PTR [ebp+0x8]
  eb7d56:	movss  DWORD PTR [esp+0x4],xmm0
  eb7d5c:	mov    DWORD PTR [esp],eax
  eb7d5f:	mov    edi,DWORD PTR [esp+0x58]
  eb7d63:	call   15f5a37  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::Invoke | System.Action`4<float, object, object, object>::Invoke
  eb7d68:	jmp    eb7cef
  eb7d6a:	mov    DWORD PTR [esp+0x58],edi
  eb7d6e:	jmp    eb7da2
  eb7d70:	lea    eax,[ebx+0x4a0c4]
  eb7d76:	mov    eax,DWORD PTR [eax]
  eb7d78:	mov    DWORD PTR [esp+0x4],eax
  eb7d7c:	mov    DWORD PTR [esp],edi
  eb7d7f:	call   447df6
  eb7d84:	mov    esi,DWORD PTR [esp+0x4c]
  eb7d88:	jmp    eb7de2
  eb7d8a:	mov    DWORD PTR [esp+0x58],edi
  eb7d8e:	call   1fbc48
  eb7d93:	call   ebbb41
  eb7d98:	call   1fbc48
  eb7d9d:	jmp    eb9a7f
  eb7da2:	mov    esi,DWORD PTR [esp+0x4c]
  eb7da6:	cmp    edx,0x1
  eb7da9:	jne    eb9a7b
  eb7daf:	mov    DWORD PTR [esp],eax
  eb7db2:	call   1ba3f0
  eb7db7:	mov    edi,DWORD PTR [eax]
  eb7db9:	call   1b9ce0
  eb7dbe:	lea    eax,[ebx+0x4a0c4]
  eb7dc4:	mov    eax,DWORD PTR [eax]
  eb7dc6:	mov    DWORD PTR [esp+0x4],eax
  eb7dca:	mov    eax,DWORD PTR [esp+0x58]
  eb7dce:	mov    DWORD PTR [esp],eax
  eb7dd1:	call   447df6
  eb7dd6:	test   edi,edi
  eb7dd8:	je     eb7de2
  eb7dda:	mov    DWORD PTR [esp],edi
  eb7ddd:	call   1fbb20
  eb7de2:	mov    DWORD PTR [esp+0x4c],esi
  eb7de6:	mov    eax,DWORD PTR [esi]
  eb7de8:	test   eax,eax
  eb7dea:	je     eba82f
  eb7df0:	mov    esi,DWORD PTR [eax+0xc]
  eb7df3:	test   esi,esi
  eb7df5:	je     eba82f
  eb7dfb:	mov    eax,DWORD PTR [esp+0x60]
  eb7dff:	mov    eax,DWORD PTR [eax]
  eb7e01:	mov    ebx,DWORD PTR [esi]
  eb7e03:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7e0a:	test   edx,edx
  eb7e0c:	je     eb7e1d
  eb7e0e:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7e11:	xor    ecx,ecx
  eb7e13:	cmp    DWORD PTR [edi+ecx*8],eax
  eb7e16:	je     eb7e39
  eb7e18:	inc    ecx
  eb7e19:	cmp    ecx,edx
  eb7e1b:	jb     eb7e13
  eb7e1d:	mov    DWORD PTR [esp+0x4],eax
  eb7e21:	mov    DWORD PTR [esp],esi
  eb7e24:	mov    DWORD PTR [esp+0x8],0xf
  eb7e2c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7e30:	call   1c1964
  eb7e35:	mov    ecx,eax
  eb7e37:	jmp    eb7e48
  eb7e39:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb7e3d:	lea    ecx,[ebx+eax*8+0x12c]
  eb7e44:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7e48:	mov    eax,DWORD PTR [ecx+0x4]
  eb7e4b:	mov    DWORD PTR [esp+0x4],eax
  eb7e4f:	mov    DWORD PTR [esp],esi
  eb7e52:	call   DWORD PTR [ecx]
  eb7e54:	test   eax,eax
  eb7e56:	mov    esi,DWORD PTR [ebp+0x8]
  eb7e59:	mov    edi,DWORD PTR [esp+0x54]
  eb7e5d:	je     eb80e5
  eb7e63:	mov    eax,DWORD PTR [edi]
  eb7e65:	test   eax,eax
  eb7e67:	je     eba82f
  eb7e6d:	cmp    BYTE PTR [eax+0x43],0x0
  eb7e71:	je     eb80e5
  eb7e77:	mov    DWORD PTR [esp+0x4],0x0
  eb7e7f:	mov    DWORD PTR [esp],0x0
  eb7e86:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7e8a:	call   109314e  ; DIContainerLogic::GetBattleService
  eb7e8f:	mov    ecx,DWORD PTR [esp+0x4c]
  eb7e93:	mov    ecx,DWORD PTR [ecx]
  eb7e95:	test   ecx,ecx
  eb7e97:	je     eba82f
  eb7e9d:	mov    DWORD PTR [esp+0x58],eax
  eb7ea1:	mov    edi,DWORD PTR [ecx+0xc]
  eb7ea4:	test   edi,edi
  eb7ea6:	je     eba82f
  eb7eac:	mov    eax,DWORD PTR [esp+0x60]
  eb7eb0:	mov    eax,DWORD PTR [eax]
  eb7eb2:	mov    ebx,DWORD PTR [edi]
  eb7eb4:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7ebb:	test   edx,edx
  eb7ebd:	je     eb7ece
  eb7ebf:	mov    esi,DWORD PTR [ebx+0x4c]
  eb7ec2:	xor    ecx,ecx
  eb7ec4:	cmp    DWORD PTR [esi+ecx*8],eax
  eb7ec7:	je     eb7eea
  eb7ec9:	inc    ecx
  eb7eca:	cmp    ecx,edx
  eb7ecc:	jb     eb7ec4
  eb7ece:	mov    DWORD PTR [esp+0x4],eax
  eb7ed2:	mov    DWORD PTR [esp],edi
  eb7ed5:	mov    DWORD PTR [esp+0x8],0xf
  eb7edd:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7ee1:	call   1c1964
  eb7ee6:	mov    ecx,eax
  eb7ee8:	jmp    eb7ef9
  eb7eea:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb7eee:	lea    ecx,[ebx+eax*8+0x12c]
  eb7ef5:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7ef9:	mov    eax,DWORD PTR [ecx+0x4]
  eb7efc:	mov    DWORD PTR [esp+0x4],eax
  eb7f00:	mov    DWORD PTR [esp],edi
  eb7f03:	call   DWORD PTR [ecx]
  eb7f05:	test   eax,eax
  eb7f07:	je     eba833
  eb7f0d:	lea    ecx,[ebx+0x4a0c8]
  eb7f13:	mov    DWORD PTR [esp+0x48],ecx
  eb7f17:	mov    ecx,DWORD PTR [ecx]
  eb7f19:	mov    DWORD PTR [esp+0x4],ecx
  eb7f1d:	mov    DWORD PTR [esp],eax
  eb7f20:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  eb7f25:	test   eax,eax
  eb7f27:	mov    esi,DWORD PTR [ebp+0x8]
  eb7f2a:	je     eba833
  eb7f30:	mov    DWORD PTR [esp],eax
  eb7f33:	mov    DWORD PTR [esp+0x4],0x0
  eb7f3b:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  eb7f40:	mov    DWORD PTR [esp+0x50],eax
  eb7f44:	mov    eax,DWORD PTR [esp+0x4c]
  eb7f48:	mov    ecx,DWORD PTR [eax]
  eb7f4a:	test   ecx,ecx
  eb7f4c:	je     eba82f
  eb7f52:	mov    ebx,DWORD PTR [esp+0x58]
  eb7f56:	test   ebx,ebx
  eb7f58:	je     eba82f
  eb7f5e:	mov    edx,DWORD PTR [esi+0x8]
  eb7f61:	mov    edi,DWORD PTR [esi+0xa0]
  eb7f67:	mov    eax,DWORD PTR [ecx+0xc]
  eb7f6a:	mov    ecx,DWORD PTR [esp+0x40]
  eb7f6e:	mov    DWORD PTR [esp+0x14],ecx
  eb7f72:	mov    DWORD PTR [esp+0x10],edx
  eb7f76:	mov    DWORD PTR [esp+0xc],edi
  eb7f7a:	mov    DWORD PTR [esp+0x8],eax
  eb7f7e:	mov    eax,DWORD PTR [esp+0x50]
  eb7f82:	mov    DWORD PTR [esp+0x4],eax
  eb7f86:	mov    DWORD PTR [esp],ebx
  eb7f89:	mov    DWORD PTR [esp+0x18],0x0
  eb7f91:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7f95:	call   50c917  ; ABH.Services.Logic.BattleService::ApplyEarlyPerk
  eb7f9a:	test   al,al
  eb7f9c:	mov    edi,DWORD PTR [esp+0x54]
  eb7fa0:	je     eb80e5
  eb7fa6:	mov    esi,DWORD PTR [esi+0xa0]
  eb7fac:	test   esi,esi
  eb7fae:	je     eba82f
  eb7fb4:	mov    eax,DWORD PTR [esp+0x60]
  eb7fb8:	mov    eax,DWORD PTR [eax]
  eb7fba:	mov    ebx,DWORD PTR [esi]
  eb7fbc:	movzx  edx,WORD PTR [ebx+0xaa]
  eb7fc3:	test   edx,edx
  eb7fc5:	je     eb7fd6
  eb7fc7:	mov    edi,DWORD PTR [ebx+0x4c]
  eb7fca:	xor    ecx,ecx
  eb7fcc:	cmp    DWORD PTR [edi+ecx*8],eax
  eb7fcf:	je     eb7ff2
  eb7fd1:	inc    ecx
  eb7fd2:	cmp    ecx,edx
  eb7fd4:	jb     eb7fcc
  eb7fd6:	mov    DWORD PTR [esp+0x4],eax
  eb7fda:	mov    DWORD PTR [esp],esi
  eb7fdd:	mov    DWORD PTR [esp+0x8],0x11
  eb7fe5:	mov    ebx,DWORD PTR [esp+0x5c]
  eb7fe9:	call   1c1964
  eb7fee:	mov    ecx,eax
  eb7ff0:	jmp    eb8001
  eb7ff2:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb7ff6:	lea    ecx,[ebx+eax*8+0x13c]
  eb7ffd:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8001:	mov    eax,DWORD PTR [ecx+0x4]
  eb8004:	mov    DWORD PTR [esp+0x4],eax
  eb8008:	mov    DWORD PTR [esp],esi
  eb800b:	call   DWORD PTR [ecx]
  eb800d:	mov    ecx,eax
  eb800f:	mov    eax,DWORD PTR [esp+0x4c]
  eb8013:	mov    eax,DWORD PTR [eax]
  eb8015:	test   eax,eax
  eb8017:	je     eba833
  eb801d:	mov    DWORD PTR [esp+0x58],ecx
  eb8021:	mov    esi,DWORD PTR [eax+0xc]
  eb8024:	test   esi,esi
  eb8026:	je     eba82f
  eb802c:	mov    eax,DWORD PTR [esp+0x60]
  eb8030:	mov    eax,DWORD PTR [eax]
  eb8032:	mov    ebx,DWORD PTR [esi]
  eb8034:	movzx  edx,WORD PTR [ebx+0xaa]
  eb803b:	test   edx,edx
  eb803d:	je     eb804e
  eb803f:	mov    edi,DWORD PTR [ebx+0x4c]
  eb8042:	xor    ecx,ecx
  eb8044:	cmp    DWORD PTR [edi+ecx*8],eax
  eb8047:	je     eb806a
  eb8049:	inc    ecx
  eb804a:	cmp    ecx,edx
  eb804c:	jb     eb8044
  eb804e:	mov    DWORD PTR [esp+0x4],eax
  eb8052:	mov    DWORD PTR [esp],esi
  eb8055:	mov    DWORD PTR [esp+0x8],0xf
  eb805d:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8061:	call   1c1964
  eb8066:	mov    ecx,eax
  eb8068:	jmp    eb8079
  eb806a:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb806e:	lea    ecx,[ebx+eax*8+0x12c]
  eb8075:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8079:	mov    eax,DWORD PTR [ecx+0x4]
  eb807c:	mov    DWORD PTR [esp+0x4],eax
  eb8080:	mov    DWORD PTR [esp],esi
  eb8083:	call   DWORD PTR [ecx]
  eb8085:	test   eax,eax
  eb8087:	mov    esi,DWORD PTR [ebp+0x8]
  eb808a:	je     eba833
  eb8090:	mov    ecx,DWORD PTR [esp+0x48]
  eb8094:	mov    ecx,DWORD PTR [ecx]
  eb8096:	mov    DWORD PTR [esp+0x4],ecx
  eb809a:	mov    DWORD PTR [esp],eax
  eb809d:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  eb80a2:	test   eax,eax
  eb80a4:	mov    edi,DWORD PTR [esp+0x54]
  eb80a8:	je     eba833
  eb80ae:	mov    DWORD PTR [esp],eax
  eb80b1:	mov    DWORD PTR [esp+0x4],0x0
  eb80b9:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  eb80be:	test   eax,eax
  eb80c0:	je     eba833
  eb80c6:	mov    DWORD PTR [esp],eax
  eb80c9:	mov    DWORD PTR [esp+0x4],0x0
  eb80d1:	call   179b16e  ; ABH.Shared.Models.Generic.EquipmentPerk::get_Type
  eb80d6:	mov    ecx,DWORD PTR [esp+0x58]
  eb80da:	test   ecx,ecx
  eb80dc:	je     eba82f
  eb80e2:	mov    DWORD PTR [ecx+0x64],eax
  eb80e5:	mov    eax,DWORD PTR [edi]
  eb80e7:	test   eax,eax
  eb80e9:	je     eba82f
  eb80ef:	mov    eax,DWORD PTR [eax+0x80]
  eb80f5:	test   eax,eax
  eb80f7:	je     eba82f
  eb80fd:	mov    edi,DWORD PTR [esp+0x5c]
  eb8101:	lea    ecx,[edi+0x4a0cc]
  eb8107:	mov    DWORD PTR [esp+0x3c],ecx
  eb810b:	mov    ecx,DWORD PTR [ecx]
  eb810d:	mov    DWORD PTR [esp+0x8],ecx
  eb8111:	mov    DWORD PTR [esp+0x4],eax
  eb8115:	lea    eax,[esp+0x128]
  eb811c:	mov    DWORD PTR [esp],eax
  eb811f:	mov    ebx,edi
  eb8121:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb8126:	sub    esp,0x4
  eb8129:	lea    eax,[esi+0xc8]
  eb812f:	mov    DWORD PTR [esp+0x58],eax
  eb8133:	movsd  xmm0,QWORD PTR [esp+0x128]
  eb813c:	movsd  xmm1,QWORD PTR [esp+0x130]
  eb8145:	movsd  QWORD PTR [esi+0xd0],xmm1
  eb814d:	movsd  QWORD PTR [esi+0xc8],xmm0
  eb8155:	lea    eax,[edi+0x4a0d8]
  eb815b:	mov    DWORD PTR [esp+0x48],eax
  eb815f:	jmp    eb8172
  eb8161:	movss  xmm0,DWORD PTR [esp+0x94]
  eb816a:	movss  DWORD PTR [esi+0xb0],xmm0
  eb8172:	mov    eax,DWORD PTR [esp+0x48]
  eb8176:	mov    eax,DWORD PTR [eax]
  eb8178:	mov    DWORD PTR [esp+0x4],eax
  eb817c:	mov    eax,DWORD PTR [esp+0x58]
  eb8180:	mov    DWORD PTR [esp],eax
  eb8183:	mov    ebx,edi
  eb8185:	call   447e4e
  eb818a:	test   al,al
  eb818c:	je     eb820b
  eb818e:	lea    eax,[edi+0x4a0d0]
  eb8194:	mov    eax,DWORD PTR [eax]
  eb8196:	mov    DWORD PTR [esp+0x4],eax
  eb819a:	mov    eax,DWORD PTR [esp+0x58]
  eb819e:	mov    DWORD PTR [esp],eax
  eb81a1:	mov    ebx,edi
  eb81a3:	call   447f1e
  eb81a8:	mov    ecx,DWORD PTR [esi+0x13c]
  eb81ae:	test   ecx,ecx
  eb81b0:	je     eb8227
  eb81b2:	test   eax,eax
  eb81b4:	je     eb8233
  eb81b6:	movss  xmm0,DWORD PTR [esi+0xb0]
  eb81be:	mov    edx,DWORD PTR [esi+0xa0]
  eb81c4:	mov    esi,DWORD PTR [ecx+0x14]
  eb81c7:	mov    DWORD PTR [esp+0x50],esi
  eb81cb:	mov    ecx,DWORD PTR [ecx+0x30]
  eb81ce:	mov    ebx,edi
  eb81d0:	lea    esi,[ebx+0x4a0d4]
  eb81d6:	mov    esi,DWORD PTR [esi]
  eb81d8:	mov    DWORD PTR [esp+0x14],esi
  eb81dc:	mov    DWORD PTR [esp+0x10],edx
  eb81e0:	mov    DWORD PTR [esp+0xc],ecx
  eb81e4:	mov    ecx,DWORD PTR [esp+0x50]
  eb81e8:	mov    DWORD PTR [esp+0x8],ecx
  eb81ec:	mov    esi,DWORD PTR [ebp+0x8]
  eb81ef:	movss  DWORD PTR [esp+0x4],xmm0
  eb81f5:	mov    DWORD PTR [esp],eax
  eb81f8:	call   17d9404  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<float, object, object, object, float>::Invoke
  eb81fd:	fstp   DWORD PTR [esp+0x94]
  eb8204:	jmp    eb8161
  eb8209:	jmp    eb823f
  eb820b:	mov    ebx,edi
  eb820d:	lea    eax,[ebx+0x4a0dc]
  eb8213:	mov    eax,DWORD PTR [eax]
  eb8215:	mov    DWORD PTR [esp+0x4],eax
  eb8219:	mov    eax,DWORD PTR [esp+0x58]
  eb821d:	mov    DWORD PTR [esp],eax
  eb8220:	call   447df6
  eb8225:	jmp    eb827d
  eb8227:	mov    ebx,edi
  eb8229:	call   1fbc48
  eb822e:	jmp    eb773b
  eb8233:	mov    ebx,edi
  eb8235:	call   1fbc48
  eb823a:	jmp    eb773b
  eb823f:	cmp    edx,0x1
  eb8242:	jne    eb9a95
  eb8248:	mov    DWORD PTR [esp],eax
  eb824b:	mov    ebx,edi
  eb824d:	call   1ba3f0
  eb8252:	mov    edi,DWORD PTR [eax]
  eb8254:	call   1b9ce0
  eb8259:	lea    eax,[ebx+0x4a0dc]
  eb825f:	mov    eax,DWORD PTR [eax]
  eb8261:	mov    DWORD PTR [esp+0x4],eax
  eb8265:	mov    eax,DWORD PTR [esp+0x58]
  eb8269:	mov    DWORD PTR [esp],eax
  eb826c:	call   447df6
  eb8271:	test   edi,edi
  eb8273:	je     eb827d
  eb8275:	mov    DWORD PTR [esp],edi
  eb8278:	call   1fbb20
  eb827d:	mov    DWORD PTR [esp+0x4],0x0
  eb8285:	mov    DWORD PTR [esp],0x0
  eb828c:	call   109314e  ; DIContainerLogic::GetBattleService
  eb8291:	mov    ecx,DWORD PTR [esi+0x13c]
  eb8297:	test   ecx,ecx
  eb8299:	je     eba833
  eb829f:	test   eax,eax
  eb82a1:	je     eba833
  eb82a7:	movss  xmm0,DWORD PTR [esi+0x30]
  eb82ac:	mov    edx,DWORD PTR [esi+0xa0]
  eb82b2:	mov    ecx,DWORD PTR [ecx+0x30]
  eb82b5:	mov    DWORD PTR [esp+0x10],ecx
  eb82b9:	mov    DWORD PTR [esp+0xc],edx
  eb82bd:	movss  DWORD PTR [esp+0x4],xmm0
  eb82c3:	mov    DWORD PTR [esp],eax
  eb82c6:	mov    DWORD PTR [esp+0x14],0x0
  eb82ce:	mov    DWORD PTR [esp+0x8],0x7
  eb82d6:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eb82db:	fstp   st(0)
  eb82dd:	mov    ecx,DWORD PTR [esp+0x54]
  eb82e1:	mov    edx,DWORD PTR [ecx]
  eb82e3:	test   edx,edx
  eb82e5:	je     eba833
  eb82eb:	cmp    BYTE PTR [edx+0x44],0x0
  eb82ef:	mov    eax,DWORD PTR [esp+0x4c]
  eb82f3:	jne    eb83ff
  eb82f9:	mov    eax,DWORD PTR [eax]
  eb82fb:	test   eax,eax
  eb82fd:	je     eba82f
  eb8303:	mov    esi,DWORD PTR [eax+0xc]
  eb8306:	test   esi,esi
  eb8308:	je     eba82f
  eb830e:	mov    eax,DWORD PTR [esp+0x60]
  eb8312:	mov    eax,DWORD PTR [eax]
  eb8314:	mov    ebx,DWORD PTR [esi]
  eb8316:	movzx  edx,WORD PTR [ebx+0xaa]
  eb831d:	test   edx,edx
  eb831f:	je     eb8330
  eb8321:	mov    edi,DWORD PTR [ebx+0x4c]
  eb8324:	xor    ecx,ecx
  eb8326:	cmp    DWORD PTR [edi+ecx*8],eax
  eb8329:	je     eb834c
  eb832b:	inc    ecx
  eb832c:	cmp    ecx,edx
  eb832e:	jb     eb8326
  eb8330:	mov    DWORD PTR [esp+0x4],eax
  eb8334:	mov    DWORD PTR [esp],esi
  eb8337:	mov    DWORD PTR [esp+0x8],0x2d
  eb833f:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8343:	call   1c1964
  eb8348:	mov    ecx,eax
  eb834a:	jmp    eb835b
  eb834c:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb8350:	lea    ecx,[ebx+eax*8+0x21c]
  eb8357:	mov    ebx,DWORD PTR [esp+0x5c]
  eb835b:	mov    eax,DWORD PTR [ecx+0x4]
  eb835e:	mov    DWORD PTR [esp+0x4],eax
  eb8362:	mov    DWORD PTR [esp],esi
  eb8365:	call   DWORD PTR [ecx]
  eb8367:	test   eax,eax
  eb8369:	mov    ecx,DWORD PTR [ebp+0x8]
  eb836c:	je     eb845a
  eb8372:	mov    eax,DWORD PTR [esp+0x4c]
  eb8376:	mov    eax,DWORD PTR [eax]
  eb8378:	test   eax,eax
  eb837a:	je     eba82f
  eb8380:	mov    esi,DWORD PTR [eax+0xc]
  eb8383:	test   esi,esi
  eb8385:	je     eba82f
  eb838b:	mov    eax,DWORD PTR [esp+0x60]
  eb838f:	mov    eax,DWORD PTR [eax]
  eb8391:	mov    ebx,DWORD PTR [esi]
  eb8393:	movzx  edx,WORD PTR [ebx+0xaa]
  eb839a:	test   edx,edx
  eb839c:	je     eb83ad
  eb839e:	mov    edi,DWORD PTR [ebx+0x4c]
  eb83a1:	xor    ecx,ecx
  eb83a3:	cmp    DWORD PTR [edi+ecx*8],eax
  eb83a6:	je     eb83c9
  eb83a8:	inc    ecx
  eb83a9:	cmp    ecx,edx
  eb83ab:	jb     eb83a3
  eb83ad:	mov    DWORD PTR [esp+0x4],eax
  eb83b1:	mov    DWORD PTR [esp],esi
  eb83b4:	mov    DWORD PTR [esp+0x8],0x2d
  eb83bc:	mov    ebx,DWORD PTR [esp+0x5c]
  eb83c0:	call   1c1964
  eb83c5:	mov    ecx,eax
  eb83c7:	jmp    eb83d8
  eb83c9:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb83cd:	lea    ecx,[ebx+eax*8+0x21c]
  eb83d4:	mov    ebx,DWORD PTR [esp+0x5c]
  eb83d8:	mov    eax,DWORD PTR [ecx+0x4]
  eb83db:	mov    DWORD PTR [esp+0x4],eax
  eb83df:	mov    DWORD PTR [esp],esi
  eb83e2:	call   DWORD PTR [ecx]
  eb83e4:	test   eax,eax
  eb83e6:	mov    ecx,DWORD PTR [ebp+0x8]
  eb83e9:	je     eba833
  eb83ef:	cmp    DWORD PTR [eax+0x8],0x4
  eb83f3:	jne    eb845a
  eb83f5:	mov    ecx,DWORD PTR [esp+0x54]
  eb83f9:	mov    edx,DWORD PTR [ecx]
  eb83fb:	mov    eax,DWORD PTR [esp+0x4c]
  eb83ff:	mov    eax,DWORD PTR [eax]
  eb8401:	test   eax,eax
  eb8403:	je     eba82f
  eb8409:	mov    DWORD PTR [esp+0x58],edx
  eb840d:	mov    DWORD PTR [esp+0x54],ecx
  eb8411:	mov    edi,DWORD PTR [eax+0xc]
  eb8414:	test   edi,edi
  eb8416:	je     eba82f
  eb841c:	mov    eax,DWORD PTR [esp+0x60]
  eb8420:	mov    eax,DWORD PTR [eax]
  eb8422:	mov    ebx,DWORD PTR [edi]
  eb8424:	movzx  edx,WORD PTR [ebx+0xaa]
  eb842b:	test   edx,edx
  eb842d:	je     eb843e
  eb842f:	mov    esi,DWORD PTR [ebx+0x4c]
  eb8432:	xor    ecx,ecx
  eb8434:	cmp    DWORD PTR [esi+ecx*8],eax
  eb8437:	je     eb84b1
  eb8439:	inc    ecx
  eb843a:	cmp    ecx,edx
  eb843c:	jb     eb8434
  eb843e:	mov    DWORD PTR [esp+0x4],eax
  eb8442:	mov    DWORD PTR [esp],edi
  eb8445:	mov    DWORD PTR [esp+0x8],0x2d
  eb844d:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8451:	call   1c1964
  eb8456:	mov    ecx,eax
  eb8458:	jmp    eb84c0
  eb845a:	mov    esi,DWORD PTR [ecx+0xa0]
  eb8460:	test   esi,esi
  eb8462:	mov    edi,DWORD PTR [esp+0x54]
  eb8466:	je     eb9b86
  eb846c:	mov    eax,DWORD PTR [esp+0x60]
  eb8470:	mov    eax,DWORD PTR [eax]
  eb8472:	mov    ebx,DWORD PTR [esi]
  eb8474:	movzx  edx,WORD PTR [ebx+0xaa]
  eb847b:	test   edx,edx
  eb847d:	je     eb8492
  eb847f:	mov    edi,DWORD PTR [ebx+0x4c]
  eb8482:	xor    ecx,ecx
  eb8484:	cmp    DWORD PTR [edi+ecx*8],eax
  eb8487:	je     eb8539
  eb848d:	inc    ecx
  eb848e:	cmp    ecx,edx
  eb8490:	jb     eb8484
  eb8492:	mov    DWORD PTR [esp+0x4],eax
  eb8496:	mov    DWORD PTR [esp],esi
  eb8499:	mov    DWORD PTR [esp+0x8],0x11
  eb84a1:	mov    ebx,DWORD PTR [esp+0x5c]
  eb84a5:	call   1c1964
  eb84aa:	mov    ecx,eax
  eb84ac:	jmp    eb8548
  eb84b1:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb84b5:	lea    ecx,[ebx+eax*8+0x21c]
  eb84bc:	mov    ebx,DWORD PTR [esp+0x5c]
  eb84c0:	mov    eax,DWORD PTR [ecx+0x4]
  eb84c3:	mov    DWORD PTR [esp+0x4],eax
  eb84c7:	mov    DWORD PTR [esp],edi
  eb84ca:	mov    esi,ebx
  eb84cc:	call   DWORD PTR [ecx]
  eb84ce:	mov    eax,DWORD PTR [esp+0x54]
  eb84d2:	cmp    DWORD PTR [eax],0x0
  eb84d5:	je     eb9a6d
  eb84db:	cmp    DWORD PTR [esp+0x58],0x0
  eb84e0:	mov    edi,DWORD PTR [ebp+0x8]
  eb84e3:	mov    ebx,esi
  eb84e5:	je     eba833
  eb84eb:	lea    eax,[ebx+0x45664]
  eb84f1:	mov    eax,DWORD PTR [eax]
  eb84f3:	mov    DWORD PTR [esp],eax
  eb84f6:	call   20bfb2
  eb84fb:	mov    esi,eax
  eb84fd:	mov    DWORD PTR [esp],esi
  eb8500:	mov    DWORD PTR [esp+0x8],0x0
  eb8508:	mov    DWORD PTR [esp+0x4],0x0
  eb8510:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb8515:	mov    DWORD PTR [edi+0x140],esi
  eb851b:	mov    al,0x1
  eb851d:	cmp    BYTE PTR [edi+0x144],0x0
  eb8524:	jne    eba812
  eb852a:	mov    DWORD PTR [edi+0x148],0xd
  eb8534:	jmp    eba812
  eb8539:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb853d:	lea    ecx,[ebx+eax*8+0x13c]
  eb8544:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8548:	mov    eax,DWORD PTR [ecx+0x4]
  eb854b:	mov    DWORD PTR [esp+0x4],eax
  eb854f:	mov    DWORD PTR [esp],esi
  eb8552:	call   DWORD PTR [ecx]
  eb8554:	mov    esi,eax
  eb8556:	lea    eax,[ebx+0x44ebc]
  eb855c:	mov    eax,DWORD PTR [eax]
  eb855e:	test   BYTE PTR [eax+0xb2],0x1
  eb8565:	je     eb8575
  eb8567:	cmp    DWORD PTR [eax+0x60],0x0
  eb856b:	jne    eb8575
  eb856d:	mov    DWORD PTR [esp],eax
  eb8570:	call   1db0b8
  eb8575:	mov    DWORD PTR [esp+0x4],esi
  eb8579:	mov    DWORD PTR [esp+0xc],0x0
  eb8581:	mov    DWORD PTR [esp+0x8],0x0
  eb8589:	mov    DWORD PTR [esp],0x0
  eb8590:	call   16781a0  ; UnityEngine.Object::op_Equality
  eb8595:	test   al,al
  eb8597:	mov    edi,DWORD PTR [esp+0x54]
  eb859b:	jne    eb9b86
  eb85a1:	mov    eax,DWORD PTR [esp+0x4c]
  eb85a5:	mov    eax,DWORD PTR [eax]
  eb85a7:	test   eax,eax
  eb85a9:	je     eba82f
  eb85af:	mov    esi,DWORD PTR [eax+0xc]
  eb85b2:	test   esi,esi
  eb85b4:	je     eba82f
  eb85ba:	mov    eax,DWORD PTR [esp+0x60]
  eb85be:	mov    eax,DWORD PTR [eax]
  eb85c0:	mov    ebx,DWORD PTR [esi]
  eb85c2:	movzx  edx,WORD PTR [ebx+0xaa]
  eb85c9:	test   edx,edx
  eb85cb:	je     eb85dc
  eb85cd:	mov    edi,DWORD PTR [ebx+0x4c]
  eb85d0:	xor    ecx,ecx
  eb85d2:	cmp    DWORD PTR [edi+ecx*8],eax
  eb85d5:	je     eb85f8
  eb85d7:	inc    ecx
  eb85d8:	cmp    ecx,edx
  eb85da:	jb     eb85d2
  eb85dc:	mov    DWORD PTR [esp+0x4],eax
  eb85e0:	mov    DWORD PTR [esp],esi
  eb85e3:	mov    DWORD PTR [esp+0x8],0xf
  eb85eb:	mov    ebx,DWORD PTR [esp+0x5c]
  eb85ef:	call   1c1964
  eb85f4:	mov    ecx,eax
  eb85f6:	jmp    eb8607
  eb85f8:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb85fc:	lea    ecx,[ebx+eax*8+0x12c]
  eb8603:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8607:	mov    eax,DWORD PTR [ecx+0x4]
  eb860a:	mov    DWORD PTR [esp+0x4],eax
  eb860e:	mov    DWORD PTR [esp],esi
  eb8611:	call   DWORD PTR [ecx]
  eb8613:	test   eax,eax
  eb8615:	mov    edi,DWORD PTR [ebp+0x8]
  eb8618:	je     eb889c
  eb861e:	mov    eax,DWORD PTR [esp+0x54]
  eb8622:	mov    eax,DWORD PTR [eax]
  eb8624:	test   eax,eax
  eb8626:	je     eba82f
  eb862c:	cmp    BYTE PTR [eax+0x43],0x0
  eb8630:	je     eb889c
  eb8636:	mov    DWORD PTR [esp+0x4],0x0
  eb863e:	mov    DWORD PTR [esp],0x0
  eb8645:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8649:	call   109314e  ; DIContainerLogic::GetBattleService
  eb864e:	mov    ecx,DWORD PTR [esp+0x4c]
  eb8652:	mov    ecx,DWORD PTR [ecx]
  eb8654:	test   ecx,ecx
  eb8656:	je     eba82f
  eb865c:	mov    DWORD PTR [esp+0x58],eax
  eb8660:	mov    edi,DWORD PTR [ecx+0xc]
  eb8663:	test   edi,edi
  eb8665:	je     eba82f
  eb866b:	mov    eax,DWORD PTR [esp+0x60]
  eb866f:	mov    eax,DWORD PTR [eax]
  eb8671:	mov    esi,DWORD PTR [edi]
  eb8673:	movzx  edx,WORD PTR [esi+0xaa]
  eb867a:	test   edx,edx
  eb867c:	je     eb868d
  eb867e:	mov    ebx,DWORD PTR [esi+0x4c]
  eb8681:	xor    ecx,ecx
  eb8683:	cmp    DWORD PTR [ebx+ecx*8],eax
  eb8686:	je     eb86a9
  eb8688:	inc    ecx
  eb8689:	cmp    ecx,edx
  eb868b:	jb     eb8683
  eb868d:	mov    DWORD PTR [esp+0x4],eax
  eb8691:	mov    DWORD PTR [esp],edi
  eb8694:	mov    DWORD PTR [esp+0x8],0xf
  eb869c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb86a0:	call   1c1964
  eb86a5:	mov    ecx,eax
  eb86a7:	jmp    eb86b8
  eb86a9:	mov    eax,DWORD PTR [ebx+ecx*8+0x4]
  eb86ad:	lea    ecx,[esi+eax*8+0x12c]
  eb86b4:	mov    ebx,DWORD PTR [esp+0x5c]
  eb86b8:	mov    esi,DWORD PTR [esp+0x58]
  eb86bc:	mov    eax,DWORD PTR [ecx+0x4]
  eb86bf:	mov    DWORD PTR [esp+0x4],eax
  eb86c3:	mov    DWORD PTR [esp],edi
  eb86c6:	call   DWORD PTR [ecx]
  eb86c8:	test   eax,eax
  eb86ca:	je     eba833
  eb86d0:	lea    ecx,[ebx+0x4a0c8]
  eb86d6:	mov    DWORD PTR [esp+0x50],ecx
  eb86da:	mov    ecx,DWORD PTR [ecx]
  eb86dc:	mov    DWORD PTR [esp+0x4],ecx
  eb86e0:	mov    DWORD PTR [esp],eax
  eb86e3:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  eb86e8:	test   eax,eax
  eb86ea:	mov    edi,DWORD PTR [ebp+0x8]
  eb86ed:	je     eba833
  eb86f3:	mov    DWORD PTR [esp],eax
  eb86f6:	mov    DWORD PTR [esp+0x4],0x0
  eb86fe:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  eb8703:	mov    DWORD PTR [esp+0x58],eax
  eb8707:	mov    eax,DWORD PTR [esp+0x4c]
  eb870b:	mov    ecx,DWORD PTR [eax]
  eb870d:	test   ecx,ecx
  eb870f:	je     eba82f
  eb8715:	test   esi,esi
  eb8717:	je     eba82f
  eb871d:	mov    edx,DWORD PTR [edi+0x8]
  eb8720:	mov    ebx,DWORD PTR [edi+0xa0]
  eb8726:	mov    eax,DWORD PTR [ecx+0xc]
  eb8729:	mov    ecx,DWORD PTR [esp+0x40]
  eb872d:	mov    DWORD PTR [esp+0x14],ecx
  eb8731:	mov    DWORD PTR [esp+0x10],edx
  eb8735:	mov    DWORD PTR [esp+0xc],ebx
  eb8739:	mov    DWORD PTR [esp+0x8],eax
  eb873d:	mov    eax,DWORD PTR [esp+0x58]
  eb8741:	mov    DWORD PTR [esp+0x4],eax
  eb8745:	mov    DWORD PTR [esp],esi
  eb8748:	mov    DWORD PTR [esp+0x18],0x0
  eb8750:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8754:	call   50cdd1  ; ABH.Services.Logic.BattleService::ApplyPerk
  eb8759:	test   al,al
  eb875b:	je     eb889c
  eb8761:	mov    esi,DWORD PTR [edi+0xa0]
  eb8767:	test   esi,esi
  eb8769:	je     eba82f
  eb876f:	mov    eax,DWORD PTR [esp+0x60]
  eb8773:	mov    eax,DWORD PTR [eax]
  eb8775:	mov    ebx,DWORD PTR [esi]
  eb8777:	movzx  edx,WORD PTR [ebx+0xaa]
  eb877e:	test   edx,edx
  eb8780:	je     eb8791
  eb8782:	mov    edi,DWORD PTR [ebx+0x4c]
  eb8785:	xor    ecx,ecx
  eb8787:	cmp    DWORD PTR [edi+ecx*8],eax
  eb878a:	je     eb87ad
  eb878c:	inc    ecx
  eb878d:	cmp    ecx,edx
  eb878f:	jb     eb8787
  eb8791:	mov    DWORD PTR [esp+0x4],eax
  eb8795:	mov    DWORD PTR [esp],esi
  eb8798:	mov    DWORD PTR [esp+0x8],0x11
  eb87a0:	mov    ebx,DWORD PTR [esp+0x5c]
  eb87a4:	call   1c1964
  eb87a9:	mov    ecx,eax
  eb87ab:	jmp    eb87bc
  eb87ad:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb87b1:	lea    ecx,[ebx+eax*8+0x13c]
  eb87b8:	mov    ebx,DWORD PTR [esp+0x5c]
  eb87bc:	mov    eax,DWORD PTR [ecx+0x4]
  eb87bf:	mov    DWORD PTR [esp+0x4],eax
  eb87c3:	mov    DWORD PTR [esp],esi
  eb87c6:	call   DWORD PTR [ecx]
  eb87c8:	mov    ecx,eax
  eb87ca:	mov    eax,DWORD PTR [esp+0x4c]
  eb87ce:	mov    eax,DWORD PTR [eax]
  eb87d0:	test   eax,eax
  eb87d2:	je     eba833
  eb87d8:	mov    DWORD PTR [esp+0x58],ecx
  eb87dc:	mov    esi,DWORD PTR [eax+0xc]
  eb87df:	test   esi,esi
  eb87e1:	je     eba82f
  eb87e7:	mov    eax,DWORD PTR [esp+0x60]
  eb87eb:	mov    eax,DWORD PTR [eax]
  eb87ed:	mov    ebx,DWORD PTR [esi]
  eb87ef:	movzx  edx,WORD PTR [ebx+0xaa]
  eb87f6:	test   edx,edx
  eb87f8:	je     eb8809
  eb87fa:	mov    edi,DWORD PTR [ebx+0x4c]
  eb87fd:	xor    ecx,ecx
  eb87ff:	cmp    DWORD PTR [edi+ecx*8],eax
  eb8802:	je     eb8825
  eb8804:	inc    ecx
  eb8805:	cmp    ecx,edx
  eb8807:	jb     eb87ff
  eb8809:	mov    DWORD PTR [esp+0x4],eax
  eb880d:	mov    DWORD PTR [esp],esi
  eb8810:	mov    DWORD PTR [esp+0x8],0xf
  eb8818:	mov    ebx,DWORD PTR [esp+0x5c]
  eb881c:	call   1c1964
  eb8821:	mov    ecx,eax
  eb8823:	jmp    eb8834
  eb8825:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb8829:	lea    ecx,[ebx+eax*8+0x12c]
  eb8830:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8834:	mov    eax,DWORD PTR [ecx+0x4]
  eb8837:	mov    DWORD PTR [esp+0x4],eax
  eb883b:	mov    DWORD PTR [esp],esi
  eb883e:	call   DWORD PTR [ecx]
  eb8840:	test   eax,eax
  eb8842:	mov    edi,DWORD PTR [ebp+0x8]
  eb8845:	je     eba833
  eb884b:	mov    ecx,DWORD PTR [esp+0x50]
  eb884f:	mov    ecx,DWORD PTR [ecx]
  eb8851:	mov    DWORD PTR [esp+0x4],ecx
  eb8855:	mov    DWORD PTR [esp],eax
  eb8858:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  eb885d:	test   eax,eax
  eb885f:	je     eba833
  eb8865:	mov    DWORD PTR [esp],eax
  eb8868:	mov    DWORD PTR [esp+0x4],0x0
  eb8870:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  eb8875:	test   eax,eax
  eb8877:	je     eba833
  eb887d:	mov    DWORD PTR [esp],eax
  eb8880:	mov    DWORD PTR [esp+0x4],0x0
  eb8888:	call   179b16e  ; ABH.Shared.Models.Generic.EquipmentPerk::get_Type
  eb888d:	mov    ecx,DWORD PTR [esp+0x58]
  eb8891:	test   ecx,ecx
  eb8893:	je     eba82f
  eb8899:	mov    DWORD PTR [ecx+0x64],eax
  eb889c:	mov    DWORD PTR [esp+0x4],0x0
  eb88a4:	mov    DWORD PTR [esp],0x0
  eb88ab:	mov    ebx,DWORD PTR [esp+0x5c]
  eb88af:	call   109314e  ; DIContainerLogic::GetBattleService
  eb88b4:	mov    ecx,DWORD PTR [edi+0x13c]
  eb88ba:	test   ecx,ecx
  eb88bc:	je     eba82f
  eb88c2:	test   eax,eax
  eb88c4:	je     eba82f
  eb88ca:	movss  xmm0,DWORD PTR [edi+0xb0]
  eb88d2:	mov    edx,DWORD PTR [edi+0xa0]
  eb88d8:	mov    ecx,DWORD PTR [ecx+0x30]
  eb88db:	mov    DWORD PTR [esp+0x10],edx
  eb88df:	mov    DWORD PTR [esp+0xc],ecx
  eb88e3:	movss  DWORD PTR [esp+0x4],xmm0
  eb88e9:	mov    DWORD PTR [esp],eax
  eb88ec:	mov    DWORD PTR [esp+0x14],0x0
  eb88f4:	mov    DWORD PTR [esp+0x8],0x6
  eb88fc:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8900:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eb8905:	fstp   DWORD PTR [edi+0xb0]
  eb890b:	mov    eax,DWORD PTR [edi+0x13c]
  eb8911:	test   eax,eax
  eb8913:	mov    esi,DWORD PTR [esp+0x54]
  eb8917:	je     eba82f
  eb891d:	mov    eax,DWORD PTR [eax+0x7c]
  eb8920:	test   eax,eax
  eb8922:	je     eba82f
  eb8928:	mov    ecx,DWORD PTR [esp+0x3c]
  eb892c:	mov    ecx,DWORD PTR [ecx]
  eb892e:	mov    DWORD PTR [esp+0x8],ecx
  eb8932:	mov    DWORD PTR [esp+0x4],eax
  eb8936:	lea    eax,[esp+0x118]
  eb893d:	mov    DWORD PTR [esp],eax
  eb8940:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8944:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb8949:	sub    esp,0x4
  eb894c:	lea    eax,[edi+0xd8]
  eb8952:	mov    DWORD PTR [esp+0x58],eax
  eb8956:	movsd  xmm0,QWORD PTR [esp+0x118]
  eb895f:	movsd  xmm1,QWORD PTR [esp+0x120]
  eb8968:	movsd  QWORD PTR [edi+0xe0],xmm1
  eb8970:	movsd  QWORD PTR [edi+0xd8],xmm0
  eb8978:	jmp    eb898b
  eb897a:	movss  xmm0,DWORD PTR [esp+0x90]
  eb8983:	movss  DWORD PTR [edi+0xb0],xmm0
  eb898b:	mov    eax,DWORD PTR [esp+0x48]
  eb898f:	mov    eax,DWORD PTR [eax]
  eb8991:	mov    DWORD PTR [esp+0x4],eax
  eb8995:	mov    eax,DWORD PTR [esp+0x58]
  eb8999:	mov    DWORD PTR [esp],eax
  eb899c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb89a0:	call   447e4e
  eb89a5:	test   al,al
  eb89a7:	je     eb8a3e
  eb89ad:	mov    ebx,DWORD PTR [esp+0x5c]
  eb89b1:	lea    eax,[ebx+0x4a0d0]
  eb89b7:	mov    eax,DWORD PTR [eax]
  eb89b9:	mov    DWORD PTR [esp+0x4],eax
  eb89bd:	mov    eax,DWORD PTR [esp+0x58]
  eb89c1:	mov    DWORD PTR [esp],eax
  eb89c4:	call   447f1e
  eb89c9:	mov    ecx,DWORD PTR [edi+0x13c]
  eb89cf:	test   ecx,ecx
  eb89d1:	je     eb8a5c
  eb89d7:	mov    edx,esi
  eb89d9:	test   eax,eax
  eb89db:	je     eb8a6a
  eb89e1:	movss  xmm0,DWORD PTR [edi+0xb0]
  eb89e9:	mov    edi,DWORD PTR [edi+0xa0]
  eb89ef:	mov    esi,DWORD PTR [ecx+0x14]
  eb89f2:	mov    DWORD PTR [esp+0x50],esi
  eb89f6:	mov    ecx,DWORD PTR [ecx+0x30]
  eb89f9:	mov    ebx,DWORD PTR [esp+0x5c]
  eb89fd:	lea    esi,[ebx+0x4a0d4]
  eb8a03:	mov    esi,DWORD PTR [esi]
  eb8a05:	mov    DWORD PTR [esp+0x14],esi
  eb8a09:	mov    DWORD PTR [esp+0x10],edi
  eb8a0d:	mov    DWORD PTR [esp+0xc],ecx
  eb8a11:	mov    ecx,DWORD PTR [esp+0x50]
  eb8a15:	mov    DWORD PTR [esp+0x8],ecx
  eb8a19:	mov    edi,DWORD PTR [ebp+0x8]
  eb8a1c:	movss  DWORD PTR [esp+0x4],xmm0
  eb8a22:	mov    DWORD PTR [esp],eax
  eb8a25:	mov    esi,edx
  eb8a27:	call   17d9404  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<float, object, object, object, float>::Invoke
  eb8a2c:	fstp   DWORD PTR [esp+0x90]
  eb8a33:	jmp    eb897a
  eb8a38:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8a3c:	jmp    eb8a7a
  eb8a3e:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8a42:	lea    eax,[ebx+0x4a0dc]
  eb8a48:	mov    eax,DWORD PTR [eax]
  eb8a4a:	mov    DWORD PTR [esp+0x4],eax
  eb8a4e:	mov    eax,DWORD PTR [esp+0x58]
  eb8a52:	mov    DWORD PTR [esp],eax
  eb8a55:	call   447df6
  eb8a5a:	jmp    eb8aba
  eb8a5c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8a60:	call   1fbc48
  eb8a65:	call   ebbb41
  eb8a6a:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8a6e:	mov    esi,edx
  eb8a70:	call   1fbc48
  eb8a75:	jmp    eb9a84
  eb8a7a:	cmp    edx,0x1
  eb8a7d:	jne    eb9a7b
  eb8a83:	mov    DWORD PTR [esp],eax
  eb8a86:	call   1ba3f0
  eb8a8b:	mov    edi,DWORD PTR [eax]
  eb8a8d:	call   1b9ce0
  eb8a92:	lea    eax,[ebx+0x4a0dc]
  eb8a98:	mov    eax,DWORD PTR [eax]
  eb8a9a:	mov    DWORD PTR [esp+0x4],eax
  eb8a9e:	mov    eax,DWORD PTR [esp+0x58]
  eb8aa2:	mov    DWORD PTR [esp],eax
  eb8aa5:	call   447df6
  eb8aaa:	test   edi,edi
  eb8aac:	je     eb8aba
  eb8aae:	mov    DWORD PTR [esp],edi
  eb8ab1:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8ab5:	call   1fbb20
  eb8aba:	mov    eax,DWORD PTR [esi]
  eb8abc:	test   eax,eax
  eb8abe:	je     eba82f
  eb8ac4:	mov    DWORD PTR [esp+0x54],esi
  eb8ac8:	mov    edx,DWORD PTR [eax+0x30]
  eb8acb:	test   edx,edx
  eb8acd:	je     eba82f
  eb8ad3:	mov    eax,DWORD PTR [esp+0x60]
  eb8ad7:	mov    eax,DWORD PTR [eax]
  eb8ad9:	mov    ecx,DWORD PTR [edx]
  eb8adb:	mov    DWORD PTR [esp+0x58],edx
  eb8adf:	movzx  edx,WORD PTR [ecx+0xaa]
  eb8ae6:	test   edx,edx
  eb8ae8:	je     eb8af9
  eb8aea:	mov    edi,DWORD PTR [ecx+0x4c]
  eb8aed:	xor    esi,esi
  eb8aef:	cmp    DWORD PTR [edi+esi*8],eax
  eb8af2:	je     eb8b17
  eb8af4:	inc    esi
  eb8af5:	cmp    esi,edx
  eb8af7:	jb     eb8aef
  eb8af9:	mov    DWORD PTR [esp+0x4],eax
  eb8afd:	mov    esi,DWORD PTR [esp+0x58]
  eb8b01:	mov    DWORD PTR [esp],esi
  eb8b04:	mov    DWORD PTR [esp+0x8],0x77
  eb8b0c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8b10:	call   1c1964
  eb8b15:	jmp    eb8b2a
  eb8b17:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eb8b1b:	lea    eax,[ecx+eax*8+0x46c]
  eb8b22:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8b26:	mov    esi,DWORD PTR [esp+0x58]
  eb8b2a:	mov    ecx,DWORD PTR [eax+0x4]
  eb8b2d:	mov    DWORD PTR [esp+0x4],ecx
  eb8b31:	mov    DWORD PTR [esp],esi
  eb8b34:	call   DWORD PTR [eax]
  eb8b36:	fstp   DWORD PTR [esp+0x8c]
  eb8b3d:	movss  xmm0,DWORD PTR [esp+0x8c]
  eb8b46:	mov    eax,DWORD PTR [esp+0x60]
  eb8b4a:	mov    eax,DWORD PTR [eax]
  eb8b4c:	mov    ecx,DWORD PTR [ebp+0x8]
  eb8b4f:	mulss  xmm0,DWORD PTR [ecx+0xb4]
  eb8b57:	mulss  xmm0,DWORD PTR [ecx+0xb0]
  eb8b5f:	mov    ecx,DWORD PTR [esi]
  eb8b61:	movzx  edx,WORD PTR [ecx+0xaa]
  eb8b68:	test   edx,edx
  eb8b6a:	je     eb8b7b
  eb8b6c:	mov    edi,DWORD PTR [ecx+0x4c]
  eb8b6f:	xor    esi,esi
  eb8b71:	cmp    DWORD PTR [edi+esi*8],eax
  eb8b74:	je     eb8ba5
  eb8b76:	inc    esi
  eb8b77:	cmp    esi,edx
  eb8b79:	jb     eb8b71
  eb8b7b:	mov    DWORD PTR [esp+0x4],eax
  eb8b7f:	mov    esi,DWORD PTR [esp+0x58]
  eb8b83:	mov    DWORD PTR [esp],esi
  eb8b86:	mov    DWORD PTR [esp+0x8],0x78
  eb8b8e:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8b92:	movss  DWORD PTR [esp+0x50],xmm0
  eb8b98:	call   1c1964
  eb8b9d:	movss  xmm0,DWORD PTR [esp+0x50]
  eb8ba3:	jmp    eb8bb8
  eb8ba5:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eb8ba9:	lea    eax,[ecx+eax*8+0x474]
  eb8bb0:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8bb4:	mov    esi,DWORD PTR [esp+0x58]
  eb8bb8:	mov    ecx,DWORD PTR [eax+0x4]
  eb8bbb:	mov    DWORD PTR [esp+0x8],ecx
  eb8bbf:	movss  DWORD PTR [esp+0x4],xmm0
  eb8bc5:	mov    DWORD PTR [esp],esi
  eb8bc8:	call   DWORD PTR [eax]
  eb8bca:	mov    esi,DWORD PTR [ebp+0x8]
  eb8bcd:	mov    DWORD PTR [esi+0xe8],0x3f800000
  eb8bd7:	mov    DWORD PTR [esp+0x4],0x0
  eb8bdf:	mov    DWORD PTR [esp],0x0
  eb8be6:	call   109314e  ; DIContainerLogic::GetBattleService
  eb8beb:	mov    ecx,DWORD PTR [esi+0x13c]
  eb8bf1:	test   ecx,ecx
  eb8bf3:	je     eba833
  eb8bf9:	test   eax,eax
  eb8bfb:	je     eba833
  eb8c01:	movss  xmm0,DWORD PTR [esi+0xe8]
  eb8c09:	mov    edx,DWORD PTR [esi+0xa0]
  eb8c0f:	mov    ecx,DWORD PTR [ecx+0x30]
  eb8c12:	mov    DWORD PTR [esp+0x10],ecx
  eb8c16:	mov    DWORD PTR [esp+0xc],edx
  eb8c1a:	movss  DWORD PTR [esp+0x4],xmm0
  eb8c20:	mov    DWORD PTR [esp],eax
  eb8c23:	mov    DWORD PTR [esp+0x14],0x0
  eb8c2b:	mov    DWORD PTR [esp+0x8],0x2
  eb8c33:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eb8c38:	fstp   DWORD PTR [esi+0xe8]
  eb8c3e:	mov    eax,DWORD PTR [esi+0x13c]
  eb8c44:	test   eax,eax
  eb8c46:	je     eba833
  eb8c4c:	mov    eax,DWORD PTR [eax+0x78]
  eb8c4f:	test   eax,eax
  eb8c51:	je     eba833
  eb8c57:	mov    ecx,DWORD PTR [esp+0x3c]
  eb8c5b:	mov    ecx,DWORD PTR [ecx]
  eb8c5d:	mov    DWORD PTR [esp+0x8],ecx
  eb8c61:	mov    DWORD PTR [esp+0x4],eax
  eb8c65:	lea    eax,[esp+0x108]
  eb8c6c:	mov    DWORD PTR [esp],eax
  eb8c6f:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb8c74:	sub    esp,0x4
  eb8c77:	lea    edi,[esi+0xec]
  eb8c7d:	mov    DWORD PTR [esp+0x58],edi
  eb8c81:	movsd  xmm0,QWORD PTR [esp+0x108]
  eb8c8a:	movsd  xmm1,QWORD PTR [esp+0x110]
  eb8c93:	movsd  QWORD PTR [esi+0xf4],xmm1
  eb8c9b:	movsd  QWORD PTR [esi+0xec],xmm0
  eb8ca3:	jmp    eb8cb6
  eb8ca5:	movss  xmm0,DWORD PTR [esp+0x88]
  eb8cae:	movss  DWORD PTR [esi+0xe8],xmm0
  eb8cb6:	mov    eax,DWORD PTR [esp+0x48]
  eb8cba:	mov    eax,DWORD PTR [eax]
  eb8cbc:	mov    DWORD PTR [esp+0x4],eax
  eb8cc0:	mov    DWORD PTR [esp],edi
  eb8cc3:	call   447e4e
  eb8cc8:	test   al,al
  eb8cca:	je     eb8d41
  eb8ccc:	lea    eax,[ebx+0x4a0d0]
  eb8cd2:	mov    eax,DWORD PTR [eax]
  eb8cd4:	mov    DWORD PTR [esp+0x4],eax
  eb8cd8:	mov    DWORD PTR [esp],edi
  eb8cdb:	call   447f1e
  eb8ce0:	mov    ecx,DWORD PTR [esi+0x13c]
  eb8ce6:	test   ecx,ecx
  eb8ce8:	je     eb8d57
  eb8cea:	test   eax,eax
  eb8cec:	je     eb8d65
  eb8cee:	movss  xmm0,DWORD PTR [esi+0xe8]
  eb8cf6:	mov    edx,DWORD PTR [esi+0xa0]
  eb8cfc:	mov    edi,DWORD PTR [ecx+0x14]
  eb8cff:	mov    ecx,DWORD PTR [ecx+0x30]
  eb8d02:	lea    esi,[ebx+0x4a0d4]
  eb8d08:	mov    esi,DWORD PTR [esi]
  eb8d0a:	mov    DWORD PTR [esp+0x14],esi
  eb8d0e:	mov    DWORD PTR [esp+0x10],edx
  eb8d12:	mov    DWORD PTR [esp+0xc],ecx
  eb8d16:	mov    DWORD PTR [esp+0x8],edi
  eb8d1a:	mov    esi,DWORD PTR [ebp+0x8]
  eb8d1d:	movss  DWORD PTR [esp+0x4],xmm0
  eb8d23:	mov    DWORD PTR [esp],eax
  eb8d26:	mov    edi,DWORD PTR [esp+0x58]
  eb8d2a:	call   17d9404  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<float, object, object, object, float>::Invoke
  eb8d2f:	fstp   DWORD PTR [esp+0x88]
  eb8d36:	jmp    eb8ca5
  eb8d3b:	mov    DWORD PTR [esp+0x58],edi
  eb8d3f:	jmp    eb8d6f
  eb8d41:	lea    eax,[ebx+0x4a0dc]
  eb8d47:	mov    eax,DWORD PTR [eax]
  eb8d49:	mov    DWORD PTR [esp+0x4],eax
  eb8d4d:	mov    DWORD PTR [esp],edi
  eb8d50:	call   447df6
  eb8d55:	jmp    eb8daf
  eb8d57:	mov    DWORD PTR [esp+0x58],edi
  eb8d5b:	call   1fbc48
  eb8d60:	call   ebbb41
  eb8d65:	call   1fbc48
  eb8d6a:	jmp    eb9a89
  eb8d6f:	cmp    edx,0x1
  eb8d72:	jne    eb9a7b
  eb8d78:	mov    DWORD PTR [esp],eax
  eb8d7b:	call   1ba3f0
  eb8d80:	mov    edi,DWORD PTR [eax]
  eb8d82:	call   1b9ce0
  eb8d87:	lea    eax,[ebx+0x4a0dc]
  eb8d8d:	mov    eax,DWORD PTR [eax]
  eb8d8f:	mov    DWORD PTR [esp+0x4],eax
  eb8d93:	mov    eax,DWORD PTR [esp+0x58]
  eb8d97:	mov    DWORD PTR [esp],eax
  eb8d9a:	call   447df6
  eb8d9f:	test   edi,edi
  eb8da1:	je     eb8daf
  eb8da3:	mov    DWORD PTR [esp],edi
  eb8da6:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8daa:	call   1fbb20
  eb8daf:	movss  xmm0,DWORD PTR [esi+0xe8]
  eb8db7:	xorps  xmm1,xmm1
  eb8dba:	ucomiss xmm0,xmm1
  eb8dbd:	jbe    eb8e28
  eb8dbf:	mov    eax,DWORD PTR [esi+0x13c]
  eb8dc5:	test   eax,eax
  eb8dc7:	je     eba82f
  eb8dcd:	mov    edi,DWORD PTR [eax+0x30]
  eb8dd0:	test   edi,edi
  eb8dd2:	je     eba82f
  eb8dd8:	mov    eax,DWORD PTR [ebp+0x8]
  eb8ddb:	mov    eax,DWORD PTR [eax+0xa0]
  eb8de1:	mov    DWORD PTR [esp+0x50],eax
  eb8de5:	mov    eax,DWORD PTR [esp+0x60]
  eb8de9:	mov    eax,DWORD PTR [eax]
  eb8deb:	mov    ebx,DWORD PTR [edi]
  eb8ded:	movzx  edx,WORD PTR [ebx+0xaa]
  eb8df4:	test   edx,edx
  eb8df6:	je     eb8e0b
  eb8df8:	mov    esi,DWORD PTR [ebx+0x4c]
  eb8dfb:	xor    ecx,ecx
  eb8dfd:	cmp    DWORD PTR [esi+ecx*8],eax
  eb8e00:	je     eb8e9e
  eb8e06:	inc    ecx
  eb8e07:	cmp    ecx,edx
  eb8e09:	jb     eb8dfd
  eb8e0b:	mov    DWORD PTR [esp+0x4],eax
  eb8e0f:	mov    DWORD PTR [esp],edi
  eb8e12:	mov    DWORD PTR [esp+0x8],0x77
  eb8e1a:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8e1e:	call   1c1964
  eb8e23:	jmp    eb8ead
  eb8e28:	ucomiss xmm1,xmm0
  eb8e2b:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8e2f:	jbe    eb91de
  eb8e35:	mov    eax,DWORD PTR [esi+0x13c]
  eb8e3b:	test   eax,eax
  eb8e3d:	je     eba82f
  eb8e43:	mov    edi,DWORD PTR [eax+0x30]
  eb8e46:	test   edi,edi
  eb8e48:	je     eba82f
  eb8e4e:	mov    eax,DWORD PTR [ebp+0x8]
  eb8e51:	mov    eax,DWORD PTR [eax+0xa0]
  eb8e57:	mov    DWORD PTR [esp+0x50],eax
  eb8e5b:	mov    eax,DWORD PTR [esp+0x60]
  eb8e5f:	mov    eax,DWORD PTR [eax]
  eb8e61:	mov    ebx,DWORD PTR [edi]
  eb8e63:	movzx  edx,WORD PTR [ebx+0xaa]
  eb8e6a:	test   edx,edx
  eb8e6c:	je     eb8e81
  eb8e6e:	mov    esi,DWORD PTR [ebx+0x4c]
  eb8e71:	xor    ecx,ecx
  eb8e73:	cmp    DWORD PTR [esi+ecx*8],eax
  eb8e76:	je     eb9001
  eb8e7c:	inc    ecx
  eb8e7d:	cmp    ecx,edx
  eb8e7f:	jb     eb8e73
  eb8e81:	mov    DWORD PTR [esp+0x4],eax
  eb8e85:	mov    DWORD PTR [esp],edi
  eb8e88:	mov    DWORD PTR [esp+0x8],0x77
  eb8e90:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8e94:	call   1c1964
  eb8e99:	jmp    eb9010
  eb8e9e:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb8ea2:	lea    eax,[ebx+eax*8+0x46c]
  eb8ea9:	mov    ebx,DWORD PTR [esp+0x5c]
  eb8ead:	mov    ecx,DWORD PTR [eax+0x4]
  eb8eb0:	mov    DWORD PTR [esp+0x4],ecx
  eb8eb4:	mov    DWORD PTR [esp],edi
  eb8eb7:	call   DWORD PTR [eax]
  eb8eb9:	fstp   DWORD PTR [esp+0x7c]
  eb8ebd:	mov    ecx,DWORD PTR [ebp+0x8]
  eb8ec0:	mov    eax,DWORD PTR [ecx+0x13c]
  eb8ec6:	test   eax,eax
  eb8ec8:	je     eba833
  eb8ece:	mov    edx,DWORD PTR [eax+0x30]
  eb8ed1:	test   edx,edx
  eb8ed3:	je     eba833
  eb8ed9:	movss  xmm0,DWORD PTR [esp+0x7c]
  eb8edf:	movss  xmm1,DWORD PTR [ecx+0xe8]
  eb8ee7:	movss  DWORD PTR [esp+0x3c],xmm1
  eb8eed:	mov    eax,DWORD PTR [esp+0x60]
  eb8ef1:	mov    eax,DWORD PTR [eax]
  eb8ef3:	mov    ecx,DWORD PTR [edx]
  eb8ef5:	mov    DWORD PTR [esp+0x48],edx
  eb8ef9:	movzx  edx,WORD PTR [ecx+0xaa]
  eb8f00:	test   edx,edx
  eb8f02:	je     eb8f13
  eb8f04:	mov    esi,DWORD PTR [ecx+0x4c]
  eb8f07:	xor    edi,edi
  eb8f09:	cmp    DWORD PTR [esi+edi*8],eax
  eb8f0c:	je     eb8f33
  eb8f0e:	inc    edi
  eb8f0f:	cmp    edi,edx
  eb8f11:	jb     eb8f09
  eb8f13:	movss  DWORD PTR [esp+0x58],xmm0
  eb8f19:	mov    DWORD PTR [esp+0x4],eax
  eb8f1d:	mov    esi,DWORD PTR [esp+0x48]
  eb8f21:	mov    DWORD PTR [esp],esi
  eb8f24:	mov    DWORD PTR [esp+0x8],0x1d
  eb8f2c:	call   1c1964
  eb8f31:	jmp    eb8f48
  eb8f33:	movss  DWORD PTR [esp+0x58],xmm0
  eb8f39:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb8f3d:	lea    eax,[ecx+eax*8+0x19c]
  eb8f44:	mov    esi,DWORD PTR [esp+0x48]
  eb8f48:	mov    ecx,DWORD PTR [eax+0x4]
  eb8f4b:	mov    DWORD PTR [esp+0x4],ecx
  eb8f4f:	mov    DWORD PTR [esp],esi
  eb8f52:	call   DWORD PTR [eax]
  eb8f54:	fstp   DWORD PTR [esp+0x78]
  eb8f58:	mov    eax,DWORD PTR [esp+0x4c]
  eb8f5c:	mov    eax,DWORD PTR [eax]
  eb8f5e:	test   eax,eax
  eb8f60:	mov    ecx,DWORD PTR [esp+0x50]
  eb8f64:	je     eba833
  eb8f6a:	test   ecx,ecx
  eb8f6c:	movss  xmm0,DWORD PTR [esp+0x58]
  eb8f72:	je     eba833
  eb8f78:	mov    eax,DWORD PTR [eax+0xc]
  eb8f7b:	mov    DWORD PTR [esp+0x48],eax
  eb8f7f:	mov    eax,DWORD PTR [esp+0x60]
  eb8f83:	mov    eax,DWORD PTR [eax]
  eb8f85:	mulss  xmm0,DWORD PTR [esp+0x3c]
  eb8f8b:	mulss  xmm0,DWORD PTR [esp+0x78]
  eb8f91:	mov    ecx,DWORD PTR [ecx]
  eb8f93:	movzx  edx,WORD PTR [ecx+0xaa]
  eb8f9a:	test   edx,edx
  eb8f9c:	je     eb8fad
  eb8f9e:	mov    esi,DWORD PTR [ecx+0x4c]
  eb8fa1:	xor    edi,edi
  eb8fa3:	cmp    DWORD PTR [esi+edi*8],eax
  eb8fa6:	je     eb8fd3
  eb8fa8:	inc    edi
  eb8fa9:	cmp    edi,edx
  eb8fab:	jb     eb8fa3
  eb8fad:	mov    DWORD PTR [esp+0x4],eax
  eb8fb1:	mov    esi,DWORD PTR [esp+0x50]
  eb8fb5:	mov    DWORD PTR [esp],esi
  eb8fb8:	mov    DWORD PTR [esp+0x8],0x6f
  eb8fc0:	movss  DWORD PTR [esp+0x58],xmm0
  eb8fc6:	call   1c1964
  eb8fcb:	movss  xmm0,DWORD PTR [esp+0x58]
  eb8fd1:	jmp    eb8fe2
  eb8fd3:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb8fd7:	lea    eax,[ecx+eax*8+0x42c]
  eb8fde:	mov    esi,DWORD PTR [esp+0x50]
  eb8fe2:	mov    ecx,DWORD PTR [eax+0x4]
  eb8fe5:	mov    DWORD PTR [esp+0xc],ecx
  eb8fe9:	mov    ecx,DWORD PTR [esp+0x48]
  eb8fed:	mov    DWORD PTR [esp+0x8],ecx
  eb8ff1:	movss  DWORD PTR [esp+0x4],xmm0
  eb8ff7:	mov    DWORD PTR [esp],esi
  eb8ffa:	call   DWORD PTR [eax]
  eb8ffc:	jmp    eb91de
  eb9001:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb9005:	lea    eax,[ebx+eax*8+0x46c]
  eb900c:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9010:	mov    ecx,DWORD PTR [eax+0x4]
  eb9013:	mov    DWORD PTR [esp+0x4],ecx
  eb9017:	mov    DWORD PTR [esp],edi
  eb901a:	call   DWORD PTR [eax]
  eb901c:	fstp   DWORD PTR [esp+0x84]
  eb9023:	mov    ecx,DWORD PTR [ebp+0x8]
  eb9026:	mov    eax,DWORD PTR [ecx+0x13c]
  eb902c:	test   eax,eax
  eb902e:	je     eba833
  eb9034:	mov    edx,DWORD PTR [eax+0x30]
  eb9037:	test   edx,edx
  eb9039:	je     eba833
  eb903f:	movss  xmm0,DWORD PTR [esp+0x84]
  eb9048:	movss  DWORD PTR [esp+0x58],xmm0
  eb904e:	movss  xmm0,DWORD PTR [ecx+0xe8]
  eb9056:	movss  DWORD PTR [esp+0x3c],xmm0
  eb905c:	mov    eax,DWORD PTR [esp+0x60]
  eb9060:	mov    eax,DWORD PTR [eax]
  eb9062:	mov    ecx,DWORD PTR [edx]
  eb9064:	mov    DWORD PTR [esp+0x48],edx
  eb9068:	movzx  edx,WORD PTR [ecx+0xaa]
  eb906f:	test   edx,edx
  eb9071:	je     eb9082
  eb9073:	mov    esi,DWORD PTR [ecx+0x4c]
  eb9076:	xor    edi,edi
  eb9078:	cmp    DWORD PTR [esi+edi*8],eax
  eb907b:	je     eb909c
  eb907d:	inc    edi
  eb907e:	cmp    edi,edx
  eb9080:	jb     eb9078
  eb9082:	mov    DWORD PTR [esp+0x4],eax
  eb9086:	mov    esi,DWORD PTR [esp+0x48]
  eb908a:	mov    DWORD PTR [esp],esi
  eb908d:	mov    DWORD PTR [esp+0x8],0x1d
  eb9095:	call   1c1964
  eb909a:	jmp    eb90ab
  eb909c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb90a0:	lea    eax,[ecx+eax*8+0x19c]
  eb90a7:	mov    esi,DWORD PTR [esp+0x48]
  eb90ab:	mov    ecx,DWORD PTR [eax+0x4]
  eb90ae:	mov    DWORD PTR [esp+0x4],ecx
  eb90b2:	mov    DWORD PTR [esp],esi
  eb90b5:	call   DWORD PTR [eax]
  eb90b7:	fstp   DWORD PTR [esp+0x80]
  eb90be:	mov    eax,DWORD PTR [esp+0x4c]
  eb90c2:	mov    eax,DWORD PTR [eax]
  eb90c4:	test   eax,eax
  eb90c6:	mov    ecx,DWORD PTR [esp+0x50]
  eb90ca:	je     eba833
  eb90d0:	test   ecx,ecx
  eb90d2:	je     eba833
  eb90d8:	mov    eax,DWORD PTR [eax+0xc]
  eb90db:	mov    DWORD PTR [esp+0x48],eax
  eb90df:	mov    eax,DWORD PTR [esp+0x60]
  eb90e3:	mov    eax,DWORD PTR [eax]
  eb90e5:	movss  xmm0,DWORD PTR [esp+0x58]
  eb90eb:	mulss  xmm0,DWORD PTR [esp+0x3c]
  eb90f1:	mulss  xmm0,DWORD PTR [esp+0x80]
  eb90fa:	xorps  xmm0,XMMWORD PTR [ebx-0x6cbf24]
  eb9101:	movss  DWORD PTR [esp+0x58],xmm0
  eb9107:	mov    ecx,DWORD PTR [ecx]
  eb9109:	movzx  edx,WORD PTR [ecx+0xaa]
  eb9110:	test   edx,edx
  eb9112:	je     eb9123
  eb9114:	mov    esi,DWORD PTR [ecx+0x4c]
  eb9117:	xor    edi,edi
  eb9119:	cmp    DWORD PTR [esi+edi*8],eax
  eb911c:	je     eb913d
  eb911e:	inc    edi
  eb911f:	cmp    edi,edx
  eb9121:	jb     eb9119
  eb9123:	mov    DWORD PTR [esp+0x4],eax
  eb9127:	mov    esi,DWORD PTR [esp+0x50]
  eb912b:	mov    DWORD PTR [esp],esi
  eb912e:	mov    DWORD PTR [esp+0x8],0x70
  eb9136:	call   1c1964
  eb913b:	jmp    eb914c
  eb913d:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  eb9141:	lea    eax,[ecx+eax*8+0x434]
  eb9148:	mov    esi,DWORD PTR [esp+0x50]
  eb914c:	mov    ecx,DWORD PTR [eax+0x4]
  eb914f:	mov    DWORD PTR [esp+0xc],ecx
  eb9153:	mov    ecx,DWORD PTR [esp+0x48]
  eb9157:	mov    DWORD PTR [esp+0x8],ecx
  eb915b:	movss  xmm0,DWORD PTR [esp+0x58]
  eb9161:	movss  DWORD PTR [esp+0x4],xmm0
  eb9167:	mov    DWORD PTR [esp],esi
  eb916a:	call   DWORD PTR [eax]
  eb916c:	mov    DWORD PTR [esp+0x4],0x0
  eb9174:	mov    DWORD PTR [esp],0x0
  eb917b:	call   109314e  ; DIContainerLogic::GetBattleService
  eb9180:	test   eax,eax
  eb9182:	mov    esi,DWORD PTR [ebp+0x8]
  eb9185:	mov    edx,esi
  eb9187:	je     eba833
  eb918d:	mov    ecx,DWORD PTR [edx+0x8]
  eb9190:	mov    edx,DWORD PTR [edx+0xa0]
  eb9196:	mov    DWORD PTR [esp+0x8],ecx
  eb919a:	mov    DWORD PTR [esp+0x4],edx
  eb919e:	mov    DWORD PTR [esp],eax
  eb91a1:	mov    DWORD PTR [esp+0x24],0x0
  eb91a9:	mov    DWORD PTR [esp+0x20],0x0
  eb91b1:	mov    DWORD PTR [esp+0x1c],0x0
  eb91b9:	mov    DWORD PTR [esp+0x18],0x0
  eb91c1:	mov    DWORD PTR [esp+0x14],0x0
  eb91c9:	mov    DWORD PTR [esp+0x10],0x0
  eb91d1:	mov    DWORD PTR [esp+0xc],0x1
  eb91d9:	call   50a1af  ; ABH.Services.Logic.BattleService::HealCurrentTurn
  eb91de:	mov    eax,DWORD PTR [esp+0x54]
  eb91e2:	mov    edx,DWORD PTR [eax]
  eb91e4:	test   edx,edx
  eb91e6:	je     eba833
  eb91ec:	cmp    BYTE PTR [edx+0x44],0x0
  eb91f0:	mov    ecx,DWORD PTR [esp+0x4c]
  eb91f4:	jne    eb9300
  eb91fa:	mov    eax,DWORD PTR [ecx]
  eb91fc:	test   eax,eax
  eb91fe:	je     eba82f
  eb9204:	mov    esi,DWORD PTR [eax+0xc]
  eb9207:	test   esi,esi
  eb9209:	je     eba82f
  eb920f:	mov    eax,DWORD PTR [esp+0x60]
  eb9213:	mov    eax,DWORD PTR [eax]
  eb9215:	mov    ebx,DWORD PTR [esi]
  eb9217:	movzx  edx,WORD PTR [ebx+0xaa]
  eb921e:	test   edx,edx
  eb9220:	je     eb9231
  eb9222:	mov    edi,DWORD PTR [ebx+0x4c]
  eb9225:	xor    ecx,ecx
  eb9227:	cmp    DWORD PTR [edi+ecx*8],eax
  eb922a:	je     eb924d
  eb922c:	inc    ecx
  eb922d:	cmp    ecx,edx
  eb922f:	jb     eb9227
  eb9231:	mov    DWORD PTR [esp+0x4],eax
  eb9235:	mov    DWORD PTR [esp],esi
  eb9238:	mov    DWORD PTR [esp+0x8],0x2d
  eb9240:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9244:	call   1c1964
  eb9249:	mov    ecx,eax
  eb924b:	jmp    eb925c
  eb924d:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb9251:	lea    ecx,[ebx+eax*8+0x21c]
  eb9258:	mov    ebx,DWORD PTR [esp+0x5c]
  eb925c:	mov    eax,DWORD PTR [ecx+0x4]
  eb925f:	mov    DWORD PTR [esp+0x4],eax
  eb9263:	mov    DWORD PTR [esp],esi
  eb9266:	call   DWORD PTR [ecx]
  eb9268:	test   eax,eax
  eb926a:	mov    edi,DWORD PTR [ebp+0x8]
  eb926d:	je     eb9362
  eb9273:	mov    eax,DWORD PTR [esp+0x4c]
  eb9277:	mov    eax,DWORD PTR [eax]
  eb9279:	test   eax,eax
  eb927b:	je     eba82f
  eb9281:	mov    esi,DWORD PTR [eax+0xc]
  eb9284:	test   esi,esi
  eb9286:	je     eba81d
  eb928c:	mov    eax,DWORD PTR [esp+0x60]
  eb9290:	mov    eax,DWORD PTR [eax]
  eb9292:	mov    ebx,DWORD PTR [esi]
  eb9294:	movzx  edx,WORD PTR [ebx+0xaa]
  eb929b:	test   edx,edx
  eb929d:	je     eb92ae
  eb929f:	mov    edi,DWORD PTR [ebx+0x4c]
  eb92a2:	xor    ecx,ecx
  eb92a4:	cmp    DWORD PTR [edi+ecx*8],eax
  eb92a7:	je     eb92ca
  eb92a9:	inc    ecx
  eb92aa:	cmp    ecx,edx
  eb92ac:	jb     eb92a4
  eb92ae:	mov    DWORD PTR [esp+0x4],eax
  eb92b2:	mov    DWORD PTR [esp],esi
  eb92b5:	mov    DWORD PTR [esp+0x8],0x2d
  eb92bd:	mov    ebx,DWORD PTR [esp+0x5c]
  eb92c1:	call   1c1964
  eb92c6:	mov    ecx,eax
  eb92c8:	jmp    eb92d9
  eb92ca:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb92ce:	lea    ecx,[ebx+eax*8+0x21c]
  eb92d5:	mov    ebx,DWORD PTR [esp+0x5c]
  eb92d9:	mov    eax,DWORD PTR [ecx+0x4]
  eb92dc:	mov    DWORD PTR [esp+0x4],eax
  eb92e0:	mov    DWORD PTR [esp],esi
  eb92e3:	call   DWORD PTR [ecx]
  eb92e5:	test   eax,eax
  eb92e7:	mov    edi,DWORD PTR [ebp+0x8]
  eb92ea:	je     eba81d
  eb92f0:	cmp    DWORD PTR [eax+0x8],0x4
  eb92f4:	jne    eb9362
  eb92f6:	mov    eax,DWORD PTR [esp+0x54]
  eb92fa:	mov    edx,DWORD PTR [eax]
  eb92fc:	mov    ecx,DWORD PTR [esp+0x4c]
  eb9300:	mov    DWORD PTR [esp+0x54],eax
  eb9304:	mov    eax,DWORD PTR [ecx]
  eb9306:	test   eax,eax
  eb9308:	je     eba81d
  eb930e:	mov    DWORD PTR [esp+0x58],edx
  eb9312:	mov    edi,DWORD PTR [eax+0xc]
  eb9315:	test   edi,edi
  eb9317:	je     eba81d
  eb931d:	mov    eax,DWORD PTR [esp+0x60]
  eb9321:	mov    eax,DWORD PTR [eax]
  eb9323:	mov    ebx,DWORD PTR [edi]
  eb9325:	movzx  edx,WORD PTR [ebx+0xaa]
  eb932c:	test   edx,edx
  eb932e:	je     eb9343
  eb9330:	mov    esi,DWORD PTR [ebx+0x4c]
  eb9333:	xor    ecx,ecx
  eb9335:	cmp    DWORD PTR [esi+ecx*8],eax
  eb9338:	je     eb963b
  eb933e:	inc    ecx
  eb933f:	cmp    ecx,edx
  eb9341:	jb     eb9335
  eb9343:	mov    DWORD PTR [esp+0x4],eax
  eb9347:	mov    DWORD PTR [esp],edi
  eb934a:	mov    DWORD PTR [esp+0x8],0x2d
  eb9352:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9356:	call   1c1964
  eb935b:	mov    ecx,eax
  eb935d:	jmp    eb964a
  eb9362:	mov    DWORD PTR [esp+0x4],0x0
  eb936a:	mov    DWORD PTR [esp],0x0
  eb9371:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9375:	call   109314e  ; DIContainerLogic::GetBattleService
  eb937a:	mov    ecx,DWORD PTR [edi+0x14c]
  eb9380:	test   ecx,ecx
  eb9382:	je     eba81d
  eb9388:	test   eax,eax
  eb938a:	je     eba81d
  eb9390:	mov    edx,DWORD PTR [edi+0x8]
  eb9393:	mov    ecx,DWORD PTR [ecx+0xc]
  eb9396:	movzx  esi,BYTE PTR [edi+0x88]
  eb939d:	mov    DWORD PTR [esp+0xc],esi
  eb93a1:	mov    DWORD PTR [esp+0x8],ecx
  eb93a5:	mov    DWORD PTR [esp+0x4],edx
  eb93a9:	mov    DWORD PTR [esp],eax
  eb93ac:	mov    DWORD PTR [esp+0x10],0x0
  eb93b4:	mov    ebx,DWORD PTR [esp+0x5c]
  eb93b8:	call   50c202  ; ABH.Services.Logic.BattleService::AddRageForAttack
  eb93bd:	mov    DWORD PTR [esp+0x4],0x0
  eb93c5:	mov    DWORD PTR [esp],0x0
  eb93cc:	call   109314e  ; DIContainerLogic::GetBattleService
  eb93d1:	mov    ebx,eax
  eb93d3:	mov    ecx,DWORD PTR [edi+0x14c]
  eb93d9:	test   ecx,ecx
  eb93db:	je     eba81d
  eb93e1:	mov    eax,DWORD PTR [esp+0x54]
  eb93e5:	mov    edx,DWORD PTR [eax]
  eb93e7:	test   edx,edx
  eb93e9:	je     eba81d
  eb93ef:	test   ebx,ebx
  eb93f1:	je     eba81d
  eb93f7:	mov    eax,DWORD PTR [edi+0x8]
  eb93fa:	mov    esi,edi
  eb93fc:	mov    edi,DWORD PTR [esi+0xa0]
  eb9402:	mov    ecx,DWORD PTR [ecx+0xc]
  eb9405:	movzx  edx,BYTE PTR [edx+0x45]
  eb9409:	mov    DWORD PTR [esp+0x10],edx
  eb940d:	mov    DWORD PTR [esp+0xc],ecx
  eb9411:	mov    DWORD PTR [esp+0x8],eax
  eb9415:	mov    DWORD PTR [esp+0x4],edi
  eb9419:	mov    edi,esi
  eb941b:	mov    DWORD PTR [esp],ebx
  eb941e:	mov    DWORD PTR [esp+0x20],0x0
  eb9426:	mov    DWORD PTR [esp+0x1c],0x0
  eb942e:	mov    DWORD PTR [esp+0x18],0x0
  eb9436:	mov    DWORD PTR [esp+0x14],0x1
  eb943e:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9442:	call   508d21  ; ABH.Services.Logic.BattleService::DealDamageFromCurrentTurn
  eb9447:	mov    DWORD PTR [edi+0xfc],eax
  eb944d:	mov    ecx,DWORD PTR [edi+0x8]
  eb9450:	test   ecx,ecx
  eb9452:	je     eba81d
  eb9458:	cvtsi2ss xmm0,eax
  eb945c:	addss  xmm0,DWORD PTR [ecx+0x94]
  eb9464:	movss  DWORD PTR [ecx+0x94],xmm0
  eb946c:	mov    eax,DWORD PTR [edi+0x94]
  eb9472:	test   eax,eax
  eb9474:	je     eba81d
  eb947a:	mov    ecx,DWORD PTR [edi+0x9c]
  eb9480:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9484:	lea    edx,[ebx+0x48d88]
  eb948a:	mov    edx,DWORD PTR [edx]
  eb948c:	mov    DWORD PTR [esp+0x8],edx
  eb9490:	mov    DWORD PTR [esp+0x4],ecx
  eb9494:	mov    DWORD PTR [esp],eax
  eb9497:	call   5dc626  ; System.Collections.Generic.Dictionary`2<int, int>::ContainsKey
  eb949c:	test   al,al
  eb949e:	jne    eb94d8
  eb94a0:	mov    eax,DWORD PTR [edi+0x94]
  eb94a6:	test   eax,eax
  eb94a8:	je     eba81d
  eb94ae:	mov    ecx,DWORD PTR [edi+0x9c]
  eb94b4:	mov    ebx,DWORD PTR [esp+0x5c]
  eb94b8:	lea    edx,[ebx+0x4a0b0]
  eb94be:	mov    edx,DWORD PTR [edx]
  eb94c0:	mov    DWORD PTR [esp+0xc],edx
  eb94c4:	mov    DWORD PTR [esp+0x4],ecx
  eb94c8:	mov    DWORD PTR [esp],eax
  eb94cb:	mov    DWORD PTR [esp+0x8],0x0
  eb94d3:	call   5dc0cb  ; System.Collections.Generic.Dictionary`2<int, int>::Add
  eb94d8:	mov    esi,DWORD PTR [edi+0x94]
  eb94de:	test   esi,esi
  eb94e0:	je     eba81d
  eb94e6:	mov    ecx,DWORD PTR [edi+0x9c]
  eb94ec:	mov    DWORD PTR [esp+0x58],ecx
  eb94f0:	mov    ebx,DWORD PTR [esp+0x5c]
  eb94f4:	lea    eax,[ebx+0x48d8c]
  eb94fa:	mov    eax,DWORD PTR [eax]
  eb94fc:	mov    DWORD PTR [esp+0x8],eax
  eb9500:	mov    DWORD PTR [esp+0x4],ecx
  eb9504:	mov    DWORD PTR [esp],esi
  eb9507:	call   5daf58  ; System.Collections.Generic.Dictionary`2<int, int>::get_Item
  eb950c:	add    eax,DWORD PTR [edi+0xfc]
  eb9512:	lea    ecx,[ebx+0x48d78]
  eb9518:	mov    ecx,DWORD PTR [ecx]
  eb951a:	mov    DWORD PTR [esp+0xc],ecx
  eb951e:	mov    DWORD PTR [esp+0x8],eax
  eb9522:	mov    eax,DWORD PTR [esp+0x58]
  eb9526:	mov    DWORD PTR [esp+0x4],eax
  eb952a:	mov    DWORD PTR [esp],esi
  eb952d:	mov    esi,ebx
  eb952f:	call   5db20e  ; System.Collections.Generic.Dictionary`2<int, int>::set_Item
  eb9534:	mov    eax,DWORD PTR [edi+0x13c]
  eb953a:	test   eax,eax
  eb953c:	je     eba82b
  eb9542:	mov    eax,DWORD PTR [eax+0x70]
  eb9545:	test   eax,eax
  eb9547:	je     eba82b
  eb954d:	mov    ecx,DWORD PTR [esp+0x38]
  eb9551:	mov    ecx,DWORD PTR [ecx]
  eb9553:	mov    DWORD PTR [esp+0x8],ecx
  eb9557:	mov    DWORD PTR [esp+0x4],eax
  eb955b:	lea    eax,[esp+0xf8]
  eb9562:	mov    DWORD PTR [esp],eax
  eb9565:	mov    ebx,esi
  eb9567:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eb956c:	sub    esp,0x4
  eb956f:	lea    eax,[edi+0x100]
  eb9575:	mov    DWORD PTR [esp+0x58],eax
  eb9579:	movsd  xmm0,QWORD PTR [esp+0xf8]
  eb9582:	movsd  xmm1,QWORD PTR [esp+0x100]
  eb958b:	movsd  QWORD PTR [edi+0x108],xmm1
  eb9593:	movsd  QWORD PTR [edi+0x100],xmm0
  eb959b:	mov    eax,DWORD PTR [esp+0x44]
  eb959f:	mov    eax,DWORD PTR [eax]
  eb95a1:	mov    DWORD PTR [esp+0x4],eax
  eb95a5:	mov    eax,DWORD PTR [esp+0x58]
  eb95a9:	mov    DWORD PTR [esp],eax
  eb95ac:	mov    ebx,esi
  eb95ae:	call   447e4e
  eb95b3:	test   al,al
  eb95b5:	je     eb96c3
  eb95bb:	lea    eax,[esi+0x4a0b8]
  eb95c1:	mov    eax,DWORD PTR [eax]
  eb95c3:	mov    DWORD PTR [esp+0x4],eax
  eb95c7:	mov    eax,DWORD PTR [esp+0x58]
  eb95cb:	mov    DWORD PTR [esp],eax
  eb95ce:	mov    ebx,esi
  eb95d0:	call   447f1e
  eb95d5:	mov    ecx,DWORD PTR [edi+0x13c]
  eb95db:	test   ecx,ecx
  eb95dd:	je     eb96e3
  eb95e3:	test   eax,eax
  eb95e5:	je     eb96ef
  eb95eb:	mov    edx,DWORD PTR [edi+0xa0]
  eb95f1:	mov    ebx,DWORD PTR [ecx+0x14]
  eb95f4:	mov    DWORD PTR [esp+0x50],ebx
  eb95f8:	mov    ecx,DWORD PTR [ecx+0x30]
  eb95fb:	cvtsi2ss xmm0,DWORD PTR [edi+0xfc]
  eb9603:	mov    ebx,esi
  eb9605:	lea    esi,[ebx+0x4a0bc]
  eb960b:	mov    esi,DWORD PTR [esi]
  eb960d:	mov    DWORD PTR [esp+0x14],esi
  eb9611:	mov    DWORD PTR [esp+0x10],edx
  eb9615:	mov    DWORD PTR [esp+0xc],ecx
  eb9619:	mov    ecx,DWORD PTR [esp+0x50]
  eb961d:	mov    DWORD PTR [esp+0x8],ecx
  eb9621:	movss  DWORD PTR [esp+0x4],xmm0
  eb9627:	mov    DWORD PTR [esp],eax
  eb962a:	mov    esi,ebx
  eb962c:	call   15f5a37  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::Invoke | System.Action`4<float, object, object, object>::Invoke
  eb9631:	jmp    eb959b
  eb9636:	jmp    eb96fb
  eb963b:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb963f:	lea    ecx,[ebx+eax*8+0x21c]
  eb9646:	mov    ebx,DWORD PTR [esp+0x5c]
  eb964a:	mov    eax,DWORD PTR [ecx+0x4]
  eb964d:	mov    DWORD PTR [esp+0x4],eax
  eb9651:	mov    DWORD PTR [esp],edi
  eb9654:	mov    esi,ebx
  eb9656:	call   DWORD PTR [ecx]
  eb9658:	mov    eax,DWORD PTR [esp+0x54]
  eb965c:	cmp    DWORD PTR [eax],0x0
  eb965f:	je     eba82b
  eb9665:	cmp    DWORD PTR [esp+0x58],0x0
  eb966a:	mov    edi,DWORD PTR [ebp+0x8]
  eb966d:	mov    ebx,esi
  eb966f:	je     eba821
  eb9675:	lea    eax,[ebx+0x45664]
  eb967b:	mov    eax,DWORD PTR [eax]
  eb967d:	mov    DWORD PTR [esp],eax
  eb9680:	call   20bfb2
  eb9685:	mov    esi,eax
  eb9687:	mov    DWORD PTR [esp],esi
  eb968a:	mov    DWORD PTR [esp+0x8],0x0
  eb9692:	mov    DWORD PTR [esp+0x4],0x0
  eb969a:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eb969f:	mov    DWORD PTR [edi+0x140],esi
  eb96a5:	mov    al,0x1
  eb96a7:	cmp    BYTE PTR [edi+0x144],0x0
  eb96ae:	jne    eba812
  eb96b4:	mov    DWORD PTR [edi+0x148],0xe
  eb96be:	jmp    eba812
  eb96c3:	mov    DWORD PTR [esp+0x5c],esi
  eb96c7:	lea    eax,[esi+0x4a0c4]
  eb96cd:	mov    eax,DWORD PTR [eax]
  eb96cf:	mov    DWORD PTR [esp+0x4],eax
  eb96d3:	mov    eax,DWORD PTR [esp+0x58]
  eb96d7:	mov    DWORD PTR [esp],eax
  eb96da:	mov    ebx,esi
  eb96dc:	call   447df6
  eb96e1:	jmp    eb9741
  eb96e3:	mov    ebx,esi
  eb96e5:	call   1fbc48
  eb96ea:	jmp    eb9a8e
  eb96ef:	mov    ebx,esi
  eb96f1:	call   1fbc48
  eb96f6:	jmp    eb9a8e
  eb96fb:	cmp    edx,0x1
  eb96fe:	mov    ebx,esi
  eb9700:	jne    eb9a7b
  eb9706:	mov    DWORD PTR [esp],eax
  eb9709:	call   1ba3f0
  eb970e:	mov    DWORD PTR [esp+0x5c],ebx
  eb9712:	mov    edi,DWORD PTR [eax]
  eb9714:	call   1b9ce0
  eb9719:	lea    eax,[ebx+0x4a0c4]
  eb971f:	mov    eax,DWORD PTR [eax]
  eb9721:	mov    DWORD PTR [esp+0x4],eax
  eb9725:	mov    eax,DWORD PTR [esp+0x58]
  eb9729:	mov    DWORD PTR [esp],eax
  eb972c:	call   447df6
  eb9731:	test   edi,edi
  eb9733:	je     eb9741
  eb9735:	mov    DWORD PTR [esp],edi
  eb9738:	mov    ebx,DWORD PTR [esp+0x5c]
  eb973c:	call   1fbb20
  eb9741:	mov    edi,DWORD PTR [ebp+0x8]
  eb9744:	cmp    DWORD PTR [edi+0xfc],0x0
  eb974b:	jle    eb9a64
  eb9751:	mov    eax,DWORD PTR [esp+0x4c]
  eb9755:	mov    eax,DWORD PTR [eax]
  eb9757:	test   eax,eax
  eb9759:	je     eba81d
  eb975f:	mov    esi,DWORD PTR [eax+0xc]
  eb9762:	test   esi,esi
  eb9764:	je     eba81d
  eb976a:	mov    eax,DWORD PTR [esp+0x60]
  eb976e:	mov    eax,DWORD PTR [eax]
  eb9770:	mov    ebx,DWORD PTR [esi]
  eb9772:	movzx  edx,WORD PTR [ebx+0xaa]
  eb9779:	test   edx,edx
  eb977b:	je     eb978c
  eb977d:	mov    edi,DWORD PTR [ebx+0x4c]
  eb9780:	xor    ecx,ecx
  eb9782:	cmp    DWORD PTR [edi+ecx*8],eax
  eb9785:	je     eb97a8
  eb9787:	inc    ecx
  eb9788:	cmp    ecx,edx
  eb978a:	jb     eb9782
  eb978c:	mov    DWORD PTR [esp+0x4],eax
  eb9790:	mov    DWORD PTR [esp],esi
  eb9793:	mov    DWORD PTR [esp+0x8],0xf
  eb979b:	mov    ebx,DWORD PTR [esp+0x5c]
  eb979f:	call   1c1964
  eb97a4:	mov    ecx,eax
  eb97a6:	jmp    eb97b7
  eb97a8:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb97ac:	lea    ecx,[ebx+eax*8+0x12c]
  eb97b3:	mov    ebx,DWORD PTR [esp+0x5c]
  eb97b7:	mov    DWORD PTR [esp+0x5c],ebx
  eb97bb:	mov    eax,DWORD PTR [ecx+0x4]
  eb97be:	mov    DWORD PTR [esp+0x4],eax
  eb97c2:	mov    DWORD PTR [esp],esi
  eb97c5:	call   DWORD PTR [ecx]
  eb97c7:	test   eax,eax
  eb97c9:	mov    edi,DWORD PTR [ebp+0x8]
  eb97cc:	je     eb9a64
  eb97d2:	mov    eax,DWORD PTR [esp+0x54]
  eb97d6:	mov    eax,DWORD PTR [eax]
  eb97d8:	test   eax,eax
  eb97da:	je     eba81d
  eb97e0:	cmp    BYTE PTR [eax+0x43],0x0
  eb97e4:	je     eb9a64
  eb97ea:	mov    DWORD PTR [esp+0x4],0x0
  eb97f2:	mov    DWORD PTR [esp],0x0
  eb97f9:	mov    ebx,DWORD PTR [esp+0x5c]
  eb97fd:	call   109314e  ; DIContainerLogic::GetBattleService
  eb9802:	mov    DWORD PTR [esp+0x58],eax
  eb9806:	mov    eax,DWORD PTR [esp+0x4c]
  eb980a:	mov    eax,DWORD PTR [eax]
  eb980c:	test   eax,eax
  eb980e:	je     eba81d
  eb9814:	mov    edi,DWORD PTR [eax+0xc]
  eb9817:	test   edi,edi
  eb9819:	je     eba81d
  eb981f:	mov    eax,DWORD PTR [esp+0x60]
  eb9823:	mov    eax,DWORD PTR [eax]
  eb9825:	mov    ebx,DWORD PTR [edi]
  eb9827:	movzx  edx,WORD PTR [ebx+0xaa]
  eb982e:	test   edx,edx
  eb9830:	je     eb9841
  eb9832:	mov    esi,DWORD PTR [ebx+0x4c]
  eb9835:	xor    ecx,ecx
  eb9837:	cmp    DWORD PTR [esi+ecx*8],eax
  eb983a:	je     eb985d
  eb983c:	inc    ecx
  eb983d:	cmp    ecx,edx
  eb983f:	jb     eb9837
  eb9841:	mov    DWORD PTR [esp+0x4],eax
  eb9845:	mov    DWORD PTR [esp],edi
  eb9848:	mov    DWORD PTR [esp+0x8],0xf
  eb9850:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9854:	call   1c1964
  eb9859:	mov    ecx,eax
  eb985b:	jmp    eb9868
  eb985d:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eb9861:	lea    ecx,[ebx+eax*8+0x12c]
  eb9868:	mov    eax,DWORD PTR [ecx+0x4]
  eb986b:	mov    DWORD PTR [esp+0x4],eax
  eb986f:	mov    DWORD PTR [esp],edi
  eb9872:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9876:	call   DWORD PTR [ecx]
  eb9878:	test   eax,eax
  eb987a:	je     eba81d
  eb9880:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9884:	lea    ecx,[ebx+0x4a0c8]
  eb988a:	mov    DWORD PTR [esp+0x54],ecx
  eb988e:	mov    ecx,DWORD PTR [ecx]
  eb9890:	mov    DWORD PTR [esp+0x4],ecx
  eb9894:	mov    DWORD PTR [esp],eax
  eb9897:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  eb989c:	test   eax,eax
  eb989e:	je     eba81d
  eb98a4:	mov    DWORD PTR [esp],eax
  eb98a7:	mov    DWORD PTR [esp+0x4],0x0
  eb98af:	mov    ebx,DWORD PTR [esp+0x5c]
  eb98b3:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  eb98b8:	mov    ebx,eax
  eb98ba:	mov    ecx,DWORD PTR [esp+0x4c]
  eb98be:	mov    ecx,DWORD PTR [ecx]
  eb98c0:	test   ecx,ecx
  eb98c2:	je     eba81d
  eb98c8:	cmp    DWORD PTR [esp+0x58],0x0
  eb98cd:	je     eba81d
  eb98d3:	mov    eax,DWORD PTR [ebp+0x8]
  eb98d6:	mov    edx,DWORD PTR [eax+0x8]
  eb98d9:	mov    esi,DWORD PTR [eax+0xa0]
  eb98df:	mov    ecx,DWORD PTR [ecx+0xc]
  eb98e2:	mov    edi,DWORD PTR [esp+0x40]
  eb98e6:	mov    DWORD PTR [esp+0x14],edi
  eb98ea:	mov    edi,eax
  eb98ec:	mov    DWORD PTR [esp+0x10],edx
  eb98f0:	mov    DWORD PTR [esp+0xc],esi
  eb98f4:	mov    DWORD PTR [esp+0x8],ecx
  eb98f8:	mov    DWORD PTR [esp+0x4],ebx
  eb98fc:	mov    eax,DWORD PTR [esp+0x58]
  eb9900:	mov    DWORD PTR [esp],eax
  eb9903:	mov    DWORD PTR [esp+0x18],0x0
  eb990b:	mov    ebx,DWORD PTR [esp+0x5c]
  eb990f:	call   50d25f  ; ABH.Services.Logic.BattleService::ApplyDelayedPerk
  eb9914:	test   al,al
  eb9916:	je     eb9a64
  eb991c:	mov    esi,DWORD PTR [edi+0xa0]
  eb9922:	test   esi,esi
  eb9924:	je     eba81d
  eb992a:	mov    eax,DWORD PTR [esp+0x60]
  eb992e:	mov    eax,DWORD PTR [eax]
  eb9930:	mov    ebx,DWORD PTR [esi]
  eb9932:	movzx  edx,WORD PTR [ebx+0xaa]
  eb9939:	test   edx,edx
  eb993b:	je     eb994c
  eb993d:	mov    edi,DWORD PTR [ebx+0x4c]
  eb9940:	xor    ecx,ecx
  eb9942:	cmp    DWORD PTR [edi+ecx*8],eax
  eb9945:	je     eb9968
  eb9947:	inc    ecx
  eb9948:	cmp    ecx,edx
  eb994a:	jb     eb9942
  eb994c:	mov    DWORD PTR [esp+0x4],eax
  eb9950:	mov    DWORD PTR [esp],esi
  eb9953:	mov    DWORD PTR [esp+0x8],0x11
  eb995b:	mov    ebx,DWORD PTR [esp+0x5c]
  eb995f:	call   1c1964
  eb9964:	mov    ecx,eax
  eb9966:	jmp    eb9973
  eb9968:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb996c:	lea    ecx,[ebx+eax*8+0x13c]
  eb9973:	mov    eax,DWORD PTR [ecx+0x4]
  eb9976:	mov    DWORD PTR [esp+0x4],eax
  eb997a:	mov    DWORD PTR [esp],esi
  eb997d:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9981:	call   DWORD PTR [ecx]
  eb9983:	mov    DWORD PTR [esp+0x58],eax
  eb9987:	mov    eax,DWORD PTR [esp+0x4c]
  eb998b:	mov    eax,DWORD PTR [eax]
  eb998d:	test   eax,eax
  eb998f:	je     eba81d
  eb9995:	mov    esi,DWORD PTR [eax+0xc]
  eb9998:	test   esi,esi
  eb999a:	je     eba81d
  eb99a0:	mov    eax,DWORD PTR [esp+0x60]
  eb99a4:	mov    eax,DWORD PTR [eax]
  eb99a6:	mov    ebx,DWORD PTR [esi]
  eb99a8:	movzx  edx,WORD PTR [ebx+0xaa]
  eb99af:	test   edx,edx
  eb99b1:	je     eb99c2
  eb99b3:	mov    edi,DWORD PTR [ebx+0x4c]
  eb99b6:	xor    ecx,ecx
  eb99b8:	cmp    DWORD PTR [edi+ecx*8],eax
  eb99bb:	je     eb99de
  eb99bd:	inc    ecx
  eb99be:	cmp    ecx,edx
  eb99c0:	jb     eb99b8
  eb99c2:	mov    DWORD PTR [esp+0x4],eax
  eb99c6:	mov    DWORD PTR [esp],esi
  eb99c9:	mov    DWORD PTR [esp+0x8],0xf
  eb99d1:	mov    ebx,DWORD PTR [esp+0x5c]
  eb99d5:	call   1c1964
  eb99da:	mov    ecx,eax
  eb99dc:	jmp    eb99e9
  eb99de:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb99e2:	lea    ecx,[ebx+eax*8+0x12c]
  eb99e9:	mov    eax,DWORD PTR [ecx+0x4]
  eb99ec:	mov    DWORD PTR [esp+0x4],eax
  eb99f0:	mov    DWORD PTR [esp],esi
  eb99f3:	mov    ebx,DWORD PTR [esp+0x5c]
  eb99f7:	call   DWORD PTR [ecx]
  eb99f9:	test   eax,eax
  eb99fb:	je     eba81d
  eb9a01:	mov    ecx,DWORD PTR [esp+0x54]
  eb9a05:	mov    ecx,DWORD PTR [ecx]
  eb9a07:	mov    DWORD PTR [esp+0x4],ecx
  eb9a0b:	mov    DWORD PTR [esp],eax
  eb9a0e:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9a12:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  eb9a17:	test   eax,eax
  eb9a19:	je     eba81d
  eb9a1f:	mov    DWORD PTR [esp],eax
  eb9a22:	mov    DWORD PTR [esp+0x4],0x0
  eb9a2a:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9a2e:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  eb9a33:	test   eax,eax
  eb9a35:	je     eba81d
  eb9a3b:	mov    DWORD PTR [esp],eax
  eb9a3e:	mov    DWORD PTR [esp+0x4],0x0
  eb9a46:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9a4a:	call   179b16e  ; ABH.Shared.Models.Generic.EquipmentPerk::get_Type
  eb9a4f:	cmp    DWORD PTR [esp+0x58],0x0
  eb9a54:	je     eba81d
  eb9a5a:	mov    ecx,DWORD PTR [esp+0x58]
  eb9a5e:	mov    DWORD PTR [ecx+0x64],eax
  eb9a61:	mov    edi,DWORD PTR [ebp+0x8]
  eb9a64:	mov    BYTE PTR [edi+0x88],0x0
  eb9a6b:	jmp    eb9a9f
  eb9a6d:	mov    ebx,esi
  eb9a6f:	jmp    eba833
  eb9a74:	mov    ebx,edi
  eb9a76:	jmp    eba833
  eb9a7b:	mov    edi,ebx
  eb9a7d:	jmp    eb9a95
  eb9a7f:	call   ebbb41
  eb9a84:	call   ebbb41
  eb9a89:	call   ebbb41
  eb9a8e:	mov    ebx,esi
  eb9a90:	call   ebbb41
  eb9a95:	mov    DWORD PTR [esp],eax
  eb9a98:	mov    ebx,edi
  eb9a9a:	call   1b9bd0
  eb9a9f:	mov    esi,DWORD PTR [edi+0x9c]
  eb9aa5:	inc    esi
  eb9aa6:	mov    DWORD PTR [edi+0x9c],esi
  eb9aac:	mov    eax,DWORD PTR [edi+0x13c]
  eb9ab2:	test   eax,eax
  eb9ab4:	je     eba81d
  eb9aba:	mov    eax,DWORD PTR [eax+0x34]
  eb9abd:	test   eax,eax
  eb9abf:	je     eba81d
  eb9ac5:	lea    edi,[edi+0x13c]
  eb9acb:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9acf:	lea    ecx,[ebx+0x4a048]
  eb9ad5:	mov    ecx,DWORD PTR [ecx]
  eb9ad7:	mov    DWORD PTR [esp+0x4],ecx
  eb9adb:	mov    DWORD PTR [esp],eax
  eb9ade:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eb9ae3:	cmp    esi,eax
  eb9ae5:	jge    eb9b86
  eb9aeb:	mov    eax,DWORD PTR [edi]
  eb9aed:	test   eax,eax
  eb9aef:	je     eba81d
  eb9af5:	mov    DWORD PTR [esp+0x54],edi
  eb9af9:	mov    eax,DWORD PTR [eax+0x34]
  eb9afc:	test   eax,eax
  eb9afe:	je     eba81d
  eb9b04:	mov    ecx,DWORD PTR [ebp+0x8]
  eb9b07:	mov    edi,ecx
  eb9b09:	mov    ecx,DWORD PTR [edi+0x9c]
  eb9b0f:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9b13:	lea    edx,[ebx+0x4a0ac]
  eb9b19:	mov    edx,DWORD PTR [edx]
  eb9b1b:	mov    DWORD PTR [esp+0x8],edx
  eb9b1f:	mov    DWORD PTR [esp+0x4],ecx
  eb9b23:	mov    DWORD PTR [esp],eax
  eb9b26:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  eb9b2b:	mov    esi,eax
  eb9b2d:	mov    DWORD PTR [edi+0xa0],esi
  eb9b33:	test   esi,esi
  eb9b35:	je     eba821
  eb9b3b:	lea    eax,[ebx+0x45874]
  eb9b41:	mov    DWORD PTR [esp+0x60],eax
  eb9b45:	mov    eax,DWORD PTR [eax]
  eb9b47:	mov    ebx,DWORD PTR [esi]
  eb9b49:	movzx  edx,WORD PTR [ebx+0xaa]
  eb9b50:	test   edx,edx
  eb9b52:	je     eb9b67
  eb9b54:	mov    edi,DWORD PTR [ebx+0x4c]
  eb9b57:	xor    ecx,ecx
  eb9b59:	cmp    DWORD PTR [edi+ecx*8],eax
  eb9b5c:	je     eba2d6
  eb9b62:	inc    ecx
  eb9b63:	cmp    ecx,edx
  eb9b65:	jb     eb9b59
  eb9b67:	mov    DWORD PTR [esp+0x4],eax
  eb9b6b:	mov    DWORD PTR [esp],esi
  eb9b6e:	mov    DWORD PTR [esp+0x8],0x55
  eb9b76:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9b7a:	call   1c1964
  eb9b7f:	mov    ecx,eax
  eb9b81:	jmp    eba2e5
  eb9b86:	mov    DWORD PTR [esp+0x54],edi
  eb9b8a:	mov    eax,DWORD PTR [edi]
  eb9b8c:	test   eax,eax
  eb9b8e:	je     eba81d
  eb9b94:	mov    esi,DWORD PTR [eax+0x30]
  eb9b97:	test   esi,esi
  eb9b99:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9b9d:	je     eba821
  eb9ba3:	lea    eax,[ebx+0x45874]
  eb9ba9:	mov    eax,DWORD PTR [eax]
  eb9bab:	mov    ebx,DWORD PTR [esi]
  eb9bad:	movzx  edx,WORD PTR [ebx+0xaa]
  eb9bb4:	test   edx,edx
  eb9bb6:	je     eb9bc7
  eb9bb8:	mov    edi,DWORD PTR [ebx+0x4c]
  eb9bbb:	xor    ecx,ecx
  eb9bbd:	cmp    DWORD PTR [edi+ecx*8],eax
  eb9bc0:	je     eb9be3
  eb9bc2:	inc    ecx
  eb9bc3:	cmp    ecx,edx
  eb9bc5:	jb     eb9bbd
  eb9bc7:	mov    DWORD PTR [esp+0x4],eax
  eb9bcb:	mov    DWORD PTR [esp],esi
  eb9bce:	mov    DWORD PTR [esp+0x8],0x55
  eb9bd6:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9bda:	call   1c1964
  eb9bdf:	mov    ecx,eax
  eb9be1:	jmp    eb9bf2
  eb9be3:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eb9be7:	lea    ecx,[ebx+eax*8+0x35c]
  eb9bee:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9bf2:	mov    DWORD PTR [esp+0x5c],ebx
  eb9bf6:	mov    eax,DWORD PTR [ecx+0x4]
  eb9bf9:	mov    DWORD PTR [esp+0x4],eax
  eb9bfd:	mov    DWORD PTR [esp],esi
  eb9c00:	call   DWORD PTR [ecx]
  eb9c02:	test   al,al
  eb9c04:	mov    edi,DWORD PTR [ebp+0x8]
  eb9c07:	mov    esi,DWORD PTR [esp+0x54]
  eb9c0b:	je     eb9c4c
  eb9c0d:	mov    eax,DWORD PTR [edi+0x98]
  eb9c13:	inc    eax
  eb9c14:	mov    DWORD PTR [edi+0x98],eax
  eb9c1a:	lea    edx,[edi+0x8c]
  eb9c20:	movss  xmm0,DWORD PTR [edx]
  eb9c24:	cvtsi2ss xmm1,eax
  eb9c28:	ucomiss xmm0,xmm1
  eb9c2b:	jbe    eb9c46
  eb9c2d:	test   eax,eax
  eb9c2f:	jg     eb7742
  eb9c35:	mov    DWORD PTR [edi+0x9c],0x0
  eb9c3f:	xor    esi,esi
  eb9c41:	jmp    eb9aac
  eb9c46:	lea    esi,[edi+0x13c]
  eb9c4c:	mov    DWORD PTR [esp+0x54],esi
  eb9c50:	mov    eax,DWORD PTR [esi]
  eb9c52:	test   eax,eax
  eb9c54:	je     eba82f
  eb9c5a:	mov    eax,DWORD PTR [eax+0x8]
  eb9c5d:	test   eax,eax
  eb9c5f:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9c63:	je     eba821
  eb9c69:	mov    DWORD PTR [esp],eax
  eb9c6c:	mov    DWORD PTR [esp+0x4],0x0
  eb9c74:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  eb9c79:	test   eax,eax
  eb9c7b:	je     eba821
  eb9c81:	lea    ecx,[ebx+0x56b38]  ; literal "alleffect"
  eb9c87:	mov    ecx,DWORD PTR [ecx]
  eb9c89:	lea    edx,[ebx+0x4a014]
  eb9c8f:	mov    edx,DWORD PTR [edx]
  eb9c91:	mov    DWORD PTR [esp+0x8],edx
  eb9c95:	mov    DWORD PTR [esp+0x4],ecx
  eb9c99:	mov    DWORD PTR [esp],eax
  eb9c9c:	call   61e326  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::ContainsKey | System.Collections.Generic.Dictionary`2<object, float>::ContainsKey
  eb9ca1:	mov    ecx,DWORD PTR [ebp+0x8]
  eb9ca4:	mov    BYTE PTR [ecx+0x110],al
  eb9caa:	test   al,al
  eb9cac:	je     eb9d96
  eb9cb2:	mov    eax,DWORD PTR [esi]
  eb9cb4:	test   eax,eax
  eb9cb6:	je     eba821
  eb9cbc:	mov    DWORD PTR [esp+0x54],esi
  eb9cc0:	mov    edx,DWORD PTR [ebp+0x8]
  eb9cc3:	mov    ecx,DWORD PTR [edx+0x8]
  eb9cc6:	test   ecx,ecx
  eb9cc8:	je     eba821
  eb9cce:	mov    eax,DWORD PTR [eax+0x34]
  eb9cd1:	mov    DWORD PTR [esp+0x60],eax
  eb9cd5:	mov    eax,DWORD PTR [ecx+0x58]
  eb9cd8:	mov    DWORD PTR [esp+0x58],eax
  eb9cdc:	mov    eax,DWORD PTR [edx+0x14c]
  eb9ce2:	mov    DWORD PTR [esp+0x50],eax
  eb9ce6:	lea    eax,[ebx+0x4a0e0]
  eb9cec:	mov    edi,DWORD PTR [eax]
  eb9cee:	lea    eax,[ebx+0x4588c]
  eb9cf4:	mov    eax,DWORD PTR [eax]
  eb9cf6:	mov    DWORD PTR [esp],eax
  eb9cf9:	call   20bfb2
  eb9cfe:	mov    esi,eax
  eb9d00:	mov    DWORD PTR [esp+0xf0],edi
  eb9d07:	lea    eax,[ebx+0x4a054]
  eb9d0d:	mov    eax,DWORD PTR [eax]
  eb9d0f:	mov    DWORD PTR [esp+0xc],eax
  eb9d13:	mov    eax,DWORD PTR [esp+0xf0]
  eb9d1a:	mov    DWORD PTR [esp+0x8],eax
  eb9d1e:	mov    eax,DWORD PTR [esp+0x50]
  eb9d22:	mov    DWORD PTR [esp+0x4],eax
  eb9d26:	mov    DWORD PTR [esp],esi
  eb9d29:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  eb9d2e:	lea    eax,[ebx+0x4a058]
  eb9d34:	mov    eax,DWORD PTR [eax]
  eb9d36:	mov    DWORD PTR [esp+0xc],eax
  eb9d3a:	mov    DWORD PTR [esp+0x8],esi
  eb9d3e:	mov    eax,DWORD PTR [esp+0x58]
  eb9d42:	mov    DWORD PTR [esp+0x4],eax
  eb9d46:	mov    DWORD PTR [esp],0x0
  eb9d4d:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  eb9d52:	lea    ecx,[ebx+0x4a080]
  eb9d58:	mov    ecx,DWORD PTR [ecx]
  eb9d5a:	mov    DWORD PTR [esp+0x8],ecx
  eb9d5e:	mov    DWORD PTR [esp+0x4],eax
  eb9d62:	mov    DWORD PTR [esp],0x0
  eb9d69:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  eb9d6e:	mov    edx,DWORD PTR [esp+0x60]
  eb9d72:	test   edx,edx
  eb9d74:	je     eba821
  eb9d7a:	lea    ecx,[ebx+0x4a084]
  eb9d80:	mov    ecx,DWORD PTR [ecx]
  eb9d82:	mov    DWORD PTR [esp+0x8],ecx
  eb9d86:	mov    DWORD PTR [esp+0x4],eax
  eb9d8a:	mov    DWORD PTR [esp],edx
  eb9d8d:	call   4c29d3  ; shared address: System.Collections.Generic.List`1<object>::AddRange | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::AddRange | System.Collections.Generic.List`1<System.Reflection.MemberInfo>::AddRange | +15 other aliases
  eb9d92:	mov    esi,DWORD PTR [esp+0x54]
  eb9d96:	mov    DWORD PTR [esp+0x54],esi
  eb9d9a:	mov    eax,DWORD PTR [esi]
  eb9d9c:	test   eax,eax
  eb9d9e:	je     eba81d
  eb9da4:	xor    ecx,ecx
  eb9da6:	mov    edi,ecx
  eb9da8:	mov    eax,DWORD PTR [eax+0x34]
  eb9dab:	test   eax,eax
  eb9dad:	je     eba81d
  eb9db3:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9db7:	lea    ecx,[ebx+0x4a048]
  eb9dbd:	mov    ecx,DWORD PTR [ecx]
  eb9dbf:	mov    DWORD PTR [esp+0x4],ecx
  eb9dc3:	mov    DWORD PTR [esp],eax
  eb9dc6:	mov    esi,ebx
  eb9dc8:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  eb9dcd:	mov    ecx,DWORD PTR [esp+0x54]
  eb9dd1:	mov    ecx,DWORD PTR [ecx]
  eb9dd3:	test   ecx,ecx
  eb9dd5:	je     eba82b
  eb9ddb:	cmp    edi,eax
  eb9ddd:	jge    eba164
  eb9de3:	mov    eax,DWORD PTR [ecx+0x34]
  eb9de6:	mov    ebx,esi
  eb9de8:	test   eax,eax
  eb9dea:	je     eba821
  eb9df0:	lea    ecx,[ebx+0x4a0ac]
  eb9df6:	mov    ecx,DWORD PTR [ecx]
  eb9df8:	mov    DWORD PTR [esp+0x8],ecx
  eb9dfc:	mov    DWORD PTR [esp+0x4],edi
  eb9e00:	mov    DWORD PTR [esp],eax
  eb9e03:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  eb9e08:	mov    esi,eax
  eb9e0a:	mov    eax,DWORD PTR [ebp+0x8]
  eb9e0d:	mov    eax,DWORD PTR [eax+0x94]
  eb9e13:	test   eax,eax
  eb9e15:	je     eba821
  eb9e1b:	lea    ecx,[ebx+0x48d88]
  eb9e21:	mov    ecx,DWORD PTR [ecx]
  eb9e23:	mov    DWORD PTR [esp+0x8],ecx
  eb9e27:	mov    DWORD PTR [esp+0x4],edi
  eb9e2b:	mov    DWORD PTR [esp+0x50],edi
  eb9e2f:	mov    DWORD PTR [esp],eax
  eb9e32:	xorps  xmm0,xmm0
  eb9e35:	movss  DWORD PTR [esp+0x60],xmm0
  eb9e3b:	call   5dc626  ; System.Collections.Generic.Dictionary`2<int, int>::ContainsKey
  eb9e40:	test   al,al
  eb9e42:	je     eb9e89
  eb9e44:	mov    eax,DWORD PTR [ebp+0x8]
  eb9e47:	mov    eax,DWORD PTR [eax+0x94]
  eb9e4d:	test   eax,eax
  eb9e4f:	je     eba821
  eb9e55:	lea    ecx,[ebx+0x48d8c]
  eb9e5b:	mov    ecx,DWORD PTR [ecx]
  eb9e5d:	mov    DWORD PTR [esp+0x8],ecx
  eb9e61:	mov    ecx,DWORD PTR [esp+0x50]
  eb9e65:	mov    DWORD PTR [esp+0x4],ecx
  eb9e69:	mov    DWORD PTR [esp],eax
  eb9e6c:	call   5daf58  ; System.Collections.Generic.Dictionary`2<int, int>::get_Item
  eb9e71:	cvtsi2ss xmm0,eax
  eb9e75:	movss  DWORD PTR [esp+0x60],xmm0
  eb9e7b:	test   eax,eax
  eb9e7d:	je     eb9e89
  eb9e7f:	mov    DWORD PTR [esp+0x58],0x0
  eb9e87:	jmp    eb9eb3
  eb9e89:	mov    eax,DWORD PTR [esp+0x54]
  eb9e8d:	mov    eax,DWORD PTR [eax]
  eb9e8f:	test   eax,eax
  eb9e91:	je     eba821
  eb9e97:	mov    cl,0x1
  eb9e99:	mov    DWORD PTR [esp+0x58],ecx
  eb9e9d:	cmp    BYTE PTR [eax+0x3e],0x0
  eb9ea1:	jne    eb9eb3
  eb9ea3:	mov    eax,DWORD PTR [ebp+0x8]
  eb9ea6:	cmp    BYTE PTR [eax+0x110],0x0
  eb9ead:	je     eba14c
  eb9eb3:	test   esi,esi
  eb9eb5:	je     eba81d
  eb9ebb:	mov    eax,DWORD PTR [esp+0x5c]
  eb9ebf:	lea    eax,[eax+0x45874]
  eb9ec5:	mov    eax,DWORD PTR [eax]
  eb9ec7:	mov    ecx,DWORD PTR [esi]
  eb9ec9:	mov    ebx,esi
  eb9ecb:	movzx  edx,WORD PTR [ecx+0xaa]
  eb9ed2:	test   edx,edx
  eb9ed4:	je     eb9ee5
  eb9ed6:	mov    edi,DWORD PTR [ecx+0x4c]
  eb9ed9:	xor    esi,esi
  eb9edb:	cmp    DWORD PTR [edi+esi*8],eax
  eb9ede:	je     eb9f03
  eb9ee0:	inc    esi
  eb9ee1:	cmp    esi,edx
  eb9ee3:	jb     eb9edb
  eb9ee5:	mov    DWORD PTR [esp+0x4],eax
  eb9ee9:	mov    edi,ebx
  eb9eeb:	mov    DWORD PTR [esp],edi
  eb9eee:	mov    DWORD PTR [esp+0x8],0x56
  eb9ef6:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9efa:	call   1c1964
  eb9eff:	mov    ecx,eax
  eb9f01:	jmp    eb9f14
  eb9f03:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eb9f07:	lea    ecx,[ecx+eax*8+0x364]
  eb9f0e:	mov    edi,ebx
  eb9f10:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9f14:	mov    eax,DWORD PTR [ecx+0x4]
  eb9f17:	mov    DWORD PTR [esp+0x4],eax
  eb9f1b:	mov    DWORD PTR [esp],edi
  eb9f1e:	call   DWORD PTR [ecx]
  eb9f20:	test   al,al
  eb9f22:	jne    eb9f3c
  eb9f24:	mov    eax,DWORD PTR [esp+0x54]
  eb9f28:	mov    eax,DWORD PTR [eax]
  eb9f2a:	test   eax,eax
  eb9f2c:	je     eba81d
  eb9f32:	cmp    BYTE PTR [eax+0x3f],0x0
  eb9f36:	je     eba14c
  eb9f3c:	mov    eax,DWORD PTR [esp+0x58]
  eb9f40:	test   al,al
  eb9f42:	je     eb9f69
  eb9f44:	mov    esi,DWORD PTR [esp+0x54]
  eb9f48:	mov    eax,DWORD PTR [esi]
  eb9f4a:	test   eax,eax
  eb9f4c:	je     eba81d
  eb9f52:	xorps  xmm0,xmm0
  eb9f55:	movss  xmm1,DWORD PTR [esp+0x60]
  eb9f5b:	ucomiss xmm1,xmm0
  eb9f5e:	ja     eb9f7b
  eb9f60:	mov    al,BYTE PTR [eax+0x3e]
  eb9f63:	test   al,al
  eb9f65:	je     eb9fda
  eb9f67:	jmp    eb9f7b
  eb9f69:	xorps  xmm0,xmm0
  eb9f6c:	movss  xmm1,DWORD PTR [esp+0x60]
  eb9f72:	ucomiss xmm1,xmm0
  eb9f75:	mov    esi,DWORD PTR [esp+0x54]
  eb9f79:	jbe    eb9fda
  eb9f7b:	mov    DWORD PTR [esp+0x4],0x0
  eb9f83:	mov    DWORD PTR [esp],0x0
  eb9f8a:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9f8e:	call   109314e  ; DIContainerLogic::GetBattleService
  eb9f93:	mov    ecx,DWORD PTR [esi]
  eb9f95:	test   ecx,ecx
  eb9f97:	je     eba81d
  eb9f9d:	test   eax,eax
  eb9f9f:	je     eba81d
  eb9fa5:	mov    ecx,DWORD PTR [ecx+0x30]
  eb9fa8:	mov    DWORD PTR [esp+0x10],ecx
  eb9fac:	mov    DWORD PTR [esp+0xc],edi
  eb9fb0:	movss  xmm0,DWORD PTR [esp+0x60]
  eb9fb6:	movss  DWORD PTR [esp+0x4],xmm0
  eb9fbc:	mov    DWORD PTR [esp],eax
  eb9fbf:	mov    DWORD PTR [esp+0x14],0x0
  eb9fc7:	mov    DWORD PTR [esp+0x8],0x9
  eb9fcf:	mov    ebx,DWORD PTR [esp+0x5c]
  eb9fd3:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eb9fd8:	fstp   st(0)
  eb9fda:	mov    eax,DWORD PTR [esi]
  eb9fdc:	test   eax,eax
  eb9fde:	je     eba81d
  eb9fe4:	mov    DWORD PTR [esp+0x58],edi
  eb9fe8:	mov    eax,DWORD PTR [eax+0x6c]
  eb9feb:	test   eax,eax
  eb9fed:	je     eba81d
  eb9ff3:	mov    edi,DWORD PTR [esp+0x5c]
  eb9ff7:	lea    ecx,[edi+0x4a0b4]
  eb9ffd:	mov    ecx,DWORD PTR [ecx]
  eb9fff:	mov    DWORD PTR [esp+0x8],ecx
  eba003:	mov    DWORD PTR [esp+0x4],eax
  eba007:	lea    eax,[esp+0xe0]
  eba00e:	mov    DWORD PTR [esp],eax
  eba011:	mov    ebx,edi
  eba013:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eba018:	sub    esp,0x4
  eba01b:	movsd  xmm0,QWORD PTR [esp+0xe0]
  eba024:	movsd  xmm1,QWORD PTR [esp+0xe8]
  eba02d:	movsd  QWORD PTR [esp+0x1a8],xmm1
  eba036:	movsd  QWORD PTR [esp+0x1a0],xmm0
  eba03f:	lea    eax,[edi+0x4a0c0]
  eba045:	mov    eax,DWORD PTR [eax]
  eba047:	mov    DWORD PTR [esp+0x4],eax
  eba04b:	lea    eax,[esp+0x1a0]
  eba052:	mov    DWORD PTR [esp],eax
  eba055:	mov    ebx,edi
  eba057:	call   447e4e
  eba05c:	test   al,al
  eba05e:	je     eba0cc
  eba060:	lea    eax,[edi+0x4a0b8]
  eba066:	mov    eax,DWORD PTR [eax]
  eba068:	mov    DWORD PTR [esp+0x4],eax
  eba06c:	lea    eax,[esp+0x1a0]
  eba073:	mov    DWORD PTR [esp],eax
  eba076:	mov    ebx,edi
  eba078:	call   447f1e
  eba07d:	mov    ecx,DWORD PTR [esi]
  eba07f:	test   ecx,ecx
  eba081:	je     eba0eb
  eba083:	mov    ebx,edi
  eba085:	mov    edi,esi
  eba087:	test   eax,eax
  eba089:	je     eba0f7
  eba08b:	mov    edx,DWORD PTR [ecx+0x14]
  eba08e:	mov    ecx,DWORD PTR [ecx+0x30]
  eba091:	lea    esi,[ebx+0x4a0bc]
  eba097:	mov    esi,DWORD PTR [esi]
  eba099:	mov    DWORD PTR [esp+0x14],esi
  eba09d:	mov    esi,DWORD PTR [esp+0x58]
  eba0a1:	mov    DWORD PTR [esp+0x10],esi
  eba0a5:	mov    DWORD PTR [esp+0xc],ecx
  eba0a9:	mov    DWORD PTR [esp+0x8],edx
  eba0ad:	movss  xmm0,DWORD PTR [esp+0x60]
  eba0b3:	movss  DWORD PTR [esp+0x4],xmm0
  eba0b9:	mov    DWORD PTR [esp],eax
  eba0bc:	mov    esi,edi
  eba0be:	mov    edi,ebx
  eba0c0:	call   15f5a37  ; shared address: System.Action`4<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant>::Invoke | System.Action`4<float, object, object, object>::Invoke
  eba0c5:	jmp    eba03f
  eba0ca:	jmp    eba103
  eba0cc:	lea    eax,[edi+0x4a0c4]
  eba0d2:	mov    eax,DWORD PTR [eax]
  eba0d4:	mov    DWORD PTR [esp+0x4],eax
  eba0d8:	lea    eax,[esp+0x1a0]
  eba0df:	mov    DWORD PTR [esp],eax
  eba0e2:	mov    ebx,edi
  eba0e4:	call   447df6
  eba0e9:	jmp    eba14c
  eba0eb:	mov    ebx,edi
  eba0ed:	call   1fbc48
  eba0f2:	jmp    eb773b
  eba0f7:	mov    edi,ebx
  eba0f9:	call   1fbc48
  eba0fe:	jmp    eb773b
  eba103:	cmp    edx,0x1
  eba106:	jne    eb9a95
  eba10c:	mov    DWORD PTR [esp],eax
  eba10f:	mov    ebx,edi
  eba111:	call   1ba3f0
  eba116:	mov    esi,DWORD PTR [eax]
  eba118:	mov    ebx,edi
  eba11a:	call   1b9ce0
  eba11f:	lea    eax,[edi+0x4a0c4]
  eba125:	mov    eax,DWORD PTR [eax]
  eba127:	mov    DWORD PTR [esp+0x4],eax
  eba12b:	lea    eax,[esp+0x1a0]
  eba132:	mov    DWORD PTR [esp],eax
  eba135:	mov    ebx,edi
  eba137:	call   447df6
  eba13c:	test   esi,esi
  eba13e:	je     eba14c
  eba140:	mov    DWORD PTR [esp],esi
  eba143:	mov    ebx,DWORD PTR [esp+0x5c]
  eba147:	call   1fbb20
  eba14c:	mov    ecx,DWORD PTR [esp+0x50]
  eba150:	inc    ecx
  eba151:	mov    eax,DWORD PTR [esp+0x54]
  eba155:	mov    eax,DWORD PTR [eax]
  eba157:	test   eax,eax
  eba159:	jne    eb9da6
  eba15f:	jmp    eba81d
  eba164:	mov    eax,DWORD PTR [ecx+0x68]
  eba167:	mov    ebx,esi
  eba169:	test   eax,eax
  eba16b:	je     eba821
  eba171:	lea    ecx,[ebx+0x4a060]
  eba177:	mov    ecx,DWORD PTR [ecx]
  eba179:	mov    DWORD PTR [esp+0x8],ecx
  eba17d:	mov    DWORD PTR [esp+0x4],eax
  eba181:	lea    eax,[esp+0xd0]
  eba188:	mov    DWORD PTR [esp],eax
  eba18b:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eba190:	sub    esp,0x4
  eba193:	mov    eax,DWORD PTR [ebp+0x8]
  eba196:	lea    esi,[eax+0x114]
  eba19c:	movsd  xmm0,QWORD PTR [esp+0xd0]
  eba1a5:	movsd  xmm1,QWORD PTR [esp+0xd8]
  eba1ae:	movsd  QWORD PTR [eax+0x11c],xmm1
  eba1b6:	movsd  QWORD PTR [eax+0x114],xmm0
  eba1be:	lea    eax,[ebx+0x4a06c]
  eba1c4:	mov    eax,DWORD PTR [eax]
  eba1c6:	mov    DWORD PTR [esp+0x4],eax
  eba1ca:	mov    DWORD PTR [esp],esi
  eba1cd:	mov    edi,ebx
  eba1cf:	call   447e4e
  eba1d4:	test   al,al
  eba1d6:	je     eba2bb
  eba1dc:	lea    eax,[edi+0x4a064]
  eba1e2:	mov    eax,DWORD PTR [eax]
  eba1e4:	mov    DWORD PTR [esp+0x4],eax
  eba1e8:	mov    DWORD PTR [esp],esi
  eba1eb:	mov    ebx,edi
  eba1ed:	call   447f1e
  eba1f2:	mov    ecx,DWORD PTR [ebp+0x8]
  eba1f5:	mov    DWORD PTR [ecx+0x124],eax
  eba1fb:	mov    ecx,DWORD PTR [ecx+0x13c]
  eba201:	test   ecx,ecx
  eba203:	je     eba305
  eba209:	test   eax,eax
  eba20b:	je     eba311
  eba211:	mov    edx,DWORD PTR [ecx+0x14]
  eba214:	mov    DWORD PTR [esp+0x60],edx
  eba218:	mov    edx,DWORD PTR [ecx+0x18]
  eba21b:	mov    DWORD PTR [esp+0x58],edx
  eba21f:	mov    ecx,DWORD PTR [ecx+0x30]
  eba222:	lea    edx,[edi+0x4a068]
  eba228:	mov    edx,DWORD PTR [edx]
  eba22a:	mov    DWORD PTR [esp+0x10],edx
  eba22e:	mov    edx,DWORD PTR [esp+0x58]
  eba232:	mov    DWORD PTR [esp+0xc],edx
  eba236:	mov    DWORD PTR [esp+0x8],ecx
  eba23a:	mov    ecx,DWORD PTR [esp+0x60]
  eba23e:	mov    DWORD PTR [esp+0x4],ecx
  eba242:	mov    DWORD PTR [esp],eax
  eba245:	mov    ebx,edi
  eba247:	call   17d88a2  ; shared address: System.Func`4<ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`4<object, object, object, float>::Invoke
  eba24c:	fstp   DWORD PTR [esp+0x74]
  eba250:	movss  xmm0,DWORD PTR [esp+0x74]
  eba256:	movss  DWORD PTR [esp+0x60],xmm0
  eba25c:	lea    eax,[edi+0x45664]
  eba262:	mov    eax,DWORD PTR [eax]
  eba264:	mov    DWORD PTR [esp],eax
  eba267:	mov    ebx,edi
  eba269:	call   20bfb2
  eba26e:	movss  xmm0,DWORD PTR [esp+0x60]
  eba274:	movss  DWORD PTR [esp+0x4],xmm0
  eba27a:	mov    DWORD PTR [esp],eax
  eba27d:	mov    DWORD PTR [esp+0x8],0x0
  eba285:	mov    ebx,edi
  eba287:	mov    DWORD PTR [esp+0x60],eax
  eba28b:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eba290:	mov    eax,DWORD PTR [esp+0x60]
  eba294:	mov    ecx,DWORD PTR [ebp+0x8]
  eba297:	mov    DWORD PTR [ecx+0x140],eax
  eba29d:	mov    al,0x1
  eba29f:	cmp    BYTE PTR [ecx+0x144],0x0
  eba2a6:	jne    eba812
  eba2ac:	mov    DWORD PTR [ecx+0x148],0xf
  eba2b6:	jmp    eba812
  eba2bb:	lea    eax,[edi+0x4a070]
  eba2c1:	mov    eax,DWORD PTR [eax]
  eba2c3:	mov    DWORD PTR [esp+0x4],eax
  eba2c7:	mov    DWORD PTR [esp],esi
  eba2ca:	mov    ebx,edi
  eba2cc:	call   447df6
  eba2d1:	jmp    eba357
  eba2d6:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eba2da:	lea    ecx,[ebx+eax*8+0x35c]
  eba2e1:	mov    ebx,DWORD PTR [esp+0x5c]
  eba2e5:	mov    DWORD PTR [esp+0x5c],ebx
  eba2e9:	mov    eax,DWORD PTR [ecx+0x4]
  eba2ec:	mov    DWORD PTR [esp+0x4],eax
  eba2f0:	mov    DWORD PTR [esp],esi
  eba2f3:	call   DWORD PTR [ecx]
  eba2f5:	test   al,al
  eba2f7:	mov    edi,DWORD PTR [ebp+0x8]
  eba2fa:	jne    eb77a6
  eba300:	jmp    eb9a9f
  eba305:	mov    ebx,edi
  eba307:	call   1fbc48
  eba30c:	jmp    eb773b
  eba311:	mov    ebx,edi
  eba313:	call   1fbc48
  eba318:	jmp    eb773b
  eba31d:	cmp    edx,0x1
  eba320:	jne    eb9a95
  eba326:	mov    DWORD PTR [esp],eax
  eba329:	mov    ebx,edi
  eba32b:	call   1ba3f0
  eba330:	mov    edi,DWORD PTR [eax]
  eba332:	call   1b9ce0
  eba337:	lea    eax,[ebx+0x4a070]
  eba33d:	mov    eax,DWORD PTR [eax]
  eba33f:	mov    DWORD PTR [esp+0x4],eax
  eba343:	mov    DWORD PTR [esp],esi
  eba346:	call   447df6
  eba34b:	test   edi,edi
  eba34d:	je     eba357
  eba34f:	mov    DWORD PTR [esp],edi
  eba352:	call   1fbb20
  eba357:	mov    esi,DWORD PTR [ebp+0x8]
  eba35a:	mov    eax,DWORD PTR [esi+0x13c]
  eba360:	test   eax,eax
  eba362:	je     eba821
  eba368:	mov    eax,DWORD PTR [eax+0x64]
  eba36b:	test   eax,eax
  eba36d:	je     eba821
  eba373:	lea    ecx,[ebx+0x4a060]
  eba379:	mov    ecx,DWORD PTR [ecx]
  eba37b:	mov    DWORD PTR [esp+0x8],ecx
  eba37f:	mov    DWORD PTR [esp+0x4],eax
  eba383:	lea    eax,[esp+0xc0]
  eba38a:	mov    DWORD PTR [esp],eax
  eba38d:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
  eba392:	sub    esp,0x4
  eba395:	lea    ecx,[esi+0x128]
  eba39b:	movsd  xmm0,QWORD PTR [esp+0xc0]
  eba3a4:	movsd  xmm1,QWORD PTR [esp+0xc8]
  eba3ad:	movsd  QWORD PTR [esi+0x130],xmm1
  eba3b5:	movsd  QWORD PTR [esi+0x128],xmm0
  eba3bd:	mov    DWORD PTR [esp+0x60],ecx
  eba3c1:	lea    eax,[ebx+0x4a06c]
  eba3c7:	mov    eax,DWORD PTR [eax]
  eba3c9:	mov    DWORD PTR [esp+0x4],eax
  eba3cd:	mov    DWORD PTR [esp],ecx
  eba3d0:	mov    edi,ebx
  eba3d2:	call   447e4e
  eba3d7:	test   al,al
  eba3d9:	je     eba4b4
  eba3df:	lea    eax,[edi+0x4a064]
  eba3e5:	mov    eax,DWORD PTR [eax]
  eba3e7:	mov    DWORD PTR [esp+0x4],eax
  eba3eb:	mov    eax,DWORD PTR [esp+0x60]
  eba3ef:	mov    DWORD PTR [esp],eax
  eba3f2:	mov    ebx,edi
  eba3f4:	call   447f1e
  eba3f9:	mov    ecx,DWORD PTR [ebp+0x8]
  eba3fc:	mov    DWORD PTR [ecx+0x138],eax
  eba402:	mov    ecx,DWORD PTR [ecx+0x13c]
  eba408:	test   ecx,ecx
  eba40a:	je     eba4d0
  eba410:	test   eax,eax
  eba412:	je     eba4dc
  eba418:	mov    edx,DWORD PTR [ecx+0x14]
  eba41b:	mov    DWORD PTR [esp+0x58],edx
  eba41f:	mov    esi,DWORD PTR [ecx+0x18]
  eba422:	mov    ecx,DWORD PTR [ecx+0x30]
  eba425:	lea    edx,[edi+0x4a068]
  eba42b:	mov    edx,DWORD PTR [edx]
  eba42d:	mov    DWORD PTR [esp+0x10],edx
  eba431:	mov    DWORD PTR [esp+0xc],esi
  eba435:	mov    DWORD PTR [esp+0x8],ecx
  eba439:	mov    ecx,DWORD PTR [esp+0x58]
  eba43d:	mov    DWORD PTR [esp+0x4],ecx
  eba441:	mov    DWORD PTR [esp],eax
  eba444:	mov    ebx,edi
  eba446:	call   17d88a2  ; shared address: System.Func`4<ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`4<object, object, object, float>::Invoke
  eba44b:	fstp   DWORD PTR [esp+0x70]
  eba44f:	movss  xmm0,DWORD PTR [esp+0x70]
  eba455:	movss  DWORD PTR [esp+0x58],xmm0
  eba45b:	lea    eax,[edi+0x45664]
  eba461:	mov    eax,DWORD PTR [eax]
  eba463:	mov    DWORD PTR [esp],eax
  eba466:	mov    ebx,edi
  eba468:	call   20bfb2
  eba46d:	mov    esi,eax
  eba46f:	movss  xmm0,DWORD PTR [esp+0x58]
  eba475:	movss  DWORD PTR [esp+0x4],xmm0
  eba47b:	mov    DWORD PTR [esp],esi
  eba47e:	mov    DWORD PTR [esp+0x8],0x0
  eba486:	mov    ebx,edi
  eba488:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  eba48d:	mov    ecx,DWORD PTR [ebp+0x8]
  eba490:	mov    DWORD PTR [ecx+0x140],esi
  eba496:	mov    al,0x1
  eba498:	cmp    BYTE PTR [ecx+0x144],0x0
  eba49f:	jne    eba812
  eba4a5:	mov    DWORD PTR [ecx+0x148],0x10
  eba4af:	jmp    eba812
  eba4b4:	lea    eax,[edi+0x4a070]
  eba4ba:	mov    eax,DWORD PTR [eax]
  eba4bc:	mov    DWORD PTR [esp+0x4],eax
  eba4c0:	mov    eax,DWORD PTR [esp+0x60]
  eba4c4:	mov    DWORD PTR [esp],eax
  eba4c7:	mov    ebx,edi
  eba4c9:	call   447df6
  eba4ce:	jmp    eba526
  eba4d0:	mov    ebx,edi
  eba4d2:	call   1fbc48
  eba4d7:	jmp    eb773b
  eba4dc:	mov    ebx,edi
  eba4de:	call   1fbc48
  eba4e3:	jmp    eb773b
  eba4e8:	cmp    edx,0x1
  eba4eb:	jne    eb9a95
  eba4f1:	mov    DWORD PTR [esp],eax
  eba4f4:	mov    ebx,edi
  eba4f6:	call   1ba3f0
  eba4fb:	mov    esi,DWORD PTR [eax]
  eba4fd:	call   1b9ce0
  eba502:	lea    eax,[ebx+0x4a070]
  eba508:	mov    eax,DWORD PTR [eax]
  eba50a:	mov    DWORD PTR [esp+0x4],eax
  eba50e:	mov    eax,DWORD PTR [esp+0x60]
  eba512:	mov    DWORD PTR [esp],eax
  eba515:	call   447df6
  eba51a:	test   esi,esi
  eba51c:	je     eba526
  eba51e:	mov    DWORD PTR [esp],esi
  eba521:	call   1fbb20
  eba526:	mov    esi,DWORD PTR [ebp+0x8]
  eba529:	mov    eax,DWORD PTR [esi+0x13c]
  eba52f:	test   eax,eax
  eba531:	je     eba821
  eba537:	mov    ecx,DWORD PTR [eax+0x14]
  eba53a:	mov    eax,DWORD PTR [eax+0x30]
  eba53d:	mov    DWORD PTR [esp+0xc],eax
  eba541:	mov    DWORD PTR [esp+0x8],eax
  eba545:	mov    DWORD PTR [esp+0x4],ecx
  eba549:	mov    DWORD PTR [esp+0x10],0x6
  eba551:	call   eb460b  ; ABH.GameDatas.Battle.AttackSkillTemplate::ApplySetItemSkillOfType
  eba556:	mov    DWORD PTR [esp+0x4],0x0
  eba55e:	mov    DWORD PTR [esp],0x0
  eba565:	call   109314e  ; DIContainerLogic::GetBattleService
  eba56a:	mov    ecx,DWORD PTR [esi+0x13c]
  eba570:	test   ecx,ecx
  eba572:	je     eba81d
  eba578:	mov    DWORD PTR [esp+0x60],eax
  eba57c:	mov    edi,DWORD PTR [ecx+0x30]
  eba57f:	test   edi,edi
  eba581:	je     eba81d
  eba587:	mov    eax,DWORD PTR [esp+0x5c]
  eba58b:	lea    eax,[eax+0x45874]
  eba591:	mov    DWORD PTR [esp+0x58],eax
  eba595:	mov    eax,DWORD PTR [eax]
  eba597:	mov    ebx,DWORD PTR [edi]
  eba599:	movzx  edx,WORD PTR [ebx+0xaa]
  eba5a0:	test   edx,edx
  eba5a2:	je     eba5b3
  eba5a4:	mov    esi,DWORD PTR [ebx+0x4c]
  eba5a7:	xor    ecx,ecx
  eba5a9:	cmp    DWORD PTR [esi+ecx*8],eax
  eba5ac:	je     eba5cd
  eba5ae:	inc    ecx
  eba5af:	cmp    ecx,edx
  eba5b1:	jb     eba5a9
  eba5b3:	mov    DWORD PTR [esp+0x4],eax
  eba5b7:	mov    DWORD PTR [esp],edi
  eba5ba:	mov    DWORD PTR [esp+0x8],0x77
  eba5c2:	mov    ebx,DWORD PTR [esp+0x5c]
  eba5c6:	call   1c1964
  eba5cb:	jmp    eba5dc
  eba5cd:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  eba5d1:	lea    eax,[ebx+eax*8+0x46c]
  eba5d8:	mov    ebx,DWORD PTR [esp+0x5c]
  eba5dc:	mov    ecx,DWORD PTR [eax+0x4]
  eba5df:	mov    DWORD PTR [esp+0x4],ecx
  eba5e3:	mov    DWORD PTR [esp],edi
  eba5e6:	call   DWORD PTR [eax]
  eba5e8:	fstp   DWORD PTR [esp+0x6c]
  eba5ec:	mov    esi,DWORD PTR [ebp+0x8]
  eba5ef:	mov    eax,DWORD PTR [esi+0x13c]
  eba5f5:	test   eax,eax
  eba5f7:	je     eba821
  eba5fd:	mov    ecx,DWORD PTR [esp+0x60]
  eba601:	test   ecx,ecx
  eba603:	je     eba821
  eba609:	movss  xmm0,DWORD PTR [esp+0x6c]
  eba60f:	mov    eax,DWORD PTR [eax+0x30]
  eba612:	mov    DWORD PTR [esp+0x10],eax
  eba616:	mov    DWORD PTR [esp+0xc],eax
  eba61a:	movss  DWORD PTR [esp+0x4],xmm0
  eba620:	mov    DWORD PTR [esp],ecx
  eba623:	mov    DWORD PTR [esp+0x14],0x0
  eba62b:	mov    DWORD PTR [esp+0x8],0x12
  eba633:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  eba638:	fstp   st(0)
  eba63a:	mov    eax,DWORD PTR [esi+0x13c]
  eba640:	test   eax,eax
  eba642:	je     eba821
  eba648:	mov    eax,DWORD PTR [eax+0x14]
  eba64b:	test   eax,eax
  eba64d:	je     eba821
  eba653:	mov    DWORD PTR [eax+0x94],0x0
  eba65d:	mov    eax,DWORD PTR [esi+0x14c]
  eba663:	test   eax,eax
  eba665:	je     eba81d
  eba66b:	mov    esi,DWORD PTR [eax+0xc]
  eba66e:	test   esi,esi
  eba670:	je     eba81d
  eba676:	mov    eax,DWORD PTR [esp+0x58]
  eba67a:	mov    eax,DWORD PTR [eax]
  eba67c:	mov    ebx,DWORD PTR [esi]
  eba67e:	movzx  edx,WORD PTR [ebx+0xaa]
  eba685:	test   edx,edx
  eba687:	je     eba698
  eba689:	mov    edi,DWORD PTR [ebx+0x4c]
  eba68c:	xor    ecx,ecx
  eba68e:	cmp    DWORD PTR [edi+ecx*8],eax
  eba691:	je     eba6b2
  eba693:	inc    ecx
  eba694:	cmp    ecx,edx
  eba696:	jb     eba68e
  eba698:	mov    DWORD PTR [esp+0x4],eax
  eba69c:	mov    DWORD PTR [esp],esi
  eba69f:	mov    DWORD PTR [esp+0x8],0x89
  eba6a7:	mov    ebx,DWORD PTR [esp+0x5c]
  eba6ab:	call   1c1964
  eba6b0:	jmp    eba6c1
  eba6b2:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  eba6b6:	lea    eax,[ebx+eax*8+0x4fc]
  eba6bd:	mov    ebx,DWORD PTR [esp+0x5c]
  eba6c1:	mov    ecx,DWORD PTR [eax+0x4]
  eba6c4:	mov    DWORD PTR [esp+0x8],ecx
  eba6c8:	mov    DWORD PTR [esp],esi
  eba6cb:	mov    DWORD PTR [esp+0x4],0x0
  eba6d3:	mov    esi,ebx
  eba6d5:	call   DWORD PTR [eax]
  eba6d7:	mov    edi,DWORD PTR [ebp+0x8]
  eba6da:	mov    eax,DWORD PTR [edi+0x8]
  eba6dd:	test   eax,eax
  eba6df:	je     eba82b
  eba6e5:	cmp    BYTE PTR [eax+0xa4],0x0
  eba6ec:	je     eba806
  eba6f2:	mov    eax,DWORD PTR [eax+0x68]
  eba6f5:	mov    ebx,esi
  eba6f7:	test   eax,eax
  eba6f9:	je     eba821
  eba6ff:	lea    ecx,[ebx+0x4a04c]
  eba705:	mov    ecx,DWORD PTR [ecx]
  eba707:	mov    DWORD PTR [esp+0x8],ecx
  eba70b:	mov    DWORD PTR [esp],eax
  eba70e:	mov    DWORD PTR [esp+0x4],0x1
  eba716:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  eba71b:	lea    esi,[ebx+0x45880]
  eba721:	mov    ecx,DWORD PTR [esi]
  eba723:	mov    ecx,DWORD PTR [ecx+0x50]
  eba726:	cmp    DWORD PTR [ecx+0x4],0x0
  eba72a:	jne    eba794
  eba72c:	lea    ecx,[ebx+0x4a0e4]
  eba732:	mov    ecx,DWORD PTR [ecx]
  eba734:	mov    DWORD PTR [esp+0x58],ecx
  eba738:	lea    ecx,[ebx+0x4588c]
  eba73e:	mov    ecx,DWORD PTR [ecx]
  eba740:	mov    DWORD PTR [esp],ecx
  eba743:	mov    DWORD PTR [esp+0x60],eax
  eba747:	call   20bfb2
  eba74c:	mov    edi,eax
  eba74e:	mov    eax,DWORD PTR [esp+0x58]
  eba752:	mov    DWORD PTR [esp+0xb8],eax
  eba759:	lea    eax,[ebx+0x4a054]
  eba75f:	mov    eax,DWORD PTR [eax]
  eba761:	mov    DWORD PTR [esp+0xc],eax
  eba765:	mov    eax,DWORD PTR [esp+0xb8]
  eba76c:	mov    DWORD PTR [esp+0x8],eax
  eba770:	mov    DWORD PTR [esp],edi
  eba773:	mov    DWORD PTR [esp+0x4],0x0
  eba77b:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  eba780:	mov    eax,DWORD PTR [esp+0x60]
  eba784:	mov    ecx,DWORD PTR [esi]
  eba786:	mov    ecx,DWORD PTR [ecx+0x50]
  eba789:	mov    DWORD PTR [ecx+0x4],edi
  eba78c:	mov    edi,DWORD PTR [ebp+0x8]
  eba78f:	mov    ecx,DWORD PTR [esi]
  eba791:	mov    ecx,DWORD PTR [ecx+0x50]
  eba794:	mov    edx,DWORD PTR [ecx+0x4]
  eba797:	lea    ecx,[ebx+0x4a058]
  eba79d:	mov    ecx,DWORD PTR [ecx]
  eba79f:	mov    DWORD PTR [esp+0xc],ecx
  eba7a3:	mov    DWORD PTR [esp+0x8],edx
  eba7a7:	mov    DWORD PTR [esp+0x4],eax
  eba7ab:	mov    DWORD PTR [esp],0x0
  eba7b2:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  eba7b7:	lea    ecx,[ebx+0x4a05c]
  eba7bd:	mov    ecx,DWORD PTR [ecx]
  eba7bf:	mov    DWORD PTR [esp+0x8],ecx
  eba7c3:	mov    DWORD PTR [esp+0x4],eax
  eba7c7:	mov    DWORD PTR [esp],0x0
  eba7ce:	call   ddf8e7  ; shared address: System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | +12 other aliases
  eba7d3:	mov    esi,eax
  eba7d5:	mov    DWORD PTR [esp+0x4],0x0
  eba7dd:	mov    DWORD PTR [esp],0x0
  eba7e4:	call   1093343  ; DIContainerLogic::GetPvpObjectivesService
  eba7e9:	test   eax,eax
  eba7eb:	je     eba821
  eba7ed:	mov    ecx,DWORD PTR [edi+0xc]
  eba7f0:	sub    ecx,esi
  eba7f2:	mov    DWORD PTR [esp+0x4],ecx
  eba7f6:	mov    DWORD PTR [esp],eax
  eba7f9:	mov    DWORD PTR [esp+0x8],0x0
  eba801:	call   80c4a4  ; PvPObjectivesService::EnemiesKnockedOutinTotal
  eba806:	mov    DWORD PTR [edi+0x148],0xffffffff
  eba810:	xor    eax,eax
  eba812:	movzx  eax,al
  eba815:	lea    esp,[ebp-0xc]
  eba818:	pop    esi
  eba819:	pop    edi
  eba81a:	pop    ebx
  eba81b:	pop    ebp
  eba81c:	ret
  eba81d:	mov    ebx,DWORD PTR [esp+0x5c]
  eba821:	call   1fbc48
  eba826:	call   ebbb41
  eba82b:	mov    ebx,esi
  eba82d:	jmp    eba821
  eba82f:	mov    ebx,DWORD PTR [esp+0x5c]
  eba833:	call   1fbc48
  eba838:	call   ebbb41