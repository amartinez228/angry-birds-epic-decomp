
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006cde68:
  6cde68:	push   ebp
  6cde69:	mov    ebp,esp
  6cde6b:	push   ebx
  6cde6c:	push   edi
  6cde6d:	push   esi
  6cde6e:	and    esp,0xfffffff0
  6cde71:	sub    esp,0x30
  6cde74:	call   6cde79
  6cde79:	pop    ebx
  6cde7a:	add    ebx,0x18440cb
  6cde80:	mov    esi,DWORD PTR [ebp+0x8]
  6cde83:	mov    al,BYTE PTR [ebx+0x5f6ad]
  6cde89:	test   al,al
  6cde8b:	jne    6cdea4
  6cde8d:	lea    eax,[ebx-0x66d29c]
  6cde93:	mov    eax,DWORD PTR [eax]
  6cde95:	mov    DWORD PTR [esp],eax
  6cde98:	call   1ca6e8
  6cde9d:	mov    BYTE PTR [ebx+0x5f6ad],0x1
  6cdea4:	mov    DWORD PTR [esp+0x28],0x0
  6cdeac:	lea    edi,[ebx+0x4a830]
  6cdeb2:	mov    eax,DWORD PTR [edi]
  6cdeb4:	mov    DWORD PTR [esp+0x4],eax
  6cdeb8:	mov    DWORD PTR [esp],esi
  6cdebb:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cdec0:	test   eax,eax
  6cdec2:	je     6ce09d
  6cdec8:	mov    DWORD PTR [esp],eax
  6cdecb:	mov    DWORD PTR [esp+0x4],0x0
  6cded3:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cded8:	mov    esi,eax
  6cdeda:	call   6ce0dd  ; ABH.GameDatas.ClassItemGameData::MasteryMaxRank
  6cdedf:	mov    ecx,eax
  6cdee1:	mov    eax,0x7fffffff
  6cdee6:	cmp    esi,ecx
  6cdee8:	jge    6ce095
  6cdeee:	mov    eax,DWORD PTR [edi]
  6cdef0:	mov    DWORD PTR [esp+0x4],eax
  6cdef4:	mov    eax,DWORD PTR [ebp+0x8]
  6cdef7:	mov    DWORD PTR [esp],eax
  6cdefa:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cdeff:	test   eax,eax
  6cdf01:	je     6ce09d
  6cdf07:	mov    DWORD PTR [esp],eax
  6cdf0a:	mov    DWORD PTR [esp+0x4],0x0
  6cdf12:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cdf17:	mov    ecx,eax
  6cdf19:	mov    eax,0x989680
  6cdf1e:	test   ecx,ecx
  6cdf20:	je     6ce095
  6cdf26:	lea    eax,[ebx+0x45820]
  6cdf2c:	mov    eax,DWORD PTR [eax]
  6cdf2e:	test   BYTE PTR [eax+0xb2],0x1
  6cdf35:	je     6cdf45
  6cdf37:	cmp    DWORD PTR [eax+0x60],0x0
  6cdf3b:	jne    6cdf45
  6cdf3d:	mov    DWORD PTR [esp],eax
  6cdf40:	call   1db0b8
  6cdf45:	mov    DWORD PTR [esp+0x4],0x0
  6cdf4d:	mov    DWORD PTR [esp],0x0
  6cdf54:	call   107cf95  ; DIContainerBalancing::get_Service
  6cdf59:	mov    esi,eax
  6cdf5b:	mov    eax,DWORD PTR [edi]
  6cdf5d:	mov    DWORD PTR [esp+0x4],eax
  6cdf61:	mov    eax,DWORD PTR [ebp+0x8]
  6cdf64:	mov    DWORD PTR [esp],eax
  6cdf67:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  6cdf6c:	test   eax,eax
  6cdf6e:	je     6ce09d
  6cdf74:	mov    DWORD PTR [esp],eax
  6cdf77:	mov    DWORD PTR [esp+0x4],0x0
  6cdf7f:	call   179be79  ; ABH.Shared.Models.InventoryItems.ClassItemData::get_Level
  6cdf84:	mov    DWORD PTR [esp+0x28],eax
  6cdf88:	lea    eax,[ebx+0x512f4]  ; literal "00"
  6cdf8e:	mov    eax,DWORD PTR [eax]
  6cdf90:	mov    DWORD PTR [esp+0x4],eax
  6cdf94:	lea    eax,[esp+0x28]
  6cdf98:	mov    DWORD PTR [esp],eax
  6cdf9b:	mov    DWORD PTR [esp+0x8],0x0
  6cdfa3:	call   fea004
  6cdfa8:	mov    edi,eax
  6cdfaa:	lea    eax,[ebx+0x430e4]
  6cdfb0:	mov    eax,DWORD PTR [eax]
  6cdfb2:	test   BYTE PTR [eax+0xb2],0x1
  6cdfb9:	je     6cdfc9
  6cdfbb:	cmp    DWORD PTR [eax+0x60],0x0
  6cdfbf:	jne    6cdfc9
  6cdfc1:	mov    DWORD PTR [esp],eax
  6cdfc4:	call   1db0b8
  6cdfc9:	lea    eax,[ebx+0x56a88]  ; literal "Level_"
  6cdfcf:	mov    eax,DWORD PTR [eax]
  6cdfd1:	mov    DWORD PTR [esp+0x8],edi
  6cdfd5:	mov    DWORD PTR [esp+0x4],eax
  6cdfd9:	mov    DWORD PTR [esp+0xc],0x0
  6cdfe1:	mov    DWORD PTR [esp],0x0
  6cdfe8:	call   ca462a  ; System.String::Concat
  6cdfed:	mov    DWORD PTR [esp+0x24],eax
  6cdff1:	test   esi,esi
  6cdff3:	je     6ce09d
  6cdff9:	lea    eax,[ebx+0x4a834]
  6cdfff:	mov    eax,DWORD PTR [eax]
  6ce001:	mov    DWORD PTR [esp+0x1c],eax
  6ce005:	mov    ecx,DWORD PTR [eax+0xc]
  6ce008:	movzx  eax,WORD PTR [eax+0x2c]
  6ce00c:	mov    DWORD PTR [esp+0x18],eax
  6ce010:	mov    edx,DWORD PTR [esi]
  6ce012:	mov    DWORD PTR [esp+0x20],esi
  6ce016:	movzx  esi,WORD PTR [edx+0xaa]
  6ce01d:	test   esi,esi
  6ce01f:	je     6ce030
  6ce021:	mov    eax,DWORD PTR [edx+0x4c]
  6ce024:	xor    edi,edi
  6ce026:	cmp    DWORD PTR [eax+edi*8],ecx
  6ce029:	je     6ce04a
  6ce02b:	inc    edi
  6ce02c:	cmp    edi,esi
  6ce02e:	jb     6ce026
  6ce030:	mov    eax,DWORD PTR [esp+0x18]
  6ce034:	mov    DWORD PTR [esp+0x8],eax
  6ce038:	mov    DWORD PTR [esp+0x4],ecx
  6ce03c:	mov    esi,DWORD PTR [esp+0x20]
  6ce040:	mov    DWORD PTR [esp],esi
  6ce043:	call   1c1964
  6ce048:	jmp    6ce05d
  6ce04a:	mov    ecx,DWORD PTR [esp+0x18]
  6ce04e:	add    ecx,DWORD PTR [eax+edi*8+0x4]
  6ce052:	lea    eax,[edx+ecx*8+0xb4]
  6ce059:	mov    esi,DWORD PTR [esp+0x20]
  6ce05d:	mov    eax,DWORD PTR [eax+0x4]
  6ce060:	mov    ecx,DWORD PTR [esp+0x1c]
  6ce064:	mov    DWORD PTR [esp+0x4],ecx
  6ce068:	mov    DWORD PTR [esp],eax
  6ce06b:	call   1da450
  6ce070:	mov    DWORD PTR [esp+0x8],eax
  6ce074:	mov    ecx,DWORD PTR [esp+0x24]
  6ce078:	mov    DWORD PTR [esp+0x4],ecx
  6ce07c:	mov    DWORD PTR [esp],esi
  6ce07f:	call   DWORD PTR [eax]
  6ce081:	test   eax,eax
  6ce083:	je     6ce09d
  6ce085:	mov    DWORD PTR [esp],eax
  6ce088:	mov    DWORD PTR [esp+0x4],0x0
  6ce090:	call   1700ff4  ; ABH.Shared.BalancingData.ExperienceMasteryBalancingData::get_Experience
  6ce095:	lea    esp,[ebp-0xc]
  6ce098:	pop    esi
  6ce099:	pop    edi
  6ce09a:	pop    ebx
  6ce09b:	pop    ebp
  6ce09c:	ret
  6ce09d:	call   1fbc48
  6ce0a2:	call   6b106a