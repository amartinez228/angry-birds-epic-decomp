
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ebf170:
  ebf170:	push   ebp
  ebf171:	mov    ebp,esp
  ebf173:	push   ebx
  ebf174:	push   edi
  ebf175:	push   esi
  ebf176:	and    esp,0xfffffff0
  ebf179:	sub    esp,0x20
  ebf17c:	call   ebf181
  ebf181:	pop    ebx
  ebf182:	add    ebx,0x1052dc3
  ebf188:	mov    edi,DWORD PTR [ebp+0x8]
  ebf18b:	mov    al,BYTE PTR [ebx+0x626cf]
  ebf191:	test   al,al
  ebf193:	jne    ebf1ac
  ebf195:	lea    eax,[ebx-0x66fbdc]
  ebf19b:	mov    eax,DWORD PTR [eax]
  ebf19d:	mov    DWORD PTR [esp],eax
  ebf1a0:	call   1ca6e8
  ebf1a5:	mov    BYTE PTR [ebx+0x626cf],0x1
  ebf1ac:	mov    esi,DWORD PTR [edi+0x44]
  ebf1af:	mov    edi,DWORD PTR [edi+0x4c]
  ebf1b2:	lea    eax,[ebx+0x44ec8]
  ebf1b8:	mov    eax,DWORD PTR [eax]
  ebf1ba:	test   BYTE PTR [eax+0xb2],0x1
  ebf1c1:	je     ebf1d1
  ebf1c3:	cmp    DWORD PTR [eax+0x60],0x0
  ebf1c7:	jne    ebf1d1
  ebf1c9:	mov    DWORD PTR [esp],eax
  ebf1cc:	call   1db0b8
  ebf1d1:	sub    esi,edi
  ebf1d3:	mov    DWORD PTR [esp+0x4],esi
  ebf1d7:	mov    DWORD PTR [esp+0xc],0x0
  ebf1df:	mov    DWORD PTR [esp+0x8],0x0
  ebf1e7:	mov    DWORD PTR [esp],0x0
  ebf1ee:	call   138c91b  ; UnityEngine.Mathf::Max
  ebf1f3:	lea    esp,[ebp-0xc]
  ebf1f6:	pop    esi
  ebf1f7:	pop    edi
  ebf1f8:	pop    ebx
  ebf1f9:	pop    ebp
  ebf1fa:	ret