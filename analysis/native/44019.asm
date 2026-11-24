
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0120cc9b:
 120cc9b:	push   ebp
 120cc9c:	mov    ebp,esp
 120cc9e:	push   ebx
 120cc9f:	push   edi
 120cca0:	push   esi
 120cca1:	and    esp,0xfffffff0
 120cca4:	sub    esp,0x50
 120cca7:	call   120ccac
 120ccac:	pop    ebx
 120ccad:	add    ebx,0xd05298
 120ccb3:	mov    esi,DWORD PTR [ebp+0xc]
 120ccb6:	mov    edi,DWORD PTR [ebp+0x8]
 120ccb9:	mov    al,BYTE PTR [ebx+0x64049]
 120ccbf:	test   al,al
 120ccc1:	jne    120ccda
 120ccc3:	lea    eax,[ebx-0x65f3b4]
 120ccc9:	mov    eax,DWORD PTR [eax]
 120cccb:	mov    DWORD PTR [esp],eax
 120ccce:	call   1ca6e8
 120ccd3:	mov    BYTE PTR [ebx+0x64049],0x1
 120ccda:	mov    DWORD PTR [edi+0x28],esi
 120ccdd:	test   esi,esi
 120ccdf:	je     120d275
 120cce5:	mov    ecx,DWORD PTR [ebp+0x10]
 120cce8:	mov    eax,DWORD PTR [esi+0x18]
 120cceb:	mov    DWORD PTR [edi+0x2c],eax
 120ccee:	mov    DWORD PTR [edi+0x30],ecx
 120ccf1:	mov    esi,ecx
 120ccf3:	lea    eax,[ebx+0x44d10]
 120ccf9:	mov    eax,DWORD PTR [eax]
 120ccfb:	mov    DWORD PTR [esp],eax
 120ccfe:	call   20bfb2
 120cd03:	mov    edi,eax
 120cd05:	lea    eax,[ebx+0x49298]
 120cd0b:	mov    eax,DWORD PTR [eax]
 120cd0d:	mov    DWORD PTR [esp+0x4],eax
 120cd11:	mov    DWORD PTR [esp],edi
 120cd14:	call   617b0b  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, unresolved-type@0x1e5f010(kind=0x15,data=0x1f172e4)>::.ctor | System.Collections.Generic.Dictionary`2<System.Type, System.Xml.XmlQualifiedName>::.ctor | +55 other aliases
 120cd19:	lea    eax,[ebx+0x4584c]
 120cd1f:	mov    eax,DWORD PTR [eax]
 120cd21:	test   BYTE PTR [eax+0xb2],0x1
 120cd28:	je     120cd38
 120cd2a:	cmp    DWORD PTR [eax+0x60],0x0
 120cd2e:	jne    120cd38
 120cd30:	mov    DWORD PTR [esp],eax
 120cd33:	call   1db0b8
 120cd38:	mov    DWORD PTR [esp+0x28],edi
 120cd3c:	mov    DWORD PTR [esp+0x4],0x0
 120cd44:	mov    DWORD PTR [esp],0x0
 120cd4b:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 120cd50:	mov    DWORD PTR [esp+0x24],eax
 120cd54:	test   esi,esi
 120cd56:	je     120d275
 120cd5c:	lea    eax,[ebx+0x45874]
 120cd62:	mov    DWORD PTR [esp+0x20],eax
 120cd66:	mov    eax,DWORD PTR [eax]
 120cd68:	mov    ecx,DWORD PTR [esi]
 120cd6a:	movzx  edx,WORD PTR [ecx+0xaa]
 120cd71:	test   edx,edx
 120cd73:	je     120cd84
 120cd75:	mov    esi,DWORD PTR [ecx+0x4c]
 120cd78:	xor    edi,edi
 120cd7a:	cmp    DWORD PTR [esi+edi*8],eax
 120cd7d:	je     120cd9f
 120cd7f:	inc    edi
 120cd80:	cmp    edi,edx
 120cd82:	jb     120cd7a
 120cd84:	mov    DWORD PTR [esp+0x4],eax
 120cd88:	mov    esi,DWORD PTR [ebp+0x10]
 120cd8b:	mov    DWORD PTR [esp],esi
 120cd8e:	mov    DWORD PTR [esp+0x8],0xa
 120cd96:	call   1c1964
 120cd9b:	mov    ecx,eax
 120cd9d:	jmp    120cdad
 120cd9f:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 120cda3:	lea    ecx,[ecx+eax*8+0x104]
 120cdaa:	mov    esi,DWORD PTR [ebp+0x10]
 120cdad:	mov    eax,DWORD PTR [ecx+0x4]
 120cdb0:	mov    DWORD PTR [esp+0x4],eax
 120cdb4:	mov    DWORD PTR [esp],esi
 120cdb7:	call   DWORD PTR [ecx]
 120cdb9:	mov    ecx,DWORD PTR [esp+0x24]
 120cdbd:	test   ecx,ecx
 120cdbf:	mov    esi,DWORD PTR [ebp+0x8]
 120cdc2:	mov    edi,DWORD PTR [esp+0x28]
 120cdc6:	je     120d275
 120cdcc:	mov    DWORD PTR [esp+0x4],eax
 120cdd0:	mov    DWORD PTR [esp],ecx
 120cdd3:	mov    DWORD PTR [esp+0x8],0x0
 120cddb:	call   af6f59  ; ABHLocaService::GetCharacterName
 120cde0:	test   edi,edi
 120cde2:	je     120d275
 120cde8:	lea    ecx,[ebx+0x56adc]  ; literal "{value_1}"
 120cdee:	mov    ecx,DWORD PTR [ecx]
 120cdf0:	lea    edx,[ebx+0x4929c]
 120cdf6:	mov    edx,DWORD PTR [edx]
 120cdf8:	mov    DWORD PTR [esp+0xc],edx
 120cdfc:	mov    DWORD PTR [esp+0x8],eax
 120ce00:	mov    DWORD PTR [esp+0x4],ecx
 120ce04:	mov    DWORD PTR [esp],edi
 120ce07:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 120ce0c:	mov    edi,DWORD PTR [esi+0x18]
 120ce0f:	mov    DWORD PTR [esp+0x4],0x0
 120ce17:	mov    DWORD PTR [esp],0x0
 120ce1e:	call   10658a4  ; DIContainerInfrastructure::GetLocaService
 120ce23:	test   eax,eax
 120ce25:	je     120d275
 120ce2b:	lea    ecx,[ebx+0x5bd28]  ; literal "birdlost_desc"
 120ce31:	mov    ecx,DWORD PTR [ecx]
 120ce33:	mov    edx,DWORD PTR [esp+0x28]
 120ce37:	mov    DWORD PTR [esp+0x8],edx
 120ce3b:	mov    DWORD PTR [esp+0x4],ecx
 120ce3f:	mov    DWORD PTR [esp],eax
 120ce42:	mov    DWORD PTR [esp+0xc],0x0
 120ce4a:	call   af6cf0  ; ABHLocaService::Tr
 120ce4f:	test   edi,edi
 120ce51:	je     120d275
 120ce57:	mov    DWORD PTR [esp+0x4],eax
 120ce5b:	mov    DWORD PTR [esp],edi
 120ce5e:	mov    DWORD PTR [esp+0x8],0x0
 120ce66:	call   e7d863  ; UILabel::set_text
 120ce6b:	mov    eax,DWORD PTR [ebp+0x8]
 120ce6e:	mov    esi,DWORD PTR [eax+0x20]
 120ce71:	lea    eax,[ebx+0x44ebc]
 120ce77:	mov    eax,DWORD PTR [eax]
 120ce79:	test   BYTE PTR [eax+0xb2],0x1
 120ce80:	je     120ce90
 120ce82:	cmp    DWORD PTR [eax+0x60],0x0
 120ce86:	jne    120ce90
 120ce88:	mov    DWORD PTR [esp],eax
 120ce8b:	call   1db0b8
 120ce90:	lea    eax,[ebx+0x4bf84]
 120ce96:	mov    eax,DWORD PTR [eax]
 120ce98:	mov    DWORD PTR [esp+0x8],eax
 120ce9c:	mov    DWORD PTR [esp+0x4],esi
 120cea0:	mov    DWORD PTR [esp],0x0
 120cea7:	call   15e932a  ; shared address: UnityEngine.Object::Instantiate | UnityEngine.Object::Instantiate | UnityEngine.Object::Instantiate | +29 other aliases
 120ceac:	mov    DWORD PTR [esp+0x28],eax
 120ceb0:	mov    eax,DWORD PTR [esp+0x20]
 120ceb4:	mov    eax,DWORD PTR [eax]
 120ceb6:	mov    ecx,DWORD PTR [ebp+0x10]
 120ceb9:	mov    ecx,DWORD PTR [ecx]
 120cebb:	movzx  edx,WORD PTR [ecx+0xaa]
 120cec2:	test   edx,edx
 120cec4:	je     120ced5
 120cec6:	mov    edi,DWORD PTR [ecx+0x4c]
 120cec9:	xor    esi,esi
 120cecb:	cmp    DWORD PTR [edi+esi*8],eax
 120cece:	je     120cef0
 120ced0:	inc    esi
 120ced1:	cmp    esi,edx
 120ced3:	jb     120cecb
 120ced5:	mov    DWORD PTR [esp+0x4],eax
 120ced9:	mov    esi,DWORD PTR [ebp+0x10]
 120cedc:	mov    DWORD PTR [esp],esi
 120cedf:	mov    DWORD PTR [esp+0x8],0x9
 120cee7:	call   1c1964
 120ceec:	mov    ecx,eax
 120ceee:	jmp    120cefe
 120cef0:	mov    eax,DWORD PTR [edi+esi*8+0x4]
 120cef4:	lea    ecx,[ecx+eax*8+0xfc]
 120cefb:	mov    esi,DWORD PTR [ebp+0x10]
 120cefe:	mov    eax,DWORD PTR [ecx+0x4]
 120cf01:	mov    DWORD PTR [esp+0x4],eax
 120cf05:	mov    DWORD PTR [esp],esi
 120cf08:	call   DWORD PTR [ecx]
 120cf0a:	mov    edi,DWORD PTR [esp+0x28]
 120cf0e:	test   edi,edi
 120cf10:	mov    esi,DWORD PTR [ebp+0x8]
 120cf13:	je     120d275
 120cf19:	mov    DWORD PTR [esp+0x4],eax
 120cf1d:	mov    DWORD PTR [esp],edi
 120cf20:	mov    DWORD PTR [esp+0x14],0x0
 120cf28:	mov    DWORD PTR [esp+0x10],0x1
 120cf30:	mov    DWORD PTR [esp+0xc],0x1
 120cf38:	mov    DWORD PTR [esp+0x8],0x1
 120cf40:	call   8f0040  ; CharacterControllerCamp::SetModel
 120cf45:	mov    DWORD PTR [esp],edi
 120cf48:	mov    DWORD PTR [esp+0x4],0x0
 120cf50:	call   150157d  ; UnityEngine.Component::get_transform
 120cf55:	test   eax,eax
 120cf57:	je     120d275
 120cf5d:	mov    ecx,DWORD PTR [esi+0xc]
 120cf60:	mov    DWORD PTR [esp+0x4],ecx
 120cf64:	mov    DWORD PTR [esp],eax
 120cf67:	mov    DWORD PTR [esp+0x8],0x0
 120cf6f:	call   1776a47  ; UnityEngine.Transform::set_parent
 120cf74:	mov    DWORD PTR [esp],edi
 120cf77:	mov    DWORD PTR [esp+0x4],0x0
 120cf7f:	call   150157d  ; UnityEngine.Component::get_transform
 120cf84:	mov    esi,edi
 120cf86:	mov    edi,eax
 120cf88:	lea    eax,[esp+0x40]
 120cf8c:	mov    DWORD PTR [esp],eax
 120cf8f:	mov    DWORD PTR [esp+0x8],0x0
 120cf97:	mov    DWORD PTR [esp+0x4],0x0
 120cf9f:	call   1778fb2  ; UnityEngine.Vector3::get_zero
 120cfa4:	sub    esp,0x4
 120cfa7:	test   edi,edi
 120cfa9:	je     120d275
 120cfaf:	mov    eax,DWORD PTR [esp+0x48]
 120cfb3:	mov    DWORD PTR [esp+0xc],eax
 120cfb7:	movsd  xmm0,QWORD PTR [esp+0x40]
 120cfbd:	movsd  QWORD PTR [esp+0x4],xmm0
 120cfc3:	mov    DWORD PTR [esp],edi
 120cfc6:	mov    DWORD PTR [esp+0x10],0x0
 120cfce:	call   17762d5  ; UnityEngine.Transform::set_localPosition
 120cfd3:	mov    DWORD PTR [esp],esi
 120cfd6:	mov    DWORD PTR [esp+0x4],0x0
 120cfde:	call   150157d  ; UnityEngine.Component::get_transform
 120cfe3:	mov    edi,eax
 120cfe5:	lea    eax,[esp+0x30]
 120cfe9:	mov    DWORD PTR [esp],eax
 120cfec:	mov    DWORD PTR [esp+0x8],0x0
 120cff4:	mov    DWORD PTR [esp+0x4],0x0
 120cffc:	call   1779758  ; UnityEngine.Vector3::get_one
 120d001:	sub    esp,0x4
 120d004:	test   edi,edi
 120d006:	je     120d275
 120d00c:	mov    eax,DWORD PTR [esp+0x38]
 120d010:	mov    DWORD PTR [esp+0xc],eax
 120d014:	movsd  xmm0,QWORD PTR [esp+0x30]
 120d01a:	movsd  QWORD PTR [esp+0x4],xmm0
 120d020:	mov    DWORD PTR [esp],edi
 120d023:	mov    DWORD PTR [esp+0x10],0x0
 120d02b:	call   177692a  ; UnityEngine.Transform::set_localScale
 120d030:	mov    DWORD PTR [esp],esi
 120d033:	mov    DWORD PTR [esp+0x4],0x0
 120d03b:	call   150157d  ; UnityEngine.Component::get_transform
 120d040:	test   eax,eax
 120d042:	je     120d275
 120d048:	lea    ecx,[ebx+0x4ecd0]
 120d04e:	mov    ecx,DWORD PTR [ecx]
 120d050:	mov    DWORD PTR [esp+0x4],ecx
 120d054:	mov    DWORD PTR [esp],eax
 120d057:	call   15e8c7b  ; shared address: UnityEngine.Component::GetComponentInChildren | UnityEngine.Component::GetComponentInChildren | UnityEngine.Component::GetComponentInChildren | +22 other aliases
 120d05c:	test   eax,eax
 120d05e:	je     120d275
 120d064:	mov    ecx,DWORD PTR [eax]
 120d066:	mov    edx,DWORD PTR [ecx+0x118]
 120d06c:	mov    DWORD PTR [esp+0x4],edx
 120d070:	mov    DWORD PTR [esp],eax
 120d073:	call   DWORD PTR [ecx+0x114]
 120d079:	mov    DWORD PTR [esp],esi
 120d07c:	mov    DWORD PTR [esp+0x4],0x0
 120d084:	call   1501684  ; UnityEngine.Component::get_gameObject
 120d089:	mov    esi,eax
 120d08b:	lea    eax,[ebx+0x57f2c]  ; literal "Interface"
 120d091:	mov    eax,DWORD PTR [eax]
 120d093:	mov    DWORD PTR [esp+0x4],eax
 120d097:	mov    DWORD PTR [esp+0x8],0x0
 120d09f:	mov    DWORD PTR [esp],0x0
 120d0a6:	call   1398ef6  ; UnityEngine.LayerMask::NameToLayer
 120d0ab:	mov    DWORD PTR [esp+0x8],eax
 120d0af:	mov    DWORD PTR [esp+0x4],esi
 120d0b3:	mov    DWORD PTR [esp+0xc],0x0
 120d0bb:	mov    DWORD PTR [esp],0x0
 120d0c2:	call   11cfb01  ; UnityHelper::SetLayerRecusively
 120d0c7:	lea    eax,[ebx+0x45820]
 120d0cd:	mov    eax,DWORD PTR [eax]
 120d0cf:	test   BYTE PTR [eax+0xb2],0x1
 120d0d6:	je     120d0e6
 120d0d8:	cmp    DWORD PTR [eax+0x60],0x0
 120d0dc:	jne    120d0e6
 120d0de:	mov    DWORD PTR [esp],eax
 120d0e1:	call   1db0b8
 120d0e6:	mov    DWORD PTR [esp+0x4],0x0
 120d0ee:	mov    DWORD PTR [esp],0x0
 120d0f5:	call   106ecf4  ; DIContainerBalancing::get_GameConstantsBalancingDataProvider
 120d0fa:	test   eax,eax
 120d0fc:	je     120d275
 120d102:	mov    DWORD PTR [esp],eax
 120d105:	mov    DWORD PTR [esp+0x4],0x0
 120d10d:	call   aba854  ; ABH.Shared.BalancingData.GameConstantsBalancingDataProvider::get_ReviveSingleBirdsRequirement
 120d112:	mov    esi,eax
 120d114:	mov    DWORD PTR [esp+0x4],0x0
 120d11c:	mov    DWORD PTR [esp],0x0
 120d123:	call   106b6fb  ; DIContainerBalancing::GetInventoryItemBalancingDataPovider
 120d128:	mov    edi,eax
 120d12a:	test   esi,esi
 120d12c:	je     120d275
 120d132:	mov    DWORD PTR [esp],esi
 120d135:	mov    DWORD PTR [esp+0x4],0x0
 120d13d:	call   179b551  ; ABH.Shared.Models.Generic.Requirement::get_NameId
 120d142:	test   edi,edi
 120d144:	je     120d275
 120d14a:	mov    DWORD PTR [esp+0x28],esi
 120d14e:	mov    DWORD PTR [esp+0x4],eax
 120d152:	mov    DWORD PTR [esp],edi
 120d155:	mov    DWORD PTR [esp+0xc],0x0
 120d15d:	mov    DWORD PTR [esp+0x8],0x1
 120d165:	call   abd53b  ; ABH.Shared.BalancingData.InventoryItemBalancingDataPovider::GetBalancingData
 120d16a:	mov    edx,eax
 120d16c:	test   edx,edx
 120d16e:	je     120d275
 120d174:	mov    eax,DWORD PTR [ebp+0x8]
 120d177:	mov    eax,DWORD PTR [eax+0x1c]
 120d17a:	mov    DWORD PTR [esp+0x24],eax
 120d17e:	lea    eax,[ebx+0x45578]
 120d184:	mov    eax,DWORD PTR [eax]
 120d186:	mov    ecx,DWORD PTR [edx]
 120d188:	mov    DWORD PTR [esp+0x20],edx
 120d18c:	movzx  edx,WORD PTR [ecx+0xaa]
 120d193:	test   edx,edx
 120d195:	je     120d1a6
 120d197:	mov    esi,DWORD PTR [ecx+0x4c]
 120d19a:	xor    edi,edi
 120d19c:	cmp    DWORD PTR [esi+edi*8],eax
 120d19f:	je     120d1c2
 120d1a1:	inc    edi
 120d1a2:	cmp    edi,edx
 120d1a4:	jb     120d19c
 120d1a6:	mov    DWORD PTR [esp+0x4],eax
 120d1aa:	mov    esi,DWORD PTR [esp+0x20]
 120d1ae:	mov    DWORD PTR [esp],esi
 120d1b1:	mov    DWORD PTR [esp+0x8],0x1
 120d1b9:	call   1c1964
 120d1be:	mov    ecx,eax
 120d1c0:	jmp    120d1d1
 120d1c2:	mov    eax,DWORD PTR [esi+edi*8+0x4]
 120d1c6:	lea    ecx,[ecx+eax*8+0xbc]
 120d1cd:	mov    esi,DWORD PTR [esp+0x20]
 120d1d1:	mov    eax,DWORD PTR [ecx+0x4]
 120d1d4:	mov    DWORD PTR [esp+0x4],eax
 120d1d8:	mov    DWORD PTR [esp],esi
 120d1db:	call   DWORD PTR [ecx]
 120d1dd:	mov    edi,eax
 120d1df:	mov    eax,DWORD PTR [esp+0x28]
 120d1e3:	mov    DWORD PTR [esp],eax
 120d1e6:	mov    DWORD PTR [esp+0x4],0x0
 120d1ee:	call   179b574  ; ABH.Shared.Models.Generic.Requirement::get_Value
 120d1f3:	fstp   DWORD PTR [esp+0x2c]
 120d1f7:	movss  xmm0,DWORD PTR [esp+0x2c]
 120d1fd:	lea    esi,[ebx+0x430e4]
 120d203:	mov    eax,DWORD PTR [esi]
 120d205:	test   BYTE PTR [eax+0xb2],0x1
 120d20c:	je     120d228
 120d20e:	cmp    DWORD PTR [eax+0x60],0x0
 120d212:	jne    120d228
 120d214:	mov    DWORD PTR [esp],eax
 120d217:	movss  DWORD PTR [esp+0x28],xmm0
 120d21d:	call   1db0b8
 120d222:	movss  xmm0,DWORD PTR [esp+0x28]
 120d228:	mov    ecx,DWORD PTR [esp+0x24]
 120d22c:	test   ecx,ecx
 120d22e:	je     120d275
 120d230:	mov    eax,DWORD PTR [esi]
 120d232:	mov    eax,DWORD PTR [eax+0x50]
 120d235:	mov    eax,DWORD PTR [eax]
 120d237:	mov    DWORD PTR [esp+0x10],eax
 120d23b:	movss  DWORD PTR [esp+0xc],xmm0
 120d241:	mov    DWORD PTR [esp+0x4],edi
 120d245:	mov    DWORD PTR [esp],ecx
 120d248:	mov    DWORD PTR [esp+0x1c],0x0
 120d250:	mov    DWORD PTR [esp+0x18],0x1
 120d258:	mov    DWORD PTR [esp+0x14],0x0
 120d260:	mov    DWORD PTR [esp+0x8],0x0
 120d268:	call   cde26c  ; ResourceCostBlind::SetModel
 120d26d:	lea    esp,[ebp-0xc]
 120d270:	pop    esi
 120d271:	pop    edi
 120d272:	pop    ebx
 120d273:	pop    ebp
 120d274:	ret
 120d275:	call   1fbc48
 120d27a:	call   11ebdbf