
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ed807f:
  ed807f:	push   ebp
  ed8080:	mov    ebp,esp
  ed8082:	push   ebx
  ed8083:	push   edi
  ed8084:	push   esi
  ed8085:	and    esp,0xfffffff0
  ed8088:	sub    esp,0x30
  ed808b:	call   ed8090
  ed8090:	pop    ebx
  ed8091:	add    ebx,0x1039eb4
  ed8097:	mov    esi,DWORD PTR [ebp+0xc]
  ed809a:	mov    edi,DWORD PTR [ebp+0x8]
  ed809d:	mov    al,BYTE PTR [ebx+0x62798]
  ed80a3:	test   al,al
  ed80a5:	jne    ed80be
  ed80a7:	lea    eax,[ebx-0x6705b4]
  ed80ad:	mov    eax,DWORD PTR [eax]
  ed80af:	mov    DWORD PTR [esp],eax
  ed80b2:	call   1ca6e8
  ed80b7:	mov    BYTE PTR [ebx+0x62798],0x1
  ed80be:	mov    DWORD PTR [esp+0x4],esi
  ed80c2:	mov    DWORD PTR [esp],edi
  ed80c5:	call   eb23c3  ; ABH.GameDatas.Battle.AttackSkillTemplate::Init
  ed80ca:	mov    DWORD PTR [esp+0x28],0x0
  ed80d2:	mov    eax,DWORD PTR [edi+0x8]
  ed80d5:	test   eax,eax
  ed80d7:	je     ed833c
  ed80dd:	mov    DWORD PTR [esp],eax
  ed80e0:	mov    DWORD PTR [esp+0x4],0x0
  ed80e8:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed80ed:	test   eax,eax
  ed80ef:	je     ed833c
  ed80f5:	lea    ecx,[ebx+0x56b1c]
  ed80fb:	mov    ecx,DWORD PTR [ecx]
  ed80fd:	lea    edx,[ebx+0x4a034]
  ed8103:	mov    DWORD PTR [esp+0x1c],edx
  ed8107:	mov    edx,DWORD PTR [edx]
  ed8109:	mov    DWORD PTR [esp+0xc],edx
  ed810d:	lea    edx,[esp+0x28]
  ed8111:	mov    DWORD PTR [esp+0x8],edx
  ed8115:	mov    DWORD PTR [esp+0x4],ecx
  ed8119:	mov    DWORD PTR [esp],eax
  ed811c:	call   61f168
  ed8121:	movss  xmm0,DWORD PTR [esp+0x28]
  ed8127:	divss  xmm0,DWORD PTR [ebx-0x64fc2c]
  ed812f:	movss  DWORD PTR [edi+0x88],xmm0
  ed8137:	mov    eax,DWORD PTR [edi+0x8]
  ed813a:	test   eax,eax
  ed813c:	je     ed833c
  ed8142:	mov    DWORD PTR [esp],eax
  ed8145:	mov    DWORD PTR [esp+0x4],0x0
  ed814d:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed8152:	test   eax,eax
  ed8154:	je     ed833c
  ed815a:	lea    ecx,[edi+0x8c]
  ed8160:	lea    edx,[ebx+0x56b88]
  ed8166:	mov    edx,DWORD PTR [edx]
  ed8168:	mov    esi,edi
  ed816a:	mov    edi,DWORD PTR [esp+0x1c]
  ed816e:	mov    edi,DWORD PTR [edi]
  ed8170:	mov    DWORD PTR [esp+0xc],edi
  ed8174:	mov    DWORD PTR [esp+0x8],ecx
  ed8178:	mov    DWORD PTR [esp+0x4],edx
  ed817c:	mov    DWORD PTR [esp],eax
  ed817f:	call   61f168
  ed8184:	mov    eax,DWORD PTR [esi+0x8]
  ed8187:	test   eax,eax
  ed8189:	je     ed833c
  ed818f:	mov    DWORD PTR [esp],eax
  ed8192:	mov    DWORD PTR [esp+0x4],0x0
  ed819a:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed819f:	test   eax,eax
  ed81a1:	je     ed833c
  ed81a7:	lea    ecx,[esi+0x90]
  ed81ad:	lea    edx,[ebx+0x56b30]
  ed81b3:	mov    edx,DWORD PTR [edx]
  ed81b5:	mov    edi,DWORD PTR [esp+0x1c]
  ed81b9:	mov    edi,DWORD PTR [edi]
  ed81bb:	mov    DWORD PTR [esp+0xc],edi
  ed81bf:	mov    DWORD PTR [esp+0x8],ecx
  ed81c3:	mov    DWORD PTR [esp+0x4],edx
  ed81c7:	mov    DWORD PTR [esp],eax
  ed81ca:	call   61f168
  ed81cf:	mov    eax,DWORD PTR [esi+0x8]
  ed81d2:	test   eax,eax
  ed81d4:	je     ed833c
  ed81da:	mov    DWORD PTR [esp],eax
  ed81dd:	mov    DWORD PTR [esp+0x4],0x0
  ed81e5:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed81ea:	test   eax,eax
  ed81ec:	je     ed833c
  ed81f2:	lea    ecx,[esi+0x94]
  ed81f8:	lea    edx,[ebx+0x56bf0]
  ed81fe:	mov    edx,DWORD PTR [edx]
  ed8200:	mov    edi,DWORD PTR [esp+0x1c]
  ed8204:	mov    edi,DWORD PTR [edi]
  ed8206:	mov    DWORD PTR [esp+0xc],edi
  ed820a:	mov    edi,esi
  ed820c:	mov    DWORD PTR [esp+0x8],ecx
  ed8210:	mov    DWORD PTR [esp+0x4],edx
  ed8214:	mov    DWORD PTR [esp],eax
  ed8217:	call   61f168
  ed821c:	mov    eax,DWORD PTR [edi+0x8]
  ed821f:	test   eax,eax
  ed8221:	je     ed833c
  ed8227:	mov    DWORD PTR [esp],eax
  ed822a:	mov    DWORD PTR [esp+0x4],0x0
  ed8232:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed8237:	test   eax,eax
  ed8239:	je     ed833c
  ed823f:	lea    ecx,[edi+0x98]
  ed8245:	lea    edx,[ebx+0x56bf4]
  ed824b:	mov    edx,DWORD PTR [edx]
  ed824d:	mov    esi,DWORD PTR [esp+0x1c]
  ed8251:	mov    esi,DWORD PTR [esi]
  ed8253:	mov    DWORD PTR [esp+0xc],esi
  ed8257:	mov    DWORD PTR [esp+0x8],ecx
  ed825b:	mov    DWORD PTR [esp+0x4],edx
  ed825f:	mov    DWORD PTR [esp],eax
  ed8262:	call   61f168
  ed8267:	mov    eax,DWORD PTR [edi+0x8]
  ed826a:	test   eax,eax
  ed826c:	je     ed833c
  ed8272:	mov    DWORD PTR [esp],eax
  ed8275:	mov    DWORD PTR [esp+0x4],0x0
  ed827d:	call   6b143c  ; ABH.GameDatas.SkillGameData::get_SkillParameters
  ed8282:	test   eax,eax
  ed8284:	je     ed833c
  ed828a:	lea    ecx,[ebx+0x4a394]
  ed8290:	mov    ecx,DWORD PTR [ecx]
  ed8292:	mov    DWORD PTR [esp+0x4],ecx
  ed8296:	mov    DWORD PTR [esp],eax
  ed8299:	call   61f499
  ed829e:	lea    ecx,[ebx+0x56c14]
  ed82a4:	mov    ecx,DWORD PTR [ecx]
  ed82a6:	lea    edx,[ebx+0x4a398]
  ed82ac:	mov    edx,DWORD PTR [edx]
  ed82ae:	mov    DWORD PTR [esp+0xc],edx
  ed82b2:	mov    DWORD PTR [esp+0x8],ecx
  ed82b6:	mov    DWORD PTR [esp+0x4],eax
  ed82ba:	mov    DWORD PTR [esp],0x0
  ed82c1:	call   9bcc49
  ed82c6:	mov    BYTE PTR [edi+0x9c],al
  ed82cc:	mov    eax,DWORD PTR [edi+0x6c]
  ed82cf:	mov    DWORD PTR [esp+0x1c],eax
  ed82d3:	lea    eax,[ebx+0x4a39c]
  ed82d9:	mov    edi,DWORD PTR [eax]
  ed82db:	lea    eax,[ebx+0x45954]
  ed82e1:	mov    eax,DWORD PTR [eax]
  ed82e3:	mov    DWORD PTR [esp],eax
  ed82e6:	call   20bfb2
  ed82eb:	mov    esi,eax
  ed82ed:	mov    DWORD PTR [esp+0x20],edi
  ed82f1:	lea    eax,[ebx+0x4a368]
  ed82f7:	mov    eax,DWORD PTR [eax]
  ed82f9:	mov    DWORD PTR [esp+0xc],eax
  ed82fd:	mov    eax,DWORD PTR [esp+0x20]
  ed8301:	mov    DWORD PTR [esp+0x8],eax
  ed8305:	mov    eax,DWORD PTR [ebp+0x8]
  ed8308:	mov    DWORD PTR [esp+0x4],eax
  ed830c:	mov    DWORD PTR [esp],esi
  ed830f:	call   15f5a16
  ed8314:	mov    ecx,DWORD PTR [esp+0x1c]
  ed8318:	test   ecx,ecx
  ed831a:	je     ed833c
  ed831c:	lea    eax,[ebx+0x4a36c]
  ed8322:	mov    eax,DWORD PTR [eax]
  ed8324:	mov    DWORD PTR [esp+0x8],eax
  ed8328:	mov    DWORD PTR [esp+0x4],esi
  ed832c:	mov    DWORD PTR [esp],ecx
  ed832f:	call   4c23b4
  ed8334:	lea    esp,[ebp-0xc]
  ed8337:	pop    esi
  ed8338:	pop    edi
  ed8339:	pop    ebx
  ed833a:	pop    ebp
  ed833b:	ret
  ed833c:	call   1fbc48
  ed8341:	call   ebbb41