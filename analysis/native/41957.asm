
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057c269:
  57c269:	push   ebp
  57c26a:	mov    ebp,esp
  57c26c:	push   ebx
  57c26d:	push   edi
  57c26e:	push   esi
  57c26f:	and    esp,0xfffffff0
  57c272:	sub    esp,0x70
  57c275:	call   57c27a
  57c27a:	pop    ebx
  57c27b:	add    ebx,0x1995cca
  57c281:	mov    edi,DWORD PTR [ebp+0xc]
  57c284:	mov    al,BYTE PTR [ebx+0x5d73d]
  57c28a:	test   al,al
  57c28c:	jne    57c2a5
  57c28e:	lea    eax,[ebx-0x6627dc]
  57c294:	mov    eax,DWORD PTR [eax]
  57c296:	mov    DWORD PTR [esp],eax
  57c299:	call   1ca6e8
  57c29e:	mov    BYTE PTR [ebx+0x5d73d],0x1
  57c2a5:	xorps  xmm0,xmm0
  57c2a8:	movaps XMMWORD PTR [esp+0x50],xmm0
  57c2ad:	mov    DWORD PTR [esp+0x60],0x0
  57c2b5:	lea    eax,[ebx+0x45834]
  57c2bb:	mov    eax,DWORD PTR [eax]
  57c2bd:	mov    DWORD PTR [esp],eax
  57c2c0:	call   20bfb2
  57c2c5:	mov    esi,eax
  57c2c7:	lea    eax,[ebx+0x49f9c]
  57c2cd:	mov    eax,DWORD PTR [eax]
  57c2cf:	mov    DWORD PTR [esp+0x4],eax
  57c2d3:	mov    DWORD PTR [esp],esi
  57c2d6:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  57c2db:	mov    eax,DWORD PTR [ebp+0x14]
  57c2de:	mov    DWORD PTR [eax],esi
  57c2e0:	test   edi,edi
  57c2e2:	je     57c4c5
  57c2e8:	lea    eax,[ebx+0x49fc8]
  57c2ee:	mov    eax,DWORD PTR [eax]
  57c2f0:	mov    DWORD PTR [esp+0x4],eax
  57c2f4:	mov    DWORD PTR [esp],edi
  57c2f7:	call   6132fe  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::get_Keys | System.Collections.Generic.Dictionary`2<object, int>::get_Keys
  57c2fc:	test   eax,eax
  57c2fe:	je     57c4cd
  57c304:	lea    ecx,[ebx+0x49fd4]
  57c30a:	mov    ecx,DWORD PTR [ecx]
  57c30c:	mov    DWORD PTR [esp+0x8],ecx
  57c310:	mov    DWORD PTR [esp+0x4],eax
  57c314:	lea    edi,[esp+0x50]
  57c318:	mov    DWORD PTR [esp],edi
  57c31b:	call   15a695b  ; shared address: System.Collections.Generic.Dictionary`2+KeyCollection<string, int>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<object, int>::GetEnumerator
  57c320:	sub    esp,0x4
  57c323:	lea    eax,[ebx+0x49fe4]
  57c329:	mov    DWORD PTR [esp+0x3c],eax
  57c32d:	mov    eax,DWORD PTR [esp+0x3c]
  57c331:	mov    eax,DWORD PTR [eax]
  57c333:	mov    DWORD PTR [esp+0x4],eax
  57c337:	mov    DWORD PTR [esp],edi
  57c33a:	call   11acc6d
  57c33f:	test   al,al
  57c341:	je     57c495
  57c347:	lea    eax,[ebx+0x49fd8]
  57c34d:	mov    eax,DWORD PTR [eax]
  57c34f:	mov    DWORD PTR [esp+0x4],eax
  57c353:	mov    DWORD PTR [esp],edi
  57c356:	call   11accfc
  57c35b:	mov    esi,eax
  57c35d:	test   esi,esi
  57c35f:	je     57c417
  57c365:	lea    eax,[ebx+0x49fdc]
  57c36b:	mov    eax,DWORD PTR [eax]
  57c36d:	mov    DWORD PTR [esp+0x8],eax
  57c371:	mov    DWORD PTR [esp+0x4],esi
  57c375:	mov    eax,DWORD PTR [ebp+0xc]
  57c378:	mov    DWORD PTR [esp],eax
  57c37b:	call   610a13  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::get_Item | System.Collections.Generic.Dictionary`2<object, int>::get_Item
  57c380:	mov    DWORD PTR [esp+0x4c],0x0
  57c388:	mov    DWORD PTR [esp+0x48],0x0
  57c390:	lea    ecx,[ebx+0x499e4]
  57c396:	mov    ecx,DWORD PTR [ecx]
  57c398:	mov    DWORD PTR [esp+0xc],ecx
  57c39c:	mov    DWORD PTR [esp+0x8],eax
  57c3a0:	mov    DWORD PTR [esp+0x4],esi
  57c3a4:	lea    eax,[esp+0x48]
  57c3a8:	mov    DWORD PTR [esp],eax
  57c3ab:	call   16ab713
  57c3b0:	movsd  xmm0,QWORD PTR [esp+0x48]
  57c3b6:	movsd  QWORD PTR [esp+0x40],xmm0
  57c3bc:	mov    eax,DWORD PTR [ebp+0x14]
  57c3bf:	mov    eax,DWORD PTR [eax]
  57c3c1:	mov    ecx,DWORD PTR [ebp+0x18]
  57c3c4:	mov    DWORD PTR [esp+0x20],ecx
  57c3c8:	mov    DWORD PTR [esp+0x14],eax
  57c3cc:	mov    eax,DWORD PTR [ebp+0x10]
  57c3cf:	mov    DWORD PTR [esp+0xc],eax
  57c3d3:	movsd  xmm0,QWORD PTR [esp+0x40]
  57c3d9:	movsd  QWORD PTR [esp+0x4],xmm0
  57c3df:	mov    eax,DWORD PTR [ebp+0x8]
  57c3e2:	mov    DWORD PTR [esp],eax
  57c3e5:	mov    DWORD PTR [esp+0x28],0x0
  57c3ed:	mov    DWORD PTR [esp+0x24],0x0
  57c3f5:	mov    DWORD PTR [esp+0x1c],0xa
  57c3fd:	mov    DWORD PTR [esp+0x18],0x0
  57c405:	mov    DWORD PTR [esp+0x10],0x1
  57c40d:	call   57c4df  ; ABH.Services.Logic.LootOperations::GenerateLootRecursive
  57c412:	jmp    57c32d
  57c417:	lea    eax,[ebx+0x430e4]
  57c41d:	mov    eax,DWORD PTR [eax]
  57c41f:	test   BYTE PTR [eax+0xb2],0x1
  57c426:	je     57c436
  57c428:	cmp    DWORD PTR [eax+0x60],0x0
  57c42c:	jne    57c436
  57c42e:	mov    DWORD PTR [esp],eax
  57c431:	call   1db0b8
  57c436:	lea    eax,[ebx+0x57b14]  ; literal "Could not find item with name "
  57c43c:	mov    eax,DWORD PTR [eax]
  57c43e:	mov    DWORD PTR [esp+0x8],esi
  57c442:	mov    DWORD PTR [esp+0x4],eax
  57c446:	mov    DWORD PTR [esp+0xc],0x0
  57c44e:	mov    DWORD PTR [esp],0x0
  57c455:	call   ca462a  ; System.String::Concat
  57c45a:	mov    DWORD PTR [esp+0x4],eax
  57c45e:	mov    DWORD PTR [esp+0x8],0x0
  57c466:	mov    DWORD PTR [esp],0x0
  57c46d:	call   108148a  ; DebugLog::Error
  57c472:	jmp    57c32d
  57c477:	cmp    edx,0x1
  57c47a:	jne    57c4d7
  57c47c:	mov    DWORD PTR [esp],eax
  57c47f:	call   1ba3f0
  57c484:	mov    esi,DWORD PTR [eax]
  57c486:	call   1b9ce0
  57c48b:	mov    DWORD PTR [esp+0x3c],0x0
  57c493:	jmp    57c49d
  57c495:	xor    esi,esi
  57c497:	mov    al,0x1
  57c499:	mov    DWORD PTR [esp+0x3c],eax
  57c49d:	lea    eax,[ebx+0x49fe8]
  57c4a3:	mov    eax,DWORD PTR [eax]
  57c4a5:	mov    DWORD PTR [esp+0x4],eax
  57c4a9:	mov    DWORD PTR [esp],edi
  57c4ac:	call   11acc02
  57c4b1:	mov    eax,DWORD PTR [esp+0x3c]
  57c4b5:	test   al,al
  57c4b7:	jne    57c4c5
  57c4b9:	test   esi,esi
  57c4bb:	je     57c4c5
  57c4bd:	mov    DWORD PTR [esp],esi
  57c4c0:	call   1fbb20
  57c4c5:	lea    esp,[ebp-0xc]
  57c4c8:	pop    esi
  57c4c9:	pop    edi
  57c4ca:	pop    ebx
  57c4cb:	pop    ebp
  57c4cc:	ret
  57c4cd:	call   1fbc48
  57c4d2:	call   540b98
  57c4d7:	mov    DWORD PTR [esp],eax
  57c4da:	call   1b9bd0