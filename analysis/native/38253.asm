
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec9072:
  ec9072:	push   ebp
  ec9073:	mov    ebp,esp
  ec9075:	push   ebx
  ec9076:	push   edi
  ec9077:	push   esi
  ec9078:	and    esp,0xfffffff0
  ec907b:	sub    esp,0x20
  ec907e:	call   ec9083
  ec9083:	pop    ebx
  ec9084:	add    ebx,0x1048ec1
  ec908a:	mov    edi,DWORD PTR [ebp+0x8]
  ec908d:	mov    al,BYTE PTR [ebx+0x62738]
  ec9093:	test   al,al
  ec9095:	jne    ec90ae
  ec9097:	lea    eax,[ebx-0x65b774]
  ec909d:	mov    eax,DWORD PTR [eax]
  ec909f:	mov    DWORD PTR [esp],eax
  ec90a2:	call   1ca6e8
  ec90a7:	mov    BYTE PTR [ebx+0x62738],0x1
  ec90ae:	mov    DWORD PTR [esp+0x18],0x0
  ec90b6:	mov    eax,DWORD PTR [edi+0x8]
  ec90b9:	test   eax,eax
  ec90bb:	je     ec912a
  ec90bd:	mov    DWORD PTR [esp],eax
  ec90c0:	mov    DWORD PTR [esp+0x4],0x0
  ec90c8:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ec90cd:	xor    esi,esi
  ec90cf:	test   eax,eax
  ec90d1:	je     ec9120
  ec90d3:	mov    eax,DWORD PTR [edi+0x8]
  ec90d6:	test   eax,eax
  ec90d8:	je     ec912a
  ec90da:	mov    DWORD PTR [esp],eax
  ec90dd:	mov    DWORD PTR [esp+0x4],0x0
  ec90e5:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ec90ea:	test   eax,eax
  ec90ec:	je     ec912a
  ec90ee:	lea    ecx,[ebx+0x56b88]  ; literal "charge"
  ec90f4:	mov    ecx,DWORD PTR [ecx]
  ec90f6:	lea    edx,[ebx+0x4a034]
  ec90fc:	mov    edx,DWORD PTR [edx]
  ec90fe:	mov    DWORD PTR [esp+0xc],edx
  ec9102:	lea    edx,[esp+0x18]
  ec9106:	mov    DWORD PTR [esp+0x8],edx
  ec910a:	mov    DWORD PTR [esp+0x4],ecx
  ec910e:	mov    DWORD PTR [esp],eax
  ec9111:	call   61f168  ; shared address: System.Collections.Generic.Dictionary`2<string, float>::TryGetValue | System.Collections.Generic.Dictionary`2<object, float>::TryGetValue
  ec9116:	test   al,al
  ec9118:	je     ec9120
  ec911a:	cvttss2si esi,DWORD PTR [esp+0x18]
  ec9120:	mov    eax,esi
  ec9122:	lea    esp,[ebp-0xc]
  ec9125:	pop    esi
  ec9126:	pop    edi
  ec9127:	pop    ebx
  ec9128:	pop    ebp
  ec9129:	ret
  ec912a:	call   1fbc48
  ec912f:	call   ebbb41