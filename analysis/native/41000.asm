
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

005106fb:
  5106fb:	push   ebp
  5106fc:	mov    ebp,esp
  5106fe:	push   ebx
  5106ff:	push   edi
  510700:	push   esi
  510701:	and    esp,0xfffffff0
  510704:	sub    esp,0x40
  510707:	call   51070c
  51070c:	pop    ebx
  51070d:	add    ebx,0x1a01838
  510713:	mov    edi,DWORD PTR [ebp+0xc]
  510716:	mov    al,BYTE PTR [ebx+0x5d51a]
  51071c:	test   al,al
  51071e:	jne    510737
  510720:	lea    eax,[ebx-0x66f430]
  510726:	mov    eax,DWORD PTR [eax]
  510728:	mov    DWORD PTR [esp],eax
  51072b:	call   1ca6e8
  510730:	mov    BYTE PTR [ebx+0x5d51a],0x1
  510737:	mov    DWORD PTR [esp+0x1c],0x0
  51073f:	test   edi,edi
  510741:	je     5108b1
  510747:	xor    esi,esi
  510749:	xorps  xmm0,xmm0
  51074c:	movss  DWORD PTR [esp+0x2c],xmm0
  510752:	lea    ecx,[ebx+0x4ac38]
  510758:	mov    DWORD PTR [esp+0x28],ecx
  51075c:	jmp    510785
  51075e:	mov    DWORD PTR [esp],eax
  510761:	mov    DWORD PTR [esp+0x4],0x0
  510769:	call   179aea3  ; ABH.Shared.Models.Generic.AiCombo::get_Percentage
  51076e:	fstp   DWORD PTR [esp+0x30]
  510772:	movss  xmm0,DWORD PTR [esp+0x2c]
  510778:	addss  xmm0,DWORD PTR [esp+0x30]
  51077e:	movss  DWORD PTR [esp+0x2c],xmm0
  510784:	inc    esi
  510785:	mov    eax,DWORD PTR [esp+0x28]
  510789:	mov    eax,DWORD PTR [eax]
  51078b:	mov    DWORD PTR [esp+0x4],eax
  51078f:	mov    DWORD PTR [esp],edi
  510792:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  510797:	cmp    esi,eax
  510799:	jge    5107bc
  51079b:	lea    eax,[ebx+0x4b2fc]
  5107a1:	mov    eax,DWORD PTR [eax]
  5107a3:	mov    DWORD PTR [esp+0x8],eax
  5107a7:	mov    DWORD PTR [esp+0x4],esi
  5107ab:	mov    DWORD PTR [esp],edi
  5107ae:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  5107b3:	test   eax,eax
  5107b5:	jne    51075e
  5107b7:	jmp    5108bd
  5107bc:	movss  xmm0,DWORD PTR [esp+0x2c]
  5107c2:	movss  DWORD PTR [esp+0x8],xmm0
  5107c8:	mov    DWORD PTR [esp+0xc],0x0
  5107d0:	mov    DWORD PTR [esp+0x4],0x0
  5107d8:	mov    DWORD PTR [esp],0x0
  5107df:	call   167ea91  ; UnityEngine.Random::Range
  5107e4:	fstp   DWORD PTR [esp+0x38]
  5107e8:	movss  xmm0,DWORD PTR [esp+0x38]
  5107ee:	movss  DWORD PTR [esp+0x20],xmm0
  5107f4:	mov    eax,DWORD PTR [esp+0x28]
  5107f8:	mov    eax,DWORD PTR [eax]
  5107fa:	mov    DWORD PTR [esp+0x4],eax
  5107fe:	mov    DWORD PTR [esp],edi
  510801:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  510806:	mov    DWORD PTR [esp+0x1c],0x0
  51080e:	test   eax,eax
  510810:	jle    5108b1
  510816:	xorps  xmm1,xmm1
  510819:	lea    eax,[ebx+0x4b2fc]
  51081f:	mov    DWORD PTR [esp+0x24],eax
  510823:	xor    esi,esi
  510825:	movss  DWORD PTR [esp+0x2c],xmm1
  51082b:	movss  xmm0,DWORD PTR [esp+0x20]
  510831:	ucomiss xmm0,xmm1
  510834:	jb     510850
  510836:	mov    eax,DWORD PTR [esp+0x24]
  51083a:	mov    eax,DWORD PTR [eax]
  51083c:	mov    DWORD PTR [esp+0x8],eax
  510840:	mov    DWORD PTR [esp+0x4],esi
  510844:	mov    DWORD PTR [esp],edi
  510847:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  51084c:	mov    DWORD PTR [esp+0x1c],eax
  510850:	mov    eax,DWORD PTR [esp+0x24]
  510854:	mov    eax,DWORD PTR [eax]
  510856:	mov    DWORD PTR [esp+0x8],eax
  51085a:	mov    DWORD PTR [esp+0x4],esi
  51085e:	mov    DWORD PTR [esp],edi
  510861:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  510866:	test   eax,eax
  510868:	je     5108bd
  51086a:	mov    DWORD PTR [esp],eax
  51086d:	mov    DWORD PTR [esp+0x4],0x0
  510875:	call   179aea3  ; ABH.Shared.Models.Generic.AiCombo::get_Percentage
  51087a:	fstp   DWORD PTR [esp+0x34]
  51087e:	movss  xmm0,DWORD PTR [esp+0x2c]
  510884:	addss  xmm0,DWORD PTR [esp+0x34]
  51088a:	movss  DWORD PTR [esp+0x2c],xmm0
  510890:	inc    esi
  510891:	mov    eax,DWORD PTR [esp+0x28]
  510895:	mov    eax,DWORD PTR [eax]
  510897:	mov    DWORD PTR [esp+0x4],eax
  51089b:	mov    DWORD PTR [esp],edi
  51089e:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  5108a3:	movss  xmm1,DWORD PTR [esp+0x2c]
  5108a9:	cmp    esi,eax
  5108ab:	jl     510825
  5108b1:	mov    eax,DWORD PTR [esp+0x1c]
  5108b5:	lea    esp,[ebp-0xc]
  5108b8:	pop    esi
  5108b9:	pop    edi
  5108ba:	pop    ebx
  5108bb:	pop    ebp
  5108bc:	ret
  5108bd:	call   1fbc48
  5108c2:	call   540b98