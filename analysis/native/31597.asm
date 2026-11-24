
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008b8aba:
  8b8aba:	push   ebp
  8b8abb:	mov    ebp,esp
  8b8abd:	push   ebx
  8b8abe:	push   esi
  8b8abf:	and    esp,0xfffffff0
  8b8ac2:	sub    esp,0x10
  8b8ac5:	call   8b8aca
  8b8aca:	pop    ebx
  8b8acb:	add    ebx,0x165947a
  8b8ad1:	mov    esi,DWORD PTR [ebp+0x8]
  8b8ad4:	mov    al,BYTE PTR [ebx+0x600cc]
  8b8ada:	test   al,al
  8b8adc:	jne    8b8af5
  8b8ade:	lea    eax,[ebx-0x66dbac]
  8b8ae4:	mov    eax,DWORD PTR [eax]
  8b8ae6:	mov    DWORD PTR [esp],eax
  8b8ae9:	call   1ca6e8
  8b8aee:	mov    BYTE PTR [ebx+0x600cc],0x1
  8b8af5:	lea    eax,[ebx+0x58c88]  ; literal "KnockedOut"
  8b8afb:	mov    eax,DWORD PTR [eax]
  8b8afd:	mov    DWORD PTR [esp+0x4],eax
  8b8b01:	mov    DWORD PTR [esp],esi
  8b8b04:	mov    DWORD PTR [esp+0x8],0x0
  8b8b0c:	call   e4e6f3  ; AssetControllerWithBoneAnimationBase::PlayAnimation
  8b8b11:	lea    esp,[ebp-0x8]
  8b8b14:	pop    esi
  8b8b15:	pop    ebx
  8b8b16:	pop    ebp
  8b8b17:	ret