
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00507a5b:
  507a5b:	push   ebp
  507a5c:	mov    ebp,esp
  507a5e:	push   ebx
  507a5f:	push   edi
  507a60:	push   esi
  507a61:	and    esp,0xfffffff0
  507a64:	sub    esp,0x30
  507a67:	call   507a6c
  507a6c:	pop    ebx
  507a6d:	add    ebx,0x1a0a4d8
  507a73:	movss  xmm1,DWORD PTR [ebp+0x18]
  507a78:	mov    esi,DWORD PTR [ebp+0x10]
  507a7b:	movss  xmm0,DWORD PTR [ebp+0xc]
  507a80:	movss  DWORD PTR [esp+0x28],xmm0
  507a86:	mov    al,BYTE PTR [ebx+0x5d4f7]
  507a8c:	test   al,al
  507a8e:	jne    507ab1
  507a90:	lea    eax,[ebx-0x66f52c]
  507a96:	mov    eax,DWORD PTR [eax]
  507a98:	mov    DWORD PTR [esp],eax
  507a9b:	call   1ca6e8
  507aa0:	movss  xmm1,DWORD PTR [ebp+0x18]
  507aa5:	movss  xmm0,DWORD PTR [ebp+0xc]
  507aaa:	mov    BYTE PTR [ebx+0x5d4f7],0x1
  507ab1:	addss  xmm0,xmm1
  507ab5:	movss  DWORD PTR [esp+0x28],xmm0
  507abb:	test   esi,esi
  507abd:	je     507bfc
  507ac3:	lea    eax,[ebx+0x45874]
  507ac9:	mov    DWORD PTR [esp+0x1c],eax
  507acd:	mov    eax,DWORD PTR [eax]
  507acf:	mov    ecx,DWORD PTR [esi]
  507ad1:	movzx  edx,WORD PTR [ecx+0xaa]
  507ad8:	test   edx,edx
  507ada:	je     507aeb
  507adc:	mov    esi,DWORD PTR [ecx+0x4c]
  507adf:	xor    edi,edi
  507ae1:	cmp    DWORD PTR [esi+edi*8],eax
  507ae4:	je     507b0c
  507ae6:	inc    edi
  507ae7:	cmp    edi,edx
  507ae9:	jb     507ae1
  507aeb:	movss  DWORD PTR [esp+0x20],xmm0
  507af1:	mov    DWORD PTR [esp+0x4],eax
  507af5:	mov    esi,DWORD PTR [ebp+0x10]
  507af8:	mov    DWORD PTR [esp],esi
  507afb:	mov    DWORD PTR [esp+0x8],0x10
  507b03:	call   1c1964
  507b08:	mov    ecx,eax
  507b0a:	jmp    507b20
  507b0c:	movss  DWORD PTR [esp+0x20],xmm0
  507b12:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  507b16:	lea    ecx,[ecx+eax*8+0x134]
  507b1d:	mov    esi,DWORD PTR [ebp+0x10]
  507b20:	mov    eax,DWORD PTR [ecx+0x4]
  507b23:	mov    DWORD PTR [esp+0x4],eax
  507b27:	mov    DWORD PTR [esp],esi
  507b2a:	call   DWORD PTR [ecx]
  507b2c:	test   eax,eax
  507b2e:	movss  xmm0,DWORD PTR [esp+0x20]
  507b34:	je     507bea
  507b3a:	mov    eax,DWORD PTR [esp+0x1c]
  507b3e:	mov    eax,DWORD PTR [eax]
  507b40:	mov    ecx,DWORD PTR [esi]
  507b42:	movzx  edx,WORD PTR [ecx+0xaa]
  507b49:	test   edx,edx
  507b4b:	je     507b5c
  507b4d:	mov    esi,DWORD PTR [ecx+0x4c]
  507b50:	xor    edi,edi
  507b52:	cmp    DWORD PTR [esi+edi*8],eax
  507b55:	je     507b77
  507b57:	inc    edi
  507b58:	cmp    edi,edx
  507b5a:	jb     507b52
  507b5c:	mov    DWORD PTR [esp+0x4],eax
  507b60:	mov    edi,DWORD PTR [ebp+0x10]
  507b63:	mov    DWORD PTR [esp],edi
  507b66:	mov    DWORD PTR [esp+0x8],0x10
  507b6e:	call   1c1964
  507b73:	mov    ecx,eax
  507b75:	jmp    507b85
  507b77:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  507b7b:	lea    ecx,[ecx+eax*8+0x134]
  507b82:	mov    edi,DWORD PTR [ebp+0x10]
  507b85:	mov    eax,DWORD PTR [ecx+0x4]
  507b88:	mov    DWORD PTR [esp+0x4],eax
  507b8c:	mov    DWORD PTR [esp],edi
  507b8f:	call   DWORD PTR [ecx]
  507b91:	test   eax,eax
  507b93:	je     507bfc
  507b95:	lea    ecx,[ebx+0x4a0c8]
  507b9b:	mov    ecx,DWORD PTR [ecx]
  507b9d:	mov    DWORD PTR [esp+0x4],ecx
  507ba1:	mov    DWORD PTR [esp],eax
  507ba4:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  507ba9:	test   eax,eax
  507bab:	je     507bfc
  507bad:	mov    esi,DWORD PTR [ebp+0x8]
  507bb0:	mov    DWORD PTR [esp],eax
  507bb3:	mov    DWORD PTR [esp+0x4],0x0
  507bbb:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  507bc0:	lea    ecx,[esp+0x28]
  507bc4:	mov    DWORD PTR [esp+0x14],ecx
  507bc8:	mov    DWORD PTR [esp+0xc],edi
  507bcc:	mov    DWORD PTR [esp+0x8],edi
  507bd0:	mov    DWORD PTR [esp+0x4],eax
  507bd4:	mov    DWORD PTR [esp],esi
  507bd7:	mov    DWORD PTR [esp+0x10],0x0
  507bdf:	call   507c06  ; ABH.Services.Logic.BattleService::ApplyPerkOnAttack
  507be4:	movss  xmm0,DWORD PTR [esp+0x28]
  507bea:	movss  DWORD PTR [esp+0x24],xmm0
  507bf0:	fld    DWORD PTR [esp+0x24]
  507bf4:	lea    esp,[ebp-0xc]
  507bf7:	pop    esi
  507bf8:	pop    edi
  507bf9:	pop    ebx
  507bfa:	pop    ebp
  507bfb:	ret
  507bfc:	call   1fbc48
  507c01:	call   540b98