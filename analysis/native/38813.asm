
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006bef2f:
  6bef2f:	push   ebp
  6bef30:	mov    ebp,esp
  6bef32:	push   ebx
  6bef33:	push   edi
  6bef34:	push   esi
  6bef35:	and    esp,0xfffffff0
  6bef38:	sub    esp,0x20
  6bef3b:	call   6bef40
  6bef40:	pop    ebx
  6bef41:	add    ebx,0x1853004
  6bef47:	mov    edi,DWORD PTR [ebp+0xc]
  6bef4a:	mov    esi,DWORD PTR [ebp+0x8]
  6bef4d:	mov    al,BYTE PTR [ebx+0x5f61e]
  6bef53:	test   al,al
  6bef55:	jne    6bef6e
  6bef57:	lea    eax,[ebx-0x659974]
  6bef5d:	mov    eax,DWORD PTR [eax]
  6bef5f:	mov    DWORD PTR [esp],eax
  6bef62:	call   1ca6e8
  6bef67:	mov    BYTE PTR [ebx+0x5f61e],0x1
  6bef6e:	mov    DWORD PTR [esp+0x18],0x0
  6bef76:	mov    DWORD PTR [esp+0x4],edi
  6bef7a:	mov    DWORD PTR [esp],esi
  6bef7d:	mov    DWORD PTR [esp+0x8],0x0
  6bef85:	call   eb2518  ; ABH.GameDatas.Battle.SkillBattleDataBase::Init
  6bef8a:	mov    DWORD PTR [esp],esi
  6bef8d:	mov    DWORD PTR [esp+0x4],0x0
  6bef95:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bef9a:	test   eax,eax
  6bef9c:	je     6bf07e
  6befa2:	mov    eax,DWORD PTR [eax+0x8]
  6befa5:	test   eax,eax
  6befa7:	je     6bf07e
  6befad:	mov    DWORD PTR [esp],eax
  6befb0:	mov    DWORD PTR [esp+0x4],0x0
  6befb8:	call   1703170  ; ABH.Shared.BalancingData.SkillBalancingData::get_EffectDuration
  6befbd:	mov    DWORD PTR [esi+0x3c],eax
  6befc0:	mov    DWORD PTR [esp+0x18],0x0
  6befc8:	mov    DWORD PTR [esp],esi
  6befcb:	mov    DWORD PTR [esp+0x4],0x0
  6befd3:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6befd8:	test   eax,eax
  6befda:	je     6bf07e
  6befe0:	mov    DWORD PTR [esp],eax
  6befe3:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  6befe8:	test   eax,eax
  6befea:	je     6bf07e
  6beff0:	lea    ecx,[ebx+0x56bdc]
  6beff6:	mov    ecx,DWORD PTR [ecx]
  6beff8:	lea    edx,[ebx+0x4a034]
  6beffe:	mov    edx,DWORD PTR [edx]
  6bf000:	mov    DWORD PTR [esp+0xc],edx
  6bf004:	lea    edx,[esp+0x18]
  6bf008:	mov    DWORD PTR [esp+0x8],edx
  6bf00c:	mov    DWORD PTR [esp+0x4],ecx
  6bf010:	mov    DWORD PTR [esp],eax
  6bf013:	call   61f168
  6bf018:	movss  xmm0,DWORD PTR [esp+0x18]
  6bf01e:	movaps xmm1,xmm0
  6bf021:	divss  xmm1,DWORD PTR [ebx-0x64fc2c]
  6bf029:	movss  DWORD PTR [esi+0x40],xmm1
  6bf02e:	movss  DWORD PTR [esi+0x44],xmm0
  6bf033:	mov    DWORD PTR [esp],esi
  6bf036:	mov    DWORD PTR [esp+0x4],0x0
  6bf03e:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
  6bf043:	test   eax,eax
  6bf045:	je     6bf07e
  6bf047:	mov    DWORD PTR [esp],eax
  6bf04a:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  6bf04f:	test   eax,eax
  6bf051:	je     6bf07e
  6bf053:	lea    ecx,[ebx+0x56df4]
  6bf059:	mov    ecx,DWORD PTR [ecx]
  6bf05b:	lea    edx,[ebx+0x4a014]
  6bf061:	mov    edx,DWORD PTR [edx]
  6bf063:	mov    DWORD PTR [esp+0x8],edx
  6bf067:	mov    DWORD PTR [esp+0x4],ecx
  6bf06b:	mov    DWORD PTR [esp],eax
  6bf06e:	call   61e326
  6bf073:	mov    BYTE PTR [esi+0x48],al
  6bf076:	lea    esp,[ebp-0xc]
  6bf079:	pop    esi
  6bf07a:	pop    edi
  6bf07b:	pop    ebx
  6bf07c:	pop    ebp
  6bf07d:	ret
  6bf07e:	call   1fbc48
  6bf083:	call   6b106a