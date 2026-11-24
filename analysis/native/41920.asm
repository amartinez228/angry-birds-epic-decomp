
C:\Users\Adria\Downloads\epic-rust\analysis\libil2cpp-x86.so:     file format elf32-i386


Disassembly of section .text:

00576784:
  576784:	push   ebp
  576785:	mov    ebp,esp
  576787:	push   ebx
  576788:	push   edi
  576789:	push   esi
  57678a:	and    esp,0xfffffff0
  57678d:	sub    esp,0x40
  576790:	call   576795
  576795:	pop    ebx
  576796:	add    ebx,0x199b7af
  57679c:	mov    esi,DWORD PTR [ebp+0x8]
  57679f:	mov    al,BYTE PTR [ebx+0x5d721]
  5767a5:	test   al,al
  5767a7:	jne    5767c0
  5767a9:	lea    eax,[ebx-0x664c7c]
  5767af:	mov    eax,DWORD PTR [eax]
  5767b1:	mov    DWORD PTR [esp],eax
  5767b4:	call   1ca6e8
  5767b9:	mov    BYTE PTR [ebx+0x5d721],0x1
  5767c0:	cmp    DWORD PTR [esi+0x8],0x0
  5767c4:	je     5768ca
  5767ca:	mov    edi,DWORD PTR [ebp+0x1c]
  5767cd:	mov    eax,DWORD PTR [ebp+0x18]
  5767d0:	mov    ecx,DWORD PTR [ebp+0x14]
  5767d3:	mov    edx,DWORD PTR [ebp+0x10]
  5767d6:	mov    esi,DWORD PTR [ebp+0xc]
  5767d9:	mov    DWORD PTR [esp+0x14],edi
  5767dd:	mov    DWORD PTR [esp+0x10],eax
  5767e1:	mov    DWORD PTR [esp+0xc],ecx
  5767e5:	mov    DWORD PTR [esp+0x8],edx
  5767e9:	mov    DWORD PTR [esp+0x4],esi
  5767ed:	call   575d09  ; ABH.Services.Logic.InventoryOperationServiceRealImpl::GenerateEquipment
  5767f2:	mov    DWORD PTR [esp+0x38],eax
  5767f6:	lea    eax,[ebx+0x45e28]
  5767fc:	mov    eax,DWORD PTR [eax]
  5767fe:	mov    DWORD PTR [esp],eax
  576801:	call   20bfb2
  576806:	mov    esi,eax
  576808:	mov    eax,DWORD PTR [esp+0x38]
  57680c:	mov    DWORD PTR [esp+0x4],eax
  576810:	mov    DWORD PTR [esp],esi
  576813:	mov    DWORD PTR [esp+0x8],0x0
  57681b:	call   6d3450  ; ABH.GameDatas.EquipmentGameData::.ctor
  576820:	test   esi,esi
  576822:	je     5769de
  576828:	lea    eax,[ebx+0x4a9e8]
  57682e:	mov    eax,DWORD PTR [eax]
  576830:	mov    DWORD PTR [esp+0x4],eax
  576834:	mov    DWORD PTR [esp],esi
  576837:	call   1607471  ; shared address: ABH.GameDatas.GameDataBase`2<object, object>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BirdBalancingData, ABH.Shared.Models.Character.BirdData>::get_Data | ABH.GameDatas.GameDataBase`2<ABH.Shared.BalancingData.BossBalancingData, ABH.Shared.Models.Character.BossData>::get_Data | +19 other aliases
  57683c:	mov    DWORD PTR [esp+0x2c],eax
  576840:	mov    eax,DWORD PTR [ebp+0x8]
  576843:	mov    eax,DWORD PTR [eax+0x8]
  576846:	mov    DWORD PTR [esp+0x30],eax
  57684a:	mov    DWORD PTR [esp],esi
  57684d:	mov    DWORD PTR [esp+0x4],0x0
  576855:	call   6d4672  ; ABH.GameDatas.EquipmentGameData::get_IsSetItem
  57685a:	test   al,al
  57685c:	mov    eax,0x3
  576861:	cmovne edi,eax
  576864:	mov    DWORD PTR [esp+0x34],edi
  576868:	mov    DWORD PTR [esp],esi
  57686b:	mov    DWORD PTR [esp+0x38],esi
  57686f:	mov    DWORD PTR [esp+0x4],0x0
  576877:	call   6d36f4  ; ABH.GameDatas.EquipmentGameData::get_ItemBalancing
  57687c:	mov    edi,eax
  57687e:	test   edi,edi
  576880:	je     5769de
  576886:	lea    eax,[ebx+0x45858]
  57688c:	mov    eax,DWORD PTR [eax]
  57688e:	mov    ecx,DWORD PTR [edi]
  576890:	mov    DWORD PTR [esp+0x28],ecx
  576894:	movzx  edx,WORD PTR [ecx+0xaa]
  57689b:	test   edx,edx
  57689d:	je     5768b2
  57689f:	mov    ecx,DWORD PTR [esp+0x28]
  5768a3:	mov    esi,DWORD PTR [ecx+0x4c]
  5768a6:	xor    ecx,ecx
  5768a8:	cmp    DWORD PTR [esi+ecx*8],eax
  5768ab:	je     5768f1
  5768ad:	inc    ecx
  5768ae:	cmp    ecx,edx
  5768b0:	jb     5768a8
  5768b2:	mov    DWORD PTR [esp+0x4],eax
  5768b6:	mov    DWORD PTR [esp],edi
  5768b9:	mov    DWORD PTR [esp+0x8],0x0
  5768c1:	call   1c1964
  5768c6:	mov    ecx,eax
  5768c8:	jmp    576900
  5768ca:	lea    eax,[ebx+0x57670]  ; literal "Not every needed Service is implemented!"
  5768d0:	mov    eax,DWORD PTR [eax]
  5768d2:	mov    DWORD PTR [esp+0x4],eax
  5768d6:	mov    DWORD PTR [esp+0x8],0x0
  5768de:	mov    DWORD PTR [esp],0x0
  5768e5:	call   108148a  ; DebugLog::Error
  5768ea:	xor    esi,esi
  5768ec:	jmp    5769d4
  5768f1:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  5768f5:	mov    ecx,DWORD PTR [esp+0x28]
  5768f9:	lea    ecx,[ecx+eax*8+0xb4]
  576900:	mov    eax,DWORD PTR [ecx+0x4]
  576903:	mov    DWORD PTR [esp+0x4],eax
  576907:	mov    DWORD PTR [esp],edi
  57690a:	call   DWORD PTR [ecx]
  57690c:	mov    DWORD PTR [esp+0x28],eax
  576910:	mov    eax,DWORD PTR [esp+0x38]
  576914:	mov    DWORD PTR [esp],eax
  576917:	mov    DWORD PTR [esp+0x4],0x0
  57691f:	call   6d36f4  ; ABH.GameDatas.EquipmentGameData::get_ItemBalancing
  576924:	mov    edi,eax
  576926:	test   edi,edi
  576928:	je     5769de
  57692e:	lea    eax,[ebx+0x45578]
  576934:	mov    eax,DWORD PTR [eax]
  576936:	mov    ecx,DWORD PTR [edi]
  576938:	mov    DWORD PTR [esp+0x24],ecx
  57693c:	movzx  edx,WORD PTR [ecx+0xaa]
  576943:	test   edx,edx
  576945:	je     57695a
  576947:	mov    ecx,DWORD PTR [esp+0x24]
  57694b:	mov    esi,DWORD PTR [ecx+0x4c]
  57694e:	xor    ecx,ecx
  576950:	cmp    DWORD PTR [esi+ecx*8],eax
  576953:	je     576972
  576955:	inc    ecx
  576956:	cmp    ecx,edx
  576958:	jb     576950
  57695a:	mov    DWORD PTR [esp+0x4],eax
  57695e:	mov    DWORD PTR [esp],edi
  576961:	mov    DWORD PTR [esp+0x8],0x2
  576969:	call   1c1964
  57696e:	mov    ecx,eax
  576970:	jmp    576981
  576972:	mov    eax,DWORD PTR [esi+ecx*8+0x4]
  576976:	mov    ecx,DWORD PTR [esp+0x24]
  57697a:	lea    ecx,[ecx+eax*8+0xc4]
  576981:	mov    eax,DWORD PTR [ecx+0x4]
  576984:	mov    DWORD PTR [esp+0x4],eax
  576988:	mov    DWORD PTR [esp],edi
  57698b:	call   DWORD PTR [ecx]
  57698d:	mov    ecx,DWORD PTR [esp+0x30]
  576991:	test   ecx,ecx
  576993:	mov    eax,DWORD PTR [esp+0x34]
  576997:	je     5769de
  576999:	mov    edx,DWORD PTR [esp+0x28]
  57699d:	mov    DWORD PTR [esp+0xc],edx
  5769a1:	mov    DWORD PTR [esp+0x8],eax
  5769a5:	mov    eax,DWORD PTR [ebp+0xc]
  5769a8:	mov    DWORD PTR [esp+0x4],eax
  5769ac:	mov    DWORD PTR [esp],ecx
  5769af:	call   54c23d  ; ABH.Services.Logic.CraftingService::GenerateScrapLootOnNewEquipment
  5769b4:	mov    ecx,DWORD PTR [esp+0x2c]
  5769b8:	test   ecx,ecx
  5769ba:	mov    esi,DWORD PTR [esp+0x38]
  5769be:	je     5769de
  5769c0:	mov    DWORD PTR [esp+0x4],eax
  5769c4:	mov    DWORD PTR [esp],ecx
  5769c7:	mov    DWORD PTR [esp+0x8],0x0
  5769cf:	call   179c2b9  ; ABH.Shared.Models.InventoryItems.EquipmentData::set_ScrapLoot
  5769d4:	mov    eax,esi
  5769d6:	lea    esp,[ebp-0xc]
  5769d9:	pop    esi
  5769da:	pop    edi
  5769db:	pop    ebx
  5769dc:	pop    ebp
  5769dd:	ret
  5769de:	call   1fbc48
  5769e3:	call   540b98