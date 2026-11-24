
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057acb0:
  57acb0:	push   ebp
  57acb1:	mov    ebp,esp
  57acb3:	push   ebx
  57acb4:	push   edi
  57acb5:	push   esi
  57acb6:	and    esp,0xfffffff0
  57acb9:	sub    esp,0x20
  57acbc:	call   57acc1
  57acc1:	pop    ebx
  57acc2:	add    ebx,0x1997283
  57acc8:	mov    esi,DWORD PTR [ebp+0xc]
  57accb:	mov    al,BYTE PTR [ebx+0x5d72c]
  57acd1:	test   al,al
  57acd3:	jne    57acec
  57acd5:	lea    eax,[ebx-0x664b84]
  57acdb:	mov    eax,DWORD PTR [eax]
  57acdd:	mov    DWORD PTR [esp],eax
  57ace0:	call   1ca6e8
  57ace5:	mov    BYTE PTR [ebx+0x5d72c],0x1
  57acec:	test   esi,esi
  57acee:	je     57ae25
  57acf4:	lea    eax,[ebx+0x45874]
  57acfa:	mov    DWORD PTR [esp+0x18],eax
  57acfe:	mov    eax,DWORD PTR [eax]
  57ad00:	mov    ecx,DWORD PTR [esi]
  57ad02:	movzx  edx,WORD PTR [ecx+0xaa]
  57ad09:	test   edx,edx
  57ad0b:	je     57ad1c
  57ad0d:	mov    esi,DWORD PTR [ecx+0x4c]
  57ad10:	xor    edi,edi
  57ad12:	cmp    DWORD PTR [esi+edi*8],eax
  57ad15:	je     57ad37
  57ad17:	inc    edi
  57ad18:	cmp    edi,edx
  57ad1a:	jb     57ad12
  57ad1c:	mov    DWORD PTR [esp+0x4],eax
  57ad20:	mov    esi,DWORD PTR [ebp+0xc]
  57ad23:	mov    DWORD PTR [esp],esi
  57ad26:	mov    DWORD PTR [esp+0x8],0x56
  57ad2e:	call   1c1964
  57ad33:	mov    ecx,eax
  57ad35:	jmp    57ad45
  57ad37:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  57ad3b:	lea    ecx,[ecx+eax*8+0x364]
  57ad42:	mov    esi,DWORD PTR [ebp+0xc]
  57ad45:	mov    eax,DWORD PTR [ecx+0x4]
  57ad48:	mov    DWORD PTR [esp+0x4],eax
  57ad4c:	mov    DWORD PTR [esp],esi
  57ad4f:	call   DWORD PTR [ecx]
  57ad51:	test   al,al
  57ad53:	je     57ad92
  57ad55:	mov    eax,DWORD PTR [esp+0x18]
  57ad59:	mov    eax,DWORD PTR [eax]
  57ad5b:	mov    ecx,DWORD PTR [esi]
  57ad5d:	movzx  edx,WORD PTR [ecx+0xaa]
  57ad64:	test   edx,edx
  57ad66:	je     57ad77
  57ad68:	mov    esi,DWORD PTR [ecx+0x4c]
  57ad6b:	xor    edi,edi
  57ad6d:	cmp    DWORD PTR [esi+edi*8],eax
  57ad70:	je     57ad99
  57ad72:	inc    edi
  57ad73:	cmp    edi,edx
  57ad75:	jb     57ad6d
  57ad77:	mov    DWORD PTR [esp+0x4],eax
  57ad7b:	mov    esi,DWORD PTR [ebp+0xc]
  57ad7e:	mov    DWORD PTR [esp],esi
  57ad81:	mov    DWORD PTR [esp+0x8],0x9
  57ad89:	call   1c1964
  57ad8e:	mov    ecx,eax
  57ad90:	jmp    57ada7
  57ad92:	xor    eax,eax
  57ad94:	jmp    57ae1a
  57ad99:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  57ad9d:	lea    ecx,[ecx+eax*8+0xfc]
  57ada4:	mov    esi,DWORD PTR [ebp+0xc]
  57ada7:	mov    eax,DWORD PTR [ecx+0x4]
  57adaa:	mov    DWORD PTR [esp+0x4],eax
  57adae:	mov    DWORD PTR [esp],esi
  57adb1:	call   DWORD PTR [ecx]
  57adb3:	mov    esi,eax
  57adb5:	test   esi,esi
  57adb7:	je     57ae25
  57adb9:	lea    eax,[ebx+0x45884]
  57adbf:	mov    eax,DWORD PTR [eax]
  57adc1:	mov    ecx,DWORD PTR [esi]
  57adc3:	mov    DWORD PTR [esp+0x18],ecx
  57adc7:	movzx  edx,WORD PTR [ecx+0xaa]
  57adce:	test   edx,edx
  57add0:	je     57ade5
  57add2:	mov    ecx,DWORD PTR [esp+0x18]
  57add6:	mov    edi,DWORD PTR [ecx+0x4c]
  57add9:	xor    ecx,ecx
  57addb:	cmp    DWORD PTR [edi+ecx*8],eax
  57adde:	je     57adfd
  57ade0:	inc    ecx
  57ade1:	cmp    ecx,edx
  57ade3:	jb     57addb
  57ade5:	mov    DWORD PTR [esp+0x4],eax
  57ade9:	mov    DWORD PTR [esp],esi
  57adec:	mov    DWORD PTR [esp+0x8],0x14
  57adf4:	call   1c1964
  57adf9:	mov    ecx,eax
  57adfb:	jmp    57ae0c
  57adfd:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  57ae01:	mov    ecx,DWORD PTR [esp+0x18]
  57ae05:	lea    ecx,[ecx+eax*8+0x154]
  57ae0c:	mov    eax,DWORD PTR [ecx+0x4]
  57ae0f:	mov    DWORD PTR [esp+0x4],eax
  57ae13:	mov    DWORD PTR [esp],esi
  57ae16:	call   DWORD PTR [ecx]
  57ae18:	xor    al,0x1
  57ae1a:	movzx  eax,al
  57ae1d:	lea    esp,[ebp-0xc]
  57ae20:	pop    esi
  57ae21:	pop    edi
  57ae22:	pop    ebx
  57ae23:	pop    ebp
  57ae24:	ret
  57ae25:	call   1fbc48
  57ae2a:	call   540b98