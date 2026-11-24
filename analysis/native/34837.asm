
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec42fc:
  ec42fc:	push   ebp
  ec42fd:	mov    ebp,esp
  ec42ff:	push   ebx
  ec4300:	push   edi
  ec4301:	push   esi
  ec4302:	and    esp,0xfffffff0
  ec4305:	sub    esp,0x10
  ec4308:	call   ec430d
  ec430d:	pop    ebx
  ec430e:	add    ebx,0x104dc37
  ec4314:	mov    edi,DWORD PTR [ebp+0x8]
  ec4317:	mov    al,BYTE PTR [ebx+0x626ff]
  ec431d:	test   al,al
  ec431f:	jne    ec4338
  ec4321:	lea    eax,[ebx-0x66f030]
  ec4327:	mov    eax,DWORD PTR [eax]
  ec4329:	mov    DWORD PTR [esp],eax
  ec432c:	call   1ca6e8
  ec4331:	mov    BYTE PTR [ebx+0x626ff],0x1
  ec4338:	lea    eax,[ebx+0x458b8]
  ec433e:	mov    eax,DWORD PTR [eax]
  ec4340:	mov    DWORD PTR [esp],eax
  ec4343:	call   20bfb2
  ec4348:	mov    esi,eax
  ec434a:	lea    eax,[ebx+0x4a1cc]
  ec4350:	mov    eax,DWORD PTR [eax]
  ec4352:	mov    DWORD PTR [esp+0x4],eax
  ec4356:	mov    DWORD PTR [esp],esi
  ec4359:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec435e:	mov    DWORD PTR [edi+0x10],esi
  ec4361:	lea    eax,[ebx+0x43ba4]
  ec4367:	mov    eax,DWORD PTR [eax]
  ec4369:	mov    DWORD PTR [esp],eax
  ec436c:	call   20bfb2
  ec4371:	mov    esi,eax
  ec4373:	lea    eax,[ebx+0x48c1c]
  ec4379:	mov    eax,DWORD PTR [eax]
  ec437b:	mov    DWORD PTR [esp+0x4],eax
  ec437f:	mov    DWORD PTR [esp],esi
  ec4382:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec4387:	mov    DWORD PTR [edi+0x24],esi
  ec438a:	mov    BYTE PTR [edi+0x2c],0x1
  ec438e:	lea    eax,[ebx+0x458c4]
  ec4394:	mov    eax,DWORD PTR [eax]
  ec4396:	mov    DWORD PTR [esp],eax
  ec4399:	call   20bfb2
  ec439e:	mov    esi,eax
  ec43a0:	lea    eax,[ebx+0x4a1d8]
  ec43a6:	mov    eax,DWORD PTR [eax]
  ec43a8:	mov    DWORD PTR [esp+0x4],eax
  ec43ac:	mov    DWORD PTR [esp],esi
  ec43af:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ec43b4:	mov    DWORD PTR [edi+0x3c],esi
  ec43b7:	lea    eax,[ebx+0x45210]
  ec43bd:	mov    eax,DWORD PTR [eax]
  ec43bf:	mov    DWORD PTR [esp],eax
  ec43c2:	call   20bfb2
  ec43c7:	mov    esi,eax
  ec43c9:	lea    eax,[ebx+0x496cc]
  ec43cf:	mov    eax,DWORD PTR [eax]
  ec43d1:	mov    DWORD PTR [esp+0x4],eax
  ec43d5:	mov    DWORD PTR [esp],esi
  ec43d8:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ec43dd:	mov    DWORD PTR [edi+0x40],esi
  ec43e0:	mov    DWORD PTR [esp],edi
  ec43e3:	mov    DWORD PTR [esp+0x4],0x0
  ec43eb:	call   124632e  ; System.Object::.ctor
  ec43f0:	lea    esp,[ebp-0xc]
  ec43f3:	pop    esi
  ec43f4:	pop    edi
  ec43f5:	pop    ebx
  ec43f6:	pop    ebp
  ec43f7:	ret