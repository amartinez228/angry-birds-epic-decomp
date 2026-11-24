
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014ba19e:
 14ba19e:	push   ebp
 14ba19f:	mov    ebp,esp
 14ba1a1:	push   ebx
 14ba1a2:	push   edi
 14ba1a3:	push   esi
 14ba1a4:	and    esp,0xfffffff0
 14ba1a7:	sub    esp,0x20
 14ba1aa:	call   14ba1af
 14ba1af:	pop    ebx
 14ba1b0:	add    ebx,0xa57d95
 14ba1b6:	mov    esi,DWORD PTR [ebp+0xc]
 14ba1b9:	mov    al,BYTE PTR [ebx+0x65a30]
 14ba1bf:	test   al,al
 14ba1c1:	jne    14ba1da
 14ba1c3:	lea    eax,[ebx-0x65841c]
 14ba1c9:	mov    eax,DWORD PTR [eax]
 14ba1cb:	mov    DWORD PTR [esp],eax
 14ba1ce:	call   1ca6e8
 14ba1d3:	mov    BYTE PTR [ebx+0x65a30],0x1
 14ba1da:	test   esi,esi
 14ba1dc:	je     14ba2cb
 14ba1e2:	lea    eax,[ebx+0x45874]
 14ba1e8:	mov    DWORD PTR [esp+0x18],eax
 14ba1ec:	mov    eax,DWORD PTR [eax]
 14ba1ee:	mov    ecx,DWORD PTR [esi]
 14ba1f0:	movzx  edx,WORD PTR [ecx+0xaa]
 14ba1f7:	test   edx,edx
 14ba1f9:	je     14ba20a
 14ba1fb:	mov    esi,DWORD PTR [ecx+0x4c]
 14ba1fe:	xor    edi,edi
 14ba200:	cmp    DWORD PTR [esi+edi*8],eax
 14ba203:	je     14ba225
 14ba205:	inc    edi
 14ba206:	cmp    edi,edx
 14ba208:	jb     14ba200
 14ba20a:	mov    DWORD PTR [esp+0x4],eax
 14ba20e:	mov    esi,DWORD PTR [ebp+0xc]
 14ba211:	mov    DWORD PTR [esp],esi
 14ba214:	mov    DWORD PTR [esp+0x8],0x2f
 14ba21c:	call   1c1964
 14ba221:	mov    ecx,eax
 14ba223:	jmp    14ba233
 14ba225:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 14ba229:	lea    ecx,[ecx+eax*8+0x22c]
 14ba230:	mov    esi,DWORD PTR [ebp+0xc]
 14ba233:	mov    eax,DWORD PTR [ecx+0x4]
 14ba236:	mov    DWORD PTR [esp+0x4],eax
 14ba23a:	mov    DWORD PTR [esp],esi
 14ba23d:	call   DWORD PTR [ecx]
 14ba23f:	mov    DWORD PTR [esp+0x14],eax
 14ba243:	mov    eax,DWORD PTR [ebp+0x8]
 14ba246:	mov    esi,DWORD PTR [eax+0x8]
 14ba249:	test   esi,esi
 14ba24b:	je     14ba2cb
 14ba24d:	mov    eax,DWORD PTR [esp+0x18]
 14ba251:	mov    eax,DWORD PTR [eax]
 14ba253:	mov    ecx,DWORD PTR [esi]
 14ba255:	mov    DWORD PTR [esp+0x18],ecx
 14ba259:	movzx  edx,WORD PTR [ecx+0xaa]
 14ba260:	test   edx,edx
 14ba262:	je     14ba277
 14ba264:	mov    ecx,DWORD PTR [esp+0x18]
 14ba268:	mov    edi,DWORD PTR [ecx+0x4c]
 14ba26b:	xor    ecx,ecx
 14ba26d:	cmp    DWORD PTR [edi+ecx*8],eax
 14ba270:	je     14ba28f
 14ba272:	inc    ecx
 14ba273:	cmp    ecx,edx
 14ba275:	jb     14ba26d
 14ba277:	mov    DWORD PTR [esp+0x4],eax
 14ba27b:	mov    DWORD PTR [esp],esi
 14ba27e:	mov    DWORD PTR [esp+0x8],0x2f
 14ba286:	call   1c1964
 14ba28b:	mov    ecx,eax
 14ba28d:	jmp    14ba29e
 14ba28f:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
 14ba293:	mov    ecx,DWORD PTR [esp+0x18]
 14ba297:	lea    ecx,[ecx+eax*8+0x22c]
 14ba29e:	mov    eax,DWORD PTR [ecx+0x4]
 14ba2a1:	mov    DWORD PTR [esp+0x4],eax
 14ba2a5:	mov    DWORD PTR [esp],esi
 14ba2a8:	call   DWORD PTR [ecx]
 14ba2aa:	cmp    DWORD PTR [esp+0x14],eax
 14ba2ae:	jne    14ba2be
 14ba2b0:	mov    eax,DWORD PTR [ebp+0xc]
 14ba2b3:	mov    ecx,DWORD PTR [ebp+0x8]
 14ba2b6:	cmp    DWORD PTR [ecx+0xc],eax
 14ba2b9:	setne  al
 14ba2bc:	jmp    14ba2c0
 14ba2be:	xor    eax,eax
 14ba2c0:	movzx  eax,al
 14ba2c3:	lea    esp,[ebp-0xc]
 14ba2c6:	pop    esi
 14ba2c7:	pop    edi
 14ba2c8:	pop    ebx
 14ba2c9:	pop    ebp
 14ba2ca:	ret
 14ba2cb:	call   1fbc48
 14ba2d0:	call   14bbc4c