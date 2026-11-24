
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057d050:
  57d050:	push   ebp
  57d051:	mov    ebp,esp
  57d053:	push   ebx
  57d054:	push   edi
  57d055:	push   esi
  57d056:	and    esp,0xfffffff0
  57d059:	sub    esp,0x60
  57d05c:	call   57d061
  57d061:	pop    ebx
  57d062:	add    ebx,0x1994ee3
  57d068:	mov    al,BYTE PTR [ebx+0x5d740]
  57d06e:	test   al,al
  57d070:	jne    57d089
  57d072:	lea    eax,[ebx-0x6627ec]
  57d078:	mov    eax,DWORD PTR [eax]
  57d07a:	mov    DWORD PTR [esp],eax
  57d07d:	call   1ca6e8
  57d082:	mov    BYTE PTR [ebx+0x5d740],0x1
  57d089:	lea    eax,[ebx+0x499e0]
  57d08f:	mov    DWORD PTR [esp+0x30],eax
  57d093:	mov    eax,DWORD PTR [eax]
  57d095:	mov    DWORD PTR [esp+0x4],eax
  57d099:	lea    eax,[ebp+0xc]
  57d09c:	mov    DWORD PTR [esp],eax
  57d09f:	call   16ab7d4
  57d0a4:	test   eax,eax
  57d0a6:	jle    57d365
  57d0ac:	mov    edi,DWORD PTR [ebp+0x24]
  57d0af:	lea    eax,[ebx+0x45494]
  57d0b5:	mov    eax,DWORD PTR [eax]
  57d0b7:	mov    DWORD PTR [esp],eax
  57d0ba:	call   20bfb2
  57d0bf:	mov    DWORD PTR [esp+0x34],eax
  57d0c3:	lea    ecx,[ebx+0x49878]
  57d0c9:	mov    ecx,DWORD PTR [ecx]
  57d0cb:	mov    DWORD PTR [esp+0x4],ecx
  57d0cf:	mov    DWORD PTR [esp],eax
  57d0d2:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  57d0d7:	test   edi,edi
  57d0d9:	je     57d36d
  57d0df:	xorps  xmm0,xmm0
  57d0e2:	movss  DWORD PTR [esp+0x3c],xmm0
  57d0e8:	mov    DWORD PTR [esp+0x4c],0x0
  57d0f0:	jmp    57d0f6
  57d0f2:	inc    DWORD PTR [esp+0x4c]
  57d0f6:	mov    DWORD PTR [esp],edi
  57d0f9:	mov    DWORD PTR [esp+0x4],0x0
  57d101:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57d106:	test   eax,eax
  57d108:	je     57d36d
  57d10e:	lea    esi,[ebx+0x4af80]
  57d114:	mov    DWORD PTR [esp+0x48],esi
  57d118:	mov    ecx,DWORD PTR [esi]
  57d11a:	mov    DWORD PTR [esp+0x4],ecx
  57d11e:	mov    DWORD PTR [esp],eax
  57d121:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57d126:	cmp    DWORD PTR [esp+0x4c],eax
  57d12a:	jge    57d21d
  57d130:	mov    DWORD PTR [esp],edi
  57d133:	mov    DWORD PTR [esp+0x4],0x0
  57d13b:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57d140:	test   eax,eax
  57d142:	je     57d36d
  57d148:	lea    esi,[ebx+0x4af7c]
  57d14e:	mov    ecx,DWORD PTR [esi]
  57d150:	mov    DWORD PTR [esp+0x8],ecx
  57d154:	mov    ecx,DWORD PTR [esp+0x4c]
  57d158:	mov    DWORD PTR [esp+0x4],ecx
  57d15c:	mov    DWORD PTR [esp],eax
  57d15f:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57d164:	mov    edi,eax
  57d166:	test   edi,edi
  57d168:	je     57d36d
  57d16e:	mov    eax,DWORD PTR [ebp+0x14]
  57d171:	mov    DWORD PTR [esp+0x4],eax
  57d175:	mov    DWORD PTR [esp],edi
  57d178:	mov    DWORD PTR [esp+0x8],0x0
  57d180:	call   179b45b  ; ABH.Shared.Models.Generic.LootTableEntry::IsConditionSatisfied
  57d185:	test   al,al
  57d187:	je     57d215
  57d18d:	mov    ecx,DWORD PTR [esp+0x34]
  57d191:	test   ecx,ecx
  57d193:	je     57d36d
  57d199:	lea    eax,[ebx+0x4987c]
  57d19f:	mov    eax,DWORD PTR [eax]
  57d1a1:	mov    DWORD PTR [esp+0x8],eax
  57d1a5:	mov    DWORD PTR [esp+0x4],edi
  57d1a9:	mov    DWORD PTR [esp],ecx
  57d1ac:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  57d1b1:	mov    edi,DWORD PTR [ebp+0x24]
  57d1b4:	mov    DWORD PTR [esp],edi
  57d1b7:	mov    DWORD PTR [esp+0x4],0x0
  57d1bf:	call   1701787  ; ABH.Shared.BalancingData.LootTableBalancingData::get_LootTableEntries
  57d1c4:	test   eax,eax
  57d1c6:	je     57d36d
  57d1cc:	mov    ecx,DWORD PTR [esi]
  57d1ce:	mov    DWORD PTR [esp+0x8],ecx
  57d1d2:	mov    ecx,DWORD PTR [esp+0x4c]
  57d1d6:	mov    DWORD PTR [esp+0x4],ecx
  57d1da:	mov    DWORD PTR [esp],eax
  57d1dd:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57d1e2:	test   eax,eax
  57d1e4:	je     57d36d
  57d1ea:	mov    DWORD PTR [esp],eax
  57d1ed:	mov    DWORD PTR [esp+0x4],0x0
  57d1f5:	call   179b3cb  ; ABH.Shared.Models.Generic.LootTableEntry::get_Probability
  57d1fa:	fstp   DWORD PTR [esp+0x50]
  57d1fe:	movss  xmm0,DWORD PTR [esp+0x3c]
  57d204:	addss  xmm0,DWORD PTR [esp+0x50]
  57d20a:	movss  DWORD PTR [esp+0x3c],xmm0
  57d210:	jmp    57d0f2
  57d215:	mov    edi,DWORD PTR [ebp+0x24]
  57d218:	jmp    57d0f2
  57d21d:	mov    eax,DWORD PTR [esp+0x30]
  57d221:	mov    eax,DWORD PTR [eax]
  57d223:	mov    DWORD PTR [esp+0x4],eax
  57d227:	lea    eax,[ebp+0xc]
  57d22a:	mov    DWORD PTR [esp],eax
  57d22d:	call   16ab7d4
  57d232:	test   eax,eax
  57d234:	jle    57d365
  57d23a:	xor    edi,edi
  57d23c:	mov    DWORD PTR [esp+0x38],edi
  57d240:	mov    DWORD PTR [esp+0x4],0x0
  57d248:	mov    DWORD PTR [esp],0x0
  57d24f:	call   167eb9e  ; UnityEngine.Random::get_value
  57d254:	mov    ecx,DWORD PTR [esp+0x34]
  57d258:	test   ecx,ecx
  57d25a:	fstp   DWORD PTR [esp+0x58]
  57d25e:	je     57d36d
  57d264:	xor    edi,edi
  57d266:	movss  xmm0,DWORD PTR [esp+0x58]
  57d26c:	mulss  xmm0,DWORD PTR [esp+0x3c]
  57d272:	movss  DWORD PTR [esp+0x44],xmm0
  57d278:	xorps  xmm0,xmm0
  57d27b:	movss  DWORD PTR [esp+0x4c],xmm0
  57d281:	jmp    57d290
  57d283:	movss  DWORD PTR [esp+0x4c],xmm0
  57d289:	inc    edi
  57d28a:	mov    ecx,esi
  57d28c:	mov    esi,DWORD PTR [esp+0x48]
  57d290:	mov    eax,DWORD PTR [esi]
  57d292:	mov    DWORD PTR [esp+0x4],eax
  57d296:	mov    DWORD PTR [esp],ecx
  57d299:	mov    esi,ecx
  57d29b:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57d2a0:	cmp    edi,eax
  57d2a2:	jge    57d33f
  57d2a8:	lea    eax,[ebx+0x4af7c]
  57d2ae:	mov    DWORD PTR [esp+0x40],eax
  57d2b2:	mov    eax,DWORD PTR [eax]
  57d2b4:	mov    DWORD PTR [esp+0x8],eax
  57d2b8:	mov    DWORD PTR [esp+0x4],edi
  57d2bc:	mov    DWORD PTR [esp],esi
  57d2bf:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57d2c4:	test   eax,eax
  57d2c6:	je     57d36d
  57d2cc:	mov    DWORD PTR [esp],eax
  57d2cf:	mov    DWORD PTR [esp+0x4],0x0
  57d2d7:	call   179b3cb  ; ABH.Shared.Models.Generic.LootTableEntry::get_Probability
  57d2dc:	fstp   DWORD PTR [esp+0x54]
  57d2e0:	movss  xmm0,DWORD PTR [esp+0x4c]
  57d2e6:	addss  xmm0,DWORD PTR [esp+0x54]
  57d2ec:	ucomiss xmm0,DWORD PTR [esp+0x44]
  57d2f1:	jb     57d283
  57d2f3:	mov    eax,DWORD PTR [esp+0x40]
  57d2f7:	mov    eax,DWORD PTR [eax]
  57d2f9:	mov    DWORD PTR [esp+0x8],eax
  57d2fd:	mov    DWORD PTR [esp+0x4],edi
  57d301:	mov    DWORD PTR [esp],esi
  57d304:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57d309:	mov    ecx,DWORD PTR [ebp+0x28]
  57d30c:	mov    esi,ecx
  57d30e:	mov    DWORD PTR [esp+0x18],esi
  57d312:	mov    DWORD PTR [esp+0x14],eax
  57d316:	mov    eax,DWORD PTR [ebp+0x20]
  57d319:	mov    DWORD PTR [esp+0x10],eax
  57d31d:	mov    eax,DWORD PTR [ebp+0x1c]
  57d320:	mov    DWORD PTR [esp+0xc],eax
  57d324:	mov    eax,DWORD PTR [ebp+0x18]
  57d327:	mov    DWORD PTR [esp+0x8],eax
  57d32b:	mov    eax,DWORD PTR [ebp+0x14]
  57d32e:	mov    DWORD PTR [esp+0x4],eax
  57d332:	mov    eax,DWORD PTR [ebp+0x8]
  57d335:	mov    DWORD PTR [esp],eax
  57d338:	call   57d5ce  ; ABH.Services.Logic.LootOperations::ProcessLootEntry
  57d33d:	mov    DWORD PTR [esi],edi
  57d33f:	mov    edi,DWORD PTR [esp+0x38]
  57d343:	inc    edi
  57d344:	mov    eax,DWORD PTR [esp+0x30]
  57d348:	mov    eax,DWORD PTR [eax]
  57d34a:	mov    DWORD PTR [esp+0x4],eax
  57d34e:	lea    eax,[ebp+0xc]
  57d351:	mov    DWORD PTR [esp],eax
  57d354:	call   16ab7d4
  57d359:	cmp    edi,eax
  57d35b:	mov    esi,DWORD PTR [esp+0x48]
  57d35f:	jl     57d23c
  57d365:	lea    esp,[ebp-0xc]
  57d368:	pop    esi
  57d369:	pop    edi
  57d36a:	pop    ebx
  57d36b:	pop    ebp
  57d36c:	ret
  57d36d:	call   1fbc48
  57d372:	call   540b98