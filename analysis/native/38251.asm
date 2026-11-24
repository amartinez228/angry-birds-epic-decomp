
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00ec8e95:
  ec8e95:	push   ebp
  ec8e96:	mov    ebp,esp
  ec8e98:	push   ebx
  ec8e99:	push   edi
  ec8e9a:	push   esi
  ec8e9b:	and    esp,0xfffffff0
  ec8e9e:	sub    esp,0x30
  ec8ea1:	call   ec8ea6
  ec8ea6:	pop    ebx
  ec8ea7:	add    ebx,0x104909e
  ec8ead:	mov    esi,DWORD PTR [ebp+0xc]
  ec8eb0:	mov    al,BYTE PTR [ebx+0x62736]
  ec8eb6:	test   al,al
  ec8eb8:	jne    ec8ed1
  ec8eba:	lea    eax,[ebx-0x65b77c]
  ec8ec0:	mov    eax,DWORD PTR [eax]
  ec8ec2:	mov    DWORD PTR [esp],eax
  ec8ec5:	call   1ca6e8
  ec8eca:	mov    BYTE PTR [ebx+0x62736],0x1
  ec8ed1:	test   esi,esi
  ec8ed3:	je     ec9068
  ec8ed9:	mov    edi,DWORD PTR [esi+0x30]
  ec8edc:	lea    esi,[ebx+0x430e4]
  ec8ee2:	mov    eax,DWORD PTR [esi]
  ec8ee4:	test   BYTE PTR [eax+0xb2],0x1
  ec8eeb:	je     ec8efb
  ec8eed:	cmp    DWORD PTR [eax+0x60],0x0
  ec8ef1:	jne    ec8efb
  ec8ef3:	mov    DWORD PTR [esp],eax
  ec8ef6:	call   1db0b8
  ec8efb:	lea    eax,[ebx+0x56b10]  ; literal "Movement"
  ec8f01:	mov    eax,DWORD PTR [eax]
  ec8f03:	mov    DWORD PTR [esp+0x8],eax
  ec8f07:	mov    DWORD PTR [esp+0x4],edi
  ec8f0b:	mov    DWORD PTR [esp+0xc],0x0
  ec8f13:	mov    DWORD PTR [esp],0x0
  ec8f1a:	call   ca24cf  ; System.String::op_Equality
  ec8f1f:	test   al,al
  ec8f21:	je     ec8f47
  ec8f23:	mov    eax,DWORD PTR [ebp+0x8]
  ec8f26:	mov    ecx,eax
  ec8f28:	mov    eax,DWORD PTR [ecx+0xc]
  ec8f2b:	mov    DWORD PTR [esp+0x8],eax
  ec8f2f:	mov    DWORD PTR [esp],ecx
  ec8f32:	mov    DWORD PTR [esp+0xc],0x0
  ec8f3a:	mov    DWORD PTR [esp+0x4],0x1
  ec8f42:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  ec8f47:	mov    eax,DWORD PTR [ebp+0xc]
  ec8f4a:	mov    edi,DWORD PTR [eax+0x30]
  ec8f4d:	mov    eax,DWORD PTR [esi]
  ec8f4f:	test   BYTE PTR [eax+0xb2],0x1
  ec8f56:	je     ec8f66
  ec8f58:	cmp    DWORD PTR [eax+0x60],0x0
  ec8f5c:	jne    ec8f66
  ec8f5e:	mov    DWORD PTR [esp],eax
  ec8f61:	call   1db0b8
  ec8f66:	lea    eax,[ebx+0x56b0c]  ; literal "Impact"
  ec8f6c:	mov    eax,DWORD PTR [eax]
  ec8f6e:	mov    DWORD PTR [esp+0x8],eax
  ec8f72:	mov    DWORD PTR [esp+0x4],edi
  ec8f76:	mov    DWORD PTR [esp+0xc],0x0
  ec8f7e:	mov    DWORD PTR [esp],0x0
  ec8f85:	call   ca24cf  ; System.String::op_Equality
  ec8f8a:	test   al,al
  ec8f8c:	je     ec8fd2
  ec8f8e:	lea    eax,[ebx+0x56b7c]  ; literal "Impact occured"
  ec8f94:	mov    eax,DWORD PTR [eax]
  ec8f96:	mov    DWORD PTR [esp+0x4],eax
  ec8f9a:	mov    DWORD PTR [esp+0x8],0x0
  ec8fa2:	mov    DWORD PTR [esp],0x0
  ec8fa9:	call   1068c69  ; DebugLog::Log
  ec8fae:	mov    eax,DWORD PTR [ebp+0x8]
  ec8fb1:	mov    ecx,eax
  ec8fb3:	mov    eax,DWORD PTR [ecx+0xc]
  ec8fb6:	mov    DWORD PTR [esp+0x8],eax
  ec8fba:	mov    DWORD PTR [esp],ecx
  ec8fbd:	mov    DWORD PTR [esp+0xc],0x0
  ec8fc5:	mov    DWORD PTR [esp+0x4],0x2
  ec8fcd:	call   eb2a30  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnVisualEffects
  ec8fd2:	mov    eax,DWORD PTR [ebp+0xc]
  ec8fd5:	mov    edi,DWORD PTR [eax+0x30]
  ec8fd8:	mov    eax,DWORD PTR [esi]
  ec8fda:	test   BYTE PTR [eax+0xb2],0x1
  ec8fe1:	je     ec8ff1
  ec8fe3:	cmp    DWORD PTR [eax+0x60],0x0
  ec8fe7:	jne    ec8ff1
  ec8fe9:	mov    DWORD PTR [esp],eax
  ec8fec:	call   1db0b8
  ec8ff1:	lea    eax,[ebx+0x56b14]  ; literal "Projectile"
  ec8ff7:	mov    eax,DWORD PTR [eax]
  ec8ff9:	mov    DWORD PTR [esp+0x8],eax
  ec8ffd:	mov    DWORD PTR [esp+0x4],edi
  ec9001:	mov    DWORD PTR [esp+0xc],0x0
  ec9009:	mov    DWORD PTR [esp],0x0
  ec9010:	call   ca24cf  ; System.String::op_Equality
  ec9015:	test   al,al
  ec9017:	je     ec9060
  ec9019:	lea    eax,[ebx+0x56b18]  ; literal "Projectile fired"
  ec901f:	mov    eax,DWORD PTR [eax]
  ec9021:	mov    DWORD PTR [esp+0x4],eax
  ec9025:	mov    DWORD PTR [esp+0x8],0x0
  ec902d:	mov    DWORD PTR [esp],0x0
  ec9034:	call   1068c69  ; DebugLog::Log
  ec9039:	mov    eax,DWORD PTR [ebp+0x8]
  ec903c:	mov    edx,eax
  ec903e:	mov    eax,DWORD PTR [edx+0x20]
  ec9041:	mov    ecx,DWORD PTR [edx+0x30]
  ec9044:	mov    edx,DWORD PTR [edx+0x34]
  ec9047:	mov    DWORD PTR [esp+0x10],eax
  ec904b:	mov    DWORD PTR [esp+0xc],edx
  ec904f:	mov    DWORD PTR [esp+0x8],ecx
  ec9053:	mov    DWORD PTR [esp+0x14],0x0
  ec905b:	call   eb2f2a  ; ABH.GameDatas.Battle.SkillBattleDataBase::SpawnProjectile
  ec9060:	lea    esp,[ebp-0xc]
  ec9063:	pop    esi
  ec9064:	pop    edi
  ec9065:	pop    ebx
  ec9066:	pop    ebp
  ec9067:	ret
  ec9068:	call   1fbc48
  ec906d:	call   ebbb41