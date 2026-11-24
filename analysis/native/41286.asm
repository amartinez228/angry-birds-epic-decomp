
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00540e5a <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x31477c>:
  540e5a:	55                   	push   ebp
  540e5b:	89 e5                	mov    ebp,esp
  540e5d:	53                   	push   ebx
  540e5e:	57                   	push   edi
  540e5f:	56                   	push   esi
  540e60:	83 e4 f0             	and    esp,0xfffffff0
  540e63:	83 ec 10             	sub    esp,0x10
  540e66:	e8 00 00 00 00       	call   540e6b <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x31478d>
  540e6b:	5b                   	pop    ebx
  540e6c:	81 c3 d9 10 9d 01    	add    ebx,0x19d10d9
  540e72:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  540e75:	85 c0                	test   eax,eax
  540e77:	74 3d                	je     540eb6 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x3147d8>
  540e79:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  540e7c:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
  540e7f:	89 04 24             	mov    DWORD PTR [esp],eax
  540e82:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  540e89:	00 
  540e8a:	e8 eb 3c 1b 00       	call   6f4b7a <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x4c849c>  ; ABH.GameDatas.PigGameData::get_BalancingData
  540e8f:	85 c0                	test   eax,eax
  540e91:	74 23                	je     540eb6 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x3147d8>
  540e93:	89 04 24             	mov    DWORD PTR [esp],eax
  540e96:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  540e9d:	00 
  540e9e:	e8 84 0e 1c 01       	call   1701d27 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x14d5649>  ; ABH.Shared.BalancingData.PigBalancingData::get_PigStrength
  540ea3:	01 f8                	add    eax,edi
  540ea5:	3b 46 0c             	cmp    eax,DWORD PTR [esi+0xc]
  540ea8:	0f 9e c0             	setle  al
  540eab:	0f b6 c0             	movzx  eax,al
  540eae:	8d 65 f4             	lea    esp,[ebp-0xc]
  540eb1:	5e                   	pop    esi
  540eb2:	5f                   	pop    edi
  540eb3:	5b                   	pop    ebx
  540eb4:	5d                   	pop    ebp
  540eb5:	c3                   	ret
  540eb6:	e8 8d ad cb ff       	call   1fbc48 <_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEES2_T_S7_RKS4_St20forward_iterator_tag+0x40c>
  540ebb:	e8 d8 fc ff ff       	call   540b98 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x3144ba>