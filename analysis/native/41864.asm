
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

005685ee:
  5685ee:	push   ebp
  5685ef:	mov    ebp,esp
  5685f1:	push   ebx
  5685f2:	push   edi
  5685f3:	push   esi
  5685f4:	and    esp,0xfffffff0
  5685f7:	sub    esp,0x20
  5685fa:	call   5685ff
  5685ff:	pop    ebx
  568600:	add    ebx,0x19a9945
  568606:	mov    esi,DWORD PTR [ebp+0x10]
  568609:	mov    al,BYTE PTR [ebx+0x5d6ed]
  56860f:	test   al,al
  568611:	jne    56862a
  568613:	lea    eax,[ebx-0x664cb8]
  568619:	mov    eax,DWORD PTR [eax]
  56861b:	mov    DWORD PTR [esp],eax
  56861e:	call   1ca6e8
  568623:	mov    BYTE PTR [ebx+0x5d6ed],0x1
  56862a:	test   esi,esi
  56862c:	je     568683
  56862e:	xor    edi,edi
  568630:	lea    eax,[ebx+0x4b670]
  568636:	mov    DWORD PTR [esp+0x18],eax
  56863a:	jmp    568665
  56863c:	lea    eax,[ebx+0x4b66c]
  568642:	mov    eax,DWORD PTR [eax]
  568644:	mov    DWORD PTR [esp+0x8],eax
  568648:	mov    DWORD PTR [esp+0x4],edi
  56864c:	mov    DWORD PTR [esp],esi
  56864f:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  568654:	mov    ecx,DWORD PTR [ebp+0x14]
  568657:	mov    DWORD PTR [esp+0xc],ecx
  56865b:	mov    DWORD PTR [esp+0x8],eax
  56865f:	call   56868d  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMastery
  568664:	inc    edi
  568665:	mov    eax,DWORD PTR [esp+0x18]
  568669:	mov    eax,DWORD PTR [eax]
  56866b:	mov    DWORD PTR [esp+0x4],eax
  56866f:	mov    DWORD PTR [esp],esi
  568672:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  568677:	cmp    edi,eax
  568679:	jl     56863c
  56867b:	lea    esp,[ebp-0xc]
  56867e:	pop    esi
  56867f:	pop    edi
  568680:	pop    ebx
  568681:	pop    ebp
  568682:	ret
  568683:	call   1fbc48
  568688:	call   540b98