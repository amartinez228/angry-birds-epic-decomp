
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

010c5945:
 10c5945:	push   ebp
 10c5946:	mov    ebp,esp
 10c5948:	push   ebx
 10c5949:	push   edi
 10c594a:	push   esi
 10c594b:	and    esp,0xfffffff0
 10c594e:	sub    esp,0x50
 10c5951:	call   10c5956
 10c5956:	pop    ebx
 10c5957:	add    ebx,0xe4c5ee
 10c595d:	mov    al,BYTE PTR [ebx+0x63615]
 10c5963:	test   al,al
 10c5965:	jne    10c597e
 10c5967:	lea    eax,[ebx-0x65ab6c]
 10c596d:	mov    eax,DWORD PTR [eax]
 10c596f:	mov    DWORD PTR [esp],eax
 10c5972:	call   1ca6e8
 10c5977:	mov    BYTE PTR [ebx+0x63615],0x1
 10c597e:	xorps  xmm0,xmm0
 10c5981:	movaps XMMWORD PTR [esp+0x30],xmm0
 10c5986:	mov    eax,DWORD PTR [ebp+0x8]
 10c5989:	mov    eax,DWORD PTR [eax+0xc]
 10c598c:	test   eax,eax
 10c598e:	je     10c5d85
 10c5994:	lea    ecx,[ebx+0x4fcc0]
 10c599a:	mov    ecx,DWORD PTR [ecx]
 10c599c:	mov    DWORD PTR [esp+0x8],ecx
 10c59a0:	mov    DWORD PTR [esp+0x4],eax
 10c59a4:	lea    eax,[esp+0x20]
 10c59a8:	mov    DWORD PTR [esp],eax
 10c59ab:	call   4c350f  ; shared address: System.Collections.Generic.List`1<object>::GetEnumerator | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::GetEnumerator | System.Collections.Generic.List`1<System.Net.Cookie>::GetEnumerator | +129 other aliases
 10c59b0:	sub    esp,0x4
 10c59b3:	movsd  xmm0,QWORD PTR [esp+0x20]
 10c59b9:	movsd  xmm1,QWORD PTR [esp+0x28]
 10c59bf:	movsd  QWORD PTR [esp+0x38],xmm1
 10c59c5:	movsd  QWORD PTR [esp+0x30],xmm0
 10c59cb:	lea    eax,[ebx+0x4fce0]
 10c59d1:	mov    DWORD PTR [esp+0x1c],eax
 10c59d5:	mov    eax,DWORD PTR [esp+0x1c]
 10c59d9:	mov    eax,DWORD PTR [eax]
 10c59db:	mov    DWORD PTR [esp+0x4],eax
 10c59df:	lea    eax,[esp+0x30]
 10c59e3:	mov    DWORD PTR [esp],eax
 10c59e6:	call   447e4e
 10c59eb:	test   al,al
 10c59ed:	je     10c5b58
 10c59f3:	lea    eax,[ebx+0x4fcc4]
 10c59f9:	mov    eax,DWORD PTR [eax]
 10c59fb:	mov    DWORD PTR [esp+0x4],eax
 10c59ff:	lea    eax,[esp+0x30]
 10c5a03:	mov    DWORD PTR [esp],eax
 10c5a06:	call   447f1e
 10c5a0b:	mov    edi,eax
 10c5a0d:	test   edi,edi
 10c5a0f:	je     10c5b62
 10c5a15:	mov    eax,DWORD PTR [ebp+0x8]
 10c5a18:	mov    eax,DWORD PTR [eax+0x18]
 10c5a1b:	test   eax,eax
 10c5a1d:	je     10c5b6c
 10c5a23:	mov    ecx,DWORD PTR [edi+0x8]
 10c5a26:	lea    edx,[ebx+0x4fcc8]
 10c5a2c:	mov    edx,DWORD PTR [edx]
 10c5a2e:	mov    DWORD PTR [esp+0x8],edx
 10c5a32:	mov    DWORD PTR [esp+0x4],ecx
 10c5a36:	mov    DWORD PTR [esp],eax
 10c5a39:	call   61a2f9  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, object>::ContainsKey | System.Collections.Generic.Dictionary`2<string, string>::ContainsKey | +32 other aliases
 10c5a3e:	test   al,al
 10c5a40:	jne    10c5a6f
 10c5a42:	mov    eax,DWORD PTR [ebp+0x8]
 10c5a45:	mov    eax,DWORD PTR [eax+0x18]
 10c5a48:	test   eax,eax
 10c5a4a:	je     10c5b94
 10c5a50:	mov    ecx,DWORD PTR [edi+0x8]
 10c5a53:	lea    edx,[ebx+0x4fccc]
 10c5a59:	mov    edx,DWORD PTR [edx]
 10c5a5b:	mov    DWORD PTR [esp+0xc],edx
 10c5a5f:	mov    DWORD PTR [esp+0x8],edi
 10c5a63:	mov    DWORD PTR [esp+0x4],ecx
 10c5a67:	mov    DWORD PTR [esp],eax
 10c5a6a:	call   619d68  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::Add | System.Collections.Generic.Dictionary`2<string, object>::Add | System.Collections.Generic.Dictionary`2<string, string>::Add | +47 other aliases
 10c5a6f:	mov    eax,DWORD PTR [ebp+0x8]
 10c5a72:	mov    eax,DWORD PTR [eax+0x1c]
 10c5a75:	test   eax,eax
 10c5a77:	je     10c5b76
 10c5a7d:	mov    ecx,DWORD PTR [edi+0x10]
 10c5a80:	lea    edx,[ebx+0x4fcd0]
 10c5a86:	mov    edx,DWORD PTR [edx]
 10c5a88:	mov    DWORD PTR [esp+0x8],edx
 10c5a8c:	mov    DWORD PTR [esp+0x4],ecx
 10c5a90:	mov    DWORD PTR [esp],eax
 10c5a93:	call   5e054a  ; shared address: System.Collections.Generic.Dictionary`2<int, string>::ContainsKey | System.Collections.Generic.Dictionary`2<int, ABH.GameDatas.FriendGameData>::ContainsKey | System.Collections.Generic.Dictionary`2<int, UnityEngine.GameObject>::ContainsKey | +5 other aliases
 10c5a98:	test   al,al
 10c5a9a:	jne    10c5aff
 10c5a9c:	mov    eax,DWORD PTR [ebp+0x8]
 10c5a9f:	mov    eax,DWORD PTR [eax+0x1c]
 10c5aa2:	mov    DWORD PTR [esp+0x18],eax
 10c5aa6:	mov    eax,DWORD PTR [edi+0x10]
 10c5aa9:	mov    DWORD PTR [esp+0x14],eax
 10c5aad:	lea    eax,[ebx+0x486cc]
 10c5ab3:	mov    eax,DWORD PTR [eax]
 10c5ab5:	mov    DWORD PTR [esp],eax
 10c5ab8:	call   20bfb2
 10c5abd:	mov    esi,eax
 10c5abf:	lea    eax,[ebx+0x4fcac]
 10c5ac5:	mov    eax,DWORD PTR [eax]
 10c5ac7:	mov    DWORD PTR [esp+0x4],eax
 10c5acb:	mov    DWORD PTR [esp],esi
 10c5ace:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
 10c5ad3:	mov    ecx,DWORD PTR [esp+0x18]
 10c5ad7:	test   ecx,ecx
 10c5ad9:	je     10c5b9e
 10c5adf:	lea    eax,[ebx+0x4fcd4]
 10c5ae5:	mov    eax,DWORD PTR [eax]
 10c5ae7:	mov    DWORD PTR [esp+0xc],eax
 10c5aeb:	mov    DWORD PTR [esp+0x8],esi
 10c5aef:	mov    eax,DWORD PTR [esp+0x14]
 10c5af3:	mov    DWORD PTR [esp+0x4],eax
 10c5af7:	mov    DWORD PTR [esp],ecx
 10c5afa:	call   5dffef  ; shared address: System.Collections.Generic.Dictionary`2<int, string>::Add | System.Collections.Generic.Dictionary`2<int, ABH.GameDatas.FriendGameData>::Add | System.Collections.Generic.Dictionary`2<int, UnityEngine.GameObject>::Add | +9 other aliases
 10c5aff:	mov    eax,DWORD PTR [ebp+0x8]
 10c5b02:	mov    eax,DWORD PTR [eax+0x1c]
 10c5b05:	test   eax,eax
 10c5b07:	je     10c5b80
 10c5b09:	mov    ecx,DWORD PTR [edi+0x10]
 10c5b0c:	lea    edx,[ebx+0x4fcd8]
 10c5b12:	mov    edx,DWORD PTR [edx]
 10c5b14:	mov    DWORD PTR [esp+0x8],edx
 10c5b18:	mov    DWORD PTR [esp+0x4],ecx
 10c5b1c:	mov    DWORD PTR [esp],eax
 10c5b1f:	call   5dee7c  ; shared address: System.Collections.Generic.Dictionary`2<int, string>::get_Item | System.Collections.Generic.Dictionary`2<int, ABH.GameDatas.FriendGameData>::get_Item | System.Collections.Generic.Dictionary`2<int, UnityEngine.GameObject>::get_Item | +5 other aliases
 10c5b24:	test   eax,eax
 10c5b26:	je     10c5b8a
 10c5b28:	lea    ecx,[ebx+0x4fcdc]
 10c5b2e:	mov    ecx,DWORD PTR [ecx]
 10c5b30:	mov    DWORD PTR [esp+0x8],ecx
 10c5b34:	mov    DWORD PTR [esp+0x4],edi
 10c5b38:	mov    DWORD PTR [esp],eax
 10c5b3b:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
 10c5b40:	mov    eax,DWORD PTR [ebp+0x8]
 10c5b43:	mov    eax,DWORD PTR [eax+0x10]
 10c5b46:	mov    DWORD PTR [edi+0x2c],eax
 10c5b49:	mov    DWORD PTR [esp],edi
 10c5b4c:	call   10c4d59  ; Sound::Init
 10c5b51:	jmp    10c59d5
 10c5b56:	jmp    10c5ba8
 10c5b58:	xor    esi,esi
 10c5b5a:	mov    al,0x1
 10c5b5c:	mov    DWORD PTR [esp+0x1c],eax
 10c5b60:	jmp    10c5bc8
 10c5b62:	call   1fbc48
 10c5b67:	call   10a4f7a
 10c5b6c:	call   1fbc48
 10c5b71:	call   10a4f7a
 10c5b76:	call   1fbc48
 10c5b7b:	call   10a4f7a
 10c5b80:	call   1fbc48
 10c5b85:	call   10a4f7a
 10c5b8a:	call   1fbc48
 10c5b8f:	call   10a4f7a
 10c5b94:	call   1fbc48
 10c5b99:	call   10a4f7a
 10c5b9e:	call   1fbc48
 10c5ba3:	jmp    10c5d97
 10c5ba8:	cmp    edx,0x1
 10c5bab:	jne    10c5d8f
 10c5bb1:	mov    DWORD PTR [esp],eax
 10c5bb4:	call   1ba3f0
 10c5bb9:	mov    esi,DWORD PTR [eax]
 10c5bbb:	call   1b9ce0
 10c5bc0:	mov    DWORD PTR [esp+0x1c],0x0
 10c5bc8:	lea    eax,[ebx+0x4fce4]
 10c5bce:	mov    eax,DWORD PTR [eax]
 10c5bd0:	mov    DWORD PTR [esp+0x4],eax
 10c5bd4:	lea    eax,[esp+0x30]
 10c5bd8:	mov    DWORD PTR [esp],eax
 10c5bdb:	call   447df6
 10c5be0:	mov    eax,DWORD PTR [esp+0x1c]
 10c5be4:	test   al,al
 10c5be6:	jne    10c5bf4
 10c5be8:	test   esi,esi
 10c5bea:	je     10c5bf4
 10c5bec:	mov    DWORD PTR [esp],esi
 10c5bef:	call   1fbb20
 10c5bf4:	mov    eax,DWORD PTR [ebp+0x8]
 10c5bf7:	mov    eax,DWORD PTR [eax+0xc]
 10c5bfa:	test   eax,eax
 10c5bfc:	je     10c5d85
 10c5c02:	lea    ecx,[ebx+0x4fce8]
 10c5c08:	mov    ecx,DWORD PTR [ecx]
 10c5c0a:	mov    DWORD PTR [esp+0x4],ecx
 10c5c0e:	mov    DWORD PTR [esp],eax
 10c5c11:	call   4c2ace  ; shared address: System.Collections.Generic.List`1<object>::Clear | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::Clear | System.Collections.Generic.List`1<System.Runtime.Serialization.DataMemberInfo>::Clear | +49 other aliases
 10c5c16:	lea    esi,[ebx+0x4584c]
 10c5c1c:	mov    eax,DWORD PTR [esi]
 10c5c1e:	test   BYTE PTR [eax+0xb2],0x1
 10c5c25:	je     10c5c35
 10c5c27:	cmp    DWORD PTR [eax+0x60],0x0
 10c5c2b:	jne    10c5c35
 10c5c2d:	mov    DWORD PTR [esp],eax
 10c5c30:	call   1db0b8
 10c5c35:	mov    DWORD PTR [esp+0x4],0x0
 10c5c3d:	mov    DWORD PTR [esp],0x0
 10c5c44:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
 10c5c49:	test   eax,eax
 10c5c4b:	je     10c5cd1
 10c5c51:	mov    eax,DWORD PTR [esi]
 10c5c53:	test   BYTE PTR [eax+0xb2],0x1
 10c5c5a:	je     10c5c6a
 10c5c5c:	cmp    DWORD PTR [eax+0x60],0x0
 10c5c60:	jne    10c5c6a
 10c5c62:	mov    DWORD PTR [esp],eax
 10c5c65:	call   1db0b8
 10c5c6a:	mov    DWORD PTR [esp+0x4],0x0
 10c5c72:	mov    DWORD PTR [esp],0x0
 10c5c79:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
 10c5c7e:	test   eax,eax
 10c5c80:	je     10c5d85
 10c5c86:	lea    ecx,[ebx+0x4a210]
 10c5c8c:	mov    ecx,DWORD PTR [ecx]
 10c5c8e:	mov    DWORD PTR [esp+0x4],ecx
 10c5c92:	mov    DWORD PTR [esp],eax
 10c5c95:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
 10c5c9a:	test   eax,eax
 10c5c9c:	je     10c5d85
 10c5ca2:	mov    DWORD PTR [esp],eax
 10c5ca5:	mov    DWORD PTR [esp+0x4],0x0
 10c5cad:	call   179cf10  ; ABH.Shared.Models.PlayerData::get_IsMusicMuted
 10c5cb2:	test   al,al
 10c5cb4:	je     10c5cd1
 10c5cb6:	mov    eax,DWORD PTR [ebp+0x8]
 10c5cb9:	mov    DWORD PTR [esp],eax
 10c5cbc:	mov    DWORD PTR [esp+0x8],0x0
 10c5cc4:	mov    DWORD PTR [esp+0x4],0x1
 10c5ccc:	call   10c5d9c  ; SoundManager::Mute
 10c5cd1:	mov    eax,DWORD PTR [esi]
 10c5cd3:	test   BYTE PTR [eax+0xb2],0x1
 10c5cda:	je     10c5cea
 10c5cdc:	cmp    DWORD PTR [eax+0x60],0x0
 10c5ce0:	jne    10c5cea
 10c5ce2:	mov    DWORD PTR [esp],eax
 10c5ce5:	call   1db0b8
 10c5cea:	mov    DWORD PTR [esp+0x4],0x0
 10c5cf2:	mov    DWORD PTR [esp],0x0
 10c5cf9:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
 10c5cfe:	test   eax,eax
 10c5d00:	je     10c5d7a
 10c5d02:	mov    eax,DWORD PTR [esi]
 10c5d04:	test   BYTE PTR [eax+0xb2],0x1
 10c5d0b:	je     10c5d1b
 10c5d0d:	cmp    DWORD PTR [eax+0x60],0x0
 10c5d11:	jne    10c5d1b
 10c5d13:	mov    DWORD PTR [esp],eax
 10c5d16:	call   1db0b8
 10c5d1b:	mov    DWORD PTR [esp+0x4],0x0
 10c5d23:	mov    DWORD PTR [esp],0x0
 10c5d2a:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
 10c5d2f:	test   eax,eax
 10c5d31:	je     10c5d85
 10c5d33:	lea    ecx,[ebx+0x4a210]
 10c5d39:	mov    ecx,DWORD PTR [ecx]
 10c5d3b:	mov    DWORD PTR [esp+0x4],ecx
 10c5d3f:	mov    DWORD PTR [esp],eax
 10c5d42:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
 10c5d47:	test   eax,eax
 10c5d49:	je     10c5d85
 10c5d4b:	mov    DWORD PTR [esp],eax
 10c5d4e:	mov    DWORD PTR [esp+0x4],0x0
 10c5d56:	call   179cf34  ; ABH.Shared.Models.PlayerData::get_IsSoundMuted
 10c5d5b:	test   al,al
 10c5d5d:	je     10c5d7a
 10c5d5f:	mov    eax,DWORD PTR [ebp+0x8]
 10c5d62:	mov    DWORD PTR [esp],eax
 10c5d65:	mov    DWORD PTR [esp+0x8],0x1
 10c5d6d:	mov    DWORD PTR [esp+0x4],0x1
 10c5d75:	call   10c5d9c  ; SoundManager::Mute
 10c5d7a:	mov    eax,DWORD PTR [ebp+0x8]
 10c5d7d:	lea    esp,[ebp-0xc]
 10c5d80:	pop    esi
 10c5d81:	pop    edi
 10c5d82:	pop    ebx
 10c5d83:	pop    ebp
 10c5d84:	ret
 10c5d85:	call   1fbc48
 10c5d8a:	call   10a4f7a
 10c5d8f:	mov    DWORD PTR [esp],eax
 10c5d92:	call   1b9bd0
 10c5d97:	call   10a4f7a