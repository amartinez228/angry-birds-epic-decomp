
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008ba643:
  8ba643:	push   ebp
  8ba644:	mov    ebp,esp
  8ba646:	push   ebx
  8ba647:	push   esi
  8ba648:	and    esp,0xfffffff0
  8ba64b:	sub    esp,0x10
  8ba64e:	call   8ba653
  8ba653:	pop    ebx
  8ba654:	add    ebx,0x16578f1
  8ba65a:	mov    esi,DWORD PTR [ebp+0x8]
  8ba65d:	mov    al,BYTE PTR [ebx+0x600f4]
  8ba663:	test   al,al
  8ba665:	jne    8ba67e
  8ba667:	lea    eax,[ebx-0x66dbfc]
  8ba66d:	mov    eax,DWORD PTR [eax]
  8ba66f:	mov    DWORD PTR [esp],eax
  8ba672:	call   1ca6e8
  8ba677:	mov    BYTE PTR [ebx+0x600f4],0x1
  8ba67e:	lea    eax,[ebx+0x594a0]  ; literal "Resurrection"
  8ba684:	mov    eax,DWORD PTR [eax]
  8ba686:	mov    DWORD PTR [esp+0x4],eax
  8ba68a:	mov    DWORD PTR [esp],esi
  8ba68d:	mov    DWORD PTR [esp+0x8],0x0
  8ba695:	call   e4f269  ; AssetControllerWithBoneAnimationBase::GetAnimationLength
  8ba69a:	lea    esp,[ebp-0x8]
  8ba69d:	pop    esi
  8ba69e:	pop    ebx
  8ba69f:	pop    ebp
  8ba6a0:	ret