
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006ccef0:
  6ccef0:	push   ebp
  6ccef1:	mov    ebp,esp
  6ccef3:	push   ebx
  6ccef4:	push   edi
  6ccef5:	push   esi
  6ccef6:	and    esp,0xfffffff0
  6ccef9:	sub    esp,0x10
  6ccefc:	call   6ccf01
  6ccf01:	pop    ebx
  6ccf02:	add    ebx,0x1845043
  6ccf08:	mov    edi,DWORD PTR [ebp+0x8]
  6ccf0b:	mov    al,BYTE PTR [ebx+0x5f6a6]
  6ccf11:	test   al,al
  6ccf13:	jne    6ccf2c
  6ccf15:	lea    eax,[ebx-0x66d2cc]
  6ccf1b:	mov    eax,DWORD PTR [eax]
  6ccf1d:	mov    DWORD PTR [esp],eax
  6ccf20:	call   1ca6e8
  6ccf25:	mov    BYTE PTR [ebx+0x5f6a6],0x1
  6ccf2c:	mov    esi,DWORD PTR [edi+0x2c]
  6ccf2f:	test   esi,esi
  6ccf31:	jne    6ccf81
  6ccf33:	lea    eax,[ebx+0x4a250]
  6ccf39:	mov    eax,DWORD PTR [eax]
  6ccf3b:	mov    DWORD PTR [esp+0x4],eax
  6ccf3f:	mov    DWORD PTR [esp],edi
  6ccf42:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  6ccf47:	test   eax,eax
  6ccf49:	je     6ccf8b
  6ccf4b:	mov    DWORD PTR [esp],eax
  6ccf4e:	mov    DWORD PTR [esp+0x4],0x0
  6ccf56:	call   16ff3be  ; ABH.Shared.BalancingData.ClassItemBalancingData::get_Mastery
  6ccf5b:	mov    edi,eax
  6ccf5d:	lea    eax,[ebx+0x45e50]
  6ccf63:	mov    eax,DWORD PTR [eax]
  6ccf65:	mov    DWORD PTR [esp],eax
  6ccf68:	call   20bfb2
  6ccf6d:	mov    esi,eax
  6ccf6f:	mov    DWORD PTR [esp+0x4],edi
  6ccf73:	mov    DWORD PTR [esp],esi
  6ccf76:	call   6ccf95  ; ABH.GameDatas.MasteryItemGameData::.ctor
  6ccf7b:	mov    eax,DWORD PTR [ebp+0x8]
  6ccf7e:	mov    DWORD PTR [eax+0x2c],esi
  6ccf81:	mov    eax,esi
  6ccf83:	lea    esp,[ebp-0xc]
  6ccf86:	pop    esi
  6ccf87:	pop    edi
  6ccf88:	pop    ebx
  6ccf89:	pop    ebp
  6ccf8a:	ret
  6ccf8b:	call   1fbc48
  6ccf90:	call   6b106a