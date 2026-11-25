
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eea7fc:
  eea7fc:	push   ebp
  eea7fd:	mov    ebp,esp
  eea7ff:	push   ebx
  eea800:	push   edi
  eea801:	push   esi
  eea802:	and    esp,0xfffffff0
  eea805:	sub    esp,0x20
  eea808:	call   eea80d
  eea80d:	pop    ebx
  eea80e:	add    ebx,0x1027737
  eea814:	mov    al,BYTE PTR [ebx+0x627f0]
  eea81a:	test   al,al
  eea81c:	jne    eea835
  eea81e:	lea    eax,[ebx-0x670458]
  eea824:	mov    eax,DWORD PTR [eax]
  eea826:	mov    DWORD PTR [esp],eax
  eea829:	call   1ca6e8
  eea82e:	mov    BYTE PTR [ebx+0x627f0],0x1
  eea835:	mov    edi,DWORD PTR [ebp+0x8]
  eea838:	lea    eax,[ebx+0x4584c]
  eea83e:	mov    eax,DWORD PTR [eax]
  eea840:	test   BYTE PTR [eax+0xb2],0x1
  eea847:	je     eea857
  eea849:	cmp    DWORD PTR [eax+0x60],0x0
  eea84d:	jne    eea857
  eea84f:	mov    DWORD PTR [esp],eax
  eea852:	call   1db0b8
  eea857:	mov    DWORD PTR [esp+0x4],0x0
  eea85f:	mov    DWORD PTR [esp],0x0
  eea866:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
  eea86b:	mov    esi,eax
  eea86d:	mov    eax,DWORD PTR [edi+0x8]
  eea870:	test   eax,eax
  eea872:	je     eea8d6
  eea874:	mov    DWORD PTR [esp],eax
  eea877:	mov    DWORD PTR [esp+0x4],0x0
  eea87f:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
  eea884:	mov    DWORD PTR [esp+0x18],eax
  eea888:	lea    eax,[ebx+0x44d10]
  eea88e:	mov    eax,DWORD PTR [eax]
  eea890:	mov    DWORD PTR [esp],eax
  eea893:	call   20bfb2
  eea898:	mov    edi,eax
  eea89a:	lea    eax,[ebx+0x49298]
  eea8a0:	mov    eax,DWORD PTR [eax]
  eea8a2:	mov    DWORD PTR [esp+0x4],eax
  eea8a6:	mov    DWORD PTR [esp],edi
  eea8a9:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  eea8ae:	test   esi,esi
  eea8b0:	je     eea8d6
  eea8b2:	mov    DWORD PTR [esp+0x8],edi
  eea8b6:	mov    eax,DWORD PTR [esp+0x18]
  eea8ba:	mov    DWORD PTR [esp+0x4],eax
  eea8be:	mov    DWORD PTR [esp],esi
  eea8c1:	mov    DWORD PTR [esp+0xc],0x0
  eea8c9:	call   af6d3e  ; ABHLocaService::GetSkillName
  eea8ce:	lea    esp,[ebp-0xc]
  eea8d1:	pop    esi
  eea8d2:	pop    edi
  eea8d3:	pop    ebx
  eea8d4:	pop    ebp
  eea8d5:	ret
  eea8d6:	call   1fbc48
  eea8db:	call   ebbb41