
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0051891e:
  51891e:	push   ebp
  51891f:	mov    ebp,esp
  518921:	push   ebx
  518922:	push   edi
  518923:	push   esi
  518924:	and    esp,0xfffffff0
  518927:	sub    esp,0x10
  51892a:	call   51892f
  51892f:	pop    ebx
  518930:	add    ebx,0x19f9615
  518936:	mov    esi,DWORD PTR [ebp+0xc]
  518939:	mov    al,BYTE PTR [ebx+0x5d550]
  51893f:	test   al,al
  518941:	jne    51895a
  518943:	lea    eax,[ebx-0x66f31c]
  518949:	mov    eax,DWORD PTR [eax]
  51894b:	mov    DWORD PTR [esp],eax
  51894e:	call   1ca6e8
  518953:	mov    BYTE PTR [ebx+0x5d550],0x1
  51895a:	test   esi,esi
  51895c:	je     5189c4
  51895e:	lea    eax,[ebx+0x45874]
  518964:	mov    eax,DWORD PTR [eax]
  518966:	mov    ecx,DWORD PTR [esi]
  518968:	movzx  edx,WORD PTR [ecx+0xaa]
  51896f:	test   edx,edx
  518971:	je     518982
  518973:	mov    edi,DWORD PTR [ecx+0x4c]
  518976:	xor    esi,esi
  518978:	cmp    DWORD PTR [edi+esi*8],eax
  51897b:	je     51899d
  51897d:	inc    esi
  51897e:	cmp    esi,edx
  518980:	jb     518978
  518982:	mov    DWORD PTR [esp+0x4],eax
  518986:	mov    esi,DWORD PTR [ebp+0xc]
  518989:	mov    DWORD PTR [esp],esi
  51898c:	mov    DWORD PTR [esp+0x8],0x13
  518994:	call   1c1964
  518999:	mov    ecx,eax
  51899b:	jmp    5189ab
  51899d:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  5189a1:	lea    ecx,[ecx+eax*8+0x14c]
  5189a8:	mov    esi,DWORD PTR [ebp+0xc]
  5189ab:	mov    eax,DWORD PTR [ecx+0x4]
  5189ae:	mov    DWORD PTR [esp+0x4],eax
  5189b2:	mov    DWORD PTR [esp],esi
  5189b5:	call   DWORD PTR [ecx]
  5189b7:	xor    al,0x1
  5189b9:	movzx  eax,al
  5189bc:	lea    esp,[ebp-0xc]
  5189bf:	pop    esi
  5189c0:	pop    edi
  5189c1:	pop    ebx
  5189c2:	pop    ebp
  5189c3:	ret
  5189c4:	call   1fbc48
  5189c9:	call   540b98