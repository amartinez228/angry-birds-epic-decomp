
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006c436f:
  6c436f:	push   ebp
  6c4370:	mov    ebp,esp
  6c4372:	push   ebx
  6c4373:	and    esp,0xfffffff0
  6c4376:	sub    esp,0x20
  6c4379:	call   6c437e
  6c437e:	pop    ebx
  6c437f:	add    ebx,0x184dbc6
  6c4385:	mov    eax,DWORD PTR [ebp+0x8]
  6c4388:	mov    ecx,DWORD PTR [ebp+0xc]
  6c438b:	mov    DWORD PTR [esp+0x4],ecx
  6c438f:	mov    DWORD PTR [esp],eax
  6c4392:	mov    DWORD PTR [esp+0x8],0x1
  6c439a:	call   6c25df  ; ABH.GameDatas.BirdGameData::CreateNewInstance
  6c439f:	lea    esp,[ebp-0x4]
  6c43a2:	pop    ebx
  6c43a3:	pop    ebp
  6c43a4:	ret