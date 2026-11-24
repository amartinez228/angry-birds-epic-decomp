
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

006f56a5:
  6f56a5:	push   ebp
  6f56a6:	mov    ebp,esp
  6f56a8:	push   ebx
  6f56a9:	push   esi
  6f56aa:	and    esp,0xfffffff0
  6f56ad:	sub    esp,0x60
  6f56b0:	call   6f56b5
  6f56b5:	pop    ebx
  6f56b6:	add    ebx,0x181c88f
  6f56bc:	movss  xmm0,DWORD PTR [ebp+0xc]
  6f56c1:	mov    esi,DWORD PTR [ebp+0x8]
  6f56c4:	mov    al,BYTE PTR [ebx+0x5f80f]
  6f56ca:	test   al,al
  6f56cc:	jne    6f56ea
  6f56ce:	lea    eax,[ebx-0x65fcec]
  6f56d4:	mov    eax,DWORD PTR [eax]
  6f56d6:	mov    DWORD PTR [esp],eax
  6f56d9:	call   1ca6e8
  6f56de:	movss  xmm0,DWORD PTR [ebp+0xc]
  6f56e3:	mov    BYTE PTR [ebx+0x5f80f],0x1
  6f56ea:	movss  DWORD PTR [esp+0x4],xmm0
  6f56f0:	mov    DWORD PTR [esp],esi
  6f56f3:	call   6f5826  ; ABH.GameDatas.PigGameData::ApplyPowerLevelModifierAttack
  6f56f8:	fstp   DWORD PTR [esp+0x54]
  6f56fc:	movss  xmm0,DWORD PTR [esp+0x54]
  6f5702:	cvtsi2ss xmm1,DWORD PTR [esi+0x14]
  6f5707:	divss  xmm1,DWORD PTR [ebx-0x64fc2c]
  6f570f:	mulss  xmm1,xmm0
  6f5713:	addss  xmm1,xmm0
  6f5717:	movss  DWORD PTR [esp+0x10],xmm1
  6f571d:	lea    eax,[ebx+0x44ec8]
  6f5723:	mov    eax,DWORD PTR [eax]
  6f5725:	test   BYTE PTR [eax+0xb2],0x1
  6f572c:	je     6f573c
  6f572e:	cmp    DWORD PTR [eax+0x60],0x0
  6f5732:	jne    6f573c
  6f5734:	mov    DWORD PTR [esp],eax
  6f5737:	call   1db0b8
  6f573c:	xorps  xmm0,xmm0
  6f573f:	cvtss2sd xmm0,DWORD PTR [esp+0x10]
  6f5745:	lea    eax,[esp+0x58]
  6f5749:	mov    DWORD PTR [esp+0x8],eax
  6f574d:	movsd  QWORD PTR [esp],xmm0
  6f5752:	call   1b93f0
  6f5757:	xorps  xmm0,xmm0
  6f575a:	movss  xmm1,DWORD PTR [esp+0x10]
  6f5760:	ucomiss xmm1,xmm0
  6f5763:	fstp   QWORD PTR [esp+0x48]
  6f5767:	movsd  xmm0,QWORD PTR [esp+0x48]
  6f576d:	jae    6f57a5
  6f576f:	ucomisd xmm0,QWORD PTR [ebx-0x6b2884]
  6f5777:	jne    6f57db
  6f5779:	jp     6f57db
  6f577b:	movsd  xmm0,QWORD PTR [esp+0x58]
  6f5781:	movsd  QWORD PTR [esp+0x20],xmm0
  6f5787:	fld    QWORD PTR [esp+0x20]
  6f578b:	fisttp QWORD PTR [esp+0x18]
  6f578f:	mov    eax,DWORD PTR [esp+0x18]
  6f5793:	test   al,0x1
  6f5795:	cvtsd2ss xmm0,xmm0
  6f5799:	je     6f5815
  6f579b:	addss  xmm0,DWORD PTR [ebx-0x64fc1c]
  6f57a3:	jmp    6f5815
  6f57a5:	ucomisd xmm0,QWORD PTR [ebx-0x6b2894]
  6f57ad:	jne    6f57f9
  6f57af:	jp     6f57f9
  6f57b1:	movsd  xmm0,QWORD PTR [esp+0x58]
  6f57b7:	movsd  QWORD PTR [esp+0x38],xmm0
  6f57bd:	fld    QWORD PTR [esp+0x38]
  6f57c1:	fisttp QWORD PTR [esp+0x30]
  6f57c5:	mov    eax,DWORD PTR [esp+0x30]
  6f57c9:	test   al,0x1
  6f57cb:	cvtsd2ss xmm0,xmm0
  6f57cf:	je     6f5815
  6f57d1:	addss  xmm0,DWORD PTR [ebx-0x64fc28]
  6f57d9:	jmp    6f5815
  6f57db:	addss  xmm1,DWORD PTR [ebx-0x64fc20]
  6f57e3:	movss  DWORD PTR [esp],xmm1
  6f57e8:	call   1b9250
  6f57ed:	fstp   DWORD PTR [esp+0x2c]
  6f57f1:	movss  xmm0,DWORD PTR [esp+0x2c]
  6f57f7:	jmp    6f5815
  6f57f9:	addss  xmm1,DWORD PTR [ebx-0x6cefe4]
  6f5801:	movss  DWORD PTR [esp],xmm1
  6f5806:	call   1b9990
  6f580b:	fstp   DWORD PTR [esp+0x44]
  6f580f:	movss  xmm0,DWORD PTR [esp+0x44]
  6f5815:	movss  DWORD PTR [esp+0x14],xmm0
  6f581b:	fld    DWORD PTR [esp+0x14]
  6f581f:	lea    esp,[ebp-0x8]
  6f5822:	pop    esi
  6f5823:	pop    ebx
  6f5824:	pop    ebp
  6f5825:	ret