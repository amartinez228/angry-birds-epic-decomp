
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00515e04:
  515e04:	push   ebp
  515e05:	mov    ebp,esp
  515e07:	push   ebx
  515e08:	push   edi
  515e09:	push   esi
  515e0a:	and    esp,0xfffffff0
  515e0d:	sub    esp,0x60
  515e10:	call   515e15
  515e15:	pop    ebx
  515e16:	add    ebx,0x19fc12f
  515e1c:	mov    esi,DWORD PTR [ebp+0xc]
  515e1f:	mov    al,BYTE PTR [ebx+0x5d540]
  515e25:	test   al,al
  515e27:	jne    515e40
  515e29:	lea    eax,[ebx-0x66f370]
  515e2f:	mov    eax,DWORD PTR [eax]
  515e31:	mov    DWORD PTR [esp],eax
  515e34:	call   1ca6e8
  515e39:	mov    BYTE PTR [ebx+0x5d540],0x1
  515e40:	mov    DWORD PTR [esp+0x58],0x0
  515e48:	xorps  xmm0,xmm0
  515e4b:	movaps XMMWORD PTR [esp+0x40],xmm0
  515e50:	mov    DWORD PTR [esp+0x50],0x0
  515e58:	test   esi,esi
  515e5a:	je     516420
  515e60:	mov    eax,DWORD PTR [esi+0x14]
  515e63:	test   eax,eax
  515e65:	je     516420
  515e6b:	mov    eax,DWORD PTR [eax+0x28]
  515e6e:	mov    DWORD PTR [esp+0x58],eax
  515e72:	mov    DWORD PTR [esp+0x4],0x0
  515e7a:	mov    DWORD PTR [esp],0x0
  515e81:	call   106b137  ; DIContainerLogic::get_InventoryService
  515e86:	test   eax,eax
  515e88:	je     516420
  515e8e:	mov    esi,DWORD PTR [ebp+0x10]
  515e91:	lea    edi,[ebx+0x575b4]  ; literal "unlock_reroll_first_reroll"
  515e97:	mov    ecx,DWORD PTR [edi]
  515e99:	mov    DWORD PTR [esp+0x8],ecx
  515e9d:	mov    DWORD PTR [esp+0x4],esi
  515ea1:	mov    DWORD PTR [esp],eax
  515ea4:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  515ea9:	test   eax,eax
  515eab:	jle    515f08
  515ead:	mov    DWORD PTR [esp+0x4],0x0
  515eb5:	mov    DWORD PTR [esp],0x0
  515ebc:	call   106b137  ; DIContainerLogic::get_InventoryService
  515ec1:	test   eax,eax
  515ec3:	je     516420
  515ec9:	mov    ecx,DWORD PTR [edi]
  515ecb:	lea    edx,[ebx+0x57544]  ; literal "tutorial"
  515ed1:	mov    edx,DWORD PTR [edx]
  515ed3:	mov    DWORD PTR [esp+0x10],edx
  515ed7:	mov    DWORD PTR [esp+0x8],ecx
  515edb:	mov    DWORD PTR [esp+0x4],esi
  515edf:	mov    DWORD PTR [esp],eax
  515ee2:	mov    DWORD PTR [esp+0xc],0x1
  515eea:	mov    esi,ebx
  515eec:	call   4fa47f  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::RemoveItem
  515ef1:	mov    edi,DWORD PTR [ebp+0xc]
  515ef4:	mov    eax,DWORD PTR [edi+0x14]
  515ef7:	test   eax,eax
  515ef9:	je     51641e
  515eff:	mov    DWORD PTR [eax+0x28],0x0
  515f06:	jmp    515f47
  515f08:	mov    edi,DWORD PTR [ebp+0xc]
  515f0b:	mov    eax,DWORD PTR [edi+0x14]
  515f0e:	mov    DWORD PTR [esp+0x38],eax
  515f12:	mov    DWORD PTR [esp+0xc],0x0
  515f1a:	mov    DWORD PTR [esp+0x8],0x8
  515f22:	mov    DWORD PTR [esp+0x4],0x0
  515f2a:	mov    DWORD PTR [esp],0x0
  515f31:	mov    esi,ebx
  515f33:	call   167eb06  ; UnityEngine.Random::Range
  515f38:	mov    ecx,DWORD PTR [esp+0x38]
  515f3c:	test   ecx,ecx
  515f3e:	je     51641e
  515f44:	mov    DWORD PTR [ecx+0x28],eax
  515f47:	mov    ebx,esi
  515f49:	lea    eax,[ebx+0x44d10]
  515f4f:	mov    eax,DWORD PTR [eax]
  515f51:	mov    DWORD PTR [esp],eax
  515f54:	call   20bfb2
  515f59:	mov    esi,eax
  515f5b:	lea    eax,[ebx+0x49298]
  515f61:	mov    eax,DWORD PTR [eax]
  515f63:	mov    DWORD PTR [esp+0x4],eax
  515f67:	mov    DWORD PTR [esp],esi
  515f6a:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  515f6f:	mov    DWORD PTR [esp],edi
  515f72:	mov    DWORD PTR [esp+0x4],0x0
  515f7a:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  515f7f:	test   eax,eax
  515f81:	je     516420
  515f87:	mov    DWORD PTR [esp],eax
  515f8a:	mov    DWORD PTR [esp+0x4],0x0
  515f92:	call   16fe38d  ; ABH.Shared.BalancingData.BattleBalancingData::get_NameId
  515f97:	test   esi,esi
  515f99:	je     516420
  515f9f:	lea    ecx,[ebx+0x5732c]  ; literal "BattleName"
  515fa5:	mov    ecx,DWORD PTR [ecx]
  515fa7:	lea    edi,[ebx+0x4929c]
  515fad:	mov    DWORD PTR [esp+0x38],edi
  515fb1:	mov    edx,DWORD PTR [edi]
  515fb3:	mov    DWORD PTR [esp+0xc],edx
  515fb7:	mov    DWORD PTR [esp+0x8],eax
  515fbb:	mov    DWORD PTR [esp+0x4],ecx
  515fbf:	mov    DWORD PTR [esp],esi
  515fc2:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  515fc7:	lea    eax,[ebx+0x508e0]  ; literal "0"
  515fcd:	mov    DWORD PTR [esp+0x30],eax
  515fd1:	mov    eax,DWORD PTR [eax]
  515fd3:	mov    DWORD PTR [esp+0x4],eax
  515fd7:	lea    eax,[esp+0x58]
  515fdb:	mov    DWORD PTR [esp],eax
  515fde:	mov    DWORD PTR [esp+0x8],0x0
  515fe6:	call   fea004
  515feb:	lea    ecx,[ebx+0x575b8]  ; literal "IndexBefore"
  515ff1:	mov    ecx,DWORD PTR [ecx]
  515ff3:	mov    edx,DWORD PTR [edi]
  515ff5:	mov    DWORD PTR [esp+0xc],edx
  515ff9:	mov    DWORD PTR [esp+0x8],eax
  515ffd:	mov    DWORD PTR [esp+0x4],ecx
  516001:	mov    DWORD PTR [esp],esi
  516004:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  516009:	mov    eax,DWORD PTR [ebp+0xc]
  51600c:	mov    eax,DWORD PTR [eax+0x14]
  51600f:	test   eax,eax
  516011:	je     516420
  516017:	add    eax,0x28
  51601a:	mov    ecx,DWORD PTR [esp+0x30]
  51601e:	mov    ecx,DWORD PTR [ecx]
  516020:	mov    DWORD PTR [esp+0x4],ecx
  516024:	mov    DWORD PTR [esp],eax
  516027:	mov    DWORD PTR [esp+0x8],0x0
  51602f:	call   fea004
  516034:	lea    ecx,[ebx+0x575bc]  ; literal "IndexAfter"
  51603a:	mov    ecx,DWORD PTR [ecx]
  51603c:	mov    edx,DWORD PTR [esp+0x38]
  516040:	mov    edx,DWORD PTR [edx]
  516042:	mov    DWORD PTR [esp+0xc],edx
  516046:	mov    DWORD PTR [esp+0x8],eax
  51604a:	mov    DWORD PTR [esp+0x4],ecx
  51604e:	mov    DWORD PTR [esp],esi
  516051:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  516056:	lea    eax,[ebx+0x4584c]
  51605c:	mov    eax,DWORD PTR [eax]
  51605e:	test   BYTE PTR [eax+0xb2],0x1
  516065:	je     516075
  516067:	cmp    DWORD PTR [eax+0x60],0x0
  51606b:	jne    516075
  51606d:	mov    DWORD PTR [esp],eax
  516070:	call   1db0b8
  516075:	mov    DWORD PTR [esp+0x38],esi
  516079:	mov    DWORD PTR [esp+0x8],0x0
  516081:	mov    DWORD PTR [esp+0x4],0x0
  516089:	mov    DWORD PTR [esp],0x0
  516090:	call   1076512  ; DIContainerInfrastructure::GetAnalyticsSystem
  516095:	mov    edx,eax
  516097:	test   edx,edx
  516099:	je     516420
  51609f:	lea    ecx,[ebx+0x45e5c]
  5160a5:	mov    eax,DWORD PTR [ecx]
  5160a7:	lea    ecx,[ebx+0x575c0]  ; literal "BattleResultRerolled"
  5160ad:	mov    ecx,DWORD PTR [ecx]
  5160af:	mov    DWORD PTR [esp+0x2c],ecx
  5160b3:	mov    ecx,DWORD PTR [edx]
  5160b5:	mov    DWORD PTR [esp+0x30],edx
  5160b9:	movzx  edx,WORD PTR [ecx+0xaa]
  5160c0:	test   edx,edx
  5160c2:	je     5160d3
  5160c4:	mov    esi,DWORD PTR [ecx+0x4c]
  5160c7:	xor    edi,edi
  5160c9:	cmp    DWORD PTR [esi+edi*8],eax
  5160cc:	je     5160ef
  5160ce:	inc    edi
  5160cf:	cmp    edi,edx
  5160d1:	jb     5160c9
  5160d3:	mov    DWORD PTR [esp+0x4],eax
  5160d7:	mov    esi,DWORD PTR [esp+0x30]
  5160db:	mov    DWORD PTR [esp],esi
  5160de:	mov    DWORD PTR [esp+0x8],0x4
  5160e6:	call   1c1964
  5160eb:	mov    ecx,eax
  5160ed:	jmp    5160fe
  5160ef:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  5160f3:	lea    ecx,[ecx+eax*8+0xd4]
  5160fa:	mov    esi,DWORD PTR [esp+0x30]
  5160fe:	mov    DWORD PTR [esp+0x34],ebx
  516102:	mov    eax,DWORD PTR [ecx+0x4]
  516105:	mov    DWORD PTR [esp+0x10],eax
  516109:	mov    eax,DWORD PTR [esp+0x38]
  51610d:	mov    DWORD PTR [esp+0x8],eax
  516111:	mov    eax,DWORD PTR [esp+0x2c]
  516115:	mov    DWORD PTR [esp+0x4],eax
  516119:	mov    DWORD PTR [esp],esi
  51611c:	mov    DWORD PTR [esp+0xc],0x0
  516124:	call   DWORD PTR [ecx]
  516126:	mov    eax,DWORD PTR [ebp+0xc]
  516129:	mov    esi,eax
  51612b:	mov    eax,DWORD PTR [esi+0x14]
  51612e:	mov    DWORD PTR [esp+0x30],eax
  516132:	mov    DWORD PTR [esp+0x4],0x0
  51613a:	mov    DWORD PTR [esp],0x0
  516141:	call   106f816  ; DIContainerLogic::GetLootOperationService
  516146:	mov    DWORD PTR [esp+0x38],eax
  51614a:	lea    eax,[ebx+0x43134]
  516150:	mov    eax,DWORD PTR [eax]
  516152:	mov    DWORD PTR [esp],eax
  516155:	call   20bfb2
  51615a:	mov    edi,eax
  51615c:	lea    eax,[ebx+0x49284]
  516162:	mov    eax,DWORD PTR [eax]
  516164:	mov    DWORD PTR [esp+0x4],eax
  516168:	mov    DWORD PTR [esp],edi
  51616b:	call   60f980  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::.ctor | System.Collections.Generic.Dictionary`2<UnityEngine.Font, int>::.ctor | System.Collections.Generic.Dictionary`2<object, int>::.ctor
  516170:	mov    eax,DWORD PTR [esi+0x14]
  516173:	test   eax,eax
  516175:	je     516418
  51617b:	mov    eax,DWORD PTR [eax+0x70]
  51617e:	test   eax,eax
  516180:	je     516418
  516186:	mov    DWORD PTR [esp],eax
  516189:	mov    DWORD PTR [esp+0x4],0x0
  516191:	mov    ebx,DWORD PTR [esp+0x34]
  516195:	call   1701764  ; ABH.Shared.BalancingData.LootTableBalancingData::get_NameId
  51619a:	test   edi,edi
  51619c:	je     516420
  5161a2:	lea    ecx,[ebx+0x48b98]
  5161a8:	mov    ecx,DWORD PTR [ecx]
  5161aa:	mov    DWORD PTR [esp+0xc],ecx
  5161ae:	mov    DWORD PTR [esp+0x4],eax
  5161b2:	mov    DWORD PTR [esp],edi
  5161b5:	mov    esi,edi
  5161b7:	mov    DWORD PTR [esp+0x8],0x1
  5161bf:	call   611c0d  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::Add | System.Collections.Generic.Dictionary`2<object, int>::Add | System.Collections.Generic.Dictionary`2<System.Type, int>::Add
  5161c4:	mov    eax,DWORD PTR [ebp+0xc]
  5161c7:	mov    eax,DWORD PTR [eax+0x14]
  5161ca:	test   eax,eax
  5161cc:	je     516418
  5161d2:	mov    edi,DWORD PTR [esp+0x38]
  5161d6:	test   edi,edi
  5161d8:	je     516418
  5161de:	mov    ecx,DWORD PTR [eax+0x20]
  5161e1:	mov    edx,DWORD PTR [eax+0x44]
  5161e4:	lea    eax,[eax+0x28]
  5161e7:	mov    DWORD PTR [esp+0x14],eax
  5161eb:	mov    DWORD PTR [esp+0xc],ecx
  5161ef:	mov    DWORD PTR [esp+0x8],edx
  5161f3:	mov    DWORD PTR [esp+0x4],esi
  5161f7:	mov    DWORD PTR [esp],edi
  5161fa:	mov    DWORD PTR [esp+0x18],0x0
  516202:	mov    DWORD PTR [esp+0x10],0x0
  51620a:	mov    ebx,DWORD PTR [esp+0x34]
  51620e:	call   57c9e7  ; ABH.Services.Logic.LootOperations::GenerateLoot
  516213:	mov    edx,DWORD PTR [esp+0x30]
  516217:	test   edx,edx
  516219:	je     516420
  51621f:	mov    cl,BYTE PTR [ebp+0x14]
  516222:	mov    DWORD PTR [edx+0x10],eax
  516225:	test   cl,cl
  516227:	mov    esi,DWORD PTR [ebp+0xc]
  51622a:	je     51640b
  516230:	lea    eax,[ebx+0x45820]
  516236:	mov    eax,DWORD PTR [eax]
  516238:	test   BYTE PTR [eax+0xb2],0x1
  51623f:	je     51624f
  516241:	cmp    DWORD PTR [eax+0x60],0x0
  516245:	jne    51624f
  516247:	mov    DWORD PTR [esp],eax
  51624a:	call   1db0b8
  51624f:	mov    DWORD PTR [esp+0x4],0x0
  516257:	mov    DWORD PTR [esp],0x0
  51625e:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
  516263:	test   eax,eax
  516265:	je     516420
  51626b:	mov    DWORD PTR [esp],eax
  51626e:	mov    DWORD PTR [esp+0x4],0x0
  516276:	call   ab99e1  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_BonusPercentByBossRewardVideo
  51627b:	fstp   DWORD PTR [esp+0x3c]
  51627f:	mov    eax,DWORD PTR [esi+0x14]
  516282:	test   eax,eax
  516284:	je     516420
  51628a:	mov    eax,DWORD PTR [eax+0x10]
  51628d:	test   eax,eax
  51628f:	je     516420
  516295:	movss  xmm0,DWORD PTR [esp+0x3c]
  51629b:	movss  DWORD PTR [esp+0x30],xmm0
  5162a1:	lea    ecx,[ebx+0x4b368]
  5162a7:	mov    ecx,DWORD PTR [ecx]
  5162a9:	mov    DWORD PTR [esp+0x4],ecx
  5162ad:	mov    DWORD PTR [esp],eax
  5162b0:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  5162b5:	test   eax,eax
  5162b7:	je     516420
  5162bd:	lea    ecx,[ebx+0x4b36c]
  5162c3:	mov    ecx,DWORD PTR [ecx]
  5162c5:	mov    DWORD PTR [esp+0x8],ecx
  5162c9:	mov    DWORD PTR [esp+0x4],eax
  5162cd:	lea    eax,[esp+0x40]
  5162d1:	mov    DWORD PTR [esp],eax
  5162d4:	call   12374c5  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, UnityEngine.GUIStyle>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, ABH.GameDatas.Battle.BattleEffectGameData>::GetEnumerator | +11 other aliases
  5162d9:	sub    esp,0x4
  5162dc:	movss  xmm0,DWORD PTR [esp+0x30]
  5162e2:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  5162ea:	movss  DWORD PTR [esp+0x30],xmm0
  5162f0:	lea    eax,[ebx+0x4b374]
  5162f6:	mov    edi,ebx
  5162f8:	mov    DWORD PTR [esp+0x38],eax
  5162fc:	mov    eax,DWORD PTR [esp+0x38]
  516300:	mov    eax,DWORD PTR [eax]
  516302:	mov    DWORD PTR [esp+0x4],eax
  516306:	lea    eax,[esp+0x40]
  51630a:	mov    DWORD PTR [esp],eax
  51630d:	mov    ebx,edi
  51630f:	call   12276c5
  516314:	test   al,al
  516316:	je     5163ae
  51631c:	lea    eax,[edi+0x4b370]
  516322:	mov    eax,DWORD PTR [eax]
  516324:	mov    DWORD PTR [esp+0x4],eax
  516328:	lea    eax,[esp+0x40]
  51632c:	mov    DWORD PTR [esp],eax
  51632f:	mov    ebx,edi
  516331:	call   1227754
  516336:	mov    esi,eax
  516338:	test   esi,esi
  51633a:	je     5163ba
  51633c:	mov    DWORD PTR [esp],esi
  51633f:	mov    DWORD PTR [esp+0x4],0x0
  516347:	mov    ebx,edi
  516349:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  51634e:	cmp    eax,0x2
  516351:	jl     5162fc
  516353:	mov    DWORD PTR [esp],esi
  516356:	mov    DWORD PTR [esp+0x4],0x0
  51635e:	mov    ebx,edi
  516360:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  516365:	mov    DWORD PTR [esp],esi
  516368:	mov    DWORD PTR [esp+0x4],0x0
  516370:	mov    ebx,edi
  516372:	mov    DWORD PTR [esp+0x2c],eax
  516376:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  51637b:	mov    ecx,DWORD PTR [esp+0x2c]
  51637f:	cvtsi2ss xmm0,eax
  516383:	mulss  xmm0,DWORD PTR [esp+0x30]
  516389:	cvttss2si eax,xmm0
  51638d:	add    eax,ecx
  51638f:	mov    DWORD PTR [esp],esi
  516392:	mov    DWORD PTR [esp+0x4],eax
  516396:	mov    DWORD PTR [esp+0x8],0x0
  51639e:	mov    ebx,edi
  5163a0:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  5163a5:	jmp    5162fc
  5163aa:	mov    ebx,edi
  5163ac:	jmp    5163c3
  5163ae:	xor    esi,esi
  5163b0:	mov    al,0x1
  5163b2:	mov    DWORD PTR [esp+0x38],eax
  5163b6:	mov    ebx,edi
  5163b8:	jmp    5163df
  5163ba:	mov    ebx,edi
  5163bc:	call   1fbc48
  5163c1:	jmp    516432
  5163c3:	cmp    edx,0x1
  5163c6:	jne    51642a
  5163c8:	mov    DWORD PTR [esp],eax
  5163cb:	call   1ba3f0
  5163d0:	mov    esi,DWORD PTR [eax]
  5163d2:	call   1b9ce0
  5163d7:	mov    DWORD PTR [esp+0x38],0x0
  5163df:	lea    eax,[ebx+0x4b378]
  5163e5:	mov    eax,DWORD PTR [eax]
  5163e7:	mov    DWORD PTR [esp+0x4],eax
  5163eb:	lea    eax,[esp+0x40]
  5163ef:	mov    DWORD PTR [esp],eax
  5163f2:	call   122763c
  5163f7:	mov    eax,DWORD PTR [esp+0x38]
  5163fb:	test   al,al
  5163fd:	jne    51640b
  5163ff:	test   esi,esi
  516401:	je     51640b
  516403:	mov    DWORD PTR [esp],esi
  516406:	call   1fbb20
  51640b:	mov    eax,0x1
  516410:	lea    esp,[ebp-0xc]
  516413:	pop    esi
  516414:	pop    edi
  516415:	pop    ebx
  516416:	pop    ebp
  516417:	ret
  516418:	mov    ebx,DWORD PTR [esp+0x34]
  51641c:	jmp    516420
  51641e:	mov    ebx,esi
  516420:	call   1fbc48
  516425:	call   540b98
  51642a:	mov    DWORD PTR [esp],eax
  51642d:	call   1b9bd0
  516432:	call   540b98