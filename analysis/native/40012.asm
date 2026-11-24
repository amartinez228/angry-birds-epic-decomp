
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00aba854:
  aba854:	push   ebp
  aba855:	mov    ebp,esp
  aba857:	push   ebx
  aba858:	push   esi
  aba859:	and    esp,0xfffffff0
  aba85c:	sub    esp,0x10
  aba85f:	call   aba864
  aba864:	pop    ebx
  aba865:	add    ebx,0x14576e0
  aba86b:	mov    esi,DWORD PTR [ebp+0x8]
  aba86e:	mov    al,BYTE PTR [ebx+0x60d86]
  aba874:	test   al,al
  aba876:	jne    aba88f
  aba878:	lea    eax,[ebx-0x6668a0]
  aba87e:	mov    eax,DWORD PTR [eax]
  aba880:	mov    DWORD PTR [esp],eax
  aba883:	call   1ca6e8
  aba888:	mov    BYTE PTR [ebx+0x60d86],0x1
  aba88f:	lea    eax,[ebx+0x57e84]  ; literal "ReviveSingleBirdsRequirement"
  aba895:	mov    eax,DWORD PTR [eax]
  aba897:	mov    DWORD PTR [esp+0x4],eax
  aba89b:	mov    DWORD PTR [esp],esi
  aba89e:	call   ab8cad  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::GetBalancingData
  aba8a3:	test   eax,eax
  aba8a5:	je     aba8be
  aba8a7:	mov    DWORD PTR [esp],eax
  aba8aa:	mov    DWORD PTR [esp+0x4],0x0
  aba8b2:	call   17011eb  ; ABH.Shared.BalancingData.GameConstantsBalancingData::get_RequirementValue
  aba8b7:	lea    esp,[ebp-0x8]
  aba8ba:	pop    esi
  aba8bb:	pop    ebx
  aba8bc:	pop    ebp
  aba8bd:	ret
  aba8be:	call   1fbc48
  aba8c3:	call   ab1162