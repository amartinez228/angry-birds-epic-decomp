
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eee04c:
  eee04c:	push   ebp
  eee04d:	mov    ebp,esp
  eee04f:	push   ebx
  eee050:	push   edi
  eee051:	push   esi
  eee052:	and    esp,0xfffffff0
  eee055:	sub    esp,0x10
  eee058:	call   eee05d
  eee05d:	pop    ebx
  eee05e:	add    ebx,0x1023ee7
  eee064:	mov    al,BYTE PTR [ebx+0x62803]
  eee06a:	test   al,al
  eee06c:	jne    eee085
  eee06e:	lea    eax,[ebx-0x670414]
  eee074:	mov    eax,DWORD PTR [eax]
  eee076:	mov    DWORD PTR [esp],eax
  eee079:	call   1ca6e8
  eee07e:	mov    BYTE PTR [ebx+0x62803],0x1
  eee085:	mov    edi,DWORD PTR [ebp+0x8]
  eee088:	lea    esi,[ebx+0x430e4]
  eee08e:	mov    eax,DWORD PTR [esi]
  eee090:	test   BYTE PTR [eax+0xb2],0x1
  eee097:	je     eee0a9
  eee099:	cmp    DWORD PTR [eax+0x60],0x0
  eee09d:	jne    eee0a9
  eee09f:	mov    DWORD PTR [esp],eax
  eee0a2:	call   1db0b8
  eee0a7:	mov    eax,DWORD PTR [esi]
  eee0a9:	mov    eax,DWORD PTR [eax+0x50]
  eee0ac:	mov    eax,DWORD PTR [eax]
  eee0ae:	mov    DWORD PTR [edi+0xa0],eax
  eee0b4:	mov    DWORD PTR [edi+0xac],0x3f800000
  eee0be:	lea    eax,[ebx+0x45890]
  eee0c4:	mov    eax,DWORD PTR [eax]
  eee0c6:	mov    DWORD PTR [esp],eax
  eee0c9:	call   20bfb2
  eee0ce:	mov    esi,eax
  eee0d0:	lea    eax,[ebx+0x4a074]
  eee0d6:	mov    eax,DWORD PTR [eax]
  eee0d8:	mov    DWORD PTR [esp+0x4],eax
  eee0dc:	mov    DWORD PTR [esp],esi
  eee0df:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  eee0e4:	mov    DWORD PTR [edi+0xb4],esi
  eee0ea:	mov    DWORD PTR [esp],edi
  eee0ed:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
  eee0f2:	lea    esp,[ebp-0xc]
  eee0f5:	pop    esi
  eee0f6:	pop    edi
  eee0f7:	pop    ebx
  eee0f8:	pop    ebp
  eee0f9:	ret