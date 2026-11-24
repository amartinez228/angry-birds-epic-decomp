
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c0120:
  6c0120:	push   ebp
  6c0121:	mov    ebp,esp
  6c0123:	push   ebx
  6c0124:	push   edi
  6c0125:	push   esi
  6c0126:	and    esp,0xfffffff0
  6c0129:	sub    esp,0x20
  6c012c:	call   6c0131
  6c0131:	pop    ebx
  6c0132:	add    ebx,0x1851e13
  6c0138:	mov    esi,DWORD PTR [ebp+0xc]
  6c013b:	mov    al,BYTE PTR [ebx+0x5f624]
  6c0141:	test   al,al
  6c0143:	jne    6c015c
  6c0145:	lea    eax,[ebx-0x6583e0]
  6c014b:	mov    eax,DWORD PTR [eax]
  6c014d:	mov    DWORD PTR [esp],eax
  6c0150:	call   1ca6e8
  6c0155:	mov    BYTE PTR [ebx+0x5f624],0x1
  6c015c:	test   esi,esi
  6c015e:	je     6c023e
  6c0164:	lea    eax,[ebx+0x45874]
  6c016a:	mov    DWORD PTR [esp+0x18],eax
  6c016e:	mov    eax,DWORD PTR [eax]
  6c0170:	mov    ecx,DWORD PTR [esi]
  6c0172:	movzx  edx,WORD PTR [ecx+0xaa]
  6c0179:	test   edx,edx
  6c017b:	je     6c018c
  6c017d:	mov    esi,DWORD PTR [ecx+0x4c]
  6c0180:	xor    edi,edi
  6c0182:	cmp    DWORD PTR [esi+edi*8],eax
  6c0185:	je     6c01a7
  6c0187:	inc    edi
  6c0188:	cmp    edi,edx
  6c018a:	jb     6c0182
  6c018c:	mov    DWORD PTR [esp+0x4],eax
  6c0190:	mov    esi,DWORD PTR [ebp+0xc]
  6c0193:	mov    DWORD PTR [esp],esi
  6c0196:	mov    DWORD PTR [esp+0x8],0x2f
  6c019e:	call   1c1964
  6c01a3:	mov    ecx,eax
  6c01a5:	jmp    6c01b5
  6c01a7:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  6c01ab:	lea    ecx,[ecx+eax*8+0x22c]
  6c01b2:	mov    esi,DWORD PTR [ebp+0xc]
  6c01b5:	mov    eax,DWORD PTR [ecx+0x4]
  6c01b8:	mov    DWORD PTR [esp+0x4],eax
  6c01bc:	mov    DWORD PTR [esp],esi
  6c01bf:	call   DWORD PTR [ecx]
  6c01c1:	mov    DWORD PTR [esp+0x14],eax
  6c01c5:	mov    eax,DWORD PTR [ebp+0x8]
  6c01c8:	mov    esi,DWORD PTR [eax+0x8]
  6c01cb:	test   esi,esi
  6c01cd:	je     6c023e
  6c01cf:	mov    eax,DWORD PTR [esp+0x18]
  6c01d3:	mov    eax,DWORD PTR [eax]
  6c01d5:	mov    ecx,DWORD PTR [esi]
  6c01d7:	mov    DWORD PTR [esp+0x18],ecx
  6c01db:	movzx  edx,WORD PTR [ecx+0xaa]
  6c01e2:	test   edx,edx
  6c01e4:	je     6c01f9
  6c01e6:	mov    ecx,DWORD PTR [esp+0x18]
  6c01ea:	mov    edi,DWORD PTR [ecx+0x4c]
  6c01ed:	xor    ecx,ecx
  6c01ef:	cmp    DWORD PTR [edi+ecx*8],eax
  6c01f2:	je     6c0211
  6c01f4:	inc    ecx
  6c01f5:	cmp    ecx,edx
  6c01f7:	jb     6c01ef
  6c01f9:	mov    DWORD PTR [esp+0x4],eax
  6c01fd:	mov    DWORD PTR [esp],esi
  6c0200:	mov    DWORD PTR [esp+0x8],0x2f
  6c0208:	call   1c1964
  6c020d:	mov    ecx,eax
  6c020f:	jmp    6c0220
  6c0211:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  6c0215:	mov    ecx,DWORD PTR [esp+0x18]
  6c0219:	lea    ecx,[ecx+eax*8+0x22c]
  6c0220:	mov    eax,DWORD PTR [ecx+0x4]
  6c0223:	mov    DWORD PTR [esp+0x4],eax
  6c0227:	mov    DWORD PTR [esp],esi
  6c022a:	call   DWORD PTR [ecx]
  6c022c:	cmp    DWORD PTR [esp+0x14],eax
  6c0230:	sete   al
  6c0233:	movzx  eax,al
  6c0236:	lea    esp,[ebp-0xc]
  6c0239:	pop    esi
  6c023a:	pop    edi
  6c023b:	pop    ebx
  6c023c:	pop    ebp
  6c023d:	ret
  6c023e:	call   1fbc48
  6c0243:	call   6b106a