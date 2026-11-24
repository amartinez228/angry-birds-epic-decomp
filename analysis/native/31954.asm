
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00facfc1:
  facfc1:	push   ebp
  facfc2:	mov    ebp,esp
  facfc4:	push   ebx
  facfc5:	push   edi
  facfc6:	push   esi
  facfc7:	and    esp,0xfffffff0
  facfca:	sub    esp,0x60
  facfcd:	call   facfd2
  facfd2:	pop    ebx
  facfd3:	add    ebx,0xf64f72
  facfd9:	mov    esi,DWORD PTR [ebp+0x8]
  facfdc:	mov    al,BYTE PTR [ebx+0x62e52]
  facfe2:	test   al,al
  facfe4:	jne    facffd
  facfe6:	lea    eax,[ebx-0x6567cc]
  facfec:	mov    eax,DWORD PTR [eax]
  facfee:	mov    DWORD PTR [esp],eax
  facff1:	call   1ca6e8
  facff6:	mov    BYTE PTR [ebx+0x62e52],0x1
  facffd:	mov    eax,DWORD PTR [esi+0x38]
  fad000:	mov    DWORD PTR [esi+0x38],0xffffffff
  fad007:	cmp    eax,0x1
  fad00a:	jne    fad018
  fad00c:	mov    DWORD PTR [esi+0x38],0xffffffff
  fad013:	jmp    fad0d0
  fad018:	test   eax,eax
  fad01a:	jne    fad0d0
  fad020:	lea    eax,[ebx+0x4584c]
  fad026:	mov    eax,DWORD PTR [eax]
  fad028:	test   BYTE PTR [eax+0xb2],0x1
  fad02f:	je     fad03f
  fad031:	cmp    DWORD PTR [eax+0x60],0x0
  fad035:	jne    fad03f
  fad037:	mov    DWORD PTR [esp],eax
  fad03a:	call   1db0b8
  fad03f:	mov    DWORD PTR [esp+0x4],0x0
  fad047:	mov    DWORD PTR [esp],0x0
  fad04e:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
  fad053:	test   eax,eax
  fad055:	je     fad292
  fad05b:	mov    eax,DWORD PTR [eax+0x2c]
  fad05e:	test   eax,eax
  fad060:	je     fad292
  fad066:	mov    eax,DWORD PTR [eax+0xc]
  fad069:	test   eax,eax
  fad06b:	je     fad292
  fad071:	mov    DWORD PTR [esp],eax
  fad074:	mov    DWORD PTR [esp+0x4],0x0
  fad07c:	call   16e73b0  ; XPBarController::Enter
  fad081:	mov    esi,DWORD PTR [esi+0x8]
  fad084:	test   esi,esi
  fad086:	je     fad292
  fad08c:	lea    eax,[ebx+0x45854]
  fad092:	mov    eax,DWORD PTR [eax]
  fad094:	mov    ecx,DWORD PTR [esi]
  fad096:	mov    DWORD PTR [esp+0x38],ecx
  fad09a:	movzx  edx,WORD PTR [ecx+0xaa]
  fad0a1:	test   edx,edx
  fad0a3:	je     fad0b8
  fad0a5:	mov    ecx,DWORD PTR [esp+0x38]
  fad0a9:	mov    edi,DWORD PTR [ecx+0x4c]
  fad0ac:	xor    ecx,ecx
  fad0ae:	cmp    DWORD PTR [edi+ecx*8],eax
  fad0b1:	je     fad0d7
  fad0b3:	inc    ecx
  fad0b4:	cmp    ecx,edx
  fad0b6:	jb     fad0ae
  fad0b8:	mov    DWORD PTR [esp+0x4],eax
  fad0bc:	mov    DWORD PTR [esp],esi
  fad0bf:	mov    DWORD PTR [esp+0x8],0x7
  fad0c7:	call   1c1964
  fad0cc:	mov    ecx,eax
  fad0ce:	jmp    fad0e6
  fad0d0:	xor    eax,eax
  fad0d2:	jmp    fad287
  fad0d7:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  fad0db:	mov    ecx,DWORD PTR [esp+0x38]
  fad0df:	lea    ecx,[ecx+eax*8+0xec]
  fad0e6:	mov    eax,DWORD PTR [ecx+0x4]
  fad0e9:	mov    DWORD PTR [esp+0x4],eax
  fad0ed:	mov    DWORD PTR [esp],esi
  fad0f0:	call   DWORD PTR [ecx]
  fad0f2:	mov    esi,eax
  fad0f4:	cmp    esi,0x2
  fad0f7:	mov    edi,DWORD PTR [ebp+0x8]
  fad0fa:	jl     fad107
  fad0fc:	mov    eax,esi
  fad0fe:	shr    eax,0x1f
  fad101:	add    eax,esi
  fad103:	sar    eax,1
  fad105:	mov    esi,eax
  fad107:	mov    DWORD PTR [edi+0xc],esi
  fad10a:	lea    eax,[ebx+0x44ec8]
  fad110:	mov    eax,DWORD PTR [eax]
  fad112:	test   BYTE PTR [eax+0xb2],0x1
  fad119:	je     fad129
  fad11b:	cmp    DWORD PTR [eax+0x60],0x0
  fad11f:	jne    fad129
  fad121:	mov    DWORD PTR [esp],eax
  fad124:	call   1db0b8
  fad129:	mov    DWORD PTR [esp+0x4],esi
  fad12d:	mov    DWORD PTR [esp+0xc],0x0
  fad135:	mov    DWORD PTR [esp+0x8],0x28
  fad13d:	mov    DWORD PTR [esp],0x0
  fad144:	call   138c906  ; UnityEngine.Mathf::Min
  fad149:	mov    DWORD PTR [edi+0xc],eax
  fad14c:	test   eax,eax
  fad14e:	jle    fad24b
  fad154:	lea    eax,[edi+0x14]
  fad157:	mov    DWORD PTR [esp+0x34],eax
  fad15b:	lea    eax,[edi+0x20]
  fad15e:	mov    DWORD PTR [esp+0x30],eax
  fad162:	xor    esi,esi
  fad164:	cmp    BYTE PTR [edi+0x10],0x0
  fad168:	mov    eax,0x0
  fad16d:	je     fad176
  fad16f:	mov    eax,esi
  fad171:	not    eax
  fad173:	and    eax,0x1
  fad176:	mov    DWORD PTR [esp+0x38],eax
  fad17a:	mov    edi,DWORD PTR [edi+0x2c]
  fad17d:	mov    ecx,DWORD PTR [esp+0x34]
  fad181:	mov    eax,DWORD PTR [ecx+0x8]
  fad184:	mov    DWORD PTR [esp+0x58],eax
  fad188:	movsd  xmm0,QWORD PTR [ecx]
  fad18c:	movsd  QWORD PTR [esp+0x50],xmm0
  fad192:	mov    ecx,DWORD PTR [esp+0x30]
  fad196:	mov    eax,DWORD PTR [ecx+0x8]
  fad199:	mov    DWORD PTR [esp+0x48],eax
  fad19d:	movsd  xmm0,QWORD PTR [ecx]
  fad1a1:	movsd  QWORD PTR [esp+0x40],xmm0
  fad1a7:	mov    DWORD PTR [esp+0xc],0x0
  fad1af:	mov    DWORD PTR [esp+0x8],0x3f000000
  fad1b7:	mov    DWORD PTR [esp+0x4],0x3dcccccd
  fad1bf:	mov    DWORD PTR [esp],0x0
  fad1c6:	call   167ea91  ; UnityEngine.Random::Range
  fad1cb:	fstp   DWORD PTR [esp+0x3c]
  fad1cf:	test   edi,edi
  fad1d1:	je     fad292
  fad1d7:	movss  xmm0,DWORD PTR [esp+0x3c]
  fad1dd:	mov    eax,DWORD PTR [edi]
  fad1df:	mov    ecx,DWORD PTR [eax+0x100]
  fad1e5:	mov    edx,DWORD PTR [esp+0x48]
  fad1e9:	mov    DWORD PTR [esp+0x18],edx
  fad1ed:	movsd  xmm1,QWORD PTR [esp+0x40]
  fad1f3:	movsd  QWORD PTR [esp+0x10],xmm1
  fad1f9:	mov    edx,DWORD PTR [esp+0x58]
  fad1fd:	mov    DWORD PTR [esp+0xc],edx
  fad201:	movsd  xmm1,QWORD PTR [esp+0x50]
  fad207:	movsd  QWORD PTR [esp+0x4],xmm1
  fad20d:	mov    DWORD PTR [esp+0x24],ecx
  fad211:	mov    ecx,DWORD PTR [esp+0x38]
  fad215:	mov    DWORD PTR [esp+0x20],ecx
  fad219:	movss  DWORD PTR [esp+0x1c],xmm0
  fad21f:	mov    DWORD PTR [esp],edi
  fad222:	call   DWORD PTR [eax+0xfc]
  fad228:	mov    DWORD PTR [esp+0x4],eax
  fad22c:	mov    DWORD PTR [esp],edi
  fad22f:	mov    DWORD PTR [esp+0x8],0x0
  fad237:	call   139db95  ; UnityEngine.MonoBehaviour::StartCoroutine
  fad23c:	inc    esi
  fad23d:	mov    eax,DWORD PTR [ebp+0x8]
  fad240:	cmp    esi,DWORD PTR [eax+0xc]
  fad243:	mov    edi,eax
  fad245:	jl     fad164
  fad24b:	lea    eax,[ebx+0x45664]
  fad251:	mov    eax,DWORD PTR [eax]
  fad253:	mov    DWORD PTR [esp],eax
  fad256:	call   20bfb2
  fad25b:	mov    esi,eax
  fad25d:	mov    DWORD PTR [esp],esi
  fad260:	mov    DWORD PTR [esp+0x8],0x0
  fad268:	mov    DWORD PTR [esp+0x4],0x3f4ccccd
  fad270:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  fad275:	mov    DWORD PTR [edi+0x30],esi
  fad278:	mov    al,0x1
  fad27a:	cmp    BYTE PTR [edi+0x34],0x0
  fad27e:	jne    fad287
  fad280:	mov    DWORD PTR [edi+0x38],0x1
  fad287:	movzx  eax,al
  fad28a:	lea    esp,[ebp-0xc]
  fad28d:	pop    esi
  fad28e:	pop    edi
  fad28f:	pop    ebx
  fad290:	pop    ebp
  fad291:	ret
  fad292:	call   1fbc48
  fad297:	call   f6e364