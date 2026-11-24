
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008e50dd:
  8e50dd:	push   ebp
  8e50de:	mov    ebp,esp
  8e50e0:	push   ebx
  8e50e1:	push   edi
  8e50e2:	push   esi
  8e50e3:	and    esp,0xfffffff0
  8e50e6:	sub    esp,0x130
  8e50ec:	call   8e50f1
  8e50f1:	pop    ebx
  8e50f2:	add    ebx,0x162ce53
  8e50f8:	mov    edi,DWORD PTR [ebp+0x8]
  8e50fb:	mov    al,BYTE PTR [ebx+0x601c4]
  8e5101:	test   al,al
  8e5103:	jne    8e511c
  8e5105:	lea    eax,[ebx-0x658580]
  8e510b:	mov    eax,DWORD PTR [eax]
  8e510d:	mov    DWORD PTR [esp],eax
  8e5110:	call   1ca6e8
  8e5115:	mov    BYTE PTR [ebx+0x601c4],0x1
  8e511c:	xorps  xmm0,xmm0
  8e511f:	movaps XMMWORD PTR [esp+0xf0],xmm0
  8e5127:	mov    DWORD PTR [esp+0x100],0x0
  8e5132:	mov    DWORD PTR [esp+0xec],0x0
  8e513d:	mov    DWORD PTR [esp+0xe8],0x0
  8e5148:	mov    eax,DWORD PTR [edi+0x38]
  8e514b:	mov    DWORD PTR [edi+0x38],0xffffffff
  8e5152:	cmp    eax,0x8
  8e5155:	ja     8e601a
  8e515b:	mov    eax,DWORD PTR [ebx+eax*4-0x6286ec]
  8e5162:	add    eax,ebx
  8e5164:	jmp    eax
  8e5166:	mov    eax,DWORD PTR [edi+0x2c]
  8e5169:	test   eax,eax
  8e516b:	je     8e7282
  8e5171:	mov    esi,DWORD PTR [eax+0x18]
  8e5174:	test   esi,esi
  8e5176:	je     8e7282
  8e517c:	lea    eax,[ebx+0x45874]
  8e5182:	mov    DWORD PTR [esp+0x38],eax
  8e5186:	mov    DWORD PTR [esp+0x48],ebx
  8e518a:	mov    eax,DWORD PTR [eax]
  8e518c:	mov    ebx,DWORD PTR [esi]
  8e518e:	movzx  edx,WORD PTR [ebx+0xaa]
  8e5195:	test   edx,edx
  8e5197:	je     8e51ac
  8e5199:	mov    edi,DWORD PTR [ebx+0x4c]
  8e519c:	xor    ecx,ecx
  8e519e:	cmp    DWORD PTR [edi+ecx*8],eax
  8e51a1:	je     8e526a
  8e51a7:	inc    ecx
  8e51a8:	cmp    ecx,edx
  8e51aa:	jb     8e519e
  8e51ac:	mov    DWORD PTR [esp+0x4],eax
  8e51b0:	mov    DWORD PTR [esp],esi
  8e51b3:	mov    DWORD PTR [esp+0x8],0x9
  8e51bb:	mov    ebx,DWORD PTR [esp+0x48]
  8e51bf:	call   1c1964
  8e51c4:	mov    ecx,eax
  8e51c6:	jmp    8e5279
  8e51cb:	cmp    BYTE PTR [edi+0x18],0x0
  8e51cf:	je     8e5e1e
  8e51d5:	mov    DWORD PTR [esp+0x48],ebx
  8e51d9:	mov    eax,DWORD PTR [edi+0x2c]
  8e51dc:	test   eax,eax
  8e51de:	je     8e727e
  8e51e4:	mov    edi,DWORD PTR [eax+0x18]
  8e51e7:	test   edi,edi
  8e51e9:	je     8e727e
  8e51ef:	mov    eax,DWORD PTR [esp+0x48]
  8e51f3:	lea    eax,[eax+0x45874]
  8e51f9:	mov    DWORD PTR [esp+0x44],eax
  8e51fd:	mov    eax,DWORD PTR [eax]
  8e51ff:	mov    ecx,DWORD PTR [edi]
  8e5201:	movzx  edx,WORD PTR [ecx+0xaa]
  8e5208:	test   edx,edx
  8e520a:	je     8e521f
  8e520c:	mov    esi,DWORD PTR [ecx+0x4c]
  8e520f:	xor    ebx,ebx
  8e5211:	cmp    DWORD PTR [esi+ebx*8],eax
  8e5214:	je     8e54df
  8e521a:	inc    ebx
  8e521b:	cmp    ebx,edx
  8e521d:	jb     8e5211
  8e521f:	mov    DWORD PTR [esp+0x4],eax
  8e5223:	mov    DWORD PTR [esp],edi
  8e5226:	mov    DWORD PTR [esp+0x8],0x2f
  8e522e:	mov    ebx,DWORD PTR [esp+0x48]
  8e5232:	call   1c1964
  8e5237:	mov    ecx,eax
  8e5239:	jmp    8e54ee
  8e523e:	mov    esi,DWORD PTR [edi+0x2c]
  8e5241:	test   esi,esi
  8e5243:	je     8e7282
  8e5249:	mov    DWORD PTR [esp],esi
  8e524c:	call   8e0307  ; CharacterControllerBattleGroundBase::CheckIfDestroyBeforeEndOfTurn
  8e5251:	mov    DWORD PTR [esp+0x4],eax
  8e5255:	mov    DWORD PTR [esp],esi
  8e5258:	mov    DWORD PTR [esp+0x8],0x0
  8e5260:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8e5265:	jmp    8e6013
  8e526a:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8e526e:	lea    ecx,[ebx+eax*8+0xfc]
  8e5275:	mov    ebx,DWORD PTR [esp+0x48]
  8e5279:	mov    eax,DWORD PTR [ecx+0x4]
  8e527c:	mov    DWORD PTR [esp+0x4],eax
  8e5280:	mov    DWORD PTR [esp],esi
  8e5283:	call   DWORD PTR [ecx]
  8e5285:	mov    esi,eax
  8e5287:	test   esi,esi
  8e5289:	je     8e7282
  8e528f:	lea    eax,[ebx+0x45884]
  8e5295:	mov    eax,DWORD PTR [eax]
  8e5297:	mov    ebx,DWORD PTR [esi]
  8e5299:	movzx  edx,WORD PTR [ebx+0xaa]
  8e52a0:	test   edx,edx
  8e52a2:	je     8e52b3
  8e52a4:	mov    edi,DWORD PTR [ebx+0x4c]
  8e52a7:	xor    ecx,ecx
  8e52a9:	cmp    DWORD PTR [edi+ecx*8],eax
  8e52ac:	je     8e52cf
  8e52ae:	inc    ecx
  8e52af:	cmp    ecx,edx
  8e52b1:	jb     8e52a9
  8e52b3:	mov    DWORD PTR [esp+0x4],eax
  8e52b7:	mov    DWORD PTR [esp],esi
  8e52ba:	mov    DWORD PTR [esp+0x8],0xc
  8e52c2:	mov    ebx,DWORD PTR [esp+0x48]
  8e52c6:	call   1c1964
  8e52cb:	mov    ecx,eax
  8e52cd:	jmp    8e52de
  8e52cf:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8e52d3:	lea    ecx,[ebx+eax*8+0x114]
  8e52da:	mov    ebx,DWORD PTR [esp+0x48]
  8e52de:	mov    eax,DWORD PTR [ecx+0x4]
  8e52e1:	mov    DWORD PTR [esp+0x4],eax
  8e52e5:	mov    DWORD PTR [esp],esi
  8e52e8:	call   DWORD PTR [ecx]
  8e52ea:	mov    edi,DWORD PTR [ebp+0x8]
  8e52ed:	mov    DWORD PTR [edi+0x8],eax
  8e52f0:	mov    BYTE PTR [edi+0xc],0x0
  8e52f4:	mov    DWORD PTR [esp+0x4],0x0
  8e52fc:	mov    DWORD PTR [esp],0x0
  8e5303:	call   10934a3  ; DIContainerLogic::get_GetBonusEventService
  8e5308:	test   eax,eax
  8e530a:	je     8e7282
  8e5310:	mov    eax,DWORD PTR [eax+0xc]
  8e5313:	mov    DWORD PTR [edi+0x10],eax
  8e5316:	mov    eax,DWORD PTR [edi+0x2c]
  8e5319:	test   eax,eax
  8e531b:	je     8e7282
  8e5321:	mov    eax,DWORD PTR [eax+0x14]
  8e5324:	test   eax,eax
  8e5326:	je     8e7282
  8e532c:	mov    DWORD PTR [esp],eax
  8e532f:	mov    DWORD PTR [esp+0x4],0x0
  8e5337:	call   9f18af  ; BattleMgrBase::get_Model
  8e533c:	test   eax,eax
  8e533e:	je     8e7282
  8e5344:	mov    DWORD PTR [esp],eax
  8e5347:	mov    DWORD PTR [esp+0x4],0x0
  8e534f:	call   ec18ea  ; ABH.GameDatas.Battle.BattleGameData::get_IsChronicleCave
  8e5354:	test   al,al
  8e5356:	je     8e61b7
  8e535c:	mov    eax,DWORD PTR [edi+0x10]
  8e535f:	test   eax,eax
  8e5361:	je     8e61b7
  8e5367:	mov    DWORD PTR [esp],eax
  8e536a:	mov    DWORD PTR [esp+0x4],0x0
  8e5372:	call   1704033  ; ABH.Shared.Events.BalancingData.BonusEventBalancingData::get_BonusType
  8e5377:	cmp    eax,0x4
  8e537a:	jne    8e61b7
  8e5380:	mov    BYTE PTR [edi+0xc],0x1
  8e5384:	mov    eax,DWORD PTR [edi+0x8]
  8e5387:	test   eax,eax
  8e5389:	je     8e7282
  8e538f:	lea    ecx,[ebx+0x4b368]
  8e5395:	mov    ecx,DWORD PTR [ecx]
  8e5397:	mov    DWORD PTR [esp+0x4],ecx
  8e539b:	mov    DWORD PTR [esp],eax
  8e539e:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  8e53a3:	test   eax,eax
  8e53a5:	je     8e7282
  8e53ab:	lea    ecx,[ebx+0x4b36c]
  8e53b1:	mov    ecx,DWORD PTR [ecx]
  8e53b3:	mov    DWORD PTR [esp+0x8],ecx
  8e53b7:	mov    DWORD PTR [esp+0x4],eax
  8e53bb:	lea    eax,[esp+0xd0]
  8e53c2:	mov    DWORD PTR [esp],eax
  8e53c5:	call   12374c5  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, UnityEngine.GUIStyle>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, ABH.GameDatas.Battle.BattleEffectGameData>::GetEnumerator | +11 other aliases
  8e53ca:	sub    esp,0x4
  8e53cd:	mov    eax,DWORD PTR [esp+0xe0]
  8e53d4:	mov    DWORD PTR [esp+0x100],eax
  8e53db:	movsd  xmm0,QWORD PTR [esp+0xd0]
  8e53e4:	movsd  xmm1,QWORD PTR [esp+0xd8]
  8e53ed:	movsd  QWORD PTR [esp+0xf8],xmm1
  8e53f6:	movsd  QWORD PTR [esp+0xf0],xmm0
  8e53ff:	lea    eax,[ebx+0x4b374]
  8e5405:	mov    DWORD PTR [esp+0x40],eax
  8e5409:	movss  xmm0,DWORD PTR [ebx-0x64fc2c]
  8e5411:	movss  DWORD PTR [esp+0x3c],xmm0
  8e5417:	mov    eax,DWORD PTR [esp+0x40]
  8e541b:	mov    eax,DWORD PTR [eax]
  8e541d:	mov    DWORD PTR [esp+0x4],eax
  8e5421:	lea    eax,[esp+0xf0]
  8e5428:	mov    DWORD PTR [esp],eax
  8e542b:	call   12276c5
  8e5430:	test   al,al
  8e5432:	je     8e6115
  8e5438:	lea    eax,[ebx+0x4b370]
  8e543e:	mov    eax,DWORD PTR [eax]
  8e5440:	mov    DWORD PTR [esp+0x4],eax
  8e5444:	lea    eax,[esp+0xf0]
  8e544b:	mov    DWORD PTR [esp],eax
  8e544e:	call   1227754
  8e5453:	mov    esi,eax
  8e5455:	test   esi,esi
  8e5457:	je     8e6151
  8e545d:	mov    DWORD PTR [esp],esi
  8e5460:	mov    DWORD PTR [esp+0x4],0x0
  8e5468:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  8e546d:	mov    DWORD PTR [esp+0x44],eax
  8e5471:	mov    DWORD PTR [esp],esi
  8e5474:	mov    DWORD PTR [esp+0x4],0x0
  8e547c:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  8e5481:	mov    edi,eax
  8e5483:	mov    eax,DWORD PTR [ebp+0x8]
  8e5486:	mov    eax,DWORD PTR [eax+0x10]
  8e5489:	test   eax,eax
  8e548b:	je     8e615b
  8e5491:	mov    DWORD PTR [esp],eax
  8e5494:	mov    DWORD PTR [esp+0x4],0x0
  8e549c:	call   1704056  ; ABH.Shared.Events.BalancingData.BonusEventBalancingData::get_BonusFactor
  8e54a1:	fstp   DWORD PTR [esp+0x54]
  8e54a5:	movss  xmm0,DWORD PTR [esp+0x54]
  8e54ab:	cvtsi2ss xmm1,edi
  8e54af:	divss  xmm0,DWORD PTR [esp+0x3c]
  8e54b5:	mulss  xmm0,xmm1
  8e54b9:	cvttss2si eax,xmm0
  8e54bd:	add    eax,DWORD PTR [esp+0x44]
  8e54c1:	mov    DWORD PTR [esp],esi
  8e54c4:	mov    DWORD PTR [esp+0x4],eax
  8e54c8:	mov    DWORD PTR [esp+0x8],0x0
  8e54d0:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  8e54d5:	jmp    8e5417
  8e54da:	jmp    8e6165
  8e54df:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8e54e3:	lea    ecx,[ecx+eax*8+0x22c]
  8e54ea:	mov    ebx,DWORD PTR [esp+0x48]
  8e54ee:	mov    eax,DWORD PTR [ecx+0x4]
  8e54f1:	mov    DWORD PTR [esp+0x4],eax
  8e54f5:	mov    DWORD PTR [esp],edi
  8e54f8:	call   DWORD PTR [ecx]
  8e54fa:	cmp    eax,0x1
  8e54fd:	mov    edi,DWORD PTR [ebp+0x8]
  8e5500:	jne    8e5e1e
  8e5506:	mov    eax,DWORD PTR [edi+0x2c]
  8e5509:	test   eax,eax
  8e550b:	je     8e7282
  8e5511:	mov    esi,edi
  8e5513:	mov    eax,DWORD PTR [eax+0x68]
  8e5516:	test   eax,eax
  8e5518:	je     8e7282
  8e551e:	mov    edi,DWORD PTR [eax+0x28]
  8e5521:	lea    eax,[ebx+0x44ebc]
  8e5527:	mov    eax,DWORD PTR [eax]
  8e5529:	test   BYTE PTR [eax+0xb2],0x1
  8e5530:	je     8e5540
  8e5532:	cmp    DWORD PTR [eax+0x60],0x0
  8e5536:	jne    8e5540
  8e5538:	mov    DWORD PTR [esp],eax
  8e553b:	call   1db0b8
  8e5540:	mov    DWORD PTR [esp+0x4],edi
  8e5544:	mov    DWORD PTR [esp+0xc],0x0
  8e554c:	mov    DWORD PTR [esp+0x8],0x0
  8e5554:	mov    DWORD PTR [esp],0x0
  8e555b:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  8e5560:	mov    edx,DWORD PTR [esi+0x2c]
  8e5563:	test   edx,edx
  8e5565:	je     8e7282
  8e556b:	mov    ecx,DWORD PTR [edx+0x68]
  8e556e:	test   ecx,ecx
  8e5570:	je     8e7282
  8e5576:	mov    edi,DWORD PTR [edx+0x14]
  8e5579:	mov    edx,DWORD PTR [esi+0x14]
  8e557c:	test   al,al
  8e557e:	je     8e563c
  8e5584:	mov    DWORD PTR [esp+0x40],edx
  8e5588:	mov    eax,DWORD PTR [ecx+0x28]
  8e558b:	test   eax,eax
  8e558d:	je     8e7282
  8e5593:	mov    DWORD PTR [esp+0x4],eax
  8e5597:	lea    eax,[esp+0x88]
  8e559e:	mov    DWORD PTR [esp],eax
  8e55a1:	mov    DWORD PTR [esp+0x8],0x0
  8e55a9:	call   17760ae  ; UnityEngine.Transform::get_position
  8e55ae:	sub    esp,0x4
  8e55b1:	mov    eax,DWORD PTR [esi+0x2c]
  8e55b4:	test   eax,eax
  8e55b6:	je     8e7282
  8e55bc:	mov    DWORD PTR [esp],eax
  8e55bf:	mov    DWORD PTR [esp+0x4],0x0
  8e55c7:	call   150157d  ; UnityEngine.Component::get_transform
  8e55cc:	test   eax,eax
  8e55ce:	je     8e7282
  8e55d4:	mov    DWORD PTR [esp+0x4],eax
  8e55d8:	lea    eax,[esp+0x78]
  8e55dc:	mov    DWORD PTR [esp],eax
  8e55df:	mov    DWORD PTR [esp+0x8],0x0
  8e55e7:	call   1776862  ; UnityEngine.Transform::get_localScale
  8e55ec:	sub    esp,0x4
  8e55ef:	test   edi,edi
  8e55f1:	mov    eax,edi
  8e55f3:	je     8e7282
  8e55f9:	mov    edi,esi
  8e55fb:	movzx  ecx,BYTE PTR [edi+0xc]
  8e55ff:	mov    DWORD PTR [esp+0x3c],ecx
  8e5603:	mov    ecx,DWORD PTR [esp+0x80]
  8e560a:	mov    DWORD PTR [esp+0x128],ecx
  8e5611:	movsd  xmm0,QWORD PTR [esp+0x78]
  8e5617:	movsd  QWORD PTR [esp+0x120],xmm0
  8e5620:	mov    ecx,DWORD PTR [esp+0x90]
  8e5627:	mov    DWORD PTR [esp+0x118],ecx
  8e562e:	movsd  xmm0,QWORD PTR [esp+0x88]
  8e5637:	jmp    8e56f0
  8e563c:	mov    DWORD PTR [esp+0x40],edx
  8e5640:	mov    DWORD PTR [esp],ecx
  8e5643:	mov    DWORD PTR [esp+0x4],0x0
  8e564b:	call   150157d  ; UnityEngine.Component::get_transform
  8e5650:	test   eax,eax
  8e5652:	je     8e7282
  8e5658:	mov    DWORD PTR [esp+0x4],eax
  8e565c:	lea    eax,[esp+0x68]
  8e5660:	mov    DWORD PTR [esp],eax
  8e5663:	mov    DWORD PTR [esp+0x8],0x0
  8e566b:	call   17760ae  ; UnityEngine.Transform::get_position
  8e5670:	sub    esp,0x4
  8e5673:	mov    eax,DWORD PTR [esi+0x2c]
  8e5676:	test   eax,eax
  8e5678:	je     8e7282
  8e567e:	mov    DWORD PTR [esp],eax
  8e5681:	mov    DWORD PTR [esp+0x4],0x0
  8e5689:	call   150157d  ; UnityEngine.Component::get_transform
  8e568e:	test   eax,eax
  8e5690:	je     8e7282
  8e5696:	mov    DWORD PTR [esp+0x4],eax
  8e569a:	lea    eax,[esp+0x58]
  8e569e:	mov    DWORD PTR [esp],eax
  8e56a1:	mov    DWORD PTR [esp+0x8],0x0
  8e56a9:	call   1776862  ; UnityEngine.Transform::get_localScale
  8e56ae:	sub    esp,0x4
  8e56b1:	test   edi,edi
  8e56b3:	mov    eax,edi
  8e56b5:	je     8e7282
  8e56bb:	mov    edi,esi
  8e56bd:	movzx  ecx,BYTE PTR [edi+0xc]
  8e56c1:	mov    DWORD PTR [esp+0x3c],ecx
  8e56c5:	mov    ecx,DWORD PTR [esp+0x60]
  8e56c9:	mov    DWORD PTR [esp+0x128],ecx
  8e56d0:	movsd  xmm0,QWORD PTR [esp+0x58]
  8e56d6:	movsd  QWORD PTR [esp+0x120],xmm0
  8e56df:	mov    ecx,DWORD PTR [esp+0x70]
  8e56e3:	mov    DWORD PTR [esp+0x118],ecx
  8e56ea:	movsd  xmm0,QWORD PTR [esp+0x68]
  8e56f0:	movsd  QWORD PTR [esp+0x110],xmm0
  8e56f9:	mov    ecx,DWORD PTR [eax]
  8e56fb:	mov    edx,DWORD PTR [ecx+0xf0]
  8e5701:	mov    esi,DWORD PTR [esp+0x128]
  8e5708:	mov    DWORD PTR [esp+0x1c],esi
  8e570c:	movsd  xmm0,QWORD PTR [esp+0x120]
  8e5715:	movsd  QWORD PTR [esp+0x14],xmm0
  8e571b:	mov    esi,DWORD PTR [esp+0x118]
  8e5722:	mov    DWORD PTR [esp+0x10],esi
  8e5726:	movsd  xmm0,QWORD PTR [esp+0x110]
  8e572f:	movsd  QWORD PTR [esp+0x8],xmm0
  8e5735:	mov    DWORD PTR [esp+0x24],edx
  8e5739:	mov    edx,DWORD PTR [esp+0x3c]
  8e573d:	mov    DWORD PTR [esp+0x20],edx
  8e5741:	mov    edx,DWORD PTR [esp+0x40]
  8e5745:	mov    DWORD PTR [esp+0x4],edx
  8e5749:	mov    DWORD PTR [esp],eax
  8e574c:	call   DWORD PTR [ecx+0xec]
  8e5752:	mov    DWORD PTR [edi+0x1c],0x0
  8e5759:	mov    eax,DWORD PTR [edi+0x2c]
  8e575c:	test   eax,eax
  8e575e:	je     8e727e
  8e5764:	mov    edi,DWORD PTR [eax+0x18]
  8e5767:	test   edi,edi
  8e5769:	je     8e727e
  8e576f:	mov    eax,DWORD PTR [esp+0x44]
  8e5773:	mov    eax,DWORD PTR [eax]
  8e5775:	mov    ecx,DWORD PTR [edi]
  8e5777:	movzx  edx,WORD PTR [ecx+0xaa]
  8e577e:	test   edx,edx
  8e5780:	je     8e5791
  8e5782:	mov    esi,DWORD PTR [ecx+0x4c]
  8e5785:	xor    ebx,ebx
  8e5787:	cmp    DWORD PTR [esi+ebx*8],eax
  8e578a:	je     8e57ad
  8e578c:	inc    ebx
  8e578d:	cmp    ebx,edx
  8e578f:	jb     8e5787
  8e5791:	mov    DWORD PTR [esp+0x4],eax
  8e5795:	mov    DWORD PTR [esp],edi
  8e5798:	mov    DWORD PTR [esp+0x8],0x9
  8e57a0:	mov    ebx,DWORD PTR [esp+0x48]
  8e57a4:	call   1c1964
  8e57a9:	mov    ecx,eax
  8e57ab:	jmp    8e57bc
  8e57ad:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8e57b1:	lea    ecx,[ecx+eax*8+0xfc]
  8e57b8:	mov    ebx,DWORD PTR [esp+0x48]
  8e57bc:	mov    eax,DWORD PTR [ecx+0x4]
  8e57bf:	mov    DWORD PTR [esp+0x4],eax
  8e57c3:	mov    DWORD PTR [esp],edi
  8e57c6:	call   DWORD PTR [ecx]
  8e57c8:	mov    esi,eax
  8e57ca:	test   esi,esi
  8e57cc:	je     8e7282
  8e57d2:	lea    eax,[ebx+0x45884]
  8e57d8:	mov    eax,DWORD PTR [eax]
  8e57da:	mov    ecx,DWORD PTR [esi]
  8e57dc:	movzx  edx,WORD PTR [ecx+0xaa]
  8e57e3:	test   edx,edx
  8e57e5:	je     8e57f6
  8e57e7:	mov    edi,DWORD PTR [ecx+0x4c]
  8e57ea:	xor    ebx,ebx
  8e57ec:	cmp    DWORD PTR [edi+ebx*8],eax
  8e57ef:	je     8e5812
  8e57f1:	inc    ebx
  8e57f2:	cmp    ebx,edx
  8e57f4:	jb     8e57ec
  8e57f6:	mov    DWORD PTR [esp+0x4],eax
  8e57fa:	mov    DWORD PTR [esp],esi
  8e57fd:	mov    DWORD PTR [esp+0x8],0x10
  8e5805:	mov    ebx,DWORD PTR [esp+0x48]
  8e5809:	call   1c1964
  8e580e:	mov    ecx,eax
  8e5810:	jmp    8e5821
  8e5812:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8e5816:	lea    ecx,[ecx+eax*8+0x134]
  8e581d:	mov    ebx,DWORD PTR [esp+0x48]
  8e5821:	mov    eax,DWORD PTR [ecx+0x4]
  8e5824:	mov    DWORD PTR [esp+0x4],eax
  8e5828:	mov    DWORD PTR [esp],esi
  8e582b:	call   DWORD PTR [ecx]
  8e582d:	mov    edi,DWORD PTR [ebp+0x8]
  8e5830:	mov    DWORD PTR [edi+0x20],eax
  8e5833:	cmp    eax,0x3
  8e5836:	ja     8e6122
  8e583c:	lea    esi,[edi+0x1c]
  8e583f:	mov    eax,DWORD PTR [ebx+eax*4-0x6286c8]
  8e5846:	add    eax,ebx
  8e5848:	jmp    eax
  8e584a:	lea    eax,[ebx+0x58da4]  ; literal "PigDefeated_Small"
  8e5850:	mov    eax,DWORD PTR [eax]
  8e5852:	mov    DWORD PTR [edi+0x24],eax
  8e5855:	mov    DWORD PTR [esp+0x4],0x0
  8e585d:	mov    DWORD PTR [esp],0x0
  8e5864:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  8e5869:	test   eax,eax
  8e586b:	je     8e7282
  8e5871:	mov    ecx,DWORD PTR [edi+0x24]
  8e5874:	mov    DWORD PTR [esp+0x8],esi
  8e5878:	mov    DWORD PTR [esp+0x4],ecx
  8e587c:	mov    DWORD PTR [esp],eax
  8e587f:	mov    DWORD PTR [esp+0xc],0x0
  8e5887:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  8e588c:	test   al,al
  8e588e:	je     8e5e1e
  8e5894:	mov    ecx,DWORD PTR [edi+0x2c]
  8e5897:	test   ecx,ecx
  8e5899:	je     8e7282
  8e589f:	mov    eax,DWORD PTR [esi]
  8e58a1:	test   eax,eax
  8e58a3:	je     8e7282
  8e58a9:	mov    eax,DWORD PTR [eax+0xc]
  8e58ac:	test   eax,eax
  8e58ae:	je     8e7282
  8e58b4:	mov    edx,DWORD PTR [ecx+0x14]
  8e58b7:	mov    DWORD PTR [esp+0x44],edx
  8e58bb:	mov    edx,DWORD PTR [ecx+0x18]
  8e58be:	mov    DWORD PTR [esp+0x3c],edx
  8e58c2:	mov    DWORD PTR [esp+0x40],ecx
  8e58c6:	lea    ecx,[ebx+0x4b390]
  8e58cc:	mov    ecx,DWORD PTR [ecx]
  8e58ce:	mov    DWORD PTR [esp+0x8],ecx
  8e58d2:	mov    DWORD PTR [esp],eax
  8e58d5:	mov    DWORD PTR [esp+0x4],0x0
  8e58dd:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  8e58e2:	mov    DWORD PTR [esp+0x38],eax
  8e58e6:	mov    eax,DWORD PTR [edi+0x1c]
  8e58e9:	mov    DWORD PTR [esp+0x34],eax
  8e58ed:	lea    eax,[ebx+0x45890]
  8e58f3:	mov    eax,DWORD PTR [eax]
  8e58f5:	mov    DWORD PTR [esp],eax
  8e58f8:	call   20bfb2
  8e58fd:	mov    DWORD PTR [esp+0x48],ebx
  8e5901:	mov    esi,eax
  8e5903:	lea    eax,[ebx+0x4a074]
  8e5909:	mov    eax,DWORD PTR [eax]
  8e590b:	mov    DWORD PTR [esp+0x4],eax
  8e590f:	mov    DWORD PTR [esp],esi
  8e5912:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  8e5917:	mov    eax,DWORD PTR [edi+0x2c]
  8e591a:	test   eax,eax
  8e591c:	je     8e727e
  8e5922:	test   esi,esi
  8e5924:	je     8e727e
  8e592a:	mov    eax,DWORD PTR [eax+0x18]
  8e592d:	mov    ebx,DWORD PTR [esp+0x48]
  8e5931:	lea    ecx,[ebx+0x4a078]
  8e5937:	mov    ecx,DWORD PTR [ecx]
  8e5939:	mov    DWORD PTR [esp+0x8],ecx
  8e593d:	mov    DWORD PTR [esp+0x4],eax
  8e5941:	mov    DWORD PTR [esp],esi
  8e5944:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  8e5949:	mov    eax,DWORD PTR [esp+0x44]
  8e594d:	test   eax,eax
  8e594f:	je     8e7282
  8e5955:	mov    DWORD PTR [esp+0x10],esi
  8e5959:	mov    ecx,DWORD PTR [esp+0x34]
  8e595d:	mov    DWORD PTR [esp+0xc],ecx
  8e5961:	mov    ecx,DWORD PTR [esp+0x38]
  8e5965:	mov    DWORD PTR [esp+0x8],ecx
  8e5969:	mov    ecx,DWORD PTR [esp+0x3c]
  8e596d:	mov    DWORD PTR [esp+0x4],ecx
  8e5971:	mov    DWORD PTR [esp],eax
  8e5974:	mov    DWORD PTR [esp+0x18],0x0
  8e597c:	mov    DWORD PTR [esp+0x14],0x0
  8e5984:	call   9f70c9  ; BattleMgrBase::InstantiateEffects
  8e5989:	mov    DWORD PTR [esp+0x4],eax
  8e598d:	mov    eax,DWORD PTR [esp+0x40]
  8e5991:	mov    DWORD PTR [esp],eax
  8e5994:	mov    DWORD PTR [esp+0x8],0x0
  8e599c:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8e59a1:	mov    ecx,DWORD PTR [ebp+0x8]
  8e59a4:	mov    DWORD PTR [ecx+0x30],eax
  8e59a7:	mov    al,0x1
  8e59a9:	cmp    BYTE PTR [ecx+0x34],0x0
  8e59ad:	jne    8e601c
  8e59b3:	mov    DWORD PTR [ecx+0x38],0x4
  8e59ba:	jmp    8e601c
  8e59bf:	lea    eax,[ebx+0x595ac]  ; literal "PigDefeated_Medium"
  8e59c5:	mov    eax,DWORD PTR [eax]
  8e59c7:	mov    DWORD PTR [edi+0x24],eax
  8e59ca:	mov    DWORD PTR [esp+0x4],0x0
  8e59d2:	mov    DWORD PTR [esp],0x0
  8e59d9:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  8e59de:	test   eax,eax
  8e59e0:	je     8e7282
  8e59e6:	mov    ecx,DWORD PTR [edi+0x24]
  8e59e9:	mov    DWORD PTR [esp+0x8],esi
  8e59ed:	mov    DWORD PTR [esp+0x4],ecx
  8e59f1:	mov    DWORD PTR [esp],eax
  8e59f4:	mov    DWORD PTR [esp+0xc],0x0
  8e59fc:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  8e5a01:	test   al,al
  8e5a03:	je     8e5e1e
  8e5a09:	mov    ecx,DWORD PTR [edi+0x2c]
  8e5a0c:	test   ecx,ecx
  8e5a0e:	je     8e7282
  8e5a14:	mov    eax,DWORD PTR [esi]
  8e5a16:	test   eax,eax
  8e5a18:	je     8e7282
  8e5a1e:	mov    eax,DWORD PTR [eax+0xc]
  8e5a21:	test   eax,eax
  8e5a23:	je     8e7282
  8e5a29:	mov    edx,DWORD PTR [ecx+0x14]
  8e5a2c:	mov    DWORD PTR [esp+0x44],edx
  8e5a30:	mov    edx,DWORD PTR [ecx+0x18]
  8e5a33:	mov    DWORD PTR [esp+0x3c],edx
  8e5a37:	mov    DWORD PTR [esp+0x40],ecx
  8e5a3b:	lea    ecx,[ebx+0x4b390]
  8e5a41:	mov    ecx,DWORD PTR [ecx]
  8e5a43:	mov    DWORD PTR [esp+0x8],ecx
  8e5a47:	mov    DWORD PTR [esp],eax
  8e5a4a:	mov    DWORD PTR [esp+0x4],0x0
  8e5a52:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  8e5a57:	mov    DWORD PTR [esp+0x38],eax
  8e5a5b:	mov    eax,DWORD PTR [edi+0x1c]
  8e5a5e:	mov    DWORD PTR [esp+0x34],eax
  8e5a62:	lea    eax,[ebx+0x45890]
  8e5a68:	mov    eax,DWORD PTR [eax]
  8e5a6a:	mov    DWORD PTR [esp],eax
  8e5a6d:	call   20bfb2
  8e5a72:	mov    DWORD PTR [esp+0x48],ebx
  8e5a76:	mov    esi,eax
  8e5a78:	lea    eax,[ebx+0x4a074]
  8e5a7e:	mov    eax,DWORD PTR [eax]
  8e5a80:	mov    DWORD PTR [esp+0x4],eax
  8e5a84:	mov    DWORD PTR [esp],esi
  8e5a87:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  8e5a8c:	mov    eax,DWORD PTR [edi+0x2c]
  8e5a8f:	test   eax,eax
  8e5a91:	je     8e727e
  8e5a97:	test   esi,esi
  8e5a99:	je     8e727e
  8e5a9f:	mov    eax,DWORD PTR [eax+0x18]
  8e5aa2:	mov    ebx,DWORD PTR [esp+0x48]
  8e5aa6:	lea    ecx,[ebx+0x4a078]
  8e5aac:	mov    ecx,DWORD PTR [ecx]
  8e5aae:	mov    DWORD PTR [esp+0x8],ecx
  8e5ab2:	mov    DWORD PTR [esp+0x4],eax
  8e5ab6:	mov    DWORD PTR [esp],esi
  8e5ab9:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  8e5abe:	mov    eax,DWORD PTR [esp+0x44]
  8e5ac2:	test   eax,eax
  8e5ac4:	je     8e7282
  8e5aca:	mov    DWORD PTR [esp+0x10],esi
  8e5ace:	mov    ecx,DWORD PTR [esp+0x34]
  8e5ad2:	mov    DWORD PTR [esp+0xc],ecx
  8e5ad6:	mov    ecx,DWORD PTR [esp+0x38]
  8e5ada:	mov    DWORD PTR [esp+0x8],ecx
  8e5ade:	mov    ecx,DWORD PTR [esp+0x3c]
  8e5ae2:	mov    DWORD PTR [esp+0x4],ecx
  8e5ae6:	mov    DWORD PTR [esp],eax
  8e5ae9:	mov    DWORD PTR [esp+0x18],0x0
  8e5af1:	mov    DWORD PTR [esp+0x14],0x0
  8e5af9:	call   9f70c9  ; BattleMgrBase::InstantiateEffects
  8e5afe:	mov    DWORD PTR [esp+0x4],eax
  8e5b02:	mov    eax,DWORD PTR [esp+0x40]
  8e5b06:	mov    DWORD PTR [esp],eax
  8e5b09:	mov    DWORD PTR [esp+0x8],0x0
  8e5b11:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8e5b16:	mov    ecx,DWORD PTR [ebp+0x8]
  8e5b19:	mov    DWORD PTR [ecx+0x30],eax
  8e5b1c:	mov    al,0x1
  8e5b1e:	cmp    BYTE PTR [ecx+0x34],0x0
  8e5b22:	jne    8e601c
  8e5b28:	mov    DWORD PTR [ecx+0x38],0x5
  8e5b2f:	jmp    8e601c
  8e5b34:	lea    eax,[ebx+0x595b0]  ; literal "PigDefeated_Large"
  8e5b3a:	mov    eax,DWORD PTR [eax]
  8e5b3c:	mov    DWORD PTR [edi+0x24],eax
  8e5b3f:	mov    DWORD PTR [esp+0x4],0x0
  8e5b47:	mov    DWORD PTR [esp],0x0
  8e5b4e:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  8e5b53:	test   eax,eax
  8e5b55:	je     8e7282
  8e5b5b:	mov    ecx,DWORD PTR [edi+0x24]
  8e5b5e:	mov    DWORD PTR [esp+0x8],esi
  8e5b62:	mov    DWORD PTR [esp+0x4],ecx
  8e5b66:	mov    DWORD PTR [esp],eax
  8e5b69:	mov    DWORD PTR [esp+0xc],0x0
  8e5b71:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  8e5b76:	test   al,al
  8e5b78:	je     8e5e1e
  8e5b7e:	mov    ecx,DWORD PTR [edi+0x2c]
  8e5b81:	test   ecx,ecx
  8e5b83:	je     8e7282
  8e5b89:	mov    eax,DWORD PTR [esi]
  8e5b8b:	test   eax,eax
  8e5b8d:	je     8e7282
  8e5b93:	mov    eax,DWORD PTR [eax+0xc]
  8e5b96:	test   eax,eax
  8e5b98:	je     8e7282
  8e5b9e:	mov    edx,DWORD PTR [ecx+0x14]
  8e5ba1:	mov    DWORD PTR [esp+0x44],edx
  8e5ba5:	mov    edx,DWORD PTR [ecx+0x18]
  8e5ba8:	mov    DWORD PTR [esp+0x3c],edx
  8e5bac:	mov    DWORD PTR [esp+0x40],ecx
  8e5bb0:	lea    ecx,[ebx+0x4b390]
  8e5bb6:	mov    ecx,DWORD PTR [ecx]
  8e5bb8:	mov    DWORD PTR [esp+0x8],ecx
  8e5bbc:	mov    DWORD PTR [esp],eax
  8e5bbf:	mov    DWORD PTR [esp+0x4],0x0
  8e5bc7:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  8e5bcc:	mov    DWORD PTR [esp+0x38],eax
  8e5bd0:	mov    eax,DWORD PTR [edi+0x1c]
  8e5bd3:	mov    DWORD PTR [esp+0x34],eax
  8e5bd7:	lea    eax,[ebx+0x45890]
  8e5bdd:	mov    eax,DWORD PTR [eax]
  8e5bdf:	mov    DWORD PTR [esp],eax
  8e5be2:	call   20bfb2
  8e5be7:	mov    DWORD PTR [esp+0x48],ebx
  8e5beb:	mov    esi,eax
  8e5bed:	lea    eax,[ebx+0x4a074]
  8e5bf3:	mov    eax,DWORD PTR [eax]
  8e5bf5:	mov    DWORD PTR [esp+0x4],eax
  8e5bf9:	mov    DWORD PTR [esp],esi
  8e5bfc:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  8e5c01:	mov    eax,DWORD PTR [edi+0x2c]
  8e5c04:	test   eax,eax
  8e5c06:	je     8e727e
  8e5c0c:	test   esi,esi
  8e5c0e:	je     8e727e
  8e5c14:	mov    eax,DWORD PTR [eax+0x18]
  8e5c17:	mov    ebx,DWORD PTR [esp+0x48]
  8e5c1b:	lea    ecx,[ebx+0x4a078]
  8e5c21:	mov    ecx,DWORD PTR [ecx]
  8e5c23:	mov    DWORD PTR [esp+0x8],ecx
  8e5c27:	mov    DWORD PTR [esp+0x4],eax
  8e5c2b:	mov    DWORD PTR [esp],esi
  8e5c2e:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  8e5c33:	mov    eax,DWORD PTR [esp+0x44]
  8e5c37:	test   eax,eax
  8e5c39:	je     8e7282
  8e5c3f:	mov    DWORD PTR [esp+0x10],esi
  8e5c43:	mov    ecx,DWORD PTR [esp+0x34]
  8e5c47:	mov    DWORD PTR [esp+0xc],ecx
  8e5c4b:	mov    ecx,DWORD PTR [esp+0x38]
  8e5c4f:	mov    DWORD PTR [esp+0x8],ecx
  8e5c53:	mov    ecx,DWORD PTR [esp+0x3c]
  8e5c57:	mov    DWORD PTR [esp+0x4],ecx
  8e5c5b:	mov    DWORD PTR [esp],eax
  8e5c5e:	mov    DWORD PTR [esp+0x18],0x0
  8e5c66:	mov    DWORD PTR [esp+0x14],0x0
  8e5c6e:	call   9f70c9  ; BattleMgrBase::InstantiateEffects
  8e5c73:	mov    DWORD PTR [esp+0x4],eax
  8e5c77:	mov    eax,DWORD PTR [esp+0x40]
  8e5c7b:	mov    DWORD PTR [esp],eax
  8e5c7e:	mov    DWORD PTR [esp+0x8],0x0
  8e5c86:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8e5c8b:	mov    ecx,DWORD PTR [ebp+0x8]
  8e5c8e:	mov    DWORD PTR [ecx+0x30],eax
  8e5c91:	mov    al,0x1
  8e5c93:	cmp    BYTE PTR [ecx+0x34],0x0
  8e5c97:	jne    8e601c
  8e5c9d:	mov    DWORD PTR [ecx+0x38],0x6
  8e5ca4:	jmp    8e601c
  8e5ca9:	lea    eax,[ebx+0x595b4]  ; literal "PigDefeated_VeryLarge"
  8e5caf:	mov    eax,DWORD PTR [eax]
  8e5cb1:	mov    DWORD PTR [edi+0x24],eax
  8e5cb4:	mov    DWORD PTR [esp+0x4],0x0
  8e5cbc:	mov    DWORD PTR [esp],0x0
  8e5cc3:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  8e5cc8:	test   eax,eax
  8e5cca:	je     8e7282
  8e5cd0:	mov    ecx,DWORD PTR [edi+0x24]
  8e5cd3:	mov    DWORD PTR [esp+0x8],esi
  8e5cd7:	mov    DWORD PTR [esp+0x4],ecx
  8e5cdb:	mov    DWORD PTR [esp],eax
  8e5cde:	mov    DWORD PTR [esp+0xc],0x0
  8e5ce6:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  8e5ceb:	test   al,al
  8e5ced:	je     8e5e1e
  8e5cf3:	mov    ecx,DWORD PTR [edi+0x2c]
  8e5cf6:	test   ecx,ecx
  8e5cf8:	je     8e7282
  8e5cfe:	mov    eax,DWORD PTR [esi]
  8e5d00:	test   eax,eax
  8e5d02:	je     8e7282
  8e5d08:	mov    eax,DWORD PTR [eax+0xc]
  8e5d0b:	test   eax,eax
  8e5d0d:	je     8e7282
  8e5d13:	mov    edx,DWORD PTR [ecx+0x14]
  8e5d16:	mov    DWORD PTR [esp+0x44],edx
  8e5d1a:	mov    edx,DWORD PTR [ecx+0x18]
  8e5d1d:	mov    DWORD PTR [esp+0x3c],edx
  8e5d21:	mov    DWORD PTR [esp+0x40],ecx
  8e5d25:	lea    ecx,[ebx+0x4b390]
  8e5d2b:	mov    ecx,DWORD PTR [ecx]
  8e5d2d:	mov    DWORD PTR [esp+0x8],ecx
  8e5d31:	mov    DWORD PTR [esp],eax
  8e5d34:	mov    DWORD PTR [esp+0x4],0x0
  8e5d3c:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  8e5d41:	mov    DWORD PTR [esp+0x38],eax
  8e5d45:	mov    eax,DWORD PTR [edi+0x1c]
  8e5d48:	mov    DWORD PTR [esp+0x34],eax
  8e5d4c:	lea    eax,[ebx+0x45890]
  8e5d52:	mov    eax,DWORD PTR [eax]
  8e5d54:	mov    DWORD PTR [esp],eax
  8e5d57:	call   20bfb2
  8e5d5c:	mov    DWORD PTR [esp+0x48],ebx
  8e5d60:	mov    esi,eax
  8e5d62:	lea    eax,[ebx+0x4a074]
  8e5d68:	mov    eax,DWORD PTR [eax]
  8e5d6a:	mov    DWORD PTR [esp+0x4],eax
  8e5d6e:	mov    DWORD PTR [esp],esi
  8e5d71:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  8e5d76:	mov    eax,DWORD PTR [edi+0x2c]
  8e5d79:	test   eax,eax
  8e5d7b:	je     8e727e
  8e5d81:	test   esi,esi
  8e5d83:	je     8e727e
  8e5d89:	mov    eax,DWORD PTR [eax+0x18]
  8e5d8c:	mov    ebx,DWORD PTR [esp+0x48]
  8e5d90:	lea    ecx,[ebx+0x4a078]
  8e5d96:	mov    ecx,DWORD PTR [ecx]
  8e5d98:	mov    DWORD PTR [esp+0x8],ecx
  8e5d9c:	mov    DWORD PTR [esp+0x4],eax
  8e5da0:	mov    DWORD PTR [esp],esi
  8e5da3:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  8e5da8:	mov    eax,DWORD PTR [esp+0x44]
  8e5dac:	test   eax,eax
  8e5dae:	je     8e7282
  8e5db4:	mov    DWORD PTR [esp+0x10],esi
  8e5db8:	mov    ecx,DWORD PTR [esp+0x34]
  8e5dbc:	mov    DWORD PTR [esp+0xc],ecx
  8e5dc0:	mov    ecx,DWORD PTR [esp+0x38]
  8e5dc4:	mov    DWORD PTR [esp+0x8],ecx
  8e5dc8:	mov    ecx,DWORD PTR [esp+0x3c]
  8e5dcc:	mov    DWORD PTR [esp+0x4],ecx
  8e5dd0:	mov    DWORD PTR [esp],eax
  8e5dd3:	mov    DWORD PTR [esp+0x18],0x0
  8e5ddb:	mov    DWORD PTR [esp+0x14],0x0
  8e5de3:	call   9f70c9  ; BattleMgrBase::InstantiateEffects
  8e5de8:	mov    DWORD PTR [esp+0x4],eax
  8e5dec:	mov    eax,DWORD PTR [esp+0x40]
  8e5df0:	mov    DWORD PTR [esp],eax
  8e5df3:	mov    DWORD PTR [esp+0x8],0x0
  8e5dfb:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8e5e00:	mov    ecx,DWORD PTR [ebp+0x8]
  8e5e03:	mov    DWORD PTR [ecx+0x30],eax
  8e5e06:	mov    al,0x1
  8e5e08:	cmp    BYTE PTR [ecx+0x34],0x0
  8e5e0c:	jne    8e601c
  8e5e12:	mov    DWORD PTR [ecx+0x38],0x7
  8e5e19:	jmp    8e601c
  8e5e1e:	mov    DWORD PTR [esp+0x48],ebx
  8e5e22:	mov    eax,DWORD PTR [edi+0x2c]
  8e5e25:	test   eax,eax
  8e5e27:	je     8e727e
  8e5e2d:	mov    edi,DWORD PTR [eax+0x18]
  8e5e30:	test   edi,edi
  8e5e32:	je     8e727e
  8e5e38:	mov    eax,DWORD PTR [esp+0x48]
  8e5e3c:	lea    eax,[eax+0x45874]
  8e5e42:	mov    DWORD PTR [esp+0x44],eax
  8e5e46:	mov    eax,DWORD PTR [eax]
  8e5e48:	mov    ecx,DWORD PTR [edi]
  8e5e4a:	movzx  edx,WORD PTR [ecx+0xaa]
  8e5e51:	test   edx,edx
  8e5e53:	je     8e5e64
  8e5e55:	mov    esi,DWORD PTR [ecx+0x4c]
  8e5e58:	xor    ebx,ebx
  8e5e5a:	cmp    DWORD PTR [esi+ebx*8],eax
  8e5e5d:	je     8e5e80
  8e5e5f:	inc    ebx
  8e5e60:	cmp    ebx,edx
  8e5e62:	jb     8e5e5a
  8e5e64:	mov    DWORD PTR [esp+0x4],eax
  8e5e68:	mov    DWORD PTR [esp],edi
  8e5e6b:	mov    DWORD PTR [esp+0x8],0x2f
  8e5e73:	mov    ebx,DWORD PTR [esp+0x48]
  8e5e77:	call   1c1964
  8e5e7c:	mov    ecx,eax
  8e5e7e:	jmp    8e5e8f
  8e5e80:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8e5e84:	lea    ecx,[ecx+eax*8+0x22c]
  8e5e8b:	mov    ebx,DWORD PTR [esp+0x48]
  8e5e8f:	mov    eax,DWORD PTR [ecx+0x4]
  8e5e92:	mov    DWORD PTR [esp+0x4],eax
  8e5e96:	mov    DWORD PTR [esp],edi
  8e5e99:	call   DWORD PTR [ecx]
  8e5e9b:	cmp    eax,0x1
  8e5e9e:	mov    esi,DWORD PTR [ebp+0x8]
  8e5ea1:	jne    8e5fb1
  8e5ea7:	mov    eax,DWORD PTR [esi+0x2c]
  8e5eaa:	test   eax,eax
  8e5eac:	je     8e727e
  8e5eb2:	mov    edi,DWORD PTR [eax+0x18]
  8e5eb5:	test   edi,edi
  8e5eb7:	je     8e727e
  8e5ebd:	mov    eax,DWORD PTR [esp+0x44]
  8e5ec1:	mov    eax,DWORD PTR [eax]
  8e5ec3:	mov    ecx,DWORD PTR [edi]
  8e5ec5:	movzx  edx,WORD PTR [ecx+0xaa]
  8e5ecc:	test   edx,edx
  8e5ece:	je     8e5edf
  8e5ed0:	mov    esi,DWORD PTR [ecx+0x4c]
  8e5ed3:	xor    ebx,ebx
  8e5ed5:	cmp    DWORD PTR [esi+ebx*8],eax
  8e5ed8:	je     8e5efb
  8e5eda:	inc    ebx
  8e5edb:	cmp    ebx,edx
  8e5edd:	jb     8e5ed5
  8e5edf:	mov    DWORD PTR [esp+0x4],eax
  8e5ee3:	mov    DWORD PTR [esp],edi
  8e5ee6:	mov    DWORD PTR [esp+0x8],0x14
  8e5eee:	mov    ebx,DWORD PTR [esp+0x48]
  8e5ef2:	call   1c1964
  8e5ef7:	mov    ecx,eax
  8e5ef9:	jmp    8e5f0a
  8e5efb:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8e5eff:	lea    ecx,[ecx+eax*8+0x154]
  8e5f06:	mov    ebx,DWORD PTR [esp+0x48]
  8e5f0a:	mov    eax,DWORD PTR [ecx+0x4]
  8e5f0d:	mov    DWORD PTR [esp+0x4],eax
  8e5f11:	mov    DWORD PTR [esp],edi
  8e5f14:	call   DWORD PTR [ecx]
  8e5f16:	test   al,al
  8e5f18:	mov    esi,DWORD PTR [ebp+0x8]
  8e5f1b:	je     8e5f93
  8e5f1d:	mov    eax,DWORD PTR [esi+0x2c]
  8e5f20:	test   eax,eax
  8e5f22:	je     8e727e
  8e5f28:	mov    edi,DWORD PTR [eax+0x18]
  8e5f2b:	test   edi,edi
  8e5f2d:	je     8e727e
  8e5f33:	mov    eax,DWORD PTR [esp+0x44]
  8e5f37:	mov    eax,DWORD PTR [eax]
  8e5f39:	mov    ecx,DWORD PTR [edi]
  8e5f3b:	movzx  edx,WORD PTR [ecx+0xaa]
  8e5f42:	test   edx,edx
  8e5f44:	je     8e5f55
  8e5f46:	mov    esi,DWORD PTR [ecx+0x4c]
  8e5f49:	xor    ebx,ebx
  8e5f4b:	cmp    DWORD PTR [esi+ebx*8],eax
  8e5f4e:	je     8e5f71
  8e5f50:	inc    ebx
  8e5f51:	cmp    ebx,edx
  8e5f53:	jb     8e5f4b
  8e5f55:	mov    DWORD PTR [esp+0x4],eax
  8e5f59:	mov    DWORD PTR [esp],edi
  8e5f5c:	mov    DWORD PTR [esp+0x8],0x13
  8e5f64:	mov    ebx,DWORD PTR [esp+0x48]
  8e5f68:	call   1c1964
  8e5f6d:	mov    ecx,eax
  8e5f6f:	jmp    8e5f80
  8e5f71:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8e5f75:	lea    ecx,[ecx+eax*8+0x14c]
  8e5f7c:	mov    ebx,DWORD PTR [esp+0x48]
  8e5f80:	mov    eax,DWORD PTR [ecx+0x4]
  8e5f83:	mov    DWORD PTR [esp+0x4],eax
  8e5f87:	mov    DWORD PTR [esp],edi
  8e5f8a:	call   DWORD PTR [ecx]
  8e5f8c:	test   al,al
  8e5f8e:	mov    esi,DWORD PTR [ebp+0x8]
  8e5f91:	je     8e5fb1
  8e5f93:	mov    eax,DWORD PTR [esi+0x28]
  8e5f96:	test   eax,eax
  8e5f98:	jle    8e5fb1
  8e5f9a:	mov    ecx,DWORD PTR [esi+0x2c]
  8e5f9d:	test   ecx,ecx
  8e5f9f:	je     8e7282
  8e5fa5:	mov    DWORD PTR [esp+0x4],eax
  8e5fa9:	mov    DWORD PTR [esp],ecx
  8e5fac:	call   8e1ecb  ; CharacterControllerBattleGroundBase::ShowScore
  8e5fb1:	mov    DWORD PTR [esp+0x48],ebx
  8e5fb5:	mov    esi,DWORD PTR [esi+0x2c]
  8e5fb8:	test   esi,esi
  8e5fba:	je     8e727e
  8e5fc0:	mov    edi,DWORD PTR [esi+0x18]
  8e5fc3:	test   edi,edi
  8e5fc5:	je     8e5ff0
  8e5fc7:	mov    eax,DWORD PTR [esp+0x48]
  8e5fcb:	lea    eax,[eax+0x45a30]
  8e5fd1:	mov    eax,DWORD PTR [eax]
  8e5fd3:	mov    ecx,DWORD PTR [edi]
  8e5fd5:	movzx  edx,BYTE PTR [eax+0xac]
  8e5fdc:	movzx  ebx,BYTE PTR [ecx+0xac]
  8e5fe3:	cmp    ebx,edx
  8e5fe5:	jb     8e5ff0
  8e5fe7:	mov    ecx,DWORD PTR [ecx+0x58]
  8e5fea:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  8e5fee:	je     8e6027
  8e5ff0:	mov    DWORD PTR [esp],esi
  8e5ff3:	mov    ebx,DWORD PTR [esp+0x48]
  8e5ff7:	call   8e0307  ; CharacterControllerBattleGroundBase::CheckIfDestroyBeforeEndOfTurn
  8e5ffc:	mov    DWORD PTR [esp+0x4],eax
  8e6000:	mov    DWORD PTR [esp],esi
  8e6003:	mov    DWORD PTR [esp+0x8],0x0
  8e600b:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8e6010:	mov    edi,DWORD PTR [ebp+0x8]
  8e6013:	mov    DWORD PTR [edi+0x38],0xffffffff
  8e601a:	xor    eax,eax
  8e601c:	movzx  eax,al
  8e601f:	lea    esp,[ebp-0xc]
  8e6022:	pop    esi
  8e6023:	pop    edi
  8e6024:	pop    ebx
  8e6025:	pop    ebp
  8e6026:	ret
  8e6027:	mov    eax,DWORD PTR [esp+0x44]
  8e602b:	mov    eax,DWORD PTR [eax]
  8e602d:	mov    ecx,DWORD PTR [edi]
  8e602f:	movzx  edx,WORD PTR [ecx+0xaa]
  8e6036:	test   edx,edx
  8e6038:	je     8e6049
  8e603a:	mov    esi,DWORD PTR [ecx+0x4c]
  8e603d:	xor    ebx,ebx
  8e603f:	cmp    DWORD PTR [esi+ebx*8],eax
  8e6042:	je     8e6065
  8e6044:	inc    ebx
  8e6045:	cmp    ebx,edx
  8e6047:	jb     8e603f
  8e6049:	mov    DWORD PTR [esp+0x4],eax
  8e604d:	mov    DWORD PTR [esp],edi
  8e6050:	mov    DWORD PTR [esp+0x8],0xa
  8e6058:	mov    ebx,DWORD PTR [esp+0x48]
  8e605c:	call   1c1964
  8e6061:	mov    ecx,eax
  8e6063:	jmp    8e6074
  8e6065:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  8e6069:	lea    ecx,[ecx+eax*8+0x104]
  8e6070:	mov    ebx,DWORD PTR [esp+0x48]
  8e6074:	mov    eax,DWORD PTR [ecx+0x4]
  8e6077:	mov    DWORD PTR [esp+0x4],eax
  8e607b:	mov    DWORD PTR [esp],edi
  8e607e:	call   DWORD PTR [ecx]
  8e6080:	mov    esi,eax
  8e6082:	lea    eax,[ebx+0x430e4]
  8e6088:	mov    eax,DWORD PTR [eax]
  8e608a:	test   BYTE PTR [eax+0xb2],0x1
  8e6091:	je     8e60a1
  8e6093:	cmp    DWORD PTR [eax+0x60],0x0
  8e6097:	jne    8e60a1
  8e6099:	mov    DWORD PTR [esp],eax
  8e609c:	call   1db0b8
  8e60a1:	lea    eax,[ebx+0x595b8]  ; literal "boss_hogrider_hefty"
  8e60a7:	mov    eax,DWORD PTR [eax]
  8e60a9:	mov    DWORD PTR [esp+0x8],eax
  8e60ad:	mov    DWORD PTR [esp+0x4],esi
  8e60b1:	mov    DWORD PTR [esp+0xc],0x0
  8e60b9:	mov    DWORD PTR [esp],0x0
  8e60c0:	call   ca24cf  ; System.String::op_Equality
  8e60c5:	test   al,al
  8e60c7:	mov    edi,DWORD PTR [ebp+0x8]
  8e60ca:	je     8e6013
  8e60d0:	lea    eax,[ebx+0x45664]
  8e60d6:	mov    eax,DWORD PTR [eax]
  8e60d8:	mov    DWORD PTR [esp],eax
  8e60db:	call   20bfb2
  8e60e0:	mov    esi,eax
  8e60e2:	mov    DWORD PTR [esp],esi
  8e60e5:	mov    DWORD PTR [esp+0x8],0x0
  8e60ed:	mov    DWORD PTR [esp+0x4],0x3f800000
  8e60f5:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  8e60fa:	mov    DWORD PTR [edi+0x30],esi
  8e60fd:	mov    al,0x1
  8e60ff:	cmp    BYTE PTR [edi+0x34],0x0
  8e6103:	jne    8e601c
  8e6109:	mov    DWORD PTR [edi+0x38],0x8
  8e6110:	jmp    8e601c
  8e6115:	xor    esi,esi
  8e6117:	mov    al,0x1
  8e6119:	mov    DWORD PTR [esp+0x44],eax
  8e611d:	mov    edi,DWORD PTR [ebp+0x8]
  8e6120:	jmp    8e6188
  8e6122:	lea    eax,[ebx+0x43180]
  8e6128:	mov    eax,DWORD PTR [eax]
  8e612a:	mov    DWORD PTR [esp],eax
  8e612d:	call   20bfb2
  8e6132:	mov    esi,eax
  8e6134:	mov    DWORD PTR [esp],esi
  8e6137:	mov    DWORD PTR [esp+0x4],0x0
  8e613f:	call   ef77ee  ; System.ArgumentOutOfRangeException::.ctor
  8e6144:	mov    DWORD PTR [esp],esi
  8e6147:	call   1fbb20
  8e614c:	call   8b3f00
  8e6151:	call   1fbc48
  8e6156:	call   8b3f00
  8e615b:	call   1fbc48
  8e6160:	jmp    8e7298
  8e6165:	mov    edi,DWORD PTR [ebp+0x8]
  8e6168:	cmp    edx,0x1
  8e616b:	jne    8e7290
  8e6171:	mov    DWORD PTR [esp],eax
  8e6174:	call   1ba3f0
  8e6179:	mov    esi,DWORD PTR [eax]
  8e617b:	call   1b9ce0
  8e6180:	mov    DWORD PTR [esp+0x44],0x0
  8e6188:	lea    eax,[ebx+0x4b378]
  8e618e:	mov    eax,DWORD PTR [eax]
  8e6190:	mov    DWORD PTR [esp+0x4],eax
  8e6194:	lea    eax,[esp+0xf0]
  8e619b:	mov    DWORD PTR [esp],eax
  8e619e:	call   122763c
  8e61a3:	mov    eax,DWORD PTR [esp+0x44]
  8e61a7:	test   al,al
  8e61a9:	jne    8e61b7
  8e61ab:	test   esi,esi
  8e61ad:	je     8e61b7
  8e61af:	mov    DWORD PTR [esp],esi
  8e61b2:	call   1fbb20
  8e61b7:	mov    esi,ebx
  8e61b9:	mov    eax,DWORD PTR [edi+0x8]
  8e61bc:	test   eax,eax
  8e61be:	je     8e62b3
  8e61c4:	mov    ebx,esi
  8e61c6:	lea    ecx,[ebx+0x57310]  ; literal "experience"
  8e61cc:	mov    DWORD PTR [esp+0x44],ecx
  8e61d0:	mov    ecx,DWORD PTR [ecx]
  8e61d2:	lea    edx,[ebx+0x4b564]
  8e61d8:	mov    edx,DWORD PTR [edx]
  8e61da:	mov    DWORD PTR [esp+0x8],edx
  8e61de:	mov    DWORD PTR [esp+0x4],ecx
  8e61e2:	mov    DWORD PTR [esp],eax
  8e61e5:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  8e61ea:	test   al,al
  8e61ec:	je     8e62b3
  8e61f2:	mov    eax,DWORD PTR [edi+0x2c]
  8e61f5:	test   eax,eax
  8e61f7:	je     8e728c
  8e61fd:	mov    DWORD PTR [esp],eax
  8e6200:	mov    ebx,esi
  8e6202:	call   8df7ea  ; CharacterControllerBattleGroundBase::GetXpDifferenceFactor
  8e6207:	fstp   DWORD PTR [esp+0x50]
  8e620b:	mov    eax,DWORD PTR [edi+0x8]
  8e620e:	test   eax,eax
  8e6210:	je     8e7282
  8e6216:	movss  xmm0,DWORD PTR [esp+0x50]
  8e621c:	movss  DWORD PTR [esp+0x3c],xmm0
  8e6222:	mov    ecx,DWORD PTR [esp+0x44]
  8e6226:	mov    ecx,DWORD PTR [ecx]
  8e6228:	lea    esi,[ebx+0x4ac78]
  8e622e:	mov    edx,DWORD PTR [esi]
  8e6230:	mov    DWORD PTR [esp+0x8],edx
  8e6234:	mov    DWORD PTR [esp+0x4],ecx
  8e6238:	mov    DWORD PTR [esp],eax
  8e623b:	call   618b6e  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Item | System.Collections.Generic.Dictionary`2<string, object>::get_Item | System.Collections.Generic.Dictionary`2<string, string>::get_Item | +34 other aliases
  8e6240:	mov    DWORD PTR [esp+0x40],eax
  8e6244:	mov    eax,DWORD PTR [edi+0x8]
  8e6247:	test   eax,eax
  8e6249:	je     8e7282
  8e624f:	mov    ecx,DWORD PTR [esp+0x44]
  8e6253:	mov    ecx,DWORD PTR [ecx]
  8e6255:	mov    edx,DWORD PTR [esi]
  8e6257:	mov    DWORD PTR [esp+0x8],edx
  8e625b:	mov    DWORD PTR [esp+0x4],ecx
  8e625f:	mov    DWORD PTR [esp],eax
  8e6262:	call   618b6e  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Item | System.Collections.Generic.Dictionary`2<string, object>::get_Item | System.Collections.Generic.Dictionary`2<string, string>::get_Item | +34 other aliases
  8e6267:	test   eax,eax
  8e6269:	je     8e7282
  8e626f:	mov    DWORD PTR [esp],eax
  8e6272:	mov    DWORD PTR [esp+0x4],0x0
  8e627a:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  8e627f:	mov    ecx,DWORD PTR [esp+0x40]
  8e6283:	test   ecx,ecx
  8e6285:	je     8e7282
  8e628b:	cvtsi2ss xmm0,eax
  8e628f:	movss  xmm1,DWORD PTR [esp+0x3c]
  8e6295:	mulss  xmm1,xmm0
  8e6299:	cvttss2si eax,xmm1
  8e629d:	mov    DWORD PTR [esp],ecx
  8e62a0:	mov    DWORD PTR [esp+0x4],eax
  8e62a4:	mov    DWORD PTR [esp+0x8],0x0
  8e62ac:	mov    esi,ebx
  8e62ae:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  8e62b3:	mov    eax,DWORD PTR [edi+0x2c]
  8e62b6:	test   eax,eax
  8e62b8:	je     8e728c
  8e62be:	mov    eax,DWORD PTR [eax+0x14]
  8e62c1:	test   eax,eax
  8e62c3:	mov    ebx,esi
  8e62c5:	je     8e7282
  8e62cb:	mov    DWORD PTR [esp],eax
  8e62ce:	mov    DWORD PTR [esp+0x4],0x0
  8e62d6:	call   9f18af  ; BattleMgrBase::get_Model
  8e62db:	test   eax,eax
  8e62dd:	je     8e7282
  8e62e3:	mov    DWORD PTR [esp],eax
  8e62e6:	mov    DWORD PTR [esp+0x4],0x0
  8e62ee:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  8e62f3:	test   eax,eax
  8e62f5:	je     8e7282
  8e62fb:	mov    DWORD PTR [esp],eax
  8e62fe:	mov    DWORD PTR [esp+0x4],0x0
  8e6306:	call   16fe6e6  ; ABH.Shared.BalancingData.BattleBalancingData::get_BonusLoot
  8e630b:	test   eax,eax
  8e630d:	je     8e6807
  8e6313:	mov    eax,DWORD PTR [edi+0x2c]
  8e6316:	test   eax,eax
  8e6318:	je     8e7282
  8e631e:	mov    eax,DWORD PTR [eax+0x14]
  8e6321:	test   eax,eax
  8e6323:	je     8e7282
  8e6329:	mov    DWORD PTR [esp],eax
  8e632c:	mov    DWORD PTR [esp+0x4],0x0
  8e6334:	call   9f18af  ; BattleMgrBase::get_Model
  8e6339:	test   eax,eax
  8e633b:	je     8e7282
  8e6341:	mov    DWORD PTR [esp],eax
  8e6344:	mov    DWORD PTR [esp+0x4],0x0
  8e634c:	call   ec1768  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentWaveIndex
  8e6351:	mov    esi,eax
  8e6353:	mov    eax,DWORD PTR [edi+0x2c]
  8e6356:	test   eax,eax
  8e6358:	je     8e7282
  8e635e:	mov    eax,DWORD PTR [eax+0x14]
  8e6361:	test   eax,eax
  8e6363:	je     8e7282
  8e6369:	mov    DWORD PTR [esp],eax
  8e636c:	mov    DWORD PTR [esp+0x4],0x0
  8e6374:	call   9f18af  ; BattleMgrBase::get_Model
  8e6379:	test   eax,eax
  8e637b:	je     8e7282
  8e6381:	mov    DWORD PTR [esp],eax
  8e6384:	mov    DWORD PTR [esp+0x4],0x0
  8e638c:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  8e6391:	test   eax,eax
  8e6393:	je     8e7282
  8e6399:	mov    DWORD PTR [esp],eax
  8e639c:	mov    DWORD PTR [esp+0x4],0x0
  8e63a4:	call   16fe3d3  ; ABH.Shared.BalancingData.BattleBalancingData::get_BattleParticipantsIds
  8e63a9:	test   eax,eax
  8e63ab:	je     8e7282
  8e63b1:	lea    ecx,[ebx+0x48c20]
  8e63b7:	mov    ecx,DWORD PTR [ecx]
  8e63b9:	mov    DWORD PTR [esp+0x4],ecx
  8e63bd:	mov    DWORD PTR [esp],eax
  8e63c0:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  8e63c5:	dec    eax
  8e63c6:	cmp    esi,eax
  8e63c8:	jne    8e6807
  8e63ce:	mov    eax,DWORD PTR [edi+0x2c]
  8e63d1:	test   eax,eax
  8e63d3:	je     8e7282
  8e63d9:	mov    eax,DWORD PTR [eax+0x14]
  8e63dc:	test   eax,eax
  8e63de:	je     8e7282
  8e63e4:	mov    DWORD PTR [esp],eax
  8e63e7:	mov    DWORD PTR [esp+0x4],0x0
  8e63ef:	call   9f18af  ; BattleMgrBase::get_Model
  8e63f4:	test   eax,eax
  8e63f6:	je     8e7282
  8e63fc:	mov    eax,DWORD PTR [eax+0x68]
  8e63ff:	test   eax,eax
  8e6401:	je     8e7282
  8e6407:	lea    ecx,[ebx+0x4a04c]
  8e640d:	mov    ecx,DWORD PTR [ecx]
  8e640f:	mov    DWORD PTR [esp+0x8],ecx
  8e6413:	mov    DWORD PTR [esp],eax
  8e6416:	mov    DWORD PTR [esp+0x4],0x1
  8e641e:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  8e6423:	mov    esi,eax
  8e6425:	lea    eax,[ebx+0x46ba0]
  8e642b:	mov    DWORD PTR [esp+0x44],eax
  8e642f:	mov    eax,DWORD PTR [eax]
  8e6431:	mov    ecx,DWORD PTR [eax+0x50]
  8e6434:	cmp    DWORD PTR [ecx],0x0
  8e6437:	jne    8e6499
  8e6439:	lea    eax,[ebx+0x4cc7c]
  8e643f:	mov    eax,DWORD PTR [eax]
  8e6441:	mov    DWORD PTR [esp+0x40],eax
  8e6445:	lea    eax,[ebx+0x4588c]
  8e644b:	mov    eax,DWORD PTR [eax]
  8e644d:	mov    DWORD PTR [esp],eax
  8e6450:	call   20bfb2
  8e6455:	mov    edi,eax
  8e6457:	mov    eax,DWORD PTR [esp+0x40]
  8e645b:	mov    DWORD PTR [esp+0xc8],eax
  8e6462:	lea    eax,[ebx+0x4a054]
  8e6468:	mov    eax,DWORD PTR [eax]
  8e646a:	mov    DWORD PTR [esp+0xc],eax
  8e646e:	mov    eax,DWORD PTR [esp+0xc8]
  8e6475:	mov    DWORD PTR [esp+0x8],eax
  8e6479:	mov    DWORD PTR [esp],edi
  8e647c:	mov    DWORD PTR [esp+0x4],0x0
  8e6484:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  8e6489:	mov    ecx,DWORD PTR [esp+0x44]
  8e648d:	mov    eax,DWORD PTR [ecx]
  8e648f:	mov    eax,DWORD PTR [eax+0x50]
  8e6492:	mov    DWORD PTR [eax],edi
  8e6494:	mov    edi,DWORD PTR [ebp+0x8]
  8e6497:	mov    eax,DWORD PTR [ecx]
  8e6499:	mov    eax,DWORD PTR [eax+0x50]
  8e649c:	mov    eax,DWORD PTR [eax]
  8e649e:	lea    ecx,[ebx+0x4a058]
  8e64a4:	mov    ecx,DWORD PTR [ecx]
  8e64a6:	mov    DWORD PTR [esp+0xc],ecx
  8e64aa:	mov    DWORD PTR [esp+0x8],eax
  8e64ae:	mov    DWORD PTR [esp+0x4],esi
  8e64b2:	mov    DWORD PTR [esp],0x0
  8e64b9:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  8e64be:	lea    ecx,[ebx+0x4a05c]
  8e64c4:	mov    ecx,DWORD PTR [ecx]
  8e64c6:	mov    DWORD PTR [esp+0x8],ecx
  8e64ca:	mov    DWORD PTR [esp+0x4],eax
  8e64ce:	mov    DWORD PTR [esp],0x0
  8e64d5:	call   ddf8e7  ; shared address: System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | +12 other aliases
  8e64da:	test   eax,eax
  8e64dc:	jne    8e6807
  8e64e2:	mov    eax,DWORD PTR [edi+0x2c]
  8e64e5:	test   eax,eax
  8e64e7:	je     8e7282
  8e64ed:	mov    eax,DWORD PTR [eax+0x14]
  8e64f0:	test   eax,eax
  8e64f2:	je     8e7282
  8e64f8:	mov    DWORD PTR [esp],eax
  8e64fb:	mov    DWORD PTR [esp+0x4],0x0
  8e6503:	call   9f18af  ; BattleMgrBase::get_Model
  8e6508:	test   eax,eax
  8e650a:	je     8e7282
  8e6510:	mov    DWORD PTR [esp],eax
  8e6513:	mov    DWORD PTR [esp+0x4],0x0
  8e651b:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  8e6520:	test   eax,eax
  8e6522:	je     8e7282
  8e6528:	mov    DWORD PTR [esp],eax
  8e652b:	mov    DWORD PTR [esp+0x4],0x0
  8e6533:	call   16fe6e6  ; ABH.Shared.BalancingData.BattleBalancingData::get_BonusLoot
  8e6538:	test   eax,eax
  8e653a:	je     8e7282
  8e6540:	lea    esi,[ebx+0x57310]  ; literal "experience"
  8e6546:	mov    ecx,DWORD PTR [esi]
  8e6548:	lea    edx,[ebx+0x4a974]
  8e654e:	mov    edx,DWORD PTR [edx]
  8e6550:	mov    DWORD PTR [esp+0x8],edx
  8e6554:	mov    DWORD PTR [esp+0x4],ecx
  8e6558:	mov    DWORD PTR [esp],eax
  8e655b:	call   61219e  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::ContainsKey | System.Collections.Generic.Dictionary`2<object, int>::ContainsKey
  8e6560:	test   al,al
  8e6562:	je     8e6807
  8e6568:	mov    eax,DWORD PTR [edi+0x2c]
  8e656b:	test   eax,eax
  8e656d:	je     8e7282
  8e6573:	mov    eax,DWORD PTR [eax+0x14]
  8e6576:	test   eax,eax
  8e6578:	je     8e7282
  8e657e:	cmp    BYTE PTR [eax+0x90],0x0
  8e6585:	jne    8e6807
  8e658b:	mov    DWORD PTR [esp],eax
  8e658e:	mov    DWORD PTR [esp+0x4],0x0
  8e6596:	call   9f18af  ; BattleMgrBase::get_Model
  8e659b:	test   eax,eax
  8e659d:	je     8e7282
  8e65a3:	mov    DWORD PTR [esp],eax
  8e65a6:	mov    DWORD PTR [esp+0x4],0x0
  8e65ae:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  8e65b3:	test   eax,eax
  8e65b5:	je     8e7282
  8e65bb:	mov    DWORD PTR [esp],eax
  8e65be:	mov    DWORD PTR [esp+0x4],0x0
  8e65c6:	call   16fe6e6  ; ABH.Shared.BalancingData.BattleBalancingData::get_BonusLoot
  8e65cb:	mov    ecx,DWORD PTR [esp+0x44]
  8e65cf:	mov    edx,DWORD PTR [ecx]
  8e65d1:	mov    edx,DWORD PTR [edx+0x50]
  8e65d4:	cmp    DWORD PTR [edx+0x4],0x0
  8e65d8:	jne    8e6646
  8e65da:	lea    edx,[ebx+0x4cc80]
  8e65e0:	mov    ecx,DWORD PTR [edx]
  8e65e2:	mov    DWORD PTR [esp+0x3c],ecx
  8e65e6:	lea    edx,[ebx+0x46b1c]
  8e65ec:	mov    edx,DWORD PTR [edx]
  8e65ee:	mov    DWORD PTR [esp],edx
  8e65f1:	mov    DWORD PTR [esp+0x40],eax
  8e65f5:	call   20bfb2
  8e65fa:	mov    edi,eax
  8e65fc:	mov    eax,DWORD PTR [esp+0x3c]
  8e6600:	mov    DWORD PTR [esp+0xc0],eax
  8e6607:	lea    eax,[ebx+0x4cb24]
  8e660d:	mov    eax,DWORD PTR [eax]
  8e660f:	mov    DWORD PTR [esp+0xc],eax
  8e6613:	mov    eax,DWORD PTR [esp+0xc0]
  8e661a:	mov    DWORD PTR [esp+0x8],eax
  8e661e:	mov    DWORD PTR [esp],edi
  8e6621:	mov    DWORD PTR [esp+0x4],0x0
  8e6629:	call   159d18b  ; shared address: System.Func`2<unresolved-type@0x1e5d478(kind=0x15,data=0x1f13e24), bool>::.ctor | System.Func`2<unresolved-type@0x1e5d360(kind=0x15,data=0x1f13c14), bool>::.ctor
  8e662e:	mov    eax,DWORD PTR [esp+0x40]
  8e6632:	mov    edx,DWORD PTR [esp+0x44]
  8e6636:	mov    ecx,DWORD PTR [edx]
  8e6638:	mov    ecx,DWORD PTR [ecx+0x50]
  8e663b:	mov    DWORD PTR [ecx+0x4],edi
  8e663e:	mov    edi,DWORD PTR [ebp+0x8]
  8e6641:	mov    ecx,DWORD PTR [edx]
  8e6643:	mov    edx,DWORD PTR [ecx+0x50]
  8e6646:	mov    edx,DWORD PTR [edx+0x4]
  8e6649:	lea    ecx,[ebx+0x4cc84]
  8e664f:	mov    ecx,DWORD PTR [ecx]
  8e6651:	mov    DWORD PTR [esp+0xc],ecx
  8e6655:	mov    DWORD PTR [esp+0x8],edx
  8e6659:	mov    DWORD PTR [esp+0x4],eax
  8e665d:	mov    DWORD PTR [esp],0x0
  8e6664:	call   9c011a  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where
  8e6669:	lea    ecx,[ebx+0x4cc88]
  8e666f:	mov    ecx,DWORD PTR [ecx]
  8e6671:	mov    DWORD PTR [esp+0xc],ecx
  8e6675:	mov    DWORD PTR [esp+0x8],eax
  8e6679:	lea    eax,[esp+0xb8]
  8e6680:	mov    DWORD PTR [esp],eax
  8e6683:	mov    DWORD PTR [esp+0x4],0x0
  8e668b:	call   15efc80  ; shared address: System.Linq.Enumerable::FirstOrDefault | System.Linq.Enumerable::FirstOrDefault
  8e6690:	sub    esp,0x4
  8e6693:	movsd  xmm0,QWORD PTR [esp+0xb8]
  8e669c:	movsd  QWORD PTR [esp+0xe8],xmm0
  8e66a5:	lea    eax,[ebx+0x499e0]
  8e66ab:	mov    eax,DWORD PTR [eax]
  8e66ad:	mov    DWORD PTR [esp+0x4],eax
  8e66b1:	lea    eax,[esp+0xe8]
  8e66b8:	mov    DWORD PTR [esp],eax
  8e66bb:	call   16ab7d4
  8e66c0:	mov    DWORD PTR [esp+0x44],eax
  8e66c4:	mov    eax,DWORD PTR [edi+0x8]
  8e66c7:	test   eax,eax
  8e66c9:	je     8e7282
  8e66cf:	mov    ecx,DWORD PTR [esi]
  8e66d1:	lea    edx,[ebx+0x4b564]
  8e66d7:	mov    edx,DWORD PTR [edx]
  8e66d9:	mov    DWORD PTR [esp+0x8],edx
  8e66dd:	mov    DWORD PTR [esp+0x4],ecx
  8e66e1:	mov    DWORD PTR [esp],eax
  8e66e4:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  8e66e9:	test   al,al
  8e66eb:	je     8e6749
  8e66ed:	mov    eax,DWORD PTR [edi+0x8]
  8e66f0:	test   eax,eax
  8e66f2:	je     8e7282
  8e66f8:	mov    ecx,DWORD PTR [esi]
  8e66fa:	lea    edx,[ebx+0x4ac78]
  8e6700:	mov    edx,DWORD PTR [edx]
  8e6702:	mov    DWORD PTR [esp+0x8],edx
  8e6706:	mov    DWORD PTR [esp+0x4],ecx
  8e670a:	mov    DWORD PTR [esp],eax
  8e670d:	call   618b6e  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Item | System.Collections.Generic.Dictionary`2<string, object>::get_Item | System.Collections.Generic.Dictionary`2<string, string>::get_Item | +34 other aliases
  8e6712:	mov    edi,eax
  8e6714:	test   edi,edi
  8e6716:	je     8e7282
  8e671c:	mov    DWORD PTR [esp],edi
  8e671f:	mov    DWORD PTR [esp+0x4],0x0
  8e6727:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  8e672c:	add    eax,DWORD PTR [esp+0x44]
  8e6730:	mov    DWORD PTR [esp+0x4],eax
  8e6734:	mov    DWORD PTR [esp],edi
  8e6737:	mov    DWORD PTR [esp+0x8],0x0
  8e673f:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  8e6744:	jmp    8e67e7
  8e6749:	lea    eax,[ebx+0x454b8]
  8e674f:	mov    eax,DWORD PTR [eax]
  8e6751:	mov    DWORD PTR [esp],eax
  8e6754:	call   20bfb2
  8e6759:	mov    edi,eax
  8e675b:	mov    DWORD PTR [esp],edi
  8e675e:	mov    DWORD PTR [esp+0x4],0x0
  8e6766:	call   179b333  ; ABH.Shared.Models.Generic.LootInfoData::.ctor
  8e676b:	test   edi,edi
  8e676d:	je     8e7282
  8e6773:	mov    eax,DWORD PTR [esp+0x44]
  8e6777:	mov    DWORD PTR [esp+0x4],eax
  8e677b:	mov    DWORD PTR [esp],edi
  8e677e:	mov    DWORD PTR [esp+0x8],0x0
  8e6786:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  8e678b:	mov    DWORD PTR [esp],edi
  8e678e:	mov    DWORD PTR [esp+0x8],0x0
  8e6796:	mov    DWORD PTR [esp+0x4],0x1
  8e679e:	call   179b2d9  ; ABH.Shared.Models.Generic.LootInfoData::set_Level
  8e67a3:	mov    DWORD PTR [esp],edi
  8e67a6:	mov    DWORD PTR [esp+0x8],0x0
  8e67ae:	mov    DWORD PTR [esp+0x4],0x1
  8e67b6:	call   179b2fc  ; ABH.Shared.Models.Generic.LootInfoData::set_Quality
  8e67bb:	mov    eax,DWORD PTR [ebp+0x8]
  8e67be:	mov    eax,DWORD PTR [eax+0x8]
  8e67c1:	test   eax,eax
  8e67c3:	je     8e7282
  8e67c9:	mov    ecx,DWORD PTR [esi]
  8e67cb:	lea    edx,[ebx+0x4b568]
  8e67d1:	mov    edx,DWORD PTR [edx]
  8e67d3:	mov    DWORD PTR [esp+0xc],edx
  8e67d7:	mov    DWORD PTR [esp+0x8],edi
  8e67db:	mov    DWORD PTR [esp+0x4],ecx
  8e67df:	mov    DWORD PTR [esp],eax
  8e67e2:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  8e67e7:	mov    edi,DWORD PTR [ebp+0x8]
  8e67ea:	mov    eax,DWORD PTR [edi+0x2c]
  8e67ed:	test   eax,eax
  8e67ef:	je     8e7282
  8e67f5:	mov    eax,DWORD PTR [eax+0x14]
  8e67f8:	test   eax,eax
  8e67fa:	je     8e7282
  8e6800:	mov    BYTE PTR [eax+0x90],0x1
  8e6807:	lea    eax,[ebx+0x458bc]
  8e680d:	mov    eax,DWORD PTR [eax]
  8e680f:	mov    DWORD PTR [esp],eax
  8e6812:	call   20bfb2
  8e6817:	mov    esi,eax
  8e6819:	lea    eax,[ebx+0x4a1d0]
  8e681f:	mov    eax,DWORD PTR [eax]
  8e6821:	mov    DWORD PTR [esp+0x4],eax
  8e6825:	mov    DWORD PTR [esp],esi
  8e6828:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  8e682d:	mov    DWORD PTR [edi+0x14],esi
  8e6830:	cmp    BYTE PTR [edi+0x18],0x0
  8e6834:	je     8e706d
  8e683a:	mov    eax,DWORD PTR [edi+0x2c]
  8e683d:	test   eax,eax
  8e683f:	je     8e727e
  8e6845:	mov    esi,DWORD PTR [eax+0x18]
  8e6848:	test   esi,esi
  8e684a:	je     8e727e
  8e6850:	mov    eax,DWORD PTR [esp+0x38]
  8e6854:	mov    eax,DWORD PTR [eax]
  8e6856:	mov    ebx,DWORD PTR [esi]
  8e6858:	movzx  edx,WORD PTR [ebx+0xaa]
  8e685f:	test   edx,edx
  8e6861:	je     8e6872
  8e6863:	mov    edi,DWORD PTR [ebx+0x4c]
  8e6866:	xor    ecx,ecx
  8e6868:	cmp    DWORD PTR [edi+ecx*8],eax
  8e686b:	je     8e688e
  8e686d:	inc    ecx
  8e686e:	cmp    ecx,edx
  8e6870:	jb     8e6868
  8e6872:	mov    DWORD PTR [esp+0x4],eax
  8e6876:	mov    DWORD PTR [esp],esi
  8e6879:	mov    DWORD PTR [esp+0x8],0x2f
  8e6881:	mov    ebx,DWORD PTR [esp+0x48]
  8e6885:	call   1c1964
  8e688a:	mov    ecx,eax
  8e688c:	jmp    8e689d
  8e688e:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8e6892:	lea    ecx,[ebx+eax*8+0x22c]
  8e6899:	mov    ebx,DWORD PTR [esp+0x48]
  8e689d:	mov    eax,DWORD PTR [ecx+0x4]
  8e68a0:	mov    DWORD PTR [esp+0x4],eax
  8e68a4:	mov    DWORD PTR [esp],esi
  8e68a7:	call   DWORD PTR [ecx]
  8e68a9:	cmp    eax,0x1
  8e68ac:	mov    edi,DWORD PTR [ebp+0x8]
  8e68af:	jne    8e706d
  8e68b5:	cmp    DWORD PTR [edi+0x8],0x0
  8e68b9:	je     8e706d
  8e68bf:	mov    DWORD PTR [esp+0x4],0x0
  8e68c7:	mov    DWORD PTR [esp],0x0
  8e68ce:	call   106f816  ; DIContainerLogic::GetLootOperationService
  8e68d3:	mov    esi,eax
  8e68d5:	mov    eax,DWORD PTR [edi+0x2c]
  8e68d8:	test   eax,eax
  8e68da:	je     8e7282
  8e68e0:	mov    eax,DWORD PTR [eax+0x14]
  8e68e3:	test   eax,eax
  8e68e5:	je     8e7282
  8e68eb:	mov    DWORD PTR [esp],eax
  8e68ee:	mov    DWORD PTR [esp+0x4],0x0
  8e68f6:	call   9f18af  ; BattleMgrBase::get_Model
  8e68fb:	test   eax,eax
  8e68fd:	je     8e7282
  8e6903:	test   esi,esi
  8e6905:	je     8e7282
  8e690b:	mov    ecx,DWORD PTR [edi+0x8]
  8e690e:	mov    eax,DWORD PTR [eax+0x78]
  8e6911:	lea    edx,[ebx+0x57938]  ; literal "defeated_pig"
  8e6917:	mov    edx,DWORD PTR [edx]
  8e6919:	mov    DWORD PTR [esp+0x10],edx
  8e691d:	mov    DWORD PTR [esp+0xc],ecx
  8e6921:	mov    DWORD PTR [esp+0x4],eax
  8e6925:	mov    DWORD PTR [esp],esi
  8e6928:	mov    DWORD PTR [esp+0x18],0x0
  8e6930:	mov    DWORD PTR [esp+0x14],0x0
  8e6938:	mov    DWORD PTR [esp+0x8],0x0
  8e6940:	call   5252bc  ; ABH.Services.Logic.LootOperations::RewardLootGetInputCopy
  8e6945:	mov    DWORD PTR [edi+0x14],eax
  8e6948:	mov    eax,DWORD PTR [edi+0x2c]
  8e694b:	test   eax,eax
  8e694d:	je     8e7282
  8e6953:	mov    esi,DWORD PTR [eax+0x18]
  8e6956:	test   esi,esi
  8e6958:	je     8e727e
  8e695e:	mov    eax,DWORD PTR [esp+0x38]
  8e6962:	mov    eax,DWORD PTR [eax]
  8e6964:	mov    ebx,DWORD PTR [esi]
  8e6966:	movzx  edx,WORD PTR [ebx+0xaa]
  8e696d:	test   edx,edx
  8e696f:	je     8e6980
  8e6971:	mov    edi,DWORD PTR [ebx+0x4c]
  8e6974:	xor    ecx,ecx
  8e6976:	cmp    DWORD PTR [edi+ecx*8],eax
  8e6979:	je     8e699c
  8e697b:	inc    ecx
  8e697c:	cmp    ecx,edx
  8e697e:	jb     8e6976
  8e6980:	mov    DWORD PTR [esp+0x4],eax
  8e6984:	mov    DWORD PTR [esp],esi
  8e6987:	mov    DWORD PTR [esp+0x8],0xa
  8e698f:	mov    ebx,DWORD PTR [esp+0x48]
  8e6993:	call   1c1964
  8e6998:	mov    ecx,eax
  8e699a:	jmp    8e69ab
  8e699c:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8e69a0:	lea    ecx,[ebx+eax*8+0x104]
  8e69a7:	mov    ebx,DWORD PTR [esp+0x48]
  8e69ab:	mov    eax,DWORD PTR [ecx+0x4]
  8e69ae:	mov    DWORD PTR [esp+0x4],eax
  8e69b2:	mov    DWORD PTR [esp],esi
  8e69b5:	call   DWORD PTR [ecx]
  8e69b7:	mov    esi,eax
  8e69b9:	lea    eax,[ebx+0x430e4]
  8e69bf:	mov    DWORD PTR [esp+0x44],eax
  8e69c3:	mov    eax,DWORD PTR [eax]
  8e69c5:	test   BYTE PTR [eax+0xb2],0x1
  8e69cc:	mov    edi,DWORD PTR [ebp+0x8]
  8e69cf:	je     8e69df
  8e69d1:	cmp    DWORD PTR [eax+0x60],0x0
  8e69d5:	jne    8e69df
  8e69d7:	mov    DWORD PTR [esp],eax
  8e69da:	call   1db0b8
  8e69df:	lea    eax,[ebx+0x575d8]  ; literal "pig_golden_pig"
  8e69e5:	mov    eax,DWORD PTR [eax]
  8e69e7:	mov    DWORD PTR [esp+0x8],eax
  8e69eb:	mov    DWORD PTR [esp+0x4],esi
  8e69ef:	mov    DWORD PTR [esp+0xc],0x0
  8e69f7:	mov    DWORD PTR [esp],0x0
  8e69fe:	call   ca24cf  ; System.String::op_Equality
  8e6a03:	test   al,al
  8e6a05:	je     8e6a99
  8e6a0b:	mov    DWORD PTR [esp+0x4],0x0
  8e6a13:	mov    DWORD PTR [esp],0x0
  8e6a1a:	call   1092c85  ; DIContainerLogic::get_WorldMapService
  8e6a1f:	mov    esi,eax
  8e6a21:	lea    eax,[ebx+0x4584c]
  8e6a27:	mov    eax,DWORD PTR [eax]
  8e6a29:	test   BYTE PTR [eax+0xb2],0x1
  8e6a30:	je     8e6a40
  8e6a32:	cmp    DWORD PTR [eax+0x60],0x0
  8e6a36:	jne    8e6a40
  8e6a38:	mov    DWORD PTR [esp],eax
  8e6a3b:	call   1db0b8
  8e6a40:	mov    DWORD PTR [esp+0x4],0x0
  8e6a48:	mov    DWORD PTR [esp],0x0
  8e6a4f:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  8e6a54:	test   esi,esi
  8e6a56:	je     8e7282
  8e6a5c:	mov    DWORD PTR [esp+0x4],eax
  8e6a60:	mov    DWORD PTR [esp],esi
  8e6a63:	mov    DWORD PTR [esp+0xc],0x0
  8e6a6b:	mov    DWORD PTR [esp+0x8],0x2
  8e6a73:	call   ab35a4  ; ABH.Services.Logic.WorldMapService::HandleGoldenPigFinishState
  8e6a78:	mov    DWORD PTR [esp+0x4],0x0
  8e6a80:	mov    DWORD PTR [esp],0x0
  8e6a87:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  8e6a8c:	test   eax,eax
  8e6a8e:	jne    8e6ccb
  8e6a94:	jmp    8e7282
  8e6a99:	mov    eax,DWORD PTR [edi+0x2c]
  8e6a9c:	test   eax,eax
  8e6a9e:	je     8e727e
  8e6aa4:	mov    esi,DWORD PTR [eax+0x18]
  8e6aa7:	test   esi,esi
  8e6aa9:	je     8e727e
  8e6aaf:	mov    eax,DWORD PTR [esp+0x38]
  8e6ab3:	mov    eax,DWORD PTR [eax]
  8e6ab5:	mov    ebx,DWORD PTR [esi]
  8e6ab7:	movzx  edx,WORD PTR [ebx+0xaa]
  8e6abe:	test   edx,edx
  8e6ac0:	je     8e6ad1
  8e6ac2:	mov    edi,DWORD PTR [ebx+0x4c]
  8e6ac5:	xor    ecx,ecx
  8e6ac7:	cmp    DWORD PTR [edi+ecx*8],eax
  8e6aca:	je     8e6aed
  8e6acc:	inc    ecx
  8e6acd:	cmp    ecx,edx
  8e6acf:	jb     8e6ac7
  8e6ad1:	mov    DWORD PTR [esp+0x4],eax
  8e6ad5:	mov    DWORD PTR [esp],esi
  8e6ad8:	mov    DWORD PTR [esp+0x8],0xa
  8e6ae0:	mov    ebx,DWORD PTR [esp+0x48]
  8e6ae4:	call   1c1964
  8e6ae9:	mov    ecx,eax
  8e6aeb:	jmp    8e6afc
  8e6aed:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8e6af1:	lea    ecx,[ebx+eax*8+0x104]
  8e6af8:	mov    ebx,DWORD PTR [esp+0x48]
  8e6afc:	mov    eax,DWORD PTR [ecx+0x4]
  8e6aff:	mov    DWORD PTR [esp+0x4],eax
  8e6b03:	mov    DWORD PTR [esp],esi
  8e6b06:	call   DWORD PTR [ecx]
  8e6b08:	mov    esi,eax
  8e6b0a:	mov    eax,DWORD PTR [esp+0x44]
  8e6b0e:	mov    eax,DWORD PTR [eax]
  8e6b10:	test   BYTE PTR [eax+0xb2],0x1
  8e6b17:	mov    edi,DWORD PTR [ebp+0x8]
  8e6b1a:	je     8e6b2a
  8e6b1c:	cmp    DWORD PTR [eax+0x60],0x0
  8e6b20:	jne    8e6b2a
  8e6b22:	mov    DWORD PTR [esp],eax
  8e6b25:	call   1db0b8
  8e6b2a:	lea    eax,[ebx+0x595a8]  ; literal "pig_golden_pig_boss"
  8e6b30:	mov    eax,DWORD PTR [eax]
  8e6b32:	mov    DWORD PTR [esp+0x8],eax
  8e6b36:	mov    DWORD PTR [esp+0x4],esi
  8e6b3a:	mov    DWORD PTR [esp+0xc],0x0
  8e6b42:	mov    DWORD PTR [esp],0x0
  8e6b49:	call   ca24cf  ; System.String::op_Equality
  8e6b4e:	test   al,al
  8e6b50:	je     8e6cdb
  8e6b56:	lea    eax,[ebx+0x4584c]
  8e6b5c:	mov    eax,DWORD PTR [eax]
  8e6b5e:	test   BYTE PTR [eax+0xb2],0x1
  8e6b65:	je     8e6b75
  8e6b67:	cmp    DWORD PTR [eax+0x60],0x0
  8e6b6b:	jne    8e6b75
  8e6b6d:	mov    DWORD PTR [esp],eax
  8e6b70:	call   1db0b8
  8e6b75:	mov    DWORD PTR [esp+0x4],0x0
  8e6b7d:	mov    DWORD PTR [esp],0x0
  8e6b84:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  8e6b89:	test   eax,eax
  8e6b8b:	je     8e7282
  8e6b91:	mov    DWORD PTR [esp],eax
  8e6b94:	mov    DWORD PTR [esp+0x4],0x0
  8e6b9c:	call   6ddcf2  ; ABH.GameDatas.PlayerGameData::get_CurrentEventManagerGameData
  8e6ba1:	test   eax,eax
  8e6ba3:	je     8e7282
  8e6ba9:	mov    DWORD PTR [esp],eax
  8e6bac:	mov    DWORD PTR [esp+0x4],0x0
  8e6bb4:	call   6dc9cc  ; ABH.GameDatas.EventManagerGameData::get_CurrentMiniCampaign
  8e6bb9:	test   eax,eax
  8e6bbb:	je     8e7282
  8e6bc1:	mov    DWORD PTR [esp],eax
  8e6bc4:	mov    DWORD PTR [esp+0x4],0x0
  8e6bcc:	call   6d83ad  ; ABH.GameDatas.EventCampaignGameData::get_CurrentHotspotGameData
  8e6bd1:	test   eax,eax
  8e6bd3:	je     8e7282
  8e6bd9:	lea    ecx,[ebx+0x4a8ac]
  8e6bdf:	mov    ecx,DWORD PTR [ecx]
  8e6be1:	mov    DWORD PTR [esp+0x4],ecx
  8e6be5:	mov    DWORD PTR [esp],eax
  8e6be8:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  8e6bed:	mov    DWORD PTR [esp+0x44],eax
  8e6bf1:	mov    DWORD PTR [esp+0x4],0x0
  8e6bf9:	mov    DWORD PTR [esp],0x0
  8e6c00:	call   1066c60  ; DIContainerLogic::GetTimingService
  8e6c05:	mov    edi,eax
  8e6c07:	test   edi,edi
  8e6c09:	je     8e7282
  8e6c0f:	lea    eax,[ebx+0x458cc]
  8e6c15:	mov    eax,DWORD PTR [eax]
  8e6c17:	mov    ebx,DWORD PTR [edi]
  8e6c19:	movzx  edx,WORD PTR [ebx+0xaa]
  8e6c20:	test   edx,edx
  8e6c22:	je     8e6c33
  8e6c24:	mov    esi,DWORD PTR [ebx+0x4c]
  8e6c27:	xor    ecx,ecx
  8e6c29:	cmp    DWORD PTR [esi+ecx*8],eax
  8e6c2c:	je     8e6c4d
  8e6c2e:	inc    ecx
  8e6c2f:	cmp    ecx,edx
  8e6c31:	jb     8e6c29
  8e6c33:	mov    DWORD PTR [esp+0x4],eax
  8e6c37:	mov    DWORD PTR [esp],edi
  8e6c3a:	mov    DWORD PTR [esp+0x8],0x2
  8e6c42:	mov    ebx,DWORD PTR [esp+0x48]
  8e6c46:	call   1c1964
  8e6c4b:	jmp    8e6c5c
  8e6c4d:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  8e6c51:	lea    eax,[ebx+eax*8+0xc4]
  8e6c58:	mov    ebx,DWORD PTR [esp+0x48]
  8e6c5c:	mov    ecx,DWORD PTR [eax+0x4]
  8e6c5f:	mov    DWORD PTR [esp+0x8],ecx
  8e6c63:	mov    DWORD PTR [esp+0x4],edi
  8e6c67:	lea    ecx,[esp+0xa8]
  8e6c6e:	mov    DWORD PTR [esp],ecx
  8e6c71:	call   DWORD PTR [eax]
  8e6c73:	sub    esp,0x4
  8e6c76:	mov    ecx,DWORD PTR [esp+0x44]
  8e6c7a:	test   ecx,ecx
  8e6c7c:	je     8e7282
  8e6c82:	mov    eax,DWORD PTR [esp+0xb0]
  8e6c89:	mov    DWORD PTR [esp+0xc],eax
  8e6c8d:	movsd  xmm0,QWORD PTR [esp+0xa8]
  8e6c96:	movsd  QWORD PTR [esp+0x4],xmm0
  8e6c9c:	mov    DWORD PTR [esp],ecx
  8e6c9f:	mov    DWORD PTR [esp+0x10],0x0
  8e6ca7:	call   179b7ab  ; ABH.Shared.Models.HotspotData::set_LastVisitDateTime
  8e6cac:	mov    DWORD PTR [esp+0x4],0x0
  8e6cb4:	mov    DWORD PTR [esp],0x0
  8e6cbb:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  8e6cc0:	test   eax,eax
  8e6cc2:	mov    edi,DWORD PTR [ebp+0x8]
  8e6cc5:	je     8e7282
  8e6ccb:	mov    DWORD PTR [esp],eax
  8e6cce:	mov    DWORD PTR [esp+0x4],0x0
  8e6cd6:	call   6cb120  ; ABH.GameDatas.PlayerGameData::SavePlayerData
  8e6cdb:	mov    eax,DWORD PTR [edi+0x14]
  8e6cde:	test   eax,eax
  8e6ce0:	je     8e7282
  8e6ce6:	xor    esi,esi
  8e6ce8:	lea    ecx,[ebx+0x4a868]
  8e6cee:	mov    DWORD PTR [esp+0x3c],ecx
  8e6cf2:	xor    edi,edi
  8e6cf4:	mov    ecx,DWORD PTR [esp+0x3c]
  8e6cf8:	mov    ecx,DWORD PTR [ecx]
  8e6cfa:	mov    DWORD PTR [esp+0x4],ecx
  8e6cfe:	mov    DWORD PTR [esp],eax
  8e6d01:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  8e6d06:	cmp    edi,eax
  8e6d08:	jge    8e6e4f
  8e6d0e:	mov    DWORD PTR [esp+0x44],esi
  8e6d12:	mov    eax,DWORD PTR [ebp+0x8]
  8e6d15:	mov    eax,DWORD PTR [eax+0x14]
  8e6d18:	test   eax,eax
  8e6d1a:	je     8e7282
  8e6d20:	lea    ecx,[ebx+0x4a860]
  8e6d26:	mov    ecx,DWORD PTR [ecx]
  8e6d28:	mov    DWORD PTR [esp+0x8],ecx
  8e6d2c:	mov    DWORD PTR [esp+0x4],edi
  8e6d30:	mov    DWORD PTR [esp+0x40],edi
  8e6d34:	mov    DWORD PTR [esp],eax
  8e6d37:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  8e6d3c:	mov    esi,eax
  8e6d3e:	test   esi,esi
  8e6d40:	je     8e7282
  8e6d46:	lea    eax,[ebx+0x45854]
  8e6d4c:	mov    DWORD PTR [esp+0x48],ebx
  8e6d50:	mov    eax,DWORD PTR [eax]
  8e6d52:	mov    ebx,DWORD PTR [esi]
  8e6d54:	movzx  edx,WORD PTR [ebx+0xaa]
  8e6d5b:	test   edx,edx
  8e6d5d:	je     8e6d6e
  8e6d5f:	mov    edi,DWORD PTR [ebx+0x4c]
  8e6d62:	xor    ecx,ecx
  8e6d64:	cmp    DWORD PTR [edi+ecx*8],eax
  8e6d67:	je     8e6d8a
  8e6d69:	inc    ecx
  8e6d6a:	cmp    ecx,edx
  8e6d6c:	jb     8e6d64
  8e6d6e:	mov    DWORD PTR [esp+0x4],eax
  8e6d72:	mov    DWORD PTR [esp],esi
  8e6d75:	mov    DWORD PTR [esp+0x8],0x1
  8e6d7d:	mov    ebx,DWORD PTR [esp+0x48]
  8e6d81:	call   1c1964
  8e6d86:	mov    ecx,eax
  8e6d88:	jmp    8e6d99
  8e6d8a:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8e6d8e:	lea    ecx,[ebx+eax*8+0xbc]
  8e6d95:	mov    ebx,DWORD PTR [esp+0x48]
  8e6d99:	mov    eax,DWORD PTR [ecx+0x4]
  8e6d9c:	mov    DWORD PTR [esp+0x4],eax
  8e6da0:	mov    DWORD PTR [esp],esi
  8e6da3:	call   DWORD PTR [ecx]
  8e6da5:	mov    esi,eax
  8e6da7:	test   esi,esi
  8e6da9:	je     8e7282
  8e6daf:	lea    eax,[ebx+0x461e0]
  8e6db5:	mov    eax,DWORD PTR [eax]
  8e6db7:	mov    ecx,DWORD PTR [esi]
  8e6db9:	movzx  edx,WORD PTR [ecx+0xaa]
  8e6dc0:	test   edx,edx
  8e6dc2:	je     8e6dd3
  8e6dc4:	mov    edi,DWORD PTR [ecx+0x4c]
  8e6dc7:	xor    ebx,ebx
  8e6dc9:	cmp    DWORD PTR [edi+ebx*8],eax
  8e6dcc:	je     8e6def
  8e6dce:	inc    ebx
  8e6dcf:	cmp    ebx,edx
  8e6dd1:	jb     8e6dc9
  8e6dd3:	mov    DWORD PTR [esp+0x4],eax
  8e6dd7:	mov    DWORD PTR [esp],esi
  8e6dda:	mov    DWORD PTR [esp+0x8],0x0
  8e6de2:	mov    ebx,DWORD PTR [esp+0x48]
  8e6de6:	call   1c1964
  8e6deb:	mov    ecx,eax
  8e6ded:	jmp    8e6dfe
  8e6def:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8e6df3:	lea    ecx,[ecx+eax*8+0xb4]
  8e6dfa:	mov    ebx,DWORD PTR [esp+0x48]
  8e6dfe:	mov    eax,DWORD PTR [ecx+0x4]
  8e6e01:	mov    DWORD PTR [esp+0x4],eax
  8e6e05:	mov    DWORD PTR [esp],esi
  8e6e08:	call   DWORD PTR [ecx]
  8e6e0a:	test   eax,eax
  8e6e0c:	je     8e7282
  8e6e12:	lea    ecx,[ebx+0x57310]  ; literal "experience"
  8e6e18:	mov    ecx,DWORD PTR [ecx]
  8e6e1a:	mov    DWORD PTR [esp+0x4],ecx
  8e6e1e:	mov    DWORD PTR [esp],eax
  8e6e21:	mov    DWORD PTR [esp+0x8],0x0
  8e6e29:	call   cba87a  ; System.String::Equals
  8e6e2e:	movzx  eax,al
  8e6e31:	mov    esi,DWORD PTR [esp+0x44]
  8e6e35:	add    esi,eax
  8e6e37:	mov    edi,DWORD PTR [esp+0x40]
  8e6e3b:	inc    edi
  8e6e3c:	mov    eax,DWORD PTR [ebp+0x8]
  8e6e3f:	mov    eax,DWORD PTR [eax+0x14]
  8e6e42:	test   eax,eax
  8e6e44:	jne    8e6cf4
  8e6e4a:	jmp    8e7282
  8e6e4f:	mov    eax,DWORD PTR [ebp+0x8]
  8e6e52:	mov    eax,DWORD PTR [eax+0x2c]
  8e6e55:	test   eax,eax
  8e6e57:	je     8e7282
  8e6e5d:	mov    eax,DWORD PTR [eax+0x14]
  8e6e60:	test   eax,eax
  8e6e62:	je     8e7282
  8e6e68:	mov    DWORD PTR [esp],eax
  8e6e6b:	mov    DWORD PTR [esp+0x4],0x0
  8e6e73:	call   9f18af  ; BattleMgrBase::get_Model
  8e6e78:	test   eax,eax
  8e6e7a:	je     8e7282
  8e6e80:	mov    DWORD PTR [esp+0x44],esi
  8e6e84:	mov    eax,DWORD PTR [eax+0x68]
  8e6e87:	test   eax,eax
  8e6e89:	je     8e7282
  8e6e8f:	lea    ecx,[ebx+0x4a04c]
  8e6e95:	mov    ecx,DWORD PTR [ecx]
  8e6e97:	mov    DWORD PTR [esp+0x8],ecx
  8e6e9b:	mov    DWORD PTR [esp],eax
  8e6e9e:	mov    DWORD PTR [esp+0x4],0x0
  8e6ea6:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  8e6eab:	lea    edi,[ebx+0x46ba0]
  8e6eb1:	mov    ecx,DWORD PTR [edi]
  8e6eb3:	mov    ecx,DWORD PTR [ecx+0x50]
  8e6eb6:	cmp    DWORD PTR [ecx+0x8],0x0
  8e6eba:	jne    8e6f21
  8e6ebc:	lea    ecx,[ebx+0x4cc8c]
  8e6ec2:	mov    ecx,DWORD PTR [ecx]
  8e6ec4:	mov    DWORD PTR [esp+0x3c],ecx
  8e6ec8:	lea    ecx,[ebx+0x4588c]
  8e6ece:	mov    ecx,DWORD PTR [ecx]
  8e6ed0:	mov    DWORD PTR [esp],ecx
  8e6ed3:	mov    DWORD PTR [esp+0x40],eax
  8e6ed7:	call   20bfb2
  8e6edc:	mov    esi,eax
  8e6ede:	mov    eax,DWORD PTR [esp+0x3c]
  8e6ee2:	mov    DWORD PTR [esp+0xa0],eax
  8e6ee9:	lea    eax,[ebx+0x4a054]
  8e6eef:	mov    eax,DWORD PTR [eax]
  8e6ef1:	mov    DWORD PTR [esp+0xc],eax
  8e6ef5:	mov    eax,DWORD PTR [esp+0xa0]
  8e6efc:	mov    DWORD PTR [esp+0x8],eax
  8e6f00:	mov    DWORD PTR [esp],esi
  8e6f03:	mov    DWORD PTR [esp+0x4],0x0
  8e6f0b:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  8e6f10:	mov    eax,DWORD PTR [esp+0x40]
  8e6f14:	mov    ecx,DWORD PTR [edi]
  8e6f16:	mov    ecx,DWORD PTR [ecx+0x50]
  8e6f19:	mov    DWORD PTR [ecx+0x8],esi
  8e6f1c:	mov    ecx,DWORD PTR [edi]
  8e6f1e:	mov    ecx,DWORD PTR [ecx+0x50]
  8e6f21:	mov    edx,DWORD PTR [ecx+0x8]
  8e6f24:	lea    ecx,[ebx+0x4a058]
  8e6f2a:	mov    ecx,DWORD PTR [ecx]
  8e6f2c:	mov    DWORD PTR [esp+0xc],ecx
  8e6f30:	mov    DWORD PTR [esp+0x8],edx
  8e6f34:	mov    DWORD PTR [esp+0x4],eax
  8e6f38:	mov    DWORD PTR [esp],0x0
  8e6f3f:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  8e6f44:	mov    ecx,DWORD PTR [edi]
  8e6f46:	mov    ecx,DWORD PTR [ecx+0x50]
  8e6f49:	cmp    DWORD PTR [ecx+0xc],0x0
  8e6f4d:	jne    8e6fb4
  8e6f4f:	lea    ecx,[ebx+0x4cc90]
  8e6f55:	mov    ecx,DWORD PTR [ecx]
  8e6f57:	mov    DWORD PTR [esp+0x3c],ecx
  8e6f5b:	lea    ecx,[ebx+0x46bdc]
  8e6f61:	mov    ecx,DWORD PTR [ecx]
  8e6f63:	mov    DWORD PTR [esp],ecx
  8e6f66:	mov    DWORD PTR [esp+0x40],eax
  8e6f6a:	call   20bfb2
  8e6f6f:	mov    esi,eax
  8e6f71:	mov    eax,DWORD PTR [esp+0x3c]
  8e6f75:	mov    DWORD PTR [esp+0x98],eax
  8e6f7c:	lea    eax,[ebx+0x4cc94]
  8e6f82:	mov    eax,DWORD PTR [eax]
  8e6f84:	mov    DWORD PTR [esp+0xc],eax
  8e6f88:	mov    eax,DWORD PTR [esp+0x98]
  8e6f8f:	mov    DWORD PTR [esp+0x8],eax
  8e6f93:	mov    DWORD PTR [esp],esi
  8e6f96:	mov    DWORD PTR [esp+0x4],0x0
  8e6f9e:	call   17d7526  ; shared address: System.Func`2<object, object>::.ctor | System.Func`2<System.Type, Newtonsoft.Json.Serialization.JsonContract>::.ctor | System.Func`2<string, string>::.ctor | +22 other aliases
  8e6fa3:	mov    eax,DWORD PTR [esp+0x40]
  8e6fa7:	mov    ecx,DWORD PTR [edi]
  8e6fa9:	mov    ecx,DWORD PTR [ecx+0x50]
  8e6fac:	mov    DWORD PTR [ecx+0xc],esi
  8e6faf:	mov    ecx,DWORD PTR [edi]
  8e6fb1:	mov    ecx,DWORD PTR [ecx+0x50]
  8e6fb4:	mov    edx,DWORD PTR [ecx+0xc]
  8e6fb7:	lea    ecx,[ebx+0x4cc98]
  8e6fbd:	mov    ecx,DWORD PTR [ecx]
  8e6fbf:	mov    DWORD PTR [esp+0xc],ecx
  8e6fc3:	mov    DWORD PTR [esp+0x8],edx
  8e6fc7:	mov    DWORD PTR [esp+0x4],eax
  8e6fcb:	mov    DWORD PTR [esp],0x0
  8e6fd2:	call   9bf855  ; shared address: System.Linq.Enumerable::Select | System.Linq.Enumerable::Select | System.Linq.Enumerable::Select | +13 other aliases
  8e6fd7:	lea    ecx,[ebx+0x4b668]
  8e6fdd:	mov    ecx,DWORD PTR [ecx]
  8e6fdf:	mov    DWORD PTR [esp+0x8],ecx
  8e6fe3:	mov    DWORD PTR [esp+0x4],eax
  8e6fe7:	mov    DWORD PTR [esp],0x0
  8e6fee:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  8e6ff3:	mov    DWORD PTR [esp+0x40],eax
  8e6ff7:	mov    DWORD PTR [esp+0x4],0x0
  8e6fff:	mov    DWORD PTR [esp],0x0
  8e7006:	call   106b137  ; DIContainerLogic::get_InventoryService
  8e700b:	mov    esi,eax
  8e700d:	mov    edi,DWORD PTR [ebp+0x8]
  8e7010:	mov    eax,DWORD PTR [edi+0x2c]
  8e7013:	test   eax,eax
  8e7015:	je     8e7282
  8e701b:	mov    eax,DWORD PTR [eax+0x14]
  8e701e:	test   eax,eax
  8e7020:	je     8e7282
  8e7026:	mov    DWORD PTR [esp],eax
  8e7029:	mov    DWORD PTR [esp+0x4],0x0
  8e7031:	call   9f18af  ; BattleMgrBase::get_Model
  8e7036:	test   eax,eax
  8e7038:	je     8e7282
  8e703e:	test   esi,esi
  8e7040:	je     8e7282
  8e7046:	mov    eax,DWORD PTR [eax+0x78]
  8e7049:	mov    ecx,DWORD PTR [esp+0x44]
  8e704d:	mov    DWORD PTR [esp+0xc],ecx
  8e7051:	mov    ecx,DWORD PTR [esp+0x40]
  8e7055:	mov    DWORD PTR [esp+0x8],ecx
  8e7059:	mov    DWORD PTR [esp+0x4],eax
  8e705d:	mov    DWORD PTR [esp],esi
  8e7060:	mov    DWORD PTR [esp+0x10],0x0
  8e7068:	call   5685ee  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMastery
  8e706d:	mov    eax,DWORD PTR [edi+0x2c]
  8e7070:	test   eax,eax
  8e7072:	je     8e7282
  8e7078:	mov    eax,DWORD PTR [eax+0x68]
  8e707b:	test   eax,eax
  8e707d:	je     8e7282
  8e7083:	mov    DWORD PTR [esp],eax
  8e7086:	mov    DWORD PTR [esp+0x4],0x0
  8e708e:	call   e4e421  ; AssetControllerWithBoneAnimationBase::get_HasNoBoneAnimation
  8e7093:	test   al,al
  8e7095:	jne    8e70d0
  8e7097:	mov    eax,DWORD PTR [edi+0x2c]
  8e709a:	test   eax,eax
  8e709c:	je     8e7282
  8e70a2:	mov    eax,DWORD PTR [eax+0x68]
  8e70a5:	test   eax,eax
  8e70a7:	je     8e7282
  8e70ad:	mov    eax,DWORD PTR [eax+0xc]
  8e70b0:	test   eax,eax
  8e70b2:	je     8e7282
  8e70b8:	mov    DWORD PTR [esp],eax
  8e70bb:	mov    DWORD PTR [esp+0x8],0x0
  8e70c3:	mov    DWORD PTR [esp+0x4],0x0
  8e70cb:	call   1475875  ; SmoothMoves.BoneAnimation::set_playAutomatically
  8e70d0:	mov    DWORD PTR [esp+0x48],ebx
  8e70d4:	mov    eax,DWORD PTR [edi+0x2c]
  8e70d7:	test   eax,eax
  8e70d9:	je     8e727e
  8e70df:	mov    esi,DWORD PTR [eax+0x18]
  8e70e2:	test   esi,esi
  8e70e4:	je     8e727e
  8e70ea:	mov    eax,DWORD PTR [esp+0x38]
  8e70ee:	mov    eax,DWORD PTR [eax]
  8e70f0:	mov    ecx,DWORD PTR [esi]
  8e70f2:	movzx  edx,WORD PTR [ecx+0xaa]
  8e70f9:	test   edx,edx
  8e70fb:	je     8e710c
  8e70fd:	mov    edi,DWORD PTR [ecx+0x4c]
  8e7100:	xor    ebx,ebx
  8e7102:	cmp    DWORD PTR [edi+ebx*8],eax
  8e7105:	je     8e7128
  8e7107:	inc    ebx
  8e7108:	cmp    ebx,edx
  8e710a:	jb     8e7102
  8e710c:	mov    DWORD PTR [esp+0x4],eax
  8e7110:	mov    DWORD PTR [esp],esi
  8e7113:	mov    DWORD PTR [esp+0x8],0x58
  8e711b:	mov    ebx,DWORD PTR [esp+0x48]
  8e711f:	call   1c1964
  8e7124:	mov    ecx,eax
  8e7126:	jmp    8e7137
  8e7128:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  8e712c:	lea    ecx,[ecx+eax*8+0x374]
  8e7133:	mov    ebx,DWORD PTR [esp+0x48]
  8e7137:	mov    eax,DWORD PTR [ecx+0x4]
  8e713a:	mov    DWORD PTR [esp+0x4],eax
  8e713e:	mov    DWORD PTR [esp],esi
  8e7141:	call   DWORD PTR [ecx]
  8e7143:	test   al,al
  8e7145:	mov    edi,DWORD PTR [ebp+0x8]
  8e7148:	je     8e7187
  8e714a:	lea    eax,[ebx+0x45894]
  8e7150:	mov    eax,DWORD PTR [eax]
  8e7152:	mov    DWORD PTR [esp],eax
  8e7155:	call   20bfb2
  8e715a:	mov    esi,eax
  8e715c:	mov    DWORD PTR [esp],esi
  8e715f:	mov    DWORD PTR [esp+0x4],0x0
  8e7167:	call   177a908  ; UnityEngine.WaitForEndOfFrame::.ctor
  8e716c:	mov    DWORD PTR [edi+0x30],esi
  8e716f:	mov    al,0x1
  8e7171:	cmp    BYTE PTR [edi+0x34],0x0
  8e7175:	jne    8e601c
  8e717b:	mov    DWORD PTR [edi+0x38],0x3
  8e7182:	jmp    8e601c
  8e7187:	mov    eax,DWORD PTR [edi+0x2c]
  8e718a:	test   eax,eax
  8e718c:	je     8e7282
  8e7192:	mov    ecx,DWORD PTR [eax+0x18]
  8e7195:	mov    BYTE PTR [esp+0x44],0x1
  8e719a:	test   ecx,ecx
  8e719c:	je     8e71d5
  8e719e:	lea    edx,[ebx+0x45a30]
  8e71a4:	mov    DWORD PTR [esp+0x48],ebx
  8e71a8:	mov    edx,DWORD PTR [edx]
  8e71aa:	mov    edi,DWORD PTR [ecx]
  8e71ac:	movzx  esi,BYTE PTR [edx+0xac]
  8e71b3:	movzx  ebx,BYTE PTR [edi+0xac]
  8e71ba:	cmp    ebx,esi
  8e71bc:	jb     8e71d9
  8e71be:	mov    edi,DWORD PTR [edi+0x58]
  8e71c1:	test   ecx,ecx
  8e71c3:	sete   cl
  8e71c6:	cmp    DWORD PTR [edi+esi*4-0x4],edx
  8e71ca:	setne  dl
  8e71cd:	or     dl,cl
  8e71cf:	mov    BYTE PTR [esp+0x44],dl
  8e71d3:	jmp    8e71d9
  8e71d5:	mov    DWORD PTR [esp+0x48],ebx
  8e71d9:	mov    DWORD PTR [esp],eax
  8e71dc:	mov    ebx,DWORD PTR [esp+0x48]
  8e71e0:	call   8de69b  ; CharacterControllerBattleGroundBase::PlayDefeatCharacter
  8e71e5:	fstp   DWORD PTR [esp+0x4c]
  8e71e9:	movss  xmm0,DWORD PTR [esp+0x4c]
  8e71ef:	movss  DWORD PTR [esp+0x40],xmm0
  8e71f5:	lea    eax,[ebx+0x45664]
  8e71fb:	mov    eax,DWORD PTR [eax]
  8e71fd:	mov    DWORD PTR [esp],eax
  8e7200:	call   20bfb2
  8e7205:	mov    esi,eax
  8e7207:	cmp    BYTE PTR [esp+0x44],0x0
  8e720c:	je     8e7248
  8e720e:	movss  xmm0,DWORD PTR [esp+0x40]
  8e7214:	movss  DWORD PTR [esp+0x4],xmm0
  8e721a:	mov    DWORD PTR [esp],esi
  8e721d:	mov    DWORD PTR [esp+0x8],0x0
  8e7225:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  8e722a:	mov    ecx,DWORD PTR [ebp+0x8]
  8e722d:	mov    DWORD PTR [ecx+0x30],esi
  8e7230:	mov    al,0x1
  8e7232:	cmp    BYTE PTR [ecx+0x34],0x0
  8e7236:	jne    8e601c
  8e723c:	mov    DWORD PTR [ecx+0x38],0x2
  8e7243:	jmp    8e601c
  8e7248:	mov    DWORD PTR [esp],esi
  8e724b:	mov    DWORD PTR [esp+0x8],0x0
  8e7253:	mov    DWORD PTR [esp+0x4],0x3fc00000
  8e725b:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  8e7260:	mov    ecx,DWORD PTR [ebp+0x8]
  8e7263:	mov    DWORD PTR [ecx+0x30],esi
  8e7266:	mov    al,0x1
  8e7268:	cmp    BYTE PTR [ecx+0x34],0x0
  8e726c:	jne    8e601c
  8e7272:	mov    DWORD PTR [ecx+0x38],0x1
  8e7279:	jmp    8e601c
  8e727e:	mov    ebx,DWORD PTR [esp+0x48]
  8e7282:	call   1fbc48
  8e7287:	call   8b3f00
  8e728c:	mov    ebx,esi
  8e728e:	jmp    8e7282
  8e7290:	mov    DWORD PTR [esp],eax
  8e7293:	call   1b9bd0
  8e7298:	call   8b3f00