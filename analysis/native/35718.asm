
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006d3691:
  6d3691:	push   ebp
  6d3692:	mov    ebp,esp
  6d3694:	push   ebx
  6d3695:	push   esi
  6d3696:	and    esp,0xfffffff0
  6d3699:	sub    esp,0x10
  6d369c:	call   6d36a1
  6d36a1:	pop    ebx
  6d36a2:	add    ebx,0x183e8a3
  6d36a8:	mov    al,BYTE PTR [ebx+0x5f6fc]
  6d36ae:	test   al,al
  6d36b0:	jne    6d36c9
  6d36b2:	lea    eax,[ebx-0x668494]
  6d36b8:	mov    eax,DWORD PTR [eax]
  6d36ba:	mov    DWORD PTR [esp],eax
  6d36bd:	call   1ca6e8
  6d36c2:	mov    BYTE PTR [ebx+0x5f6fc],0x1
  6d36c9:	lea    eax,[ebx+0x45530]
  6d36cf:	mov    eax,DWORD PTR [eax]
  6d36d1:	mov    DWORD PTR [esp],eax
  6d36d4:	call   20bfb2
  6d36d9:	mov    esi,eax
  6d36db:	mov    DWORD PTR [esp],esi
  6d36de:	mov    DWORD PTR [esp+0x4],0x0
  6d36e6:	call   179c381  ; ABH.Shared.Models.InventoryItems.EquipmentData::.ctor
  6d36eb:	mov    eax,esi
  6d36ed:	lea    esp,[ebp-0x8]
  6d36f0:	pop    esi
  6d36f1:	pop    ebx
  6d36f2:	pop    ebp
  6d36f3:	ret