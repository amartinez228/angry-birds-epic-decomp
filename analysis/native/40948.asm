
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00504ab6:
  504ab6:	push   ebp
  504ab7:	mov    ebp,esp
  504ab9:	push   ebx
  504aba:	push   edi
  504abb:	push   esi
  504abc:	and    esp,0xfffffff0
  504abf:	sub    esp,0x40
  504ac2:	call   504ac7
  504ac7:	pop    ebx
  504ac8:	add    ebx,0x1a0d47d
  504ace:	mov    DWORD PTR [esp+0x34],ebx
  504ad2:	mov    esi,DWORD PTR [ebp+0xc]
  504ad5:	mov    al,BYTE PTR [ebx+0x5d4ea]
  504adb:	test   al,al
  504add:	jne    504af6
  504adf:	lea    eax,[ebx-0x66f3d8]
  504ae5:	mov    eax,DWORD PTR [eax]
  504ae7:	mov    DWORD PTR [esp],eax
  504aea:	call   1ca6e8
  504aef:	mov    BYTE PTR [ebx+0x5d4ea],0x1
  504af6:	mov    DWORD PTR [esp+0x38],0x0
  504afe:	test   esi,esi
  504b00:	je     505249
  504b06:	mov    eax,DWORD PTR [esi+0x68]
  504b09:	test   eax,eax
  504b0b:	je     505249
  504b11:	lea    ecx,[ebx+0x4afc0]
  504b17:	mov    ecx,DWORD PTR [ecx]
  504b19:	mov    DWORD PTR [esp+0xc],ecx
  504b1d:	lea    ecx,[esp+0x38]
  504b21:	mov    DWORD PTR [esp+0x8],ecx
  504b25:	mov    DWORD PTR [esp],eax
  504b28:	mov    DWORD PTR [esp+0x4],0x1
  504b30:	call   1244bb9  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::TryGetValue | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, ABH.GameDatas.SkillGameData>::TryGetValue | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::TryGetValue | +1 other aliases
  504b35:	test   al,al
  504b37:	je     504d45
  504b3d:	mov    eax,DWORD PTR [esp+0x38]
  504b41:	test   eax,eax
  504b43:	je     505249
  504b49:	xor    esi,esi
  504b4b:	lea    ecx,[ebx+0x4a048]
  504b51:	mov    DWORD PTR [esp+0x20],ecx
  504b55:	mov    ecx,DWORD PTR [esp+0x20]
  504b59:	mov    ecx,DWORD PTR [ecx]
  504b5b:	mov    DWORD PTR [esp+0x4],ecx
  504b5f:	mov    DWORD PTR [esp],eax
  504b62:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  504b67:	cmp    esi,eax
  504b69:	jge    504d45
  504b6f:	mov    eax,DWORD PTR [esp+0x38]
  504b73:	test   eax,eax
  504b75:	je     505249
  504b7b:	lea    ecx,[ebx+0x4a0ac]
  504b81:	mov    DWORD PTR [esp+0x28],ecx
  504b85:	mov    ecx,DWORD PTR [ecx]
  504b87:	mov    DWORD PTR [esp+0x8],ecx
  504b8b:	mov    DWORD PTR [esp+0x4],esi
  504b8f:	mov    DWORD PTR [esp+0x30],esi
  504b93:	mov    DWORD PTR [esp],eax
  504b96:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  504b9b:	mov    esi,eax
  504b9d:	test   esi,esi
  504b9f:	je     505249
  504ba5:	lea    eax,[ebx+0x45874]
  504bab:	mov    DWORD PTR [esp+0x24],eax
  504baf:	mov    eax,DWORD PTR [eax]
  504bb1:	mov    ebx,DWORD PTR [esi]
  504bb3:	movzx  edx,WORD PTR [ebx+0xaa]
  504bba:	test   edx,edx
  504bbc:	je     504bcd
  504bbe:	mov    edi,DWORD PTR [ebx+0x4c]
  504bc1:	xor    ecx,ecx
  504bc3:	cmp    DWORD PTR [edi+ecx*8],eax
  504bc6:	je     504be9
  504bc8:	inc    ecx
  504bc9:	cmp    ecx,edx
  504bcb:	jb     504bc3
  504bcd:	mov    DWORD PTR [esp+0x4],eax
  504bd1:	mov    DWORD PTR [esp],esi
  504bd4:	mov    DWORD PTR [esp+0x8],0x9
  504bdc:	mov    ebx,DWORD PTR [esp+0x34]
  504be0:	call   1c1964
  504be5:	mov    ecx,eax
  504be7:	jmp    504bf8
  504be9:	mov    eax,DWORD PTR [edi+ecx*8+0x4]
  504bed:	lea    ecx,[ebx+eax*8+0xfc]
  504bf4:	mov    ebx,DWORD PTR [esp+0x34]
  504bf8:	mov    eax,DWORD PTR [ecx+0x4]
  504bfb:	mov    DWORD PTR [esp+0x4],eax
  504bff:	mov    DWORD PTR [esp],esi
  504c02:	call   DWORD PTR [ecx]
  504c04:	mov    DWORD PTR [esp+0x2c],0x0
  504c0c:	test   eax,eax
  504c0e:	je     504c3f
  504c10:	lea    ecx,[ebx+0x45ddc]
  504c16:	mov    ecx,DWORD PTR [ecx]
  504c18:	mov    edx,DWORD PTR [eax]
  504c1a:	movzx  esi,BYTE PTR [ecx+0xac]
  504c21:	movzx  edi,BYTE PTR [edx+0xac]
  504c28:	cmp    edi,esi
  504c2a:	jb     504c3f
  504c2c:	mov    edx,DWORD PTR [edx+0x58]
  504c2f:	cmp    DWORD PTR [edx+esi*4-0x4],ecx
  504c33:	mov    ecx,0x0
  504c38:	cmovne eax,ecx
  504c3b:	mov    DWORD PTR [esp+0x2c],eax
  504c3f:	mov    eax,DWORD PTR [esp+0x38]
  504c43:	test   eax,eax
  504c45:	je     505245
  504c4b:	mov    ecx,DWORD PTR [esp+0x28]
  504c4f:	mov    ecx,DWORD PTR [ecx]
  504c51:	mov    DWORD PTR [esp+0x8],ecx
  504c55:	mov    ecx,DWORD PTR [esp+0x30]
  504c59:	mov    DWORD PTR [esp+0x4],ecx
  504c5d:	mov    DWORD PTR [esp],eax
  504c60:	mov    ebx,DWORD PTR [esp+0x34]
  504c64:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  504c69:	mov    esi,eax
  504c6b:	test   esi,esi
  504c6d:	je     505245
  504c73:	mov    eax,DWORD PTR [esp+0x24]
  504c77:	mov    eax,DWORD PTR [eax]
  504c79:	mov    ecx,DWORD PTR [esi]
  504c7b:	movzx  edx,WORD PTR [ecx+0xaa]
  504c82:	test   edx,edx
  504c84:	je     504c95
  504c86:	mov    edi,DWORD PTR [ecx+0x4c]
  504c89:	xor    ebx,ebx
  504c8b:	cmp    DWORD PTR [edi+ebx*8],eax
  504c8e:	je     504cb1
  504c90:	inc    ebx
  504c91:	cmp    ebx,edx
  504c93:	jb     504c8b
  504c95:	mov    DWORD PTR [esp+0x4],eax
  504c99:	mov    DWORD PTR [esp],esi
  504c9c:	mov    DWORD PTR [esp+0x8],0x23
  504ca4:	mov    ebx,DWORD PTR [esp+0x34]
  504ca8:	call   1c1964
  504cad:	mov    ecx,eax
  504caf:	jmp    504cc0
  504cb1:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  504cb5:	lea    ecx,[ecx+eax*8+0x1cc]
  504cbc:	mov    ebx,DWORD PTR [esp+0x34]
  504cc0:	mov    eax,DWORD PTR [ecx+0x4]
  504cc3:	mov    DWORD PTR [esp+0x4],eax
  504cc7:	mov    DWORD PTR [esp],esi
  504cca:	call   DWORD PTR [ecx]
  504ccc:	cmp    DWORD PTR [esp+0x2c],0x0
  504cd1:	je     504d2f
  504cd3:	cmp    eax,0x2
  504cd6:	je     504d2f
  504cd8:	mov    edi,DWORD PTR [ebp+0xc]
  504cdb:	mov    DWORD PTR [esp],edi
  504cde:	mov    DWORD PTR [esp+0x4],0x0
  504ce6:	call   ec178b  ; ABH.GameDatas.Battle.BattleGameData::get_m_AccumulatedStrengthPoints
  504ceb:	mov    esi,eax
  504ced:	mov    eax,DWORD PTR [esp+0x2c]
  504cf1:	mov    DWORD PTR [esp],eax
  504cf4:	mov    DWORD PTR [esp+0x4],0x0
  504cfc:	call   6f4b7a  ; ABH.GameDatas.PigGameData::get_BalancingData
  504d01:	test   eax,eax
  504d03:	je     505249
  504d09:	mov    DWORD PTR [esp],eax
  504d0c:	mov    DWORD PTR [esp+0x4],0x0
  504d14:	call   1701d27  ; ABH.Shared.BalancingData.PigBalancingData::get_PigStrength
  504d19:	add    eax,esi
  504d1b:	mov    DWORD PTR [esp+0x4],eax
  504d1f:	mov    DWORD PTR [esp],edi
  504d22:	mov    DWORD PTR [esp+0x8],0x0
  504d2a:	call   ec179b  ; ABH.GameDatas.Battle.BattleGameData::set_m_AccumulatedStrengthPoints
  504d2f:	mov    esi,DWORD PTR [esp+0x30]
  504d33:	inc    esi
  504d34:	mov    eax,DWORD PTR [esp+0x38]
  504d38:	test   eax,eax
  504d3a:	jne    504b55
  504d40:	jmp    505249
  504d45:	mov    esi,DWORD PTR [ebp+0x10]
  504d48:	mov    edi,DWORD PTR [ebp+0xc]
  504d4b:	mov    DWORD PTR [esp],edi
  504d4e:	mov    DWORD PTR [esp+0x4],0x0
  504d56:	call   ec1768  ; ABH.GameDatas.Battle.BattleGameData::get_CurrentWaveIndex
  504d5b:	mov    DWORD PTR [esp+0x18],eax
  504d5f:	mov    DWORD PTR [esp+0x4],esi
  504d63:	mov    DWORD PTR [esp],edi
  504d66:	mov    DWORD PTR [esp+0x8],0x0
  504d6e:	call   ec1778  ; ABH.GameDatas.Battle.BattleGameData::set_CurrentWaveIndex
  504d73:	mov    DWORD PTR [edi+0x24],0x0
  504d7a:	mov    DWORD PTR [esp],edi
  504d7d:	mov    DWORD PTR [esp+0x4],0x0
  504d85:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  504d8a:	test   al,al
  504d8c:	jne    504dbe
  504d8e:	mov    DWORD PTR [esp],edi
  504d91:	mov    DWORD PTR [esp+0x4],0x0
  504d99:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  504d9e:	test   eax,eax
  504da0:	je     505249
  504da6:	mov    DWORD PTR [esp],eax
  504da9:	mov    DWORD PTR [esp+0x4],0x0
  504db1:	call   16fe3d3  ; ABH.Shared.BalancingData.BattleBalancingData::get_BattleParticipantsIds
  504db6:	test   eax,eax
  504db8:	je     5051d6
  504dbe:	mov    DWORD PTR [esp],edi
  504dc1:	mov    DWORD PTR [esp+0x4],0x0
  504dc9:	call   ec1758  ; ABH.GameDatas.Battle.BattleGameData::get_Balancing
  504dce:	test   eax,eax
  504dd0:	je     505249
  504dd6:	mov    DWORD PTR [esp],eax
  504dd9:	mov    DWORD PTR [esp+0x4],0x0
  504de1:	call   16fe3d3  ; ABH.Shared.BalancingData.BattleBalancingData::get_BattleParticipantsIds
  504de6:	test   eax,eax
  504de8:	je     505249
  504dee:	lea    ecx,[ebx+0x48c20]
  504df4:	mov    ecx,DWORD PTR [ecx]
  504df6:	mov    DWORD PTR [esp+0x4],ecx
  504dfa:	mov    DWORD PTR [esp],eax
  504dfd:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  504e02:	cmp    eax,DWORD PTR [ebp+0x10]
  504e05:	jle    5051d6
  504e0b:	mov    eax,DWORD PTR [edi+0x68]
  504e0e:	test   eax,eax
  504e10:	je     505249
  504e16:	lea    esi,[ebx+0x4afc4]
  504e1c:	mov    ecx,DWORD PTR [esi]
  504e1e:	mov    DWORD PTR [esp+0x8],ecx
  504e22:	mov    DWORD PTR [esp],eax
  504e25:	mov    DWORD PTR [esp+0x4],0x1
  504e2d:	call   12446de  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::Remove | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, object>::Remove
  504e32:	mov    eax,DWORD PTR [edi+0x68]
  504e35:	test   eax,eax
  504e37:	je     505249
  504e3d:	mov    ecx,DWORD PTR [esi]
  504e3f:	mov    DWORD PTR [esp+0x8],ecx
  504e43:	mov    DWORD PTR [esp],eax
  504e46:	mov    DWORD PTR [esp+0x4],0x3
  504e4e:	call   12446de  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::Remove | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, object>::Remove
  504e53:	mov    eax,DWORD PTR [ebp+0x10]
  504e56:	mov    DWORD PTR [esp+0x8],eax
  504e5a:	mov    DWORD PTR [esp+0x4],edi
  504e5e:	mov    eax,DWORD PTR [ebp+0x8]
  504e61:	mov    DWORD PTR [esp],eax
  504e64:	call   4fa542  ; ABH.Services.Logic.BattleService::GetPigCombatantsFromWave
  504e69:	test   eax,eax
  504e6b:	mov    DWORD PTR [esp+0x34],ebx
  504e6f:	je     505249
  504e75:	xor    esi,esi
  504e77:	lea    ecx,[ebx+0x4a048]
  504e7d:	mov    DWORD PTR [esp+0x20],ecx
  504e81:	mov    edi,eax
  504e83:	mov    DWORD PTR [esp+0x1c],edi
  504e87:	jmp    504eaa
  504e89:	lea    ecx,[ebx+0x4a078]
  504e8f:	mov    ecx,DWORD PTR [ecx]
  504e91:	mov    DWORD PTR [esp+0x8],ecx
  504e95:	mov    ecx,DWORD PTR [esp+0x30]
  504e99:	mov    DWORD PTR [esp+0x4],ecx
  504e9d:	mov    DWORD PTR [esp],eax
  504ea0:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  504ea5:	mov    esi,DWORD PTR [esp+0x24]
  504ea9:	inc    esi
  504eaa:	mov    eax,DWORD PTR [esp+0x20]
  504eae:	mov    eax,DWORD PTR [eax]
  504eb0:	mov    DWORD PTR [esp+0x4],eax
  504eb4:	mov    DWORD PTR [esp],edi
  504eb7:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  504ebc:	cmp    esi,eax
  504ebe:	jge    5051e9
  504ec4:	lea    eax,[ebx+0x4a0ac]
  504eca:	mov    eax,DWORD PTR [eax]
  504ecc:	mov    DWORD PTR [esp+0x8],eax
  504ed0:	mov    DWORD PTR [esp+0x4],esi
  504ed4:	mov    DWORD PTR [esp+0x24],esi
  504ed8:	mov    DWORD PTR [esp],edi
  504edb:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  504ee0:	mov    edi,eax
  504ee2:	mov    esi,DWORD PTR [ebp+0xc]
  504ee5:	mov    DWORD PTR [esp],esi
  504ee8:	mov    DWORD PTR [esp+0x4],0x0
  504ef0:	call   eb49ac  ; ABH.GameDatas.Battle.BattleGameData::get_IsPvP
  504ef5:	test   al,al
  504ef7:	je     504fda
  504efd:	test   edi,edi
  504eff:	je     505249
  504f05:	lea    eax,[ebx+0x45874]
  504f0b:	mov    DWORD PTR [esp+0x2c],eax
  504f0f:	mov    eax,DWORD PTR [eax]
  504f11:	mov    ecx,DWORD PTR [edi]
  504f13:	mov    DWORD PTR [esp+0x30],edi
  504f17:	movzx  edx,WORD PTR [ecx+0xaa]
  504f1e:	test   edx,edx
  504f20:	je     504f31
  504f22:	mov    edi,DWORD PTR [ecx+0x4c]
  504f25:	xor    ebx,ebx
  504f27:	cmp    DWORD PTR [edi+ebx*8],eax
  504f2a:	je     504f51
  504f2c:	inc    ebx
  504f2d:	cmp    ebx,edx
  504f2f:	jb     504f27
  504f31:	mov    DWORD PTR [esp+0x4],eax
  504f35:	mov    edi,DWORD PTR [esp+0x30]
  504f39:	mov    DWORD PTR [esp],edi
  504f3c:	mov    DWORD PTR [esp+0x8],0x13
  504f44:	mov    ebx,DWORD PTR [esp+0x34]
  504f48:	call   1c1964
  504f4d:	mov    ecx,eax
  504f4f:	jmp    504f64
  504f51:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  504f55:	lea    ecx,[ecx+eax*8+0x14c]
  504f5c:	mov    ebx,DWORD PTR [esp+0x34]
  504f60:	mov    edi,DWORD PTR [esp+0x30]
  504f64:	mov    eax,DWORD PTR [ecx+0x4]
  504f67:	mov    DWORD PTR [esp+0x4],eax
  504f6b:	mov    DWORD PTR [esp],edi
  504f6e:	call   DWORD PTR [ecx]
  504f70:	test   al,al
  504f72:	jne    504fda
  504f74:	mov    eax,DWORD PTR [esp+0x2c]
  504f78:	mov    eax,DWORD PTR [eax]
  504f7a:	mov    ecx,DWORD PTR [edi]
  504f7c:	mov    DWORD PTR [esp+0x30],edi
  504f80:	movzx  edx,WORD PTR [ecx+0xaa]
  504f87:	test   edx,edx
  504f89:	je     504f9a
  504f8b:	mov    esi,DWORD PTR [ecx+0x4c]
  504f8e:	xor    edi,edi
  504f90:	cmp    DWORD PTR [esi+edi*8],eax
  504f93:	je     504fb4
  504f95:	inc    edi
  504f96:	cmp    edi,edx
  504f98:	jb     504f90
  504f9a:	mov    DWORD PTR [esp+0x4],eax
  504f9e:	mov    edi,DWORD PTR [esp+0x30]
  504fa2:	mov    DWORD PTR [esp],edi
  504fa5:	mov    DWORD PTR [esp+0x8],0x61
  504fad:	call   1c1964
  504fb2:	jmp    504fc3
  504fb4:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  504fb8:	lea    eax,[ecx+eax*8+0x3bc]
  504fbf:	mov    edi,DWORD PTR [esp+0x30]
  504fc3:	mov    ecx,DWORD PTR [eax+0x4]
  504fc6:	mov    DWORD PTR [esp+0x8],ecx
  504fca:	mov    DWORD PTR [esp],edi
  504fcd:	mov    DWORD PTR [esp+0x4],0x1
  504fd5:	call   DWORD PTR [eax]
  504fd7:	mov    esi,DWORD PTR [ebp+0xc]
  504fda:	test   edi,edi
  504fdc:	je     505249
  504fe2:	mov    eax,DWORD PTR [esi+0x68]
  504fe5:	mov    DWORD PTR [esp+0x28],eax
  504fe9:	lea    eax,[ebx+0x45874]
  504fef:	mov    DWORD PTR [esp+0x2c],eax
  504ff3:	mov    eax,DWORD PTR [eax]
  504ff5:	mov    ecx,DWORD PTR [edi]
  504ff7:	mov    esi,edi
  504ff9:	movzx  edx,WORD PTR [ecx+0xaa]
  505000:	test   edx,edx
  505002:	je     505013
  505004:	mov    edi,DWORD PTR [ecx+0x4c]
  505007:	xor    ebx,ebx
  505009:	cmp    DWORD PTR [edi+ebx*8],eax
  50500c:	je     50502f
  50500e:	inc    ebx
  50500f:	cmp    ebx,edx
  505011:	jb     505009
  505013:	mov    DWORD PTR [esp+0x4],eax
  505017:	mov    DWORD PTR [esp],esi
  50501a:	mov    DWORD PTR [esp+0x8],0x2f
  505022:	mov    ebx,DWORD PTR [esp+0x34]
  505026:	call   1c1964
  50502b:	mov    ecx,eax
  50502d:	jmp    50503e
  50502f:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  505033:	lea    ecx,[ecx+eax*8+0x22c]
  50503a:	mov    ebx,DWORD PTR [esp+0x34]
  50503e:	mov    eax,DWORD PTR [ecx+0x4]
  505041:	mov    DWORD PTR [esp+0x4],eax
  505045:	mov    DWORD PTR [esp],esi
  505048:	call   DWORD PTR [ecx]
  50504a:	mov    edx,DWORD PTR [esp+0x28]
  50504e:	test   edx,edx
  505050:	je     505249
  505056:	lea    ecx,[ebx+0x4a224]
  50505c:	mov    ecx,DWORD PTR [ecx]
  50505e:	mov    DWORD PTR [esp+0x8],ecx
  505062:	mov    DWORD PTR [esp+0x4],eax
  505066:	mov    DWORD PTR [esp],edx
  505069:	call   1243e0e  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, ABH.GameDatas.SkillGameData>::ContainsKey | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::ContainsKey | +1 other aliases
  50506e:	test   al,al
  505070:	mov    eax,DWORD PTR [ebp+0xc]
  505073:	jne    505140
  505079:	mov    eax,DWORD PTR [eax+0x68]
  50507c:	mov    DWORD PTR [esp+0x28],eax
  505080:	mov    eax,DWORD PTR [esp+0x2c]
  505084:	mov    eax,DWORD PTR [eax]
  505086:	mov    ecx,DWORD PTR [esi]
  505088:	mov    DWORD PTR [esp+0x30],esi
  50508c:	movzx  edx,WORD PTR [ecx+0xaa]
  505093:	test   edx,edx
  505095:	je     5050a6
  505097:	mov    esi,DWORD PTR [ecx+0x4c]
  50509a:	xor    edi,edi
  50509c:	cmp    DWORD PTR [esi+edi*8],eax
  50509f:	je     5050c6
  5050a1:	inc    edi
  5050a2:	cmp    edi,edx
  5050a4:	jb     50509c
  5050a6:	mov    DWORD PTR [esp+0x4],eax
  5050aa:	mov    esi,DWORD PTR [esp+0x30]
  5050ae:	mov    DWORD PTR [esp],esi
  5050b1:	mov    DWORD PTR [esp+0x8],0x2f
  5050b9:	mov    ebx,DWORD PTR [esp+0x34]
  5050bd:	call   1c1964
  5050c2:	mov    ecx,eax
  5050c4:	jmp    5050d9
  5050c6:	mov    eax,DWORD PTR [esi+edi*8+0x4]
  5050ca:	lea    ecx,[ecx+eax*8+0x22c]
  5050d1:	mov    ebx,DWORD PTR [esp+0x34]
  5050d5:	mov    esi,DWORD PTR [esp+0x30]
  5050d9:	mov    DWORD PTR [esp+0x30],esi
  5050dd:	mov    eax,DWORD PTR [ecx+0x4]
  5050e0:	mov    DWORD PTR [esp+0x4],eax
  5050e4:	mov    DWORD PTR [esp],esi
  5050e7:	call   DWORD PTR [ecx]
  5050e9:	mov    edi,eax
  5050eb:	lea    eax,[ebx+0x45890]
  5050f1:	mov    eax,DWORD PTR [eax]
  5050f3:	mov    DWORD PTR [esp],eax
  5050f6:	call   20bfb2
  5050fb:	mov    esi,eax
  5050fd:	lea    eax,[ebx+0x4a074]
  505103:	mov    eax,DWORD PTR [eax]
  505105:	mov    DWORD PTR [esp+0x4],eax
  505109:	mov    DWORD PTR [esp],esi
  50510c:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  505111:	mov    ecx,DWORD PTR [esp+0x28]
  505115:	test   ecx,ecx
  505117:	je     505249
  50511d:	lea    eax,[ebx+0x4a4fc]
  505123:	mov    eax,DWORD PTR [eax]
  505125:	mov    DWORD PTR [esp+0xc],eax
  505129:	mov    DWORD PTR [esp+0x8],esi
  50512d:	mov    DWORD PTR [esp+0x4],edi
  505131:	mov    DWORD PTR [esp],ecx
  505134:	call   12438b3  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, ABH.GameDatas.SkillGameData>::Add | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::Add | +1 other aliases
  505139:	mov    eax,DWORD PTR [ebp+0xc]
  50513c:	mov    esi,DWORD PTR [esp+0x30]
  505140:	mov    eax,DWORD PTR [eax+0x68]
  505143:	mov    DWORD PTR [esp+0x28],eax
  505147:	mov    eax,DWORD PTR [esp+0x2c]
  50514b:	mov    eax,DWORD PTR [eax]
  50514d:	mov    ecx,DWORD PTR [esi]
  50514f:	movzx  edx,WORD PTR [ecx+0xaa]
  505156:	test   edx,edx
  505158:	je     505169
  50515a:	mov    edi,DWORD PTR [ecx+0x4c]
  50515d:	xor    ebx,ebx
  50515f:	cmp    DWORD PTR [edi+ebx*8],eax
  505162:	je     505185
  505164:	inc    ebx
  505165:	cmp    ebx,edx
  505167:	jb     50515f
  505169:	mov    DWORD PTR [esp+0x4],eax
  50516d:	mov    DWORD PTR [esp],esi
  505170:	mov    DWORD PTR [esp+0x8],0x2f
  505178:	mov    ebx,DWORD PTR [esp+0x34]
  50517c:	call   1c1964
  505181:	mov    ecx,eax
  505183:	jmp    505194
  505185:	mov    eax,DWORD PTR [edi+ebx*8+0x4]
  505189:	lea    ecx,[ecx+eax*8+0x22c]
  505190:	mov    ebx,DWORD PTR [esp+0x34]
  505194:	mov    DWORD PTR [esp+0x30],esi
  505198:	mov    eax,DWORD PTR [ecx+0x4]
  50519b:	mov    DWORD PTR [esp+0x4],eax
  50519f:	mov    DWORD PTR [esp],esi
  5051a2:	call   DWORD PTR [ecx]
  5051a4:	mov    edx,DWORD PTR [esp+0x28]
  5051a8:	test   edx,edx
  5051aa:	mov    edi,DWORD PTR [esp+0x1c]
  5051ae:	je     505249
  5051b4:	lea    ecx,[ebx+0x4a04c]
  5051ba:	mov    ecx,DWORD PTR [ecx]
  5051bc:	mov    DWORD PTR [esp+0x8],ecx
  5051c0:	mov    DWORD PTR [esp+0x4],eax
  5051c4:	mov    DWORD PTR [esp],edx
  5051c7:	call   1242740  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::get_Item | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::get_Item | +1 other aliases
  5051cc:	test   eax,eax
  5051ce:	jne    504e89
  5051d4:	jmp    505249
  5051d6:	mov    DWORD PTR [esp+0x4],edi
  5051da:	mov    eax,DWORD PTR [ebp+0x8]
  5051dd:	mov    DWORD PTR [esp],eax
  5051e0:	call   4fe6e7  ; ABH.Services.Logic.BattleService::FinishBattlePlayerWin
  5051e5:	mov    al,0x1
  5051e7:	jmp    50523a
  5051e9:	mov    eax,DWORD PTR [ebp+0xc]
  5051ec:	mov    esi,eax
  5051ee:	mov    DWORD PTR [esp+0x4],esi
  5051f2:	mov    DWORD PTR [esp+0x8],0x1
  5051fa:	call   505253  ; ABH.Services.Logic.BattleService::ReCalculateInitiative
  5051ff:	mov    DWORD PTR [esp],esi
  505202:	mov    DWORD PTR [esp+0x8],0x0
  50520a:	mov    DWORD PTR [esp+0x4],0x0
  505212:	call   ec17be  ; ABH.GameDatas.Battle.BattleGameData::set_CurrentCombatant
  505217:	mov    eax,DWORD PTR [esp+0x18]
  50521b:	mov    DWORD PTR [esp+0x4],eax
  50521f:	mov    DWORD PTR [esp],esi
  505222:	mov    DWORD PTR [esp+0x8],0x0
  50522a:	call   ec39a1  ; ABH.GameDatas.Battle.BattleGameData::RaiseWaveDone
  50522f:	mov    DWORD PTR [esp+0x4],esi
  505233:	call   50132e  ; ABH.Services.Logic.BattleService::SetGoldenPigDefeatedState
  505238:	xor    eax,eax
  50523a:	movzx  eax,al
  50523d:	lea    esp,[ebp-0xc]
  505240:	pop    esi
  505241:	pop    edi
  505242:	pop    ebx
  505243:	pop    ebp
  505244:	ret
  505245:	mov    ebx,DWORD PTR [esp+0x34]
  505249:	call   1fbc48
  50524e:	call   540b98