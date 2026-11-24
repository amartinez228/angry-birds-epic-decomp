
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eecd1e:
  eecd1e:	push   ebp
  eecd1f:	mov    ebp,esp
  eecd21:	push   ebx
  eecd22:	push   edi
  eecd23:	push   esi
  eecd24:	and    esp,0xfffffff0
  eecd27:	sub    esp,0x10
  eecd2a:	call   eecd2f
  eecd2f:	pop    ebx
  eecd30:	add    ebx,0x1025215
  eecd36:	mov    al,BYTE PTR [ebx+0x627fd]
  eecd3c:	test   al,al
  eecd3e:	jne    eecd57
  eecd40:	lea    eax,[ebx-0x670428]
  eecd46:	mov    eax,DWORD PTR [eax]
  eecd48:	mov    DWORD PTR [esp],eax
  eecd4b:	call   1ca6e8
  eecd50:	mov    BYTE PTR [ebx+0x627fd],0x1
  eecd57:	mov    esi,DWORD PTR [ebp+0x8]
  eecd5a:	lea    edi,[ebx+0x430e4]
  eecd60:	mov    eax,DWORD PTR [edi]
  eecd62:	test   BYTE PTR [eax+0xb2],0x1
  eecd69:	je     eecd7b
  eecd6b:	cmp    DWORD PTR [eax+0x60],0x0
  eecd6f:	jne    eecd7b
  eecd71:	mov    DWORD PTR [esp],eax
  eecd74:	call   1db0b8
  eecd79:	mov    eax,DWORD PTR [edi]
  eecd7b:	mov    eax,DWORD PTR [eax+0x50]
  eecd7e:	mov    eax,DWORD PTR [eax]
  eecd80:	mov    DWORD PTR [esi+0xa0],eax
  eecd86:	mov    DWORD PTR [esp],esi
  eecd89:	call   eb2079  ; ABH.GameDatas.Battle.AttackSkillTemplate::.ctor
  eecd8e:	lea    esp,[ebp-0xc]
  eecd91:	pop    esi
  eecd92:	pop    edi
  eecd93:	pop    ebx
  eecd94:	pop    ebp
  eecd95:	ret