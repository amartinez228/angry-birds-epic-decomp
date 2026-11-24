
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

013fcdc9:
 13fcdc9:	push   ebp
 13fcdca:	mov    ebp,esp
 13fcdcc:	push   ebx
 13fcdcd:	push   edi
 13fcdce:	push   esi
 13fcdcf:	and    esp,0xfffffff0
 13fcdd2:	sub    esp,0x20
 13fcdd5:	call   13fcdda
 13fcdda:	pop    ebx
 13fcddb:	add    ebx,0xb1516a
 13fcde1:	mov    ecx,DWORD PTR [ebp+0xc]
 13fcde4:	mov    edx,DWORD PTR [ebp+0x10]
 13fcde7:	mov    esi,DWORD PTR [ebp+0x14]
 13fcdea:	mov    al,BYTE PTR [ebp+0x18]
 13fcded:	movzx  edi,BYTE PTR [ebp+0x1c]
 13fcdf1:	mov    DWORD PTR [esp+0x14],edi
 13fcdf5:	movzx  eax,al
 13fcdf8:	mov    DWORD PTR [esp+0x10],eax
 13fcdfc:	mov    DWORD PTR [esp+0xc],esi
 13fce00:	mov    DWORD PTR [esp+0x8],edx
 13fce04:	mov    DWORD PTR [esp+0x4],ecx
 13fce08:	mov    eax,DWORD PTR [ebp+0x8]
 13fce0b:	mov    DWORD PTR [esp],eax
 13fce0e:	mov    DWORD PTR [esp+0x18],0x0
 13fce16:	call   eb4542  ; ABH.GameDatas.Battle.AttackSkillTemplate::DoAction
 13fce1b:	lea    esp,[ebp-0xc]
 13fce1e:	pop    esi
 13fce1f:	pop    edi
 13fce20:	pop    ebx
 13fce21:	pop    ebp
 13fce22:	ret