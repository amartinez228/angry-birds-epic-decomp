
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

008e8989:
  8e8989:	push   ebp
  8e898a:	mov    ebp,esp
  8e898c:	push   ebx
  8e898d:	push   edi
  8e898e:	push   esi
  8e898f:	and    esp,0xfffffff0
  8e8992:	sub    esp,0x20
  8e8995:	call   8e899a
  8e899a:	pop    ebx
  8e899b:	add    ebx,0x16295aa
  8e89a1:	mov    esi,DWORD PTR [ebp+0x8]
  8e89a4:	mov    al,BYTE PTR [ebx+0x601d1]
  8e89aa:	test   al,al
  8e89ac:	jne    8e89c5
  8e89ae:	lea    eax,[ebx-0x6574e4]
  8e89b4:	mov    eax,DWORD PTR [eax]
  8e89b6:	mov    DWORD PTR [esp],eax
  8e89b9:	call   1ca6e8
  8e89be:	mov    BYTE PTR [ebx+0x601d1],0x1
  8e89c5:	mov    eax,DWORD PTR [esi+0x14]
  8e89c8:	mov    DWORD PTR [esi+0x14],0xffffffff
  8e89cf:	test   eax,eax
  8e89d1:	jne    8e8af2
  8e89d7:	mov    eax,DWORD PTR [esi+0x8]
  8e89da:	test   eax,eax
  8e89dc:	je     8e8cd8
  8e89e2:	mov    eax,DWORD PTR [eax+0x68]
  8e89e5:	test   eax,eax
  8e89e7:	je     8e8cd8
  8e89ed:	mov    DWORD PTR [esp],eax
  8e89f0:	mov    DWORD PTR [esp+0x4],0x0
  8e89f8:	call   e4e421  ; AssetControllerWithBoneAnimationBase::get_HasNoBoneAnimation
  8e89fd:	test   al,al
  8e89ff:	jne    8e8a3a
  8e8a01:	mov    eax,DWORD PTR [esi+0x8]
  8e8a04:	test   eax,eax
  8e8a06:	je     8e8cd8
  8e8a0c:	mov    eax,DWORD PTR [eax+0x68]
  8e8a0f:	test   eax,eax
  8e8a11:	je     8e8cd8
  8e8a17:	mov    eax,DWORD PTR [eax+0xc]
  8e8a1a:	test   eax,eax
  8e8a1c:	je     8e8cd8
  8e8a22:	mov    DWORD PTR [esp],eax
  8e8a25:	mov    DWORD PTR [esp+0x8],0x0
  8e8a2d:	mov    DWORD PTR [esp+0x4],0x0
  8e8a35:	call   1475875  ; SmoothMoves.BoneAnimation::set_playAutomatically
  8e8a3a:	mov    eax,DWORD PTR [esi+0x8]
  8e8a3d:	test   eax,eax
  8e8a3f:	je     8e8cd8
  8e8a45:	mov    DWORD PTR [esp],eax
  8e8a48:	call   8d139b  ; CharacterControllerBattleGroundBase::PlayGoToBasePosition
  8e8a4d:	fstp   st(0)
  8e8a4f:	mov    eax,DWORD PTR [esi+0x8]
  8e8a52:	test   eax,eax
  8e8a54:	je     8e8cd8
  8e8a5a:	mov    eax,DWORD PTR [eax+0x68]
  8e8a5d:	test   eax,eax
  8e8a5f:	je     8e8cd8
  8e8a65:	mov    ecx,DWORD PTR [eax]
  8e8a67:	mov    edx,DWORD PTR [ecx+0x118]
  8e8a6d:	mov    DWORD PTR [esp+0x4],edx
  8e8a71:	mov    DWORD PTR [esp],eax
  8e8a74:	call   DWORD PTR [ecx+0x114]
  8e8a7a:	mov    eax,DWORD PTR [esi+0x8]
  8e8a7d:	mov    edi,esi
  8e8a7f:	test   eax,eax
  8e8a81:	je     8e8cd8
  8e8a87:	mov    eax,DWORD PTR [eax+0x68]
  8e8a8a:	test   eax,eax
  8e8a8c:	je     8e8cd8
  8e8a92:	mov    ecx,DWORD PTR [eax]
  8e8a94:	mov    edx,DWORD PTR [ecx+0x138]
  8e8a9a:	mov    DWORD PTR [esp+0x4],edx
  8e8a9e:	mov    DWORD PTR [esp],eax
  8e8aa1:	call   DWORD PTR [ecx+0x134]
  8e8aa7:	fstp   TBYTE PTR [esp+0x10]
  8e8aab:	lea    eax,[ebx+0x45664]
  8e8ab1:	mov    eax,DWORD PTR [eax]
  8e8ab3:	mov    DWORD PTR [esp],eax
  8e8ab6:	call   20bfb2
  8e8abb:	mov    esi,eax
  8e8abd:	fld    TBYTE PTR [esp+0x10]
  8e8ac1:	fstp   DWORD PTR [esp+0x4]
  8e8ac5:	mov    DWORD PTR [esp],esi
  8e8ac8:	mov    DWORD PTR [esp+0x8],0x0
  8e8ad0:	call   177a9d1  ; UnityEngine.WaitForSeconds::.ctor
  8e8ad5:	mov    DWORD PTR [edi+0xc],esi
  8e8ad8:	mov    ecx,edi
  8e8ada:	mov    al,0x1
  8e8adc:	cmp    BYTE PTR [ecx+0x10],0x0
  8e8ae0:	jne    8e8ccd
  8e8ae6:	mov    DWORD PTR [ecx+0x14],0x1
  8e8aed:	jmp    8e8ccd
  8e8af2:	cmp    eax,0x1
  8e8af5:	jne    8e8ccb
  8e8afb:	mov    eax,DWORD PTR [esi+0x8]
  8e8afe:	test   eax,eax
  8e8b00:	je     8e8cd8
  8e8b06:	xor    edi,edi
  8e8b08:	mov    eax,DWORD PTR [eax+0x44]
  8e8b0b:	test   eax,eax
  8e8b0d:	je     8e8cd8
  8e8b13:	lea    ecx,[ebx+0x4cbac]
  8e8b19:	mov    ecx,DWORD PTR [ecx]
  8e8b1b:	mov    DWORD PTR [esp+0x4],ecx
  8e8b1f:	mov    DWORD PTR [esp],eax
  8e8b22:	call   618b5e  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Count | System.Collections.Generic.Dictionary`2<string, object>::get_Count | System.Collections.Generic.Dictionary`2<string, unresolved-type@0x1e5f680(kind=0x1d,data=0x18787c0)>::get_Count | +14 other aliases
  8e8b27:	mov    ecx,DWORD PTR [esi+0x8]
  8e8b2a:	test   ecx,ecx
  8e8b2c:	je     8e8cd8
  8e8b32:	cmp    edi,eax
  8e8b34:	jge    8e8c09
  8e8b3a:	mov    eax,DWORD PTR [ecx+0x44]
  8e8b3d:	test   eax,eax
  8e8b3f:	je     8e8cd8
  8e8b45:	lea    ecx,[ebx+0x4cba4]
  8e8b4b:	mov    ecx,DWORD PTR [ecx]
  8e8b4d:	mov    DWORD PTR [esp+0x4],ecx
  8e8b51:	mov    DWORD PTR [esp],eax
  8e8b54:	call   61b4a2  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Values | System.Collections.Generic.Dictionary`2<string, UnityEngine.GUIStyle>::get_Values | System.Collections.Generic.Dictionary`2<string, ABH.GameDatas.Battle.BattleEffectGameData>::get_Values | +19 other aliases
  8e8b59:	lea    ecx,[ebx+0x4cba8]
  8e8b5f:	mov    ecx,DWORD PTR [ecx]
  8e8b61:	mov    DWORD PTR [esp+0xc],ecx
  8e8b65:	mov    DWORD PTR [esp+0x8],edi
  8e8b69:	mov    DWORD PTR [esp+0x4],eax
  8e8b6d:	mov    DWORD PTR [esp],0x0
  8e8b74:	call   15eeb97  ; shared address: System.Linq.Enumerable::ElementAt | System.Linq.Enumerable::ElementAt | System.Linq.Enumerable::ElementAt | +1 other aliases
  8e8b79:	lea    esi,[ebx+0x44ebc]
  8e8b7f:	mov    ecx,DWORD PTR [esi]
  8e8b81:	test   BYTE PTR [ecx+0xb2],0x1
  8e8b88:	je     8e8ba0
  8e8b8a:	cmp    DWORD PTR [ecx+0x60],0x0
  8e8b8e:	jne    8e8ba0
  8e8b90:	mov    DWORD PTR [esp],ecx
  8e8b93:	mov    DWORD PTR [esp+0x10],eax
  8e8b97:	call   1db0b8
  8e8b9c:	mov    eax,DWORD PTR [esp+0x10]
  8e8ba0:	mov    DWORD PTR [esp+0x10],eax
  8e8ba4:	mov    DWORD PTR [esp+0x4],eax
  8e8ba8:	mov    DWORD PTR [esp+0x8],0x0
  8e8bb0:	mov    DWORD PTR [esp],0x0
  8e8bb7:	call   1679a11  ; UnityEngine.Object::op_Implicit
  8e8bbc:	test   al,al
  8e8bbe:	je     8e8bf5
  8e8bc0:	mov    eax,DWORD PTR [esi]
  8e8bc2:	test   BYTE PTR [eax+0xb2],0x1
  8e8bc9:	je     8e8bd9
  8e8bcb:	cmp    DWORD PTR [eax+0x60],0x0
  8e8bcf:	jne    8e8bd9
  8e8bd1:	mov    DWORD PTR [esp],eax
  8e8bd4:	call   1db0b8
  8e8bd9:	mov    eax,DWORD PTR [esp+0x10]
  8e8bdd:	mov    DWORD PTR [esp+0x4],eax
  8e8be1:	mov    DWORD PTR [esp+0x8],0x0
  8e8be9:	mov    DWORD PTR [esp],0x0
  8e8bf0:	call   1679110  ; UnityEngine.Object::Destroy
  8e8bf5:	inc    edi
  8e8bf6:	mov    esi,DWORD PTR [ebp+0x8]
  8e8bf9:	mov    eax,DWORD PTR [esi+0x8]
  8e8bfc:	test   eax,eax
  8e8bfe:	jne    8e8b08
  8e8c04:	jmp    8e8cd8
  8e8c09:	mov    edi,esi
  8e8c0b:	mov    esi,DWORD PTR [ecx+0xc]
  8e8c0e:	lea    eax,[ebx+0x44ebc]
  8e8c14:	mov    eax,DWORD PTR [eax]
  8e8c16:	test   BYTE PTR [eax+0xb2],0x1
  8e8c1d:	je     8e8c2d
  8e8c1f:	cmp    DWORD PTR [eax+0x60],0x0
  8e8c23:	jne    8e8c2d
  8e8c25:	mov    DWORD PTR [esp],eax
  8e8c28:	call   1db0b8
  8e8c2d:	mov    DWORD PTR [esp+0x4],esi
  8e8c31:	mov    DWORD PTR [esp+0xc],0x0
  8e8c39:	mov    DWORD PTR [esp+0x8],0x0
  8e8c41:	mov    DWORD PTR [esp],0x0
  8e8c48:	call   167a0e6  ; UnityEngine.Object::op_Inequality
  8e8c4d:	test   al,al
  8e8c4f:	mov    esi,edi
  8e8c51:	je     8e8cc4
  8e8c53:	mov    eax,DWORD PTR [esi+0x8]
  8e8c56:	test   eax,eax
  8e8c58:	je     8e8cd8
  8e8c5a:	mov    eax,DWORD PTR [eax+0x14]
  8e8c5d:	test   eax,eax
  8e8c5f:	je     8e8cd8
  8e8c61:	mov    DWORD PTR [esp],eax
  8e8c64:	mov    DWORD PTR [esp+0x4],0x0
  8e8c6c:	call   9f18af  ; BattleMgrBase::get_Model
  8e8c71:	test   eax,eax
  8e8c73:	je     8e8cd8
  8e8c75:	mov    DWORD PTR [esp],eax
  8e8c78:	mov    DWORD PTR [esp+0x4],0x0
  8e8c80:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  8e8c85:	test   al,al
  8e8c87:	jne    8e8cc4
  8e8c89:	mov    DWORD PTR [esp+0x4],0x0
  8e8c91:	mov    DWORD PTR [esp],0x0
  8e8c98:	call   1074d4d  ; DIContainerConfig::GetClientConfig
  8e8c9d:	test   eax,eax
  8e8c9f:	je     8e8cd8
  8e8ca1:	mov    DWORD PTR [esp],eax
  8e8ca4:	mov    DWORD PTR [esp+0x4],0x0
  8e8cac:	call   16ff8dc  ; ABH.Shared.BalancingData.ClientConfigBalancingData::get_EnableSingleBirdRevive
  8e8cb1:	test   al,al
  8e8cb3:	je     8e8cc4
  8e8cb5:	mov    eax,DWORD PTR [esi+0x8]
  8e8cb8:	test   eax,eax
  8e8cba:	je     8e8cd8
  8e8cbc:	mov    DWORD PTR [esp],eax
  8e8cbf:	call   8dfdf8  ; CharacterControllerBattleGroundBase::SpawnReviveMe
  8e8cc4:	mov    DWORD PTR [esi+0x14],0xffffffff
  8e8ccb:	xor    eax,eax
  8e8ccd:	movzx  eax,al
  8e8cd0:	lea    esp,[ebp-0xc]
  8e8cd3:	pop    esi
  8e8cd4:	pop    edi
  8e8cd5:	pop    ebx
  8e8cd6:	pop    ebp
  8e8cd7:	ret
  8e8cd8:	call   1fbc48
  8e8cdd:	call   8b3f00