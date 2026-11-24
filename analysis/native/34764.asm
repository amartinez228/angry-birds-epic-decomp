
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec0ea6:
  ec0ea6:	push   ebp
  ec0ea7:	mov    ebp,esp
  ec0ea9:	push   ebx
  ec0eaa:	push   edi
  ec0eab:	push   esi
  ec0eac:	and    esp,0xfffffff0
  ec0eaf:	sub    esp,0x30
  ec0eb2:	call   ec0eb7
  ec0eb7:	pop    ebx
  ec0eb8:	add    ebx,0x105108d
  ec0ebe:	mov    edi,DWORD PTR [ebp+0x8]
  ec0ec1:	mov    al,BYTE PTR [ebx+0x626d7]
  ec0ec7:	test   al,al
  ec0ec9:	jne    ec0ee2
  ec0ecb:	lea    eax,[ebx-0x66fb98]
  ec0ed1:	mov    eax,DWORD PTR [eax]
  ec0ed3:	mov    DWORD PTR [esp],eax
  ec0ed6:	call   1ca6e8
  ec0edb:	mov    BYTE PTR [ebx+0x626d7],0x1
  ec0ee2:	lea    eax,[ebx+0x43ba4]
  ec0ee8:	mov    eax,DWORD PTR [eax]
  ec0eea:	mov    DWORD PTR [esp],eax
  ec0eed:	call   20bfb2
  ec0ef2:	mov    esi,eax
  ec0ef4:	lea    eax,[ebx+0x48c1c]
  ec0efa:	mov    eax,DWORD PTR [eax]
  ec0efc:	mov    DWORD PTR [esp+0x4],eax
  ec0f00:	mov    DWORD PTR [esp],esi
  ec0f03:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec0f08:	mov    DWORD PTR [edi+0x10],esi
  ec0f0b:	lea    eax,[ebx+0x458b8]
  ec0f11:	mov    eax,DWORD PTR [eax]
  ec0f13:	mov    DWORD PTR [esp],eax
  ec0f16:	call   20bfb2
  ec0f1b:	mov    esi,eax
  ec0f1d:	lea    eax,[ebx+0x4a1cc]
  ec0f23:	mov    eax,DWORD PTR [eax]
  ec0f25:	mov    DWORD PTR [esp+0x4],eax
  ec0f29:	mov    DWORD PTR [esp],esi
  ec0f2c:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec0f31:	mov    DWORD PTR [edi+0x38],esi
  ec0f34:	lea    eax,[ebx+0x45890]
  ec0f3a:	mov    DWORD PTR [esp+0x18],eax
  ec0f3e:	mov    eax,DWORD PTR [eax]
  ec0f40:	mov    DWORD PTR [esp],eax
  ec0f43:	call   20bfb2
  ec0f48:	mov    esi,eax
  ec0f4a:	lea    eax,[ebx+0x4a074]
  ec0f50:	mov    DWORD PTR [esp+0x1c],eax
  ec0f54:	mov    eax,DWORD PTR [eax]
  ec0f56:	mov    DWORD PTR [esp+0x4],eax
  ec0f5a:	mov    DWORD PTR [esp],esi
  ec0f5d:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec0f62:	mov    DWORD PTR [edi+0x50],esi
  ec0f65:	mov    esi,DWORD PTR [esp+0x18]
  ec0f69:	mov    eax,DWORD PTR [esi]
  ec0f6b:	mov    DWORD PTR [esp],eax
  ec0f6e:	call   20bfb2
  ec0f73:	mov    edi,eax
  ec0f75:	mov    eax,DWORD PTR [esp+0x1c]
  ec0f79:	mov    eax,DWORD PTR [eax]
  ec0f7b:	mov    DWORD PTR [esp+0x4],eax
  ec0f7f:	mov    DWORD PTR [esp],edi
  ec0f82:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec0f87:	mov    eax,DWORD PTR [ebp+0x8]
  ec0f8a:	mov    DWORD PTR [eax+0x54],edi
  ec0f8d:	mov    eax,DWORD PTR [esi]
  ec0f8f:	mov    DWORD PTR [esp],eax
  ec0f92:	call   20bfb2
  ec0f97:	mov    esi,eax
  ec0f99:	mov    eax,DWORD PTR [esp+0x1c]
  ec0f9d:	mov    eax,DWORD PTR [eax]
  ec0f9f:	mov    DWORD PTR [esp+0x4],eax
  ec0fa3:	mov    DWORD PTR [esp],esi
  ec0fa6:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec0fab:	mov    edi,DWORD PTR [ebp+0x8]
  ec0fae:	mov    DWORD PTR [edi+0x58],esi
  ec0fb1:	mov    eax,DWORD PTR [esp+0x18]
  ec0fb5:	mov    eax,DWORD PTR [eax]
  ec0fb7:	mov    DWORD PTR [esp],eax
  ec0fba:	call   20bfb2
  ec0fbf:	mov    esi,eax
  ec0fc1:	mov    eax,DWORD PTR [esp+0x1c]
  ec0fc5:	mov    eax,DWORD PTR [eax]
  ec0fc7:	mov    DWORD PTR [esp+0x4],eax
  ec0fcb:	mov    DWORD PTR [esp],esi
  ec0fce:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec0fd3:	mov    DWORD PTR [edi+0x5c],esi
  ec0fd6:	mov    eax,DWORD PTR [esp+0x18]
  ec0fda:	mov    eax,DWORD PTR [eax]
  ec0fdc:	mov    DWORD PTR [esp],eax
  ec0fdf:	call   20bfb2
  ec0fe4:	mov    esi,eax
  ec0fe6:	mov    eax,DWORD PTR [esp+0x1c]
  ec0fea:	mov    eax,DWORD PTR [eax]
  ec0fec:	mov    DWORD PTR [esp+0x4],eax
  ec0ff0:	mov    DWORD PTR [esp],esi
  ec0ff3:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec0ff8:	mov    DWORD PTR [edi+0x60],esi
  ec0ffb:	lea    eax,[ebx+0x458bc]
  ec1001:	mov    eax,DWORD PTR [eax]
  ec1003:	mov    DWORD PTR [esp],eax
  ec1006:	call   20bfb2
  ec100b:	mov    esi,eax
  ec100d:	lea    eax,[ebx+0x4a1d0]
  ec1013:	mov    eax,DWORD PTR [eax]
  ec1015:	mov    DWORD PTR [esp+0x4],eax
  ec1019:	mov    DWORD PTR [esp],esi
  ec101c:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  ec1021:	mov    DWORD PTR [edi+0x64],esi
  ec1024:	lea    eax,[ebx+0x458c0]
  ec102a:	mov    eax,DWORD PTR [eax]
  ec102c:	mov    DWORD PTR [esp],eax
  ec102f:	call   20bfb2
  ec1034:	mov    esi,eax
  ec1036:	lea    eax,[ebx+0x4a1d4]
  ec103c:	mov    eax,DWORD PTR [eax]
  ec103e:	mov    DWORD PTR [esp+0x4],eax
  ec1042:	mov    DWORD PTR [esp],esi
  ec1045:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ec104a:	mov    DWORD PTR [edi+0x68],esi
  ec104d:	lea    eax,[ebx+0x458c4]
  ec1053:	mov    eax,DWORD PTR [eax]
  ec1055:	mov    DWORD PTR [esp],eax
  ec1058:	call   20bfb2
  ec105d:	mov    esi,eax
  ec105f:	lea    eax,[ebx+0x4a1d8]
  ec1065:	mov    eax,DWORD PTR [eax]
  ec1067:	mov    DWORD PTR [esp+0x4],eax
  ec106b:	mov    DWORD PTR [esp],esi
  ec106e:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ec1073:	mov    DWORD PTR [edi+0x6c],esi
  ec1076:	lea    eax,[ebx+0x458c8]
  ec107c:	mov    eax,DWORD PTR [eax]
  ec107e:	mov    DWORD PTR [esp],eax
  ec1081:	call   20bfb2
  ec1086:	mov    esi,eax
  ec1088:	lea    eax,[ebx+0x4a1dc]
  ec108e:	mov    eax,DWORD PTR [eax]
  ec1090:	mov    DWORD PTR [esp+0x4],eax
  ec1094:	mov    DWORD PTR [esp],esi
  ec1097:	call   1241693  ; shared address: System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, string>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e67f90(kind=0x15,data=0x1f272e4)>::.ctor | System.Collections.Generic.Dictionary`2<ABH.Shared.Generic.Faction, unresolved-type@0x1e62fa0(kind=0x15,data=0x1f1e554)>::.ctor | +2 other aliases
  ec109c:	mov    DWORD PTR [edi+0x70],esi
  ec109f:	lea    eax,[ebx+0x43134]
  ec10a5:	mov    eax,DWORD PTR [eax]
  ec10a7:	mov    DWORD PTR [esp],eax
  ec10aa:	call   20bfb2
  ec10af:	mov    esi,eax
  ec10b1:	lea    eax,[ebx+0x49284]
  ec10b7:	mov    eax,DWORD PTR [eax]
  ec10b9:	mov    DWORD PTR [esp+0x4],eax
  ec10bd:	mov    DWORD PTR [esp],esi
  ec10c0:	call   60f980  ; shared address: System.Collections.Generic.Dictionary`2<string, int>::.ctor | System.Collections.Generic.Dictionary`2<UnityEngine.Font, int>::.ctor | System.Collections.Generic.Dictionary`2<object, int>::.ctor
  ec10c5:	mov    eax,edi
  ec10c7:	mov    DWORD PTR [eax+0x74],esi
  ec10ca:	mov    WORD PTR [eax+0x100],0x101
  ec10d3:	mov    DWORD PTR [esp],eax
  ec10d6:	mov    DWORD PTR [esp+0x4],0x0
  ec10de:	call   124632e  ; System.Object::.ctor
  ec10e3:	mov    DWORD PTR [esp+0x4],0x0
  ec10eb:	mov    DWORD PTR [esp],0x0
  ec10f2:	call   1066c60  ; DIContainerLogic::GetTimingService
  ec10f7:	test   eax,eax
  ec10f9:	je     ec11bc
  ec10ff:	lea    ecx,[ebx+0x458cc]
  ec1105:	mov    ecx,DWORD PTR [ecx]
  ec1107:	mov    edx,DWORD PTR [eax]
  ec1109:	mov    DWORD PTR [esp+0x18],edx
  ec110d:	mov    DWORD PTR [esp+0x1c],eax
  ec1111:	movzx  edx,WORD PTR [edx+0xaa]
  ec1118:	test   edx,edx
  ec111a:	je     ec112f
  ec111c:	mov    eax,DWORD PTR [esp+0x18]
  ec1120:	mov    edi,DWORD PTR [eax+0x4c]
  ec1123:	xor    esi,esi
  ec1125:	cmp    DWORD PTR [edi+esi*8],ecx
  ec1128:	je     ec1149
  ec112a:	inc    esi
  ec112b:	cmp    esi,edx
  ec112d:	jb     ec1125
  ec112f:	mov    DWORD PTR [esp+0x4],ecx
  ec1133:	mov    esi,DWORD PTR [esp+0x1c]
  ec1137:	mov    DWORD PTR [esp],esi
  ec113a:	mov    DWORD PTR [esp+0x8],0x2
  ec1142:	call   1c1964
  ec1147:	jmp    ec115c
  ec1149:	mov    eax,DWORD PTR [edi+esi*8+0x4]
  ec114d:	mov    ecx,DWORD PTR [esp+0x18]
  ec1151:	lea    eax,[ecx+eax*8+0xc4]
  ec1158:	mov    esi,DWORD PTR [esp+0x1c]
  ec115c:	mov    ecx,DWORD PTR [eax+0x4]
  ec115f:	mov    DWORD PTR [esp+0x8],ecx
  ec1163:	mov    DWORD PTR [esp+0x4],esi
  ec1167:	lea    ecx,[esp+0x20]
  ec116b:	mov    DWORD PTR [esp],ecx
  ec116e:	call   DWORD PTR [eax]
  ec1170:	sub    esp,0x4
  ec1173:	mov    eax,DWORD PTR [esp+0x28]
  ec1177:	mov    esi,DWORD PTR [ebp+0x8]
  ec117a:	mov    DWORD PTR [esi+0x88],eax
  ec1180:	movsd  xmm0,QWORD PTR [esp+0x20]
  ec1186:	movsd  QWORD PTR [esi+0x80],xmm0
  ec118e:	mov    eax,DWORD PTR [ebp+0xc]
  ec1191:	mov    DWORD PTR [esi+0xc],eax
  ec1194:	mov    ecx,DWORD PTR [ebp+0x10]
  ec1197:	mov    DWORD PTR [esi+0x14],ecx
  ec119a:	test   eax,eax
  ec119c:	je     ec11bc
  ec119e:	mov    DWORD PTR [esp],eax
  ec11a1:	mov    DWORD PTR [esp+0x4],0x0
  ec11a9:	call   16fe4a5  ; ABH.Shared.BalancingData.BattleBalancingData::get_BackgroundAssetId
  ec11ae:	mov    DWORD PTR [esi+0xf8],eax
  ec11b4:	lea    esp,[ebp-0xc]
  ec11b7:	pop    esi
  ec11b8:	pop    edi
  ec11b9:	pop    ebx
  ec11ba:	pop    ebp
  ec11bb:	ret
  ec11bc:	call   1fbc48
  ec11c1:	call   ebbb41