
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

0057d9d0:
  57d9d0:	push   ebp
  57d9d1:	mov    ebp,esp
  57d9d3:	push   ebx
  57d9d4:	push   edi
  57d9d5:	push   esi
  57d9d6:	and    esp,0xfffffff0
  57d9d9:	sub    esp,0x80
  57d9df:	call   57d9e4
  57d9e4:	pop    ebx
  57d9e5:	add    ebx,0x1994560
  57d9eb:	mov    edi,DWORD PTR [ebp+0x10]
  57d9ee:	mov    al,BYTE PTR [ebx+0x5d747]
  57d9f4:	test   al,al
  57d9f6:	jne    57da0f
  57d9f8:	lea    eax,[ebx-0x6627d4]
  57d9fe:	mov    eax,DWORD PTR [eax]
  57da00:	mov    DWORD PTR [esp],eax
  57da03:	call   1ca6e8
  57da08:	mov    BYTE PTR [ebx+0x5d747],0x1
  57da0f:	xorps  xmm0,xmm0
  57da12:	movaps XMMWORD PTR [esp+0x60],xmm0
  57da17:	mov    DWORD PTR [esp+0x70],0x0
  57da1f:	lea    esi,[ebx+0x458bc]
  57da25:	mov    eax,DWORD PTR [esi]
  57da27:	mov    DWORD PTR [esp],eax
  57da2a:	call   20bfb2
  57da2f:	mov    DWORD PTR [esp+0x38],eax
  57da33:	lea    ecx,[ebx+0x4a1d0]
  57da39:	mov    DWORD PTR [esp+0x30],ecx
  57da3d:	mov    ecx,DWORD PTR [ecx]
  57da3f:	mov    DWORD PTR [esp+0x4],ecx
  57da43:	mov    DWORD PTR [esp],eax
  57da46:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  57da4b:	test   edi,edi
  57da4d:	je     57dcee
  57da53:	mov    DWORD PTR [esp+0x2c],esi
  57da57:	lea    eax,[ebx+0x4ac6c]
  57da5d:	mov    eax,DWORD PTR [eax]
  57da5f:	mov    DWORD PTR [esp+0x4],eax
  57da63:	mov    DWORD PTR [esp],edi
  57da66:	call   61b443  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Keys | System.Collections.Generic.Dictionary`2<string, string>::get_Keys | System.Collections.Generic.Dictionary`2<string, object>::get_Keys | +10 other aliases
  57da6b:	test   eax,eax
  57da6d:	je     57dcee
  57da73:	lea    ecx,[ebx+0x4ac70]
  57da79:	mov    ecx,DWORD PTR [ecx]
  57da7b:	mov    DWORD PTR [esp+0x8],ecx
  57da7f:	mov    DWORD PTR [esp+0x4],eax
  57da83:	lea    eax,[esp+0x48]
  57da87:	mov    DWORD PTR [esp],eax
  57da8a:	call   15a7778  ; shared address: System.Collections.Generic.Dictionary`2+KeyCollection<object, object>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<string, string>::GetEnumerator | System.Collections.Generic.Dictionary`2+KeyCollection<string, object>::GetEnumerator | +10 other aliases
  57da8f:	sub    esp,0x4
  57da92:	mov    eax,DWORD PTR [esp+0x58]
  57da96:	mov    DWORD PTR [esp+0x70],eax
  57da9a:	movsd  xmm0,QWORD PTR [esp+0x48]
  57daa0:	movsd  xmm1,QWORD PTR [esp+0x50]
  57daa6:	movsd  QWORD PTR [esp+0x68],xmm1
  57daac:	movsd  QWORD PTR [esp+0x60],xmm0
  57dab2:	lea    eax,[ebx+0x4ac7c]
  57dab8:	mov    DWORD PTR [esp+0x34],eax
  57dabc:	mov    eax,DWORD PTR [esp+0x34]
  57dac0:	mov    eax,DWORD PTR [eax]
  57dac2:	mov    DWORD PTR [esp+0x4],eax
  57dac6:	lea    eax,[esp+0x60]
  57daca:	mov    DWORD PTR [esp],eax
  57dacd:	call   11ad1d2
  57dad2:	test   al,al
  57dad4:	je     57dbdc
  57dada:	lea    eax,[ebx+0x4ac74]
  57dae0:	mov    eax,DWORD PTR [eax]
  57dae2:	mov    DWORD PTR [esp+0x4],eax
  57dae6:	lea    eax,[esp+0x60]
  57daea:	mov    DWORD PTR [esp],eax
  57daed:	call   11ad261
  57daf2:	mov    DWORD PTR [esp+0x44],eax
  57daf6:	lea    eax,[ebx+0x4ac78]
  57dafc:	mov    eax,DWORD PTR [eax]
  57dafe:	mov    DWORD PTR [esp+0x8],eax
  57db02:	mov    eax,DWORD PTR [esp+0x44]
  57db06:	mov    DWORD PTR [esp+0x4],eax
  57db0a:	mov    eax,DWORD PTR [ebp+0x10]
  57db0d:	mov    DWORD PTR [esp],eax
  57db10:	call   618b6e  ; shared address: System.Collections.Generic.Dictionary`2<object, object>::get_Item | System.Collections.Generic.Dictionary`2<string, object>::get_Item | System.Collections.Generic.Dictionary`2<string, string>::get_Item | +34 other aliases
  57db15:	mov    edi,eax
  57db17:	mov    DWORD PTR [esp+0x4],0x0
  57db1f:	mov    DWORD PTR [esp],0x0
  57db26:	call   106b137  ; DIContainerLogic::get_InventoryService
  57db2b:	mov    DWORD PTR [esp+0x40],eax
  57db2f:	cmp    DWORD PTR [ebp+0xc],0x0
  57db33:	je     57db48
  57db35:	mov    eax,DWORD PTR [ebp+0xc]
  57db38:	mov    DWORD PTR [esp],eax
  57db3b:	mov    DWORD PTR [esp+0x4],0x0
  57db43:	call   6c435f  ; ABH.GameDatas.PlayerGameData::get_InventoryGameData
  57db48:	test   edi,edi
  57db4a:	je     57dbe6
  57db50:	mov    DWORD PTR [esp],edi
  57db53:	mov    DWORD PTR [esp+0x4],0x0
  57db5b:	call   179b2c9  ; ABH.Shared.Models.Generic.LootInfoData::get_Level
  57db60:	mov    DWORD PTR [esp+0x3c],eax
  57db64:	mov    DWORD PTR [esp],edi
  57db67:	mov    DWORD PTR [esp+0x4],0x0
  57db6f:	call   179b2ec  ; ABH.Shared.Models.Generic.LootInfoData::get_Quality
  57db74:	mov    esi,eax
  57db76:	mov    DWORD PTR [esp],edi
  57db79:	mov    DWORD PTR [esp+0x4],0x0
  57db81:	call   179b2a6  ; ABH.Shared.Models.Generic.LootInfoData::get_Value
  57db86:	mov    edx,DWORD PTR [esp+0x40]
  57db8a:	test   edx,edx
  57db8c:	je     57dbf0
  57db8e:	mov    ecx,DWORD PTR [ebp+0x14]
  57db91:	mov    DWORD PTR [esp+0x18],ecx
  57db95:	mov    DWORD PTR [esp+0x14],eax
  57db99:	mov    eax,DWORD PTR [esp+0x44]
  57db9d:	mov    DWORD PTR [esp+0x10],eax
  57dba1:	mov    DWORD PTR [esp+0xc],esi
  57dba5:	mov    eax,DWORD PTR [esp+0x3c]
  57dba9:	mov    DWORD PTR [esp+0x8],eax
  57dbad:	mov    DWORD PTR [esp],edx
  57dbb0:	call   547648  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateNewInventoryItemGameData
  57dbb5:	mov    edx,DWORD PTR [esp+0x38]
  57dbb9:	test   edx,edx
  57dbbb:	je     57dbfa
  57dbbd:	lea    ecx,[ebx+0x4a7f0]
  57dbc3:	mov    ecx,DWORD PTR [ecx]
  57dbc5:	mov    DWORD PTR [esp+0x8],ecx
  57dbc9:	mov    DWORD PTR [esp+0x4],eax
  57dbcd:	mov    DWORD PTR [esp],edx
  57dbd0:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  57dbd5:	jmp    57dabc
  57dbda:	jmp    57dc04
  57dbdc:	xor    esi,esi
  57dbde:	mov    al,0x1
  57dbe0:	mov    DWORD PTR [esp+0x44],eax
  57dbe4:	jmp    57dc24
  57dbe6:	call   1fbc48
  57dbeb:	call   540b98
  57dbf0:	call   1fbc48
  57dbf5:	call   540b98
  57dbfa:	call   1fbc48
  57dbff:	jmp    57dd12
  57dc04:	cmp    edx,0x1
  57dc07:	jne    57dd0a
  57dc0d:	mov    DWORD PTR [esp],eax
  57dc10:	call   1ba3f0
  57dc15:	mov    esi,DWORD PTR [eax]
  57dc17:	call   1b9ce0
  57dc1c:	mov    DWORD PTR [esp+0x44],0x0
  57dc24:	lea    eax,[ebx+0x4ac80]
  57dc2a:	mov    eax,DWORD PTR [eax]
  57dc2c:	mov    DWORD PTR [esp+0x4],eax
  57dc30:	lea    eax,[esp+0x60]
  57dc34:	mov    DWORD PTR [esp],eax
  57dc37:	call   11ad167
  57dc3c:	mov    eax,DWORD PTR [esp+0x44]
  57dc40:	test   al,al
  57dc42:	jne    57dc50
  57dc44:	test   esi,esi
  57dc46:	je     57dc50
  57dc48:	mov    DWORD PTR [esp],esi
  57dc4b:	call   1fbb20
  57dc50:	cmp    BYTE PTR [ebp+0x18],0x0
  57dc54:	je     57dcf8
  57dc5a:	mov    eax,DWORD PTR [esp+0x2c]
  57dc5e:	mov    eax,DWORD PTR [eax]
  57dc60:	mov    DWORD PTR [esp],eax
  57dc63:	call   20bfb2
  57dc68:	mov    ecx,eax
  57dc6a:	mov    DWORD PTR [esp+0x44],ecx
  57dc6e:	mov    eax,DWORD PTR [esp+0x30]
  57dc72:	mov    eax,DWORD PTR [eax]
  57dc74:	mov    DWORD PTR [esp+0x4],eax
  57dc78:	mov    DWORD PTR [esp],ecx
  57dc7b:	call   4c15d9  ; shared address: System.Collections.Generic.List`1<object>::.ctor | System.Collections.Generic.List`1<string>::.ctor | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::.ctor | +191 other aliases
  57dc80:	mov    esi,DWORD PTR [esp+0x38]
  57dc84:	test   esi,esi
  57dc86:	je     57dcee
  57dc88:	xor    edi,edi
  57dc8a:	lea    eax,[ebx+0x4a868]
  57dc90:	mov    DWORD PTR [esp+0x40],eax
  57dc94:	jmp    57dcaf
  57dc96:	lea    ecx,[ebx+0x4a7f0]
  57dc9c:	mov    ecx,DWORD PTR [ecx]
  57dc9e:	mov    DWORD PTR [esp+0x8],ecx
  57dca2:	mov    DWORD PTR [esp+0x4],eax
  57dca6:	mov    DWORD PTR [esp],edx
  57dca9:	call   4c23b4  ; shared address: System.Collections.Generic.List`1<object>::Add | System.Collections.Generic.List`1<string>::Add | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::Add | +157 other aliases
  57dcae:	inc    edi
  57dcaf:	mov    eax,DWORD PTR [esp+0x40]
  57dcb3:	mov    eax,DWORD PTR [eax]
  57dcb5:	mov    DWORD PTR [esp+0x4],eax
  57dcb9:	mov    DWORD PTR [esp],esi
  57dcbc:	call   4c46f7  ; shared address: System.Collections.Generic.List`1<object>::get_Count | System.Collections.Generic.List`1<string>::get_Count | System.Collections.Generic.List`1<System.Configuration.ConfigurationProperty>::get_Count | +147 other aliases
  57dcc1:	cmp    edi,eax
  57dcc3:	jge    57dcfe
  57dcc5:	lea    eax,[ebx+0x4a860]
  57dccb:	mov    eax,DWORD PTR [eax]
  57dccd:	mov    DWORD PTR [esp+0x8],eax
  57dcd1:	mov    DWORD PTR [esp+0x4],edi
  57dcd5:	mov    DWORD PTR [esp],esi
  57dcd8:	call   4c4707  ; shared address: System.Collections.Generic.List`1<object>::get_Item | System.Collections.Generic.List`1<System.Collections.Generic.RBTree+Node>::get_Item | System.Collections.Generic.List`1<System.Net.Cookie>::get_Item | +132 other aliases
  57dcdd:	mov    DWORD PTR [esp+0x4],eax
  57dce1:	call   57dd17  ; ABH.Services.Logic.LootOperations::CheckForReplacementPotion
  57dce6:	mov    edx,DWORD PTR [esp+0x44]
  57dcea:	test   edx,edx
  57dcec:	jne    57dc96
  57dcee:	call   1fbc48
  57dcf3:	call   540b98
  57dcf8:	mov    eax,DWORD PTR [esp+0x38]
  57dcfc:	jmp    57dd02
  57dcfe:	mov    eax,DWORD PTR [esp+0x44]
  57dd02:	lea    esp,[ebp-0xc]
  57dd05:	pop    esi
  57dd06:	pop    edi
  57dd07:	pop    ebx
  57dd08:	pop    ebp
  57dd09:	ret
  57dd0a:	mov    DWORD PTR [esp],eax
  57dd0d:	call   1b9bd0
  57dd12:	call   540b98