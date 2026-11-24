
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00905272:
  905272:	push   ebp
  905273:	mov    ebp,esp
  905275:	push   ebx
  905276:	push   edi
  905277:	push   esi
  905278:	and    esp,0xfffffff0
  90527b:	sub    esp,0x120
  905281:	call   905286
  905286:	pop    ebx
  905287:	add    ebx,0x160ccbe
  90528d:	mov    edi,DWORD PTR [ebp+0x8]
  905290:	mov    al,BYTE PTR [ebx+0x6029e]
  905296:	test   al,al
  905298:	jne    9052b1
  90529a:	lea    eax,[ebx-0x66d5ac]
  9052a0:	mov    eax,DWORD PTR [eax]
  9052a2:	mov    DWORD PTR [esp],eax
  9052a5:	call   1ca6e8
  9052aa:	mov    BYTE PTR [ebx+0x6029e],0x1
  9052b1:	xorps  xmm0,xmm0
  9052b4:	movaps XMMWORD PTR [esp+0x100],xmm0
  9052bc:	movaps XMMWORD PTR [esp+0xf0],xmm0
  9052c4:	movaps XMMWORD PTR [esp+0xd0],xmm0
  9052cc:	mov    DWORD PTR [esp+0xe0],0x0
  9052d7:	mov    eax,DWORD PTR [edi+0x14]
  9052da:	cmp    eax,0x2
  9052dd:	je     905338
  9052df:	cmp    eax,0x1
  9052e2:	jne    905597
  9052e8:	mov    esi,DWORD PTR [edi+0x10]
  9052eb:	lea    eax,[ebx+0x44ebc]
  9052f1:	mov    eax,DWORD PTR [eax]
  9052f3:	test   BYTE PTR [eax+0xb2],0x1
  9052fa:	je     90530a
  9052fc:	cmp    DWORD PTR [eax+0x60],0x0
  905300:	jne    90530a
  905302:	mov    DWORD PTR [esp],eax
  905305:	call   1db0b8
  90530a:	mov    DWORD PTR [esp+0x4],esi
  90530e:	mov    DWORD PTR [esp+0xc],0x0
  905316:	mov    DWORD PTR [esp+0x8],0x0
  90531e:	mov    DWORD PTR [esp],0x0
  905325:	call   16781a0  ; UnityEngine.Object::op_Equality
  90532a:	test   al,al
  90532c:	jne    905cdf
  905332:	cmp    DWORD PTR [edi+0x14],0x2
  905336:	jne    905382
  905338:	mov    esi,DWORD PTR [edi+0xc]
  90533b:	lea    eax,[ebx+0x44ebc]
  905341:	mov    eax,DWORD PTR [eax]
  905343:	test   BYTE PTR [eax+0xb2],0x1
  90534a:	je     90535a
  90534c:	cmp    DWORD PTR [eax+0x60],0x0
  905350:	jne    90535a
  905352:	mov    DWORD PTR [esp],eax
  905355:	call   1db0b8
  90535a:	mov    DWORD PTR [esp+0x4],esi
  90535e:	mov    DWORD PTR [esp+0xc],0x0
  905366:	mov    DWORD PTR [esp+0x8],0x0
  90536e:	mov    DWORD PTR [esp],0x0
  905375:	call   16781a0  ; UnityEngine.Object::op_Equality
  90537a:	test   al,al
  90537c:	jne    905cdf
  905382:	mov    esi,DWORD PTR [edi+0x18]
  905385:	lea    eax,[ebx+0x430e4]
  90538b:	mov    DWORD PTR [esp+0x44],eax
  90538f:	mov    eax,DWORD PTR [eax]
  905391:	test   BYTE PTR [eax+0xb2],0x1
  905398:	je     9053a8
  90539a:	cmp    DWORD PTR [eax+0x60],0x0
  90539e:	jne    9053a8
  9053a0:	mov    DWORD PTR [esp],eax
  9053a3:	call   1db0b8
  9053a8:	mov    DWORD PTR [esp+0x4],esi
  9053ac:	mov    DWORD PTR [esp+0x8],0x0
  9053b4:	mov    DWORD PTR [esp],0x0
  9053bb:	call   cbedf7  ; System.String::IsNullOrEmpty
  9053c0:	test   al,al
  9053c2:	jne    905cdf
  9053c8:	mov    eax,DWORD PTR [edi+0x14]
  9053cb:	cmp    eax,0x2
  9053ce:	jne    905729
  9053d4:	mov    esi,DWORD PTR [ebp+0x14]
  9053d7:	lea    eax,[ebx+0x44ebc]
  9053dd:	mov    eax,DWORD PTR [eax]
  9053df:	test   BYTE PTR [eax+0xb2],0x1
  9053e6:	je     9053f6
  9053e8:	cmp    DWORD PTR [eax+0x60],0x0
  9053ec:	jne    9053f6
  9053ee:	mov    DWORD PTR [esp],eax
  9053f1:	call   1db0b8
  9053f6:	mov    DWORD PTR [esp+0x4],esi
  9053fa:	mov    DWORD PTR [esp+0xc],0x0
  905402:	mov    DWORD PTR [esp+0x8],0x0
  90540a:	mov    DWORD PTR [esp],0x0
  905411:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  905416:	test   al,al
  905418:	je     905428
  90541a:	mov    eax,DWORD PTR [edi+0xc]
  90541d:	test   eax,eax
  90541f:	je     905cf7
  905425:	mov    DWORD PTR [eax+0xc],esi
  905428:	mov    esi,DWORD PTR [edi+0xc]
  90542b:	test   esi,esi
  90542d:	je     905cf7
  905433:	mov    eax,DWORD PTR [edi+0x18]
  905436:	mov    DWORD PTR [esp+0x4],eax
  90543a:	mov    DWORD PTR [esp],esi
  90543d:	mov    DWORD PTR [esp+0x8],0x0
  905445:	call   147a89b  ; SmoothMoves.TextureAtlas::GetTextureGUIDFromName
  90544a:	mov    DWORD PTR [esp+0x4],eax
  90544e:	mov    DWORD PTR [esp],esi
  905451:	mov    DWORD PTR [esp+0x8],0x0
  905459:	call   1479e37  ; SmoothMoves.TextureAtlas::GetTextureIndex
  90545e:	mov    esi,eax
  905460:	cmp    esi,0xffffffff
  905463:	je     905892
  905469:	mov    eax,DWORD PTR [edi+0xc]
  90546c:	test   eax,eax
  90546e:	je     905cf7
  905474:	mov    eax,DWORD PTR [eax+0x10]
  905477:	test   eax,eax
  905479:	je     905cf7
  90547f:	lea    ecx,[ebx+0x49dd4]
  905485:	mov    ecx,DWORD PTR [ecx]
  905487:	mov    DWORD PTR [esp+0xc],ecx
  90548b:	mov    DWORD PTR [esp+0x8],esi
  90548f:	mov    DWORD PTR [esp+0x4],eax
  905493:	lea    eax,[esp+0xa0]
  90549a:	mov    DWORD PTR [esp],eax
  90549d:	call   4e2fb5  ; System.Collections.Generic.List`1<UnityEngine.Rect>::get_Item
  9054a2:	sub    esp,0x4
  9054a5:	movsd  xmm0,QWORD PTR [esp+0xa0]
  9054ae:	movsd  xmm1,QWORD PTR [esp+0xa8]
  9054b7:	movsd  QWORD PTR [esp+0x108],xmm1
  9054c0:	movsd  QWORD PTR [esp+0x100],xmm0
  9054c9:	mov    eax,DWORD PTR [edi+0xc]
  9054cc:	test   eax,eax
  9054ce:	je     905cf7
  9054d4:	mov    eax,DWORD PTR [eax+0x18]
  9054d7:	test   eax,eax
  9054d9:	je     905cf7
  9054df:	lea    edi,[ebx+0x49ee4]
  9054e5:	mov    ecx,DWORD PTR [edi]
  9054e7:	mov    DWORD PTR [esp+0xc],ecx
  9054eb:	mov    DWORD PTR [esp+0x8],esi
  9054ef:	mov    DWORD PTR [esp+0x4],eax
  9054f3:	lea    eax,[esp+0x98]
  9054fa:	mov    DWORD PTR [esp],eax
  9054fd:	call   4e6600  ; System.Collections.Generic.List`1<UnityEngine.Vector2>::get_Item
  905502:	sub    esp,0x4
  905505:	mov    eax,DWORD PTR [ebp+0x8]
  905508:	mov    eax,DWORD PTR [eax+0xc]
  90550b:	test   eax,eax
  90550d:	je     905cf7
  905513:	mov    eax,DWORD PTR [eax+0x18]
  905516:	test   eax,eax
  905518:	je     905cf7
  90551e:	movss  xmm0,DWORD PTR [esp+0x98]
  905527:	movss  DWORD PTR [esp+0x44],xmm0
  90552d:	mov    ecx,DWORD PTR [edi]
  90552f:	mov    DWORD PTR [esp+0xc],ecx
  905533:	mov    DWORD PTR [esp+0x8],esi
  905537:	mov    DWORD PTR [esp+0x4],eax
  90553b:	lea    eax,[esp+0x90]
  905542:	mov    DWORD PTR [esp],eax
  905545:	call   4e6600  ; System.Collections.Generic.List`1<UnityEngine.Vector2>::get_Item
  90554a:	sub    esp,0x4
  90554d:	movss  xmm0,DWORD PTR [esp+0x94]
  905556:	movss  DWORD PTR [esp+0x10],xmm0
  90555c:	movss  xmm0,DWORD PTR [esp+0x44]
  905562:	movss  DWORD PTR [esp+0xc],xmm0
  905568:	lea    eax,[esp+0xf0]
  90556f:	mov    DWORD PTR [esp],eax
  905572:	mov    DWORD PTR [esp+0x14],0x0
  90557a:	mov    DWORD PTR [esp+0x8],0x0
  905582:	mov    DWORD PTR [esp+0x4],0x0
  90558a:	call   167f3b1
  90558f:	mov    edi,DWORD PTR [ebp+0x8]
  905592:	jmp    905a09
  905597:	lea    eax,[ebx+0x4cd20]
  90559d:	mov    eax,DWORD PTR [eax]
  90559f:	mov    DWORD PTR [esp+0x4],eax
  9055a3:	mov    DWORD PTR [esp],edi
  9055a6:	call   15e8b4b  ; shared address: UnityEngine.Component::GetComponent | UnityEngine.Component::GetComponent | UnityEngine.Component::GetComponent | +86 other aliases
  9055ab:	mov    esi,eax
  9055ad:	lea    eax,[ebx+0x44ebc]
  9055b3:	mov    eax,DWORD PTR [eax]
  9055b5:	test   BYTE PTR [eax+0xb2],0x1
  9055bc:	je     9055cc
  9055be:	cmp    DWORD PTR [eax+0x60],0x0
  9055c2:	jne    9055cc
  9055c4:	mov    DWORD PTR [esp],eax
  9055c7:	call   1db0b8
  9055cc:	mov    DWORD PTR [esp+0x4],esi
  9055d0:	mov    DWORD PTR [esp+0xc],0x0
  9055d8:	mov    DWORD PTR [esp+0x8],0x0
  9055e0:	mov    DWORD PTR [esp],0x0
  9055e7:	call   16781a0  ; UnityEngine.Object::op_Equality
  9055ec:	test   al,al
  9055ee:	je     90561e
  9055f0:	mov    DWORD PTR [esp],edi
  9055f3:	mov    DWORD PTR [esp+0x4],0x0
  9055fb:	call   1501684  ; UnityEngine.Component::get_gameObject
  905600:	test   eax,eax
  905602:	je     905cf7
  905608:	lea    ecx,[ebx+0x49ed4]
  90560e:	mov    ecx,DWORD PTR [ecx]
  905610:	mov    DWORD PTR [esp+0x4],ecx
  905614:	mov    DWORD PTR [esp],eax
  905617:	call   15e8e5b  ; shared address: UnityEngine.GameObject::AddComponent | UnityEngine.GameObject::AddComponent | UnityEngine.GameObject::AddComponent | +29 other aliases
  90561c:	mov    esi,eax
  90561e:	mov    DWORD PTR [esp+0x40],esi
  905622:	mov    edx,DWORD PTR [edi+0x1c]
  905625:	mov    eax,DWORD PTR [edi+0x20]
  905628:	mov    DWORD PTR [esp+0x44],eax
  90562c:	movsd  xmm0,QWORD PTR [edi+0x24]
  905631:	movsd  xmm1,QWORD PTR [edi+0x2c]
  905636:	movsd  QWORD PTR [esp+0x58],xmm1
  90563c:	movsd  QWORD PTR [esp+0x50],xmm0
  905642:	lea    eax,[ebx+0x46c28]
  905648:	mov    eax,DWORD PTR [eax]
  90564a:	test   BYTE PTR [eax+0xb1],0x1
  905651:	je     90567a
  905653:	mov    eax,DWORD PTR [eax+0x78]
  905656:	add    eax,0xfffffff8
  905659:	mov    DWORD PTR [esp+0x8],eax
  90565d:	lea    eax,[esp+0xd0]
  905664:	mov    DWORD PTR [esp],eax
  905667:	mov    DWORD PTR [esp+0x4],0x0
  90566f:	mov    esi,edx
  905671:	call   1b9b40
  905676:	mov    edx,esi
  905678:	jmp    905685
  90567a:	mov    DWORD PTR [esp+0xd0],0x0
  905685:	mov    esi,DWORD PTR [esp+0x40]
  905689:	mov    eax,DWORD PTR [edi+0x34]
  90568c:	mov    ecx,DWORD PTR [edi+0x38]
  90568f:	xorps  xmm0,xmm0
  905692:	cvtsi2ss xmm0,edx
  905696:	xorps  xmm1,xmm1
  905699:	cvtsi2ss xmm1,DWORD PTR [esp+0x44]
  90569f:	mov    edx,DWORD PTR [esp+0xe0]
  9056a6:	mov    DWORD PTR [esp+0x2c],edx
  9056aa:	movsd  xmm2,QWORD PTR [esp+0xd0]
  9056b3:	movsd  xmm3,QWORD PTR [esp+0xd8]
  9056bc:	movsd  QWORD PTR [esp+0x24],xmm3
  9056c2:	movsd  QWORD PTR [esp+0x1c],xmm2
  9056c8:	movsd  xmm2,QWORD PTR [esp+0x50]
  9056ce:	movsd  xmm3,QWORD PTR [esp+0x58]
  9056d4:	movsd  QWORD PTR [esp+0x14],xmm3
  9056da:	movsd  QWORD PTR [esp+0xc],xmm2
  9056e0:	mov    DWORD PTR [esp+0x34],ecx
  9056e4:	mov    DWORD PTR [esp+0x30],eax
  9056e8:	movss  DWORD PTR [esp+0x8],xmm1
  9056ee:	movss  DWORD PTR [esp+0x4],xmm0
  9056f4:	mov    DWORD PTR [esp+0x38],0x0
  9056fc:	mov    DWORD PTR [esp],0x0
  905703:	call   81bd3f  ; QuadMeshCreator::BuildQuad
  905708:	test   esi,esi
  90570a:	je     905cf7
  905710:	mov    DWORD PTR [esp+0x4],eax
  905714:	mov    DWORD PTR [esp],esi
  905717:	mov    DWORD PTR [esp+0x8],0x0
  90571f:	call   139d814  ; UnityEngine.MeshFilter::set_sharedMesh
  905724:	jmp    905cdf
  905729:	cmp    eax,0x1
  90572c:	jne    90593f
  905732:	mov    eax,DWORD PTR [edi+0x10]
  905735:	test   eax,eax
  905737:	je     905cf7
  90573d:	mov    ecx,DWORD PTR [edi+0x18]
  905740:	mov    DWORD PTR [esp+0x4],ecx
  905744:	mov    DWORD PTR [esp],eax
  905747:	mov    DWORD PTR [esp+0x8],0x0
  90574f:	call   10466b2  ; UIAtlas::GetSprite
  905754:	test   eax,eax
  905756:	je     90599c
  90575c:	cvtsi2ss xmm0,DWORD PTR [eax+0xc]
  905761:	cvtsi2ss xmm1,DWORD PTR [eax+0x10]
  905766:	cvtsi2ss xmm2,DWORD PTR [eax+0x14]
  90576b:	cvtsi2ss xmm3,DWORD PTR [eax+0x18]
  905770:	movss  DWORD PTR [esp+0x10],xmm3
  905776:	movss  DWORD PTR [esp+0xc],xmm2
  90577c:	movss  DWORD PTR [esp+0x8],xmm1
  905782:	movss  DWORD PTR [esp+0x4],xmm0
  905788:	lea    eax,[esp+0xf0]
  90578f:	mov    DWORD PTR [esp],eax
  905792:	mov    DWORD PTR [esp+0x14],0x0
  90579a:	call   167f3b1
  90579f:	movaps xmm0,XMMWORD PTR [esp+0xf0]
  9057a7:	movaps XMMWORD PTR [esp+0xc0],xmm0
  9057af:	mov    eax,DWORD PTR [edi+0x10]
  9057b2:	test   eax,eax
  9057b4:	je     905cf7
  9057ba:	mov    DWORD PTR [esp],eax
  9057bd:	mov    DWORD PTR [esp+0x4],0x0
  9057c5:	call   1046197  ; UIAtlas::get_texture
  9057ca:	test   eax,eax
  9057cc:	je     905cf7
  9057d2:	mov    ecx,DWORD PTR [eax]
  9057d4:	mov    edx,DWORD PTR [ecx+0xd8]
  9057da:	mov    DWORD PTR [esp+0x4],edx
  9057de:	mov    DWORD PTR [esp],eax
  9057e1:	call   DWORD PTR [ecx+0xd4]
  9057e7:	mov    esi,eax
  9057e9:	mov    eax,DWORD PTR [edi+0x10]
  9057ec:	test   eax,eax
  9057ee:	je     905cf7
  9057f4:	mov    DWORD PTR [esp],eax
  9057f7:	mov    DWORD PTR [esp+0x4],0x0
  9057ff:	call   1046197  ; UIAtlas::get_texture
  905804:	test   eax,eax
  905806:	je     905cf7
  90580c:	mov    ecx,DWORD PTR [eax]
  90580e:	mov    edx,DWORD PTR [ecx+0xd8]
  905814:	mov    DWORD PTR [esp+0x4],edx
  905818:	mov    DWORD PTR [esp],eax
  90581b:	call   DWORD PTR [ecx+0xd4]
  905821:	movsd  xmm0,QWORD PTR [esp+0xc0]
  90582a:	movsd  xmm1,QWORD PTR [esp+0xc8]
  905833:	movsd  QWORD PTR [esp+0x10],xmm1
  905839:	movsd  QWORD PTR [esp+0x8],xmm0
  90583f:	mov    DWORD PTR [esp+0x1c],eax
  905843:	mov    DWORD PTR [esp+0x18],esi
  905847:	lea    eax,[esp+0xb0]
  90584e:	mov    DWORD PTR [esp],eax
  905851:	mov    DWORD PTR [esp+0x20],0x0
  905859:	mov    DWORD PTR [esp+0x4],0x0
  905861:	call   74c8ef  ; NGUIMath::ConvertToTexCoords
  905866:	sub    esp,0x4
  905869:	movsd  xmm0,QWORD PTR [esp+0xb0]
  905872:	movsd  xmm1,QWORD PTR [esp+0xb8]
  90587b:	movsd  QWORD PTR [esp+0x108],xmm1
  905884:	movsd  QWORD PTR [esp+0x100],xmm0
  90588d:	jmp    905a09
  905892:	mov    DWORD PTR [esp+0x4],0x0
  90589a:	mov    DWORD PTR [esp],0x0
  9058a1:	call   14fa343  ; UnityEngine.Application::get_isPlaying
  9058a6:	test   al,al
  9058a8:	je     90593f
  9058ae:	mov    eax,DWORD PTR [edi+0xc]
  9058b1:	test   eax,eax
  9058b3:	je     905cf7
  9058b9:	mov    ecx,DWORD PTR [edi+0x18]
  9058bc:	mov    DWORD PTR [esp+0x40],ecx
  9058c0:	mov    DWORD PTR [esp],eax
  9058c3:	mov    DWORD PTR [esp+0x4],0x0
  9058cb:	call   16792bf  ; UnityEngine.Object::get_name
  9058d0:	mov    esi,eax
  9058d2:	mov    eax,DWORD PTR [esp+0x44]
  9058d6:	mov    eax,DWORD PTR [eax]
  9058d8:	test   BYTE PTR [eax+0xb2],0x1
  9058df:	je     9058ef
  9058e1:	cmp    DWORD PTR [eax+0x60],0x0
  9058e5:	jne    9058ef
  9058e7:	mov    DWORD PTR [esp],eax
  9058ea:	call   1db0b8
  9058ef:	lea    eax,[ebx+0x59680]  ; literal "Sprite name "
  9058f5:	mov    eax,DWORD PTR [eax]
  9058f7:	lea    ecx,[ebx+0x59684]  ; literal " not found in atlas "
  9058fd:	mov    ecx,DWORD PTR [ecx]
  9058ff:	mov    DWORD PTR [esp+0x10],esi
  905903:	mov    DWORD PTR [esp+0xc],ecx
  905907:	mov    ecx,DWORD PTR [esp+0x40]
  90590b:	mov    DWORD PTR [esp+0x8],ecx
  90590f:	mov    DWORD PTR [esp+0x4],eax
  905913:	mov    DWORD PTR [esp+0x14],0x0
  90591b:	mov    DWORD PTR [esp],0x0
  905922:	call   cc1627  ; System.String::Concat
  905927:	mov    DWORD PTR [esp+0x4],eax
  90592b:	mov    DWORD PTR [esp+0x8],0x0
  905933:	mov    DWORD PTR [esp],0x0
  90593a:	call   10872b0  ; DebugLog::Warn
  90593f:	lea    eax,[ebx+0x45030]
  905945:	mov    esi,DWORD PTR [eax]
  905947:	test   BYTE PTR [esi+0xb1],0x1
  90594e:	je     905984
  905950:	mov    eax,DWORD PTR [esi+0x78]
  905953:	add    eax,0xfffffff8
  905956:	mov    DWORD PTR [esp+0x8],eax
  90595a:	lea    eax,[esp+0x100]
  905961:	mov    DWORD PTR [esp],eax
  905964:	mov    DWORD PTR [esp+0x4],0x0
  90596c:	call   1b9b40
  905971:	mov    eax,DWORD PTR [esi+0x78]
  905974:	add    eax,0xfffffff8
  905977:	mov    DWORD PTR [esp+0x8],eax
  90597b:	lea    eax,[esp+0xf0]
  905982:	jmp    9059f9
  905984:	mov    DWORD PTR [esp+0x100],0x0
  90598f:	mov    DWORD PTR [esp+0xf0],0x0
  90599a:	jmp    905a09
  90599c:	lea    eax,[ebx+0x45030]
  9059a2:	mov    esi,DWORD PTR [eax]
  9059a4:	test   BYTE PTR [esi+0xb1],0x1
  9059ab:	je     9059d0
  9059ad:	mov    eax,DWORD PTR [esi+0x78]
  9059b0:	add    eax,0xfffffff8
  9059b3:	mov    DWORD PTR [esp+0x8],eax
  9059b7:	lea    eax,[esp+0xf0]
  9059be:	mov    DWORD PTR [esp],eax
  9059c1:	mov    DWORD PTR [esp+0x4],0x0
  9059c9:	call   1b9b40
  9059ce:	jmp    9059db
  9059d0:	mov    DWORD PTR [esp+0xf0],0x0
  9059db:	test   BYTE PTR [esi+0xb1],0x1
  9059e2:	je     905ce7
  9059e8:	mov    eax,DWORD PTR [esi+0x78]
  9059eb:	add    eax,0xfffffff8
  9059ee:	mov    DWORD PTR [esp+0x8],eax
  9059f2:	lea    eax,[esp+0x100]
  9059f9:	mov    DWORD PTR [esp],eax
  9059fc:	mov    DWORD PTR [esp+0x4],0x0
  905a04:	call   1b9b40
  905a09:	mov    al,BYTE PTR [ebp+0x10]
  905a0c:	test   al,al
  905a0e:	je     905a51
  905a10:	lea    esi,[esp+0xf0]
  905a17:	mov    DWORD PTR [esp],esi
  905a1a:	mov    DWORD PTR [esp+0x4],0x0
  905a22:	call   167f826
  905a27:	fstp   DWORD PTR [esp+0x4c]
  905a2b:	cvttss2si eax,DWORD PTR [esp+0x4c]
  905a31:	mov    DWORD PTR [edi+0x20],eax
  905a34:	mov    DWORD PTR [esp],esi
  905a37:	mov    DWORD PTR [esp+0x4],0x0
  905a3f:	call   167f7d8
  905a44:	fstp   DWORD PTR [esp+0x48]
  905a48:	cvttss2si eax,DWORD PTR [esp+0x48]
  905a4e:	mov    DWORD PTR [edi+0x1c],eax
  905a51:	lea    eax,[ebx+0x4cd20]
  905a57:	mov    eax,DWORD PTR [eax]
  905a59:	mov    DWORD PTR [esp+0x4],eax
  905a5d:	mov    DWORD PTR [esp],edi
  905a60:	call   15e8b4b  ; shared address: UnityEngine.Component::GetComponent | UnityEngine.Component::GetComponent | UnityEngine.Component::GetComponent | +86 other aliases
  905a65:	mov    esi,eax
  905a67:	lea    eax,[ebx+0x44ebc]
  905a6d:	mov    DWORD PTR [esp+0x3c],eax
  905a71:	mov    eax,DWORD PTR [eax]
  905a73:	test   BYTE PTR [eax+0xb2],0x1
  905a7a:	je     905a8a
  905a7c:	cmp    DWORD PTR [eax+0x60],0x0
  905a80:	jne    905a8a
  905a82:	mov    DWORD PTR [esp],eax
  905a85:	call   1db0b8
  905a8a:	mov    DWORD PTR [esp+0x4],esi
  905a8e:	mov    DWORD PTR [esp+0xc],0x0
  905a96:	mov    DWORD PTR [esp+0x8],0x0
  905a9e:	mov    DWORD PTR [esp],0x0
  905aa5:	call   16781a0  ; UnityEngine.Object::op_Equality
  905aaa:	test   al,al
  905aac:	je     905adc
  905aae:	mov    DWORD PTR [esp],edi
  905ab1:	mov    DWORD PTR [esp+0x4],0x0
  905ab9:	call   1501684  ; UnityEngine.Component::get_gameObject
  905abe:	test   eax,eax
  905ac0:	je     905cf7
  905ac6:	lea    ecx,[ebx+0x49ed4]
  905acc:	mov    ecx,DWORD PTR [ecx]
  905ace:	mov    DWORD PTR [esp+0x4],ecx
  905ad2:	mov    DWORD PTR [esp],eax
  905ad5:	call   15e8e5b  ; shared address: UnityEngine.GameObject::AddComponent | UnityEngine.GameObject::AddComponent | UnityEngine.GameObject::AddComponent | +29 other aliases
  905ada:	mov    esi,eax
  905adc:	cvtsi2ss xmm0,DWORD PTR [edi+0x1c]
  905ae1:	movss  DWORD PTR [esp+0x44],xmm0
  905ae7:	xorps  xmm0,xmm0
  905aea:	cvtsi2ss xmm0,DWORD PTR [edi+0x20]
  905aef:	movss  DWORD PTR [esp+0x40],xmm0
  905af5:	movsd  xmm0,QWORD PTR [edi+0x24]
  905afa:	movsd  xmm1,QWORD PTR [edi+0x2c]
  905aff:	movsd  QWORD PTR [esp+0x88],xmm1
  905b08:	movsd  QWORD PTR [esp+0x80],xmm0
  905b11:	xorps  xmm0,xmm0
  905b14:	movaps XMMWORD PTR [esp+0x60],xmm0
  905b19:	mov    DWORD PTR [esp+0x70],0x0
  905b21:	lea    eax,[ebx+0x4cd24]
  905b27:	mov    eax,DWORD PTR [eax]
  905b29:	movsd  xmm0,QWORD PTR [esp+0x100]
  905b32:	movsd  xmm1,QWORD PTR [esp+0x108]
  905b3b:	movsd  QWORD PTR [esp+0xc],xmm1
  905b41:	movsd  QWORD PTR [esp+0x4],xmm0
  905b47:	mov    DWORD PTR [esp+0x14],eax
  905b4b:	lea    eax,[esp+0x60]
  905b4f:	mov    DWORD PTR [esp],eax
  905b52:	call   16b9223
  905b57:	mov    eax,DWORD PTR [edi+0x34]
  905b5a:	mov    ecx,DWORD PTR [edi+0x38]
  905b5d:	mov    edx,DWORD PTR [esp+0x70]
  905b61:	mov    DWORD PTR [esp+0x2c],edx
  905b65:	movsd  xmm0,QWORD PTR [esp+0x60]
  905b6b:	movsd  xmm1,QWORD PTR [esp+0x68]
  905b71:	movsd  QWORD PTR [esp+0x24],xmm1
  905b77:	movsd  QWORD PTR [esp+0x1c],xmm0
  905b7d:	movsd  xmm0,QWORD PTR [esp+0x80]
  905b86:	movsd  xmm1,QWORD PTR [esp+0x88]
  905b8f:	movsd  QWORD PTR [esp+0x14],xmm1
  905b95:	movsd  QWORD PTR [esp+0xc],xmm0
  905b9b:	mov    DWORD PTR [esp+0x34],ecx
  905b9f:	mov    DWORD PTR [esp+0x30],eax
  905ba3:	movss  xmm0,DWORD PTR [esp+0x40]
  905ba9:	movss  DWORD PTR [esp+0x8],xmm0
  905baf:	movss  xmm0,DWORD PTR [esp+0x44]
  905bb5:	movss  DWORD PTR [esp+0x4],xmm0
  905bbb:	mov    DWORD PTR [esp+0x38],0x0
  905bc3:	mov    DWORD PTR [esp],0x0
  905bca:	call   81bd3f  ; QuadMeshCreator::BuildQuad
  905bcf:	test   esi,esi
  905bd1:	je     905cf7
  905bd7:	mov    DWORD PTR [esp+0x4],eax
  905bdb:	mov    DWORD PTR [esp],esi
  905bde:	mov    DWORD PTR [esp+0x8],0x0
  905be6:	call   139d814  ; UnityEngine.MeshFilter::set_sharedMesh
  905beb:	mov    ecx,DWORD PTR [edi+0x14]
  905bee:	xor    eax,eax
  905bf0:	cmp    ecx,0x1
  905bf3:	jne    905c13
  905bf5:	mov    eax,DWORD PTR [edi+0x10]
  905bf8:	test   eax,eax
  905bfa:	je     905cf7
  905c00:	mov    DWORD PTR [esp],eax
  905c03:	mov    DWORD PTR [esp+0x4],0x0
  905c0b:	call   1045083  ; UIAtlas::get_spriteMaterial
  905c10:	mov    ecx,DWORD PTR [edi+0x14]
  905c13:	cmp    ecx,0x2
  905c16:	jne    905c26
  905c18:	mov    eax,DWORD PTR [edi+0xc]
  905c1b:	test   eax,eax
  905c1d:	je     905cf7
  905c23:	mov    eax,DWORD PTR [eax+0xc]
  905c26:	mov    DWORD PTR [esp+0x44],eax
  905c2a:	lea    eax,[ebx+0x4cd28]
  905c30:	mov    eax,DWORD PTR [eax]
  905c32:	mov    DWORD PTR [esp+0x4],eax
  905c36:	mov    DWORD PTR [esp],edi
  905c39:	mov    esi,edi
  905c3b:	call   15e8b4b  ; shared address: UnityEngine.Component::GetComponent | UnityEngine.Component::GetComponent | UnityEngine.Component::GetComponent | +86 other aliases
  905c40:	mov    edi,eax
  905c42:	mov    eax,DWORD PTR [esp+0x3c]
  905c46:	mov    eax,DWORD PTR [eax]
  905c48:	test   BYTE PTR [eax+0xb2],0x1
  905c4f:	je     905c5f
  905c51:	cmp    DWORD PTR [eax+0x60],0x0
  905c55:	jne    905c5f
  905c57:	mov    DWORD PTR [esp],eax
  905c5a:	call   1db0b8
  905c5f:	mov    DWORD PTR [esp+0x4],edi
  905c63:	mov    DWORD PTR [esp+0xc],0x0
  905c6b:	mov    DWORD PTR [esp+0x8],0x0
  905c73:	mov    DWORD PTR [esp],0x0
  905c7a:	call   16781a0  ; UnityEngine.Object::op_Equality
  905c7f:	test   al,al
  905c81:	je     905cbc
  905c83:	mov    DWORD PTR [esp],esi
  905c86:	mov    DWORD PTR [esp+0x4],0x0
  905c8e:	call   1501684  ; UnityEngine.Component::get_gameObject
  905c93:	test   eax,eax
  905c95:	je     905cf7
  905c97:	lea    ecx,[ebx+0x49edc]
  905c9d:	mov    ecx,DWORD PTR [ecx]
  905c9f:	mov    DWORD PTR [esp+0x4],ecx
  905ca3:	mov    DWORD PTR [esp],eax
  905ca6:	call   15e8e5b  ; shared address: UnityEngine.GameObject::AddComponent | UnityEngine.GameObject::AddComponent | UnityEngine.GameObject::AddComponent | +29 other aliases
  905cab:	test   eax,eax
  905cad:	je     905cf7
  905caf:	mov    ecx,DWORD PTR [esp+0x44]
  905cb3:	mov    DWORD PTR [esp+0x4],ecx
  905cb7:	mov    DWORD PTR [esp],eax
  905cba:	jmp    905cd2
  905cbc:	mov    al,BYTE PTR [ebp+0xc]
  905cbf:	test   al,al
  905cc1:	je     905cdf
  905cc3:	test   edi,edi
  905cc5:	je     905cf7
  905cc7:	mov    eax,DWORD PTR [esp+0x44]
  905ccb:	mov    DWORD PTR [esp+0x4],eax
  905ccf:	mov    DWORD PTR [esp],edi
  905cd2:	mov    DWORD PTR [esp+0x8],0x0
  905cda:	call   1680fca  ; UnityEngine.Renderer::set_material
  905cdf:	lea    esp,[ebp-0xc]
  905ce2:	pop    esi
  905ce3:	pop    edi
  905ce4:	pop    ebx
  905ce5:	pop    ebp
  905ce6:	ret
  905ce7:	mov    DWORD PTR [esp+0x100],0x0
  905cf2:	jmp    905a09
  905cf7:	call   1fbc48
  905cfc:	call   8b3f00