
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00508843:
  508843:	push   ebp
  508844:	mov    ebp,esp
  508846:	push   ebx
  508847:	push   edi
  508848:	push   esi
  508849:	and    esp,0xfffffff0
  50884c:	sub    esp,0x60
  50884f:	call   508854
  508854:	pop    ebx
  508855:	add    ebx,0x1a096f0
  50885b:	mov    esi,DWORD PTR [ebp+0x14]
  50885e:	mov    al,BYTE PTR [ebx+0x5d507]
  508864:	test   al,al
  508866:	jne    50887f
  508868:	lea    eax,[ebx-0x66f518]
  50886e:	mov    eax,DWORD PTR [eax]
  508870:	mov    DWORD PTR [esp],eax
  508873:	call   1ca6e8
  508878:	mov    BYTE PTR [ebx+0x5d507],0x1
  50887f:	mov    DWORD PTR [esp+0x58],0x0
  508887:	test   esi,esi
  508889:	je     508d17
  50888f:	lea    eax,[ebx+0x45874]
  508895:	mov    DWORD PTR [esp+0x3c],eax
  508899:	mov    eax,DWORD PTR [eax]
  50889b:	mov    ecx,DWORD PTR [esi]
  50889d:	movzx  edx,WORD PTR [ecx+0xaa]
  5088a4:	test   edx,edx
  5088a6:	je     5088b7
  5088a8:	mov    esi,DWORD PTR [ecx+0x4c]
  5088ab:	xor    edi,edi
  5088ad:	cmp    DWORD PTR [esi+edi*8],eax
  5088b0:	je     5088d2
  5088b2:	inc    edi
  5088b3:	cmp    edi,edx
  5088b5:	jb     5088ad
  5088b7:	mov    DWORD PTR [esp+0x4],eax
  5088bb:	mov    esi,DWORD PTR [ebp+0x14]
  5088be:	mov    DWORD PTR [esp],esi
  5088c1:	mov    DWORD PTR [esp+0x8],0x31
  5088c9:	call   1c1964
  5088ce:	mov    ecx,eax
  5088d0:	jmp    5088e0
  5088d2:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  5088d6:	lea    ecx,[ecx+eax*8+0x23c]
  5088dd:	mov    esi,DWORD PTR [ebp+0x14]
  5088e0:	movss  xmm0,DWORD PTR [ebp+0xc]
  5088e5:	movss  DWORD PTR [esp+0x34],xmm0
  5088eb:	mov    eax,DWORD PTR [ecx+0x4]
  5088ee:	mov    DWORD PTR [esp+0x4],eax
  5088f2:	mov    DWORD PTR [esp],esi
  5088f5:	call   DWORD PTR [ecx]
  5088f7:	test   eax,eax
  5088f9:	je     508cff
  5088ff:	mov    eax,DWORD PTR [esp+0x3c]
  508903:	mov    eax,DWORD PTR [eax]
  508905:	mov    ecx,DWORD PTR [esi]
  508907:	movzx  edx,WORD PTR [ecx+0xaa]
  50890e:	test   edx,edx
  508910:	je     508921
  508912:	mov    esi,DWORD PTR [ecx+0x4c]
  508915:	xor    edi,edi
  508917:	cmp    DWORD PTR [esi+edi*8],eax
  50891a:	je     50893c
  50891c:	inc    edi
  50891d:	cmp    edi,edx
  50891f:	jb     508917
  508921:	mov    DWORD PTR [esp+0x4],eax
  508925:	mov    esi,DWORD PTR [ebp+0x14]
  508928:	mov    DWORD PTR [esp],esi
  50892b:	mov    DWORD PTR [esp+0x8],0x31
  508933:	call   1c1964
  508938:	mov    ecx,eax
  50893a:	jmp    50894a
  50893c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  508940:	lea    ecx,[ecx+eax*8+0x23c]
  508947:	mov    esi,DWORD PTR [ebp+0x14]
  50894a:	mov    eax,DWORD PTR [ecx+0x4]
  50894d:	mov    DWORD PTR [esp+0x4],eax
  508951:	mov    DWORD PTR [esp],esi
  508954:	call   DWORD PTR [ecx]
  508956:	test   eax,eax
  508958:	je     508d17
  50895e:	lea    ecx,[ebx+0x4a2a0]
  508964:	mov    ecx,DWORD PTR [ecx]
  508966:	mov    DWORD PTR [esp+0x4],ecx
  50896a:	mov    DWORD PTR [esp],eax
  50896d:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  508972:	mov    esi,eax
  508974:	lea    eax,[ebx+0x45ff0]
  50897a:	mov    DWORD PTR [esp+0x24],eax
  50897e:	mov    eax,DWORD PTR [eax]
  508980:	mov    eax,DWORD PTR [eax+0x50]
  508983:	cmp    DWORD PTR [eax+0x200],0x0
  50898a:	jne    5089ea
  50898c:	lea    eax,[ebx+0x4b284]
  508992:	mov    eax,DWORD PTR [eax]
  508994:	mov    DWORD PTR [esp+0x3c],eax
  508998:	lea    eax,[ebx+0x46028]
  50899e:	mov    eax,DWORD PTR [eax]
  5089a0:	mov    DWORD PTR [esp],eax
  5089a3:	call   20bfb2
  5089a8:	mov    edi,eax
  5089aa:	mov    eax,DWORD PTR [esp+0x3c]
  5089ae:	mov    DWORD PTR [esp+0x50],eax
  5089b2:	lea    eax,[ebx+0x4b26c]
  5089b8:	mov    eax,DWORD PTR [eax]
  5089ba:	mov    DWORD PTR [esp+0xc],eax
  5089be:	mov    eax,DWORD PTR [esp+0x50]
  5089c2:	mov    DWORD PTR [esp+0x8],eax
  5089c6:	mov    DWORD PTR [esp],edi
  5089c9:	mov    DWORD PTR [esp+0x4],0x0
  5089d1:	call   159dce6  ; shared address: System.Func`2<ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Generic.BattleEffectType>::.ctor | System.Func`2<ABH.Shared.Models.Generic.BattleEffect, ABH.Shared.Generic.BattleEffectType>::.ctor | System.Func`2<object, ABH.Shared.Generic.BattleEffectType>::.ctor
  5089d6:	mov    ecx,DWORD PTR [esp+0x24]
  5089da:	mov    eax,DWORD PTR [ecx]
  5089dc:	mov    eax,DWORD PTR [eax+0x50]
  5089df:	mov    DWORD PTR [eax+0x200],edi
  5089e5:	mov    eax,DWORD PTR [ecx]
  5089e7:	mov    eax,DWORD PTR [eax+0x50]
  5089ea:	mov    eax,DWORD PTR [eax+0x200]
  5089f0:	lea    ecx,[ebx+0x4b270]
  5089f6:	mov    ecx,DWORD PTR [ecx]
  5089f8:	mov    DWORD PTR [esp+0xc],ecx
  5089fc:	mov    DWORD PTR [esp+0x8],eax
  508a00:	mov    DWORD PTR [esp+0x4],esi
  508a04:	mov    DWORD PTR [esp],0x0
  508a0b:	call   de1138  ; shared address: System.Linq.Enumerable::OrderBy | System.Linq.Enumerable::OrderBy | System.Linq.Enumerable::OrderBy
  508a10:	lea    ecx,[ebx+0x4a588]
  508a16:	mov    ecx,DWORD PTR [ecx]
  508a18:	mov    DWORD PTR [esp+0x8],ecx
  508a1c:	mov    DWORD PTR [esp+0x4],eax
  508a20:	mov    DWORD PTR [esp],0x0
  508a27:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  508a2c:	mov    DWORD PTR [esp+0x28],eax
  508a30:	test   eax,eax
  508a32:	je     508d17
  508a38:	xor    edi,edi
  508a3a:	lea    ecx,[ebx+0x4a58c]
  508a40:	mov    DWORD PTR [esp+0x2c],ecx
  508a44:	jmp    508a4b
  508a46:	inc    edi
  508a47:	mov    eax,DWORD PTR [esp+0x28]
  508a4b:	mov    ecx,DWORD PTR [esp+0x2c]
  508a4f:	mov    ecx,DWORD PTR [ecx]
  508a51:	mov    DWORD PTR [esp+0x4],ecx
  508a55:	mov    DWORD PTR [esp],eax
  508a58:	mov    esi,eax
  508a5a:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  508a5f:	cmp    edi,eax
  508a61:	jge    508cff
  508a67:	lea    eax,[ebx+0x4a590]
  508a6d:	mov    eax,DWORD PTR [eax]
  508a6f:	mov    DWORD PTR [esp+0x8],eax
  508a73:	mov    DWORD PTR [esp+0x4],edi
  508a77:	mov    DWORD PTR [esp],esi
  508a7a:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  508a7f:	mov    esi,eax
  508a81:	mov    DWORD PTR [esp+0x38],esi
  508a85:	test   esi,esi
  508a87:	je     508cda
  508a8d:	mov    DWORD PTR [esp+0x30],edi
  508a91:	mov    edi,DWORD PTR [esi+0x8]
  508a94:	mov    eax,DWORD PTR [esp+0x24]
  508a98:	mov    eax,DWORD PTR [eax]
  508a9a:	mov    eax,DWORD PTR [eax+0x50]
  508a9d:	cmp    DWORD PTR [eax+0x204],0x0
  508aa4:	jne    508b0c
  508aa6:	lea    eax,[ebx+0x4b288]
  508aac:	mov    eax,DWORD PTR [eax]
  508aae:	mov    DWORD PTR [esp+0x3c],eax
  508ab2:	lea    eax,[ebx+0x4602c]
  508ab8:	mov    eax,DWORD PTR [eax]
  508aba:	mov    DWORD PTR [esp],eax
  508abd:	call   20bfb2
  508ac2:	mov    DWORD PTR [esp+0x38],esi
  508ac6:	mov    esi,eax
  508ac8:	mov    eax,DWORD PTR [esp+0x3c]
  508acc:	mov    DWORD PTR [esp+0x48],eax
  508ad0:	lea    eax,[ebx+0x4b28c]
  508ad6:	mov    eax,DWORD PTR [eax]
  508ad8:	mov    DWORD PTR [esp+0xc],eax
  508adc:	mov    eax,DWORD PTR [esp+0x48]
  508ae0:	mov    DWORD PTR [esp+0x8],eax
  508ae4:	mov    DWORD PTR [esp],esi
  508ae7:	mov    DWORD PTR [esp+0x4],0x0
  508aef:	call   159dce6  ; shared address: System.Func`2<ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Generic.BattleEffectType>::.ctor | System.Func`2<ABH.Shared.Models.Generic.BattleEffect, ABH.Shared.Generic.BattleEffectType>::.ctor | System.Func`2<object, ABH.Shared.Generic.BattleEffectType>::.ctor
  508af4:	mov    ecx,DWORD PTR [esp+0x24]
  508af8:	mov    eax,DWORD PTR [ecx]
  508afa:	mov    eax,DWORD PTR [eax+0x50]
  508afd:	mov    DWORD PTR [eax+0x204],esi
  508b03:	mov    esi,DWORD PTR [esp+0x38]
  508b07:	mov    eax,DWORD PTR [ecx]
  508b09:	mov    eax,DWORD PTR [eax+0x50]
  508b0c:	mov    eax,DWORD PTR [eax+0x204]
  508b12:	lea    ecx,[ebx+0x4b290]
  508b18:	mov    ecx,DWORD PTR [ecx]
  508b1a:	mov    DWORD PTR [esp+0xc],ecx
  508b1e:	mov    DWORD PTR [esp+0x8],eax
  508b22:	mov    DWORD PTR [esp+0x4],edi
  508b26:	mov    DWORD PTR [esp],0x0
  508b2d:	call   de1138  ; shared address: System.Linq.Enumerable::OrderBy | System.Linq.Enumerable::OrderBy | System.Linq.Enumerable::OrderBy
  508b32:	lea    ecx,[ebx+0x4b294]
  508b38:	mov    ecx,DWORD PTR [ecx]
  508b3a:	mov    DWORD PTR [esp+0x8],ecx
  508b3e:	mov    DWORD PTR [esp+0x4],eax
  508b42:	mov    DWORD PTR [esp],0x0
  508b49:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  508b4e:	mov    DWORD PTR [esi+0x8],eax
  508b51:	mov    DWORD PTR [esp+0x3c],0x0
  508b59:	mov    edi,DWORD PTR [ebp+0x10]
  508b5c:	jmp    508b65
  508b5e:	inc    DWORD PTR [esp+0x3c]
  508b62:	mov    eax,DWORD PTR [esi+0x8]
  508b65:	test   eax,eax
  508b67:	je     508d17
  508b6d:	lea    ecx,[ebx+0x4a2b0]
  508b73:	mov    ecx,DWORD PTR [ecx]
  508b75:	mov    DWORD PTR [esp+0x4],ecx
  508b79:	mov    DWORD PTR [esp],eax
  508b7c:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  508b81:	cmp    DWORD PTR [esp+0x3c],eax
  508b85:	jge    508cd1
  508b8b:	mov    eax,DWORD PTR [esi+0x8]
  508b8e:	test   eax,eax
  508b90:	je     508d17
  508b96:	lea    ecx,[ebx+0x4a2ac]
  508b9c:	mov    ecx,DWORD PTR [ecx]
  508b9e:	mov    DWORD PTR [esp+0x8],ecx
  508ba2:	mov    ecx,DWORD PTR [esp+0x3c]
  508ba6:	mov    DWORD PTR [esp+0x4],ecx
  508baa:	mov    DWORD PTR [esp],eax
  508bad:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  508bb2:	mov    esi,eax
  508bb4:	mov    DWORD PTR [esp+0x58],0x0
  508bbc:	test   esi,esi
  508bbe:	je     508d17
  508bc4:	mov    DWORD PTR [esp],esi
  508bc7:	mov    DWORD PTR [esp+0x4],0x0
  508bcf:	call   179af3f  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectTrigger
  508bd4:	cmp    eax,edi
  508bd6:	jne    508cc8
  508bdc:	mov    eax,DWORD PTR [ebp+0x8]
  508bdf:	mov    eax,DWORD PTR [eax+0x14]
  508be2:	test   eax,eax
  508be4:	je     508d17
  508bea:	lea    ecx,[ebx+0x4b274]
  508bf0:	mov    ecx,DWORD PTR [ecx]
  508bf2:	mov    DWORD PTR [esp+0x8],ecx
  508bf6:	mov    DWORD PTR [esp+0x4],edi
  508bfa:	mov    DWORD PTR [esp],eax
  508bfd:	call   123ff17  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::ContainsKey
  508c02:	test   al,al
  508c04:	je     508cc8
  508c0a:	mov    eax,DWORD PTR [ebp+0x8]
  508c0d:	mov    eax,DWORD PTR [eax+0x14]
  508c10:	test   eax,eax
  508c12:	je     508d17
  508c18:	lea    ecx,[ebx+0x4b00c]
  508c1e:	mov    ecx,DWORD PTR [ecx]
  508c20:	mov    DWORD PTR [esp+0x8],ecx
  508c24:	mov    DWORD PTR [esp+0x4],edi
  508c28:	mov    DWORD PTR [esp],eax
  508c2b:	call   123e849  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, unresolved-type@0x1e6d7d0(kind=0x15,data=0x1f31004)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.EffectTriggerType, object>::get_Item
  508c30:	mov    edi,eax
  508c32:	mov    DWORD PTR [esp],esi
  508c35:	mov    DWORD PTR [esp+0x4],0x0
  508c3d:	call   179af1c  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectType
  508c42:	test   edi,edi
  508c44:	je     508d17
  508c4a:	lea    ecx,[ebx+0x4b278]
  508c50:	mov    ecx,DWORD PTR [ecx]
  508c52:	mov    DWORD PTR [esp+0xc],ecx
  508c56:	lea    ecx,[esp+0x58]
  508c5a:	mov    DWORD PTR [esp+0x8],ecx
  508c5e:	mov    DWORD PTR [esp+0x4],eax
  508c62:	mov    DWORD PTR [esp],edi
  508c65:	call   123cdcb  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, unresolved-type@0x1e6d7d8(kind=0x15,data=0x1f31014)>::TryGetValue | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.BattleEffectType, object>::TryGetValue
  508c6a:	test   al,al
  508c6c:	je     508cc5
  508c6e:	mov    eax,DWORD PTR [esp+0x58]
  508c72:	test   eax,eax
  508c74:	mov    edi,DWORD PTR [ebp+0x10]
  508c77:	je     508d17
  508c7d:	lea    ecx,[ebx+0x4b280]
  508c83:	mov    ecx,DWORD PTR [ecx]
  508c85:	mov    DWORD PTR [esp+0x14],ecx
  508c89:	mov    ecx,DWORD PTR [ebp+0x18]
  508c8c:	mov    DWORD PTR [esp+0x10],ecx
  508c90:	mov    DWORD PTR [esp+0xc],esi
  508c94:	mov    esi,DWORD PTR [esp+0x38]
  508c98:	mov    DWORD PTR [esp+0x8],esi
  508c9c:	movss  xmm0,DWORD PTR [esp+0x34]
  508ca2:	movss  DWORD PTR [esp+0x4],xmm0
  508ca8:	mov    DWORD PTR [esp],eax
  508cab:	call   17d9404  ; shared address: System.Func`5<float, ABH.GameDatas.Battle.BattleGameData, ABH.GameDatas.Interfaces.ICombatant, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<float, ABH.GameDatas.Battle.BattleEffectGameData, ABH.Shared.Models.Generic.BattleEffect, ABH.GameDatas.Interfaces.ICombatant, float>::Invoke | System.Func`5<float, object, object, object, float>::Invoke
  508cb0:	fstp   DWORD PTR [esp+0x44]
  508cb4:	movss  xmm0,DWORD PTR [esp+0x44]
  508cba:	movss  DWORD PTR [esp+0x34],xmm0
  508cc0:	jmp    508b5e
  508cc5:	mov    edi,DWORD PTR [ebp+0x10]
  508cc8:	mov    esi,DWORD PTR [esp+0x38]
  508ccc:	jmp    508b5e
  508cd1:	mov    edi,DWORD PTR [esp+0x30]
  508cd5:	jmp    508a46
  508cda:	lea    eax,[ebx+0x57590]  ; literal "[BattleService] Invalid Effect"
  508ce0:	mov    eax,DWORD PTR [eax]
  508ce2:	mov    DWORD PTR [esp+0x4],eax
  508ce6:	mov    DWORD PTR [esp+0x8],0x0
  508cee:	mov    DWORD PTR [esp],0x0
  508cf5:	call   108148a  ; DebugLog::Error
  508cfa:	jmp    508a46
  508cff:	movss  xmm0,DWORD PTR [esp+0x34]
  508d05:	movss  DWORD PTR [esp+0x40],xmm0
  508d0b:	fld    DWORD PTR [esp+0x40]
  508d0f:	lea    esp,[ebp-0xc]
  508d12:	pop    esi
  508d13:	pop    edi
  508d14:	pop    ebx
  508d15:	pop    ebp
  508d16:	ret
  508d17:	call   1fbc48
  508d1c:	call   540b98