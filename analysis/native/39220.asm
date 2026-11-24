
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0081bd3f:
  81bd3f:	push   ebp
  81bd40:	mov    ebp,esp
  81bd42:	push   ebx
  81bd43:	push   edi
  81bd44:	push   esi
  81bd45:	and    esp,0xfffffff0
  81bd48:	sub    esp,0x250
  81bd4e:	call   81bd53
  81bd53:	pop    ebx
  81bd54:	add    ebx,0x16f61f1
  81bd5a:	mov    edi,DWORD PTR [ebp+0x38]
  81bd5d:	mov    al,BYTE PTR [ebx+0x5fde4]
  81bd63:	test   al,al
  81bd65:	jne    81bd7e
  81bd67:	lea    eax,[ebx-0x65e6fc]
  81bd6d:	mov    eax,DWORD PTR [eax]
  81bd6f:	mov    DWORD PTR [esp],eax
  81bd72:	call   1ca6e8
  81bd77:	mov    BYTE PTR [ebx+0x5fde4],0x1
  81bd7e:	mov    DWORD PTR [esp+0x244],0x0
  81bd89:	mov    DWORD PTR [esp+0x240],0x0
  81bd94:	xorps  xmm0,xmm0
  81bd97:	movaps XMMWORD PTR [esp+0x230],xmm0
  81bd9f:	movaps XMMWORD PTR [esp+0x220],xmm0
  81bda7:	movaps XMMWORD PTR [esp+0x210],xmm0
  81bdaf:	movaps XMMWORD PTR [esp+0x200],xmm0
  81bdb7:	movaps XMMWORD PTR [esp+0x1f0],xmm0
  81bdbf:	movaps XMMWORD PTR [esp+0x1e0],xmm0
  81bdc7:	movaps XMMWORD PTR [esp+0x1d0],xmm0
  81bdcf:	movaps XMMWORD PTR [esp+0x1c0],xmm0
  81bdd7:	lea    eax,[ebx+0x45764]
  81bddd:	mov    eax,DWORD PTR [eax]
  81bddf:	mov    DWORD PTR [esp],eax
  81bde2:	call   20bfb2
  81bde7:	mov    DWORD PTR [esp+0x2c],eax
  81bdeb:	mov    DWORD PTR [esp],eax
  81bdee:	mov    DWORD PTR [esp+0x4],0x0
  81bdf6:	call   139c624  ; UnityEngine.Mesh::.ctor
  81bdfb:	lea    eax,[ebx+0x45758]
  81be01:	mov    DWORD PTR [esp+0x30],eax
  81be05:	mov    esi,DWORD PTR [eax]
  81be07:	mov    DWORD PTR [esp],esi
  81be0a:	call   1bedda
  81be0f:	mov    DWORD PTR [esp],esi
  81be12:	mov    DWORD PTR [esp+0x4],0x4
  81be1a:	call   21106a
  81be1f:	mov    esi,eax
  81be21:	movss  xmm2,DWORD PTR [ebx-0x6cefe4]
  81be29:	movss  xmm0,DWORD PTR [ebp+0x10]
  81be2e:	movaps xmm1,xmm0
  81be31:	mulss  xmm1,xmm2
  81be35:	mulss  xmm2,DWORD PTR [ebp+0xc]
  81be3a:	movss  xmm0,DWORD PTR [ebx-0x6cbf24]
  81be42:	xorps  xmm1,xmm0
  81be45:	movss  DWORD PTR [esp+0x34],xmm1
  81be4b:	xorps  xmm2,xmm0
  81be4e:	movss  DWORD PTR [esp+0x28],xmm2
  81be54:	movss  DWORD PTR [esp+0x8],xmm2
  81be5a:	movss  DWORD PTR [esp+0x4],xmm1
  81be60:	lea    eax,[esp+0x240]
  81be67:	mov    DWORD PTR [esp],eax
  81be6a:	mov    DWORD PTR [esp+0xc],0x0
  81be72:	call   1773d7a
  81be77:	cmp    edi,0x2
  81be7a:	je     81be89
  81be7c:	cmp    edi,0x1
  81be7f:	jne    81bea9
  81be81:	movss  xmm0,DWORD PTR [esp+0x28]
  81be87:	jmp    81be99
  81be89:	movss  xmm0,DWORD PTR [ebx-0x6cbf24]
  81be91:	movss  xmm1,DWORD PTR [ebp+0xc]
  81be96:	xorps  xmm0,xmm1
  81be99:	movss  DWORD PTR [esp+0x240],xmm0
  81bea2:	mov    edi,esi
  81bea4:	mov    eax,DWORD PTR [ebp+0x3c]
  81bea7:	jmp    81bebd
  81bea9:	test   edi,edi
  81beab:	mov    edi,esi
  81bead:	mov    eax,DWORD PTR [ebp+0x3c]
  81beb0:	jne    81bebd
  81beb2:	mov    DWORD PTR [esp+0x240],0x0
  81bebd:	cmp    eax,0x2
  81bec0:	je     81bed8
  81bec2:	cmp    eax,0x1
  81bec5:	jne    81bee5
  81bec7:	movss  xmm0,DWORD PTR [esp+0x34]
  81becd:	movss  DWORD PTR [esp+0x244],xmm0
  81bed6:	jmp    81bf02
  81bed8:	mov    DWORD PTR [esp+0x244],0x0
  81bee3:	jmp    81bf02
  81bee5:	test   eax,eax
  81bee7:	jne    81bf02
  81bee9:	movss  xmm0,DWORD PTR [ebx-0x6cbf24]
  81bef1:	movss  xmm1,DWORD PTR [ebp+0x10]
  81bef6:	xorps  xmm0,xmm1
  81bef9:	movss  DWORD PTR [esp+0x244],xmm0
  81bf02:	test   edi,edi
  81bf04:	je     81cace
  81bf0a:	movss  xmm0,DWORD PTR [esp+0x240]
  81bf13:	movss  xmm1,DWORD PTR [esp+0x244]
  81bf1c:	mov    DWORD PTR [esp+0x1b4],0x0
  81bf27:	mov    DWORD PTR [esp+0x1b0],0x0
  81bf32:	mov    DWORD PTR [esp+0x1b8],0x0
  81bf3d:	movss  DWORD PTR [esp+0x8],xmm1
  81bf43:	movss  DWORD PTR [esp+0x4],xmm0
  81bf49:	lea    eax,[esp+0x1b0]
  81bf50:	mov    DWORD PTR [esp],eax
  81bf53:	mov    DWORD PTR [esp+0x10],0x0
  81bf5b:	mov    DWORD PTR [esp+0xc],0x0
  81bf63:	call   1776fe2
  81bf68:	cmp    DWORD PTR [edi+0xc],0x0
  81bf6c:	jne    81bf7b
  81bf6e:	call   1fc7e4
  81bf73:	mov    DWORD PTR [esp],eax
  81bf76:	call   1fbb20
  81bf7b:	mov    eax,DWORD PTR [esp+0x1b8]
  81bf82:	mov    DWORD PTR [edi+0x18],eax
  81bf85:	movsd  xmm0,QWORD PTR [esp+0x1b0]
  81bf8e:	movsd  QWORD PTR [edi+0x10],xmm0
  81bf93:	movss  xmm0,DWORD PTR [esp+0x240]
  81bf9c:	movss  xmm1,DWORD PTR [esp+0x244]
  81bfa5:	addss  xmm1,DWORD PTR [ebp+0x10]
  81bfaa:	mov    DWORD PTR [esp+0x1a4],0x0
  81bfb5:	mov    DWORD PTR [esp+0x1a0],0x0
  81bfc0:	mov    DWORD PTR [esp+0x1a8],0x0
  81bfcb:	movss  DWORD PTR [esp+0x8],xmm1
  81bfd1:	movss  DWORD PTR [esp+0x4],xmm0
  81bfd7:	lea    eax,[esp+0x1a0]
  81bfde:	mov    DWORD PTR [esp],eax
  81bfe1:	mov    DWORD PTR [esp+0x10],0x0
  81bfe9:	mov    DWORD PTR [esp+0xc],0x0
  81bff1:	call   1776fe2
  81bff6:	cmp    DWORD PTR [edi+0xc],0x1
  81bffa:	ja     81c009
  81bffc:	call   1fc7e4
  81c001:	mov    DWORD PTR [esp],eax
  81c004:	call   1fbb20
  81c009:	mov    eax,DWORD PTR [esp+0x1a8]
  81c010:	mov    DWORD PTR [edi+0x24],eax
  81c013:	movsd  xmm0,QWORD PTR [esp+0x1a0]
  81c01c:	movsd  QWORD PTR [edi+0x1c],xmm0
  81c021:	movss  xmm0,DWORD PTR [esp+0x244]
  81c02a:	movss  xmm1,DWORD PTR [esp+0x240]
  81c033:	addss  xmm1,DWORD PTR [ebp+0xc]
  81c038:	mov    DWORD PTR [esp+0x194],0x0
  81c043:	mov    DWORD PTR [esp+0x190],0x0
  81c04e:	mov    DWORD PTR [esp+0x198],0x0
  81c059:	movss  DWORD PTR [esp+0x8],xmm0
  81c05f:	movss  DWORD PTR [esp+0x4],xmm1
  81c065:	lea    eax,[esp+0x190]
  81c06c:	mov    DWORD PTR [esp],eax
  81c06f:	mov    DWORD PTR [esp+0x10],0x0
  81c077:	mov    DWORD PTR [esp+0xc],0x0
  81c07f:	call   1776fe2
  81c084:	cmp    DWORD PTR [edi+0xc],0x2
  81c088:	ja     81c097
  81c08a:	call   1fc7e4
  81c08f:	mov    DWORD PTR [esp],eax
  81c092:	call   1fbb20
  81c097:	mov    eax,DWORD PTR [esp+0x198]
  81c09e:	mov    DWORD PTR [edi+0x30],eax
  81c0a1:	movsd  xmm0,QWORD PTR [esp+0x190]
  81c0aa:	movsd  QWORD PTR [edi+0x28],xmm0
  81c0af:	movss  xmm0,DWORD PTR [ebp+0xc]
  81c0b4:	addss  xmm0,DWORD PTR [esp+0x240]
  81c0bd:	movss  xmm1,DWORD PTR [ebp+0x10]
  81c0c2:	addss  xmm1,DWORD PTR [esp+0x244]
  81c0cb:	mov    DWORD PTR [esp+0x184],0x0
  81c0d6:	mov    DWORD PTR [esp+0x180],0x0
  81c0e1:	mov    DWORD PTR [esp+0x188],0x0
  81c0ec:	movss  DWORD PTR [esp+0x8],xmm1
  81c0f2:	movss  DWORD PTR [esp+0x4],xmm0
  81c0f8:	lea    eax,[esp+0x180]
  81c0ff:	mov    DWORD PTR [esp],eax
  81c102:	mov    DWORD PTR [esp+0x10],0x0
  81c10a:	mov    DWORD PTR [esp+0xc],0x0
  81c112:	call   1776fe2
  81c117:	mov    esi,DWORD PTR [edi+0xc]
  81c11a:	cmp    esi,0x3
  81c11d:	ja     81c12f
  81c11f:	call   1fc7e4
  81c124:	mov    DWORD PTR [esp],eax
  81c127:	call   1fbb20
  81c12c:	mov    esi,DWORD PTR [edi+0xc]
  81c12f:	mov    eax,DWORD PTR [esp+0x188]
  81c136:	mov    DWORD PTR [edi+0x3c],eax
  81c139:	movsd  xmm0,QWORD PTR [esp+0x180]
  81c142:	movsd  QWORD PTR [edi+0x34],xmm0
  81c147:	mov    DWORD PTR [esp+0x28],edi
  81c14b:	lea    eax,[ebx+0x457bc]
  81c151:	mov    edi,DWORD PTR [eax]
  81c153:	mov    DWORD PTR [esp],edi
  81c156:	call   1bedda
  81c15b:	mov    DWORD PTR [esp+0x4],esi
  81c15f:	mov    DWORD PTR [esp],edi
  81c162:	call   21106a
  81c167:	mov    edi,eax
  81c169:	lea    eax,[ebx+0x4ef5c]
  81c16f:	mov    eax,DWORD PTR [eax]
  81c171:	mov    DWORD PTR [esp+0x4],eax
  81c175:	lea    eax,[ebp+0x24]
  81c178:	mov    DWORD PTR [esp],eax
  81c17b:	call   16b9268
  81c180:	test   edi,edi
  81c182:	je     81cace
  81c188:	test   al,al
  81c18a:	je     81c5e7
  81c190:	mov    DWORD PTR [esp+0x34],edi
  81c194:	lea    edi,[ebx+0x4ef60]
  81c19a:	mov    eax,DWORD PTR [edi]
  81c19c:	mov    DWORD PTR [esp+0x8],eax
  81c1a0:	lea    esi,[ebp+0x24]
  81c1a3:	mov    DWORD PTR [esp+0x4],esi
  81c1a7:	lea    eax,[esp+0x150]
  81c1ae:	mov    DWORD PTR [esp],eax
  81c1b1:	call   16b9288
  81c1b6:	sub    esp,0x4
  81c1b9:	movsd  xmm0,QWORD PTR [esp+0x150]
  81c1c2:	movsd  xmm1,QWORD PTR [esp+0x158]
  81c1cb:	movsd  QWORD PTR [esp+0x238],xmm1
  81c1d4:	movsd  QWORD PTR [esp+0x230],xmm0
  81c1dd:	lea    eax,[esp+0x230]
  81c1e4:	mov    DWORD PTR [esp],eax
  81c1e7:	mov    DWORD PTR [esp+0x4],0x0
  81c1ef:	call   167f694
  81c1f4:	fstp   TBYTE PTR [esp+0x1c]
  81c1f8:	mov    eax,DWORD PTR [edi]
  81c1fa:	mov    DWORD PTR [esp+0x8],eax
  81c1fe:	mov    DWORD PTR [esp+0x4],esi
  81c202:	lea    eax,[esp+0x140]
  81c209:	mov    DWORD PTR [esp],eax
  81c20c:	call   16b9288
  81c211:	sub    esp,0x4
  81c214:	movsd  xmm0,QWORD PTR [esp+0x140]
  81c21d:	movsd  xmm1,QWORD PTR [esp+0x148]
  81c226:	movsd  QWORD PTR [esp+0x228],xmm1
  81c22f:	movsd  QWORD PTR [esp+0x220],xmm0
  81c238:	lea    eax,[esp+0x220]
  81c23f:	mov    DWORD PTR [esp],eax
  81c242:	mov    DWORD PTR [esp+0x4],0x0
  81c24a:	call   167f6a3
  81c24f:	mov    DWORD PTR [esp+0x13c],0x0
  81c25a:	mov    DWORD PTR [esp+0x138],0x0
  81c265:	fstp   DWORD PTR [esp+0x8]
  81c269:	fld    TBYTE PTR [esp+0x1c]
  81c26d:	fstp   DWORD PTR [esp+0x4]
  81c271:	lea    eax,[esp+0x138]
  81c278:	mov    DWORD PTR [esp],eax
  81c27b:	mov    DWORD PTR [esp+0xc],0x0
  81c283:	call   1773d7a
  81c288:	mov    eax,DWORD PTR [esp+0x34]
  81c28c:	cmp    DWORD PTR [eax+0xc],0x0
  81c290:	jne    81c2a3
  81c292:	call   1fc7e4
  81c297:	mov    DWORD PTR [esp],eax
  81c29a:	call   1fbb20
  81c29f:	mov    eax,DWORD PTR [esp+0x34]
  81c2a3:	movsd  xmm0,QWORD PTR [esp+0x138]
  81c2ac:	movsd  QWORD PTR [eax+0x10],xmm0
  81c2b1:	mov    eax,DWORD PTR [edi]
  81c2b3:	mov    DWORD PTR [esp+0x8],eax
  81c2b7:	mov    DWORD PTR [esp+0x4],esi
  81c2bb:	lea    eax,[esp+0x128]
  81c2c2:	mov    DWORD PTR [esp],eax
  81c2c5:	call   16b9288
  81c2ca:	sub    esp,0x4
  81c2cd:	movsd  xmm0,QWORD PTR [esp+0x128]
  81c2d6:	movsd  xmm1,QWORD PTR [esp+0x130]
  81c2df:	movsd  QWORD PTR [esp+0x218],xmm1
  81c2e8:	movsd  QWORD PTR [esp+0x210],xmm0
  81c2f1:	lea    eax,[esp+0x210]
  81c2f8:	mov    DWORD PTR [esp],eax
  81c2fb:	mov    DWORD PTR [esp+0x4],0x0
  81c303:	call   167f694
  81c308:	fstp   TBYTE PTR [esp+0x1c]
  81c30c:	mov    eax,DWORD PTR [edi]
  81c30e:	mov    DWORD PTR [esp+0x8],eax
  81c312:	mov    DWORD PTR [esp+0x4],esi
  81c316:	lea    eax,[esp+0x118]
  81c31d:	mov    DWORD PTR [esp],eax
  81c320:	call   16b9288
  81c325:	sub    esp,0x4
  81c328:	movsd  xmm0,QWORD PTR [esp+0x118]
  81c331:	movsd  xmm1,QWORD PTR [esp+0x120]
  81c33a:	movsd  QWORD PTR [esp+0x208],xmm1
  81c343:	movsd  QWORD PTR [esp+0x200],xmm0
  81c34c:	lea    eax,[esp+0x200]
  81c353:	mov    DWORD PTR [esp],eax
  81c356:	mov    DWORD PTR [esp+0x4],0x0
  81c35e:	call   167f740
  81c363:	mov    DWORD PTR [esp+0x114],0x0
  81c36e:	mov    DWORD PTR [esp+0x110],0x0
  81c379:	fstp   DWORD PTR [esp+0x8]
  81c37d:	fld    TBYTE PTR [esp+0x1c]
  81c381:	fstp   DWORD PTR [esp+0x4]
  81c385:	lea    eax,[esp+0x110]
  81c38c:	mov    DWORD PTR [esp],eax
  81c38f:	mov    DWORD PTR [esp+0xc],0x0
  81c397:	call   1773d7a
  81c39c:	mov    esi,DWORD PTR [esp+0x34]
  81c3a0:	cmp    DWORD PTR [esi+0xc],0x1
  81c3a4:	ja     81c3b3
  81c3a6:	call   1fc7e4
  81c3ab:	mov    DWORD PTR [esp],eax
  81c3ae:	call   1fbb20
  81c3b3:	movsd  xmm0,QWORD PTR [esp+0x110]
  81c3bc:	movsd  QWORD PTR [esi+0x18],xmm0
  81c3c1:	mov    eax,DWORD PTR [edi]
  81c3c3:	mov    DWORD PTR [esp+0x8],eax
  81c3c7:	lea    esi,[ebp+0x24]
  81c3ca:	mov    DWORD PTR [esp+0x4],esi
  81c3ce:	lea    eax,[esp+0x100]
  81c3d5:	mov    DWORD PTR [esp],eax
  81c3d8:	call   16b9288
  81c3dd:	sub    esp,0x4
  81c3e0:	movsd  xmm0,QWORD PTR [esp+0x100]
  81c3e9:	movsd  xmm1,QWORD PTR [esp+0x108]
  81c3f2:	movsd  QWORD PTR [esp+0x1f8],xmm1
  81c3fb:	movsd  QWORD PTR [esp+0x1f0],xmm0
  81c404:	lea    eax,[esp+0x1f0]
  81c40b:	mov    DWORD PTR [esp],eax
  81c40e:	mov    DWORD PTR [esp+0x4],0x0
  81c416:	call   167f71d
  81c41b:	fstp   TBYTE PTR [esp+0x1c]
  81c41f:	mov    eax,DWORD PTR [edi]
  81c421:	mov    DWORD PTR [esp+0x8],eax
  81c425:	mov    DWORD PTR [esp+0x4],esi
  81c429:	lea    eax,[esp+0xf0]
  81c430:	mov    DWORD PTR [esp],eax
  81c433:	call   16b9288
  81c438:	sub    esp,0x4
  81c43b:	movsd  xmm0,QWORD PTR [esp+0xf0]
  81c444:	movsd  xmm1,QWORD PTR [esp+0xf8]
  81c44d:	movsd  QWORD PTR [esp+0x1e8],xmm1
  81c456:	movsd  QWORD PTR [esp+0x1e0],xmm0
  81c45f:	lea    eax,[esp+0x1e0]
  81c466:	mov    DWORD PTR [esp],eax
  81c469:	mov    DWORD PTR [esp+0x4],0x0
  81c471:	call   167f6a3
  81c476:	mov    DWORD PTR [esp+0xec],0x0
  81c481:	mov    DWORD PTR [esp+0xe8],0x0
  81c48c:	fstp   DWORD PTR [esp+0x8]
  81c490:	fld    TBYTE PTR [esp+0x1c]
  81c494:	fstp   DWORD PTR [esp+0x4]
  81c498:	lea    eax,[esp+0xe8]
  81c49f:	mov    DWORD PTR [esp],eax
  81c4a2:	mov    DWORD PTR [esp+0xc],0x0
  81c4aa:	call   1773d7a
  81c4af:	mov    esi,DWORD PTR [esp+0x34]
  81c4b3:	cmp    DWORD PTR [esi+0xc],0x2
  81c4b7:	ja     81c4c6
  81c4b9:	call   1fc7e4
  81c4be:	mov    DWORD PTR [esp],eax
  81c4c1:	call   1fbb20
  81c4c6:	movsd  xmm0,QWORD PTR [esp+0xe8]
  81c4cf:	movsd  QWORD PTR [esi+0x20],xmm0
  81c4d4:	mov    eax,DWORD PTR [edi]
  81c4d6:	mov    DWORD PTR [esp+0x8],eax
  81c4da:	lea    esi,[ebp+0x24]
  81c4dd:	mov    DWORD PTR [esp+0x4],esi
  81c4e1:	lea    eax,[esp+0xd8]
  81c4e8:	mov    DWORD PTR [esp],eax
  81c4eb:	call   16b9288
  81c4f0:	sub    esp,0x4
  81c4f3:	movsd  xmm0,QWORD PTR [esp+0xd8]
  81c4fc:	movsd  xmm1,QWORD PTR [esp+0xe0]
  81c505:	movsd  QWORD PTR [esp+0x1d8],xmm1
  81c50e:	movsd  QWORD PTR [esp+0x1d0],xmm0
  81c517:	lea    eax,[esp+0x1d0]
  81c51e:	mov    DWORD PTR [esp],eax
  81c521:	mov    DWORD PTR [esp+0x4],0x0
  81c529:	call   167f71d
  81c52e:	fstp   TBYTE PTR [esp+0x1c]
  81c532:	mov    eax,DWORD PTR [edi]
  81c534:	mov    edi,DWORD PTR [esp+0x34]
  81c538:	mov    DWORD PTR [esp+0x8],eax
  81c53c:	mov    DWORD PTR [esp+0x4],esi
  81c540:	lea    eax,[esp+0xc8]
  81c547:	mov    DWORD PTR [esp],eax
  81c54a:	call   16b9288
  81c54f:	sub    esp,0x4
  81c552:	movsd  xmm0,QWORD PTR [esp+0xc8]
  81c55b:	movsd  xmm1,QWORD PTR [esp+0xd0]
  81c564:	movsd  QWORD PTR [esp+0x1c8],xmm1
  81c56d:	movsd  QWORD PTR [esp+0x1c0],xmm0
  81c576:	lea    eax,[esp+0x1c0]
  81c57d:	mov    DWORD PTR [esp],eax
  81c580:	mov    DWORD PTR [esp+0x4],0x0
  81c588:	call   167f740
  81c58d:	mov    DWORD PTR [esp+0xc4],0x0
  81c598:	mov    DWORD PTR [esp+0xc0],0x0
  81c5a3:	fstp   DWORD PTR [esp+0x8]
  81c5a7:	fld    TBYTE PTR [esp+0x1c]
  81c5ab:	fstp   DWORD PTR [esp+0x4]
  81c5af:	lea    eax,[esp+0xc0]
  81c5b6:	mov    DWORD PTR [esp],eax
  81c5b9:	mov    DWORD PTR [esp+0xc],0x0
  81c5c1:	call   1773d7a
  81c5c6:	cmp    DWORD PTR [edi+0xc],0x3
  81c5ca:	ja     81c5d9
  81c5cc:	call   1fc7e4
  81c5d1:	mov    DWORD PTR [esp],eax
  81c5d4:	call   1fbb20
  81c5d9:	movsd  xmm0,QWORD PTR [esp+0xc0]
  81c5e2:	jmp    81c75a
  81c5e7:	mov    DWORD PTR [esp+0x17c],0x0
  81c5f2:	mov    DWORD PTR [esp+0x178],0x0
  81c5fd:	lea    eax,[esp+0x178]
  81c604:	mov    DWORD PTR [esp],eax
  81c607:	mov    DWORD PTR [esp+0xc],0x0
  81c60f:	mov    DWORD PTR [esp+0x8],0x0
  81c617:	mov    DWORD PTR [esp+0x4],0x0
  81c61f:	call   1773d7a
  81c624:	cmp    DWORD PTR [edi+0xc],0x0
  81c628:	jne    81c637
  81c62a:	call   1fc7e4
  81c62f:	mov    DWORD PTR [esp],eax
  81c632:	call   1fbb20
  81c637:	movsd  xmm0,QWORD PTR [esp+0x178]
  81c640:	movsd  QWORD PTR [edi+0x10],xmm0
  81c645:	mov    DWORD PTR [esp+0x174],0x0
  81c650:	mov    DWORD PTR [esp+0x170],0x0
  81c65b:	lea    eax,[esp+0x170]
  81c662:	mov    DWORD PTR [esp],eax
  81c665:	mov    DWORD PTR [esp+0xc],0x0
  81c66d:	mov    DWORD PTR [esp+0x8],0x3f800000
  81c675:	mov    DWORD PTR [esp+0x4],0x0
  81c67d:	call   1773d7a
  81c682:	cmp    DWORD PTR [edi+0xc],0x1
  81c686:	ja     81c695
  81c688:	call   1fc7e4
  81c68d:	mov    DWORD PTR [esp],eax
  81c690:	call   1fbb20
  81c695:	movsd  xmm0,QWORD PTR [esp+0x170]
  81c69e:	movsd  QWORD PTR [edi+0x18],xmm0
  81c6a3:	mov    DWORD PTR [esp+0x16c],0x0
  81c6ae:	mov    DWORD PTR [esp+0x168],0x0
  81c6b9:	lea    eax,[esp+0x168]
  81c6c0:	mov    DWORD PTR [esp],eax
  81c6c3:	mov    DWORD PTR [esp+0xc],0x0
  81c6cb:	mov    DWORD PTR [esp+0x8],0x0
  81c6d3:	mov    DWORD PTR [esp+0x4],0x3f800000
  81c6db:	call   1773d7a
  81c6e0:	cmp    DWORD PTR [edi+0xc],0x2
  81c6e4:	ja     81c6f3
  81c6e6:	call   1fc7e4
  81c6eb:	mov    DWORD PTR [esp],eax
  81c6ee:	call   1fbb20
  81c6f3:	movsd  xmm0,QWORD PTR [esp+0x168]
  81c6fc:	movsd  QWORD PTR [edi+0x20],xmm0
  81c701:	mov    DWORD PTR [esp+0x164],0x0
  81c70c:	mov    DWORD PTR [esp+0x160],0x0
  81c717:	lea    eax,[esp+0x160]
  81c71e:	mov    DWORD PTR [esp],eax
  81c721:	mov    DWORD PTR [esp+0xc],0x0
  81c729:	mov    DWORD PTR [esp+0x8],0x3f800000
  81c731:	mov    DWORD PTR [esp+0x4],0x3f800000
  81c739:	call   1773d7a
  81c73e:	cmp    DWORD PTR [edi+0xc],0x3
  81c742:	ja     81c751
  81c744:	call   1fc7e4
  81c749:	mov    DWORD PTR [esp],eax
  81c74c:	call   1fbb20
  81c751:	movsd  xmm0,QWORD PTR [esp+0x160]
  81c75a:	movsd  QWORD PTR [edi+0x28],xmm0
  81c75f:	lea    eax,[ebx+0x43140]
  81c765:	mov    esi,DWORD PTR [eax]
  81c767:	mov    DWORD PTR [esp],esi
  81c76a:	call   1bedda
  81c76f:	mov    DWORD PTR [esp],esi
  81c772:	mov    DWORD PTR [esp+0x4],0x6
  81c77a:	call   21106a
  81c77f:	mov    DWORD PTR [esp+0x1c],eax
  81c783:	lea    ecx,[ebx+0x50874]
  81c789:	mov    ecx,DWORD PTR [ecx]
  81c78b:	mov    DWORD PTR [esp+0xb8],ecx
  81c792:	mov    ecx,DWORD PTR [esp+0xb8]
  81c799:	mov    DWORD PTR [esp+0x8],ecx
  81c79d:	mov    DWORD PTR [esp+0x4],eax
  81c7a1:	mov    DWORD PTR [esp+0xc],0x0
  81c7a9:	mov    DWORD PTR [esp],0x0
  81c7b0:	call   16c1c2b  ; System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray
  81c7b5:	mov    eax,DWORD PTR [esp+0x30]
  81c7b9:	mov    esi,DWORD PTR [eax]
  81c7bb:	mov    DWORD PTR [esp],esi
  81c7be:	call   1bedda
  81c7c3:	mov    DWORD PTR [esp],esi
  81c7c6:	mov    DWORD PTR [esp+0x4],0x4
  81c7ce:	call   21106a
  81c7d3:	mov    esi,eax
  81c7d5:	test   esi,esi
  81c7d7:	je     81cace
  81c7dd:	lea    eax,[esp+0xa8]
  81c7e4:	mov    DWORD PTR [esp],eax
  81c7e7:	mov    DWORD PTR [esp+0x8],0x0
  81c7ef:	mov    DWORD PTR [esp+0x4],0x0
  81c7f7:	call   177977b  ; UnityEngine.Vector3::get_forward
  81c7fc:	sub    esp,0x4
  81c7ff:	cmp    DWORD PTR [esi+0xc],0x0
  81c803:	jne    81c812
  81c805:	call   1fc7e4
  81c80a:	mov    DWORD PTR [esp],eax
  81c80d:	call   1fbb20
  81c812:	mov    eax,DWORD PTR [esp+0xb0]
  81c819:	mov    DWORD PTR [esi+0x18],eax
  81c81c:	movsd  xmm0,QWORD PTR [esp+0xa8]
  81c825:	movsd  QWORD PTR [esi+0x10],xmm0
  81c82a:	lea    eax,[esp+0x98]
  81c831:	mov    DWORD PTR [esp],eax
  81c834:	mov    DWORD PTR [esp+0x8],0x0
  81c83c:	mov    DWORD PTR [esp+0x4],0x0
  81c844:	call   177977b  ; UnityEngine.Vector3::get_forward
  81c849:	sub    esp,0x4
  81c84c:	cmp    DWORD PTR [esi+0xc],0x1
  81c850:	ja     81c85f
  81c852:	call   1fc7e4
  81c857:	mov    DWORD PTR [esp],eax
  81c85a:	call   1fbb20
  81c85f:	mov    eax,DWORD PTR [esp+0xa0]
  81c866:	mov    DWORD PTR [esi+0x24],eax
  81c869:	movsd  xmm0,QWORD PTR [esp+0x98]
  81c872:	movsd  QWORD PTR [esi+0x1c],xmm0
  81c877:	lea    eax,[esp+0x88]
  81c87e:	mov    DWORD PTR [esp],eax
  81c881:	mov    DWORD PTR [esp+0x8],0x0
  81c889:	mov    DWORD PTR [esp+0x4],0x0
  81c891:	call   177977b  ; UnityEngine.Vector3::get_forward
  81c896:	sub    esp,0x4
  81c899:	cmp    DWORD PTR [esi+0xc],0x2
  81c89d:	ja     81c8ac
  81c89f:	call   1fc7e4
  81c8a4:	mov    DWORD PTR [esp],eax
  81c8a7:	call   1fbb20
  81c8ac:	mov    DWORD PTR [esp+0x34],edi
  81c8b0:	mov    eax,DWORD PTR [esp+0x90]
  81c8b7:	mov    DWORD PTR [esi+0x30],eax
  81c8ba:	movsd  xmm0,QWORD PTR [esp+0x88]
  81c8c3:	movsd  QWORD PTR [esi+0x28],xmm0
  81c8c8:	lea    eax,[esp+0x78]
  81c8cc:	mov    DWORD PTR [esp],eax
  81c8cf:	mov    DWORD PTR [esp+0x8],0x0
  81c8d7:	mov    DWORD PTR [esp+0x4],0x0
  81c8df:	call   177977b  ; UnityEngine.Vector3::get_forward
  81c8e4:	sub    esp,0x4
  81c8e7:	cmp    DWORD PTR [esi+0xc],0x3
  81c8eb:	ja     81c8fa
  81c8ed:	call   1fc7e4
  81c8f2:	mov    DWORD PTR [esp],eax
  81c8f5:	call   1fbb20
  81c8fa:	mov    eax,DWORD PTR [esp+0x80]
  81c901:	mov    DWORD PTR [esi+0x3c],eax
  81c904:	movsd  xmm0,QWORD PTR [esp+0x78]
  81c90a:	movsd  QWORD PTR [esi+0x34],xmm0
  81c90f:	lea    eax,[ebx+0x457b8]
  81c915:	mov    edi,DWORD PTR [eax]
  81c917:	mov    DWORD PTR [esp],edi
  81c91a:	call   1bedda
  81c91f:	mov    DWORD PTR [esp],edi
  81c922:	mov    DWORD PTR [esp+0x4],0x4
  81c92a:	call   21106a
  81c92f:	mov    edi,eax
  81c931:	test   edi,edi
  81c933:	je     81cace
  81c939:	lea    ecx,[ebp+0x14]
  81c93c:	movsd  xmm0,QWORD PTR [ecx]
  81c940:	movsd  xmm1,QWORD PTR [ecx+0x8]
  81c945:	movsd  QWORD PTR [esp+0x70],xmm1
  81c94b:	movsd  QWORD PTR [esp+0x68],xmm0
  81c951:	mov    eax,DWORD PTR [edi+0xc]
  81c954:	test   eax,eax
  81c956:	jne    81c96b
  81c958:	call   1fc7e4
  81c95d:	mov    DWORD PTR [esp],eax
  81c960:	call   1fbb20
  81c965:	lea    ecx,[ebp+0x14]
  81c968:	mov    eax,DWORD PTR [edi+0xc]
  81c96b:	movsd  xmm0,QWORD PTR [esp+0x68]
  81c971:	movsd  xmm1,QWORD PTR [esp+0x70]
  81c977:	movsd  QWORD PTR [edi+0x18],xmm1
  81c97c:	movsd  QWORD PTR [edi+0x10],xmm0
  81c981:	movsd  xmm0,QWORD PTR [ecx]
  81c985:	movsd  xmm1,QWORD PTR [ecx+0x8]
  81c98a:	movsd  QWORD PTR [esp+0x60],xmm1
  81c990:	movsd  QWORD PTR [esp+0x58],xmm0
  81c996:	cmp    eax,0x1
  81c999:	ja     81c9ae
  81c99b:	call   1fc7e4
  81c9a0:	mov    DWORD PTR [esp],eax
  81c9a3:	call   1fbb20
  81c9a8:	lea    ecx,[ebp+0x14]
  81c9ab:	mov    eax,DWORD PTR [edi+0xc]
  81c9ae:	movsd  xmm0,QWORD PTR [esp+0x58]
  81c9b4:	movsd  xmm1,QWORD PTR [esp+0x60]
  81c9ba:	movsd  QWORD PTR [edi+0x28],xmm1
  81c9bf:	movsd  QWORD PTR [edi+0x20],xmm0
  81c9c4:	movsd  xmm0,QWORD PTR [ecx]
  81c9c8:	movsd  xmm1,QWORD PTR [ecx+0x8]
  81c9cd:	movsd  QWORD PTR [esp+0x50],xmm1
  81c9d3:	movsd  QWORD PTR [esp+0x48],xmm0
  81c9d9:	cmp    eax,0x2
  81c9dc:	ja     81c9f1
  81c9de:	call   1fc7e4
  81c9e3:	mov    DWORD PTR [esp],eax
  81c9e6:	call   1fbb20
  81c9eb:	lea    ecx,[ebp+0x14]
  81c9ee:	mov    eax,DWORD PTR [edi+0xc]
  81c9f1:	mov    DWORD PTR [esp+0x30],esi
  81c9f5:	movsd  xmm0,QWORD PTR [esp+0x48]
  81c9fb:	movsd  xmm1,QWORD PTR [esp+0x50]
  81ca01:	movsd  QWORD PTR [edi+0x38],xmm1
  81ca06:	movsd  QWORD PTR [edi+0x30],xmm0
  81ca0b:	movsd  xmm0,QWORD PTR [ecx]
  81ca0f:	movsd  xmm1,QWORD PTR [ecx+0x8]
  81ca14:	movsd  QWORD PTR [esp+0x40],xmm1
  81ca1a:	movsd  QWORD PTR [esp+0x38],xmm0
  81ca20:	cmp    eax,0x3
  81ca23:	ja     81ca32
  81ca25:	call   1fc7e4
  81ca2a:	mov    DWORD PTR [esp],eax
  81ca2d:	call   1fbb20
  81ca32:	movsd  xmm0,QWORD PTR [esp+0x38]
  81ca38:	movsd  xmm1,QWORD PTR [esp+0x40]
  81ca3e:	movsd  QWORD PTR [edi+0x48],xmm1
  81ca43:	movsd  QWORD PTR [edi+0x40],xmm0
  81ca48:	mov    esi,DWORD PTR [esp+0x2c]
  81ca4c:	test   esi,esi
  81ca4e:	je     81cace
  81ca50:	mov    ecx,DWORD PTR [esp+0x28]
  81ca54:	mov    DWORD PTR [esp+0x4],ecx
  81ca58:	mov    DWORD PTR [esp],esi
  81ca5b:	mov    DWORD PTR [esp+0x8],0x0
  81ca63:	call   139d1e9  ; UnityEngine.Mesh::set_vertices
  81ca68:	mov    eax,DWORD PTR [esp+0x34]
  81ca6c:	mov    DWORD PTR [esp+0x4],eax
  81ca70:	mov    DWORD PTR [esp],esi
  81ca73:	mov    DWORD PTR [esp+0x8],0x0
  81ca7b:	call   139d31e  ; UnityEngine.Mesh::set_uv
  81ca80:	mov    eax,DWORD PTR [esp+0x1c]
  81ca84:	mov    DWORD PTR [esp+0x4],eax
  81ca88:	mov    DWORD PTR [esp],esi
  81ca8b:	mov    DWORD PTR [esp+0x8],0x0
  81ca93:	call   139d547  ; UnityEngine.Mesh::set_triangles
  81ca98:	mov    DWORD PTR [esp+0x4],edi
  81ca9c:	mov    DWORD PTR [esp],esi
  81ca9f:	mov    DWORD PTR [esp+0x8],0x0
  81caa7:	call   139d3ec  ; UnityEngine.Mesh::set_colors
  81caac:	mov    eax,DWORD PTR [esp+0x30]
  81cab0:	mov    DWORD PTR [esp+0x4],eax
  81cab4:	mov    DWORD PTR [esp],esi
  81cab7:	mov    DWORD PTR [esp+0x8],0x0
  81cabf:	call   139d250  ; UnityEngine.Mesh::set_normals
  81cac4:	mov    eax,esi
  81cac6:	lea    esp,[ebp-0xc]
  81cac9:	pop    esi
  81caca:	pop    edi
  81cacb:	pop    ebx
  81cacc:	pop    ebp
  81cacd:	ret
  81cace:	call   1fbc48
  81cad3:	call   7e8229