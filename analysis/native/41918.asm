
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00576735:
  576735:	push   ebp
  576736:	mov    ebp,esp
  576738:	push   ebx
  576739:	push   edi
  57673a:	push   esi
  57673b:	and    esp,0xfffffff0
  57673e:	sub    esp,0x30
  576741:	call   576746
  576746:	pop    ebx
  576747:	add    ebx,0x199b7fe
  57674d:	mov    eax,DWORD PTR [ebp+0x8]
  576750:	mov    ecx,DWORD PTR [ebp+0xc]
  576753:	mov    edx,DWORD PTR [ebp+0x10]
  576756:	mov    esi,DWORD PTR [ebp+0x14]
  576759:	mov    edi,DWORD PTR [ebp+0x18]
  57675c:	mov    DWORD PTR [esp+0x14],edi
  576760:	mov    DWORD PTR [esp+0x10],esi
  576764:	mov    DWORD PTR [esp+0xc],edx
  576768:	mov    DWORD PTR [esp+0x8],ecx
  57676c:	mov    DWORD PTR [esp],eax
  57676f:	mov    DWORD PTR [esp+0x18],0x0
  576777:	call   547648  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateNewInventoryItemGameData
  57677c:	lea    esp,[ebp-0xc]
  57677f:	pop    esi
  576780:	pop    edi
  576781:	pop    ebx
  576782:	pop    ebp
  576783:	ret