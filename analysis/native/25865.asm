
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01477d00:
 1477d00:	push   ebp
 1477d01:	mov    ebp,esp
 1477d03:	push   ebx
 1477d04:	push   edi
 1477d05:	push   esi
 1477d06:	and    esp,0xfffffff0
 1477d09:	sub    esp,0x10
 1477d0c:	call   1477d11
 1477d11:	pop    ebx
 1477d12:	add    ebx,0xa9a233
 1477d18:	mov    eax,DWORD PTR [ebp+0xc]
 1477d1b:	test   eax,eax
 1477d1d:	je     1477d6b
 1477d1f:	mov    ecx,DWORD PTR [ebp+0x8]
 1477d22:	mov    edi,DWORD PTR [ecx+0x138]
 1477d28:	mov    DWORD PTR [esp],eax
 1477d2b:	mov    DWORD PTR [esp+0x4],0x0
 1477d33:	call   14f8574  ; UnityEngine.AnimationEvent::get_intParameter
 1477d38:	mov    esi,eax
 1477d3a:	test   edi,edi
 1477d3c:	je     1477d6b
 1477d3e:	cmp    DWORD PTR [edi+0xc],esi
 1477d41:	ja     1477d50
 1477d43:	call   1fc7e4
 1477d48:	mov    DWORD PTR [esp],eax
 1477d4b:	call   1fbb20
 1477d50:	mov    eax,DWORD PTR [edi+esi*4+0x10]
 1477d54:	mov    DWORD PTR [esp+0x4],eax
 1477d58:	mov    eax,DWORD PTR [ebp+0x8]
 1477d5b:	mov    DWORD PTR [esp],eax
 1477d5e:	call   1477d75  ; SmoothMoves.BoneAnimation::AnimationEventTrigger
 1477d63:	lea    esp,[ebp-0xc]
 1477d66:	pop    esi
 1477d67:	pop    edi
 1477d68:	pop    ebx
 1477d69:	pop    ebp
 1477d6a:	ret
 1477d6b:	call   1fbc48
 1477d70:	call   14745da