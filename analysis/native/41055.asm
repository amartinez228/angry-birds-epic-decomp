
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

005186f3 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ec015>:
  5186f3:	55                   	push   ebp
  5186f4:	89 e5                	mov    ebp,esp
  5186f6:	53                   	push   ebx
  5186f7:	83 e4 f0             	and    esp,0xfffffff0
  5186fa:	83 ec 20             	sub    esp,0x20
  5186fd:	e8 00 00 00 00       	call   518702 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ec024>
  518702:	5b                   	pop    ebx
  518703:	81 c3 42 98 9f 01    	add    ebx,0x19f9842
  518709:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  51870c:	85 c0                	test   eax,eax
  51870e:	74 1b                	je     51872b <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x2ec04d>
  518710:	89 04 24             	mov    DWORD PTR [esp],eax
  518713:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  51871a:	00 
  51871b:	e8 fb 29 28 01       	call   179b11b <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x156ea3d>  ; ABH.Shared.Models.Generic.BattleParticipantTableEntry::get_ForcePercent
  518720:	34 01                	xor    al,0x1
  518722:	0f b6 c0             	movzx  eax,al
  518725:	8d 65 fc             	lea    esp,[ebp-0x4]
  518728:	5b                   	pop    ebx
  518729:	5d                   	pop    ebp
  51872a:	c3                   	ret
  51872b:	e8 18 35 ce ff       	call   1fbc48 <_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEES2_T_S7_RKS4_St20forward_iterator_tag+0x40c>
  518730:	e8 63 84 02 00       	call   540b98 <_ZNSt6vectorISbIDsSt11char_traitsIDsESaIDsEESaIS3_EE17_M_default_appendEj+0x3144ba>