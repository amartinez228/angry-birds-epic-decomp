
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ebcf15:
  ebcf15:	push   ebp
  ebcf16:	mov    ebp,esp
  ebcf18:	push   ebx
  ebcf19:	push   edi
  ebcf1a:	push   esi
  ebcf1b:	and    esp,0xfffffff0
  ebcf1e:	sub    esp,0x80
  ebcf24:	call   ebcf29
  ebcf29:	pop    ebx
  ebcf2a:	add    ebx,0x105501b
  ebcf30:	mov    esi,DWORD PTR [ebp+0xc]
  ebcf33:	mov    al,BYTE PTR [ebx+0x626cc]
  ebcf39:	test   al,al
  ebcf3b:	jne    ebcf54
  ebcf3d:	lea    eax,[ebx-0x66fbd8]
  ebcf43:	mov    eax,DWORD PTR [eax]
  ebcf45:	mov    DWORD PTR [esp],eax
  ebcf48:	call   1ca6e8
  ebcf4d:	mov    BYTE PTR [ebx+0x626cc],0x1
  ebcf54:	test   esi,esi
  ebcf56:	je     ebd4c2
  ebcf5c:	lea    eax,[ebx+0x45874]
  ebcf62:	mov    DWORD PTR [esp+0x2c],eax
  ebcf66:	mov    eax,DWORD PTR [eax]
  ebcf68:	mov    ecx,DWORD PTR [esi]
  ebcf6a:	movzx  edx,WORD PTR [ecx+0xaa]
  ebcf71:	test   edx,edx
  ebcf73:	je     ebcf84
  ebcf75:	mov    esi,DWORD PTR [ecx+0x4c]
  ebcf78:	xor    edi,edi
  ebcf7a:	cmp    DWORD PTR [esi+edi*8],eax
  ebcf7d:	je     ebcf9f
  ebcf7f:	inc    edi
  ebcf80:	cmp    edi,edx
  ebcf82:	jb     ebcf7a
  ebcf84:	mov    DWORD PTR [esp+0x4],eax
  ebcf88:	mov    esi,DWORD PTR [ebp+0xc]
  ebcf8b:	mov    DWORD PTR [esp],esi
  ebcf8e:	mov    DWORD PTR [esp+0x8],0x2f
  ebcf96:	call   1c1964
  ebcf9b:	mov    ecx,eax
  ebcf9d:	jmp    ebcfad
  ebcf9f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebcfa3:	lea    ecx,[ecx+eax*8+0x22c]
  ebcfaa:	mov    esi,DWORD PTR [ebp+0xc]
  ebcfad:	mov    edi,DWORD PTR [ebp+0x10]
  ebcfb0:	mov    eax,DWORD PTR [ebp+0x8]
  ebcfb3:	mov    DWORD PTR [esp+0x28],eax
  ebcfb7:	mov    eax,DWORD PTR [ecx+0x4]
  ebcfba:	mov    DWORD PTR [esp+0x4],eax
  ebcfbe:	mov    DWORD PTR [esp],esi
  ebcfc1:	call   DWORD PTR [ecx]
  ebcfc3:	test   eax,eax
  ebcfc5:	je     ebd00b
  ebcfc7:	mov    eax,DWORD PTR [esp+0x2c]
  ebcfcb:	mov    eax,DWORD PTR [eax]
  ebcfcd:	mov    ecx,DWORD PTR [esi]
  ebcfcf:	movzx  edx,WORD PTR [ecx+0xaa]
  ebcfd6:	test   edx,edx
  ebcfd8:	je     ebcfed
  ebcfda:	mov    esi,DWORD PTR [ecx+0x4c]
  ebcfdd:	xor    edi,edi
  ebcfdf:	cmp    DWORD PTR [esi+edi*8],eax
  ebcfe2:	je     ebd0c3
  ebcfe8:	inc    edi
  ebcfe9:	cmp    edi,edx
  ebcfeb:	jb     ebcfdf
  ebcfed:	mov    DWORD PTR [esp+0x4],eax
  ebcff1:	mov    edi,DWORD PTR [ebp+0xc]
  ebcff4:	mov    DWORD PTR [esp],edi
  ebcff7:	mov    DWORD PTR [esp+0x8],0x2f
  ebcfff:	call   1c1964
  ebd004:	mov    ecx,eax
  ebd006:	jmp    ebd0d1
  ebd00b:	lea    eax,[ebx+0x4a154]
  ebd011:	mov    DWORD PTR [esp+0x20],eax
  ebd015:	mov    eax,DWORD PTR [eax]
  ebd017:	mov    DWORD PTR [esp+0x24],eax
  ebd01b:	lea    eax,[ebx+0x458a4]
  ebd021:	mov    DWORD PTR [esp+0x1c],eax
  ebd025:	mov    eax,DWORD PTR [eax]
  ebd027:	mov    DWORD PTR [esp],eax
  ebd02a:	call   20bfb2
  ebd02f:	mov    esi,eax
  ebd031:	mov    eax,DWORD PTR [esp+0x24]
  ebd035:	mov    DWORD PTR [esp+0x78],eax
  ebd039:	lea    eax,[ebx+0x4a158]
  ebd03f:	mov    DWORD PTR [esp+0x24],eax
  ebd043:	mov    eax,DWORD PTR [eax]
  ebd045:	mov    DWORD PTR [esp+0xc],eax
  ebd049:	mov    eax,DWORD PTR [esp+0x78]
  ebd04d:	mov    DWORD PTR [esp+0x8],eax
  ebd051:	mov    eax,DWORD PTR [ebp+0x8]
  ebd054:	mov    DWORD PTR [esp+0x4],eax
  ebd058:	mov    DWORD PTR [esp],esi
  ebd05b:	call   176d1d2
  ebd060:	test   edi,edi
  ebd062:	je     ebd4c2
  ebd068:	mov    DWORD PTR [esp+0x4],esi
  ebd06c:	mov    DWORD PTR [esp],edi
  ebd06f:	call   ebd8f2  ; ABH.GameDatas.Battle.BattleGameData::remove_BirdsTurnStarted
  ebd074:	mov    eax,DWORD PTR [esp+0x20]
  ebd078:	mov    edi,DWORD PTR [eax]
  ebd07a:	mov    eax,DWORD PTR [esp+0x1c]
  ebd07e:	mov    eax,DWORD PTR [eax]
  ebd080:	mov    DWORD PTR [esp],eax
  ebd083:	call   20bfb2
  ebd088:	mov    esi,eax
  ebd08a:	mov    DWORD PTR [esp+0x70],edi
  ebd08e:	mov    eax,DWORD PTR [esp+0x24]
  ebd092:	mov    eax,DWORD PTR [eax]
  ebd094:	mov    DWORD PTR [esp+0xc],eax
  ebd098:	mov    eax,DWORD PTR [esp+0x70]
  ebd09c:	mov    DWORD PTR [esp+0x8],eax
  ebd0a0:	mov    eax,DWORD PTR [ebp+0x8]
  ebd0a3:	mov    DWORD PTR [esp+0x4],eax
  ebd0a7:	mov    DWORD PTR [esp],esi
  ebd0aa:	call   176d1d2
  ebd0af:	mov    DWORD PTR [esp+0x4],esi
  ebd0b3:	mov    eax,DWORD PTR [ebp+0x10]
  ebd0b6:	mov    DWORD PTR [esp],eax
  ebd0b9:	call   ebda41  ; ABH.GameDatas.Battle.BattleGameData::add_BirdsTurnStarted
  ebd0be:	jmp    ebd236
  ebd0c3:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ebd0c7:	lea    ecx,[ecx+eax*8+0x22c]
  ebd0ce:	mov    edi,DWORD PTR [ebp+0xc]
  ebd0d1:	mov    eax,DWORD PTR [ecx+0x4]
  ebd0d4:	mov    DWORD PTR [esp+0x4],eax
  ebd0d8:	mov    DWORD PTR [esp],edi
  ebd0db:	call   DWORD PTR [ecx]
  ebd0dd:	cmp    eax,0x1
  ebd0e0:	jne    ebd23b
  ebd0e6:	lea    eax,[ebx+0x4a154]
  ebd0ec:	mov    DWORD PTR [esp+0x24],eax
  ebd0f0:	mov    edi,DWORD PTR [eax]
  ebd0f2:	lea    eax,[ebx+0x458a4]
  ebd0f8:	mov    DWORD PTR [esp+0x20],eax
  ebd0fc:	mov    eax,DWORD PTR [eax]
  ebd0fe:	mov    DWORD PTR [esp],eax
  ebd101:	call   20bfb2
  ebd106:	mov    esi,eax
  ebd108:	mov    DWORD PTR [esp+0x68],edi
  ebd10c:	lea    eax,[ebx+0x4a158]
  ebd112:	mov    DWORD PTR [esp+0x1c],eax
  ebd116:	mov    eax,DWORD PTR [eax]
  ebd118:	mov    DWORD PTR [esp+0xc],eax
  ebd11c:	mov    eax,DWORD PTR [esp+0x68]
  ebd120:	mov    DWORD PTR [esp+0x8],eax
  ebd124:	mov    eax,DWORD PTR [ebp+0x8]
  ebd127:	mov    DWORD PTR [esp+0x4],eax
  ebd12b:	mov    DWORD PTR [esp],esi
  ebd12e:	call   176d1d2
  ebd133:	mov    eax,DWORD PTR [ebp+0x10]
  ebd136:	test   eax,eax
  ebd138:	je     ebd4c2
  ebd13e:	mov    DWORD PTR [esp+0x4],esi
  ebd142:	mov    DWORD PTR [esp],eax
  ebd145:	call   ebdb90  ; ABH.GameDatas.Battle.BattleGameData::remove_PigsTurnStarted
  ebd14a:	mov    eax,DWORD PTR [esp+0x24]
  ebd14e:	mov    edi,DWORD PTR [eax]
  ebd150:	mov    eax,DWORD PTR [esp+0x20]
  ebd154:	mov    eax,DWORD PTR [eax]
  ebd156:	mov    DWORD PTR [esp],eax
  ebd159:	call   20bfb2
  ebd15e:	mov    esi,eax
  ebd160:	mov    DWORD PTR [esp+0x60],edi
  ebd164:	mov    eax,DWORD PTR [esp+0x1c]
  ebd168:	mov    eax,DWORD PTR [eax]
  ebd16a:	mov    DWORD PTR [esp+0xc],eax
  ebd16e:	mov    eax,DWORD PTR [esp+0x60]
  ebd172:	mov    DWORD PTR [esp+0x8],eax
  ebd176:	mov    edi,DWORD PTR [ebp+0x8]
  ebd179:	mov    DWORD PTR [esp+0x28],edi
  ebd17d:	mov    DWORD PTR [esp+0x4],edi
  ebd181:	mov    DWORD PTR [esp],esi
  ebd184:	call   176d1d2
  ebd189:	mov    DWORD PTR [esp+0x4],esi
  ebd18d:	mov    edi,DWORD PTR [ebp+0x10]
  ebd190:	mov    DWORD PTR [esp],edi
  ebd193:	call   ebdcdf  ; ABH.GameDatas.Battle.BattleGameData::add_PigsTurnStarted
  ebd198:	mov    eax,DWORD PTR [esp+0x24]
  ebd19c:	mov    eax,DWORD PTR [eax]
  ebd19e:	mov    DWORD PTR [esp+0x18],eax
  ebd1a2:	mov    eax,DWORD PTR [esp+0x20]
  ebd1a6:	mov    eax,DWORD PTR [eax]
  ebd1a8:	mov    DWORD PTR [esp],eax
  ebd1ab:	call   20bfb2
  ebd1b0:	mov    esi,eax
  ebd1b2:	mov    eax,DWORD PTR [esp+0x18]
  ebd1b6:	mov    DWORD PTR [esp+0x58],eax
  ebd1ba:	mov    eax,DWORD PTR [esp+0x1c]
  ebd1be:	mov    eax,DWORD PTR [eax]
  ebd1c0:	mov    DWORD PTR [esp+0xc],eax
  ebd1c4:	mov    eax,DWORD PTR [esp+0x58]
  ebd1c8:	mov    DWORD PTR [esp+0x8],eax
  ebd1cc:	mov    eax,DWORD PTR [ebp+0x8]
  ebd1cf:	mov    DWORD PTR [esp+0x4],eax
  ebd1d3:	mov    DWORD PTR [esp],esi
  ebd1d6:	call   176d1d2
  ebd1db:	mov    DWORD PTR [esp+0x4],esi
  ebd1df:	mov    DWORD PTR [esp],edi
  ebd1e2:	call   ebde2e  ; ABH.GameDatas.Battle.BattleGameData::remove_WaveDoneForEffect
  ebd1e7:	mov    eax,DWORD PTR [esp+0x24]
  ebd1eb:	mov    eax,DWORD PTR [eax]
  ebd1ed:	mov    DWORD PTR [esp+0x24],eax
  ebd1f1:	mov    eax,DWORD PTR [esp+0x20]
  ebd1f5:	mov    eax,DWORD PTR [eax]
  ebd1f7:	mov    DWORD PTR [esp],eax
  ebd1fa:	call   20bfb2
  ebd1ff:	mov    esi,eax
  ebd201:	mov    eax,DWORD PTR [esp+0x24]
  ebd205:	mov    DWORD PTR [esp+0x50],eax
  ebd209:	mov    eax,DWORD PTR [esp+0x1c]
  ebd20d:	mov    eax,DWORD PTR [eax]
  ebd20f:	mov    DWORD PTR [esp+0xc],eax
  ebd213:	mov    eax,DWORD PTR [esp+0x50]
  ebd217:	mov    DWORD PTR [esp+0x8],eax
  ebd21b:	mov    eax,DWORD PTR [ebp+0x8]
  ebd21e:	mov    DWORD PTR [esp+0x4],eax
  ebd222:	mov    DWORD PTR [esp],esi
  ebd225:	call   176d1d2
  ebd22a:	mov    DWORD PTR [esp+0x4],esi
  ebd22e:	mov    DWORD PTR [esp],edi
  ebd231:	call   ebdf7d  ; ABH.GameDatas.Battle.BattleGameData::add_WaveDoneForEffect
  ebd236:	mov    edi,DWORD PTR [ebp+0xc]
  ebd239:	jmp    ebd242
  ebd23b:	mov    eax,DWORD PTR [ebp+0x8]
  ebd23e:	mov    DWORD PTR [esp+0x28],eax
  ebd242:	lea    eax,[ebx+0x4a15c]
  ebd248:	mov    DWORD PTR [esp+0x24],eax
  ebd24c:	mov    esi,DWORD PTR [eax]
  ebd24e:	lea    eax,[ebx+0x457f4]
  ebd254:	mov    DWORD PTR [esp+0x20],eax
  ebd258:	mov    eax,DWORD PTR [eax]
  ebd25a:	mov    DWORD PTR [esp],eax
  ebd25d:	call   20bfb2
  ebd262:	mov    ecx,eax
  ebd264:	mov    DWORD PTR [esp+0x1c],ecx
  ebd268:	mov    DWORD PTR [esp+0x48],esi
  ebd26c:	mov    eax,DWORD PTR [esp+0x48]
  ebd270:	mov    DWORD PTR [esp+0x8],eax
  ebd274:	mov    eax,DWORD PTR [esp+0x28]
  ebd278:	mov    DWORD PTR [esp+0x4],eax
  ebd27c:	mov    DWORD PTR [esp],ecx
  ebd27f:	mov    DWORD PTR [esp+0xc],0x0
  ebd287:	call   17176df  ; System.Action::.ctor
  ebd28c:	mov    eax,DWORD PTR [esp+0x2c]
  ebd290:	mov    eax,DWORD PTR [eax]
  ebd292:	mov    ecx,DWORD PTR [edi]
  ebd294:	movzx  edx,WORD PTR [ecx+0xaa]
  ebd29b:	test   edx,edx
  ebd29d:	je     ebd2ae
  ebd29f:	mov    edi,DWORD PTR [ecx+0x4c]
  ebd2a2:	xor    esi,esi
  ebd2a4:	cmp    DWORD PTR [edi+esi*8],eax
  ebd2a7:	je     ebd2c7
  ebd2a9:	inc    esi
  ebd2aa:	cmp    esi,edx
  ebd2ac:	jb     ebd2a4
  ebd2ae:	mov    DWORD PTR [esp+0x4],eax
  ebd2b2:	mov    edi,DWORD PTR [ebp+0xc]
  ebd2b5:	mov    DWORD PTR [esp],edi
  ebd2b8:	mov    DWORD PTR [esp+0x8],0x4a
  ebd2c0:	call   1c1964
  ebd2c5:	jmp    ebd2d5
  ebd2c7:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ebd2cb:	lea    eax,[ecx+eax*8+0x304]
  ebd2d2:	mov    edi,DWORD PTR [ebp+0xc]
  ebd2d5:	mov    ecx,DWORD PTR [eax+0x4]
  ebd2d8:	mov    DWORD PTR [esp+0x8],ecx
  ebd2dc:	mov    ecx,DWORD PTR [esp+0x1c]
  ebd2e0:	mov    DWORD PTR [esp+0x4],ecx
  ebd2e4:	mov    DWORD PTR [esp],edi
  ebd2e7:	call   DWORD PTR [eax]
  ebd2e9:	mov    eax,DWORD PTR [esp+0x24]
  ebd2ed:	mov    esi,DWORD PTR [eax]
  ebd2ef:	mov    eax,DWORD PTR [esp+0x20]
  ebd2f3:	mov    eax,DWORD PTR [eax]
  ebd2f5:	mov    DWORD PTR [esp],eax
  ebd2f8:	call   20bfb2
  ebd2fd:	mov    ecx,eax
  ebd2ff:	mov    DWORD PTR [esp+0x1c],ecx
  ebd303:	mov    DWORD PTR [esp+0x40],esi
  ebd307:	mov    eax,DWORD PTR [esp+0x40]
  ebd30b:	mov    DWORD PTR [esp+0x8],eax
  ebd30f:	mov    eax,DWORD PTR [esp+0x28]
  ebd313:	mov    DWORD PTR [esp+0x4],eax
  ebd317:	mov    DWORD PTR [esp],ecx
  ebd31a:	mov    DWORD PTR [esp+0xc],0x0
  ebd322:	call   17176df  ; System.Action::.ctor
  ebd327:	mov    eax,DWORD PTR [esp+0x2c]
  ebd32b:	mov    eax,DWORD PTR [eax]
  ebd32d:	mov    ecx,DWORD PTR [edi]
  ebd32f:	movzx  edx,WORD PTR [ecx+0xaa]
  ebd336:	test   edx,edx
  ebd338:	je     ebd349
  ebd33a:	mov    edi,DWORD PTR [ecx+0x4c]
  ebd33d:	xor    esi,esi
  ebd33f:	cmp    DWORD PTR [edi+esi*8],eax
  ebd342:	je     ebd362
  ebd344:	inc    esi
  ebd345:	cmp    esi,edx
  ebd347:	jb     ebd33f
  ebd349:	mov    DWORD PTR [esp+0x4],eax
  ebd34d:	mov    edi,DWORD PTR [ebp+0xc]
  ebd350:	mov    DWORD PTR [esp],edi
  ebd353:	mov    DWORD PTR [esp+0x8],0x49
  ebd35b:	call   1c1964
  ebd360:	jmp    ebd370
  ebd362:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ebd366:	lea    eax,[ecx+eax*8+0x2fc]
  ebd36d:	mov    edi,DWORD PTR [ebp+0xc]
  ebd370:	mov    ecx,DWORD PTR [eax+0x4]
  ebd373:	mov    DWORD PTR [esp+0x8],ecx
  ebd377:	mov    ecx,DWORD PTR [esp+0x1c]
  ebd37b:	mov    DWORD PTR [esp+0x4],ecx
  ebd37f:	mov    DWORD PTR [esp],edi
  ebd382:	call   DWORD PTR [eax]
  ebd384:	mov    eax,DWORD PTR [esp+0x24]
  ebd388:	mov    esi,DWORD PTR [eax]
  ebd38a:	mov    eax,DWORD PTR [esp+0x20]
  ebd38e:	mov    eax,DWORD PTR [eax]
  ebd390:	mov    DWORD PTR [esp],eax
  ebd393:	call   20bfb2
  ebd398:	mov    ecx,eax
  ebd39a:	mov    DWORD PTR [esp+0x1c],ecx
  ebd39e:	mov    DWORD PTR [esp+0x38],esi
  ebd3a2:	mov    eax,DWORD PTR [esp+0x38]
  ebd3a6:	mov    DWORD PTR [esp+0x8],eax
  ebd3aa:	mov    eax,DWORD PTR [esp+0x28]
  ebd3ae:	mov    DWORD PTR [esp+0x4],eax
  ebd3b2:	mov    DWORD PTR [esp],ecx
  ebd3b5:	mov    DWORD PTR [esp+0xc],0x0
  ebd3bd:	call   17176df  ; System.Action::.ctor
  ebd3c2:	mov    eax,DWORD PTR [esp+0x2c]
  ebd3c6:	mov    eax,DWORD PTR [eax]
  ebd3c8:	mov    ecx,DWORD PTR [edi]
  ebd3ca:	movzx  edx,WORD PTR [ecx+0xaa]
  ebd3d1:	test   edx,edx
  ebd3d3:	je     ebd3e4
  ebd3d5:	mov    edi,DWORD PTR [ecx+0x4c]
  ebd3d8:	xor    esi,esi
  ebd3da:	cmp    DWORD PTR [edi+esi*8],eax
  ebd3dd:	je     ebd3fd
  ebd3df:	inc    esi
  ebd3e0:	cmp    esi,edx
  ebd3e2:	jb     ebd3da
  ebd3e4:	mov    DWORD PTR [esp+0x4],eax
  ebd3e8:	mov    edi,DWORD PTR [ebp+0xc]
  ebd3eb:	mov    DWORD PTR [esp],edi
  ebd3ee:	mov    DWORD PTR [esp+0x8],0x4e
  ebd3f6:	call   1c1964
  ebd3fb:	jmp    ebd40b
  ebd3fd:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ebd401:	lea    eax,[ecx+eax*8+0x324]
  ebd408:	mov    edi,DWORD PTR [ebp+0xc]
  ebd40b:	mov    ecx,DWORD PTR [eax+0x4]
  ebd40e:	mov    DWORD PTR [esp+0x8],ecx
  ebd412:	mov    ecx,DWORD PTR [esp+0x1c]
  ebd416:	mov    DWORD PTR [esp+0x4],ecx
  ebd41a:	mov    DWORD PTR [esp],edi
  ebd41d:	call   DWORD PTR [eax]
  ebd41f:	mov    eax,DWORD PTR [esp+0x24]
  ebd423:	mov    esi,DWORD PTR [eax]
  ebd425:	mov    eax,DWORD PTR [esp+0x20]
  ebd429:	mov    eax,DWORD PTR [eax]
  ebd42b:	mov    DWORD PTR [esp],eax
  ebd42e:	call   20bfb2
  ebd433:	mov    ecx,eax
  ebd435:	mov    DWORD PTR [esp+0x24],ecx
  ebd439:	mov    DWORD PTR [esp+0x30],esi
  ebd43d:	mov    eax,DWORD PTR [esp+0x30]
  ebd441:	mov    DWORD PTR [esp+0x8],eax
  ebd445:	mov    eax,DWORD PTR [esp+0x28]
  ebd449:	mov    DWORD PTR [esp+0x4],eax
  ebd44d:	mov    DWORD PTR [esp],ecx
  ebd450:	mov    DWORD PTR [esp+0xc],0x0
  ebd458:	call   17176df  ; System.Action::.ctor
  ebd45d:	mov    eax,DWORD PTR [esp+0x2c]
  ebd461:	mov    eax,DWORD PTR [eax]
  ebd463:	mov    ecx,DWORD PTR [edi]
  ebd465:	movzx  edx,WORD PTR [ecx+0xaa]
  ebd46c:	test   edx,edx
  ebd46e:	je     ebd47f
  ebd470:	mov    edi,DWORD PTR [ecx+0x4c]
  ebd473:	xor    esi,esi
  ebd475:	cmp    DWORD PTR [edi+esi*8],eax
  ebd478:	je     ebd498
  ebd47a:	inc    esi
  ebd47b:	cmp    esi,edx
  ebd47d:	jb     ebd475
  ebd47f:	mov    DWORD PTR [esp+0x4],eax
  ebd483:	mov    esi,DWORD PTR [ebp+0xc]
  ebd486:	mov    DWORD PTR [esp],esi
  ebd489:	mov    DWORD PTR [esp+0x8],0x4d
  ebd491:	call   1c1964
  ebd496:	jmp    ebd4a6
  ebd498:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ebd49c:	lea    eax,[ecx+eax*8+0x31c]
  ebd4a3:	mov    esi,DWORD PTR [ebp+0xc]
  ebd4a6:	mov    ecx,DWORD PTR [eax+0x4]
  ebd4a9:	mov    DWORD PTR [esp+0x8],ecx
  ebd4ad:	mov    ecx,DWORD PTR [esp+0x24]
  ebd4b1:	mov    DWORD PTR [esp+0x4],ecx
  ebd4b5:	mov    DWORD PTR [esp],esi
  ebd4b8:	call   DWORD PTR [eax]
  ebd4ba:	lea    esp,[ebp-0xc]
  ebd4bd:	pop    esi
  ebd4be:	pop    edi
  ebd4bf:	pop    ebx
  ebd4c0:	pop    ebp
  ebd4c1:	ret
  ebd4c2:	call   1fbc48
  ebd4c7:	call   ebbb41