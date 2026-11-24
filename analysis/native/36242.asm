
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ef00d9:
  ef00d9:	push   ebp
  ef00da:	mov    ebp,esp
  ef00dc:	push   ebx
  ef00dd:	push   edi
  ef00de:	push   esi
  ef00df:	and    esp,0xfffffff0
  ef00e2:	sub    esp,0x20
  ef00e5:	call   ef00ea
  ef00ea:	pop    ebx
  ef00eb:	add    ebx,0x1021e5a
  ef00f1:	mov    esi,DWORD PTR [ebp+0xc]
  ef00f4:	mov    al,BYTE PTR [ebx+0x6280b]
  ef00fa:	test   al,al
  ef00fc:	jne    ef0115
  ef00fe:	lea    eax,[ebx-0x657560]
  ef0104:	mov    eax,DWORD PTR [eax]
  ef0106:	mov    DWORD PTR [esp],eax
  ef0109:	call   1ca6e8
  ef010e:	mov    BYTE PTR [ebx+0x6280b],0x1
  ef0115:	test   esi,esi
  ef0117:	je     ef0206
  ef011d:	lea    eax,[ebx+0x45874]
  ef0123:	mov    DWORD PTR [esp+0x18],eax
  ef0127:	mov    eax,DWORD PTR [eax]
  ef0129:	mov    ecx,DWORD PTR [esi]
  ef012b:	movzx  edx,WORD PTR [ecx+0xaa]
  ef0132:	test   edx,edx
  ef0134:	je     ef0145
  ef0136:	mov    esi,DWORD PTR [ecx+0x4c]
  ef0139:	xor    edi,edi
  ef013b:	cmp    DWORD PTR [esi+edi*8],eax
  ef013e:	je     ef0160
  ef0140:	inc    edi
  ef0141:	cmp    edi,edx
  ef0143:	jb     ef013b
  ef0145:	mov    DWORD PTR [esp+0x4],eax
  ef0149:	mov    esi,DWORD PTR [ebp+0xc]
  ef014c:	mov    DWORD PTR [esp],esi
  ef014f:	mov    DWORD PTR [esp+0x8],0x2f
  ef0157:	call   1c1964
  ef015c:	mov    ecx,eax
  ef015e:	jmp    ef016e
  ef0160:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ef0164:	lea    ecx,[ecx+eax*8+0x22c]
  ef016b:	mov    esi,DWORD PTR [ebp+0xc]
  ef016e:	mov    eax,DWORD PTR [ecx+0x4]
  ef0171:	mov    DWORD PTR [esp+0x4],eax
  ef0175:	mov    DWORD PTR [esp],esi
  ef0178:	call   DWORD PTR [ecx]
  ef017a:	mov    DWORD PTR [esp+0x14],eax
  ef017e:	mov    eax,DWORD PTR [ebp+0x8]
  ef0181:	mov    esi,DWORD PTR [eax+0x8]
  ef0184:	test   esi,esi
  ef0186:	je     ef0206
  ef0188:	mov    eax,DWORD PTR [esp+0x18]
  ef018c:	mov    eax,DWORD PTR [eax]
  ef018e:	mov    ecx,DWORD PTR [esi]
  ef0190:	mov    DWORD PTR [esp+0x18],ecx
  ef0194:	movzx  edx,WORD PTR [ecx+0xaa]
  ef019b:	test   edx,edx
  ef019d:	je     ef01b2
  ef019f:	mov    ecx,DWORD PTR [esp+0x18]
  ef01a3:	mov    edi,DWORD PTR [ecx+0x4c]
  ef01a6:	xor    ecx,ecx
  ef01a8:	cmp    DWORD PTR [edi+ecx*8],eax
  ef01ab:	je     ef01ca
  ef01ad:	inc    ecx
  ef01ae:	cmp    ecx,edx
  ef01b0:	jb     ef01a8
  ef01b2:	mov    DWORD PTR [esp+0x4],eax
  ef01b6:	mov    DWORD PTR [esp],esi
  ef01b9:	mov    DWORD PTR [esp+0x8],0x2f
  ef01c1:	call   1c1964
  ef01c6:	mov    ecx,eax
  ef01c8:	jmp    ef01d9
  ef01ca:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  ef01ce:	mov    ecx,DWORD PTR [esp+0x18]
  ef01d2:	lea    ecx,[ecx+eax*8+0x22c]
  ef01d9:	mov    eax,DWORD PTR [ecx+0x4]
  ef01dc:	mov    DWORD PTR [esp+0x4],eax
  ef01e0:	mov    DWORD PTR [esp],esi
  ef01e3:	call   DWORD PTR [ecx]
  ef01e5:	cmp    DWORD PTR [esp+0x14],eax
  ef01e9:	jne    ef01ef
  ef01eb:	xor    eax,eax
  ef01ed:	jmp    ef01fb
  ef01ef:	mov    eax,DWORD PTR [ebp+0xc]
  ef01f2:	mov    ecx,DWORD PTR [ebp+0x8]
  ef01f5:	cmp    DWORD PTR [ecx+0xc],eax
  ef01f8:	setne  al
  ef01fb:	movzx  eax,al
  ef01fe:	lea    esp,[ebp-0xc]
  ef0201:	pop    esi
  ef0202:	pop    edi
  ef0203:	pop    ebx
  ef0204:	pop    ebp
  ef0205:	ret
  ef0206:	call   1fbc48
  ef020b:	call   ebbb41