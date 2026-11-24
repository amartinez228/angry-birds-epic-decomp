
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ebcb7f:
  ebcb7f:	push   ebp
  ebcb80:	mov    ebp,esp
  ebcb82:	push   ebx
  ebcb83:	push   edi
  ebcb84:	push   esi
  ebcb85:	and    esp,0xfffffff0
  ebcb88:	sub    esp,0x50
  ebcb8b:	call   ebcb90
  ebcb90:	pop    ebx
  ebcb91:	add    ebx,0x10553b4
  ebcb97:	mov    edi,DWORD PTR [ebp+0x8]
  ebcb9a:	mov    al,BYTE PTR [ebx+0x626c8]
  ebcba0:	test   al,al
  ebcba2:	jne    ebcbbb
  ebcba4:	lea    eax,[ebx-0x66fbf0]
  ebcbaa:	mov    eax,DWORD PTR [eax]
  ebcbac:	mov    DWORD PTR [esp],eax
  ebcbaf:	call   1ca6e8
  ebcbb4:	mov    BYTE PTR [ebx+0x626c8],0x1
  ebcbbb:	xorps  xmm0,xmm0
  ebcbbe:	movaps XMMWORD PTR [esp+0x30],xmm0
  ebcbc3:	mov    BYTE PTR [edi+0x3b],0x1
  ebcbc7:	mov    DWORD PTR [esp],edi
  ebcbca:	mov    DWORD PTR [esp+0x4],0x0
  ebcbd2:	call   124632e  ; System.Object::.ctor
  ebcbd7:	lea    eax,[ebx+0x4589c]
  ebcbdd:	mov    eax,DWORD PTR [eax]
  ebcbdf:	mov    DWORD PTR [esp],eax
  ebcbe2:	call   20bfb2
  ebcbe7:	mov    esi,eax
  ebcbe9:	lea    eax,[ebx+0x4a138]
  ebcbef:	mov    eax,DWORD PTR [eax]
  ebcbf1:	mov    DWORD PTR [esp+0x4],eax
  ebcbf5:	mov    DWORD PTR [esp],esi
  ebcbf8:	call   4c15d9
  ebcbfd:	mov    DWORD PTR [edi+0x8],esi
  ebcc00:	mov    eax,DWORD PTR [ebp+0xc]
  ebcc03:	test   eax,eax
  ebcc05:	je     ebcefe
  ebcc0b:	mov    eax,DWORD PTR [eax+0x8]
  ebcc0e:	test   eax,eax
  ebcc10:	je     ebcefe
  ebcc16:	lea    ecx,[ebx+0x4a13c]
  ebcc1c:	mov    ecx,DWORD PTR [ecx]
  ebcc1e:	mov    DWORD PTR [esp+0x8],ecx
  ebcc22:	mov    DWORD PTR [esp+0x4],eax
  ebcc26:	lea    eax,[esp+0x20]
  ebcc2a:	mov    DWORD PTR [esp],eax
  ebcc2d:	call   4c350f
  ebcc32:	sub    esp,0x4
  ebcc35:	movsd  xmm0,QWORD PTR [esp+0x20]
  ebcc3b:	movsd  xmm1,QWORD PTR [esp+0x28]
  ebcc41:	movsd  QWORD PTR [esp+0x38],xmm1
  ebcc47:	movsd  QWORD PTR [esp+0x30],xmm0
  ebcc4d:	lea    eax,[ebx+0x4a148]
  ebcc53:	mov    DWORD PTR [esp+0x1c],eax
  ebcc57:	mov    eax,DWORD PTR [esp+0x1c]
  ebcc5b:	mov    eax,DWORD PTR [eax]
  ebcc5d:	mov    DWORD PTR [esp+0x4],eax
  ebcc61:	lea    eax,[esp+0x30]
  ebcc65:	mov    DWORD PTR [esp],eax
  ebcc68:	call   447e4e
  ebcc6d:	test   al,al
  ebcc6f:	je     ebcece
  ebcc75:	lea    eax,[ebx+0x4a140]
  ebcc7b:	mov    eax,DWORD PTR [eax]
  ebcc7d:	mov    DWORD PTR [esp+0x4],eax
  ebcc81:	lea    eax,[esp+0x30]
  ebcc85:	mov    DWORD PTR [esp],eax
  ebcc88:	call   447f1e
  ebcc8d:	mov    edi,eax
  ebcc8f:	mov    eax,DWORD PTR [ebp+0x8]
  ebcc92:	mov    eax,DWORD PTR [eax+0x8]
  ebcc95:	mov    DWORD PTR [esp+0x18],eax
  ebcc99:	lea    eax,[ebx+0x454a8]
  ebcc9f:	mov    eax,DWORD PTR [eax]
  ebcca1:	mov    DWORD PTR [esp],eax
  ebcca4:	call   20bfb2
  ebcca9:	mov    esi,eax
  ebccab:	mov    DWORD PTR [esp],esi
  ebccae:	mov    DWORD PTR [esp+0x4],0x0
  ebccb6:	call   179b034  ; ABH.Shared.Models.Generic.BattleEffect::.ctor
  ebccbb:	test   edi,edi
  ebccbd:	je     ebcede
  ebccc3:	mov    DWORD PTR [esp],edi
  ebccc6:	mov    DWORD PTR [esp+0x4],0x0
  ebccce:	call   179afee  ; ABH.Shared.Models.Generic.BattleEffect::get_AfflicionType
  ebccd3:	test   esi,esi
  ebccd5:	je     ebcee8
  ebccdb:	mov    DWORD PTR [esp+0x4],eax
  ebccdf:	mov    DWORD PTR [esp],esi
  ebcce2:	mov    DWORD PTR [esp+0x8],0x0
  ebccea:	call   179affe  ; ABH.Shared.Models.Generic.BattleEffect::set_AfflicionType
  ebccef:	mov    DWORD PTR [esp],edi
  ebccf2:	mov    DWORD PTR [esp+0x4],0x0
  ebccfa:	call   179af62  ; ABH.Shared.Models.Generic.BattleEffect::get_Duration
  ebccff:	mov    DWORD PTR [esp+0x4],eax
  ebcd03:	mov    DWORD PTR [esp],esi
  ebcd06:	mov    DWORD PTR [esp+0x8],0x0
  ebcd0e:	call   179af72  ; ABH.Shared.Models.Generic.BattleEffect::set_Duration
  ebcd13:	mov    DWORD PTR [esp],edi
  ebcd16:	mov    DWORD PTR [esp+0x4],0x0
  ebcd1e:	call   179afcb  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectAssetId
  ebcd23:	mov    DWORD PTR [esp+0x4],eax
  ebcd27:	mov    DWORD PTR [esp],esi
  ebcd2a:	mov    DWORD PTR [esp+0x8],0x0
  ebcd32:	call   179afdb  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAssetId
  ebcd37:	mov    DWORD PTR [esp],edi
  ebcd3a:	mov    DWORD PTR [esp+0x4],0x0
  ebcd42:	call   179afa8  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectAtlasId
  ebcd47:	mov    DWORD PTR [esp+0x4],eax
  ebcd4b:	mov    DWORD PTR [esp],esi
  ebcd4e:	mov    DWORD PTR [esp+0x8],0x0
  ebcd56:	call   179afb8  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectAtlasId
  ebcd5b:	mov    DWORD PTR [esp],edi
  ebcd5e:	mov    DWORD PTR [esp+0x4],0x0
  ebcd66:	call   179af3f  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectTrigger
  ebcd6b:	mov    DWORD PTR [esp+0x4],eax
  ebcd6f:	mov    DWORD PTR [esp],esi
  ebcd72:	mov    DWORD PTR [esp+0x8],0x0
  ebcd7a:	call   179af4f  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectTrigger
  ebcd7f:	mov    DWORD PTR [esp],edi
  ebcd82:	mov    DWORD PTR [esp+0x4],0x0
  ebcd8a:	call   179af1c  ; ABH.Shared.Models.Generic.BattleEffect::get_EffectType
  ebcd8f:	mov    DWORD PTR [esp+0x4],eax
  ebcd93:	mov    DWORD PTR [esp],esi
  ebcd96:	mov    DWORD PTR [esp+0x8],0x0
  ebcd9e:	call   179af2c  ; ABH.Shared.Models.Generic.BattleEffect::set_EffectType
  ebcda3:	mov    DWORD PTR [esp],edi
  ebcda6:	mov    DWORD PTR [esp+0x4],0x0
  ebcdae:	call   179af85  ; ABH.Shared.Models.Generic.BattleEffect::get_Values
  ebcdb3:	mov    DWORD PTR [esp+0x4],eax
  ebcdb7:	mov    DWORD PTR [esp],esi
  ebcdba:	mov    DWORD PTR [esp+0x8],0x0
  ebcdc2:	call   179af95  ; ABH.Shared.Models.Generic.BattleEffect::set_Values
  ebcdc7:	mov    ecx,DWORD PTR [esp+0x18]
  ebcdcb:	test   ecx,ecx
  ebcdcd:	je     ebcef2
  ebcdd3:	lea    eax,[ebx+0x4a144]
  ebcdd9:	mov    eax,DWORD PTR [eax]
  ebcddb:	mov    DWORD PTR [esp+0x8],eax
  ebcddf:	mov    DWORD PTR [esp+0x4],esi
  ebcde3:	mov    DWORD PTR [esp],ecx
  ebcde6:	call   4c23b4
  ebcdeb:	jmp    ebcc57
  ebcdf0:	mov    edi,DWORD PTR [ebp+0x8]
  ebcdf3:	cmp    edx,0x1
  ebcdf6:	jne    ebcf08
  ebcdfc:	mov    DWORD PTR [esp],eax
  ebcdff:	call   1ba3f0
  ebce04:	mov    esi,DWORD PTR [eax]
  ebce06:	call   1b9ce0
  ebce0b:	mov    DWORD PTR [esp+0x1c],0x0
  ebce13:	lea    eax,[ebx+0x4a14c]
  ebce19:	mov    eax,DWORD PTR [eax]
  ebce1b:	mov    DWORD PTR [esp+0x4],eax
  ebce1f:	lea    eax,[esp+0x30]
  ebce23:	mov    DWORD PTR [esp],eax
  ebce26:	call   447df6
  ebce2b:	mov    eax,DWORD PTR [esp+0x1c]
  ebce2f:	test   al,al
  ebce31:	jne    ebce3f
  ebce33:	test   esi,esi
  ebce35:	je     ebce3f
  ebce37:	mov    DWORD PTR [esp],esi
  ebce3a:	call   1fbb20
  ebce3f:	mov    edx,DWORD PTR [ebp+0xc]
  ebce42:	mov    eax,DWORD PTR [edx+0xc]
  ebce45:	mov    DWORD PTR [edi+0xc],eax
  ebce48:	mov    ecx,DWORD PTR [edx+0x10]
  ebce4b:	mov    DWORD PTR [edi+0x10],ecx
  ebce4e:	mov    ecx,DWORD PTR [edx+0x1c]
  ebce51:	mov    DWORD PTR [edi+0x1c],ecx
  ebce54:	mov    ecx,DWORD PTR [ebp+0x14]
  ebce57:	test   ecx,ecx
  ebce59:	jne    ebce5e
  ebce5b:	mov    ecx,DWORD PTR [edx+0x20]
  ebce5e:	mov    DWORD PTR [edi+0x20],ecx
  ebce61:	mov    esi,DWORD PTR [ebp+0x10]
  ebce64:	test   esi,esi
  ebce66:	jne    ebce6b
  ebce68:	mov    esi,DWORD PTR [edx+0x24]
  ebce6b:	mov    DWORD PTR [edi+0x24],esi
  ebce6e:	mov    ecx,DWORD PTR [edx+0x28]
  ebce71:	mov    DWORD PTR [edi+0x28],ecx
  ebce74:	mov    ecx,DWORD PTR [edx+0x2c]
  ebce77:	mov    DWORD PTR [edi+0x2c],ecx
  ebce7a:	mov    ecx,DWORD PTR [edx+0x30]
  ebce7d:	mov    DWORD PTR [edi+0x30],ecx
  ebce80:	mov    ecx,DWORD PTR [edx+0x34]
  ebce83:	mov    DWORD PTR [edi+0x34],ecx
  ebce86:	mov    cl,BYTE PTR [edx+0x38]
  ebce89:	mov    BYTE PTR [edi+0x38],cl
  ebce8c:	mov    cl,BYTE PTR [edx+0x39]
  ebce8f:	mov    BYTE PTR [edi+0x39],cl
  ebce92:	mov    cl,BYTE PTR [edx+0x3a]
  ebce95:	mov    BYTE PTR [edi+0x3a],cl
  ebce98:	mov    ecx,DWORD PTR [edx+0x48]
  ebce9b:	mov    DWORD PTR [edi+0x48],ecx
  ebce9e:	mov    ecx,DWORD PTR [edx+0x3c]
  ebcea1:	mov    DWORD PTR [edi+0x3c],ecx
  ebcea4:	mov    ecx,DWORD PTR [edx+0x44]
  ebcea7:	mov    DWORD PTR [edi+0x44],ecx
  ebceaa:	mov    ecx,DWORD PTR [edx+0x40]
  ebcead:	mov    DWORD PTR [edi+0x40],ecx
  ebceb0:	mov    ecx,DWORD PTR [edx+0x4c]
  ebceb3:	mov    DWORD PTR [edi+0x4c],ecx
  ebceb6:	mov    DWORD PTR [esp+0x8],eax
  ebceba:	mov    DWORD PTR [esp+0x4],esi
  ebcebe:	mov    DWORD PTR [esp],edi
  ebcec1:	call   ebcf15  ; ABH.GameDatas.Battle.BattleEffectGameData::InitActions
  ebcec6:	lea    esp,[ebp-0xc]
  ebcec9:	pop    esi
  ebceca:	pop    edi
  ebcecb:	pop    ebx
  ebcecc:	pop    ebp
  ebcecd:	ret
  ebcece:	xor    esi,esi
  ebced0:	mov    al,0x1
  ebced2:	mov    DWORD PTR [esp+0x1c],eax
  ebced6:	mov    edi,DWORD PTR [ebp+0x8]
  ebced9:	jmp    ebce13
  ebcede:	call   1fbc48
  ebcee3:	call   ebbb41
  ebcee8:	call   1fbc48
  ebceed:	call   ebbb41
  ebcef2:	call   1fbc48
  ebcef7:	jmp    ebcf10
  ebcef9:	jmp    ebcdf0
  ebcefe:	call   1fbc48
  ebcf03:	call   ebbb41
  ebcf08:	mov    DWORD PTR [esp],eax
  ebcf0b:	call   1b9bd0
  ebcf10:	call   ebbb41