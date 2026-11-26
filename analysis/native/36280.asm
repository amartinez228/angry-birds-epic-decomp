
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

014912be:
 14912be:	push   ebp
 14912bf:	mov    ebp,esp
 14912c1:	push   ebx
 14912c2:	push   edi
 14912c3:	push   esi
 14912c4:	and    esp,0xfffffff0
 14912c7:	sub    esp,0x30
 14912ca:	call   14912cf
 14912cf:	pop    ebx
 14912d0:	add    ebx,0xa80c75
 14912d6:	mov    esi,DWORD PTR [ebp+0x14]
 14912d9:	mov    al,BYTE PTR [ebx+0x65925]
 14912df:	test   al,al
 14912e1:	jne    14912fa
 14912e3:	lea    eax,[ebx-0x6703a0]
 14912e9:	mov    eax,DWORD PTR [eax]
 14912eb:	mov    DWORD PTR [esp],eax
 14912ee:	call   1ca6e8
 14912f3:	mov    BYTE PTR [ebx+0x65925],0x1
 14912fa:	test   esi,esi
 14912fc:	je     14913f2
 1491302:	movss  xmm0,DWORD PTR [ebp+0xc]
 1491307:	mov    ecx,DWORD PTR [ebp+0x8]
 149130a:	lea    eax,[ebx+0x45874]
 1491310:	mov    eax,DWORD PTR [eax]
 1491312:	mulss  xmm0,DWORD PTR [ecx+0x8c]
 149131a:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
 1491322:	mov    ecx,DWORD PTR [esi]
 1491324:	movzx  edx,WORD PTR [ecx+0xaa]
 149132b:	test   edx,edx
 149132d:	je     149133e
 149132f:	mov    edi,DWORD PTR [ecx+0x4c]
 1491332:	xor    esi,esi
 1491334:	cmp    DWORD PTR [edi+esi*8],eax
 1491337:	je     1491363
 1491339:	inc    esi
 149133a:	cmp    esi,edx
 149133c:	jb     1491334
 149133e:	mov    DWORD PTR [esp+0x4],eax
 1491342:	mov    esi,DWORD PTR [ebp+0x14]
 1491345:	mov    DWORD PTR [esp],esi
 1491348:	mov    DWORD PTR [esp+0x8],0x70
 1491350:	movss  DWORD PTR [esp+0x28],xmm0
 1491356:	call   1c1964
 149135b:	movss  xmm0,DWORD PTR [esp+0x28]
 1491361:	jmp    1491371
 1491363:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 1491367:	lea    eax,[ecx+eax*8+0x434]
 149136e:	mov    esi,DWORD PTR [ebp+0x14]
 1491371:	mov    ecx,DWORD PTR [eax+0x4]
 1491374:	mov    DWORD PTR [esp+0xc],ecx
 1491378:	mov    DWORD PTR [esp+0x8],esi
 149137c:	movss  DWORD PTR [esp+0x4],xmm0
 1491382:	mov    DWORD PTR [esp],esi
 1491385:	call   DWORD PTR [eax]
 1491387:	mov    DWORD PTR [esp+0x4],0x0
 149138f:	mov    DWORD PTR [esp],0x0
 1491396:	call   109314e  ; DIContainerLogic::GetBattleService
 149139b:	test   eax,eax
 149139d:	je     14913f2
 149139f:	mov    ecx,DWORD PTR [ebp+0x10]
 14913a2:	mov    DWORD PTR [esp+0x8],ecx
 14913a6:	mov    DWORD PTR [esp+0x4],esi
 14913aa:	mov    DWORD PTR [esp],eax
 14913ad:	mov    DWORD PTR [esp+0x24],0x0
 14913b5:	mov    DWORD PTR [esp+0x20],0x0
 14913bd:	mov    DWORD PTR [esp+0x1c],0x0
 14913c5:	mov    DWORD PTR [esp+0x18],0x0
 14913cd:	mov    DWORD PTR [esp+0x14],0x0
 14913d5:	mov    DWORD PTR [esp+0x10],0x0
 14913dd:	mov    DWORD PTR [esp+0xc],0x1
 14913e5:	call   50a1af  ; ABH.Services.Logic.BattleService::HealCurrentTurn
 14913ea:	lea    esp,[ebp-0xc]
 14913ed:	pop    esi
 14913ee:	pop    edi
 14913ef:	pop    ebx
 14913f0:	pop    ebp
 14913f1:	ret
 14913f2:	call   1fbc48
 14913f7:	call   14943fc