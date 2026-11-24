
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01475f80:
 1475f80:	push   ebp
 1475f81:	mov    ebp,esp
 1475f83:	push   ebx
 1475f84:	push   edi
 1475f85:	push   esi
 1475f86:	and    esp,0xfffffff0
 1475f89:	sub    esp,0x30
 1475f8c:	call   1475f91
 1475f91:	pop    ebx
 1475f92:	add    ebx,0xa9bfb3
 1475f98:	mov    edi,DWORD PTR [ebp+0x8]
 1475f9b:	mov    al,BYTE PTR [ebx+0x65875]
 1475fa1:	test   al,al
 1475fa3:	jne    1475fbc
 1475fa5:	lea    eax,[ebx-0x66e8e8]
 1475fab:	mov    eax,DWORD PTR [eax]
 1475fad:	mov    DWORD PTR [esp],eax
 1475fb0:	call   1ca6e8
 1475fb5:	mov    BYTE PTR [ebx+0x65875],0x1
 1475fbc:	mov    DWORD PTR [esp],edi
 1475fbf:	mov    DWORD PTR [esp+0x4],0x0
 1475fc7:	call   150157d  ; UnityEngine.Component::get_transform
 1475fcc:	mov    DWORD PTR [edi+0x148],eax
 1475fd2:	mov    eax,DWORD PTR [edi+0x108]
 1475fd8:	test   eax,eax
 1475fda:	je     1476780
 1475fe0:	lea    ecx,[ebx+0x43140]
 1475fe6:	mov    esi,DWORD PTR [ecx]
 1475fe8:	mov    eax,DWORD PTR [eax+0xc]
 1475feb:	mov    DWORD PTR [esp+0x28],eax
 1475fef:	mov    DWORD PTR [esp],esi
 1475ff2:	call   1bedda
 1475ff7:	mov    eax,DWORD PTR [esp+0x28]
 1475ffb:	mov    DWORD PTR [esp+0x4],eax
 1475fff:	mov    DWORD PTR [esp],esi
 1476002:	call   21106a
 1476007:	mov    DWORD PTR [edi+0x18],eax
 147600a:	mov    eax,DWORD PTR [edi+0x108]
 1476010:	test   eax,eax
 1476012:	je     1476780
 1476018:	lea    ecx,[ebx+0x43378]
 147601e:	mov    esi,DWORD PTR [ecx]
 1476020:	mov    eax,DWORD PTR [eax+0xc]
 1476023:	mov    DWORD PTR [esp+0x28],eax
 1476027:	mov    DWORD PTR [esp],esi
 147602a:	call   1bedda
 147602f:	mov    eax,DWORD PTR [esp+0x28]
 1476033:	mov    DWORD PTR [esp+0x4],eax
 1476037:	mov    DWORD PTR [esp],esi
 147603a:	call   21106a
 147603f:	mov    DWORD PTR [edi+0x2c],eax
 1476042:	mov    eax,DWORD PTR [edi+0x108]
 1476048:	test   eax,eax
 147604a:	je     1476780
 1476050:	lea    ecx,[ebx+0x4572c]
 1476056:	mov    esi,DWORD PTR [ecx]
 1476058:	mov    eax,DWORD PTR [eax+0xc]
 147605b:	mov    DWORD PTR [esp+0x28],eax
 147605f:	mov    DWORD PTR [esp],esi
 1476062:	call   1bedda
 1476067:	mov    eax,DWORD PTR [esp+0x28]
 147606b:	mov    DWORD PTR [esp+0x4],eax
 147606f:	mov    DWORD PTR [esp],esi
 1476072:	call   21106a
 1476077:	mov    DWORD PTR [edi+0x20],eax
 147607a:	lea    eax,[ebx+0x45730]
 1476080:	mov    eax,DWORD PTR [eax]
 1476082:	mov    DWORD PTR [esp],eax
 1476085:	call   20bfb2
 147608a:	mov    esi,eax
 147608c:	lea    eax,[ebx+0x49d74]
 1476092:	mov    eax,DWORD PTR [eax]
 1476094:	mov    DWORD PTR [esp+0x4],eax
 1476098:	mov    DWORD PTR [esp],esi
 147609b:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 14760a0:	mov    DWORD PTR [edi+0x54],esi
 14760a3:	lea    eax,[ebx+0x45718]
 14760a9:	mov    eax,DWORD PTR [eax]
 14760ab:	mov    DWORD PTR [esp],eax
 14760ae:	call   20bfb2
 14760b3:	mov    esi,eax
 14760b5:	lea    eax,[ebx+0x49d64]
 14760bb:	mov    eax,DWORD PTR [eax]
 14760bd:	mov    DWORD PTR [esp+0x4],eax
 14760c1:	mov    DWORD PTR [esp],esi
 14760c4:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 14760c9:	mov    DWORD PTR [edi+0x6c],esi
 14760cc:	mov    esi,DWORD PTR [edi+0x108]
 14760d2:	test   esi,esi
 14760d4:	je     1476780
 14760da:	xor    ecx,ecx
 14760dc:	mov    eax,DWORD PTR [esi+0xc]
 14760df:	cmp    ecx,eax
 14760e1:	jge    147629d
 14760e7:	cmp    eax,ecx
 14760e9:	ja     1476100
 14760eb:	mov    DWORD PTR [esp+0x28],ecx
 14760ef:	call   1fc7e4
 14760f4:	mov    DWORD PTR [esp],eax
 14760f7:	call   1fbb20
 14760fc:	mov    ecx,DWORD PTR [esp+0x28]
 1476100:	mov    eax,DWORD PTR [esi+ecx*4+0x10]
 1476104:	mov    esi,ecx
 1476106:	test   eax,eax
 1476108:	je     1476780
 147610e:	mov    DWORD PTR [esp+0x4],edi
 1476112:	mov    DWORD PTR [esp],eax
 1476115:	call   146b098  ; SmoothMoves.AnimationBone::Awake
 147611a:	mov    eax,edi
 147611c:	mov    edi,DWORD PTR [eax+0x108]
 1476122:	test   edi,edi
 1476124:	je     1476780
 147612a:	mov    ecx,DWORD PTR [eax+0x18]
 147612d:	cmp    DWORD PTR [edi+0xc],esi
 1476130:	ja     147614b
 1476132:	mov    DWORD PTR [esp+0x28],esi
 1476136:	mov    esi,ecx
 1476138:	call   1fc7e4
 147613d:	mov    DWORD PTR [esp],eax
 1476140:	call   1fbb20
 1476145:	mov    ecx,esi
 1476147:	mov    esi,DWORD PTR [esp+0x28]
 147614b:	mov    eax,DWORD PTR [edi+esi*4+0x10]
 147614f:	test   eax,eax
 1476151:	je     1476780
 1476157:	test   ecx,ecx
 1476159:	je     1476780
 147615f:	mov    edi,DWORD PTR [eax+0xc]
 1476162:	cmp    DWORD PTR [ecx+0xc],edi
 1476165:	ja     147617c
 1476167:	mov    DWORD PTR [esp+0x24],ecx
 147616b:	call   1fc7e4
 1476170:	mov    DWORD PTR [esp],eax
 1476173:	call   1fbb20
 1476178:	mov    ecx,DWORD PTR [esp+0x24]
 147617c:	mov    eax,esi
 147617e:	mov    DWORD PTR [ecx+edi*4+0x10],eax
 1476182:	mov    edi,DWORD PTR [ebp+0x8]
 1476185:	mov    esi,DWORD PTR [edi+0x2c]
 1476188:	test   esi,esi
 147618a:	je     1476780
 1476190:	cmp    DWORD PTR [esi+0xc],eax
 1476193:	ja     14761aa
 1476195:	mov    DWORD PTR [esp+0x28],eax
 1476199:	call   1fc7e4
 147619e:	mov    DWORD PTR [esp],eax
 14761a1:	call   1fbb20
 14761a6:	mov    eax,DWORD PTR [esp+0x28]
 14761aa:	mov    BYTE PTR [esi+eax*1+0x10],0x0
 14761af:	mov    esi,DWORD PTR [edi+0x20]
 14761b2:	test   esi,esi
 14761b4:	je     1476780
 14761ba:	cmp    DWORD PTR [esi+0xc],eax
 14761bd:	ja     14761d4
 14761bf:	mov    DWORD PTR [esp+0x28],eax
 14761c3:	call   1fc7e4
 14761c8:	mov    DWORD PTR [esp],eax
 14761cb:	call   1fbb20
 14761d0:	mov    eax,DWORD PTR [esp+0x28]
 14761d4:	mov    DWORD PTR [esp+0x28],eax
 14761d8:	mov    DWORD PTR [esi+eax*4+0x10],0x0
 14761e0:	mov    edi,DWORD PTR [edi+0x54]
 14761e3:	lea    eax,[ebx+0x45734]
 14761e9:	mov    eax,DWORD PTR [eax]
 14761eb:	mov    DWORD PTR [esp],eax
 14761ee:	call   20bfb2
 14761f3:	mov    esi,eax
 14761f5:	mov    DWORD PTR [esp],esi
 14761f8:	mov    DWORD PTR [esp+0x4],0x0
 1476200:	call   124632e  ; System.Object::.ctor
 1476205:	mov    DWORD PTR [esi+0x8],0x0
 147620c:	mov    DWORD PTR [esi+0xc],0xffffffff
 1476213:	mov    DWORD PTR [esi+0x10],0xffffffff
 147621a:	test   edi,edi
 147621c:	je     1476780
 1476222:	lea    eax,[ebx+0x49d78]
 1476228:	mov    eax,DWORD PTR [eax]
 147622a:	mov    DWORD PTR [esp+0x8],eax
 147622e:	mov    DWORD PTR [esp+0x4],esi
 1476232:	mov    DWORD PTR [esp],edi
 1476235:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 147623a:	mov    eax,DWORD PTR [ebp+0x8]
 147623d:	mov    edi,DWORD PTR [eax+0x6c]
 1476240:	lea    eax,[ebx+0x45738]
 1476246:	mov    eax,DWORD PTR [eax]
 1476248:	mov    DWORD PTR [esp],eax
 147624b:	call   20bfb2
 1476250:	mov    esi,eax
 1476252:	mov    DWORD PTR [esp],esi
 1476255:	mov    DWORD PTR [esp+0x4],0xffffffff
 147625d:	call   14767df  ; SmoothMoves.SubMesh::.ctor
 1476262:	test   edi,edi
 1476264:	je     1476780
 147626a:	lea    eax,[ebx+0x49d7c]
 1476270:	mov    eax,DWORD PTR [eax]
 1476272:	mov    DWORD PTR [esp+0x8],eax
 1476276:	mov    DWORD PTR [esp+0x4],esi
 147627a:	mov    DWORD PTR [esp],edi
 147627d:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 1476282:	mov    ecx,DWORD PTR [esp+0x28]
 1476286:	inc    ecx
 1476287:	mov    edi,DWORD PTR [ebp+0x8]
 147628a:	mov    esi,DWORD PTR [edi+0x108]
 1476290:	test   esi,esi
 1476292:	jne    14760dc
 1476298:	jmp    1476780
 147629d:	lea    eax,[ebx+0x4573c]
 14762a3:	mov    eax,DWORD PTR [eax]
 14762a5:	mov    DWORD PTR [esp],eax
 14762a8:	call   20bfb2
 14762ad:	mov    esi,eax
 14762af:	mov    DWORD PTR [esp],esi
 14762b2:	mov    DWORD PTR [esp+0x4],0x0
 14762ba:	call   124632e  ; System.Object::.ctor
 14762bf:	mov    DWORD PTR [edi+0x68],esi
 14762c2:	mov    DWORD PTR [esp],edi
 14762c5:	call   1476891  ; SmoothMoves.BoneAnimation::ResetOriginalMaterials
 14762ca:	lea    eax,[ebx+0x45740]
 14762d0:	mov    eax,DWORD PTR [eax]
 14762d2:	mov    DWORD PTR [esp],eax
 14762d5:	call   20bfb2
 14762da:	mov    esi,eax
 14762dc:	mov    DWORD PTR [esp],esi
 14762df:	call   14769ba  ; SmoothMoves.UserTriggerEvent::.ctor
 14762e4:	mov    DWORD PTR [edi+0xc],esi
 14762e7:	lea    eax,[ebx+0x45744]
 14762ed:	mov    eax,DWORD PTR [eax]
 14762ef:	mov    DWORD PTR [esp],eax
 14762f2:	call   20bfb2
 14762f7:	mov    esi,eax
 14762f9:	mov    DWORD PTR [esp],esi
 14762fc:	call   1476a59  ; SmoothMoves.ColliderTriggerEvent::.ctor
 1476301:	mov    DWORD PTR [edi+0x10],esi
 1476304:	lea    eax,[ebx+0x45748]
 147630a:	mov    eax,DWORD PTR [eax]
 147630c:	mov    DWORD PTR [esp],eax
 147630f:	call   20bfb2
 1476314:	mov    esi,eax
 1476316:	mov    DWORD PTR [esp],esi
 1476319:	call   1476b0a  ; SmoothMoves.CollisionEvent::.ctor
 147631e:	mov    DWORD PTR [edi+0x14],esi
 1476321:	mov    eax,DWORD PTR [edi+0x140]
 1476327:	test   eax,eax
 1476329:	je     1476780
 147632f:	lea    ecx,[ebx+0x4574c]
 1476335:	mov    esi,DWORD PTR [ecx]
 1476337:	mov    eax,DWORD PTR [eax+0xc]
 147633a:	mov    DWORD PTR [esp+0x28],eax
 147633e:	mov    DWORD PTR [esp],esi
 1476341:	call   1bedda
 1476346:	mov    eax,DWORD PTR [esp+0x28]
 147634a:	mov    DWORD PTR [esp+0x4],eax
 147634e:	mov    DWORD PTR [esp],esi
 1476351:	call   21106a
 1476356:	mov    DWORD PTR [edi+0x144],eax
 147635c:	mov    esi,DWORD PTR [edi+0x140]
 1476362:	test   esi,esi
 1476364:	je     1476780
 147636a:	xor    ecx,ecx
 147636c:	mov    eax,DWORD PTR [esi+0xc]
 147636f:	cmp    ecx,eax
 1476371:	jge    147678a
 1476377:	cmp    eax,ecx
 1476379:	ja     1476390
 147637b:	mov    DWORD PTR [esp+0x1c],ecx
 147637f:	call   1fc7e4
 1476384:	mov    DWORD PTR [esp],eax
 1476387:	call   1fbb20
 147638c:	mov    ecx,DWORD PTR [esp+0x1c]
 1476390:	mov    eax,DWORD PTR [esi+ecx*4+0x10]
 1476394:	test   eax,eax
 1476396:	je     1476780
 147639c:	mov    edi,DWORD PTR [edi+0x140]
 14763a2:	test   edi,edi
 14763a4:	je     1476780
 14763aa:	mov    esi,DWORD PTR [eax+0x8]
 14763ad:	cmp    DWORD PTR [edi+0xc],ecx
 14763b0:	ja     14763c7
 14763b2:	mov    DWORD PTR [esp+0x1c],ecx
 14763b6:	call   1fc7e4
 14763bb:	mov    DWORD PTR [esp],eax
 14763be:	call   1fbb20
 14763c3:	mov    ecx,DWORD PTR [esp+0x1c]
 14763c7:	mov    eax,DWORD PTR [ebp+0x8]
 14763ca:	mov    eax,DWORD PTR [eax+0xe8]
 14763d0:	test   eax,eax
 14763d2:	je     1476780
 14763d8:	mov    edi,DWORD PTR [edi+ecx*4+0x10]
 14763dc:	mov    DWORD PTR [esp+0x24],edi
 14763e0:	mov    DWORD PTR [esp+0x1c],ecx
 14763e4:	mov    DWORD PTR [esp+0x4],esi
 14763e8:	mov    DWORD PTR [esp+0x28],esi
 14763ec:	mov    DWORD PTR [esp],eax
 14763ef:	mov    DWORD PTR [esp+0x8],0x0
 14763f7:	call   14f70dd  ; UnityEngine.Animation::get_Item
 14763fc:	mov    esi,eax
 14763fe:	mov    DWORD PTR [esp+0x20],esi
 1476402:	mov    DWORD PTR [esp+0x4],esi
 1476406:	mov    DWORD PTR [esp+0xc],0x0
 147640e:	mov    DWORD PTR [esp+0x8],0x0
 1476416:	mov    DWORD PTR [esp],0x0
 147641d:	call   1775f7d  ; UnityEngine.TrackedReference::op_Inequality
 1476422:	test   al,al
 1476424:	je     147664a
 147642a:	test   edi,edi
 147642c:	je     1476780
 1476432:	test   esi,esi
 1476434:	je     1476780
 147643a:	movss  xmm0,DWORD PTR [edi+0xc]
 147643f:	movss  DWORD PTR [esp+0x4],xmm0
 1476445:	mov    DWORD PTR [esp],esi
 1476448:	mov    DWORD PTR [esp+0x8],0x0
 1476450:	call   14f8da6  ; UnityEngine.AnimationState::set_speed
 1476455:	mov    eax,DWORD PTR [edi+0x18]
 1476458:	mov    DWORD PTR [esp+0x4],eax
 147645c:	mov    DWORD PTR [esp],esi
 147645f:	mov    DWORD PTR [esp+0x8],0x0
 1476467:	call   14f9246  ; UnityEngine.AnimationState::set_blendMode
 147646c:	mov    eax,DWORD PTR [edi+0x1c]
 147646f:	mov    DWORD PTR [esp+0x4],eax
 1476473:	mov    DWORD PTR [esp],esi
 1476476:	mov    DWORD PTR [esp+0x8],0x0
 147647e:	call   14f8fa1  ; UnityEngine.AnimationState::set_layer
 1476483:	movss  xmm0,DWORD PTR [edi+0x20]
 1476488:	movss  DWORD PTR [esp+0x4],xmm0
 147648e:	mov    DWORD PTR [esp],esi
 1476491:	mov    DWORD PTR [esp+0x8],0x0
 1476499:	call   14f8a74  ; UnityEngine.AnimationState::set_weight
 147649e:	mov    DWORD PTR [esp+0x28],0x0
 14764a6:	jmp    14764b0
 14764a8:	inc    DWORD PTR [esp+0x28]
 14764ac:	mov    edi,DWORD PTR [esp+0x24]
 14764b0:	mov    eax,DWORD PTR [edi+0x24]
 14764b3:	test   eax,eax
 14764b5:	je     1476780
 14764bb:	lea    ecx,[ebx+0x49d80]
 14764c1:	mov    ecx,DWORD PTR [ecx]
 14764c3:	mov    DWORD PTR [esp+0x4],ecx
 14764c7:	mov    DWORD PTR [esp],eax
 14764ca:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
 14764cf:	cmp    DWORD PTR [esp+0x28],eax
 14764d3:	jge    14766e2
 14764d9:	mov    eax,DWORD PTR [edi+0x24]
 14764dc:	test   eax,eax
 14764de:	je     1476780
 14764e4:	lea    edi,[ebx+0x49cf8]
 14764ea:	mov    ecx,DWORD PTR [edi]
 14764ec:	mov    DWORD PTR [esp+0x8],ecx
 14764f0:	mov    ecx,DWORD PTR [esp+0x28]
 14764f4:	mov    DWORD PTR [esp+0x4],ecx
 14764f8:	mov    DWORD PTR [esp],eax
 14764fb:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1476500:	test   eax,eax
 1476502:	je     1476780
 1476508:	mov    eax,DWORD PTR [esp+0x24]
 147650c:	cmp    BYTE PTR [eax+0x14],0x0
 1476510:	je     14764a8
 1476512:	mov    eax,DWORD PTR [esp+0x24]
 1476516:	mov    eax,DWORD PTR [eax+0x24]
 1476519:	test   eax,eax
 147651b:	je     1476780
 1476521:	mov    ecx,DWORD PTR [edi]
 1476523:	mov    DWORD PTR [esp+0x8],ecx
 1476527:	mov    ecx,DWORD PTR [esp+0x28]
 147652b:	mov    DWORD PTR [esp+0x4],ecx
 147652f:	mov    DWORD PTR [esp],eax
 1476532:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1476537:	test   eax,eax
 1476539:	je     1476780
 147653f:	cmp    BYTE PTR [eax+0xc],0x0
 1476543:	je     14764a8
 1476549:	mov    eax,DWORD PTR [esp+0x24]
 147654d:	mov    eax,DWORD PTR [eax+0x24]
 1476550:	test   eax,eax
 1476552:	je     1476780
 1476558:	mov    ecx,DWORD PTR [ebp+0x8]
 147655b:	mov    esi,DWORD PTR [ecx+0x18]
 147655e:	mov    ecx,DWORD PTR [edi]
 1476560:	mov    DWORD PTR [esp+0x8],ecx
 1476564:	mov    ecx,DWORD PTR [esp+0x28]
 1476568:	mov    DWORD PTR [esp+0x4],ecx
 147656c:	mov    DWORD PTR [esp],eax
 147656f:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1476574:	test   eax,eax
 1476576:	je     1476780
 147657c:	test   esi,esi
 147657e:	je     1476780
 1476584:	mov    ecx,DWORD PTR [eax+0x8]
 1476587:	cmp    DWORD PTR [esi+0xc],ecx
 147658a:	ja     147659d
 147658c:	mov    edi,ecx
 147658e:	call   1fc7e4
 1476593:	mov    DWORD PTR [esp],eax
 1476596:	call   1fbb20
 147659b:	mov    ecx,edi
 147659d:	mov    eax,DWORD PTR [ebp+0x8]
 14765a0:	mov    edi,DWORD PTR [eax+0x108]
 14765a6:	test   edi,edi
 14765a8:	je     1476780
 14765ae:	mov    esi,DWORD PTR [esi+ecx*4+0x10]
 14765b2:	cmp    DWORD PTR [edi+0xc],esi
 14765b5:	ja     14765c4
 14765b7:	call   1fc7e4
 14765bc:	mov    DWORD PTR [esp],eax
 14765bf:	call   1fbb20
 14765c4:	mov    eax,DWORD PTR [edi+esi*4+0x10]
 14765c8:	test   eax,eax
 14765ca:	je     1476780
 14765d0:	mov    eax,DWORD PTR [eax+0x1c]
 14765d3:	mov    DWORD PTR [esp+0x4],eax
 14765d7:	mov    eax,DWORD PTR [esp+0x20]
 14765db:	mov    DWORD PTR [esp],eax
 14765de:	mov    DWORD PTR [esp+0xc],0x0
 14765e6:	mov    DWORD PTR [esp+0x8],0x0
 14765ee:	call   14f900a  ; UnityEngine.AnimationState::AddMixingTransform
 14765f3:	mov    eax,DWORD PTR [ebp+0x8]
 14765f6:	mov    edi,DWORD PTR [eax+0x108]
 14765fc:	test   edi,edi
 14765fe:	je     1476780
 1476604:	cmp    DWORD PTR [edi+0xc],esi
 1476607:	ja     1476616
 1476609:	call   1fc7e4
 147660e:	mov    DWORD PTR [esp],eax
 1476611:	call   1fbb20
 1476616:	mov    eax,DWORD PTR [edi+esi*4+0x10]
 147661a:	test   eax,eax
 147661c:	je     1476780
 1476622:	mov    eax,DWORD PTR [eax+0x20]
 1476625:	mov    DWORD PTR [esp+0x4],eax
 1476629:	mov    esi,DWORD PTR [esp+0x20]
 147662d:	mov    DWORD PTR [esp],esi
 1476630:	mov    DWORD PTR [esp+0xc],0x0
 1476638:	mov    DWORD PTR [esp+0x8],0x0
 1476640:	call   14f900a  ; UnityEngine.AnimationState::AddMixingTransform
 1476645:	jmp    14764a8
 147664a:	lea    eax,[ebx+0x430e4]
 1476650:	mov    eax,DWORD PTR [eax]
 1476652:	test   BYTE PTR [eax+0xb2],0x1
 1476659:	je     1476669
 147665b:	cmp    DWORD PTR [eax+0x60],0x0
 147665f:	jne    1476669
 1476661:	mov    DWORD PTR [esp],eax
 1476664:	call   1db0b8
 1476669:	lea    eax,[ebx+0x568d4]  ; literal "Could not find an animation state for the animation ["
 147666f:	mov    eax,DWORD PTR [eax]
 1476671:	lea    ecx,[ebx+0x51090]  ; literal "]"
 1476677:	mov    ecx,DWORD PTR [ecx]
 1476679:	mov    DWORD PTR [esp+0xc],ecx
 147667d:	mov    ecx,DWORD PTR [esp+0x28]
 1476681:	mov    DWORD PTR [esp+0x8],ecx
 1476685:	mov    DWORD PTR [esp+0x4],eax
 1476689:	mov    DWORD PTR [esp+0x10],0x0
 1476691:	mov    DWORD PTR [esp],0x0
 1476698:	call   caa312  ; System.String::Concat
 147669d:	mov    esi,eax
 147669f:	lea    eax,[ebx+0x44e64]
 14766a5:	mov    eax,DWORD PTR [eax]
 14766a7:	test   BYTE PTR [eax+0xb2],0x1
 14766ae:	mov    edi,DWORD PTR [ebp+0x8]
 14766b1:	je     14766c1
 14766b3:	cmp    DWORD PTR [eax+0x60],0x0
 14766b7:	jne    14766c1
 14766b9:	mov    DWORD PTR [esp],eax
 14766bc:	call   1db0b8
 14766c1:	mov    DWORD PTR [esp+0x4],esi
 14766c5:	mov    DWORD PTR [esp+0x8],0x0
 14766cd:	mov    DWORD PTR [esp],0x0
 14766d4:	call   14f86d0  ; UnityEngine.Debug::LogError
 14766d9:	mov    ecx,DWORD PTR [esp+0x1c]
 14766dd:	jmp    1476771
 14766e2:	movss  xmm0,DWORD PTR [edi+0xc]
 14766e7:	movss  DWORD PTR [esp+0x28],xmm0
 14766ed:	lea    eax,[ebx+0x45750]
 14766f3:	mov    eax,DWORD PTR [eax]
 14766f5:	mov    DWORD PTR [esp],eax
 14766f8:	call   20bfb2
 14766fd:	mov    edi,eax
 14766ff:	mov    DWORD PTR [esp],edi
 1476702:	mov    DWORD PTR [esp+0x4],0x0
 147670a:	call   124632e  ; System.Object::.ctor
 147670f:	mov    DWORD PTR [edi+0x8],esi
 1476712:	movss  xmm0,DWORD PTR [esp+0x28]
 1476718:	movss  DWORD PTR [edi+0xc],xmm0
 147671d:	mov    eax,DWORD PTR [ebp+0x8]
 1476720:	mov    esi,DWORD PTR [eax+0x144]
 1476726:	test   esi,esi
 1476728:	je     1476780
 147672a:	test   edi,edi
 147672c:	je     1476750
 147672e:	mov    eax,DWORD PTR [esi]
 1476730:	mov    eax,DWORD PTR [eax+0x18]
 1476733:	mov    DWORD PTR [esp+0x4],eax
 1476737:	mov    DWORD PTR [esp],edi
 147673a:	call   20c1b8
 147673f:	test   eax,eax
 1476741:	jne    1476750
 1476743:	call   1fc998
 1476748:	mov    DWORD PTR [esp],eax
 147674b:	call   1fbb20
 1476750:	mov    ecx,DWORD PTR [esp+0x1c]
 1476754:	cmp    DWORD PTR [esi+0xc],ecx
 1476757:	ja     147676a
 1476759:	call   1fc7e4
 147675e:	mov    DWORD PTR [esp],eax
 1476761:	call   1fbb20
 1476766:	mov    ecx,DWORD PTR [esp+0x1c]
 147676a:	mov    DWORD PTR [esi+ecx*4+0x10],edi
 147676e:	mov    edi,DWORD PTR [ebp+0x8]
 1476771:	inc    ecx
 1476772:	mov    esi,DWORD PTR [edi+0x140]
 1476778:	test   esi,esi
 147677a:	jne    147636c
 1476780:	call   1fbc48
 1476785:	call   14745da
 147678a:	mov    DWORD PTR [esp],edi
 147678d:	call   1476b88  ; SmoothMoves.BoneAnimation::CreateMeshFromStructures
 1476792:	lea    esp,[ebp-0xc]
 1476795:	pop    esi
 1476796:	pop    edi
 1476797:	pop    ebx
 1476798:	pop    ebp
 1476799:	ret