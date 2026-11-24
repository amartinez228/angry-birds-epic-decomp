
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006ce0dd:
  6ce0dd:	push   ebp
  6ce0de:	mov    ebp,esp
  6ce0e0:	push   ebx
  6ce0e1:	push   edi
  6ce0e2:	push   esi
  6ce0e3:	and    esp,0xfffffff0
  6ce0e6:	sub    esp,0x20
  6ce0e9:	call   6ce0ee
  6ce0ee:	pop    ebx
  6ce0ef:	add    ebx,0x1843e56
  6ce0f5:	mov    al,BYTE PTR [ebx+0x5f6ac]
  6ce0fb:	test   al,al
  6ce0fd:	jne    6ce116
  6ce0ff:	lea    eax,[ebx-0x66d2a0]
  6ce105:	mov    eax,DWORD PTR [eax]
  6ce107:	mov    DWORD PTR [esp],eax
  6ce10a:	call   1ca6e8
  6ce10f:	mov    BYTE PTR [ebx+0x5f6ac],0x1
  6ce116:	lea    eax,[ebx+0x45820]
  6ce11c:	mov    eax,DWORD PTR [eax]
  6ce11e:	test   BYTE PTR [eax+0xb2],0x1
  6ce125:	je     6ce135
  6ce127:	cmp    DWORD PTR [eax+0x60],0x0
  6ce12b:	jne    6ce135
  6ce12d:	mov    DWORD PTR [esp],eax
  6ce130:	call   1db0b8
  6ce135:	mov    DWORD PTR [esp+0x4],0x0
  6ce13d:	mov    DWORD PTR [esp],0x0
  6ce144:	call   107cf95  ; DIContainerBalancing::get_Service
  6ce149:	test   eax,eax
  6ce14b:	je     6ce1f5
  6ce151:	lea    ecx,[ebx+0x4a924]
  6ce157:	mov    edx,DWORD PTR [ecx]
  6ce159:	mov    DWORD PTR [esp+0x14],edx
  6ce15d:	mov    ecx,DWORD PTR [edx+0xc]
  6ce160:	movzx  edx,WORD PTR [edx+0x2c]
  6ce164:	mov    DWORD PTR [esp+0x10],edx
  6ce168:	mov    edx,DWORD PTR [eax]
  6ce16a:	mov    DWORD PTR [esp+0x18],eax
  6ce16e:	movzx  eax,WORD PTR [edx+0xaa]
  6ce175:	test   eax,eax
  6ce177:	je     6ce188
  6ce179:	mov    esi,DWORD PTR [edx+0x4c]
  6ce17c:	xor    edi,edi
  6ce17e:	cmp    DWORD PTR [esi+edi*8],ecx
  6ce181:	je     6ce1a2
  6ce183:	inc    edi
  6ce184:	cmp    edi,eax
  6ce186:	jb     6ce17e
  6ce188:	mov    eax,DWORD PTR [esp+0x10]
  6ce18c:	mov    DWORD PTR [esp+0x8],eax
  6ce190:	mov    DWORD PTR [esp+0x4],ecx
  6ce194:	mov    esi,DWORD PTR [esp+0x18]
  6ce198:	mov    DWORD PTR [esp],esi
  6ce19b:	call   1c1964
  6ce1a0:	jmp    6ce1b5
  6ce1a2:	mov    eax,DWORD PTR [esp+0x10]
  6ce1a6:	add    eax,DWORD PTR [esi+edi*8+0x4]
  6ce1aa:	lea    eax,[edx+eax*8+0xb4]
  6ce1b1:	mov    esi,DWORD PTR [esp+0x18]
  6ce1b5:	mov    eax,DWORD PTR [eax+0x4]
  6ce1b8:	mov    ecx,DWORD PTR [esp+0x14]
  6ce1bc:	mov    DWORD PTR [esp+0x4],ecx
  6ce1c0:	mov    DWORD PTR [esp],eax
  6ce1c3:	call   1da450
  6ce1c8:	mov    DWORD PTR [esp+0x4],eax
  6ce1cc:	mov    DWORD PTR [esp],esi
  6ce1cf:	call   DWORD PTR [eax]
  6ce1d1:	lea    ecx,[ebx+0x4a928]
  6ce1d7:	mov    ecx,DWORD PTR [ecx]
  6ce1d9:	mov    DWORD PTR [esp+0x8],ecx
  6ce1dd:	mov    DWORD PTR [esp+0x4],eax
  6ce1e1:	mov    DWORD PTR [esp],0x0
  6ce1e8:	call   ddf8e7  ; shared address: System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | +12 other aliases
  6ce1ed:	lea    esp,[ebp-0xc]
  6ce1f0:	pop    esi
  6ce1f1:	pop    edi
  6ce1f2:	pop    ebx
  6ce1f3:	pop    ebp
  6ce1f4:	ret
  6ce1f5:	call   1fbc48
  6ce1fa:	call   6b106a