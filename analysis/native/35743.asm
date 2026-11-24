
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d5158:
  6d5158:	push   ebp
  6d5159:	mov    ebp,esp
  6d515b:	push   ebx
  6d515c:	push   edi
  6d515d:	push   esi
  6d515e:	and    esp,0xfffffff0
  6d5161:	sub    esp,0x20
  6d5164:	call   6d5169
  6d5169:	pop    ebx
  6d516a:	add    ebx,0x183cddb
  6d5170:	mov    edi,DWORD PTR [ebp+0xc]
  6d5173:	mov    al,BYTE PTR [ebx+0x5f711]
  6d5179:	test   al,al
  6d517b:	jne    6d5194
  6d517d:	lea    eax,[ebx-0x66844c]
  6d5183:	mov    eax,DWORD PTR [eax]
  6d5185:	mov    DWORD PTR [esp],eax
  6d5188:	call   1ca6e8
  6d518d:	mov    BYTE PTR [ebx+0x5f711],0x1
  6d5194:	test   edi,edi
  6d5196:	je     6d53fe
  6d519c:	mov    esi,DWORD PTR [ebp+0x10]
  6d519f:	mov    DWORD PTR [esp],edi
  6d51a2:	mov    DWORD PTR [esp+0x4],0x0
  6d51aa:	call   1700a72  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_LocaBaseId
  6d51af:	mov    DWORD PTR [esp+0xc],eax
  6d51b3:	mov    DWORD PTR [esp+0x8],esi
  6d51b7:	mov    DWORD PTR [esp+0x4],edi
  6d51bb:	call   6d5408  ; ABH.GameDatas.EquipmentGameData::GetItemAssetOrLoca
  6d51c0:	mov    esi,eax
  6d51c2:	mov    DWORD PTR [esp],edi
  6d51c5:	mov    DWORD PTR [esp+0x4],0x0
  6d51cd:	call   1700bf4  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_DirectAssetAndLoca
  6d51d2:	test   al,al
  6d51d4:	je     6d5237
  6d51d6:	lea    eax,[ebx+0x4584c]
  6d51dc:	mov    eax,DWORD PTR [eax]
  6d51de:	test   BYTE PTR [eax+0xb2],0x1
  6d51e5:	je     6d51f5
  6d51e7:	cmp    DWORD PTR [eax+0x60],0x0
  6d51eb:	jne    6d51f5
  6d51ed:	mov    DWORD PTR [esp],eax
  6d51f0:	call   1db0b8
  6d51f5:	mov    DWORD PTR [esp+0x4],0x0
  6d51fd:	mov    DWORD PTR [esp],0x0
  6d5204:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  6d5209:	mov    esi,eax
  6d520b:	mov    DWORD PTR [esp],edi
  6d520e:	mov    DWORD PTR [esp+0x4],0x0
  6d5216:	call   1700a72  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_LocaBaseId
  6d521b:	test   esi,esi
  6d521d:	je     6d53fe
  6d5223:	movzx  ecx,BYTE PTR [ebp+0x18]
  6d5227:	mov    DWORD PTR [esp+0x8],ecx
  6d522b:	mov    DWORD PTR [esp+0x4],eax
  6d522f:	mov    DWORD PTR [esp],esi
  6d5232:	jmp    6d53a1
  6d5237:	mov    eax,DWORD PTR [ebp+0x14]
  6d523a:	cmp    eax,0x4
  6d523d:	jbe    6d52e4
  6d5243:	mov    DWORD PTR [esp+0x18],eax
  6d5247:	lea    eax,[ebx+0x45288]
  6d524d:	mov    eax,DWORD PTR [eax]
  6d524f:	lea    ecx,[esp+0x18]
  6d5253:	mov    DWORD PTR [esp+0x4],ecx
  6d5257:	mov    DWORD PTR [esp],eax
  6d525a:	call   20bf14
  6d525f:	mov    esi,eax
  6d5261:	lea    edi,[ebx+0x430e4]
  6d5267:	mov    eax,DWORD PTR [edi]
  6d5269:	test   BYTE PTR [eax+0xb2],0x1
  6d5270:	je     6d5280
  6d5272:	cmp    DWORD PTR [eax+0x60],0x0
  6d5276:	jne    6d5280
  6d5278:	mov    DWORD PTR [esp],eax
  6d527b:	call   1db0b8
  6d5280:	lea    eax,[ebx+0x570ac]  ; literal "Unknown EquipmentSourceType "
  6d5286:	mov    eax,DWORD PTR [eax]
  6d5288:	mov    DWORD PTR [esp+0x8],esi
  6d528c:	mov    DWORD PTR [esp+0x4],eax
  6d5290:	mov    DWORD PTR [esp+0xc],0x0
  6d5298:	mov    DWORD PTR [esp],0x0
  6d529f:	call   cb2fed  ; System.String::Concat
  6d52a4:	mov    DWORD PTR [esp+0x4],eax
  6d52a8:	mov    DWORD PTR [esp+0x8],0x0
  6d52b0:	mov    DWORD PTR [esp],0x0
  6d52b7:	call   108148a  ; DebugLog::Error
  6d52bc:	mov    eax,DWORD PTR [edi]
  6d52be:	test   BYTE PTR [eax+0xb2],0x1
  6d52c5:	je     6d53f1
  6d52cb:	cmp    DWORD PTR [eax+0x60],0x0
  6d52cf:	jne    6d53f1
  6d52d5:	mov    DWORD PTR [esp],eax
  6d52d8:	call   1db0b8
  6d52dd:	mov    eax,DWORD PTR [edi]
  6d52df:	jmp    6d53f1
  6d52e4:	mov    eax,DWORD PTR [ebx+eax*4-0x62942c]
  6d52eb:	add    eax,ebx
  6d52ed:	jmp    eax
  6d52ef:	lea    eax,[ebx+0x430e4]
  6d52f5:	mov    eax,DWORD PTR [eax]
  6d52f7:	test   BYTE PTR [eax+0xb2],0x1
  6d52fe:	je     6d530e
  6d5300:	cmp    DWORD PTR [eax+0x60],0x0
  6d5304:	jne    6d530e
  6d5306:	mov    DWORD PTR [esp],eax
  6d5309:	call   1db0b8
  6d530e:	lea    eax,[ebx+0x570a0]  ; literal "_crafting"
  6d5314:	jmp    6d533b
  6d5316:	lea    eax,[ebx+0x430e4]
  6d531c:	mov    eax,DWORD PTR [eax]
  6d531e:	test   BYTE PTR [eax+0xb2],0x1
  6d5325:	je     6d5335
  6d5327:	cmp    DWORD PTR [eax+0x60],0x0
  6d532b:	jne    6d5335
  6d532d:	mov    DWORD PTR [esp],eax
  6d5330:	call   1db0b8
  6d5335:	lea    eax,[ebx+0x570a4]  ; literal "_gatcha"
  6d533b:	mov    eax,DWORD PTR [eax]
  6d533d:	mov    DWORD PTR [esp+0x8],eax
  6d5341:	mov    DWORD PTR [esp+0x4],esi
  6d5345:	mov    DWORD PTR [esp+0xc],0x0
  6d534d:	mov    DWORD PTR [esp],0x0
  6d5354:	call   ca462a  ; System.String::Concat
  6d5359:	mov    esi,eax
  6d535b:	lea    eax,[ebx+0x4584c]
  6d5361:	mov    eax,DWORD PTR [eax]
  6d5363:	test   BYTE PTR [eax+0xb2],0x1
  6d536a:	je     6d537a
  6d536c:	cmp    DWORD PTR [eax+0x60],0x0
  6d5370:	jne    6d537a
  6d5372:	mov    DWORD PTR [esp],eax
  6d5375:	call   1db0b8
  6d537a:	mov    DWORD PTR [esp+0x4],0x0
  6d5382:	mov    DWORD PTR [esp],0x0
  6d5389:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  6d538e:	test   eax,eax
  6d5390:	je     6d53fe
  6d5392:	movzx  ecx,BYTE PTR [ebp+0x18]
  6d5396:	mov    DWORD PTR [esp+0x8],ecx
  6d539a:	mov    DWORD PTR [esp+0x4],esi
  6d539e:	mov    DWORD PTR [esp],eax
  6d53a1:	mov    DWORD PTR [esp+0xc],0x0
  6d53a9:	call   af7292  ; ABHLocaService::GetEquipmentName
  6d53ae:	jmp    6d53f6
  6d53b0:	lea    eax,[ebx+0x570a8]  ; literal "GetFinalEquipmentName for EquipmentSource.SetItem not implemented yet"
  6d53b6:	mov    eax,DWORD PTR [eax]
  6d53b8:	mov    DWORD PTR [esp+0x4],eax
  6d53bc:	mov    DWORD PTR [esp+0x8],0x0
  6d53c4:	mov    DWORD PTR [esp],0x0
  6d53cb:	call   108148a  ; DebugLog::Error
  6d53d0:	lea    esi,[ebx+0x430e4]
  6d53d6:	mov    eax,DWORD PTR [esi]
  6d53d8:	test   BYTE PTR [eax+0xb2],0x1
  6d53df:	je     6d53f1
  6d53e1:	cmp    DWORD PTR [eax+0x60],0x0
  6d53e5:	jne    6d53f1
  6d53e7:	mov    DWORD PTR [esp],eax
  6d53ea:	call   1db0b8
  6d53ef:	mov    eax,DWORD PTR [esi]
  6d53f1:	mov    eax,DWORD PTR [eax+0x50]
  6d53f4:	mov    eax,DWORD PTR [eax]
  6d53f6:	lea    esp,[ebp-0xc]
  6d53f9:	pop    esi
  6d53fa:	pop    edi
  6d53fb:	pop    ebx
  6d53fc:	pop    ebp
  6d53fd:	ret
  6d53fe:	call   1fbc48
  6d5403:	call   6b106a