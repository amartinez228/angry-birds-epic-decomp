
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00569b73:
  569b73:	push   ebp
  569b74:	mov    ebp,esp
  569b76:	push   ebx
  569b77:	push   edi
  569b78:	push   esi
  569b79:	and    esp,0xfffffff0
  569b7c:	sub    esp,0x40
  569b7f:	call   569b84
  569b84:	pop    ebx
  569b85:	add    ebx,0x19a83c0
  569b8b:	mov    al,BYTE PTR [ebx+0x5d6f3]
  569b91:	test   al,al
  569b93:	jne    569bac
  569b95:	lea    eax,[ebx-0x664bf4]
  569b9b:	mov    eax,DWORD PTR [eax]
  569b9d:	mov    DWORD PTR [esp],eax
  569ba0:	call   1ca6e8
  569ba5:	mov    BYTE PTR [ebx+0x5d6f3],0x1
  569bac:	mov    DWORD PTR [esp+0x38],0x0
  569bb4:	mov    DWORD PTR [esp+0x4],0x0
  569bbc:	mov    DWORD PTR [esp],0x0
  569bc3:	call   106b137  ; DIContainerLogic::get_InventoryService
  569bc8:	test   eax,eax
  569bca:	je     56a452
  569bd0:	mov    edx,DWORD PTR [ebp+0xc]
  569bd3:	lea    ecx,[ebx+0x57040]  ; literal "unlock_mastery_badge"
  569bd9:	mov    ecx,DWORD PTR [ecx]
  569bdb:	mov    DWORD PTR [esp+0x8],ecx
  569bdf:	mov    DWORD PTR [esp+0x4],edx
  569be3:	mov    DWORD PTR [esp],eax
  569be6:	call   4fa160  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GetItemValue
  569beb:	mov    ecx,eax
  569bed:	xor    eax,eax
  569bef:	test   ecx,ecx
  569bf1:	jle    56a430
  569bf7:	mov    edi,DWORD PTR [ebp+0x10]
  569bfa:	test   edi,edi
  569bfc:	je     56a452
  569c02:	lea    eax,[ebx+0x45e50]
  569c08:	mov    eax,DWORD PTR [eax]
  569c0a:	mov    ecx,DWORD PTR [edi]
  569c0c:	movzx  edx,BYTE PTR [eax+0xac]
  569c13:	movzx  esi,BYTE PTR [ecx+0xac]
  569c1a:	cmp    esi,edx
  569c1c:	jb     56a452
  569c22:	mov    ecx,DWORD PTR [ecx+0x58]
  569c25:	cmp    DWORD PTR [ecx+edx*4-0x4],eax
  569c29:	jne    56a452
  569c2f:	lea    esi,[ebx+0x4ac28]
  569c35:	mov    eax,DWORD PTR [esi]
  569c37:	mov    DWORD PTR [esp+0x4],eax
  569c3b:	mov    DWORD PTR [esp],edi
  569c3e:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  569c43:	test   eax,eax
  569c45:	je     56a452
  569c4b:	mov    DWORD PTR [esp],eax
  569c4e:	mov    DWORD PTR [esp+0x4],0x0
  569c56:	call   1701914  ; ABH.Shared.BalancingData.MasteryItemBalancingData::get_AssociatedClass
  569c5b:	mov    edi,eax
  569c5d:	test   edi,edi
  569c5f:	je     56a452
  569c65:	lea    eax,[ebx+0x57974]  ; literal "ALL"
  569c6b:	mov    eax,DWORD PTR [eax]
  569c6d:	mov    DWORD PTR [esp+0x4],eax
  569c71:	mov    DWORD PTR [esp],edi
  569c74:	mov    DWORD PTR [esp+0x8],0x0
  569c7c:	call   cba87a  ; System.String::Equals
  569c81:	test   al,al
  569c83:	je     569d4b
  569c89:	mov    eax,DWORD PTR [esi]
  569c8b:	mov    DWORD PTR [esp+0x4],eax
  569c8f:	mov    eax,DWORD PTR [ebp+0x10]
  569c92:	mov    DWORD PTR [esp],eax
  569c95:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  569c9a:	mov    esi,eax
  569c9c:	lea    edi,[ebx+0x4584c]
  569ca2:	mov    eax,DWORD PTR [edi]
  569ca4:	test   BYTE PTR [eax+0xb2],0x1
  569cab:	je     569cbb
  569cad:	cmp    DWORD PTR [eax+0x60],0x0
  569cb1:	jne    569cbb
  569cb3:	mov    DWORD PTR [esp],eax
  569cb6:	call   1db0b8
  569cbb:	mov    DWORD PTR [esp+0x4],0x0
  569cc3:	mov    DWORD PTR [esp],0x0
  569cca:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  569ccf:	mov    DWORD PTR [esp+0x8],eax
  569cd3:	mov    DWORD PTR [esp+0x4],esi
  569cd7:	mov    esi,ebx
  569cd9:	call   54f7af  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::IsAddMasteryPossible
  569cde:	mov    ecx,DWORD PTR [edi]
  569ce0:	movzx  edx,WORD PTR [ecx+0xb1]
  569ce7:	and    edx,0x100
  569ced:	test   al,al
  569cef:	je     569f7f
  569cf5:	test   dx,dx
  569cf8:	mov    ebx,esi
  569cfa:	je     569d0a
  569cfc:	cmp    DWORD PTR [ecx+0x60],0x0
  569d00:	jne    569d0a
  569d02:	mov    DWORD PTR [esp],ecx
  569d05:	call   1db0b8
  569d0a:	mov    DWORD PTR [esp+0x4],0x0
  569d12:	mov    DWORD PTR [esp],0x0
  569d19:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  569d1e:	mov    ecx,DWORD PTR [ebp+0x14]
  569d21:	test   ecx,ecx
  569d23:	mov    edx,DWORD PTR [ebp+0xc]
  569d26:	je     56a452
  569d2c:	mov    ecx,DWORD PTR [ecx+0x8]
  569d2f:	mov    DWORD PTR [esp+0xc],ecx
  569d33:	mov    DWORD PTR [esp+0x8],eax
  569d37:	mov    DWORD PTR [esp+0x4],edx
  569d3b:	mov    eax,DWORD PTR [ebp+0x8]
  569d3e:	mov    DWORD PTR [esp],eax
  569d41:	call   56830f  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMastery
  569d46:	jmp    56a3c2
  569d4b:	lea    eax,[ebx+0x570f4]  ; literal "current"
  569d51:	mov    eax,DWORD PTR [eax]
  569d53:	mov    DWORD PTR [esp+0x4],eax
  569d57:	mov    DWORD PTR [esp],edi
  569d5a:	mov    DWORD PTR [esp+0x8],0x0
  569d62:	call   cba87a  ; System.String::Equals
  569d67:	test   al,al
  569d69:	je     569fb4
  569d6f:	lea    esi,[ebx+0x458fc]
  569d75:	mov    eax,DWORD PTR [esi]
  569d77:	test   BYTE PTR [eax+0xb2],0x1
  569d7e:	mov    DWORD PTR [esp+0x28],ebx
  569d82:	je     569d94
  569d84:	cmp    DWORD PTR [eax+0x60],0x0
  569d88:	jne    569d94
  569d8a:	mov    DWORD PTR [esp],eax
  569d8d:	call   1db0b8
  569d92:	mov    eax,DWORD PTR [esi]
  569d94:	mov    ecx,DWORD PTR [eax+0x50]
  569d97:	mov    ecx,DWORD PTR [ecx+0x8]
  569d9a:	test   ecx,ecx
  569d9c:	je     56a3c2
  569da2:	test   BYTE PTR [eax+0xb2],0x1
  569da9:	je     569dc9
  569dab:	cmp    DWORD PTR [eax+0x60],0x0
  569daf:	jne    569dc9
  569db1:	mov    DWORD PTR [esp],eax
  569db4:	call   1db0b8
  569db9:	mov    eax,DWORD PTR [esi]
  569dbb:	mov    eax,DWORD PTR [eax+0x50]
  569dbe:	mov    ecx,DWORD PTR [eax+0x8]
  569dc1:	test   ecx,ecx
  569dc3:	je     56a452
  569dc9:	mov    eax,DWORD PTR [ecx+0x68]
  569dcc:	test   eax,eax
  569dce:	je     56a452
  569dd4:	lea    ecx,[ebx+0x4a04c]
  569dda:	mov    ecx,DWORD PTR [ecx]
  569ddc:	mov    DWORD PTR [esp+0x8],ecx
  569de0:	mov    DWORD PTR [esp],eax
  569de3:	mov    DWORD PTR [esp+0x4],0x0
  569deb:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  569df0:	lea    esi,[ebx+0x461b0]
  569df6:	mov    ecx,DWORD PTR [esi]
  569df8:	mov    ecx,DWORD PTR [ecx+0x50]
  569dfb:	cmp    DWORD PTR [ecx+0x4],0x0
  569dff:	jne    569e60
  569e01:	lea    ecx,[ebx+0x4b6c4]
  569e07:	mov    ecx,DWORD PTR [ecx]
  569e09:	mov    DWORD PTR [esp+0x24],ecx
  569e0d:	lea    ecx,[ebx+0x4588c]
  569e13:	mov    ecx,DWORD PTR [ecx]
  569e15:	mov    DWORD PTR [esp],ecx
  569e18:	mov    DWORD PTR [esp+0x2c],eax
  569e1c:	call   20bfb2
  569e21:	mov    edi,eax
  569e23:	mov    eax,DWORD PTR [esp+0x24]
  569e27:	mov    DWORD PTR [esp+0x30],eax
  569e2b:	lea    eax,[ebx+0x4a054]
  569e31:	mov    eax,DWORD PTR [eax]
  569e33:	mov    DWORD PTR [esp+0xc],eax
  569e37:	mov    eax,DWORD PTR [esp+0x30]
  569e3b:	mov    DWORD PTR [esp+0x8],eax
  569e3f:	mov    DWORD PTR [esp],edi
  569e42:	mov    DWORD PTR [esp+0x4],0x0
  569e4a:	call   159e10c  ; shared address: System.Func`2<System.Reflection.MemberInfo, bool>::.ctor | System.Func`2<System.Reflection.ConstructorInfo, bool>::.ctor | System.Func`2<System.Reflection.FieldInfo, bool>::.ctor | +68 other aliases
  569e4f:	mov    eax,DWORD PTR [esp+0x2c]
  569e53:	mov    ecx,DWORD PTR [esi]
  569e55:	mov    ecx,DWORD PTR [ecx+0x50]
  569e58:	mov    DWORD PTR [ecx+0x4],edi
  569e5b:	mov    ecx,DWORD PTR [esi]
  569e5d:	mov    ecx,DWORD PTR [ecx+0x50]
  569e60:	mov    edx,DWORD PTR [ecx+0x4]
  569e63:	lea    ecx,[ebx+0x4a058]
  569e69:	mov    ecx,DWORD PTR [ecx]
  569e6b:	mov    DWORD PTR [esp+0xc],ecx
  569e6f:	mov    DWORD PTR [esp+0x8],edx
  569e73:	mov    DWORD PTR [esp+0x4],eax
  569e77:	mov    DWORD PTR [esp],0x0
  569e7e:	call   9c0237  ; shared address: System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | System.Linq.Enumerable::Where | +38 other aliases
  569e83:	lea    ecx,[ebx+0x4a080]
  569e89:	mov    ecx,DWORD PTR [ecx]
  569e8b:	mov    DWORD PTR [esp+0x8],ecx
  569e8f:	mov    DWORD PTR [esp+0x4],eax
  569e93:	mov    DWORD PTR [esp],0x0
  569e9a:	call   9c7738  ; shared address: System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | System.Linq.Enumerable::ToList | +48 other aliases
  569e9f:	mov    esi,eax
  569ea1:	mov    DWORD PTR [esp+0x20],esi
  569ea5:	test   esi,esi
  569ea7:	je     56a452
  569ead:	xor    edi,edi
  569eaf:	lea    eax,[ebx+0x4a048]
  569eb5:	mov    DWORD PTR [esp+0x24],eax
  569eb9:	jmp    569ed4
  569ebb:	mov    ecx,DWORD PTR [ecx+0x8]
  569ebe:	mov    DWORD PTR [esp+0xc],ecx
  569ec2:	mov    DWORD PTR [esp+0x8],eax
  569ec6:	call   56868d  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMastery
  569ecb:	mov    edi,DWORD PTR [esp+0x2c]
  569ecf:	inc    edi
  569ed0:	mov    esi,DWORD PTR [esp+0x20]
  569ed4:	mov    eax,DWORD PTR [esp+0x24]
  569ed8:	mov    eax,DWORD PTR [eax]
  569eda:	mov    DWORD PTR [esp+0x4],eax
  569ede:	mov    DWORD PTR [esp],esi
  569ee1:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  569ee6:	cmp    edi,eax
  569ee8:	jge    56a3c2
  569eee:	lea    eax,[ebx+0x4a0ac]
  569ef4:	mov    eax,DWORD PTR [eax]
  569ef6:	mov    DWORD PTR [esp+0x8],eax
  569efa:	mov    DWORD PTR [esp+0x4],edi
  569efe:	mov    DWORD PTR [esp+0x2c],edi
  569f02:	mov    DWORD PTR [esp],esi
  569f05:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  569f0a:	mov    edi,eax
  569f0c:	test   edi,edi
  569f0e:	je     56a452
  569f14:	lea    eax,[ebx+0x45874]
  569f1a:	mov    eax,DWORD PTR [eax]
  569f1c:	mov    ebx,DWORD PTR [edi]
  569f1e:	movzx  edx,WORD PTR [ebx+0xaa]
  569f25:	test   edx,edx
  569f27:	je     569f38
  569f29:	mov    esi,DWORD PTR [ebx+0x4c]
  569f2c:	xor    ecx,ecx
  569f2e:	cmp    DWORD PTR [esi+ecx*8],eax
  569f31:	je     569f54
  569f33:	inc    ecx
  569f34:	cmp    ecx,edx
  569f36:	jb     569f2e
  569f38:	mov    DWORD PTR [esp+0x4],eax
  569f3c:	mov    DWORD PTR [esp],edi
  569f3f:	mov    DWORD PTR [esp+0x8],0xe
  569f47:	mov    ebx,DWORD PTR [esp+0x28]
  569f4b:	call   1c1964
  569f50:	mov    ecx,eax
  569f52:	jmp    569f63
  569f54:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  569f58:	lea    ecx,[ebx+eax*8+0x124]
  569f5f:	mov    ebx,DWORD PTR [esp+0x28]
  569f63:	mov    eax,DWORD PTR [ecx+0x4]
  569f66:	mov    DWORD PTR [esp+0x4],eax
  569f6a:	mov    DWORD PTR [esp],edi
  569f6d:	call   DWORD PTR [ecx]
  569f6f:	mov    ecx,DWORD PTR [ebp+0x14]
  569f72:	test   ecx,ecx
  569f74:	jne    569ebb
  569f7a:	jmp    56a452
  569f7f:	test   dx,dx
  569f82:	mov    ebx,esi
  569f84:	je     569f94
  569f86:	cmp    DWORD PTR [ecx+0x60],0x0
  569f8a:	jne    569f94
  569f8c:	mov    DWORD PTR [esp],ecx
  569f8f:	call   1db0b8
  569f94:	mov    DWORD PTR [esp+0x4],0x0
  569f9c:	mov    DWORD PTR [esp],0x0
  569fa3:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  569fa8:	mov    ecx,DWORD PTR [ebp+0x10]
  569fab:	mov    DWORD PTR [esp+0xc],ecx
  569faf:	jmp    56a3b2
  569fb4:	lea    eax,[ebx+0x57978]  ; literal "bird_"
  569fba:	mov    eax,DWORD PTR [eax]
  569fbc:	mov    DWORD PTR [esp+0x4],eax
  569fc0:	mov    DWORD PTR [esp],edi
  569fc3:	mov    DWORD PTR [esp+0x8],0x0
  569fcb:	call   cb2476  ; System.String::StartsWith
  569fd0:	test   al,al
  569fd2:	je     56a0cf
  569fd8:	lea    eax,[ebx+0x4584c]
  569fde:	mov    DWORD PTR [esp+0x2c],eax
  569fe2:	mov    eax,DWORD PTR [eax]
  569fe4:	test   BYTE PTR [eax+0xb2],0x1
  569feb:	je     569ffb
  569fed:	cmp    DWORD PTR [eax+0x60],0x0
  569ff1:	jne    569ffb
  569ff3:	mov    DWORD PTR [esp],eax
  569ff6:	call   1db0b8
  569ffb:	mov    DWORD PTR [esp+0x4],0x0
  56a003:	mov    DWORD PTR [esp],0x0
  56a00a:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  56a00f:	mov    edi,eax
  56a011:	mov    eax,DWORD PTR [esi]
  56a013:	mov    DWORD PTR [esp+0x4],eax
  56a017:	mov    eax,DWORD PTR [ebp+0x10]
  56a01a:	mov    DWORD PTR [esp],eax
  56a01d:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56a022:	test   eax,eax
  56a024:	je     56a452
  56a02a:	mov    DWORD PTR [esp],eax
  56a02d:	mov    DWORD PTR [esp+0x4],0x0
  56a035:	call   1701914  ; ABH.Shared.BalancingData.MasteryItemBalancingData::get_AssociatedClass
  56a03a:	test   edi,edi
  56a03c:	je     56a452
  56a042:	mov    DWORD PTR [esp+0x4],eax
  56a046:	mov    DWORD PTR [esp],edi
  56a049:	mov    DWORD PTR [esp+0xc],0x0
  56a051:	mov    DWORD PTR [esp+0x8],0x0
  56a059:	call   6eb843  ; ABH.GameDatas.PlayerGameData::GetBird
  56a05e:	mov    DWORD PTR [esp+0x24],eax
  56a062:	mov    eax,DWORD PTR [esi]
  56a064:	mov    DWORD PTR [esp+0x4],eax
  56a068:	mov    eax,DWORD PTR [ebp+0x10]
  56a06b:	mov    DWORD PTR [esp],eax
  56a06e:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56a073:	mov    edi,eax
  56a075:	mov    DWORD PTR [esp+0x4],0x0
  56a07d:	mov    DWORD PTR [esp],0x0
  56a084:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  56a089:	mov    DWORD PTR [esp+0x8],eax
  56a08d:	mov    DWORD PTR [esp+0x4],edi
  56a091:	call   54f7af  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::IsAddMasteryPossible
  56a096:	test   al,al
  56a098:	je     56a1b9
  56a09e:	mov    eax,DWORD PTR [ebp+0x14]
  56a0a1:	test   eax,eax
  56a0a3:	mov    ecx,DWORD PTR [ebp+0xc]
  56a0a6:	je     56a452
  56a0ac:	mov    eax,DWORD PTR [eax+0x8]
  56a0af:	mov    DWORD PTR [esp+0xc],eax
  56a0b3:	mov    eax,DWORD PTR [esp+0x24]
  56a0b7:	mov    DWORD PTR [esp+0x8],eax
  56a0bb:	mov    DWORD PTR [esp+0x4],ecx
  56a0bf:	mov    eax,DWORD PTR [ebp+0x8]
  56a0c2:	mov    DWORD PTR [esp],eax
  56a0c5:	call   5683db  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMastery
  56a0ca:	jmp    56a3c2
  56a0cf:	mov    DWORD PTR [esp+0x2c],esi
  56a0d3:	lea    eax,[ebx+0x454c4]
  56a0d9:	mov    eax,DWORD PTR [eax]
  56a0db:	mov    DWORD PTR [esp],eax
  56a0de:	call   20bfb2
  56a0e3:	mov    esi,eax
  56a0e5:	mov    DWORD PTR [esp],esi
  56a0e8:	mov    DWORD PTR [esp+0x4],0x0
  56a0f0:	call   179b59b  ; ABH.Shared.Models.Generic.Requirement::.ctor
  56a0f5:	test   esi,esi
  56a0f7:	je     56a452
  56a0fd:	mov    DWORD PTR [esp+0x4],edi
  56a101:	mov    DWORD PTR [esp],esi
  56a104:	mov    DWORD PTR [esp+0x8],0x0
  56a10c:	mov    DWORD PTR [esp+0x24],esi
  56a110:	call   179b561  ; ABH.Shared.Models.Generic.Requirement::set_NameId
  56a115:	mov    DWORD PTR [esp],esi
  56a118:	mov    DWORD PTR [esp+0x8],0x0
  56a120:	mov    DWORD PTR [esp+0x4],0x14
  56a128:	call   179b53e  ; ABH.Shared.Models.Generic.Requirement::set_RequirementType
  56a12d:	lea    eax,[ebx+0x45820]
  56a133:	mov    eax,DWORD PTR [eax]
  56a135:	test   BYTE PTR [eax+0xb2],0x1
  56a13c:	je     56a14c
  56a13e:	cmp    DWORD PTR [eax+0x60],0x0
  56a142:	jne    56a14c
  56a144:	mov    DWORD PTR [esp],eax
  56a147:	call   1db0b8
  56a14c:	mov    DWORD PTR [esp+0x4],0x0
  56a154:	mov    DWORD PTR [esp],0x0
  56a15b:	call   107cf95  ; DIContainerBalancing::get_Service
  56a160:	test   eax,eax
  56a162:	je     56a452
  56a168:	lea    ecx,[ebx+0x4a924]
  56a16e:	mov    DWORD PTR [esp+0x28],ebx
  56a172:	mov    edx,DWORD PTR [ecx]
  56a174:	mov    DWORD PTR [esp+0x20],edx
  56a178:	mov    ecx,DWORD PTR [edx+0xc]
  56a17b:	movzx  esi,WORD PTR [edx+0x2c]
  56a17f:	mov    ebx,DWORD PTR [eax]
  56a181:	mov    DWORD PTR [esp+0x1c],eax
  56a185:	movzx  eax,WORD PTR [ebx+0xaa]
  56a18c:	test   eax,eax
  56a18e:	je     56a19f
  56a190:	mov    edi,DWORD PTR [ebx+0x4c]
  56a193:	xor    edx,edx
  56a195:	cmp    DWORD PTR [edi+edx*8],ecx
  56a198:	je     56a201
  56a19a:	inc    edx
  56a19b:	cmp    edx,eax
  56a19d:	jb     56a195
  56a19f:	mov    DWORD PTR [esp+0x8],esi
  56a1a3:	mov    DWORD PTR [esp+0x4],ecx
  56a1a7:	mov    esi,DWORD PTR [esp+0x1c]
  56a1ab:	mov    DWORD PTR [esp],esi
  56a1ae:	mov    ebx,DWORD PTR [esp+0x28]
  56a1b2:	call   1c1964
  56a1b7:	jmp    56a214
  56a1b9:	mov    eax,DWORD PTR [esp+0x2c]
  56a1bd:	mov    eax,DWORD PTR [eax]
  56a1bf:	test   BYTE PTR [eax+0xb2],0x1
  56a1c6:	mov    esi,DWORD PTR [ebp+0xc]
  56a1c9:	je     56a1d9
  56a1cb:	cmp    DWORD PTR [eax+0x60],0x0
  56a1cf:	jne    56a1d9
  56a1d1:	mov    DWORD PTR [esp],eax
  56a1d4:	call   1db0b8
  56a1d9:	mov    DWORD PTR [esp+0x4],0x0
  56a1e1:	mov    DWORD PTR [esp],0x0
  56a1e8:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  56a1ed:	mov    ecx,DWORD PTR [ebp+0x10]
  56a1f0:	mov    DWORD PTR [esp+0xc],ecx
  56a1f4:	mov    DWORD PTR [esp+0x8],eax
  56a1f8:	mov    DWORD PTR [esp+0x4],esi
  56a1fc:	jmp    56a3bd
  56a201:	add    esi,DWORD PTR [edi+edx*8+0x4]
  56a205:	lea    eax,[ebx+esi*8+0xb4]
  56a20c:	mov    ebx,DWORD PTR [esp+0x28]
  56a210:	mov    esi,DWORD PTR [esp+0x1c]
  56a214:	mov    eax,DWORD PTR [eax+0x4]
  56a217:	mov    ecx,DWORD PTR [esp+0x20]
  56a21b:	mov    DWORD PTR [esp+0x4],ecx
  56a21f:	mov    DWORD PTR [esp],eax
  56a222:	call   1da450
  56a227:	mov    DWORD PTR [esp+0x4],eax
  56a22b:	mov    DWORD PTR [esp],esi
  56a22e:	call   DWORD PTR [eax]
  56a230:	lea    ecx,[ebx+0x4a928]
  56a236:	mov    ecx,DWORD PTR [ecx]
  56a238:	mov    DWORD PTR [esp+0x8],ecx
  56a23c:	mov    DWORD PTR [esp+0x4],eax
  56a240:	mov    DWORD PTR [esp],0x0
  56a247:	call   ddf8e7  ; shared address: System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | System.Linq.Enumerable::Count | +12 other aliases
  56a24c:	cvtsi2ss xmm0,eax
  56a250:	movss  DWORD PTR [esp+0x4],xmm0
  56a256:	mov    eax,DWORD PTR [esp+0x24]
  56a25a:	mov    DWORD PTR [esp],eax
  56a25d:	mov    DWORD PTR [esp+0x8],0x0
  56a265:	call   179b584  ; ABH.Shared.Models.Generic.Requirement::set_Value
  56a26a:	mov    esi,DWORD PTR [esp+0x2c]
  56a26e:	mov    eax,DWORD PTR [esi]
  56a270:	mov    DWORD PTR [esp+0x4],eax
  56a274:	mov    eax,DWORD PTR [ebp+0x10]
  56a277:	mov    DWORD PTR [esp],eax
  56a27a:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56a27f:	mov    edi,eax
  56a281:	lea    eax,[ebx+0x4584c]
  56a287:	mov    DWORD PTR [esp+0x24],eax
  56a28b:	mov    eax,DWORD PTR [eax]
  56a28d:	test   BYTE PTR [eax+0xb2],0x1
  56a294:	je     56a2a4
  56a296:	cmp    DWORD PTR [eax+0x60],0x0
  56a29a:	jne    56a2a4
  56a29c:	mov    DWORD PTR [esp],eax
  56a29f:	call   1db0b8
  56a2a4:	mov    DWORD PTR [esp+0x4],0x0
  56a2ac:	mov    DWORD PTR [esp],0x0
  56a2b3:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  56a2b8:	mov    DWORD PTR [esp+0x8],eax
  56a2bc:	mov    DWORD PTR [esp+0x4],edi
  56a2c0:	call   54f7af  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::IsAddMasteryPossible
  56a2c5:	test   al,al
  56a2c7:	mov    edi,DWORD PTR [ebp+0x10]
  56a2ca:	je     56a37d
  56a2d0:	mov    eax,DWORD PTR [esi]
  56a2d2:	mov    DWORD PTR [esp+0x4],eax
  56a2d6:	mov    DWORD PTR [esp],edi
  56a2d9:	call   1605bb5  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_BalancingData | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_BalancingData | +19 other aliases
  56a2de:	test   eax,eax
  56a2e0:	je     56a452
  56a2e6:	mov    DWORD PTR [esp],eax
  56a2e9:	mov    DWORD PTR [esp+0x4],0x0
  56a2f1:	call   1701914  ; ABH.Shared.BalancingData.MasteryItemBalancingData::get_AssociatedClass
  56a2f6:	lea    ecx,[esp+0x38]
  56a2fa:	mov    DWORD PTR [esp+0xc],ecx
  56a2fe:	mov    DWORD PTR [esp+0x8],eax
  56a302:	mov    eax,DWORD PTR [ebp+0xc]
  56a305:	mov    DWORD PTR [esp+0x4],eax
  56a309:	mov    eax,DWORD PTR [ebp+0x8]
  56a30c:	mov    DWORD PTR [esp],eax
  56a30f:	call   4fe577  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::TryGetItemGameData
  56a314:	test   al,al
  56a316:	je     56a37d
  56a318:	mov    eax,DWORD PTR [ebp+0x14]
  56a31b:	test   eax,eax
  56a31d:	je     56a452
  56a323:	mov    edx,DWORD PTR [esp+0x38]
  56a327:	mov    eax,DWORD PTR [eax+0x8]
  56a32a:	xor    ecx,ecx
  56a32c:	test   edx,edx
  56a32e:	je     56a438
  56a334:	lea    esi,[ebx+0x45e24]
  56a33a:	mov    DWORD PTR [esp+0x28],ebx
  56a33e:	mov    esi,DWORD PTR [esi]
  56a340:	mov    DWORD PTR [esp+0x2c],esi
  56a344:	mov    ebx,DWORD PTR [edx]
  56a346:	movzx  edi,BYTE PTR [esi+0xac]
  56a34d:	mov    esi,eax
  56a34f:	movzx  eax,BYTE PTR [ebx+0xac]
  56a356:	cmp    eax,edi
  56a358:	mov    eax,esi
  56a35a:	jb     56a43c
  56a360:	mov    DWORD PTR [esp+0x24],eax
  56a364:	mov    eax,DWORD PTR [ebx+0x58]
  56a367:	xor    ecx,ecx
  56a369:	mov    esi,DWORD PTR [esp+0x2c]
  56a36d:	cmp    DWORD PTR [eax+edi*4-0x4],esi
  56a371:	mov    eax,DWORD PTR [esp+0x24]
  56a375:	cmove  ecx,edx
  56a378:	jmp    56a43c
  56a37d:	mov    eax,DWORD PTR [esp+0x24]
  56a381:	mov    eax,DWORD PTR [eax]
  56a383:	test   BYTE PTR [eax+0xb2],0x1
  56a38a:	je     56a39a
  56a38c:	cmp    DWORD PTR [eax+0x60],0x0
  56a390:	jne    56a39a
  56a392:	mov    DWORD PTR [esp],eax
  56a395:	call   1db0b8
  56a39a:	mov    DWORD PTR [esp+0x4],0x0
  56a3a2:	mov    DWORD PTR [esp],0x0
  56a3a9:	call   106970e  ; DIContainerInfrastructure::GetCurrentPlayer
  56a3ae:	mov    DWORD PTR [esp+0xc],edi
  56a3b2:	mov    DWORD PTR [esp+0x8],eax
  56a3b6:	mov    eax,DWORD PTR [ebp+0xc]
  56a3b9:	mov    DWORD PTR [esp+0x4],eax
  56a3bd:	call   56a45c  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMasteryFallBackItem
  56a3c2:	mov    ecx,DWORD PTR [ebp+0x10]
  56a3c5:	test   ecx,ecx
  56a3c7:	je     56a452
  56a3cd:	lea    eax,[ebx+0x45854]
  56a3d3:	mov    eax,DWORD PTR [eax]
  56a3d5:	mov    ecx,DWORD PTR [ecx]
  56a3d7:	movzx  edx,WORD PTR [ecx+0xaa]
  56a3de:	test   edx,edx
  56a3e0:	je     56a3f1
  56a3e2:	mov    esi,DWORD PTR [ecx+0x4c]
  56a3e5:	xor    edi,edi
  56a3e7:	cmp    DWORD PTR [esi+edi*8],eax
  56a3ea:	je     56a40c
  56a3ec:	inc    edi
  56a3ed:	cmp    edi,edx
  56a3ef:	jb     56a3e7
  56a3f1:	mov    DWORD PTR [esp+0x4],eax
  56a3f5:	mov    esi,DWORD PTR [ebp+0x10]
  56a3f8:	mov    DWORD PTR [esp],esi
  56a3fb:	mov    DWORD PTR [esp+0x8],0x7
  56a403:	call   1c1964
  56a408:	mov    ecx,eax
  56a40a:	jmp    56a41a
  56a40c:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  56a410:	lea    ecx,[ecx+eax*8+0xec]
  56a417:	mov    esi,DWORD PTR [ebp+0x10]
  56a41a:	mov    eax,DWORD PTR [ecx+0x4]
  56a41d:	mov    DWORD PTR [esp+0x4],eax
  56a421:	mov    DWORD PTR [esp],esi
  56a424:	call   DWORD PTR [ecx]
  56a426:	mov    ecx,DWORD PTR [ebp+0x14]
  56a429:	test   ecx,ecx
  56a42b:	je     56a452
  56a42d:	add    eax,DWORD PTR [ecx+0x8]
  56a430:	lea    esp,[ebp-0xc]
  56a433:	pop    esi
  56a434:	pop    edi
  56a435:	pop    ebx
  56a436:	pop    ebp
  56a437:	ret
  56a438:	mov    DWORD PTR [esp+0x28],ebx
  56a43c:	mov    DWORD PTR [esp+0xc],eax
  56a440:	mov    DWORD PTR [esp+0x8],ecx
  56a444:	mov    ebx,DWORD PTR [esp+0x28]
  56a448:	call   56868d  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::AddMastery
  56a44d:	jmp    56a3c2
  56a452:	call   1fbc48
  56a457:	call   540b98