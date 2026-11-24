
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00508d21:
  508d21:	push   ebp
  508d22:	mov    ebp,esp
  508d24:	push   ebx
  508d25:	push   edi
  508d26:	push   esi
  508d27:	and    esp,0xfffffff0
  508d2a:	sub    esp,0x70
  508d2d:	call   508d32
  508d32:	pop    ebx
  508d33:	add    ebx,0x1a09212
  508d39:	mov    al,BYTE PTR [ebx+0x5d4fb]
  508d3f:	test   al,al
  508d41:	jne    508d5a
  508d43:	lea    eax,[ebx-0x66f4f0]
  508d49:	mov    eax,DWORD PTR [eax]
  508d4b:	mov    DWORD PTR [esp],eax
  508d4e:	call   1ca6e8
  508d53:	mov    BYTE PTR [ebx+0x5d4fb],0x1
  508d5a:	mov    DWORD PTR [esp+0x68],0x0
  508d62:	lea    eax,[ebx+0x46018]
  508d68:	mov    eax,DWORD PTR [eax]
  508d6a:	mov    DWORD PTR [esp],eax
  508d6d:	call   20bfb2
  508d72:	mov    esi,eax
  508d74:	mov    DWORD PTR [esp],esi
  508d77:	mov    DWORD PTR [esp+0x4],0x0
  508d7f:	call   124632e  ; System.Object::.ctor
  508d84:	test   esi,esi
  508d86:	je     509b7c
  508d8c:	mov    ecx,DWORD PTR [ebp+0xc]
  508d8f:	mov    DWORD PTR [esi+0x8],ecx
  508d92:	mov    DWORD PTR [esp+0x40],esi
  508d96:	test   ecx,ecx
  508d98:	je     509b7c
  508d9e:	lea    eax,[ebx+0x45874]
  508da4:	mov    DWORD PTR [esp+0x3c],eax
  508da8:	mov    eax,DWORD PTR [eax]
  508daa:	mov    ecx,DWORD PTR [ecx]
  508dac:	movzx  edx,WORD PTR [ecx+0xaa]
  508db3:	test   edx,edx
  508db5:	je     508dc6
  508db7:	mov    esi,DWORD PTR [ecx+0x4c]
  508dba:	xor    edi,edi
  508dbc:	cmp    DWORD PTR [esi+edi*8],eax
  508dbf:	je     508de1
  508dc1:	inc    edi
  508dc2:	cmp    edi,edx
  508dc4:	jb     508dbc
  508dc6:	mov    DWORD PTR [esp+0x4],eax
  508dca:	mov    esi,DWORD PTR [ebp+0xc]
  508dcd:	mov    DWORD PTR [esp],esi
  508dd0:	mov    DWORD PTR [esp+0x8],0x11
  508dd8:	call   1c1964
  508ddd:	mov    ecx,eax
  508ddf:	jmp    508def
  508de1:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  508de5:	lea    ecx,[ecx+eax*8+0x13c]
  508dec:	mov    esi,DWORD PTR [ebp+0xc]
  508def:	mov    eax,DWORD PTR [ecx+0x4]
  508df2:	mov    DWORD PTR [esp+0x4],eax
  508df6:	mov    DWORD PTR [esp],esi
  508df9:	call   DWORD PTR [ecx]
  508dfb:	mov    edi,eax
  508dfd:	lea    eax,[ebx+0x44ebc]
  508e03:	mov    eax,DWORD PTR [eax]
  508e05:	test   BYTE PTR [eax+0xb2],0x1
  508e0c:	je     508e1c
  508e0e:	cmp    DWORD PTR [eax+0x60],0x0
  508e12:	jne    508e1c
  508e14:	mov    DWORD PTR [esp],eax
  508e17:	call   1db0b8
  508e1c:	mov    DWORD PTR [esp+0x4],edi
  508e20:	mov    DWORD PTR [esp+0xc],0x0
  508e28:	mov    DWORD PTR [esp+0x8],0x0
  508e30:	mov    DWORD PTR [esp],0x0
  508e37:	xor    esi,esi
  508e39:	call   16781a0  ; UnityEngine.Object::op_Equality
  508e3e:	test   al,al
  508e40:	jne    509b6e
  508e46:	mov    eax,DWORD PTR [esp+0x40]
  508e4a:	mov    edx,DWORD PTR [eax+0x8]
  508e4d:	test   edx,edx
  508e4f:	je     509b7c
  508e55:	mov    eax,DWORD PTR [esp+0x3c]
  508e59:	mov    eax,DWORD PTR [eax]
  508e5b:	mov    ecx,DWORD PTR [edx]
  508e5d:	mov    DWORD PTR [esp+0x38],edx
  508e61:	movzx  edx,WORD PTR [ecx+0xaa]
  508e68:	test   edx,edx
  508e6a:	je     508e7b
  508e6c:	mov    esi,DWORD PTR [ecx+0x4c]
  508e6f:	xor    edi,edi
  508e71:	cmp    DWORD PTR [esi+edi*8],eax
  508e74:	je     508e95
  508e76:	inc    edi
  508e77:	cmp    edi,edx
  508e79:	jb     508e71
  508e7b:	mov    DWORD PTR [esp+0x4],eax
  508e7f:	mov    esi,DWORD PTR [esp+0x38]
  508e83:	mov    DWORD PTR [esp],esi
  508e86:	mov    DWORD PTR [esp+0x8],0x25
  508e8e:	call   1c1964
  508e93:	jmp    508ea4
  508e95:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  508e99:	lea    eax,[ecx+eax*8+0x1dc]
  508ea0:	mov    esi,DWORD PTR [esp+0x38]
  508ea4:	mov    ecx,DWORD PTR [eax+0x4]
  508ea7:	mov    DWORD PTR [esp+0x4],ecx
  508eab:	mov    DWORD PTR [esp],esi
  508eae:	call   DWORD PTR [eax]
  508eb0:	fstp   DWORD PTR [esp+0x5c]
  508eb4:	movss  xmm0,DWORD PTR [esp+0x5c]
  508eba:	movss  DWORD PTR [esp+0x68],xmm0
  508ec0:	cmp    BYTE PTR [ebp+0x24],0x0
  508ec4:	jne    509022
  508eca:	mov    DWORD PTR [esp+0x44],ebx
  508ece:	mov    eax,DWORD PTR [esp+0x40]
  508ed2:	mov    edi,DWORD PTR [eax+0x8]
  508ed5:	test   edi,edi
  508ed7:	je     509b78
  508edd:	mov    eax,DWORD PTR [esp+0x3c]
  508ee1:	mov    eax,DWORD PTR [eax]
  508ee3:	mov    ebx,DWORD PTR [edi]
  508ee5:	movzx  edx,WORD PTR [ebx+0xaa]
  508eec:	test   edx,edx
  508eee:	je     508eff
  508ef0:	mov    esi,DWORD PTR [ebx+0x4c]
  508ef3:	xor    ecx,ecx
  508ef5:	cmp    DWORD PTR [esi+ecx*8],eax
  508ef8:	je     508f1b
  508efa:	inc    ecx
  508efb:	cmp    ecx,edx
  508efd:	jb     508ef5
  508eff:	mov    DWORD PTR [esp+0x4],eax
  508f03:	mov    DWORD PTR [esp],edi
  508f06:	mov    DWORD PTR [esp+0x8],0x10
  508f0e:	mov    ebx,DWORD PTR [esp+0x44]
  508f12:	call   1c1964
  508f17:	mov    ecx,eax
  508f19:	jmp    508f2a
  508f1b:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  508f1f:	lea    ecx,[ebx+eax*8+0x134]
  508f26:	mov    ebx,DWORD PTR [esp+0x44]
  508f2a:	mov    eax,DWORD PTR [ecx+0x4]
  508f2d:	mov    DWORD PTR [esp+0x4],eax
  508f31:	mov    DWORD PTR [esp],edi
  508f34:	call   DWORD PTR [ecx]
  508f36:	mov    ecx,eax
  508f38:	xor    eax,eax
  508f3a:	test   ecx,ecx
  508f3c:	mov    edi,DWORD PTR [esp+0x40]
  508f40:	mov    esi,DWORD PTR [ebp+0x8]
  508f43:	je     508fee
  508f49:	mov    DWORD PTR [esp+0x44],ebx
  508f4d:	mov    esi,edi
  508f4f:	mov    edi,DWORD PTR [esi+0x8]
  508f52:	test   edi,edi
  508f54:	je     509b78
  508f5a:	mov    eax,DWORD PTR [esp+0x3c]
  508f5e:	mov    eax,DWORD PTR [eax]
  508f60:	mov    ecx,DWORD PTR [edi]
  508f62:	movzx  edx,WORD PTR [ecx+0xaa]
  508f69:	test   edx,edx
  508f6b:	je     508f7c
  508f6d:	mov    esi,DWORD PTR [ecx+0x4c]
  508f70:	xor    ebx,ebx
  508f72:	cmp    DWORD PTR [esi+ebx*8],eax
  508f75:	je     508f98
  508f77:	inc    ebx
  508f78:	cmp    ebx,edx
  508f7a:	jb     508f72
  508f7c:	mov    DWORD PTR [esp+0x4],eax
  508f80:	mov    DWORD PTR [esp],edi
  508f83:	mov    DWORD PTR [esp+0x8],0x10
  508f8b:	mov    ebx,DWORD PTR [esp+0x44]
  508f8f:	call   1c1964
  508f94:	mov    ecx,eax
  508f96:	jmp    508fa7
  508f98:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  508f9c:	lea    ecx,[ecx+eax*8+0x134]
  508fa3:	mov    ebx,DWORD PTR [esp+0x44]
  508fa7:	mov    eax,DWORD PTR [ecx+0x4]
  508faa:	mov    DWORD PTR [esp+0x4],eax
  508fae:	mov    DWORD PTR [esp],edi
  508fb1:	call   DWORD PTR [ecx]
  508fb3:	test   eax,eax
  508fb5:	mov    esi,DWORD PTR [ebp+0x8]
  508fb8:	je     509b7c
  508fbe:	lea    ecx,[ebx+0x4a0c8]
  508fc4:	mov    ecx,DWORD PTR [ecx]
  508fc6:	mov    DWORD PTR [esp+0x4],ecx
  508fca:	mov    DWORD PTR [esp],eax
  508fcd:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  508fd2:	test   eax,eax
  508fd4:	mov    edi,DWORD PTR [esp+0x40]
  508fd8:	je     509b7c
  508fde:	mov    DWORD PTR [esp],eax
  508fe1:	mov    DWORD PTR [esp+0x4],0x0
  508fe9:	call   1700bae  ; ABH.Shared.BalancingData.EquipmentBalancingData::get_Perk
  508fee:	test   esi,esi
  508ff0:	je     509b7c
  508ff6:	mov    ecx,DWORD PTR [edi+0x8]
  508ff9:	lea    edx,[esp+0x68]
  508ffd:	mov    DWORD PTR [esp+0x14],edx
  509001:	mov    edi,DWORD PTR [ebp+0x10]
  509004:	mov    DWORD PTR [esp+0x10],edi
  509008:	mov    DWORD PTR [esp+0xc],ecx
  50900c:	mov    DWORD PTR [esp+0x8],ecx
  509010:	mov    DWORD PTR [esp+0x4],eax
  509014:	mov    DWORD PTR [esp],esi
  509017:	call   509bc2  ; ABH.Services.Logic.BattleService::ApplyPerkOnHit
  50901c:	movss  xmm0,DWORD PTR [esp+0x68]
  509022:	movss  DWORD PTR [esp+0x4],xmm0
  509028:	call   509d43  ; ABH.Services.Logic.BattleService::NormalizeDamage
  50902d:	mov    esi,eax
  50902f:	cmp    BYTE PTR [ebp+0x18],0x0
  509033:	je     50904c
  509035:	test   esi,esi
  509037:	mov    DWORD PTR [esp+0x38],esi
  50903b:	setg   al
  50903e:	mov    cl,BYTE PTR [ebp+0x1c]
  509041:	xor    cl,0x1
  509044:	or     cl,al
  509046:	mov    edi,DWORD PTR [esp+0x40]
  50904a:	jmp    509087
  50904c:	mov    edi,DWORD PTR [esp+0x40]
  509050:	mov    eax,DWORD PTR [edi+0x8]
  509053:	xorps  xmm0,xmm0
  509056:	cvtsi2ss xmm0,esi
  50905a:	mov    DWORD PTR [esp+0xc],eax
  50905e:	mov    eax,DWORD PTR [ebp+0x10]
  509061:	mov    DWORD PTR [esp+0x8],eax
  509065:	movss  DWORD PTR [esp+0x4],xmm0
  50906b:	mov    eax,DWORD PTR [ebp+0x8]
  50906e:	mov    DWORD PTR [esp],eax
  509071:	call   509dc3  ; ABH.Services.Logic.BattleService::AddRageForReceiveDamage
  509076:	test   esi,esi
  509078:	mov    DWORD PTR [esp+0x38],esi
  50907c:	setg   al
  50907f:	mov    cl,BYTE PTR [ebp+0x1c]
  509082:	xor    cl,0x1
  509085:	or     cl,al
  509087:	mov    DWORD PTR [esp+0x44],ebx
  50908b:	mov    edx,DWORD PTR [edi+0x8]
  50908e:	test   edx,edx
  509090:	je     509b78
  509096:	mov    eax,DWORD PTR [esp+0x3c]
  50909a:	mov    eax,DWORD PTR [eax]
  50909c:	mov    edi,DWORD PTR [edx]
  50909e:	mov    DWORD PTR [esp+0x34],edx
  5090a2:	movzx  edx,WORD PTR [edi+0xaa]
  5090a9:	test   cl,cl
  5090ab:	je     5090df
  5090ad:	test   dx,dx
  5090b0:	je     5090c1
  5090b2:	mov    esi,DWORD PTR [edi+0x4c]
  5090b5:	xor    ebx,ebx
  5090b7:	cmp    DWORD PTR [esi+ebx*8],eax
  5090ba:	je     509118
  5090bc:	inc    ebx
  5090bd:	cmp    ebx,edx
  5090bf:	jb     5090b7
  5090c1:	mov    DWORD PTR [esp+0x4],eax
  5090c5:	mov    esi,DWORD PTR [esp+0x34]
  5090c9:	mov    DWORD PTR [esp],esi
  5090cc:	mov    DWORD PTR [esp+0x8],0x1f
  5090d4:	mov    ebx,DWORD PTR [esp+0x44]
  5090d8:	call   1c1964
  5090dd:	jmp    50912b
  5090df:	test   dx,dx
  5090e2:	je     5090f7
  5090e4:	mov    esi,DWORD PTR [edi+0x4c]
  5090e7:	xor    ebx,ebx
  5090e9:	cmp    DWORD PTR [esi+ebx*8],eax
  5090ec:	je     5091e9
  5090f2:	inc    ebx
  5090f3:	cmp    ebx,edx
  5090f5:	jb     5090e9
  5090f7:	mov    DWORD PTR [esp+0x4],eax
  5090fb:	mov    esi,DWORD PTR [esp+0x34]
  5090ff:	mov    DWORD PTR [esp],esi
  509102:	mov    DWORD PTR [esp+0x8],0x26
  50910a:	mov    ebx,DWORD PTR [esp+0x44]
  50910e:	call   1c1964
  509113:	jmp    5091fc
  509118:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  50911c:	lea    eax,[edi+eax*8+0x1ac]
  509123:	mov    ebx,DWORD PTR [esp+0x44]
  509127:	mov    esi,DWORD PTR [esp+0x34]
  50912b:	mov    ecx,DWORD PTR [ebp+0x14]
  50912e:	mov    DWORD PTR [esp+0x2c],ecx
  509132:	mov    ecx,DWORD PTR [eax+0x4]
  509135:	mov    DWORD PTR [esp+0x4],ecx
  509139:	mov    DWORD PTR [esp],esi
  50913c:	call   DWORD PTR [eax]
  50913e:	fstp   DWORD PTR [esp+0x58]
  509142:	movss  xmm1,DWORD PTR [esp+0x58]
  509148:	cvtsi2ss xmm0,DWORD PTR [esp+0x38]
  50914e:	subss  xmm1,xmm0
  509152:	xorps  xmm2,xmm2
  509155:	ucomiss xmm2,xmm1
  509158:	jb     509219
  50915e:	mov    al,BYTE PTR [ebp+0x20]
  509161:	test   al,al
  509163:	mov    esi,DWORD PTR [esp+0x40]
  509167:	jne    5095fe
  50916d:	mov    eax,DWORD PTR [esi+0x8]
  509170:	mov    ecx,DWORD PTR [ebp+0x14]
  509173:	mov    DWORD PTR [esp+0x10],ecx
  509177:	mov    DWORD PTR [esp+0xc],eax
  50917b:	movss  DWORD PTR [esp+0x4],xmm0
  509181:	mov    eax,DWORD PTR [ebp+0x8]
  509184:	mov    DWORD PTR [esp],eax
  509187:	mov    DWORD PTR [esp+0x8],0x15
  50918f:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  509194:	fstp   DWORD PTR [esp+0x54]
  509198:	mov    edi,DWORD PTR [esi+0x8]
  50919b:	test   edi,edi
  50919d:	je     509b78
  5091a3:	cvttss2si eax,DWORD PTR [esp+0x54]
  5091a9:	mov    DWORD PTR [esp+0x38],eax
  5091ad:	mov    eax,DWORD PTR [esp+0x3c]
  5091b1:	mov    eax,DWORD PTR [eax]
  5091b3:	mov    ecx,DWORD PTR [edi]
  5091b5:	movzx  edx,WORD PTR [ecx+0xaa]
  5091bc:	test   edx,edx
  5091be:	je     5091cf
  5091c0:	mov    esi,DWORD PTR [ecx+0x4c]
  5091c3:	xor    ebx,ebx
  5091c5:	cmp    DWORD PTR [esi+ebx*8],eax
  5091c8:	je     509222
  5091ca:	inc    ebx
  5091cb:	cmp    ebx,edx
  5091cd:	jb     5091c5
  5091cf:	mov    DWORD PTR [esp+0x4],eax
  5091d3:	mov    DWORD PTR [esp],edi
  5091d6:	mov    DWORD PTR [esp+0x8],0x91
  5091de:	mov    ebx,DWORD PTR [esp+0x44]
  5091e2:	call   1c1964
  5091e7:	jmp    509231
  5091e9:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  5091ed:	lea    eax,[edi+eax*8+0x1e4]
  5091f4:	mov    ebx,DWORD PTR [esp+0x44]
  5091f8:	mov    esi,DWORD PTR [esp+0x34]
  5091fc:	mov    ecx,DWORD PTR [eax+0x4]
  5091ff:	mov    DWORD PTR [esp+0x8],ecx
  509203:	mov    DWORD PTR [esp],esi
  509206:	mov    DWORD PTR [esp+0x4],0x0
  50920e:	call   DWORD PTR [eax]
  509210:	mov    esi,DWORD PTR [esp+0x38]
  509214:	jmp    509b6e
  509219:	mov    esi,DWORD PTR [esp+0x40]
  50921d:	jmp    5095fe
  509222:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  509226:	lea    eax,[ecx+eax*8+0x53c]
  50922d:	mov    ebx,DWORD PTR [esp+0x44]
  509231:	mov    ecx,DWORD PTR [eax+0x4]
  509234:	mov    DWORD PTR [esp+0x8],ecx
  509238:	mov    DWORD PTR [esp],edi
  50923b:	mov    DWORD PTR [esp+0x4],0x0
  509243:	call   DWORD PTR [eax]
  509245:	cmp    DWORD PTR [ebp+0x10],0x0
  509249:	je     509b7c
  50924f:	mov    eax,DWORD PTR [esp+0x40]
  509253:	mov    edi,DWORD PTR [eax+0x8]
  509256:	test   edi,edi
  509258:	je     509b78
  50925e:	mov    eax,DWORD PTR [ebp+0x10]
  509261:	mov    eax,DWORD PTR [eax+0x68]
  509264:	mov    DWORD PTR [esp+0x34],eax
  509268:	mov    eax,DWORD PTR [esp+0x3c]
  50926c:	mov    eax,DWORD PTR [eax]
  50926e:	mov    ecx,DWORD PTR [edi]
  509270:	movzx  edx,WORD PTR [ecx+0xaa]
  509277:	test   edx,edx
  509279:	je     50928a
  50927b:	mov    esi,DWORD PTR [ecx+0x4c]
  50927e:	xor    ebx,ebx
  509280:	cmp    DWORD PTR [esi+ebx*8],eax
  509283:	je     5092a6
  509285:	inc    ebx
  509286:	cmp    ebx,edx
  509288:	jb     509280
  50928a:	mov    DWORD PTR [esp+0x4],eax
  50928e:	mov    DWORD PTR [esp],edi
  509291:	mov    DWORD PTR [esp+0x8],0x2f
  509299:	mov    ebx,DWORD PTR [esp+0x44]
  50929d:	call   1c1964
  5092a2:	mov    ecx,eax
  5092a4:	jmp    5092b5
  5092a6:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  5092aa:	lea    ecx,[ecx+eax*8+0x22c]
  5092b1:	mov    ebx,DWORD PTR [esp+0x44]
  5092b5:	mov    eax,DWORD PTR [ecx+0x4]
  5092b8:	mov    DWORD PTR [esp+0x4],eax
  5092bc:	mov    DWORD PTR [esp],edi
  5092bf:	call   DWORD PTR [ecx]
  5092c1:	mov    edx,DWORD PTR [esp+0x34]
  5092c5:	test   edx,edx
  5092c7:	je     509b7c
  5092cd:	lea    ecx,[ebx+0x4a04c]
  5092d3:	mov    ecx,DWORD PTR [ecx]
  5092d5:	mov    DWORD PTR [esp+0x8],ecx
  5092d9:	mov    DWORD PTR [esp+0x4],eax
  5092dd:	mov    DWORD PTR [esp],edx
  5092e0:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  5092e5:	mov    DWORD PTR [esp+0x34],eax
  5092e9:	lea    eax,[ebx+0x4aff8]
  5092ef:	mov    esi,DWORD PTR [eax]
  5092f1:	lea    eax,[ebx+0x4588c]
  5092f7:	mov    eax,DWORD PTR [eax]
  5092f9:	mov    DWORD PTR [esp],eax
  5092fc:	call   20bfb2
  509301:	mov    edi,eax
  509303:	mov    DWORD PTR [esp+0x60],esi
  509307:	lea    eax,[ebx+0x4a054]
  50930d:	mov    eax,DWORD PTR [eax]
  50930f:	mov    DWORD PTR [esp+0xc],eax
  509313:	mov    eax,DWORD PTR [esp+0x60]
  509317:	mov    DWORD PTR [esp+0x8],eax
  50931b:	mov    eax,DWORD PTR [esp+0x40]
  50931f:	mov    DWORD PTR [esp+0x4],eax
  509323:	mov    DWORD PTR [esp],edi
  509326:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  50932b:	lea    eax,[ebx+0x4a058]
  509331:	mov    eax,DWORD PTR [eax]
  509333:	mov    DWORD PTR [esp+0xc],eax
  509337:	mov    DWORD PTR [esp+0x8],edi
  50933b:	mov    eax,DWORD PTR [esp+0x34]
  50933f:	mov    DWORD PTR [esp+0x4],eax
  509343:	mov    DWORD PTR [esp],0x0
  50934a:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  50934f:	mov    edi,eax
  509351:	test   edi,edi
  509353:	je     509b7c
  509359:	lea    eax,[ebx+0x45944]
  50935f:	mov    eax,DWORD PTR [eax]
  509361:	mov    ecx,DWORD PTR [edi]
  509363:	movzx  edx,WORD PTR [ecx+0xaa]
  50936a:	test   edx,edx
  50936c:	je     50937d
  50936e:	mov    esi,DWORD PTR [ecx+0x4c]
  509371:	xor    ebx,ebx
  509373:	cmp    DWORD PTR [esi+ebx*8],eax
  509376:	je     509399
  509378:	inc    ebx
  509379:	cmp    ebx,edx
  50937b:	jb     509373
  50937d:	mov    DWORD PTR [esp+0x4],eax
  509381:	mov    DWORD PTR [esp],edi
  509384:	mov    DWORD PTR [esp+0x8],0x0
  50938c:	mov    ebx,DWORD PTR [esp+0x44]
  509390:	call   1c1964
  509395:	mov    ecx,eax
  509397:	jmp    5093a8
  509399:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  50939d:	lea    ecx,[ecx+eax*8+0xb4]
  5093a4:	mov    ebx,DWORD PTR [esp+0x44]
  5093a8:	mov    eax,DWORD PTR [ecx+0x4]
  5093ab:	mov    DWORD PTR [esp+0x4],eax
  5093af:	mov    DWORD PTR [esp],edi
  5093b2:	call   DWORD PTR [ecx]
  5093b4:	mov    edi,eax
  5093b6:	cvtsi2ss xmm0,DWORD PTR [esp+0x38]
  5093bc:	movss  DWORD PTR [esp+0x34],xmm0
  5093c2:	test   edi,edi
  5093c4:	je     5094be
  5093ca:	lea    eax,[ebx+0x4319c]
  5093d0:	mov    eax,DWORD PTR [eax]
  5093d2:	mov    ecx,DWORD PTR [edi]
  5093d4:	movzx  edx,WORD PTR [ecx+0xaa]
  5093db:	test   edx,edx
  5093dd:	je     5093ee
  5093df:	mov    esi,DWORD PTR [ecx+0x4c]
  5093e2:	xor    ebx,ebx
  5093e4:	cmp    DWORD PTR [esi+ebx*8],eax
  5093e7:	je     509408
  5093e9:	inc    ebx
  5093ea:	cmp    ebx,edx
  5093ec:	jb     5093e4
  5093ee:	mov    DWORD PTR [esp+0x4],eax
  5093f2:	mov    DWORD PTR [esp],edi
  5093f5:	mov    DWORD PTR [esp+0x8],0x1
  5093fd:	mov    ebx,DWORD PTR [esp+0x44]
  509401:	call   1c1964
  509406:	jmp    509417
  509408:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  50940c:	lea    eax,[ecx+eax*8+0xbc]
  509413:	mov    ebx,DWORD PTR [esp+0x44]
  509417:	mov    ecx,DWORD PTR [eax]
  509419:	mov    eax,DWORD PTR [eax+0x4]
  50941c:	mov    DWORD PTR [esp+0x4],eax
  509420:	mov    DWORD PTR [esp],edi
  509423:	call   ecx
  509425:	test   al,al
  509427:	je     509982
  50942d:	lea    eax,[ebx+0x45948]
  509433:	mov    eax,DWORD PTR [eax]
  509435:	mov    ecx,DWORD PTR [edi]
  509437:	movzx  edx,WORD PTR [ecx+0xaa]
  50943e:	test   edx,edx
  509440:	je     509451
  509442:	mov    esi,DWORD PTR [ecx+0x4c]
  509445:	xor    ebx,ebx
  509447:	cmp    DWORD PTR [esi+ebx*8],eax
  50944a:	je     50946e
  50944c:	inc    ebx
  50944d:	cmp    ebx,edx
  50944f:	jb     509447
  509451:	mov    DWORD PTR [esp+0x4],eax
  509455:	mov    DWORD PTR [esp],edi
  509458:	mov    DWORD PTR [esp+0x8],0x0
  509460:	mov    ebx,DWORD PTR [esp+0x44]
  509464:	mov    esi,DWORD PTR [ebp+0x8]
  509467:	call   1c1964
  50946c:	jmp    509480
  50946e:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  509472:	lea    eax,[ecx+eax*8+0xb4]
  509479:	mov    ebx,DWORD PTR [esp+0x44]
  50947d:	mov    esi,DWORD PTR [ebp+0x8]
  509480:	mov    ecx,DWORD PTR [eax]
  509482:	mov    eax,DWORD PTR [eax+0x4]
  509485:	mov    DWORD PTR [esp+0x4],eax
  509489:	mov    DWORD PTR [esp],edi
  50948c:	call   ecx
  50948e:	mov    ecx,DWORD PTR [ebp+0x14]
  509491:	mov    DWORD PTR [esp+0x10],ecx
  509495:	mov    DWORD PTR [esp+0xc],eax
  509499:	movss  xmm0,DWORD PTR [esp+0x34]
  50949f:	movss  DWORD PTR [esp+0x4],xmm0
  5094a5:	mov    DWORD PTR [esp],esi
  5094a8:	mov    DWORD PTR [esp+0x8],0x24
  5094b0:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  5094b5:	fstp   st(0)
  5094b7:	jmp    5093c2
  5094bc:	jmp    5094c8
  5094be:	call   1fbc48
  5094c3:	jmp    509b8e
  5094c8:	mov    esi,DWORD PTR [esp+0x40]
  5094cc:	cmp    edx,0x1
  5094cf:	jne    509b86
  5094d5:	mov    DWORD PTR [esp],eax
  5094d8:	call   1ba3f0
  5094dd:	mov    eax,DWORD PTR [eax]
  5094df:	mov    DWORD PTR [esp+0x30],eax
  5094e3:	call   1b9ce0
  5094e8:	xor    eax,eax
  5094ea:	test   edi,edi
  5094ec:	je     509553
  5094ee:	mov    DWORD PTR [esp+0x28],eax
  5094f2:	lea    eax,[ebx+0x431a4]
  5094f8:	mov    eax,DWORD PTR [eax]
  5094fa:	mov    ecx,DWORD PTR [edi]
  5094fc:	movzx  edx,WORD PTR [ecx+0xaa]
  509503:	test   edx,edx
  509505:	je     509516
  509507:	mov    esi,DWORD PTR [ecx+0x4c]
  50950a:	xor    ebx,ebx
  50950c:	cmp    DWORD PTR [esi+ebx*8],eax
  50950f:	je     509530
  509511:	inc    ebx
  509512:	cmp    ebx,edx
  509514:	jb     50950c
  509516:	mov    DWORD PTR [esp+0x4],eax
  50951a:	mov    DWORD PTR [esp],edi
  50951d:	mov    DWORD PTR [esp+0x8],0x0
  509525:	mov    ebx,DWORD PTR [esp+0x44]
  509529:	call   1c1964
  50952e:	jmp    50953f
  509530:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  509534:	lea    eax,[ecx+eax*8+0xb4]
  50953b:	mov    ebx,DWORD PTR [esp+0x44]
  50953f:	mov    ecx,DWORD PTR [eax+0x4]
  509542:	mov    DWORD PTR [esp+0x4],ecx
  509546:	mov    DWORD PTR [esp],edi
  509549:	call   DWORD PTR [eax]
  50954b:	mov    esi,DWORD PTR [esp+0x40]
  50954f:	mov    eax,DWORD PTR [esp+0x28]
  509553:	cmp    eax,0x15d
  509558:	mov    eax,DWORD PTR [esp+0x30]
  50955c:	je     50956a
  50955e:	test   eax,eax
  509560:	je     50956a
  509562:	mov    DWORD PTR [esp],eax
  509565:	call   1fbb20
  50956a:	mov    edi,DWORD PTR [esi+0x8]
  50956d:	test   edi,edi
  50956f:	je     509b78
  509575:	mov    eax,DWORD PTR [esp+0x3c]
  509579:	mov    eax,DWORD PTR [eax]
  50957b:	mov    ecx,DWORD PTR [edi]
  50957d:	movzx  edx,WORD PTR [ecx+0xaa]
  509584:	test   edx,edx
  509586:	je     509597
  509588:	mov    esi,DWORD PTR [ecx+0x4c]
  50958b:	xor    ebx,ebx
  50958d:	cmp    DWORD PTR [esi+ebx*8],eax
  509590:	je     5095b3
  509592:	inc    ebx
  509593:	cmp    ebx,edx
  509595:	jb     50958d
  509597:	mov    DWORD PTR [esp+0x4],eax
  50959b:	mov    DWORD PTR [esp],edi
  50959e:	mov    DWORD PTR [esp+0x8],0x8d
  5095a6:	mov    ebx,DWORD PTR [esp+0x44]
  5095aa:	call   1c1964
  5095af:	mov    ecx,eax
  5095b1:	jmp    5095c2
  5095b3:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  5095b7:	lea    ecx,[ecx+eax*8+0x51c]
  5095be:	mov    ebx,DWORD PTR [esp+0x44]
  5095c2:	mov    eax,DWORD PTR [ecx+0x4]
  5095c5:	mov    DWORD PTR [esp+0x4],eax
  5095c9:	mov    DWORD PTR [esp],edi
  5095cc:	call   DWORD PTR [ecx]
  5095ce:	mov    esi,DWORD PTR [esp+0x40]
  5095d2:	mov    ecx,DWORD PTR [esi+0x8]
  5095d5:	mov    DWORD PTR [esp+0x10],ecx
  5095d9:	mov    DWORD PTR [esp+0xc],eax
  5095dd:	movss  xmm0,DWORD PTR [esp+0x34]
  5095e3:	movss  DWORD PTR [esp+0x4],xmm0
  5095e9:	mov    eax,DWORD PTR [ebp+0x8]
  5095ec:	mov    DWORD PTR [esp],eax
  5095ef:	mov    DWORD PTR [esp+0x8],0x26
  5095f7:	call   508843  ; ABH.Services.Logic.BattleService::ApplyEffectsOnTriggerType
  5095fc:	fstp   st(0)
  5095fe:	mov    edi,DWORD PTR [esi+0x8]
  509601:	test   edi,edi
  509603:	je     509b78
  509609:	mov    eax,DWORD PTR [esp+0x3c]
  50960d:	mov    eax,DWORD PTR [eax]
  50960f:	mov    ecx,DWORD PTR [edi]
  509611:	movzx  edx,WORD PTR [ecx+0xaa]
  509618:	test   edx,edx
  50961a:	je     50962b
  50961c:	mov    esi,DWORD PTR [ecx+0x4c]
  50961f:	xor    ebx,ebx
  509621:	cmp    DWORD PTR [esi+ebx*8],eax
  509624:	je     509647
  509626:	inc    ebx
  509627:	cmp    ebx,edx
  509629:	jb     509621
  50962b:	mov    DWORD PTR [esp+0x4],eax
  50962f:	mov    DWORD PTR [esp],edi
  509632:	mov    DWORD PTR [esp+0x8],0x2f
  50963a:	mov    ebx,DWORD PTR [esp+0x44]
  50963e:	call   1c1964
  509643:	mov    ecx,eax
  509645:	jmp    509656
  509647:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  50964b:	lea    ecx,[ecx+eax*8+0x22c]
  509652:	mov    ebx,DWORD PTR [esp+0x44]
  509656:	mov    eax,DWORD PTR [ecx+0x4]
  509659:	mov    DWORD PTR [esp+0x4],eax
  50965d:	mov    DWORD PTR [esp],edi
  509660:	call   DWORD PTR [ecx]
  509662:	cmp    eax,0x1
  509665:	jne    509691
  509667:	mov    eax,DWORD PTR [ebp+0x10]
  50966a:	test   eax,eax
  50966c:	je     509b7c
  509672:	cvtsi2ss xmm0,DWORD PTR [esp+0x38]
  509678:	addss  xmm0,DWORD PTR [eax+0xf0]
  509680:	movss  DWORD PTR [eax+0xf0],xmm0
  509688:	mov    eax,DWORD PTR [esp+0x40]
  50968c:	jmp    509722
  509691:	mov    eax,DWORD PTR [esp+0x40]
  509695:	mov    edi,DWORD PTR [eax+0x8]
  509698:	test   edi,edi
  50969a:	je     509b78
  5096a0:	mov    eax,DWORD PTR [esp+0x3c]
  5096a4:	mov    eax,DWORD PTR [eax]
  5096a6:	mov    ecx,DWORD PTR [edi]
  5096a8:	movzx  edx,WORD PTR [ecx+0xaa]
  5096af:	test   edx,edx
  5096b1:	je     5096c2
  5096b3:	mov    esi,DWORD PTR [ecx+0x4c]
  5096b6:	xor    ebx,ebx
  5096b8:	cmp    DWORD PTR [esi+ebx*8],eax
  5096bb:	je     5096de
  5096bd:	inc    ebx
  5096be:	cmp    ebx,edx
  5096c0:	jb     5096b8
  5096c2:	mov    DWORD PTR [esp+0x4],eax
  5096c6:	mov    DWORD PTR [esp],edi
  5096c9:	mov    DWORD PTR [esp+0x8],0x2f
  5096d1:	mov    ebx,DWORD PTR [esp+0x44]
  5096d5:	call   1c1964
  5096da:	mov    ecx,eax
  5096dc:	jmp    5096ed
  5096de:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  5096e2:	lea    ecx,[ecx+eax*8+0x22c]
  5096e9:	mov    ebx,DWORD PTR [esp+0x44]
  5096ed:	mov    eax,DWORD PTR [ecx+0x4]
  5096f0:	mov    DWORD PTR [esp+0x4],eax
  5096f4:	mov    DWORD PTR [esp],edi
  5096f7:	call   DWORD PTR [ecx]
  5096f9:	test   eax,eax
  5096fb:	mov    eax,DWORD PTR [esp+0x40]
  5096ff:	jne    509722
  509701:	mov    ecx,DWORD PTR [ebp+0x10]
  509704:	test   ecx,ecx
  509706:	je     509b7c
  50970c:	cvtsi2ss xmm0,DWORD PTR [esp+0x38]
  509712:	addss  xmm0,DWORD PTR [ecx+0xf4]
  50971a:	movss  DWORD PTR [ecx+0xf4],xmm0
  509722:	mov    DWORD PTR [esp+0x40],eax
  509726:	mov    edi,DWORD PTR [eax+0x8]
  509729:	test   edi,edi
  50972b:	je     509b78
  509731:	mov    eax,DWORD PTR [esp+0x3c]
  509735:	mov    eax,DWORD PTR [eax]
  509737:	mov    ecx,DWORD PTR [edi]
  509739:	movzx  edx,WORD PTR [ecx+0xaa]
  509740:	test   edx,edx
  509742:	je     509753
  509744:	mov    esi,DWORD PTR [ecx+0x4c]
  509747:	xor    ebx,ebx
  509749:	cmp    DWORD PTR [esi+ebx*8],eax
  50974c:	je     50976d
  50974e:	inc    ebx
  50974f:	cmp    ebx,edx
  509751:	jb     509749
  509753:	mov    DWORD PTR [esp+0x4],eax
  509757:	mov    DWORD PTR [esp],edi
  50975a:	mov    DWORD PTR [esp+0x8],0x1f
  509762:	mov    ebx,DWORD PTR [esp+0x44]
  509766:	call   1c1964
  50976b:	jmp    50977c
  50976d:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  509771:	lea    eax,[ecx+eax*8+0x1ac]
  509778:	mov    ebx,DWORD PTR [esp+0x44]
  50977c:	mov    ecx,DWORD PTR [eax+0x4]
  50977f:	mov    DWORD PTR [esp+0x4],ecx
  509783:	mov    DWORD PTR [esp],edi
  509786:	call   DWORD PTR [eax]
  509788:	fstp   DWORD PTR [esp+0x50]
  50978c:	mov    eax,DWORD PTR [esp+0x40]
  509790:	mov    edi,DWORD PTR [eax+0x8]
  509793:	test   edi,edi
  509795:	je     509b78
  50979b:	movss  xmm0,DWORD PTR [esp+0x50]
  5097a1:	mov    eax,DWORD PTR [esp+0x3c]
  5097a5:	mov    eax,DWORD PTR [eax]
  5097a7:	mov    ecx,DWORD PTR [edi]
  5097a9:	movzx  edx,WORD PTR [ecx+0xaa]
  5097b0:	test   edx,edx
  5097b2:	je     5097c3
  5097b4:	mov    esi,DWORD PTR [ecx+0x4c]
  5097b7:	xor    ebx,ebx
  5097b9:	cmp    DWORD PTR [esi+ebx*8],eax
  5097bc:	je     5097e3
  5097be:	inc    ebx
  5097bf:	cmp    ebx,edx
  5097c1:	jb     5097b9
  5097c3:	movss  DWORD PTR [esp+0x34],xmm0
  5097c9:	mov    DWORD PTR [esp+0x4],eax
  5097cd:	mov    DWORD PTR [esp],edi
  5097d0:	mov    DWORD PTR [esp+0x8],0x1f
  5097d8:	mov    ebx,DWORD PTR [esp+0x44]
  5097dc:	call   1c1964
  5097e1:	jmp    5097f8
  5097e3:	movss  DWORD PTR [esp+0x34],xmm0
  5097e9:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  5097ed:	lea    eax,[ecx+eax*8+0x1ac]
  5097f4:	mov    ebx,DWORD PTR [esp+0x44]
  5097f8:	mov    ecx,DWORD PTR [eax+0x4]
  5097fb:	mov    DWORD PTR [esp+0x4],ecx
  5097ff:	mov    DWORD PTR [esp],edi
  509802:	call   DWORD PTR [eax]
  509804:	fstp   DWORD PTR [esp+0x4c]
  509808:	movss  xmm1,DWORD PTR [esp+0x4c]
  50980e:	mov    eax,DWORD PTR [esp+0x3c]
  509812:	mov    eax,DWORD PTR [eax]
  509814:	cvtsi2ss xmm0,DWORD PTR [esp+0x38]
  50981a:	subss  xmm1,xmm0
  50981e:	mov    ecx,DWORD PTR [edi]
  509820:	movzx  edx,WORD PTR [ecx+0xaa]
  509827:	test   edx,edx
  509829:	je     50983a
  50982b:	mov    esi,DWORD PTR [ecx+0x4c]
  50982e:	xor    ebx,ebx
  509830:	cmp    DWORD PTR [esi+ebx*8],eax
  509833:	je     509860
  509835:	inc    ebx
  509836:	cmp    ebx,edx
  509838:	jb     509830
  50983a:	mov    DWORD PTR [esp+0x4],eax
  50983e:	mov    DWORD PTR [esp],edi
  509841:	mov    DWORD PTR [esp+0x8],0x20
  509849:	mov    ebx,DWORD PTR [esp+0x44]
  50984d:	movss  DWORD PTR [esp+0x30],xmm1
  509853:	call   1c1964
  509858:	movss  xmm1,DWORD PTR [esp+0x30]
  50985e:	jmp    50986f
  509860:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  509864:	lea    eax,[ecx+eax*8+0x1b4]
  50986b:	mov    ebx,DWORD PTR [esp+0x44]
  50986f:	mov    ecx,DWORD PTR [eax+0x4]
  509872:	mov    DWORD PTR [esp+0x8],ecx
  509876:	movss  DWORD PTR [esp+0x4],xmm1
  50987c:	mov    DWORD PTR [esp],edi
  50987f:	call   DWORD PTR [eax]
  509881:	mov    eax,DWORD PTR [esp+0x40]
  509885:	mov    edi,DWORD PTR [eax+0x8]
  509888:	test   edi,edi
  50988a:	je     509b78
  509890:	mov    eax,DWORD PTR [esp+0x3c]
  509894:	mov    eax,DWORD PTR [eax]
  509896:	mov    ecx,DWORD PTR [edi]
  509898:	movzx  edx,WORD PTR [ecx+0xaa]
  50989f:	test   edx,edx
  5098a1:	je     5098b2
  5098a3:	mov    esi,DWORD PTR [ecx+0x4c]
  5098a6:	xor    ebx,ebx
  5098a8:	cmp    DWORD PTR [esi+ebx*8],eax
  5098ab:	je     5098cc
  5098ad:	inc    ebx
  5098ae:	cmp    ebx,edx
  5098b0:	jb     5098a8
  5098b2:	mov    DWORD PTR [esp+0x4],eax
  5098b6:	mov    DWORD PTR [esp],edi
  5098b9:	mov    DWORD PTR [esp+0x8],0x1f
  5098c1:	mov    ebx,DWORD PTR [esp+0x44]
  5098c5:	call   1c1964
  5098ca:	jmp    5098db
  5098cc:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  5098d0:	lea    eax,[ecx+eax*8+0x1ac]
  5098d7:	mov    ebx,DWORD PTR [esp+0x44]
  5098db:	mov    ecx,DWORD PTR [eax+0x4]
  5098de:	mov    DWORD PTR [esp+0x4],ecx
  5098e2:	mov    DWORD PTR [esp],edi
  5098e5:	call   DWORD PTR [eax]
  5098e7:	fstp   DWORD PTR [esp+0x48]
  5098eb:	xorps  xmm0,xmm0
  5098ee:	movss  xmm1,DWORD PTR [esp+0x34]
  5098f4:	ucomiss xmm1,xmm0
  5098f7:	mov    esi,DWORD PTR [esp+0x40]
  5098fb:	jbe    5099fd
  509901:	ucomiss xmm0,DWORD PTR [esp+0x48]
  509906:	jb     5099fd
  50990c:	mov    eax,DWORD PTR [ebp+0x10]
  50990f:	test   eax,eax
  509911:	je     509b7c
  509917:	mov    DWORD PTR [esp],eax
  50991a:	mov    DWORD PTR [esp+0x4],0x0
  509922:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  509927:	test   al,al
  509929:	je     5099fd
  50992f:	cmp    DWORD PTR [ebp+0x14],0x0
  509933:	jne    5099bb
  509939:	mov    edi,DWORD PTR [esi+0x8]
  50993c:	test   edi,edi
  50993e:	je     509b78
  509944:	mov    eax,DWORD PTR [esp+0x3c]
  509948:	mov    eax,DWORD PTR [eax]
  50994a:	mov    ecx,DWORD PTR [edi]
  50994c:	movzx  edx,WORD PTR [ecx+0xaa]
  509953:	test   edx,edx
  509955:	je     509966
  509957:	mov    esi,DWORD PTR [ecx+0x4c]
  50995a:	xor    ebx,ebx
  50995c:	cmp    DWORD PTR [esi+ebx*8],eax
  50995f:	je     509998
  509961:	inc    ebx
  509962:	cmp    ebx,edx
  509964:	jb     50995c
  509966:	mov    DWORD PTR [esp+0x4],eax
  50996a:	mov    DWORD PTR [esp],edi
  50996d:	mov    DWORD PTR [esp+0x8],0x8d
  509975:	mov    ebx,DWORD PTR [esp+0x44]
  509979:	call   1c1964
  50997e:	mov    ecx,eax
  509980:	jmp    5099a7
  509982:	mov    DWORD PTR [esp+0x30],0x0
  50998a:	mov    eax,0x15d
  50998f:	mov    esi,DWORD PTR [esp+0x40]
  509993:	jmp    5094ea
  509998:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  50999c:	lea    ecx,[ecx+eax*8+0x51c]
  5099a3:	mov    ebx,DWORD PTR [esp+0x44]
  5099a7:	mov    eax,DWORD PTR [ecx+0x4]
  5099aa:	mov    DWORD PTR [esp+0x4],eax
  5099ae:	mov    DWORD PTR [esp],edi
  5099b1:	call   DWORD PTR [ecx]
  5099b3:	mov    DWORD PTR [esp+0x2c],eax
  5099b7:	mov    esi,DWORD PTR [esp+0x40]
  5099bb:	mov    DWORD PTR [esp+0x4],0x0
  5099c3:	mov    DWORD PTR [esp],0x0
  5099ca:	call   1093343  ; DIContainerLogic::GetPvpObjectivesService
  5099cf:	test   eax,eax
  5099d1:	mov    edx,DWORD PTR [ebp+0x10]
  5099d4:	je     509b7c
  5099da:	mov    ecx,DWORD PTR [esi+0x8]
  5099dd:	mov    edi,DWORD PTR [esp+0x2c]
  5099e1:	mov    DWORD PTR [esp+0xc],edi
  5099e5:	mov    DWORD PTR [esp+0x8],edx
  5099e9:	mov    DWORD PTR [esp+0x4],ecx
  5099ed:	mov    DWORD PTR [esp],eax
  5099f0:	mov    DWORD PTR [esp+0x10],0x0
  5099f8:	call   80b3df  ; PvPObjectivesService::TargetKnockedOut
  5099fd:	mov    edi,DWORD PTR [esi+0x8]
  509a00:	test   edi,edi
  509a02:	je     509b78
  509a08:	mov    eax,DWORD PTR [esp+0x3c]
  509a0c:	mov    eax,DWORD PTR [eax]
  509a0e:	mov    ecx,DWORD PTR [edi]
  509a10:	movzx  edx,WORD PTR [ecx+0xaa]
  509a17:	test   edx,edx
  509a19:	je     509a2a
  509a1b:	mov    esi,DWORD PTR [ecx+0x4c]
  509a1e:	xor    ebx,ebx
  509a20:	cmp    DWORD PTR [esi+ebx*8],eax
  509a23:	je     509a44
  509a25:	inc    ebx
  509a26:	cmp    ebx,edx
  509a28:	jb     509a20
  509a2a:	mov    DWORD PTR [esp+0x4],eax
  509a2e:	mov    DWORD PTR [esp],edi
  509a31:	mov    DWORD PTR [esp+0x8],0x26
  509a39:	mov    ebx,DWORD PTR [esp+0x44]
  509a3d:	call   1c1964
  509a42:	jmp    509a53
  509a44:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  509a48:	lea    eax,[ecx+eax*8+0x1e4]
  509a4f:	mov    ebx,DWORD PTR [esp+0x44]
  509a53:	mov    ecx,DWORD PTR [eax+0x4]
  509a56:	mov    DWORD PTR [esp+0x8],ecx
  509a5a:	mov    DWORD PTR [esp],edi
  509a5d:	mov    DWORD PTR [esp+0x4],0x0
  509a65:	call   DWORD PTR [eax]
  509a67:	mov    eax,DWORD PTR [esp+0x40]
  509a6b:	mov    edi,DWORD PTR [eax+0x8]
  509a6e:	test   edi,edi
  509a70:	je     509b78
  509a76:	mov    eax,DWORD PTR [esp+0x3c]
  509a7a:	mov    eax,DWORD PTR [eax]
  509a7c:	mov    ecx,DWORD PTR [edi]
  509a7e:	movzx  edx,WORD PTR [ecx+0xaa]
  509a85:	test   edx,edx
  509a87:	je     509a98
  509a89:	mov    esi,DWORD PTR [ecx+0x4c]
  509a8c:	xor    ebx,ebx
  509a8e:	cmp    DWORD PTR [esi+ebx*8],eax
  509a91:	je     509ab4
  509a93:	inc    ebx
  509a94:	cmp    ebx,edx
  509a96:	jb     509a8e
  509a98:	mov    DWORD PTR [esp+0x4],eax
  509a9c:	mov    DWORD PTR [esp],edi
  509a9f:	mov    DWORD PTR [esp+0x8],0x2f
  509aa7:	mov    ebx,DWORD PTR [esp+0x44]
  509aab:	call   1c1964
  509ab0:	mov    ecx,eax
  509ab2:	jmp    509ac3
  509ab4:	mov    eax,DWORD PTR [esi+ebx*8+0x4]
  509ab8:	lea    ecx,[ecx+eax*8+0x22c]
  509abf:	mov    ebx,DWORD PTR [esp+0x44]
  509ac3:	mov    eax,DWORD PTR [ecx+0x4]
  509ac6:	mov    DWORD PTR [esp+0x4],eax
  509aca:	mov    DWORD PTR [esp],edi
  509acd:	call   DWORD PTR [ecx]
  509acf:	cmp    eax,0x1
  509ad2:	jne    509af1
  509ad4:	mov    eax,DWORD PTR [ebp+0x10]
  509ad7:	test   eax,eax
  509ad9:	je     509b78
  509adf:	mov    eax,DWORD PTR [eax+0x14]
  509ae2:	test   eax,eax
  509ae4:	mov    ecx,DWORD PTR [esp+0x38]
  509ae8:	je     509b78
  509aee:	add    DWORD PTR [eax+0x58],ecx
  509af1:	mov    eax,DWORD PTR [esp+0x40]
  509af5:	mov    esi,DWORD PTR [eax+0x8]
  509af8:	test   esi,esi
  509afa:	je     509b78
  509afc:	mov    eax,DWORD PTR [esp+0x3c]
  509b00:	mov    eax,DWORD PTR [eax]
  509b02:	mov    ecx,DWORD PTR [esi]
  509b04:	movzx  edx,WORD PTR [ecx+0xaa]
  509b0b:	test   edx,edx
  509b0d:	je     509b1e
  509b0f:	mov    edi,DWORD PTR [ecx+0x4c]
  509b12:	xor    ebx,ebx
  509b14:	cmp    DWORD PTR [edi+ebx*8],eax
  509b17:	je     509b3a
  509b19:	inc    ebx
  509b1a:	cmp    ebx,edx
  509b1c:	jb     509b14
  509b1e:	mov    DWORD PTR [esp+0x4],eax
  509b22:	mov    DWORD PTR [esp],esi
  509b25:	mov    DWORD PTR [esp+0x8],0x2f
  509b2d:	mov    ebx,DWORD PTR [esp+0x44]
  509b31:	call   1c1964
  509b36:	mov    ecx,eax
  509b38:	jmp    509b49
  509b3a:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  509b3e:	lea    ecx,[ecx+eax*8+0x22c]
  509b45:	mov    ebx,DWORD PTR [esp+0x44]
  509b49:	mov    eax,DWORD PTR [ecx+0x4]
  509b4c:	mov    DWORD PTR [esp+0x4],eax
  509b50:	mov    DWORD PTR [esp],esi
  509b53:	call   DWORD PTR [ecx]
  509b55:	test   eax,eax
  509b57:	mov    eax,DWORD PTR [ebp+0x10]
  509b5a:	mov    esi,DWORD PTR [esp+0x38]
  509b5e:	jne    509b6e
  509b60:	test   eax,eax
  509b62:	je     509b7c
  509b64:	mov    eax,DWORD PTR [eax+0x14]
  509b67:	test   eax,eax
  509b69:	je     509b7c
  509b6b:	add    DWORD PTR [eax+0x5c],esi
  509b6e:	mov    eax,esi
  509b70:	lea    esp,[ebp-0xc]
  509b73:	pop    esi
  509b74:	pop    edi
  509b75:	pop    ebx
  509b76:	pop    ebp
  509b77:	ret
  509b78:	mov    ebx,DWORD PTR [esp+0x44]
  509b7c:	call   1fbc48
  509b81:	call   540b98
  509b86:	mov    DWORD PTR [esp],eax
  509b89:	call   1b9bd0
  509b8e:	call   540b98