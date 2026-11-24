
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

010c6408:
 10c6408:	push   ebp
 10c6409:	mov    ebp,esp
 10c640b:	push   ebx
 10c640c:	push   edi
 10c640d:	push   esi
 10c640e:	and    esp,0xfffffff0
 10c6411:	sub    esp,0x20
 10c6414:	call   10c6419
 10c6419:	pop    ebx
 10c641a:	add    ebx,0xe4bb2b
 10c6420:	mov    al,BYTE PTR [ebx+0x63619]
 10c6426:	test   al,al
 10c6428:	jne    10c6441
 10c642a:	lea    eax,[ebx-0x65ab58]
 10c6430:	mov    eax,DWORD PTR [eax]
 10c6432:	mov    DWORD PTR [esp],eax
 10c6435:	call   1ca6e8
 10c643a:	mov    BYTE PTR [ebx+0x63619],0x1
 10c6441:	lea    eax,[ebx+0x4584c]
 10c6447:	mov    eax,DWORD PTR [eax]
 10c6449:	test   BYTE PTR [eax+0xb2],0x1
 10c6450:	je     10c6460
 10c6452:	cmp    DWORD PTR [eax+0x60],0x0
 10c6456:	jne    10c6460
 10c6458:	mov    DWORD PTR [esp],eax
 10c645b:	call   1db0b8
 10c6460:	mov    DWORD PTR [esp+0x4],0x0
 10c6468:	mov    DWORD PTR [esp],0x0
 10c646f:	call   109007c  ; DIContainerInfrastructure::get_PrimaryMusicSource
 10c6474:	test   eax,eax
 10c6476:	je     10c64a6
 10c6478:	mov    esi,DWORD PTR [ebp+0xc]
 10c647b:	mov    edi,DWORD PTR [ebp+0x8]
 10c647e:	mov    DWORD PTR [esp],eax
 10c6481:	mov    DWORD PTR [esp+0x4],0x0
 10c6489:	call   1501684  ; UnityEngine.Component::get_gameObject
 10c648e:	mov    DWORD PTR [esp+0x8],eax
 10c6492:	mov    DWORD PTR [esp+0x4],esi
 10c6496:	mov    DWORD PTR [esp],edi
 10c6499:	call   10c6124  ; SoundManager::PlaySound
 10c649e:	lea    esp,[ebp-0xc]
 10c64a1:	pop    esi
 10c64a2:	pop    edi
 10c64a3:	pop    ebx
 10c64a4:	pop    ebp
 10c64a5:	ret
 10c64a6:	call   1fbc48
 10c64ab:	call   10a4f7a