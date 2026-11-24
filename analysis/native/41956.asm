
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057c07a:
  57c07a:	push   ebp
  57c07b:	mov    ebp,esp
  57c07d:	push   ebx
  57c07e:	push   edi
  57c07f:	push   esi
  57c080:	and    esp,0xfffffff0
  57c083:	sub    esp,0x20
  57c086:	call   57c08b
  57c08b:	pop    ebx
  57c08c:	add    ebx,0x1995eb9
  57c092:	mov    edi,DWORD PTR [ebp+0xc]
  57c095:	mov    al,BYTE PTR [ebx+0x5d73c]
  57c09b:	test   al,al
  57c09d:	jne    57c0b6
  57c09f:	lea    eax,[ebx-0x662800]
  57c0a5:	mov    eax,DWORD PTR [eax]
  57c0a7:	mov    DWORD PTR [esp],eax
  57c0aa:	call   1ca6e8
  57c0af:	mov    BYTE PTR [ebx+0x5d73c],0x1
  57c0b6:	test   edi,edi
  57c0b8:	je     57c25f
  57c0be:	mov    esi,DWORD PTR [ebp+0x10]
  57c0c1:	lea    eax,[ebx+0x4b564]
  57c0c7:	mov    eax,DWORD PTR [eax]
  57c0c9:	mov    DWORD PTR [esp+0x8],eax
  57c0cd:	mov    DWORD PTR [esp+0x4],esi
  57c0d1:	mov    DWORD PTR [esp],edi
  57c0d4:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  57c0d9:	test   al,al
  57c0db:	je     57c12b
  57c0dd:	lea    eax,[ebx+0x4ac78]
  57c0e3:	mov    eax,DWORD PTR [eax]
  57c0e5:	mov    DWORD PTR [esp+0x8],eax
  57c0e9:	mov    DWORD PTR [esp+0x4],esi
  57c0ed:	mov    DWORD PTR [esp],edi
  57c0f0:	call   618b6e  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Item | System.Collections.Generic.Dictionary`2<string, object>::get_Item | System.Collections.Generic.Dictionary`2<string, string>::get_Item | +34 other aliases
  57c0f5:	mov    esi,eax
  57c0f7:	test   esi,esi
  57c0f9:	je     57c25f
  57c0ff:	mov    DWORD PTR [esp],esi
  57c102:	mov    DWORD PTR [esp+0x4],0x0
  57c10a:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  57c10f:	add    eax,DWORD PTR [ebp+0x14]
  57c112:	mov    DWORD PTR [esp+0x4],eax
  57c116:	mov    DWORD PTR [esp],esi
  57c119:	mov    DWORD PTR [esp+0x8],0x0
  57c121:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  57c126:	jmp    57c257
  57c12b:	test   esi,esi
  57c12d:	je     57c25f
  57c133:	lea    edi,[ebx+0x57ad8]  ; literal "ancient_"
  57c139:	mov    eax,DWORD PTR [edi]
  57c13b:	mov    DWORD PTR [esp+0x4],eax
  57c13f:	mov    DWORD PTR [esp],esi
  57c142:	mov    DWORD PTR [esp+0x8],0x0
  57c14a:	call   cb2476  ; System.String::StartsWith
  57c14f:	test   al,al
  57c151:	je     57c1a5
  57c153:	lea    ecx,[ebx+0x430e4]
  57c159:	mov    eax,DWORD PTR [ecx]
  57c15b:	test   BYTE PTR [eax+0xb2],0x1
  57c162:	je     57c17c
  57c164:	mov    DWORD PTR [esp+0x18],ecx
  57c168:	cmp    DWORD PTR [eax+0x60],0x0
  57c16c:	jne    57c17c
  57c16e:	mov    DWORD PTR [esp],eax
  57c171:	call   1db0b8
  57c176:	mov    eax,DWORD PTR [esp+0x18]
  57c17a:	mov    eax,DWORD PTR [eax]
  57c17c:	mov    eax,DWORD PTR [eax+0x50]
  57c17f:	mov    eax,DWORD PTR [eax]
  57c181:	mov    ecx,DWORD PTR [edi]
  57c183:	mov    DWORD PTR [esp+0x8],eax
  57c187:	mov    DWORD PTR [esp+0x4],ecx
  57c18b:	mov    DWORD PTR [esp],esi
  57c18e:	mov    DWORD PTR [esp+0xc],0x0
  57c196:	call   cbfb3e  ; System.String::Replace
  57c19b:	mov    esi,eax
  57c19d:	mov    al,0x1
  57c19f:	mov    DWORD PTR [esp+0x18],eax
  57c1a3:	jmp    57c1ad
  57c1a5:	mov    DWORD PTR [esp+0x18],0x0
  57c1ad:	lea    eax,[ebx+0x454b8]
  57c1b3:	mov    eax,DWORD PTR [eax]
  57c1b5:	mov    DWORD PTR [esp],eax
  57c1b8:	call   20bfb2
  57c1bd:	mov    edi,eax
  57c1bf:	mov    DWORD PTR [esp],edi
  57c1c2:	mov    DWORD PTR [esp+0x4],0x0
  57c1ca:	call   179b333  ; ABH.Shared.Models.Generic.LootInfoData::.ctor
  57c1cf:	test   edi,edi
  57c1d1:	je     57c25f
  57c1d7:	mov    eax,DWORD PTR [ebp+0x18]
  57c1da:	mov    DWORD PTR [esp+0x4],eax
  57c1de:	mov    DWORD PTR [esp],edi
  57c1e1:	mov    DWORD PTR [esp+0x8],0x0
  57c1e9:	call   179b2d9  ; ABH.Shared.Models.Generic.LootInfoData::set_Level
  57c1ee:	mov    DWORD PTR [esp],edi
  57c1f1:	mov    DWORD PTR [esp+0x8],0x0
  57c1f9:	mov    DWORD PTR [esp+0x4],0x0
  57c201:	call   179b2fc  ; ABH.Shared.Models.Generic.LootInfoData::set_Quality
  57c206:	mov    eax,DWORD PTR [ebp+0x14]
  57c209:	mov    DWORD PTR [esp+0x4],eax
  57c20d:	mov    DWORD PTR [esp],edi
  57c210:	mov    DWORD PTR [esp+0x8],0x0
  57c218:	call   179b2b6  ; ABH.Shared.Models.Generic.LootInfoData::set_Value
  57c21d:	mov    eax,DWORD PTR [esp+0x18]
  57c221:	movzx  eax,al
  57c224:	mov    DWORD PTR [esp+0x4],eax
  57c228:	mov    DWORD PTR [esp],edi
  57c22b:	mov    DWORD PTR [esp+0x8],0x0
  57c233:	call   179b320  ; ABH.Shared.Models.Generic.LootInfoData::set_IsAncient
  57c238:	lea    eax,[ebx+0x4b568]
  57c23e:	mov    eax,DWORD PTR [eax]
  57c240:	mov    DWORD PTR [esp+0xc],eax
  57c244:	mov    DWORD PTR [esp+0x8],edi
  57c248:	mov    DWORD PTR [esp+0x4],esi
  57c24c:	mov    eax,DWORD PTR [ebp+0xc]
  57c24f:	mov    DWORD PTR [esp],eax
  57c252:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  57c257:	lea    esp,[ebp-0xc]
  57c25a:	pop    esi
  57c25b:	pop    edi
  57c25c:	pop    ebx
  57c25d:	pop    ebp
  57c25e:	ret
  57c25f:	call   1fbc48
  57c264:	call   540b98