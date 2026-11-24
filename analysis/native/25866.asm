
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

01477d75:
 1477d75:	push   ebp
 1477d76:	mov    ebp,esp
 1477d78:	push   ebx
 1477d79:	push   edi
 1477d7a:	push   esi
 1477d7b:	and    esp,0xfffffff0
 1477d7e:	sub    esp,0x50
 1477d81:	call   1477d86
 1477d86:	pop    ebx
 1477d87:	add    ebx,0xa9a1be
 1477d8d:	mov    esi,DWORD PTR [ebp+0xc]
 1477d90:	mov    al,BYTE PTR [ebx+0x65879]
 1477d96:	test   al,al
 1477d98:	jne    1477db1
 1477d9a:	lea    eax,[ebx-0x66e8f0]
 1477da0:	mov    eax,DWORD PTR [eax]
 1477da2:	mov    DWORD PTR [esp],eax
 1477da5:	call   1ca6e8
 1477daa:	mov    BYTE PTR [ebx+0x65879],0x1
 1477db1:	test   esi,esi
 1477db3:	je     1478488
 1477db9:	mov    edi,DWORD PTR [ebp+0x8]
 1477dbc:	mov    eax,DWORD PTR [esi+0x8]
 1477dbf:	mov    DWORD PTR [esp+0x4],eax
 1477dc3:	mov    DWORD PTR [esp],edi
 1477dc6:	call   147849a  ; SmoothMoves.BoneAnimation::GetAnimationClipName
 1477dcb:	mov    ecx,DWORD PTR [edi+0xe8]
 1477dd1:	test   ecx,ecx
 1477dd3:	je     1478490
 1477dd9:	mov    DWORD PTR [esp+0x4],eax
 1477ddd:	mov    DWORD PTR [esp+0x28],eax
 1477de1:	mov    DWORD PTR [esp],ecx
 1477de4:	mov    DWORD PTR [esp+0x8],0x0
 1477dec:	call   14f70dd  ; UnityEngine.Animation::get_Item
 1477df1:	test   eax,eax
 1477df3:	je     1478490
 1477df9:	mov    DWORD PTR [esp],eax
 1477dfc:	mov    DWORD PTR [esp+0x24],eax
 1477e00:	mov    DWORD PTR [esp+0x4],0x0
 1477e08:	call   14f8f42  ; UnityEngine.AnimationState::get_layer
 1477e0d:	mov    DWORD PTR [esp+0x2c],eax
 1477e11:	mov    DWORD PTR [esp+0x30],0x0
 1477e19:	movss  xmm0,DWORD PTR [ebx-0x64fc28]
 1477e21:	movss  DWORD PTR [esp+0x1c],xmm0
 1477e27:	xor    edi,edi
 1477e29:	jmp    1477e38
 1477e2b:	mov    eax,DWORD PTR [esp+0x38]
 1477e2f:	inc    eax
 1477e30:	mov    edi,eax
 1477e32:	mov    al,cl
 1477e34:	mov    DWORD PTR [esp+0x30],eax
 1477e38:	mov    eax,DWORD PTR [esi+0x10]
 1477e3b:	test   eax,eax
 1477e3d:	je     1478490
 1477e43:	lea    ecx,[ebx+0x49d94]
 1477e49:	mov    ecx,DWORD PTR [ecx]
 1477e4b:	mov    DWORD PTR [esp+0x4],ecx
 1477e4f:	mov    DWORD PTR [esp],eax
 1477e52:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
 1477e57:	cmp    edi,eax
 1477e59:	mov    edx,edi
 1477e5b:	jge    1478475
 1477e61:	mov    eax,DWORD PTR [esi+0x10]
 1477e64:	test   eax,eax
 1477e66:	je     1478490
 1477e6c:	mov    edi,DWORD PTR [ebp+0x8]
 1477e6f:	mov    esi,DWORD PTR [edi+0x12c]
 1477e75:	lea    ecx,[ebx+0x49d84]
 1477e7b:	mov    DWORD PTR [esp+0x3c],ecx
 1477e7f:	mov    ecx,DWORD PTR [ecx]
 1477e81:	mov    DWORD PTR [esp+0x8],ecx
 1477e85:	mov    DWORD PTR [esp+0x38],edx
 1477e89:	mov    DWORD PTR [esp+0x4],edx
 1477e8d:	mov    DWORD PTR [esp],eax
 1477e90:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1477e95:	test   eax,eax
 1477e97:	je     1478490
 1477e9d:	test   esi,esi
 1477e9f:	je     1478490
 1477ea5:	mov    eax,DWORD PTR [eax+0xc]
 1477ea8:	cmp    DWORD PTR [esi+0xc],eax
 1477eab:	ja     1477ec2
 1477ead:	mov    DWORD PTR [esp+0x34],eax
 1477eb1:	call   1fc7e4
 1477eb6:	mov    DWORD PTR [esp],eax
 1477eb9:	call   1fbb20
 1477ebe:	mov    eax,DWORD PTR [esp+0x34]
 1477ec2:	mov    esi,DWORD PTR [esi+eax*4+0x10]
 1477ec6:	test   esi,esi
 1477ec8:	je     1478490
 1477ece:	mov    eax,DWORD PTR [esp+0x2c]
 1477ed2:	cmp    eax,DWORD PTR [esi+0x10]
 1477ed5:	jge    1477f0e
 1477ed7:	mov    eax,DWORD PTR [edi+0xe8]
 1477edd:	test   eax,eax
 1477edf:	je     1478490
 1477ee5:	mov    ecx,DWORD PTR [esi+0xc]
 1477ee8:	mov    DWORD PTR [esp+0x4],ecx
 1477eec:	mov    DWORD PTR [esp],eax
 1477eef:	mov    DWORD PTR [esp+0x8],0x0
 1477ef7:	call   14f7071  ; UnityEngine.Animation::IsPlaying
 1477efc:	test   al,al
 1477efe:	je     1477f0e
 1477f00:	mov    eax,DWORD PTR [esp+0x30]
 1477f04:	mov    cl,al
 1477f06:	mov    esi,DWORD PTR [ebp+0xc]
 1477f09:	jmp    1477e2b
 1477f0e:	mov    eax,DWORD PTR [esp+0x28]
 1477f12:	mov    DWORD PTR [esi+0xc],eax
 1477f15:	mov    eax,DWORD PTR [esp+0x2c]
 1477f19:	mov    DWORD PTR [esi+0x10],eax
 1477f1c:	mov    eax,DWORD PTR [ebp+0xc]
 1477f1f:	mov    eax,DWORD PTR [eax+0x10]
 1477f22:	test   eax,eax
 1477f24:	je     1478490
 1477f2a:	mov    ecx,DWORD PTR [esp+0x3c]
 1477f2e:	mov    ecx,DWORD PTR [ecx]
 1477f30:	mov    DWORD PTR [esp+0x8],ecx
 1477f34:	mov    ecx,DWORD PTR [esp+0x38]
 1477f38:	mov    DWORD PTR [esp+0x4],ecx
 1477f3c:	mov    DWORD PTR [esp],eax
 1477f3f:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1477f44:	test   eax,eax
 1477f46:	je     1478490
 1477f4c:	mov    eax,DWORD PTR [eax+0x10]
 1477f4f:	test   eax,eax
 1477f51:	je     1478490
 1477f57:	lea    ecx,[ebx+0x49d88]
 1477f5d:	mov    DWORD PTR [esp+0x34],ecx
 1477f61:	mov    ecx,DWORD PTR [ecx]
 1477f63:	mov    DWORD PTR [esp+0x8],ecx
 1477f67:	mov    DWORD PTR [esp],eax
 1477f6a:	mov    DWORD PTR [esp+0x4],0x0
 1477f72:	call   497288  ; System.Collections.Generic.List`1<SmoothMoves.TriggerFrameBone+TRIGGER_EVENT_TYPE>::Contains
 1477f77:	test   al,al
 1477f79:	je     14782f3
 1477f7f:	mov    eax,DWORD PTR [edi+0xc]
 1477f82:	test   eax,eax
 1477f84:	je     1478490
 1477f8a:	mov    DWORD PTR [eax+0x8],edi
 1477f8d:	mov    eax,DWORD PTR [ebp+0xc]
 1477f90:	mov    eax,DWORD PTR [eax+0x10]
 1477f93:	test   eax,eax
 1477f95:	je     1478490
 1477f9b:	mov    ecx,DWORD PTR [edi+0xc]
 1477f9e:	mov    DWORD PTR [esp+0x20],ecx
 1477fa2:	mov    esi,DWORD PTR [edi+0x108]
 1477fa8:	mov    ecx,DWORD PTR [esp+0x3c]
 1477fac:	mov    ecx,DWORD PTR [ecx]
 1477fae:	mov    DWORD PTR [esp+0x8],ecx
 1477fb2:	mov    ecx,DWORD PTR [esp+0x38]
 1477fb6:	mov    DWORD PTR [esp+0x4],ecx
 1477fba:	mov    DWORD PTR [esp],eax
 1477fbd:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1477fc2:	test   eax,eax
 1477fc4:	je     1478490
 1477fca:	test   esi,esi
 1477fcc:	je     1478490
 1477fd2:	mov    eax,DWORD PTR [eax+0xc]
 1477fd5:	cmp    DWORD PTR [esi+0xc],eax
 1477fd8:	ja     1477fef
 1477fda:	mov    DWORD PTR [esp+0x18],eax
 1477fde:	call   1fc7e4
 1477fe3:	mov    DWORD PTR [esp],eax
 1477fe6:	call   1fbb20
 1477feb:	mov    eax,DWORD PTR [esp+0x18]
 1477fef:	mov    eax,DWORD PTR [esi+eax*4+0x10]
 1477ff3:	test   eax,eax
 1477ff5:	je     1478490
 1477ffb:	mov    ecx,DWORD PTR [esp+0x20]
 1477fff:	test   ecx,ecx
 1478001:	mov    edx,DWORD PTR [esp+0x28]
 1478005:	je     1478490
 147800b:	mov    eax,DWORD PTR [eax+0x10]
 147800e:	mov    DWORD PTR [ecx+0xc],eax
 1478011:	mov    eax,DWORD PTR [edi+0xc]
 1478014:	test   eax,eax
 1478016:	je     1478490
 147801c:	mov    ecx,DWORD PTR [ebp+0xc]
 147801f:	mov    ecx,DWORD PTR [ecx+0x8]
 1478022:	mov    DWORD PTR [eax+0x10],ecx
 1478025:	mov    eax,DWORD PTR [edi+0xc]
 1478028:	test   eax,eax
 147802a:	je     1478490
 1478030:	mov    DWORD PTR [eax+0x14],edx
 1478033:	mov    eax,DWORD PTR [edi+0xc]
 1478036:	test   eax,eax
 1478038:	je     1478490
 147803e:	mov    ecx,DWORD PTR [ebp+0xc]
 1478041:	mov    edx,ecx
 1478043:	mov    ecx,DWORD PTR [edx+0xc]
 1478046:	mov    DWORD PTR [eax+0x18],ecx
 1478049:	mov    esi,DWORD PTR [edi+0xc]
 147804c:	mov    edi,edx
 147804e:	cvtsi2ss xmm0,DWORD PTR [edi+0xc]
 1478053:	movss  DWORD PTR [esp+0x20],xmm0
 1478059:	mov    eax,DWORD PTR [esp+0x24]
 147805d:	mov    DWORD PTR [esp],eax
 1478060:	mov    DWORD PTR [esp+0x4],0x0
 1478068:	call   14f8d47  ; UnityEngine.AnimationState::get_speed
 147806d:	fstp   DWORD PTR [esp+0x48]
 1478071:	movss  xmm0,DWORD PTR [esp+0x48]
 1478077:	xorps  xmm1,xmm1
 147807a:	ucomiss xmm0,xmm1
 147807d:	movss  xmm0,DWORD PTR [esp+0x1c]
 1478083:	jne    1478087
 1478085:	jnp    14780a5
 1478087:	mov    eax,DWORD PTR [esp+0x24]
 147808b:	mov    DWORD PTR [esp],eax
 147808e:	mov    DWORD PTR [esp+0x4],0x0
 1478096:	call   14f8d47  ; UnityEngine.AnimationState::get_speed
 147809b:	fstp   DWORD PTR [esp+0x44]
 147809f:	movss  xmm0,DWORD PTR [esp+0x44]
 14780a5:	test   esi,esi
 14780a7:	je     1478490
 14780ad:	movss  xmm1,DWORD PTR [esp+0x20]
 14780b3:	divss  xmm1,xmm0
 14780b7:	movss  DWORD PTR [esi+0x1c],xmm1
 14780bc:	mov    eax,DWORD PTR [ebp+0x8]
 14780bf:	mov    esi,DWORD PTR [eax+0xc]
 14780c2:	mov    eax,DWORD PTR [edi+0xc]
 14780c5:	mov    DWORD PTR [esp+0x20],eax
 14780c9:	mov    eax,DWORD PTR [esp+0x24]
 14780cd:	mov    DWORD PTR [esp],eax
 14780d0:	mov    DWORD PTR [esp+0x4],0x0
 14780d8:	call   14f8ee3  ; UnityEngine.AnimationState::get_length
 14780dd:	fstp   DWORD PTR [esp+0x40]
 14780e1:	test   esi,esi
 14780e3:	je     1478490
 14780e9:	cvtsi2ss xmm0,DWORD PTR [esp+0x20]
 14780ef:	divss  xmm0,DWORD PTR [esp+0x40]
 14780f5:	movss  DWORD PTR [esi+0x20],xmm0
 14780fa:	mov    eax,DWORD PTR [edi+0x10]
 14780fd:	test   eax,eax
 14780ff:	je     1478490
 1478105:	mov    ecx,DWORD PTR [ebp+0x8]
 1478108:	mov    esi,DWORD PTR [ecx+0xc]
 147810b:	mov    ecx,DWORD PTR [esp+0x3c]
 147810f:	mov    ecx,DWORD PTR [ecx]
 1478111:	mov    DWORD PTR [esp+0x8],ecx
 1478115:	mov    ecx,DWORD PTR [esp+0x38]
 1478119:	mov    DWORD PTR [esp+0x4],ecx
 147811d:	mov    DWORD PTR [esp],eax
 1478120:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1478125:	test   eax,eax
 1478127:	je     1478490
 147812d:	test   esi,esi
 147812f:	je     1478490
 1478135:	mov    eax,DWORD PTR [eax+0xc]
 1478138:	mov    DWORD PTR [esi+0x24],eax
 147813b:	mov    eax,DWORD PTR [edi+0x10]
 147813e:	test   eax,eax
 1478140:	je     1478490
 1478146:	mov    edi,DWORD PTR [ebp+0x8]
 1478149:	mov    edx,DWORD PTR [edi+0xc]
 147814c:	mov    DWORD PTR [esp+0x20],edx
 1478150:	mov    esi,DWORD PTR [edi+0x108]
 1478156:	mov    ecx,DWORD PTR [esp+0x3c]
 147815a:	mov    ecx,DWORD PTR [ecx]
 147815c:	mov    DWORD PTR [esp+0x8],ecx
 1478160:	mov    ecx,DWORD PTR [esp+0x38]
 1478164:	mov    DWORD PTR [esp+0x4],ecx
 1478168:	mov    DWORD PTR [esp],eax
 147816b:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1478170:	test   eax,eax
 1478172:	je     1478490
 1478178:	test   esi,esi
 147817a:	je     1478490
 1478180:	mov    eax,DWORD PTR [eax+0xc]
 1478183:	cmp    DWORD PTR [esi+0xc],eax
 1478186:	ja     147819d
 1478188:	mov    DWORD PTR [esp+0x18],eax
 147818c:	call   1fc7e4
 1478191:	mov    DWORD PTR [esp],eax
 1478194:	call   1fbb20
 1478199:	mov    eax,DWORD PTR [esp+0x18]
 147819d:	mov    eax,DWORD PTR [esi+eax*4+0x10]
 14781a1:	test   eax,eax
 14781a3:	je     1478490
 14781a9:	mov    ecx,DWORD PTR [esp+0x20]
 14781ad:	test   ecx,ecx
 14781af:	je     1478490
 14781b5:	mov    eax,DWORD PTR [eax+0x1c]
 14781b8:	mov    DWORD PTR [ecx+0x28],eax
 14781bb:	mov    eax,DWORD PTR [ebp+0xc]
 14781be:	mov    eax,DWORD PTR [eax+0x10]
 14781c1:	test   eax,eax
 14781c3:	je     1478490
 14781c9:	mov    ecx,DWORD PTR [edi+0xc]
 14781cc:	mov    DWORD PTR [esp+0x20],ecx
 14781d0:	mov    esi,DWORD PTR [edi+0x108]
 14781d6:	mov    ecx,DWORD PTR [esp+0x3c]
 14781da:	mov    ecx,DWORD PTR [ecx]
 14781dc:	mov    DWORD PTR [esp+0x8],ecx
 14781e0:	mov    ecx,DWORD PTR [esp+0x38]
 14781e4:	mov    DWORD PTR [esp+0x4],ecx
 14781e8:	mov    DWORD PTR [esp],eax
 14781eb:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 14781f0:	test   eax,eax
 14781f2:	je     1478490
 14781f8:	test   esi,esi
 14781fa:	je     1478490
 1478200:	mov    eax,DWORD PTR [eax+0xc]
 1478203:	cmp    DWORD PTR [esi+0xc],eax
 1478206:	ja     147821d
 1478208:	mov    DWORD PTR [esp+0x18],eax
 147820c:	call   1fc7e4
 1478211:	mov    DWORD PTR [esp],eax
 1478214:	call   1fbb20
 1478219:	mov    eax,DWORD PTR [esp+0x18]
 147821d:	mov    eax,DWORD PTR [esi+eax*4+0x10]
 1478221:	test   eax,eax
 1478223:	je     1478490
 1478229:	mov    ecx,DWORD PTR [esp+0x20]
 147822d:	test   ecx,ecx
 147822f:	je     1478490
 1478235:	mov    eax,DWORD PTR [eax+0x20]
 1478238:	mov    DWORD PTR [ecx+0x2c],eax
 147823b:	mov    eax,DWORD PTR [ebp+0xc]
 147823e:	mov    eax,DWORD PTR [eax+0x10]
 1478241:	test   eax,eax
 1478243:	je     1478490
 1478249:	mov    esi,DWORD PTR [edi+0xc]
 147824c:	mov    ecx,DWORD PTR [esp+0x3c]
 1478250:	mov    ecx,DWORD PTR [ecx]
 1478252:	mov    DWORD PTR [esp+0x8],ecx
 1478256:	mov    ecx,DWORD PTR [esp+0x38]
 147825a:	mov    DWORD PTR [esp+0x4],ecx
 147825e:	mov    DWORD PTR [esp],eax
 1478261:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1478266:	test   eax,eax
 1478268:	je     1478490
 147826e:	test   esi,esi
 1478270:	je     1478490
 1478276:	mov    eax,DWORD PTR [eax+0x8]
 1478279:	mov    DWORD PTR [esi+0x30],eax
 147827c:	mov    eax,DWORD PTR [edi+0xd8]
 1478282:	xor    esi,esi
 1478284:	jmp    14782a4
 1478286:	mov    ecx,DWORD PTR [edi+0xc]
 1478289:	mov    DWORD PTR [esp+0x4],ecx
 147828d:	mov    DWORD PTR [esp],eax
 1478290:	mov    DWORD PTR [esp+0x8],0x0
 1478298:	call   1478520  ; SmoothMoves.UserTriggerDelegate::Invoke
 147829d:	inc    esi
 147829e:	mov    eax,DWORD PTR [edi+0xd8]
 14782a4:	test   eax,eax
 14782a6:	je     1478490
 14782ac:	lea    ecx,[ebx+0x49d90]
 14782b2:	mov    ecx,DWORD PTR [ecx]
 14782b4:	mov    DWORD PTR [esp+0x4],ecx
 14782b8:	mov    DWORD PTR [esp],eax
 14782bb:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
 14782c0:	cmp    esi,eax
 14782c2:	jge    14782f3
 14782c4:	mov    eax,DWORD PTR [edi+0xd8]
 14782ca:	test   eax,eax
 14782cc:	je     1478490
 14782d2:	lea    ecx,[ebx+0x49d8c]
 14782d8:	mov    ecx,DWORD PTR [ecx]
 14782da:	mov    DWORD PTR [esp+0x8],ecx
 14782de:	mov    DWORD PTR [esp+0x4],esi
 14782e2:	mov    DWORD PTR [esp],eax
 14782e5:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 14782ea:	test   eax,eax
 14782ec:	jne    1478286
 14782ee:	jmp    1478490
 14782f3:	mov    eax,DWORD PTR [ebp+0xc]
 14782f6:	mov    eax,DWORD PTR [eax+0x10]
 14782f9:	test   eax,eax
 14782fb:	je     1478490
 1478301:	mov    ecx,DWORD PTR [esp+0x3c]
 1478305:	mov    ecx,DWORD PTR [ecx]
 1478307:	mov    DWORD PTR [esp+0x8],ecx
 147830b:	mov    ecx,DWORD PTR [esp+0x38]
 147830f:	mov    DWORD PTR [esp+0x4],ecx
 1478313:	mov    DWORD PTR [esp],eax
 1478316:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 147831b:	mov    DWORD PTR [esp+0x4],eax
 147831f:	mov    DWORD PTR [esp],edi
 1478322:	call   14785c4  ; SmoothMoves.BoneAnimation::FireTextureTrigger
 1478327:	test   al,al
 1478329:	mov    al,0x1
 147832b:	jne    1478331
 147832d:	mov    eax,DWORD PTR [esp+0x30]
 1478331:	mov    BYTE PTR [esp+0x30],al
 1478335:	mov    esi,DWORD PTR [ebp+0xc]
 1478338:	mov    eax,DWORD PTR [esi+0x10]
 147833b:	test   eax,eax
 147833d:	je     1478490
 1478343:	mov    ecx,DWORD PTR [esp+0x3c]
 1478347:	mov    ecx,DWORD PTR [ecx]
 1478349:	mov    DWORD PTR [esp+0x8],ecx
 147834d:	mov    edi,DWORD PTR [esp+0x38]
 1478351:	mov    DWORD PTR [esp+0x4],edi
 1478355:	mov    DWORD PTR [esp],eax
 1478358:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 147835d:	test   eax,eax
 147835f:	je     1478490
 1478365:	mov    eax,DWORD PTR [eax+0x10]
 1478368:	test   eax,eax
 147836a:	je     1478490
 1478370:	mov    ecx,DWORD PTR [esp+0x34]
 1478374:	mov    ecx,DWORD PTR [ecx]
 1478376:	mov    DWORD PTR [esp+0x8],ecx
 147837a:	mov    DWORD PTR [esp],eax
 147837d:	mov    DWORD PTR [esp+0x4],0x3
 1478385:	call   497288  ; System.Collections.Generic.List`1<SmoothMoves.TriggerFrameBone+TRIGGER_EVENT_TYPE>::Contains
 147838a:	test   al,al
 147838c:	je     147842a
 1478392:	mov    eax,DWORD PTR [esi+0x10]
 1478395:	test   eax,eax
 1478397:	je     1478490
 147839d:	mov    ecx,DWORD PTR [ebp+0x8]
 14783a0:	mov    esi,DWORD PTR [ecx+0x108]
 14783a6:	mov    ecx,DWORD PTR [esp+0x3c]
 14783aa:	mov    ecx,DWORD PTR [ecx]
 14783ac:	mov    DWORD PTR [esp+0x8],ecx
 14783b0:	mov    DWORD PTR [esp+0x4],edi
 14783b4:	mov    DWORD PTR [esp],eax
 14783b7:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 14783bc:	test   eax,eax
 14783be:	je     1478490
 14783c4:	test   esi,esi
 14783c6:	je     1478490
 14783cc:	mov    ecx,DWORD PTR [eax+0xc]
 14783cf:	cmp    DWORD PTR [esi+0xc],ecx
 14783d2:	ja     14783e9
 14783d4:	mov    DWORD PTR [esp+0x30],ecx
 14783d8:	call   1fc7e4
 14783dd:	mov    DWORD PTR [esp],eax
 14783e0:	call   1fbb20
 14783e5:	mov    ecx,DWORD PTR [esp+0x30]
 14783e9:	mov    eax,DWORD PTR [ebp+0xc]
 14783ec:	mov    eax,DWORD PTR [eax+0x10]
 14783ef:	test   eax,eax
 14783f1:	je     1478490
 14783f7:	mov    esi,DWORD PTR [esi+ecx*4+0x10]
 14783fb:	mov    ecx,DWORD PTR [esp+0x3c]
 14783ff:	mov    ecx,DWORD PTR [ecx]
 1478401:	mov    DWORD PTR [esp+0x8],ecx
 1478405:	mov    DWORD PTR [esp+0x4],edi
 1478409:	mov    DWORD PTR [esp],eax
 147840c:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1478411:	test   eax,eax
 1478413:	je     1478490
 1478415:	test   esi,esi
 1478417:	je     1478490
 1478419:	mov    eax,DWORD PTR [eax+0x80]
 147841f:	mov    DWORD PTR [esi+0x38],eax
 1478422:	mov    BYTE PTR [esp+0x30],0x1
 1478427:	mov    esi,DWORD PTR [ebp+0xc]
 147842a:	mov    eax,DWORD PTR [esi+0x10]
 147842d:	test   eax,eax
 147842f:	je     1478490
 1478431:	mov    ecx,DWORD PTR [esp+0x3c]
 1478435:	mov    ecx,DWORD PTR [ecx]
 1478437:	mov    DWORD PTR [esp+0x8],ecx
 147843b:	mov    DWORD PTR [esp+0x4],edi
 147843f:	mov    DWORD PTR [esp],eax
 1478442:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
 1478447:	test   eax,eax
 1478449:	je     1478490
 147844b:	mov    eax,DWORD PTR [eax+0x10]
 147844e:	test   eax,eax
 1478450:	je     1478490
 1478452:	mov    ecx,DWORD PTR [esp+0x34]
 1478456:	mov    ecx,DWORD PTR [ecx]
 1478458:	mov    DWORD PTR [esp+0x8],ecx
 147845c:	mov    DWORD PTR [esp],eax
 147845f:	mov    DWORD PTR [esp+0x4],0x6
 1478467:	call   497288  ; System.Collections.Generic.List`1<SmoothMoves.TriggerFrameBone+TRIGGER_EVENT_TYPE>::Contains
 147846c:	mov    cl,BYTE PTR [esp+0x30]
 1478470:	jmp    1477e2b
 1478475:	mov    eax,DWORD PTR [esp+0x30]
 1478479:	test   al,0x1
 147847b:	je     1478488
 147847d:	mov    eax,DWORD PTR [ebp+0x8]
 1478480:	mov    DWORD PTR [esp],eax
 1478483:	call   1477340  ; SmoothMoves.BoneAnimation::GenerateMesh
 1478488:	lea    esp,[ebp-0xc]
 147848b:	pop    esi
 147848c:	pop    edi
 147848d:	pop    ebx
 147848e:	pop    ebp
 147848f:	ret
 1478490:	call   1fbc48
 1478495:	call   14745da