
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01492e67:
 1492e67:	push   ebp
 1492e68:	mov    ebp,esp
 1492e6a:	push   ebx
 1492e6b:	push   edi
 1492e6c:	push   esi
 1492e6d:	and    esp,0xfffffff0
 1492e70:	sub    esp,0x40
 1492e73:	call   1492e78
 1492e78:	pop    ebx
 1492e79:	add    ebx,0xa7f0cc
 1492e7f:	mov    esi,DWORD PTR [ebp+0xc]
 1492e82:	mov    al,BYTE PTR [ebx+0x6592d]
 1492e88:	test   al,al
 1492e8a:	jne    1492ea3
 1492e8c:	lea    eax,[ebx-0x67038c]
 1492e92:	mov    eax,DWORD PTR [eax]
 1492e94:	mov    DWORD PTR [esp],eax
 1492e97:	call   1ca6e8
 1492e9c:	mov    BYTE PTR [ebx+0x6592d],0x1
 1492ea3:	lea    eax,[ebx+0x44d10]
 1492ea9:	mov    eax,DWORD PTR [eax]
 1492eab:	mov    DWORD PTR [esp],eax
 1492eae:	call   20bfb2
 1492eb3:	mov    DWORD PTR [esp+0x20],eax
 1492eb7:	lea    ecx,[ebx+0x49298]
 1492ebd:	mov    ecx,DWORD PTR [ecx]
 1492ebf:	mov    DWORD PTR [esp+0x4],ecx
 1492ec3:	mov    DWORD PTR [esp],eax
 1492ec6:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
 1492ecb:	test   esi,esi
 1492ecd:	je     1493285
 1492ed3:	mov    eax,DWORD PTR [ebp+0x8]
 1492ed6:	movss  xmm0,DWORD PTR [eax+0x88]
 1492ede:	lea    eax,[ebx+0x45874]
 1492ee4:	mov    eax,DWORD PTR [eax]
 1492ee6:	mov    ecx,DWORD PTR [esi]
 1492ee8:	movzx  edx,WORD PTR [ecx+0xaa]
 1492eef:	test   edx,edx
 1492ef1:	je     1492f02
 1492ef3:	mov    edi,DWORD PTR [ecx+0x4c]
 1492ef6:	xor    esi,esi
 1492ef8:	cmp    DWORD PTR [edi+esi*8],eax
 1492efb:	je     1492f21
 1492efd:	inc    esi
 1492efe:	cmp    esi,edx
 1492f00:	jb     1492ef8
 1492f02:	movss  DWORD PTR [esp+0x1c],xmm0
 1492f08:	mov    DWORD PTR [esp+0x4],eax
 1492f0c:	mov    esi,DWORD PTR [ebp+0xc]
 1492f0f:	mov    DWORD PTR [esp],esi
 1492f12:	mov    DWORD PTR [esp+0x8],0x1c
 1492f1a:	call   1c1964
 1492f1f:	jmp    1492f35
 1492f21:	movss  DWORD PTR [esp+0x1c],xmm0
 1492f27:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 1492f2b:	lea    eax,[ecx+eax*8+0x194]
 1492f32:	mov    esi,DWORD PTR [ebp+0xc]
 1492f35:	mov    ecx,DWORD PTR [eax+0x4]
 1492f38:	mov    DWORD PTR [esp+0x4],ecx
 1492f3c:	mov    DWORD PTR [esp],esi
 1492f3f:	call   DWORD PTR [eax]
 1492f41:	fstp   DWORD PTR [esp+0x24]
 1492f45:	movss  xmm1,DWORD PTR [esp+0x24]
 1492f4b:	lea    eax,[ebx+0x431bc]
 1492f51:	mov    eax,DWORD PTR [eax]
 1492f53:	test   BYTE PTR [eax+0xb2],0x1
 1492f5a:	je     1492f76
 1492f5c:	cmp    DWORD PTR [eax+0x60],0x0
 1492f60:	jne    1492f76
 1492f62:	mov    DWORD PTR [esp],eax
 1492f65:	movss  DWORD PTR [esp+0x18],xmm1
 1492f6b:	call   1db0b8
 1492f70:	movss  xmm1,DWORD PTR [esp+0x18]
 1492f76:	movss  xmm0,DWORD PTR [esp+0x1c]
 1492f7c:	mulss  xmm0,xmm1
 1492f80:	movss  DWORD PTR [esp+0x4],xmm0
 1492f86:	mov    DWORD PTR [esp+0x8],0x0
 1492f8e:	mov    DWORD PTR [esp],0x0
 1492f95:	call   f1e4b9  ; System.Convert::ToInt32
 1492f9a:	mov    edi,eax
 1492f9c:	lea    esi,[ebx+0x430e4]
 1492fa2:	mov    eax,DWORD PTR [esi]
 1492fa4:	test   BYTE PTR [eax+0xb2],0x1
 1492fab:	je     1492fbd
 1492fad:	cmp    DWORD PTR [eax+0x60],0x0
 1492fb1:	jne    1492fbd
 1492fb3:	mov    DWORD PTR [esp],eax
 1492fb6:	call   1db0b8
 1492fbb:	mov    eax,DWORD PTR [esi]
 1492fbd:	mov    DWORD PTR [esp+0x1c],esi
 1492fc1:	mov    eax,DWORD PTR [eax+0x50]
 1492fc4:	mov    esi,DWORD PTR [eax]
 1492fc6:	mov    DWORD PTR [esp+0x38],edi
 1492fca:	lea    eax,[ebx+0x43120]
 1492fd0:	mov    eax,DWORD PTR [eax]
 1492fd2:	lea    ecx,[esp+0x38]
 1492fd6:	mov    DWORD PTR [esp+0x4],ecx
 1492fda:	mov    DWORD PTR [esp],eax
 1492fdd:	call   20bf14
 1492fe2:	mov    DWORD PTR [esp+0x8],eax
 1492fe6:	mov    DWORD PTR [esp+0x4],esi
 1492fea:	mov    DWORD PTR [esp+0xc],0x0
 1492ff2:	mov    DWORD PTR [esp],0x0
 1492ff9:	call   cb2fed  ; System.String::Concat
 1492ffe:	mov    esi,DWORD PTR [esp+0x20]
 1493002:	test   esi,esi
 1493004:	je     1493285
 149300a:	lea    ecx,[ebx+0x56adc]  ; literal "{value_1}"
 1493010:	mov    ecx,DWORD PTR [ecx]
 1493012:	lea    edx,[ebx+0x4929c]
 1493018:	mov    DWORD PTR [esp+0x14],edx
 149301c:	mov    edx,DWORD PTR [edx]
 149301e:	mov    DWORD PTR [esp+0xc],edx
 1493022:	mov    DWORD PTR [esp+0x8],eax
 1493026:	mov    DWORD PTR [esp+0x4],ecx
 149302a:	mov    DWORD PTR [esp],esi
 149302d:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 1493032:	mov    eax,DWORD PTR [esp+0x1c]
 1493036:	mov    eax,DWORD PTR [eax]
 1493038:	mov    eax,DWORD PTR [eax+0x50]
 149303b:	mov    esi,DWORD PTR [eax]
 149303d:	mov    edi,DWORD PTR [ebp+0x8]
 1493040:	movss  xmm0,DWORD PTR [edi+0x8c]
 1493048:	movss  DWORD PTR [esp+0x34],xmm0
 149304e:	lea    eax,[ebx+0x433a4]
 1493054:	mov    DWORD PTR [esp+0x18],eax
 1493058:	mov    eax,DWORD PTR [eax]
 149305a:	lea    ecx,[esp+0x34]
 149305e:	mov    DWORD PTR [esp+0x4],ecx
 1493062:	mov    DWORD PTR [esp],eax
 1493065:	call   20bf14
 149306a:	mov    DWORD PTR [esp+0x8],eax
 149306e:	mov    DWORD PTR [esp+0x4],esi
 1493072:	mov    DWORD PTR [esp+0xc],0x0
 149307a:	mov    DWORD PTR [esp],0x0
 1493081:	call   cb2fed  ; System.String::Concat
 1493086:	lea    ecx,[ebx+0x56bd4]  ; literal "{value_5}"
 149308c:	mov    ecx,DWORD PTR [ecx]
 149308e:	mov    esi,DWORD PTR [esp+0x14]
 1493092:	mov    edx,DWORD PTR [esi]
 1493094:	mov    DWORD PTR [esp+0xc],edx
 1493098:	mov    DWORD PTR [esp+0x8],eax
 149309c:	mov    DWORD PTR [esp+0x4],ecx
 14930a0:	mov    eax,DWORD PTR [esp+0x20]
 14930a4:	mov    DWORD PTR [esp],eax
 14930a7:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 14930ac:	mov    edi,DWORD PTR [esp+0x1c]
 14930b0:	mov    eax,DWORD PTR [edi]
 14930b2:	mov    eax,DWORD PTR [eax+0x50]
 14930b5:	mov    eax,DWORD PTR [eax]
 14930b7:	mov    DWORD PTR [esp+0x10],eax
 14930bb:	mov    eax,DWORD PTR [ebp+0x8]
 14930be:	movss  xmm0,DWORD PTR [eax+0x94]
 14930c6:	movss  DWORD PTR [esp+0x30],xmm0
 14930cc:	mov    eax,DWORD PTR [esp+0x18]
 14930d0:	mov    eax,DWORD PTR [eax]
 14930d2:	lea    ecx,[esp+0x30]
 14930d6:	mov    DWORD PTR [esp+0x4],ecx
 14930da:	mov    DWORD PTR [esp],eax
 14930dd:	call   20bf14
 14930e2:	mov    DWORD PTR [esp+0x8],eax
 14930e6:	mov    eax,DWORD PTR [esp+0x10]
 14930ea:	mov    DWORD PTR [esp+0x4],eax
 14930ee:	mov    DWORD PTR [esp+0xc],0x0
 14930f6:	mov    DWORD PTR [esp],0x0
 14930fd:	call   cb2fed  ; System.String::Concat
 1493102:	lea    ecx,[ebx+0x56b90]  ; literal "{value_3}"
 1493108:	mov    ecx,DWORD PTR [ecx]
 149310a:	mov    edx,DWORD PTR [esi]
 149310c:	mov    DWORD PTR [esp+0xc],edx
 1493110:	mov    DWORD PTR [esp+0x8],eax
 1493114:	mov    DWORD PTR [esp+0x4],ecx
 1493118:	mov    eax,DWORD PTR [esp+0x20]
 149311c:	mov    DWORD PTR [esp],eax
 149311f:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 1493124:	mov    eax,DWORD PTR [edi]
 1493126:	mov    eax,DWORD PTR [eax+0x50]
 1493129:	mov    esi,DWORD PTR [eax]
 149312b:	mov    edi,DWORD PTR [ebp+0x8]
 149312e:	movss  xmm0,DWORD PTR [edi+0x90]
 1493136:	movss  DWORD PTR [esp+0x2c],xmm0
 149313c:	mov    eax,DWORD PTR [esp+0x18]
 1493140:	mov    eax,DWORD PTR [eax]
 1493142:	lea    ecx,[esp+0x2c]
 1493146:	mov    DWORD PTR [esp+0x4],ecx
 149314a:	mov    DWORD PTR [esp],eax
 149314d:	call   20bf14
 1493152:	mov    DWORD PTR [esp+0x8],eax
 1493156:	mov    DWORD PTR [esp+0x4],esi
 149315a:	mov    DWORD PTR [esp+0xc],0x0
 1493162:	mov    DWORD PTR [esp],0x0
 1493169:	call   cb2fed  ; System.String::Concat
 149316e:	lea    ecx,[ebx+0x56c0c]  ; literal "{value_4}"
 1493174:	mov    ecx,DWORD PTR [ecx]
 1493176:	mov    edx,DWORD PTR [esp+0x14]
 149317a:	mov    edx,DWORD PTR [edx]
 149317c:	mov    DWORD PTR [esp+0xc],edx
 1493180:	mov    DWORD PTR [esp+0x8],eax
 1493184:	mov    DWORD PTR [esp+0x4],ecx
 1493188:	mov    eax,DWORD PTR [esp+0x20]
 149318c:	mov    DWORD PTR [esp],eax
 149318f:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 1493194:	mov    eax,DWORD PTR [esp+0x1c]
 1493198:	mov    eax,DWORD PTR [eax]
 149319a:	mov    eax,DWORD PTR [eax+0x50]
 149319d:	mov    esi,DWORD PTR [eax]
 149319f:	movss  xmm0,DWORD PTR [edi+0x9c]
 14931a7:	movss  DWORD PTR [esp+0x28],xmm0
 14931ad:	mov    eax,DWORD PTR [esp+0x18]
 14931b1:	mov    eax,DWORD PTR [eax]
 14931b3:	lea    ecx,[esp+0x28]
 14931b7:	mov    DWORD PTR [esp+0x4],ecx
 14931bb:	mov    DWORD PTR [esp],eax
 14931be:	call   20bf14
 14931c3:	mov    DWORD PTR [esp+0x8],eax
 14931c7:	mov    DWORD PTR [esp+0x4],esi
 14931cb:	mov    esi,DWORD PTR [esp+0x20]
 14931cf:	mov    DWORD PTR [esp+0xc],0x0
 14931d7:	mov    DWORD PTR [esp],0x0
 14931de:	call   cb2fed  ; System.String::Concat
 14931e3:	lea    ecx,[ebx+0x56b94]  ; literal "{value_2}"
 14931e9:	mov    ecx,DWORD PTR [ecx]
 14931eb:	mov    edx,DWORD PTR [esp+0x14]
 14931ef:	mov    edx,DWORD PTR [edx]
 14931f1:	mov    DWORD PTR [esp+0xc],edx
 14931f5:	mov    DWORD PTR [esp+0x8],eax
 14931f9:	mov    DWORD PTR [esp+0x4],ecx
 14931fd:	mov    DWORD PTR [esp],esi
 1493200:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 1493205:	lea    eax,[ebx+0x4584c]
 149320b:	mov    eax,DWORD PTR [eax]
 149320d:	test   BYTE PTR [eax+0xb2],0x1
 1493214:	je     1493224
 1493216:	cmp    DWORD PTR [eax+0x60],0x0
 149321a:	jne    1493224
 149321c:	mov    DWORD PTR [esp],eax
 149321f:	call   1db0b8
 1493224:	mov    DWORD PTR [esp+0x4],0x0
 149322c:	mov    DWORD PTR [esp],0x0
 1493233:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 1493238:	mov    edi,eax
 149323a:	mov    eax,DWORD PTR [ebp+0x8]
 149323d:	mov    DWORD PTR [esp],eax
 1493240:	mov    DWORD PTR [esp+0x4],0x0
 1493248:	call   eb2617  ; ABH.GameDatas.Battle.SkillBattleDataBase::get_Model
 149324d:	test   eax,eax
 149324f:	je     1493285
 1493251:	mov    DWORD PTR [esp],eax
 1493254:	mov    DWORD PTR [esp+0x4],0x0
 149325c:	call   6b17b9  ; ABH.GameDatas.SkillGameData::get_SkillDescription
 1493261:	test   edi,edi
 1493263:	je     1493285
 1493265:	mov    DWORD PTR [esp+0x8],esi
 1493269:	mov    DWORD PTR [esp+0x4],eax
 149326d:	mov    DWORD PTR [esp],edi
 1493270:	mov    DWORD PTR [esp+0xc],0x0
 1493278:	call   af6df4  ; ABHLocaService::GetSkillDescriptions
 149327d:	lea    esp,[ebp-0xc]
 1493280:	pop    esi
 1493281:	pop    edi
 1493282:	pop    ebx
 1493283:	pop    ebp
 1493284:	ret
 1493285:	call   1fbc48
 149328a:	call   14943fc