
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008c288a:
  8c288a:	push   ebp
  8c288b:	mov    ebp,esp
  8c288d:	push   ebx
  8c288e:	push   esi
  8c288f:	and    esp,0xfffffff0
  8c2892:	sub    esp,0x10
  8c2895:	call   8c289a
  8c289a:	pop    ebx
  8c289b:	add    ebx,0x164f6aa
  8c28a1:	mov    esi,DWORD PTR [ebp+0x8]
  8c28a4:	mov    eax,DWORD PTR [esi+0x14]
  8c28a7:	test   eax,eax
  8c28a9:	je     8c28d2
  8c28ab:	mov    BYTE PTR [eax+0x74],0x1
  8c28af:	mov    DWORD PTR [esp],esi
  8c28b2:	call   8c28dc  ; CharacterControllerBattleGround::SpawnLevelUpEffect
  8c28b7:	mov    DWORD PTR [esp+0x4],eax
  8c28bb:	mov    DWORD PTR [esp],esi
  8c28be:	mov    DWORD PTR [esp+0x8],0x0
  8c28c6:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  8c28cb:	lea    esp,[ebp-0x8]
  8c28ce:	pop    esi
  8c28cf:	pop    ebx
  8c28d0:	pop    ebp
  8c28d1:	ret
  8c28d2:	call   1fbc48
  8c28d7:	call   8b3f00