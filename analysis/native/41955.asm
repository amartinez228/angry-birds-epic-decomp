
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057c002:
  57c002:	push   ebp
  57c003:	mov    ebp,esp
  57c005:	push   ebx
  57c006:	push   esi
  57c007:	and    esp,0xfffffff0
  57c00a:	sub    esp,0x20
  57c00d:	call   57c012
  57c012:	pop    ebx
  57c013:	add    ebx,0x1995f32
  57c019:	mov    esi,DWORD PTR [ebp+0xc]
  57c01c:	mov    DWORD PTR [esp+0x4],0x0
  57c024:	mov    DWORD PTR [esp],0x0
  57c02b:	call   167eb9e  ; UnityEngine.Random::get_value
  57c030:	fstp   DWORD PTR [esp+0x1c]
  57c034:	test   esi,esi
  57c036:	je     57c070
  57c038:	movss  xmm0,DWORD PTR [esp+0x1c]
  57c03e:	movss  DWORD PTR [esp+0x14],xmm0
  57c044:	mov    DWORD PTR [esp],esi
  57c047:	mov    DWORD PTR [esp+0x4],0x0
  57c04f:	call   179b3cb  ; ABH.Shared.Models.Generic.LootTableEntry::get_Probability
  57c054:	fstp   DWORD PTR [esp+0x18]
  57c058:	movss  xmm0,DWORD PTR [esp+0x18]
  57c05e:	ucomiss xmm0,DWORD PTR [esp+0x14]
  57c063:	setae  al
  57c066:	movzx  eax,al
  57c069:	lea    esp,[ebp-0x8]
  57c06c:	pop    esi
  57c06d:	pop    ebx
  57c06e:	pop    ebp
  57c06f:	ret
  57c070:	call   1fbc48
  57c075:	call   540b98