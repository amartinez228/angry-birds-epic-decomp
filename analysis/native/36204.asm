
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ee99ac:
  ee99ac:	push   ebp
  ee99ad:	mov    ebp,esp
  ee99af:	push   ebx
  ee99b0:	push   edi
  ee99b1:	push   esi
  ee99b2:	and    esp,0xfffffff0
  ee99b5:	sub    esp,0x20
  ee99b8:	call   ee99bd
  ee99bd:	pop    ebx
  ee99be:	add    ebx,0x1028587
  ee99c4:	mov    al,BYTE PTR [ebx+0x627ec]
  ee99ca:	test   al,al
  ee99cc:	jne    ee99e5
  ee99ce:	lea    eax,[ebx-0x670468]
  ee99d4:	mov    eax,DWORD PTR [eax]
  ee99d6:	mov    DWORD PTR [esp],eax
  ee99d9:	call   1ca6e8
  ee99de:	mov    BYTE PTR [ebx+0x627ec],0x1
  ee99e5:	mov    edi,DWORD PTR [ebp+0x8]
  ee99e8:	lea    eax,[ebx+0x4584c]
  ee99ee:	mov    eax,DWORD PTR [eax]
  ee99f0:	test   BYTE PTR [eax+0xb2],0x1
  ee99f7:	je     ee9a07
  ee99f9:	cmp    DWORD PTR [eax+0x60],0x0
  ee99fd:	jne    ee9a07
  ee99ff:	mov    DWORD PTR [esp],eax
  ee9a02:	call   1db0b8
  ee9a07:	mov    DWORD PTR [esp+0x4],0x0
  ee9a0f:	mov    DWORD PTR [esp],0x0
  ee9a16:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  ee9a1b:	mov    esi,eax
  ee9a1d:	mov    eax,DWORD PTR [edi+0x8]
  ee9a20:	test   eax,eax
  ee9a22:	je     ee9a86
  ee9a24:	mov    DWORD PTR [esp],eax
  ee9a27:	mov    DWORD PTR [esp+0x4],0x0
  ee9a2f:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
  ee9a34:	mov    DWORD PTR [esp+0x18],eax
  ee9a38:	lea    eax,[ebx+0x44d10]
  ee9a3e:	mov    eax,DWORD PTR [eax]
  ee9a40:	mov    DWORD PTR [esp],eax
  ee9a43:	call   20bfb2
  ee9a48:	mov    edi,eax
  ee9a4a:	lea    eax,[ebx+0x49298]
  ee9a50:	mov    eax,DWORD PTR [eax]
  ee9a52:	mov    DWORD PTR [esp+0x4],eax
  ee9a56:	mov    DWORD PTR [esp],edi
  ee9a59:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  ee9a5e:	test   esi,esi
  ee9a60:	je     ee9a86
  ee9a62:	mov    DWORD PTR [esp+0x8],edi
  ee9a66:	mov    eax,DWORD PTR [esp+0x18]
  ee9a6a:	mov    DWORD PTR [esp+0x4],eax
  ee9a6e:	mov    DWORD PTR [esp],esi
  ee9a71:	mov    DWORD PTR [esp+0xc],0x0
  ee9a79:	call   af6d3e  ; ABHLocaService::GetSkillName
  ee9a7e:	lea    esp,[ebp-0xc]
  ee9a81:	pop    esi
  ee9a82:	pop    edi
  ee9a83:	pop    ebx
  ee9a84:	pop    ebp
  ee9a85:	ret
  ee9a86:	call   1fbc48
  ee9a8b:	call   ebbb41