
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ebffbd:
  ebffbd:	push   ebp
  ebffbe:	mov    ebp,esp
  ebffc0:	push   ebx
  ebffc1:	push   edi
  ebffc2:	push   esi
  ebffc3:	and    esp,0xfffffff0
  ebffc6:	sub    esp,0x20
  ebffc9:	call   ebffce
  ebffce:	pop    ebx
  ebffcf:	add    ebx,0x1051f76
  ebffd5:	mov    esi,DWORD PTR [ebp+0xc]
  ebffd8:	mov    al,BYTE PTR [ebx+0x626d5]
  ebffde:	test   al,al
  ebffe0:	jne    ebfff9
  ebffe2:	lea    eax,[ebx-0x66fbe4]
  ebffe8:	mov    eax,DWORD PTR [eax]
  ebffea:	mov    DWORD PTR [esp],eax
  ebffed:	call   1ca6e8
  ebfff2:	mov    BYTE PTR [ebx+0x626d5],0x1
  ebfff9:	test   esi,esi
  ebfffb:	je     ec0339
  ec0001:	lea    eax,[ebx+0x45874]
  ec0007:	mov    DWORD PTR [esp+0x18],eax
  ec000b:	mov    eax,DWORD PTR [eax]
  ec000d:	mov    ecx,DWORD PTR [esi]
  ec000f:	movzx  edx,WORD PTR [ecx+0xaa]
  ec0016:	test   edx,edx
  ec0018:	je     ec0029
  ec001a:	mov    edi,DWORD PTR [ecx+0x4c]
  ec001d:	xor    esi,esi
  ec001f:	cmp    DWORD PTR [edi+esi*8],eax
  ec0022:	je     ec0044
  ec0024:	inc    esi
  ec0025:	cmp    esi,edx
  ec0027:	jb     ec001f
  ec0029:	mov    DWORD PTR [esp+0x4],eax
  ec002d:	mov    esi,DWORD PTR [ebp+0xc]
  ec0030:	mov    DWORD PTR [esp],esi
  ec0033:	mov    DWORD PTR [esp+0x8],0x31
  ec003b:	call   1c1964
  ec0040:	mov    ecx,eax
  ec0042:	jmp    ec0052
  ec0044:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ec0048:	lea    ecx,[ecx+eax*8+0x23c]
  ec004f:	mov    esi,DWORD PTR [ebp+0xc]
  ec0052:	mov    eax,DWORD PTR [ecx+0x4]
  ec0055:	mov    DWORD PTR [esp+0x4],eax
  ec0059:	mov    DWORD PTR [esp],esi
  ec005c:	call   DWORD PTR [ecx]
  ec005e:	test   eax,eax
  ec0060:	jne    ec00eb
  ec0066:	lea    eax,[ebx+0x458b4]
  ec006c:	mov    eax,DWORD PTR [eax]
  ec006e:	mov    DWORD PTR [esp],eax
  ec0071:	call   20bfb2
  ec0076:	mov    DWORD PTR [esp+0x14],eax
  ec007a:	lea    ecx,[ebx+0x4a1bc]
  ec0080:	mov    ecx,DWORD PTR [ecx]
  ec0082:	mov    DWORD PTR [esp+0x4],ecx
  ec0086:	mov    DWORD PTR [esp],eax
  ec0089:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
  ec008e:	mov    eax,DWORD PTR [esp+0x18]
  ec0092:	mov    eax,DWORD PTR [eax]
  ec0094:	mov    ecx,DWORD PTR [esi]
  ec0096:	movzx  edx,WORD PTR [ecx+0xaa]
  ec009d:	test   edx,edx
  ec009f:	je     ec00b0
  ec00a1:	mov    edi,DWORD PTR [ecx+0x4c]
  ec00a4:	xor    esi,esi
  ec00a6:	cmp    DWORD PTR [edi+esi*8],eax
  ec00a9:	je     ec00c9
  ec00ab:	inc    esi
  ec00ac:	cmp    esi,edx
  ec00ae:	jb     ec00a6
  ec00b0:	mov    DWORD PTR [esp+0x4],eax
  ec00b4:	mov    esi,DWORD PTR [ebp+0xc]
  ec00b7:	mov    DWORD PTR [esp],esi
  ec00ba:	mov    DWORD PTR [esp+0x8],0x32
  ec00c2:	call   1c1964
  ec00c7:	jmp    ec00d7
  ec00c9:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ec00cd:	lea    eax,[ecx+eax*8+0x244]
  ec00d4:	mov    esi,DWORD PTR [ebp+0xc]
  ec00d7:	mov    ecx,DWORD PTR [eax+0x4]
  ec00da:	mov    DWORD PTR [esp+0x8],ecx
  ec00de:	mov    ecx,DWORD PTR [esp+0x14]
  ec00e2:	mov    DWORD PTR [esp+0x4],ecx
  ec00e6:	mov    DWORD PTR [esp],esi
  ec00e9:	call   DWORD PTR [eax]
  ec00eb:	mov    eax,DWORD PTR [esp+0x18]
  ec00ef:	mov    eax,DWORD PTR [eax]
  ec00f1:	mov    ecx,DWORD PTR [esi]
  ec00f3:	movzx  edx,WORD PTR [ecx+0xaa]
  ec00fa:	test   edx,edx
  ec00fc:	je     ec010d
  ec00fe:	mov    edi,DWORD PTR [ecx+0x4c]
  ec0101:	xor    esi,esi
  ec0103:	cmp    DWORD PTR [edi+esi*8],eax
  ec0106:	je     ec0128
  ec0108:	inc    esi
  ec0109:	cmp    esi,edx
  ec010b:	jb     ec0103
  ec010d:	mov    DWORD PTR [esp+0x4],eax
  ec0111:	mov    esi,DWORD PTR [ebp+0xc]
  ec0114:	mov    DWORD PTR [esp],esi
  ec0117:	mov    DWORD PTR [esp+0x8],0x31
  ec011f:	call   1c1964
  ec0124:	mov    ecx,eax
  ec0126:	jmp    ec0136
  ec0128:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ec012c:	lea    ecx,[ecx+eax*8+0x23c]
  ec0133:	mov    esi,DWORD PTR [ebp+0xc]
  ec0136:	mov    eax,DWORD PTR [ecx+0x4]
  ec0139:	mov    DWORD PTR [esp+0x4],eax
  ec013d:	mov    DWORD PTR [esp],esi
  ec0140:	call   DWORD PTR [ecx]
  ec0142:	test   eax,eax
  ec0144:	je     ec0339
  ec014a:	mov    edx,DWORD PTR [ebp+0x10]
  ec014d:	lea    ecx,[ebx+0x4a1c0]
  ec0153:	mov    ecx,DWORD PTR [ecx]
  ec0155:	mov    DWORD PTR [esp+0x8],ecx
  ec0159:	mov    DWORD PTR [esp+0x4],edx
  ec015d:	mov    DWORD PTR [esp],eax
  ec0160:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
  ec0165:	mov    BYTE PTR [esp+0x14],al
  ec0169:	mov    eax,DWORD PTR [esp+0x18]
  ec016d:	mov    eax,DWORD PTR [eax]
  ec016f:	mov    ecx,DWORD PTR [esi]
  ec0171:	movzx  edx,WORD PTR [ecx+0xaa]
  ec0178:	test   edx,edx
  ec017a:	je     ec018b
  ec017c:	mov    edi,DWORD PTR [ecx+0x4c]
  ec017f:	xor    esi,esi
  ec0181:	cmp    DWORD PTR [edi+esi*8],eax
  ec0184:	je     ec01a6
  ec0186:	inc    esi
  ec0187:	cmp    esi,edx
  ec0189:	jb     ec0181
  ec018b:	mov    DWORD PTR [esp+0x4],eax
  ec018f:	mov    esi,DWORD PTR [ebp+0xc]
  ec0192:	mov    DWORD PTR [esp],esi
  ec0195:	mov    DWORD PTR [esp+0x8],0x31
  ec019d:	call   1c1964
  ec01a2:	mov    ecx,eax
  ec01a4:	jmp    ec01b4
  ec01a6:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ec01aa:	lea    ecx,[ecx+eax*8+0x23c]
  ec01b1:	mov    esi,DWORD PTR [ebp+0xc]
  ec01b4:	mov    eax,DWORD PTR [ecx+0x4]
  ec01b7:	mov    DWORD PTR [esp+0x4],eax
  ec01bb:	mov    DWORD PTR [esp],esi
  ec01be:	call   DWORD PTR [ecx]
  ec01c0:	test   eax,eax
  ec01c2:	je     ec0339
  ec01c8:	mov    edx,DWORD PTR [ebp+0x14]
  ec01cb:	cmp    BYTE PTR [esp+0x14],0x0
  ec01d0:	je     ec024a
  ec01d2:	lea    ecx,[ebx+0x4a184]
  ec01d8:	mov    ecx,DWORD PTR [ecx]
  ec01da:	mov    DWORD PTR [esp+0x8],ecx
  ec01de:	mov    ecx,DWORD PTR [ebp+0x10]
  ec01e1:	mov    DWORD PTR [esp+0x4],ecx
  ec01e5:	mov    DWORD PTR [esp],eax
  ec01e8:	call   618b6e  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Item | System.Collections.Generic.Dictionary`2<string, object>::get_Item | System.Collections.Generic.Dictionary`2<string, string>::get_Item | +34 other aliases
  ec01ed:	test   eax,eax
  ec01ef:	je     ec0339
  ec01f5:	mov    DWORD PTR [esp],eax
  ec01f8:	mov    DWORD PTR [esp+0x8],0x0
  ec0200:	mov    DWORD PTR [esp+0x4],0x1
  ec0208:	call   ebe37e  ; ABH.GameDatas.Battle.BattleEffectGameData::RemoveEffect
  ec020d:	mov    eax,DWORD PTR [esp+0x18]
  ec0211:	mov    eax,DWORD PTR [eax]
  ec0213:	mov    ecx,DWORD PTR [esi]
  ec0215:	movzx  edx,WORD PTR [ecx+0xaa]
  ec021c:	test   edx,edx
  ec021e:	je     ec022f
  ec0220:	mov    edi,DWORD PTR [ecx+0x4c]
  ec0223:	xor    esi,esi
  ec0225:	cmp    DWORD PTR [edi+esi*8],eax
  ec0228:	je     ec0291
  ec022a:	inc    esi
  ec022b:	cmp    esi,edx
  ec022d:	jb     ec0225
  ec022f:	mov    DWORD PTR [esp+0x4],eax
  ec0233:	mov    esi,DWORD PTR [ebp+0xc]
  ec0236:	mov    DWORD PTR [esp],esi
  ec0239:	mov    DWORD PTR [esp+0x8],0x31
  ec0241:	call   1c1964
  ec0246:	mov    ecx,eax
  ec0248:	jmp    ec029f
  ec024a:	lea    ecx,[ebx+0x4a1c8]
  ec0250:	mov    ecx,DWORD PTR [ecx]
  ec0252:	mov    DWORD PTR [esp+0xc],ecx
  ec0256:	mov    DWORD PTR [esp+0x8],edx
  ec025a:	mov    ecx,DWORD PTR [ebp+0x10]
  ec025d:	mov    DWORD PTR [esp+0x4],ecx
  ec0261:	mov    DWORD PTR [esp],eax
  ec0264:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
  ec0269:	mov    eax,DWORD PTR [esp+0x18]
  ec026d:	mov    eax,DWORD PTR [eax]
  ec026f:	mov    ecx,DWORD PTR [esi]
  ec0271:	movzx  edx,WORD PTR [ecx+0xaa]
  ec0278:	test   edx,edx
  ec027a:	je     ec02f7
  ec027c:	mov    esi,DWORD PTR [ecx+0x4c]
  ec027f:	xor    edi,edi
  ec0281:	cmp    DWORD PTR [esi+edi*8],eax
  ec0284:	je     ec0310
  ec028a:	inc    edi
  ec028b:	cmp    edi,edx
  ec028d:	jb     ec0281
  ec028f:	jmp    ec02f7
  ec0291:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ec0295:	lea    ecx,[ecx+eax*8+0x23c]
  ec029c:	mov    esi,DWORD PTR [ebp+0xc]
  ec029f:	mov    eax,DWORD PTR [ecx+0x4]
  ec02a2:	mov    DWORD PTR [esp+0x4],eax
  ec02a6:	mov    DWORD PTR [esp],esi
  ec02a9:	call   DWORD PTR [ecx]
  ec02ab:	test   eax,eax
  ec02ad:	je     ec0339
  ec02b3:	lea    ecx,[ebx+0x4a1c4]
  ec02b9:	mov    ecx,DWORD PTR [ecx]
  ec02bb:	mov    DWORD PTR [esp+0xc],ecx
  ec02bf:	mov    ecx,DWORD PTR [ebp+0x14]
  ec02c2:	mov    DWORD PTR [esp+0x8],ecx
  ec02c6:	mov    ecx,DWORD PTR [ebp+0x10]
  ec02c9:	mov    DWORD PTR [esp+0x4],ecx
  ec02cd:	mov    DWORD PTR [esp],eax
  ec02d0:	call   618e5a  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::set_Item | System.Collections.Generic.Dictionary`2<string, object>::set_Item | System.Collections.Generic.Dictionary`2<string, string>::set_Item | +14 other aliases
  ec02d5:	mov    eax,DWORD PTR [esp+0x18]
  ec02d9:	mov    eax,DWORD PTR [eax]
  ec02db:	mov    ecx,DWORD PTR [esi]
  ec02dd:	movzx  edx,WORD PTR [ecx+0xaa]
  ec02e4:	test   edx,edx
  ec02e6:	je     ec02f7
  ec02e8:	mov    esi,DWORD PTR [ecx+0x4c]
  ec02eb:	xor    edi,edi
  ec02ed:	cmp    DWORD PTR [esi+edi*8],eax
  ec02f0:	je     ec0310
  ec02f2:	inc    edi
  ec02f3:	cmp    edi,edx
  ec02f5:	jb     ec02ed
  ec02f7:	mov    DWORD PTR [esp+0x4],eax
  ec02fb:	mov    esi,DWORD PTR [ebp+0xc]
  ec02fe:	mov    DWORD PTR [esp],esi
  ec0301:	mov    DWORD PTR [esp+0x8],0x34
  ec0309:	call   1c1964
  ec030e:	jmp    ec031e
  ec0310:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  ec0314:	lea    eax,[ecx+eax*8+0x254]
  ec031b:	mov    esi,DWORD PTR [ebp+0xc]
  ec031e:	mov    ecx,DWORD PTR [eax+0x4]
  ec0321:	mov    DWORD PTR [esp+0x8],ecx
  ec0325:	mov    ecx,DWORD PTR [ebp+0x10]
  ec0328:	mov    DWORD PTR [esp+0x4],ecx
  ec032c:	mov    DWORD PTR [esp],esi
  ec032f:	call   DWORD PTR [eax]
  ec0331:	lea    esp,[ebp-0xc]
  ec0334:	pop    esi
  ec0335:	pop    edi
  ec0336:	pop    ebx
  ec0337:	pop    ebp
  ec0338:	ret
  ec0339:	call   1fbc48
  ec033e:	call   ebbb41