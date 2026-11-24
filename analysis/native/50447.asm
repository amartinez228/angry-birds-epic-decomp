
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008d5bbe:
  8d5bbe:	push   ebp
  8d5bbf:	mov    ebp,esp
  8d5bc1:	push   ebx
  8d5bc2:	push   edi
  8d5bc3:	push   esi
  8d5bc4:	and    esp,0xfffffff0
  8d5bc7:	sub    esp,0x90
  8d5bcd:	call   8d5bd2
  8d5bd2:	pop    ebx
  8d5bd3:	add    ebx,0x163c372
  8d5bd9:	mov    edi,DWORD PTR [ebp+0x8]
  8d5bdc:	mov    al,BYTE PTR [ebx+0x6014e]
  8d5be2:	test   al,al
  8d5be4:	jne    8d5bfd
  8d5be6:	lea    eax,[ebx-0x6567a8]
  8d5bec:	mov    eax,DWORD PTR [eax]
  8d5bee:	mov    DWORD PTR [esp],eax
  8d5bf1:	call   1ca6e8
  8d5bf6:	mov    BYTE PTR [ebx+0x6014e],0x1
  8d5bfd:	mov    ecx,DWORD PTR [edi+0x18]
  8d5c00:	mov    DWORD PTR [edi+0x18],0xffffffff
  8d5c07:	xor    eax,eax
  8d5c09:	cmp    ecx,0x2
  8d5c0c:	jae    8d5ce5
  8d5c12:	lea    eax,[ebx+0x4584c]
  8d5c18:	mov    eax,DWORD PTR [eax]
  8d5c1a:	test   BYTE PTR [eax+0xb2],0x1
  8d5c21:	je     8d5c31
  8d5c23:	cmp    DWORD PTR [eax+0x60],0x0
  8d5c27:	jne    8d5c31
  8d5c29:	mov    DWORD PTR [esp],eax
  8d5c2c:	call   1db0b8
  8d5c31:	mov    DWORD PTR [esp+0x4],0x0
  8d5c39:	mov    DWORD PTR [esp],0x0
  8d5c40:	call   1065500  ; DIContainerInfrastructure::GetCoreStateMgr
  8d5c45:	test   eax,eax
  8d5c47:	je     8d60f5
  8d5c4d:	mov    eax,DWORD PTR [eax+0x2c]
  8d5c50:	test   eax,eax
  8d5c52:	je     8d60f5
  8d5c58:	mov    DWORD PTR [esp],eax
  8d5c5b:	mov    DWORD PTR [esp+0x4],0x0
  8d5c63:	call   1549e16  ; GenericUIStateMgr::IsPlayingLevelUp
  8d5c68:	test   al,al
  8d5c6a:	je     8d6013
  8d5c70:	mov    DWORD PTR [esp+0x4],0x0
  8d5c78:	mov    DWORD PTR [esp],0x0
  8d5c7f:	call   10659dc  ; DIContainerLogic::GetPacingBalancing
  8d5c84:	test   eax,eax
  8d5c86:	je     8d60f5
  8d5c8c:	mov    DWORD PTR [esp],eax
  8d5c8f:	mov    DWORD PTR [esp+0x4],0x0
  8d5c97:	call   7819fe  ; PacingBalancing::get_LevelUpDelayOnCharacters
  8d5c9c:	fstp   TBYTE PTR [esp+0x40]
  8d5ca0:	lea    eax,[ebx+0x45664]
  8d5ca6:	mov    eax,DWORD PTR [eax]
  8d5ca8:	mov    DWORD PTR [esp],eax
  8d5cab:	call   20bfb2
  8d5cb0:	mov    esi,eax
  8d5cb2:	fld    TBYTE PTR [esp+0x40]
  8d5cb6:	fstp   DWORD PTR [esp+0x4]
  8d5cba:	mov    DWORD PTR [esp],esi
  8d5cbd:	mov    DWORD PTR [esp+0x8],0x0
  8d5cc5:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  8d5cca:	mov    DWORD PTR [edi+0x10],esi
  8d5ccd:	mov    al,0x1
  8d5ccf:	cmp    BYTE PTR [edi+0x14],0x0
  8d5cd3:	jne    8d60ea
  8d5cd9:	mov    DWORD PTR [edi+0x18],0x2
  8d5ce0:	jmp    8d60ea
  8d5ce5:	jne    8d60ea
  8d5ceb:	mov    DWORD PTR [edi+0x8],0x0
  8d5cf2:	mov    DWORD PTR [esp+0x4],0x0
  8d5cfa:	mov    DWORD PTR [esp],0x0
  8d5d01:	call   10932d1  ; DIContainerLogic::GetVisualEffectsBalancing
  8d5d06:	test   eax,eax
  8d5d08:	je     8d60f5
  8d5d0e:	mov    esi,edi
  8d5d10:	lea    edi,[esi+0x8]
  8d5d13:	lea    ecx,[ebx+0x57330]  ; literal "LevelUp"
  8d5d19:	mov    ecx,DWORD PTR [ecx]
  8d5d1b:	mov    DWORD PTR [esp+0x8],edi
  8d5d1f:	mov    DWORD PTR [esp+0x4],ecx
  8d5d23:	mov    DWORD PTR [esp],eax
  8d5d26:	mov    DWORD PTR [esp+0xc],0x0
  8d5d2e:	call   11d7d6c  ; VisualEffectsBalancing::TryGetVisualEffectSetting
  8d5d33:	test   al,al
  8d5d35:	je     8d6050
  8d5d3b:	lea    eax,[ebx+0x59540]  ; literal "Try to instantiate Leveled Up effect"
  8d5d41:	mov    eax,DWORD PTR [eax]
  8d5d43:	mov    DWORD PTR [esp+0x4],eax
  8d5d47:	mov    DWORD PTR [esp+0x8],0x0
  8d5d4f:	mov    DWORD PTR [esp],0x0
  8d5d56:	call   1068c69  ; DebugLog::Log
  8d5d5b:	lea    eax,[ebx+0x4584c]
  8d5d61:	mov    eax,DWORD PTR [eax]
  8d5d63:	test   BYTE PTR [eax+0xb2],0x1
  8d5d6a:	je     8d5d7a
  8d5d6c:	cmp    DWORD PTR [eax+0x60],0x0
  8d5d70:	jne    8d5d7a
  8d5d72:	mov    DWORD PTR [esp],eax
  8d5d75:	call   1db0b8
  8d5d7a:	mov    DWORD PTR [esp+0x4],0x0
  8d5d82:	mov    DWORD PTR [esp],0x0
  8d5d89:	call   106826b  ; DIContainerInfrastructure::GetBattleEffectAssetProvider
  8d5d8e:	mov    ecx,DWORD PTR [edi]
  8d5d90:	test   ecx,ecx
  8d5d92:	je     8d60f5
  8d5d98:	mov    DWORD PTR [esp+0x40],eax
  8d5d9c:	mov    eax,DWORD PTR [ecx+0xc]
  8d5d9f:	test   eax,eax
  8d5da1:	je     8d60f5
  8d5da7:	lea    ecx,[ebx+0x4b390]
  8d5dad:	mov    ecx,DWORD PTR [ecx]
  8d5daf:	mov    DWORD PTR [esp+0x8],ecx
  8d5db3:	mov    DWORD PTR [esp],eax
  8d5db6:	mov    DWORD PTR [esp+0x4],0x0
  8d5dbe:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  8d5dc3:	test   eax,eax
  8d5dc5:	je     8d60f5
  8d5dcb:	mov    ecx,DWORD PTR [esi+0xc]
  8d5dce:	test   ecx,ecx
  8d5dd0:	je     8d60f5
  8d5dd6:	mov    ecx,DWORD PTR [ecx+0x68]
  8d5dd9:	test   ecx,ecx
  8d5ddb:	je     8d60f5
  8d5de1:	mov    edi,DWORD PTR [ecx+0x28]
  8d5de4:	test   edi,edi
  8d5de6:	je     8d60f5
  8d5dec:	mov    esi,DWORD PTR [eax+0x24]
  8d5def:	mov    DWORD PTR [esp+0x4],edi
  8d5df3:	lea    eax,[esp+0x80]
  8d5dfa:	mov    DWORD PTR [esp],eax
  8d5dfd:	mov    DWORD PTR [esp+0x8],0x0
  8d5e05:	call   17760ae  ; UnityEngine.Transform::get_position
  8d5e0a:	sub    esp,0x4
  8d5e0d:	lea    eax,[esp+0x70]
  8d5e11:	mov    DWORD PTR [esp],eax
  8d5e14:	mov    DWORD PTR [esp+0x8],0x0
  8d5e1c:	mov    DWORD PTR [esp+0x4],0x0
  8d5e24:	call   167e3be  ; UnityEngine.Quaternion::get_identity
  8d5e29:	sub    esp,0x4
  8d5e2c:	mov    ecx,DWORD PTR [esp+0x40]
  8d5e30:	test   ecx,ecx
  8d5e32:	je     8d60f5
  8d5e38:	movsd  xmm0,QWORD PTR [esp+0x70]
  8d5e3e:	movsd  xmm1,QWORD PTR [esp+0x78]
  8d5e44:	movsd  QWORD PTR [esp+0x20],xmm1
  8d5e4a:	movsd  QWORD PTR [esp+0x18],xmm0
  8d5e50:	mov    eax,DWORD PTR [esp+0x88]
  8d5e57:	mov    DWORD PTR [esp+0x14],eax
  8d5e5b:	movsd  xmm0,QWORD PTR [esp+0x80]
  8d5e64:	movsd  QWORD PTR [esp+0xc],xmm0
  8d5e6a:	mov    DWORD PTR [esp+0x8],edi
  8d5e6e:	mov    DWORD PTR [esp+0x4],esi
  8d5e72:	mov    DWORD PTR [esp],ecx
  8d5e75:	mov    DWORD PTR [esp+0x2c],0x0
  8d5e7d:	mov    DWORD PTR [esp+0x28],0x1
  8d5e85:	call   154564f  ; GenericAssetProvider::InstantiateObject
  8d5e8a:	mov    esi,eax
  8d5e8c:	test   esi,esi
  8d5e8e:	je     8d60f5
  8d5e94:	mov    DWORD PTR [esp],esi
  8d5e97:	mov    DWORD PTR [esp+0x4],0x0
  8d5e9f:	call   137e87a  ; UnityEngine.GameObject::get_transform
  8d5ea4:	mov    edi,eax
  8d5ea6:	lea    eax,[esp+0x60]
  8d5eaa:	mov    DWORD PTR [esp],eax
  8d5ead:	mov    DWORD PTR [esp+0x8],0x0
  8d5eb5:	mov    DWORD PTR [esp+0x4],0x0
  8d5ebd:	call   1778fb2  ; UnityEngine.Vector3::get_zero
  8d5ec2:	sub    esp,0x4
  8d5ec5:	test   edi,edi
  8d5ec7:	je     8d60f5
  8d5ecd:	mov    eax,DWORD PTR [esp+0x68]
  8d5ed1:	mov    DWORD PTR [esp+0xc],eax
  8d5ed5:	movsd  xmm0,QWORD PTR [esp+0x60]
  8d5edb:	movsd  QWORD PTR [esp+0x4],xmm0
  8d5ee1:	mov    DWORD PTR [esp],edi
  8d5ee4:	mov    DWORD PTR [esp+0x10],0x0
  8d5eec:	call   17762d5  ; UnityEngine.Transform::set_localPosition
  8d5ef1:	mov    DWORD PTR [esp],esi
  8d5ef4:	mov    DWORD PTR [esp+0x4],0x0
  8d5efc:	call   137e87a  ; UnityEngine.GameObject::get_transform
  8d5f01:	mov    edi,eax
  8d5f03:	lea    eax,[esp+0x50]
  8d5f07:	mov    DWORD PTR [esp],eax
  8d5f0a:	mov    DWORD PTR [esp+0x8],0x0
  8d5f12:	mov    DWORD PTR [esp+0x4],0x0
  8d5f1a:	call   1779758  ; UnityEngine.Vector3::get_one
  8d5f1f:	sub    esp,0x4
  8d5f22:	test   edi,edi
  8d5f24:	je     8d60f5
  8d5f2a:	mov    eax,DWORD PTR [esp+0x58]
  8d5f2e:	mov    DWORD PTR [esp+0xc],eax
  8d5f32:	movsd  xmm0,QWORD PTR [esp+0x50]
  8d5f38:	movsd  QWORD PTR [esp+0x4],xmm0
  8d5f3e:	mov    DWORD PTR [esp],edi
  8d5f41:	mov    DWORD PTR [esp+0x10],0x0
  8d5f49:	call   177692a  ; UnityEngine.Transform::set_localScale
  8d5f4e:	lea    eax,[ebx+0x4a700]
  8d5f54:	mov    eax,DWORD PTR [eax]
  8d5f56:	mov    DWORD PTR [esp+0x4],eax
  8d5f5a:	mov    DWORD PTR [esp],esi
  8d5f5d:	call   15e8f43  ; shared address: UnityEngine.GameObject::GetComponent | UnityEngine.GameObject::GetComponent | UnityEngine.GameObject::GetComponent | +62 other aliases
  8d5f62:	test   eax,eax
  8d5f64:	je     8d60f5
  8d5f6a:	lea    ecx,[ebx+0x59544]  ; literal "LevelUpFX"
  8d5f70:	mov    ecx,DWORD PTR [ecx]
  8d5f72:	mov    DWORD PTR [esp+0x4],ecx
  8d5f76:	mov    DWORD PTR [esp],eax
  8d5f79:	mov    DWORD PTR [esp+0x8],0x0
  8d5f81:	call   14f70dd  ; UnityEngine.Animation::get_Item
  8d5f86:	test   eax,eax
  8d5f88:	mov    ecx,DWORD PTR [ebp+0x8]
  8d5f8b:	mov    edi,ecx
  8d5f8d:	je     8d60f5
  8d5f93:	mov    DWORD PTR [esp],eax
  8d5f96:	mov    DWORD PTR [esp+0x4],0x0
  8d5f9e:	call   14f7bc6  ; UnityEngine.AnimationState::get_clip
  8d5fa3:	test   eax,eax
  8d5fa5:	je     8d60f5
  8d5fab:	mov    DWORD PTR [esp],eax
  8d5fae:	mov    DWORD PTR [esp+0x4],0x0
  8d5fb6:	call   14f7fc5  ; UnityEngine.AnimationClip::get_length
  8d5fbb:	fstp   DWORD PTR [esp+0x4c]
  8d5fbf:	movss  xmm0,DWORD PTR [esp+0x4c]
  8d5fc5:	lea    eax,[ebx+0x44ebc]
  8d5fcb:	mov    eax,DWORD PTR [eax]
  8d5fcd:	test   BYTE PTR [eax+0xb2],0x1
  8d5fd4:	je     8d5ff0
  8d5fd6:	cmp    DWORD PTR [eax+0x60],0x0
  8d5fda:	jne    8d5ff0
  8d5fdc:	mov    DWORD PTR [esp],eax
  8d5fdf:	movss  DWORD PTR [esp+0x40],xmm0
  8d5fe5:	call   1db0b8
  8d5fea:	movss  xmm0,DWORD PTR [esp+0x40]
  8d5ff0:	lea    edi,[edi+0xc]
  8d5ff3:	movss  DWORD PTR [esp+0x8],xmm0
  8d5ff9:	mov    DWORD PTR [esp+0x4],esi
  8d5ffd:	mov    DWORD PTR [esp+0xc],0x0
  8d6005:	mov    DWORD PTR [esp],0x0
  8d600c:	call   16790a1  ; UnityEngine.Object::Destroy
  8d6011:	jmp    8d6053
  8d6013:	lea    eax,[ebx+0x45894]
  8d6019:	mov    eax,DWORD PTR [eax]
  8d601b:	mov    DWORD PTR [esp],eax
  8d601e:	call   20bfb2
  8d6023:	mov    esi,eax
  8d6025:	mov    DWORD PTR [esp],esi
  8d6028:	mov    DWORD PTR [esp+0x4],0x0
  8d6030:	call   177a908  ; UnityEngine.WaitForEndOfFrame::.ctor
  8d6035:	mov    DWORD PTR [edi+0x10],esi
  8d6038:	mov    al,0x1
  8d603a:	cmp    BYTE PTR [edi+0x14],0x0
  8d603e:	jne    8d60ea
  8d6044:	mov    DWORD PTR [edi+0x18],0x1
  8d604b:	jmp    8d60ea
  8d6050:	lea    edi,[esi+0xc]
  8d6053:	mov    eax,DWORD PTR [edi]
  8d6055:	test   eax,eax
  8d6057:	je     8d60f5
  8d605d:	mov    DWORD PTR [esp+0x40],edi
  8d6061:	mov    esi,DWORD PTR [eax+0x18]
  8d6064:	test   esi,esi
  8d6066:	je     8d60f5
  8d606c:	lea    eax,[ebx+0x45874]
  8d6072:	mov    eax,DWORD PTR [eax]
  8d6074:	mov    ecx,DWORD PTR [esi]
  8d6076:	mov    DWORD PTR [esp+0x3c],ecx
  8d607a:	movzx  edx,WORD PTR [ecx+0xaa]
  8d6081:	test   edx,edx
  8d6083:	je     8d6098
  8d6085:	mov    ecx,DWORD PTR [esp+0x3c]
  8d6089:	mov    edi,DWORD PTR [ecx+0x4c]
  8d608c:	xor    ecx,ecx
  8d608e:	cmp    DWORD PTR [edi+ecx*8],eax
  8d6091:	je     8d60ae
  8d6093:	inc    ecx
  8d6094:	cmp    ecx,edx
  8d6096:	jb     8d608e
  8d6098:	mov    DWORD PTR [esp+0x4],eax
  8d609c:	mov    DWORD PTR [esp],esi
  8d609f:	mov    DWORD PTR [esp+0x8],0x68
  8d60a7:	call   1c1964
  8d60ac:	jmp    8d60bd
  8d60ae:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  8d60b2:	mov    ecx,DWORD PTR [esp+0x3c]
  8d60b6:	lea    eax,[ecx+eax*8+0x3f4]
  8d60bd:	mov    ecx,DWORD PTR [eax+0x4]
  8d60c0:	mov    DWORD PTR [esp+0x4],ecx
  8d60c4:	mov    DWORD PTR [esp],esi
  8d60c7:	call   DWORD PTR [eax]
  8d60c9:	mov    eax,DWORD PTR [esp+0x40]
  8d60cd:	mov    eax,DWORD PTR [eax]
  8d60cf:	test   eax,eax
  8d60d1:	mov    ecx,DWORD PTR [ebp+0x8]
  8d60d4:	je     8d60f5
  8d60d6:	mov    eax,DWORD PTR [eax+0x14]
  8d60d9:	test   eax,eax
  8d60db:	je     8d60f5
  8d60dd:	mov    BYTE PTR [eax+0x74],0x0
  8d60e1:	mov    DWORD PTR [ecx+0x18],0xffffffff
  8d60e8:	xor    eax,eax
  8d60ea:	movzx  eax,al
  8d60ed:	lea    esp,[ebp-0xc]
  8d60f0:	pop    esi
  8d60f1:	pop    edi
  8d60f2:	pop    ebx
  8d60f3:	pop    ebp
  8d60f4:	ret
  8d60f5:	call   1fbc48
  8d60fa:	call   8b3f00