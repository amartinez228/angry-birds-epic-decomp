
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00eea8e0:
  eea8e0:	push   ebp
  eea8e1:	mov    ebp,esp
  eea8e3:	push   ebx
  eea8e4:	push   edi
  eea8e5:	push   esi
  eea8e6:	and    esp,0xfffffff0
  eea8e9:	sub    esp,0x40
  eea8ec:	call   eea8f1
  eea8f1:	pop    ebx
  eea8f2:	add    ebx,0x1027653
  eea8f8:	mov    esi,DWORD PTR [ebp+0x8]
  eea8fb:	mov    al,BYTE PTR [ebx+0x627f1]
  eea901:	test   al,al
  eea903:	jne    eea91c
  eea905:	lea    eax,[ebx-0x670450]
  eea90b:	mov    eax,DWORD PTR [eax]
  eea90d:	mov    DWORD PTR [esp],eax
  eea910:	call   1ca6e8
  eea915:	mov    BYTE PTR [ebx+0x627f1],0x1
  eea91c:	movss  xmm2,DWORD PTR [ebp+0xc]
  eea921:	xorps  xmm0,xmm0
  eea924:	movaps XMMWORD PTR [esp+0x20],xmm0
  eea929:	mov    DWORD PTR [esp+0x30],0x0
  eea931:	movss  xmm0,DWORD PTR [esi+0x90]
  eea939:	xorps  xmm1,xmm1
  eea93c:	ucomiss xmm0,xmm1
  eea93f:	jbe    eeaabb
  eea945:	mov    ecx,DWORD PTR [ebp+0x18]
  eea948:	test   ecx,ecx
  eea94a:	je     eeaacd
  eea950:	lea    eax,[ebx+0x45874]
  eea956:	mov    eax,DWORD PTR [eax]
  eea958:	mov    ecx,DWORD PTR [ecx]
  eea95a:	movzx  edx,WORD PTR [ecx+0xaa]
  eea961:	test   edx,edx
  eea963:	je     eea974
  eea965:	mov    edi,DWORD PTR [ecx+0x4c]
  eea968:	xor    esi,esi
  eea96a:	cmp    DWORD PTR [edi+esi*8],eax
  eea96d:	je     eea98f
  eea96f:	inc    esi
  eea970:	cmp    esi,edx
  eea972:	jb     eea96a
  eea974:	mov    DWORD PTR [esp+0x4],eax
  eea978:	mov    esi,DWORD PTR [ebp+0x18]
  eea97b:	mov    DWORD PTR [esp],esi
  eea97e:	mov    DWORD PTR [esp+0x8],0x31
  eea986:	call   1c1964
  eea98b:	mov    ecx,eax
  eea98d:	jmp    eea99d
  eea98f:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  eea993:	lea    ecx,[ecx+eax*8+0x23c]
  eea99a:	mov    esi,DWORD PTR [ebp+0x18]
  eea99d:	mov    eax,DWORD PTR [ecx+0x4]
  eea9a0:	mov    DWORD PTR [esp+0x4],eax
  eea9a4:	mov    DWORD PTR [esp],esi
  eea9a7:	call   DWORD PTR [ecx]
  eea9a9:	test   eax,eax
  eea9ab:	je     eeaacd
  eea9b1:	lea    ecx,[ebx+0x4a2a0]
  eea9b7:	mov    ecx,DWORD PTR [ecx]
  eea9b9:	mov    DWORD PTR [esp+0x4],ecx
  eea9bd:	mov    DWORD PTR [esp],eax
  eea9c0:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  eea9c5:	test   eax,eax
  eea9c7:	je     eeaacd
  eea9cd:	lea    ecx,[ebx+0x4a2a4]
  eea9d3:	mov    ecx,DWORD PTR [ecx]
  eea9d5:	mov    DWORD PTR [esp+0x8],ecx
  eea9d9:	mov    DWORD PTR [esp+0x4],eax
  eea9dd:	lea    eax,[esp+0x20]
  eea9e1:	mov    DWORD PTR [esp],eax
  eea9e4:	call   12374c5  ; shared address: System.Collections.Generic.Dictionary`2+ValueCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, UnityEngine.GUIStyle>::GetEnumerator | System.Collections.Generic.Dictionary`2+ValueCollection<string, ABH.GameDatas.Battle.BattleEffectGameData>::GetEnumerator | +11 other aliases
  eea9e9:	sub    esp,0x4
  eea9ec:	lea    edi,[ebx+0x4a2b4]
  eea9f2:	xor    esi,esi
  eea9f4:	mov    eax,DWORD PTR [edi]
  eea9f6:	mov    DWORD PTR [esp+0x4],eax
  eea9fa:	lea    eax,[esp+0x20]
  eea9fe:	mov    DWORD PTR [esp],eax
  eeaa01:	call   12276c5
  eeaa06:	test   al,al
  eeaa08:	je     eeaa34
  eeaa0a:	lea    eax,[ebx+0x4a2a8]
  eeaa10:	mov    eax,DWORD PTR [eax]
  eeaa12:	mov    DWORD PTR [esp+0x4],eax
  eeaa16:	lea    eax,[esp+0x20]
  eeaa1a:	mov    DWORD PTR [esp],eax
  eeaa1d:	call   1227754
  eeaa22:	test   eax,eax
  eeaa24:	je     eeaa3a
  eeaa26:	mov    cl,0x1
  eeaa28:	cmp    DWORD PTR [eax+0x10],0x2
  eeaa2c:	mov    al,0x1
  eeaa2e:	jne    eea9f4
  eeaa30:	jmp    eeaa60
  eeaa32:	jmp    eeaa44
  eeaa34:	mov    cl,0x1
  eeaa36:	xor    eax,eax
  eeaa38:	jmp    eeaa60
  eeaa3a:	call   1fbc48
  eeaa3f:	jmp    eeaadf
  eeaa44:	cmp    edx,0x1
  eeaa47:	jne    eeaad7
  eeaa4d:	mov    DWORD PTR [esp],eax
  eeaa50:	call   1ba3f0
  eeaa55:	mov    esi,DWORD PTR [eax]
  eeaa57:	call   1b9ce0
  eeaa5c:	xor    ecx,ecx
  eeaa5e:	xor    eax,eax
  eeaa60:	mov    DWORD PTR [esp+0x18],eax
  eeaa64:	lea    eax,[ebx+0x4a2b8]
  eeaa6a:	mov    eax,DWORD PTR [eax]
  eeaa6c:	mov    DWORD PTR [esp+0x4],eax
  eeaa70:	lea    eax,[esp+0x20]
  eeaa74:	mov    DWORD PTR [esp],eax
  eeaa77:	mov    edi,ecx
  eeaa79:	call   122763c
  eeaa7e:	mov    eax,edi
  eeaa80:	test   al,al
  eeaa82:	jne    eeaa90
  eeaa84:	test   esi,esi
  eeaa86:	je     eeaa90
  eeaa88:	mov    DWORD PTR [esp],esi
  eeaa8b:	call   1fbb20
  eeaa90:	mov    eax,DWORD PTR [esp+0x18]
  eeaa94:	test   al,al
  eeaa96:	je     eeaab6
  eeaa98:	mov    eax,DWORD PTR [ebp+0x8]
  eeaa9b:	movss  xmm0,DWORD PTR [eax+0x90]
  eeaaa3:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  eeaaab:	movss  xmm2,DWORD PTR [ebp+0xc]
  eeaab0:	mulss  xmm2,xmm0
  eeaab4:	jmp    eeaabb
  eeaab6:	movss  xmm2,DWORD PTR [ebp+0xc]
  eeaabb:	movss  DWORD PTR [esp+0x1c],xmm2
  eeaac1:	fld    DWORD PTR [esp+0x1c]
  eeaac5:	lea    esp,[ebp-0xc]
  eeaac8:	pop    esi
  eeaac9:	pop    edi
  eeaaca:	pop    ebx
  eeaacb:	pop    ebp
  eeaacc:	ret
  eeaacd:	call   1fbc48
  eeaad2:	call   ebbb41
  eeaad7:	mov    DWORD PTR [esp],eax
  eeaada:	call   1b9bd0
  eeaadf:	call   ebbb41