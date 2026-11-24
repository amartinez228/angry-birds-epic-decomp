
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00aba50a:
  aba50a:	push   ebp
  aba50b:	mov    ebp,esp
  aba50d:	push   ebx
  aba50e:	push   esi
  aba50f:	and    esp,0xfffffff0
  aba512:	sub    esp,0x10
  aba515:	call   aba51a
  aba51a:	pop    ebx
  aba51b:	add    ebx,0x1457a2a
  aba521:	mov    esi,DWORD PTR [ebp+0x8]
  aba524:	mov    al,BYTE PTR [ebx+0x60d7f]
  aba52a:	test   al,al
  aba52c:	jne    aba545
  aba52e:	lea    eax,[ebx-0x6668a4]
  aba534:	mov    eax,DWORD PTR [eax]
  aba536:	mov    DWORD PTR [esp],eax
  aba539:	call   1ca6e8
  aba53e:	mov    BYTE PTR [ebx+0x60d7f],0x1
  aba545:	lea    eax,[ebx+0x57e68]  ; literal "ReviveBirdsRequirement"
  aba54b:	mov    eax,DWORD PTR [eax]
  aba54d:	mov    DWORD PTR [esp+0x4],eax
  aba551:	mov    DWORD PTR [esp],esi
  aba554:	call   ab8cad  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::GetBalancingData
  aba559:	test   eax,eax
  aba55b:	je     aba574
  aba55d:	mov    DWORD PTR [esp],eax
  aba560:	mov    DWORD PTR [esp+0x4],0x0
  aba568:	call   17011eb  ; ABH.Shared.BalancingData.GameConstantsBalancingData::get_RequirementValue
  aba56d:	lea    esp,[ebp-0x8]
  aba570:	pop    esi
  aba571:	pop    ebx
  aba572:	pop    ebp
  aba573:	ret
  aba574:	call   1fbc48
  aba579:	call   ab1162